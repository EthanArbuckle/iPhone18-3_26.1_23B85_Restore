_BYTE *std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void *realityio::WrappedRERef<RETextureImportOperation0 *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t realityio::Result<realityio::WrappedCFRef<__CFData const*>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef((a1 + 8));
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void *realityio::WrappedRERef<REAssetSourceDataProvider *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

BOOL std::regex_iterator<std::__wrap_iter<char *>,char,std::regex_traits<char>>::operator==(uint64_t a1, uint64_t a2)
{
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v9 = a2 + 32;
  v7 = *(a2 + 32);
  v8 = *(v9 + 8);
  v10 = v8 == v7 && v5 == v4;
  if (v5 != v4 && v8 != v7)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && std::sub_match<std::__wrap_iter<char *>>::compare[abi:ne200100](v4, v7) == 0;
  }

  return v10;
}

std::string *std::match_results<std::__wrap_iter<char *>>::format<std::back_insert_iterator<std::string>>(std::string::value_type ***a1, std::string *this, unsigned __int8 *a3, unsigned __int8 *a4, __int16 a5)
{
  v6 = a3;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return this;
    }

    while (1)
    {
      v30 = *v6;
      if (v30 == 92)
      {
        v34 = v6 + 1;
        if (v6 + 1 == a4)
        {
          LOBYTE(v30) = 92;
        }

        else
        {
          v30 = *v34;
          v35 = v30 - 48;
          if ((v30 - 48) <= 9)
          {
            v36 = &(*a1)[3 * (v30 - 48)];
            if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v35)
            {
              v36 = (a1 + 3);
            }

            v37 = *v36;
            v38 = *(v36 + 8);
            while (v37 != v38)
            {
              v39 = *v37++;
              std::string::push_back(this, v39);
            }

            goto LABEL_54;
          }

          ++v6;
        }
      }

      else if (v30 == 38)
      {
        v31 = **a1;
        v32 = (*a1)[1];
        while (v31 != v32)
        {
          v33 = *v31++;
          std::string::push_back(this, v33);
        }

        goto LABEL_53;
      }

      std::string::push_back(this, v30);
LABEL_53:
      v34 = v6;
LABEL_54:
      v6 = v34 + 1;
      if (v34 + 1 == a4)
      {
        return this;
      }
    }
  }

  if (a3 != a4)
  {
    do
    {
      v9 = *v6;
      v10 = v6 + 1;
      if (v9 == 36 && v10 != a4)
      {
        v12 = *v10;
        if (v12 > 0x26)
        {
          if (v12 == 39)
          {
            v27 = a1[9];
            v28 = a1[10];
            while (v27 != v28)
            {
              v29 = *v27++;
              std::string::push_back(this, v29);
            }

            goto LABEL_9;
          }

          if (v12 == 96)
          {
            v16 = a1[6];
            v17 = a1[7];
            while (v16 != v17)
            {
              v18 = *v16++;
              std::string::push_back(this, v18);
            }

            goto LABEL_9;
          }

LABEL_22:
          LODWORD(v19) = v12 - 48;
          if (v19 <= 9)
          {
            v19 = v19;
            if (v6 + 2 != a4)
            {
              v20 = v6[2];
              v21 = v20 - 48;
              v22 = v20 + 10 * v19 - 48;
              if (v21 > 9)
              {
                v10 = v6 + 1;
              }

              else
              {
                v19 = v22;
                v10 = v6 + 2;
              }
            }

            if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v19)
            {
              v23 = (a1 + 3);
            }

            else
            {
              v23 = &(*a1)[3 * v19];
            }

            v24 = *v23;
            v25 = *(v23 + 8);
            while (v24 != v25)
            {
              v26 = *v24++;
              std::string::push_back(this, v26);
            }

            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (v12 != 36)
        {
          if (v12 == 38)
          {
            v13 = **a1;
            v14 = (*a1)[1];
            while (v13 != v14)
            {
              v15 = *v13++;
              std::string::push_back(this, v15);
            }

            goto LABEL_9;
          }

          goto LABEL_22;
        }

        ++v6;
      }

LABEL_8:
      std::string::push_back(this, v9);
      v10 = v6;
LABEL_9:
      v6 = v10 + 1;
    }

    while (v10 + 1 != a4);
  }

  return this;
}

uint64_t std::regex_iterator<std::__wrap_iter<char *>,char,std::regex_traits<char>>::operator++(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v3 - 8);
  v5 = v4 | 0x800;
  *(v3 - 8) = v4 | 0x800;
  if (*(v3 + 8) == v2)
  {
    v6 = (v3 + 24);
  }

  else
  {
    v6 = v2;
  }

  v7 = v6[1];
  if (*v6 != v7)
  {
    v8 = v6[1];
LABEL_6:
    *(a1 + 24) = v5 | 0x80;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    memset(&__p.__prefix_, 0, 17);
    memset(&__p.__suffix_, 0, 17);
    __p.__ready_ = 0;
    __p.__position_start_ = 0;
    memset(&__p, 0, 41);
    v11 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v9, v8, v10, &__p, v5 | 0x80u);
    std::match_results<std::__wrap_iter<char *>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v3, v8, v10, &__p, (v5 & 0x800) != 0);
    if (__p.__matches_.__begin_)
    {
      __p.__matches_.__end_ = __p.__matches_.__begin_;
      operator delete(__p.__matches_.__begin_);
    }

    if (v11)
    {
      *(a1 + 80) = v7;
      *(a1 + 96) = *(a1 + 88) != v7;
      return a1;
    }

    v2 = *v3;
    goto LABEL_16;
  }

  v12 = *(a1 + 8);
  if (v12 == v7)
  {
LABEL_16:
    if (v2)
    {
      *(a1 + 40) = v2;
      operator delete(v2);
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
    }

    *(a1 + 128) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 25) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 136) = 0;
    return a1;
  }

  v13 = *(a1 + 16);
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v14 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v13, v7, v12, &__p, v4 | 0x860u);
  std::match_results<std::__wrap_iter<char *>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v3, v7, v12, &__p, 1);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    v5 = *(a1 + 24);
    goto LABEL_6;
  }

  return a1;
}

void sub_2475B3B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::regex_iterator<std::__wrap_iter<char *>,char,std::regex_traits<char>>::regex_iterator(uint64_t a1, char *a2, char *a3, uint64_t a4, int a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0u;
  v9 = a1 + 32;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 57) = 0u;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a4, a2, a3, &__p, a5);
  std::match_results<std::__wrap_iter<char *>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v9, a2, a3, &__p, (v5 & 0x800) != 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  return a1;
}

void sub_2475B3C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void std::match_results<std::__wrap_iter<char *>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  std::vector<std::sub_match<std::__wrap_iter<char *>>>::resize(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (*(a1 + 8) == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *(v11 + v12) = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = *(a1 + 8);
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  *(a1 + 48) = v24;
  *(a1 + 56) = v14 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v14 + a4[9];
  *(a1 + 80) = v14 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

void std::vector<std::sub_match<std::__wrap_iter<char *>>>::resize(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::sub_match<std::__wrap_iter<char *>>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::vector<std::sub_match<std::__wrap_iter<char *>>>::__append(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char *>>>>(a1, v9);
    }

    v12 = 24 * a2;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = 24 * v6 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = 24 * v6 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[2];
        *v17 = v18;
        v17 += 24;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = 24 * v6 + 24 * a2;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char *>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::sub_match<std::__wrap_iter<char *>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v17);
    v5 = v15;
    v4 = v16;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v6 = HIBYTE(v20);
  if (v20 >= 0)
  {
    v7 = HIBYTE(v20);
  }

  else
  {
    v7 = v19;
  }

  if (v20 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v3 & 0x80u) == 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v5;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_p, v10, v11);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__p);
LABEL_24:
  v13 = v9 < v7;
  if (v7 < v9)
  {
    v13 = -1;
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

void sub_2475B413C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_node<pxrInternal__aapl__pxrReserved__::SdfPath>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<pxrInternal__aapl__pxrReserved__::SdfPath,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<pxrInternal__aapl__pxrReserved__::SdfPath,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,0>(v2 + 28);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(a1, a2[1]);
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy((a2 + 5), a2[6]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 4));

    operator delete(a2);
  }
}

uint64_t RIOPxrSdfLayerGetTypeID()
{
  if (RIOPxrSdfLayerGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfLayerGetTypeID::onceToken, &__block_literal_global_11);
  }

  return RIOPxrSdfLayerGetTypeID::typeID;
}

void __RIOPxrSdfLayerGetTypeID_block_invoke()
{
  if (!RIOPxrSdfLayerGetTypeID::typeID)
  {
    RIOPxrSdfLayerGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrSdfLayerCreateAnonymous(char *a1)
{
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(__p);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(__p);
  v9 = 0;
  if (a1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, a1);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v11 = 0;
  }

  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous();
  v3 = v8;
  v2 = v9;
  v8 = 0;
  v9 = v3;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::_RemoveRef(&v9, v2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v8);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v6, v7[0]);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> &>(&v9);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v9);
  return v4;
}

void sub_2475B4584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, atomic_uint *a13, atomic_uint *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&a13);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a10, a11);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&a14);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> &>(void *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOPxrSdfLayerGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfLayerGetTypeID::onceToken, &__block_literal_global_11);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 16) = *a1;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef((Instance + 16));
  }

  return v4;
}

CFStringRef RIOPxrSdfLayerCreateIdentifier(char *a1, const __CFDictionary *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a1);
  MEMORY[0x24C1A5F20](v8, __p, v10);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 >= 0)
  {
    v3 = v8;
  }

  else
  {
    v3 = v8[0];
  }

  v4 = CFStringCreateWithCString(0, v3, 0x8000100u);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v10, v11);
  return v4;
}

void sub_2475B4714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v21 - 40, *(v21 - 32));
  _Unwind_Resume(a1);
}

void anonymous namespace::decodeCFDictionaryRefOfFileFormatArguments(_anonymous_namespace_ *this, CFDictionaryRef theDict)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  if (theDict)
  {
    CFDictionaryApplyFunction(theDict, realityio::updateStringMapFromCFDictionary, this);
  }
}

uint64_t RIOPxrSdfLayerSave(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = realityio::UsdLayerMutexTracker::instance(a1);
  v6 = a1[2];
  v5 = a1 + 2;
  if (v6)
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v13, v7);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v9 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v13);
  v10 = v14;
  if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v10 + 8))(v10);
  }

  std::recursive_mutex::lock(v9);
  v11 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
  v8 = MEMORY[0x24C1A8790](v11, a2);
  std::recursive_mutex::unlock(v9);
  return v8;
}

void sub_2475B48A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerReload(uint64_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = realityio::UsdLayerMutexTracker::instance(a1);
  v4 = a1[2];
  v3 = a1 + 2;
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v11, v5);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v7 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v11);
  v8 = v12;
  if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  std::recursive_mutex::lock(v7);
  v9 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
  v6 = pxrInternal__aapl__pxrReserved__::SdfLayer::Reload(v9);
  std::recursive_mutex::unlock(v7);
  return v6;
}

void sub_2475B49EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerExportWithURL(uint64_t a1, void *a2, char *a3, const __CFDictionary *a4)
{
  v7 = a2;
  v8 = [v7 isFileURL];
  if (v8)
  {
  }

  else
  {
    v10 = *(realityio::logObjects(v8) + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_247485000, v10, OS_LOG_TYPE_ERROR, "CoreRealityIO only supports exporting content to file URLs", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

uint64_t anonymous namespace::exportLayerWithFilePath(uint64_t a1, char *a2, char *a3, CFDictionaryRef theDict)
{
  if (!a1)
  {
    return 0;
  }

  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&v12, v7);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  v8 = pxrInternal__aapl__pxrReserved__::SdfLayer::Export();
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v14, v15);
  return v8;
}

void sub_2475B4BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a22, a23);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfLayerExportWithFilePath(uint64_t a1, char *a2, char *a3, const __CFDictionary *a4)
{
  if (a2)
  {
  }

  else
  {
    return 0;
  }
}

CFStringRef RIOPxrSdfLayerCopyExportString(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::ExportToString())
  {
    if (v5 >= 0)
    {
      v1 = __p;
    }

    else
    {
      v1 = __p[0];
    }

    v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
  }

  else
  {
    v2 = 0;
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2475B4CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIOPxrSdfLayerClear(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v9, v5);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v9);
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::SdfLayer::Clear(v8);
    std::recursive_mutex::unlock(v6);
  }
}

void sub_2475B4DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void RIOPxrSdfLayerTransferContent(uint64_t *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = *(a2 + 16);
    v5 = (a2 + 16);
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v11, v7);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v11);
    v9 = v12;
    if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v9 + 8))(v9);
    }

    std::recursive_mutex::lock(v8);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v11, a1 + 2);
    pxrInternal__aapl__pxrReserved__::SdfLayer::TransferContent();
    v10 = v12;
    if (v12)
    {
      if (atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v10 + 8))(v10);
      }
    }

    std::recursive_mutex::unlock(v8);
  }
}

void sub_2475B4F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  std::recursive_mutex::unlock(v10);
  _Unwind_Resume(a1);
}

void sub_2475B4FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  JUMPOUT(0x2475B4FA0);
}

uint64_t RIOPxrSdfLayerCreateOrFindRelativeToLayer(uint64_t a1, char *a2)
{
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(__p);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(__p);
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    pxrInternal__aapl__pxrReserved__::SdfLayer::FindOrOpen();
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v16, v17);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v14)
    {
      v2 = RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> &>(&v14);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v14);
      return v2;
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v14);
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    pxrInternal__aapl__pxrReserved__::SdfLayer::CreateNew();
    v11 = *MEMORY[0x277CBECE8];
    if (RIOPxrSdfLayerGetTypeID::onceToken != -1)
    {
      dispatch_once(&RIOPxrSdfLayerGetTypeID::onceToken, &__block_literal_global_11);
    }

    Instance = _CFRuntimeCreateInstance();
    v2 = Instance;
    if (Instance)
    {
      *(Instance + 16) = v14;
      v14 = 0;
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v14);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v16, v17);
    goto LABEL_30;
  }

  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v19, (a1 + 16));
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  pxrInternal__aapl__pxrReserved__::SdfLayer::FindRelativeToLayer();
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v16, v17);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = v20;
  if (v20 && atomic_fetch_add_explicit((v20 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator pxrInternal__aapl__pxrReserved__::SdfLayer* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::*)(void)const(&v14);
  v8 = v7 & 1 | v6;
  if (v8)
  {
    v2 = RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>(&v14);
  }

  v9 = v15[0];
  if (v15[0] && atomic_fetch_add_explicit(v15[0] + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v9 + 8))(v9);
  }

  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
    std::string::basic_string[abi:ne200100]<0>(&v16, a2);
    pxrInternal__aapl__pxrReserved__::SdfLayer::ComputeAbsolutePath();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v16);
    }

    std::string::basic_string[abi:ne200100]<0>(&v16, a2);
    v15[0] = 0;
    v15[1] = 0;
    v14 = v15;
    pxrInternal__aapl__pxrReserved__::SdfLayer::FindOrOpen();
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v14, v15[0]);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v16);
    }

    if (v19)
    {
      v2 = RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> &>(&v19);
      v10 = &v19;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v19);
      v17 = 0;
      v18 = 0;
      v16 = &v17;
      pxrInternal__aapl__pxrReserved__::SdfLayer::CreateNew();
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v16, v17);
      v2 = RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> &>(&v14);
      v10 = &v14;
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(v10);
LABEL_30:
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v2;
}

void sub_2475B5350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&a9);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfLayerCreateWithIdentifier(char *a1)
{
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(__p);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(__p);
  v9 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, a1);
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  pxrInternal__aapl__pxrReserved__::SdfLayer::CreateNew();
  v3 = v8;
  v2 = v9;
  v8 = 0;
  v9 = v3;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::_RemoveRef(&v9, v2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v8);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v6, v7[0]);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> &>(&v9);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v9);
  return v4;
}

uint64_t RIOPxrSdfLayerIsAnonymous(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207DE8](v1);
  }

  return result;
}

uint64_t RIOPxrSdfLayerIsEmpty(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));

  return MEMORY[0x282207F08](v1);
}

uint64_t RIOPxrSdfLayerCopyDefaultPrim(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetDefaultPrim(&v3, v1);
  result = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(&v3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void RIOPxrSdfLayerSetDefaultPrim(uint64_t *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v11, v7);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v11);
    v9 = v12;
    if (v12)
    {
      if (atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }

    std::recursive_mutex::lock(v8);
    v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetDefaultPrim(v10, (a2 + 16));
    std::recursive_mutex::unlock(v8);
  }
}

void sub_2475B5754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void RIOPxrSdfLayerClearDefaultPrim(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v9, v5);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v9);
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::SdfLayer::ClearDefaultPrim(v8);
    std::recursive_mutex::unlock(v6);
  }
}

void sub_2475B5878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

CFStringRef RIOPxrSdfLayerCopyComment(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetComment(__p, v1);
  if (v6 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = CFStringCreateWithCString(0, v2, 0x8000100u);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2475B5944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIOPxrSdfLayerSetComment(uint64_t *a1, char *a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&__p, v7);
    }

    else
    {
      __p = 0;
      v11 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &__p);
    v9 = v11;
    if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v9 + 8))(v9);
    }

    std::recursive_mutex::lock(v8);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
    if (a2)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, a2);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
    }

    pxrInternal__aapl__pxrReserved__::SdfLayer::SetComment();
    if (v12 < 0)
    {
      operator delete(__p);
    }

    std::recursive_mutex::unlock(v8);
  }
}

void sub_2475B5A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock(v15);
  _Unwind_Resume(a1);
}

void sub_2475B5AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  JUMPOUT(0x2475B5ABCLL);
}

CFStringRef RIOPxrSdfLayerCopyIdentifier(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
  Identifier = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v1);
  if (*(Identifier + 23) >= 0)
  {
    v3 = Identifier;
  }

  else
  {
    v3 = *Identifier;
  }

  return CFStringCreateWithCString(0, v3, 0x8000100u);
}

void RIOPxrSdfLayerSetIdentifier(uint64_t *a1, char *a2)
{
  if (a1 && a2)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&__p, v7);
    }

    else
    {
      __p = 0;
      v11 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &__p);
    v9 = v11;
    if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v9 + 8))(v9);
    }

    std::recursive_mutex::lock(v8);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
    std::string::basic_string[abi:ne200100]<0>(&__p, a2);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetIdentifier();
    if (v12 < 0)
    {
      operator delete(__p);
    }

    std::recursive_mutex::unlock(v8);
  }
}

void sub_2475B5C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock(v15);
  _Unwind_Resume(a1);
}

void sub_2475B5C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  JUMPOUT(0x2475B5C80);
}

CFStringRef RIOPxrSdfLayerCopyRepositoryPath(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
  RepositoryPath = pxrInternal__aapl__pxrReserved__::SdfLayer::GetRepositoryPath(v1);
  if (*(RepositoryPath + 23) >= 0)
  {
    v3 = RepositoryPath;
  }

  else
  {
    v3 = *RepositoryPath;
  }

  return CFStringCreateWithCString(0, v3, 0x8000100u);
}

CFStringRef RIOPxrSdfLayerCopyDisplayName(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetDisplayName(__p, v1);
  if (v6 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = CFStringCreateWithCString(0, v2, 0x8000100u);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2475B5D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef RIOPxrSdfLayerCopyRealPath(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
  RealPath = pxrInternal__aapl__pxrReserved__::SdfLayer::GetRealPath(v1);
  if (*(RealPath + 23) >= 0)
  {
    v3 = RealPath;
  }

  else
  {
    v3 = *RealPath;
  }

  return CFStringCreateWithCString(0, v3, 0x8000100u);
}

CFStringRef RIOPxrSdfLayerCopyAbsolutePath(uint64_t a1, char *a2)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
  std::string::basic_string[abi:ne200100]<0>(&v6, a2);
  pxrInternal__aapl__pxrReserved__::SdfLayer::ComputeAbsolutePath();
  if (v9 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v4 = CFStringCreateWithCString(0, p_p, 0x8000100u);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  return v4;
}

void sub_2475B5E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

CFStringRef RIOPxrSdfLayerCopyAssetName(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
  AssetName = pxrInternal__aapl__pxrReserved__::SdfLayer::GetAssetName(v1);
  if (*(AssetName + 23) >= 0)
  {
    v3 = AssetName;
  }

  else
  {
    v3 = *AssetName;
  }

  return CFStringCreateWithCString(0, v3, 0x8000100u);
}

CFStringRef RIOPxrSdfLayerCopyFileExtension(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetFileExtension(__p, v1);
  if (v6 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = CFStringCreateWithCString(0, v2, 0x8000100u);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2475B5F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerGetMetadata(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
  v4 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v3);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(&v9, v3, v4, (a2 + 16));
  v5 = v10;
  if (v10)
  {
    if (!strcmp((*(*(v10 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(MEMORY[0x277D826F8] + 8) & 0x7FFFFFFFFFFFFFFFLL)))
    {
LABEL_7:
      if ((v5 & 4) != 0)
      {
        (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      v6 = 0;
      goto LABEL_11;
    }

    if ((v5 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v9, MEMORY[0x277D826F8]))
    {
      v5 = v10;
      goto LABEL_7;
    }
  }

  v6 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue &>(&v9);
LABEL_11:
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v9);
LABEL_13:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2475B60A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void RIOPxrSdfLayerSetMetadata(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = realityio::UsdLayerMutexTracker::instance(a1);
    v8 = a1[2];
    v7 = a1 + 2;
    if (v8)
    {
      v9 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v7);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v14, v9);
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v10 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v6, &v14);
    v11 = v15;
    if (v15)
    {
      if (atomic_fetch_add_explicit((v15 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v11 + 8))(v11);
      }
    }

    std::recursive_mutex::lock(v10);
    v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v7);
    v13 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v12);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetField(v12, v13, (a2 + 16), (a3 + 16));
    std::recursive_mutex::unlock(v10);
  }
}

void sub_2475B61B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerCopyColorConfiguration(uint64_t a1)
{
  if (a1)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetColorConfiguration(&v5, v1);
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
    }

    else
    {
      v8 = v5;
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    v4 = RIOPxrSdfAssetPathCreateFromCString(v3);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v7 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }

    return v4;
  }

  else
  {

    return RIOPxrSdfAssetPathCreateEmptyPath();
  }
}

void RIOPxrSdfLayerSetColorConfiguration(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v11, v7);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v11);
    v9 = v12;
    if (v12)
    {
      if (atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }

    std::recursive_mutex::lock(v8);
    v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetColorConfiguration(v10, (a2 + 16));
    std::recursive_mutex::unlock(v8);
  }
}

void sub_2475B63E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerHasColorConfiguration(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207ED8](v1);
  }

  return result;
}

void RIOPxrSdfLayerClearColorConfiguration(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v9, v5);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v9);
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::SdfLayer::ClearColorConfiguration(v8);
    std::recursive_mutex::unlock(v6);
  }
}

void sub_2475B6540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerCopyColorManagementSystem(uint64_t a1)
{
  if (a1)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetColorManagementSystem(&v3, v1);
    result = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(&v3);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if (RIOPxrTfTokenEmpty::onceToken != -1)
    {
      dispatch_once(&RIOPxrTfTokenEmpty::onceToken, &__block_literal_global_2_2);
    }

    return RIOPxrTfTokenEmpty::tokenRef;
  }

  return result;
}

void RIOPxrSdfLayerSetColorManagementSystem(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v11, v7);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v11);
    v9 = v12;
    if (v12)
    {
      if (atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }

    std::recursive_mutex::lock(v8);
    v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetColorManagementSystem(v10, (a2 + 16));
    std::recursive_mutex::unlock(v8);
  }
}

void sub_2475B6718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerHasColorManagementSystem(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207EF0](v1);
  }

  return result;
}

void RIOPxrSdfLayerClearColorManagementSystem(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v9, v5);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v9);
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::SdfLayer::ClearColorManagementSystem(v8);
    std::recursive_mutex::unlock(v6);
  }
}

void sub_2475B6870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

CFStringRef RIOPxrSdfLayerCopyDocumentation(uint64_t a1)
{
  if (a1)
  {
    v2 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetDocumentation(__p, v2);
    if (v7 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }
  }

  else
  {
    v3 = "";
  }

  v4 = CFStringCreateWithCString(0, v3, 0x8000100u);
  if (a1 && v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_2475B6954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void RIOPxrSdfLayerSetDocumentation(uint64_t *a1, char *a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&__p, v7);
    }

    else
    {
      __p = 0;
      v12 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &__p);
    v9 = v12;
    if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v9 + 8))(v9);
    }

    std::recursive_mutex::lock(v8);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v10);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetDocumentation();
    if (v13 < 0)
    {
      operator delete(__p);
    }

    std::recursive_mutex::unlock(v8);
  }
}

void sub_2475B6A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock(v15);
  _Unwind_Resume(a1);
}

void sub_2475B6AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  JUMPOUT(0x2475B6AA4);
}

uint64_t RIOPxrSdfLayerGetStartTimeCode(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207E50](v1);
  }

  return result;
}

void RIOPxrSdfLayerSetStartTimeCode(uint64_t *a1, double a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v11, v7);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v11);
    v9 = v12;
    if (v12)
    {
      if (atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }

    std::recursive_mutex::lock(v8);
    v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetStartTimeCode(v10, a2);
    std::recursive_mutex::unlock(v8);
  }
}

void sub_2475B6C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerHasStartTimeCode(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207E68](v1);
  }

  return result;
}

void RIOPxrSdfLayerClearStartTimeCode(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v9, v5);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v9);
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::SdfLayer::ClearStartTimeCode(v8);
    std::recursive_mutex::unlock(v6);
  }
}

void sub_2475B6D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerGetEndTimeCode(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207E18](v1);
  }

  return result;
}

void RIOPxrSdfLayerSetEndTimeCode(uint64_t *a1, double a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v11, v7);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v11);
    v9 = v12;
    if (v12)
    {
      if (atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }

    std::recursive_mutex::lock(v8);
    v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetEndTimeCode(v10, a2);
    std::recursive_mutex::unlock(v8);
  }
}

void sub_2475B6EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerHasEndTimeCode(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207E20](v1);
  }

  return result;
}

void RIOPxrSdfLayerClearEndTimeCode(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v9, v5);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v9);
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::SdfLayer::ClearEndTimeCode(v8);
    std::recursive_mutex::unlock(v6);
  }
}

void sub_2475B7020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerGetTimeCodesPerSecond(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207ED0](v1);
  }

  return result;
}

void RIOPxrSdfLayerSetTimeCodesPerSecond(uint64_t *a1, double a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v11, v7);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v11);
    v9 = v12;
    if (v12)
    {
      if (atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }

    std::recursive_mutex::lock(v8);
    v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetTimeCodesPerSecond(v10, a2);
    std::recursive_mutex::unlock(v8);
  }
}

void sub_2475B718C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerHasTimeCodesPerSecond(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207EE0](v1);
  }

  return result;
}

void RIOPxrSdfLayerClearTimeCodesPerSecond(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v9, v5);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v9);
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::SdfLayer::ClearTimeCodesPerSecond(v8);
    std::recursive_mutex::unlock(v6);
  }
}

void sub_2475B72E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerGetFramesPerSecond(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207E90](v1);
  }

  return result;
}

void RIOPxrSdfLayerSetFramesPerSecond(uint64_t *a1, double a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v11, v7);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v11);
    v9 = v12;
    if (v12)
    {
      if (atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }

    std::recursive_mutex::lock(v8);
    v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetFramesPerSecond(v10, a2);
    std::recursive_mutex::unlock(v8);
  }
}

void sub_2475B7450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerHasFramesPerSecond(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207EA8](v1);
  }

  return result;
}

void RIOPxrSdfLayerClearFramesPerSecond(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v9, v5);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v9);
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::SdfLayer::ClearFramesPerSecond(v8);
    std::recursive_mutex::unlock(v6);
  }
}

void sub_2475B75A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerGetFramePrecision(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207E70](v1);
  }

  return result;
}

void RIOPxrSdfLayerSetFramePrecision(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v9, v5);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v9);
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetFramePrecision(v8);
    std::recursive_mutex::unlock(v6);
  }
}

void sub_2475B7710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerHasFramePrecision(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207E80](v1);
  }

  return result;
}

void RIOPxrSdfLayerClearFramePrecision(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v9, v5);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v9);
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::SdfLayer::ClearFramePrecision(v8);
    std::recursive_mutex::unlock(v6);
  }
}

void sub_2475B7868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

CFStringRef RIOPxrSdfLayerCopyOwner(uint64_t a1)
{
  if (a1)
  {
    v2 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetOwner(__p, v2);
    if (v7 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }
  }

  else
  {
    v3 = "";
  }

  v4 = CFStringCreateWithCString(0, v3, 0x8000100u);
  if (a1 && v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_2475B794C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void RIOPxrSdfLayerSetOwner(uint64_t *a1, char *a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&__p, v7);
    }

    else
    {
      __p = 0;
      v12 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &__p);
    v9 = v12;
    if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v9 + 8))(v9);
    }

    std::recursive_mutex::lock(v8);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v10);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetOwner();
    if (v13 < 0)
    {
      operator delete(__p);
    }

    std::recursive_mutex::unlock(v8);
  }
}

void sub_2475B7A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock(v15);
  _Unwind_Resume(a1);
}

void sub_2475B7AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  JUMPOUT(0x2475B7A9CLL);
}

uint64_t RIOPxrSdfLayerHasOwner(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207F28](v1);
  }

  return result;
}

void RIOPxrSdfLayerClearOwner(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v9, v5);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v9);
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::SdfLayer::ClearOwner(v8);
    std::recursive_mutex::unlock(v6);
  }
}

void sub_2475B7BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

CFStringRef RIOPxrSdfLayerCopySessionOwner(uint64_t a1)
{
  if (a1)
  {
    v2 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetSessionOwner(__p, v2);
    if (v7 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }
  }

  else
  {
    v3 = "";
  }

  v4 = CFStringCreateWithCString(0, v3, 0x8000100u);
  if (a1 && v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_2475B7CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void RIOPxrSdfLayerSetSessionOwner(uint64_t *a1, char *a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&__p, v7);
    }

    else
    {
      __p = 0;
      v12 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &__p);
    v9 = v12;
    if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v9 + 8))(v9);
    }

    std::recursive_mutex::lock(v8);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v5);
    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v10);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetSessionOwner();
    if (v13 < 0)
    {
      operator delete(__p);
    }

    std::recursive_mutex::unlock(v8);
  }
}

void sub_2475B7DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock(v15);
  _Unwind_Resume(a1);
}

void sub_2475B7E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  JUMPOUT(0x2475B7E1CLL);
}

uint64_t RIOPxrSdfLayerHasSessionOwner(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207E38](v1);
  }

  return result;
}

void RIOPxrSdfLayerClearSessionOwner(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v9, v5);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v9);
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::SdfLayer::ClearSessionOwner(v8);
    std::recursive_mutex::unlock(v6);
  }
}

void sub_2475B7F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerGetHasOwnedSubLayers(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207EC0](v1);
  }

  return result;
}

void RIOPxrSdfLayerSetHasOwnedSubLayers(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v9, v5);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v9);
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetHasOwnedSubLayers(v8);
    std::recursive_mutex::unlock(v6);
  }
}

void sub_2475B80D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerHasCustomLayerMetaData(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207EA0](v1);
  }

  return result;
}

void RIOPxrSdfLayerClearAllCustomLayerMetaData(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v9, v5);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v9);
    v7 = v10;
    if (v10)
    {
      if (atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v7 + 8))(v7);
      }
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v3);
    pxrInternal__aapl__pxrReserved__::SdfLayer::ClearCustomLayerData(v8);
    std::recursive_mutex::unlock(v6);
  }
}

void sub_2475B8228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

__CFArray *RIOPxrSdfLayerCopySubLayerPaths(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerPaths(&v17, v1);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v3 = pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_Validate(v17);
  v4 = v3;
  v5 = 0;
  v6 = 0;
  if (v3)
  {
    v7 = &v17;
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v8 = &v19;
  }

  else
  {
    v8 = 16;
  }

  while (1)
  {
    v9 = pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_Validate(v17);
    if (v17)
    {
      v10 = (*(*v17 + 112))(v17, v19);
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 3);
    }

    else
    {
      v11 = 0;
    }

    if (v4 != v9)
    {
      v20 = "sdf/listProxy.h";
      v21 = "equal";
      v22 = 255;
      v23 = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_Iterator<pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy> *, pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_GetHelper>::equal(const This &) const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy, Owner = pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy> *, GetItem = pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_GetHelper]";
      v24 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
      goto LABEL_14;
    }

    if (v6 == v11)
    {
      break;
    }

LABEL_14:
    if (*v7)
    {
      if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*v7 + 8)))
      {
        v12 = (*(*(**v7 + 112))(*v7, *v8) + v5);
        if (*(v12 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v12, *(v12 + 1));
        }

        else
        {
          v13 = *v12;
          __p.__r_.__value_.__r.__words[2] = *(v12 + 2);
          *&__p.__r_.__value_.__l.__data_ = v13;
        }

        goto LABEL_21;
      }

      v20 = "sdf/listProxy.h";
      v21 = "_Validate";
      v22 = 691;
      v23 = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_Validate() const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy]";
      v24 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
    }

    memset(&__p, 0, sizeof(__p));
LABEL_21:
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v20 = CFStringCreateWithCString(0, p_p, 0x8000100u);
    CFArrayAppendValue(Mutable, v20);
    realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v6;
    v5 += 24;
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return Mutable;
}

void sub_2475B84F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, char a19)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void RIOPxrSdfLayerSetSubLayerPathsWithStrings(uint64_t a1, CFArrayRef theArray)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v19[0] = &unk_285951538;
    v20 = v19;
    if (!theArray)
    {
LABEL_19:
      std::__function::__value_func<realityio::Result<std::string,realityio::Error> ()(__CFString const*)>::~__value_func[abi:ne200100](v19);
      goto LABEL_26;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v5 = 0;
      while (1)
      {
        v14.__r_.__value_.__r.__words[0] = CFArrayGetValueAtIndex(theArray, v5);
        if (!v20)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v20 + 48))(__p);
        if ((__p[0] & 1) == 0)
        {
          break;
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&v14, *&__p[8], *&__p[16]);
        }

        else
        {
          v14 = *&__p[8];
        }

        std::vector<std::string>::push_back[abi:ne200100](&v16, &v14);
        if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v14.__r_.__value_.__l.__data_);
        }

        if ((__p[0] & 1) != 0 && (__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        if (Count == ++v5)
        {
          goto LABEL_16;
        }
      }

      v12 = *&__p[8];
      *__p = &v16;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      goto LABEL_19;
    }

LABEL_16:
    memset(__p, 0, 24);
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(__p, v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3));
    v12 = *__p;
    v13 = *&__p[16];
    v14.__r_.__value_.__r.__words[0] = __p;
    memset(__p, 0, 24);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
    *__p = &v16;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    v6 = std::__function::__value_func<realityio::Result<std::string,realityio::Error> ()(__CFString const*)>::~__value_func[abi:ne200100](v19);
    v7 = realityio::UsdLayerMutexTracker::instance(v6);
    if (*(a1 + 16))
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(__p, v8);
    }

    else
    {
      *__p = 0;
      *&__p[8] = 0;
    }

    v9 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v7, __p);
    v10 = *&__p[8];
    if (*&__p[8] && atomic_fetch_add_explicit((*&__p[8] + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v10 + 8))(v10);
    }

    std::recursive_mutex::lock(v9);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetSubLayerPaths();
    std::recursive_mutex::unlock(v9);
    *__p = &v12;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  }

LABEL_26:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_2475B880C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, atomic_uint *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (__p && atomic_fetch_add_explicit(__p + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*__p + 8))(__p);
  }

  if (a9 == 1)
  {
    *(v28 - 88) = v27;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v28 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfLayerGetNumSubLayerPaths(uint64_t result)
{
  if (result)
  {
    v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((result + 16));

    return MEMORY[0x282207EB8](v1);
  }

  return result;
}

BOOL RIOPxrSdfLayerCanApplyBatchNamespaceEdit(_BOOL8 a1, const __CFArray *a2)
{
  v2 = a1;
  if (a1)
  {
    makeBatchNamespaceEditFromCFArray(v4, a2);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((v2 + 16));
    v2 = pxrInternal__aapl__pxrReserved__::SdfLayer::CanApply() != 0;
    pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit::~SdfBatchNamespaceEdit(v4);
  }

  return v2;
}

void sub_2475B8984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit::~SdfBatchNamespaceEdit(va);
  _Unwind_Resume(a1);
}

void makeBatchNamespaceEditFromCFArray(const __CFArray *a1, const __CFArray *a2)
{
  Count = CFArrayGetCount(a2);
  memset(v3, 0, 24);
  if (Count)
  {
    if (Count <= 0xCCCCCCCCCCCCCCCLL)
    {
      v4[4] = v3;
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit>>(Count);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit::SdfBatchNamespaceEdit();
  v4[0] = v3;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit>::__destroy_vector::operator()[abi:ne200100](v4);
}

void sub_2475B8C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfLayerApplyBatchNamespaceEdit(uint64_t a1, const __CFArray *a2)
{
  v2 = a1;
  if (a1)
  {
    makeBatchNamespaceEditFromCFArray(v10, a2);
    v4 = realityio::UsdLayerMutexTracker::instance(v3);
    if (*(v2 + 16))
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((v2 + 16));
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v11, v5);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v11);
    v7 = v12;
    if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v7 + 8))(v7);
    }

    std::recursive_mutex::lock(v6);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((v2 + 16));
    v2 = pxrInternal__aapl__pxrReserved__::SdfLayer::Apply(v8, v10);
    std::recursive_mutex::unlock(v6);
    pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit::~SdfBatchNamespaceEdit(v10);
  }

  return v2;
}

void sub_2475B8D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = a14;
  if (a14)
  {
    if (atomic_fetch_add_explicit((a14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v15 + 8))(v15);
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfBatchNamespaceEdit::~SdfBatchNamespaceEdit(&a10);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfLayerCopyCustomLayerDataValue(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
    CustomLayerData = pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v9, v4);
    if ((*(a2 + 16) & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(CustomLayerData);
    }

    ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
    if (ValueAtPath)
    {
      v2 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue &>(ValueAtPath);
    }

    else
    {
      v2 = 0;
    }

    v7 = v9;
    v9 = 0;
    if (v7)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v7, *(v7 + 8));
      MEMORY[0x24C1A91B0](v7, 0x1020C4062D53EE8);
    }
  }

  return v2;
}

void sub_2475B8E54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfLayerSetCustomLayerData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
    CustomLayerData = pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v17, v7);
    if ((*(a2 + 16) & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(CustomLayerData);
    }

    v9 = pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
    v10 = realityio::UsdLayerMutexTracker::instance(v9);
    if (*(a1 + 16))
    {
      v11 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v18, v11);
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v12 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v10, &v18);
    v13 = v19;
    if (v19 && atomic_fetch_add_explicit((v19 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }

    std::recursive_mutex::lock(v12);
    v14 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetCustomLayerData(v14, &v17);
    std::recursive_mutex::unlock(v12);
    v15 = v17;
    v17 = 0;
    if (v15)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v15, *(v15 + 8));
      MEMORY[0x24C1A91B0](v15, 0x1020C4062D53EE8);
    }
  }

  return v4;
}

void sub_2475B8FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v13 = a12;
  if (a12)
  {
    if (atomic_fetch_add_explicit((a12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a10);
  _Unwind_Resume(a1);
}

BOOL RIOPxrSdfLayerClearCustomLayerData(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
    CustomLayerData = pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v9, v4);
    if ((*(a2 + 16) & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(CustomLayerData);
    }

    pxrInternal__aapl__pxrReserved__::VtDictionary::EraseValueAtPath();
    v6 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetCustomLayerData(v6, &v9);
    v7 = v9;
    v9 = 0;
    if (v7)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v7, *(v7 + 8));
      MEMORY[0x24C1A91B0](v7, 0x1020C4062D53EE8);
    }
  }

  return a1 != 0;
}

void sub_2475B90E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfLayerFlattenSubGraphInPlace(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v16, (a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20, (a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v21, (a2 + 20));
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath const*,pxrInternal__aapl__pxrReserved__::SdfPath const*>(&v11, &v20, &v22, 1uLL);
  MEMORY[0x24C1A58B0](&v14, &v11);
  pxrInternal__aapl__pxrReserved__::UsdStage::OpenMasked();
  v19 = &v14;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v19);
  v19 = &v11;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
  v4 = v17;
  if (v17 && atomic_fetch_add_explicit((v17 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  if (v18)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v18);
    pxrInternal__aapl__pxrReserved__::UsdStage::Flatten(v5);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v14, &v16);
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v11, (a1 + 16));
    v6 = pxrInternal__aapl__pxrReserved__::SdfCopySpec();
    v7 = v12;
    if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v15;
    if (v15 && atomic_fetch_add_explicit((v15 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v8 + 8))(v8);
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v16);
  }

  else
  {
    v6 = 0;
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v18);
  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2475B9324(_Unwind_Exception *a1, uint64_t a2, atomic_uint *a3, uint64_t a4, uint64_t a5, atomic_uint *a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, atomic_uint *);
  v10 = va_arg(va1, void);
  if (a3 && atomic_fetch_add_explicit(a3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a3 + 8))(a3);
  }

  if (a6)
  {
    if (atomic_fetch_add_explicit(a6 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a6 + 8))(a6);
    }
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(va);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va1);
  _Unwind_Resume(a1);
}

atomic_uint **RIOPxrSdfLayerReplicationStartSending(atomic_uint **result, uint64_t a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (result && a3)
  {
    v7 = result[2];
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v7);
    getOrCreateReplicationLayerStateDelegate(&v8, &v7);
    v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::operator->(v8);
    v9[0] = &unk_2859515C8;
    v9[1] = a3;
    v9[2] = a2;
    v9[3] = v9;
    std::optional<realityio::replication::LayerStateDelegate::Sender>::emplace[abi:ne200100]<std::function<void ()(char const*,unsigned long)> const&,void>(v5 + 48, v9);
    std::__function::__value_func<void ()(char const*,unsigned long)>::~__value_func[abi:ne200100](v9);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::~TfRefPtr(&v8);
    result = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v7);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475B9538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, atomic_uint *);
  va_copy(va2, va1);
  v5 = va_arg(va2, atomic_uint *);
  std::__function::__value_func<void ()(char const*,unsigned long)>::~__value_func[abi:ne200100](va2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::~TfRefPtr(va1);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

atomic_uint **getOrCreateReplicationLayerStateDelegate(realityio::replication::LayerStateDelegate **a1, uint64_t *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetStateDelegate(&lpsrc, v3);
  if (!v12 || (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(&v12) + 14) == 1 ? (v4 = lpsrc == 0) : (v4 = 1), v4))
  {
    v6 = 0;
  }

  else
  {
    v5 = **lpsrc;
  }

  v10 = v6;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::_AddRef(v6);
  v7 = v12;
  if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v10;
  if (!v10)
  {
    realityio::replication::LayerStateDelegate::New(0);
  }

  *a1 = v10;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::_AddRef(v8);
  return pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::~TfRefPtr(&v10);
}

void sub_2475B9794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, __int16 a11, char a12, char a13, uint64_t a14)
{
  std::recursive_mutex::unlock(v15);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::~TfRefPtr(v14);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::~TfRefPtr(&a10);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::operator->(uint64_t result)
{
  if (!result)
  {
    v1 = strrchr[abi:ne200100]("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", v1, 0x2F);
    v2 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
    return RIOPxrSdfLayerReplicationStopSending(v2);
  }

  return result;
}

atomic_uint **RIOPxrSdfLayerReplicationStopSending(atomic_uint **result)
{
  if (result)
  {
    v2 = result[2];
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v2);
    getOrCreateReplicationLayerStateDelegate(&v3, &v2);
    v1 = v3;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::operator->(v3);
    if (*(v1 + 80) == 1)
    {
      std::__function::__value_func<void ()(char const*,unsigned long)>::~__value_func[abi:ne200100]((v1 + 12));
      *(v1 + 80) = 0;
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::~TfRefPtr(&v3);
    return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v2);
  }

  return result;
}

void sub_2475B9958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint *a9, atomic_uint *a10)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::~TfRefPtr(&a10);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&a9);
  _Unwind_Resume(a1);
}

atomic_uint **RIOPxrSdfLayerReplicationReceive(atomic_uint **result, char *a2, unint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      v6 = result[2];
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v6);
      getOrCreateReplicationLayerStateDelegate(&v7, &v6);
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::operator->(v7);
      realityio::replication::LayerStateDelegate::Receive(v5, a2, a3);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::~TfRefPtr(&v7);
      return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v6);
    }
  }

  return result;
}

uint64_t _RIOPxrSdfLayerCFHash(void *a1)
{
  v2 = a1[2];
  v1 = a1 + 2;
  if (v2)
  {
    return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v1);
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<realityio::CFStringArrayToStringVector(__CFArray const*)::{lambda(__CFString const*)#1},std::allocator<realityio::CFStringArrayToStringVector(__CFArray const*)::{lambda(__CFString const*)#1}>,realityio::Result<std::string,realityio::Error> ()(__CFString const*)>::operator()(__CFString **a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1 && (realityio::CFStringCopyUTF8String(*a1, v8), (v8[0] & 1) != 0))
  {
    v3 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = __p;
    }

    v5 = HIBYTE(v7.__r_.__value_.__r.__words[2]);
    *a2 = 1;
    size = v7.__r_.__value_.__l.__size_;
    *(a2 + 8) = v7.__r_.__value_.__r.__words[0];
    *(a2 + 16) = size;
    *(a2 + 23) = *(&v7.__r_.__value_.__r.__words[1] + 7);
    *(a2 + 31) = v5;
    if (v3 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v4 = std::system_category();
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = v4;
  }
}

uint64_t std::__function::__func<realityio::CFStringArrayToStringVector(__CFArray const*)::{lambda(__CFString const*)#1},std::allocator<realityio::CFStringArrayToStringVector(__CFArray const*)::{lambda(__CFString const*)#1}>,realityio::Result<std::string,realityio::Error> ()(__CFString const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<realityio::Result<std::string,realityio::Error> ()(__CFString const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit>>(unint64_t a1)
{
  if (a1 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit>,pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + v6), (v5 + v6));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + v6 + 4), (v5 + v6 + 4));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + v6 + 8), (v5 + v6 + 8));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + v6 + 12), (v5 + v6 + 12));
      *(a3 + v6 + 16) = *(v5 + v6 + 16);
      v6 += 20;
    }

    while (v5 + v6 != a2);
    do
    {
      result = std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit,0>(v5);
      v5 += 20;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 20;
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit,0>(i - 20);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 20;
        std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::_AddRef(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1 < 0)
    {
      if (v1 == -1)
      {
        return pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_AddRefMaybeLocked();
      }

      v2 = *(result + 8);
      atomic_compare_exchange_strong_explicit((result + 8), &v2, v1 - 1, memory_order_relaxed, memory_order_relaxed);
      if (v2 != v1)
      {
        return pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_AddRefMaybeLocked();
      }
    }

    else
    {
      atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
    }
  }

  return result;
}

atomic_uint **pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase>::~TfRefPtr(atomic_uint **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[2];
    if (v3 < 0)
    {
      if (v3 == -2 || (v5 = v2[2], atomic_compare_exchange_strong_explicit(v2 + 2, &v5, v3 + 1, memory_order_release, memory_order_relaxed), v5 != v3))
      {
        if ((pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_RemoveRefMaybeLocked() & 1) == 0)
        {
          return a1;
        }
      }

      else if (v3 != -1)
      {
        return a1;
      }

      goto LABEL_4;
    }

    if (atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
LABEL_4:
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy>::_Validate(uint64_t result)
{
  if (result)
  {
    if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((result + 8)))
    {
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath const*,pxrInternal__aapl__pxrReserved__::SdfPath const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2475BA0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

atomic_uint **pxrInternal__aapl__pxrReserved__::TfRefPtr<realityio::replication::LayerStateDelegate>::~TfRefPtr(atomic_uint **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[2];
    if (v3 < 0)
    {
      if (v3 == -2 || (v5 = v2[2], atomic_compare_exchange_strong_explicit(v2 + 2, &v5, v3 + 1, memory_order_release, memory_order_relaxed), v5 != v3))
      {
        if ((pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_RemoveRefMaybeLocked() & 1) == 0)
        {
          return a1;
        }
      }

      else if (v3 != -1)
      {
        return a1;
      }

      goto LABEL_4;
    }

    if (atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
LABEL_4:
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

__n128 std::__function::__func<RIOPxrSdfLayerReplicationStartSending::$_0,std::allocator<RIOPxrSdfLayerReplicationStartSending::$_0>,void ()(char const*,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2859515C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<RIOPxrSdfLayerReplicationStartSending::$_0,std::allocator<RIOPxrSdfLayerReplicationStartSending::$_0>,void ()(char const*,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(char const*,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void realityio::MeshAssetAction::operator()(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v165 = *MEMORY[0x277D85DE8];
  std::chrono::steady_clock::now();
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v161, a3);
  v124 = a6;
  v138 = 0;
  v139 = 0;
  v140 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v133 = 0;
  v134 = 0uLL;
  memset(v132, 0, sizeof(v132));
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v10 = *a4;
  if (a4[1] != *a4)
  {
    v11 = 0;
    v118 = 0;
    v122 = a5;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v163, (*a5 + 16 * v11));
      v12 = (v10 + 8 * v11);
      v13 = v164;
      if (v164)
      {
        if (!strcmp((*(*(v164 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio12WrappedRERefIP14REGeomSkeletonEE" & 0x7FFFFFFFFFFFFFFFLL)))
        {
          goto LABEL_8;
        }

        {
          v13 = v164;
LABEL_8:
          if ((v13 & 4) != 0)
          {
            v14 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v163);
          }

          else
          {
            v14 = v163;
          }

          v15 = v139;
          if (v139 >= v140)
          {
            v29 = v139 - v138;
            if ((v29 + 1) >> 61)
            {
              std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
            }

            v30 = (v140 - v138) >> 2;
            if (v30 <= v29 + 1)
            {
              v30 = v29 + 1;
            }

            if (v140 - v138 >= 0x7FFFFFFFFFFFFFF8)
            {
              v31 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v30;
            }

            *&v146 = &v138;
            if (v31)
            {
              if (!(v31 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v32 = (8 * v29);
            __p = 0;
            v144 = v32;
            v145 = (8 * v29);
            v33 = *v14;
            *v32 = *v14;
            if (v33)
            {
              RERetain();
              v32 = v144;
              v34 = v145;
            }

            else
            {
              v34 = 8 * v29;
            }

            v35 = v138;
            v36 = v139;
            v37 = (v139 - v138);
            v17 = (v34 + 8);
            *&v145 = v34 + 8;
            if (v139 != v138)
            {
              v38 = 0;
              v39 = &v32[-(v139 - v138) - 1];
              v40 = v138;
              do
              {
                v41 = *v40;
                *(v39 + 8) = *v40;
                if (v41)
                {
                  RERetain();
                }

                ++v40;
                v38 -= 8;
                v39 += 8;
              }

              while (v40 != v36);
              do
              {
                realityio::WrappedRERef<REGeomSkeleton *>::~WrappedRERef(v35++);
              }

              while (v35 != v36);
              v35 = v138;
              v17 = v145;
            }

            v138 = (v32 - v37);
            v139 = v17;
            v42 = v140;
            v140 = *(&v145 + 1);
            *&v145 = v35;
            *(&v145 + 1) = v42;
            __p = v35;
            v144 = v35;
            std::__split_buffer<realityio::WrappedRERef<REGeomSkeleton *>>::~__split_buffer(&__p);
            a5 = v122;
          }

          else
          {
            v16 = *v14;
            *v139 = *v14;
            if (v16)
            {
              RERetain();
            }

            v17 = v15 + 1;
          }

          v139 = v17;
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&__p, v12);
          v43 = v136;
          if (v136 >= v137)
          {
            v44 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath>(&v135, &__p);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v136, &__p);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v43 + 1, &__p + 1);
            v44 = v43 + 2;
          }

          v136 = v44;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p);
          goto LABEL_176;
        }
      }

      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v12);
      v19 = atomic_load(&realityio::tokens::EcsTokens);
      if (!v19)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*(v19 + 264) ^ *NameToken) > 7 || (v20 = v164) == 0)
      {
LABEL_25:
        v24 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v12);
        MEMORY[0x24C1A5DE0](&__p, "__materialAssets");
        v25 = *v24;
        v26 = __p;
        if ((__p ^ v25) > 7)
        {
          if ((__p & 7) != 0)
          {
            atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v27 = v164;
          if (!v164)
          {
            goto LABEL_29;
          }

          if (!strcmp((*(*(v164 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7VtArrayINS_7VtValueEEE" & 0x7FFFFFFFFFFFFFFFLL)))
          {
            IsImpl = 1;
          }

          else if ((v27 & 4) != 0)
          {
            v26 = __p;
          }

          else
          {
LABEL_29:
            IsImpl = 0;
          }

          if ((v26 & 7) != 0)
          {
            atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (IsImpl)
          {
            if ((v164 & 4) != 0)
            {
              v45 = (*((v164 & 0xFFFFFFFFFFFFFFF8) + 168))(&v163);
            }

            else
            {
              v45 = v163;
            }

            v46 = *(v45 + 16);
            v151 = *v45;
            v152 = v46;
            v47 = *(v45 + 32);
            *&v153 = v47;
            if (v47)
            {
              v48 = (v47 - 16);
              if (*(&v152 + 1))
              {
                v48 = *(&v152 + 1);
              }

              atomic_fetch_add_explicit(v48, 1uLL, memory_order_relaxed);
            }

            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_DetachIfNotUnique(&v151);
            v49 = v153;
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_DetachIfNotUnique(&v151);
            v50 = (v153 + 16 * v151);
            while (2)
            {
              if (v49 == v50)
              {
                pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_DecRef(&v151);
                goto LABEL_176;
              }

              pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v141, v49);
              v51 = *(&v141[0] + 1);
              if (*(&v141[0] + 1))
              {
                v52 = *(&v141[0] + 1) & 0xFFFFFFFFFFFFFFF8;
                if (!strcmp((*(*(*(&v141[0] + 1) & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio17MaterialAssetPairE" & 0x7FFFFFFFFFFFFFFFLL)))
                {
                  goto LABEL_73;
                }

                if ((v51 & 4) == 0)
                {
LABEL_81:
                  if (strcmp((*(*v52 + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio12WrappedRERefIP7REAssetEE" & 0x7FFFFFFFFFFFFFFFLL)))
                  {
                    {
                      goto LABEL_100;
                    }

                    v51 = *(&v141[0] + 1);
                  }

                  if ((v51 & 4) != 0)
                  {
                    v57 = (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(v141);
                  }

                  else
                  {
                    v57 = *&v141[0];
                  }

                  v126 = *v57;
                  if (v126)
                  {
                    RERetain();
                  }

                  v125 = 0;
                  realityio::MaterialAssetPair::MaterialAssetPair(&v159, &v126, &v125);
                  v58 = v134;
                  if (v134 >= *(&v134 + 1))
                  {
                    v60 = v133;
                    v61 = (v134 - v133) >> 4;
                    v62 = v61 + 1;
                    if ((v61 + 1) >> 60)
                    {
                      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
                    }

                    v63 = *(&v134 + 1) - v133;
                    if ((*(&v134 + 1) - v133) >> 3 > v62)
                    {
                      v62 = v63 >> 3;
                    }

                    v64 = v63 >= 0x7FFFFFFFFFFFFFF0;
                    v65 = 0xFFFFFFFFFFFFFFFLL;
                    if (!v64)
                    {
                      v65 = v62;
                    }

                    *&v146 = &v133;
                    if (v65)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(&v133, v65);
                    }

                    v66 = (v134 - v133) >> 4;
                    v67 = (16 * v61);
                    __p = 0;
                    v144 = v67;
                    *(&v145 + 1) = 0;
                    *v67 = v159;
                    v159 = 0;
                    v67[1] = v160;
                    v160 = 0;
                    *&v145 = 16 * v61 + 16;
                    v68 = 16 * v61 - 16 * v66;
                    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::MaterialAssetPair>,realityio::MaterialAssetPair*>(&v133, v60, v58, &v67[-2 * v66]);
                    v69 = v133;
                    v70 = *(&v134 + 1);
                    v133 = v68;
                    v123 = v145;
                    v134 = v145;
                    *&v145 = v69;
                    *(&v145 + 1) = v70;
                    __p = v69;
                    v144 = v69;
                    std::__split_buffer<realityio::MaterialAssetPair>::~__split_buffer(&__p);
                    v59 = v123;
                  }

                  else
                  {
                    *v134 = v159;
                    v58[1] = v160;
                    v159 = 0;
                    v160 = 0;
                    v59 = v58 + 2;
                  }

                  *&v134 = v59;
                  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v160);
                  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v159);
                  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v125);
                  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v126);
                  goto LABEL_100;
                }

                v51 = *(&v141[0] + 1);
                if (v53)
                {
LABEL_73:
                  if ((v51 & 4) != 0)
                  {
                    v54 = (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(v141);
                  }

                  else
                  {
                    v54 = *&v141[0];
                  }

                  v55 = v134;
                  if (v134 >= *(&v134 + 1))
                  {
                    v56 = std::vector<realityio::MaterialAssetPair>::__emplace_back_slow_path<realityio::MaterialAssetPair const&>(&v133, v54);
                  }

                  else
                  {
                    std::allocator_traits<std::allocator<realityio::MaterialAssetPair>>::construct[abi:ne200100]<realityio::MaterialAssetPair,realityio::MaterialAssetPair const&,0>(&v133, v134, v54);
                    v56 = v55 + 16;
                  }

                  *&v134 = v56;
                  goto LABEL_100;
                }

                if (*(&v141[0] + 1))
                {
                  v52 = *(&v141[0] + 1) & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_81;
                }
              }

LABEL_100:
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v141);
              v49 = (v49 + 16);
              continue;
            }
          }
        }

        v71 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v12);
        MEMORY[0x24C1A5DE0](&__p, "__materialAssetPaths");
        if ((__p ^ *v71) > 7)
        {
          if ((__p & 7) != 0)
          {
            atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v72 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(&v163);
          if ((__p & 7) != 0)
          {
            atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v72)
          {
            v73 = ((v164 & 4) != 0 ? (*((v164 & 0xFFFFFFFFFFFFFFF8) + 168))(&v163) : v163);
            if (v132 != v73)
            {
              std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__assign_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(v132, *v73, v73[1], (v73[1] - *v73) >> 3);
            }
          }
        }

        goto LABEL_176;
      }

      if (strcmp((*(*(v164 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__13mapIN32pxrInternal__aapl__pxrReserved__7TfTokenENS1_7VtValueENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        {
          goto LABEL_25;
        }

        v20 = v164;
      }

      if ((v20 & 4) != 0)
      {
        v21 = (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(&v163);
      }

      else
      {
        v21 = v163;
      }

      MEMORY[0x24C1A5DE0](&__p, "descriptor");
      v22 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v21, &__p);
      v23 = (v21 + 8);
      if ((v21 + 8) == v22)
      {
        *(&v141[0] + 1) = 0;
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v141, (v22 + 5));
      }

      if ((__p & 7) != 0)
      {
        atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5DE0](&__p, "xform");
      v74 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v21, &__p);
      if (v23 == v74)
      {
        v160 = 0;
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v159, (v74 + 5));
      }

      if ((__p & 7) != 0)
      {
        atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5DE0](&__p, "providingPrim");
      v75 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v21, &__p);
      if (v23 == v75)
      {
        v158 = 0;
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v157, (v75 + 5));
      }

      if ((__p & 7) != 0)
      {
        atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5DE0](&__p, "blendShapeInfo");
      v76 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v21, &__p);
      if (v23 == v76)
      {
        v156 = 0;
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v155, (v76 + 5));
      }

      if ((__p & 7) != 0)
      {
        atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v77 = BYTE8(v141[0]);
      if (*(&v141[0] + 1))
      {
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
          v78 = v158;
          if (v158)
          {
            if (!strcmp((*(*(v158 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7SdfPathE" & 0x7FFFFFFFFFFFFFFFLL)))
            {
              goto LABEL_143;
            }

            {
              v78 = v158;
LABEL_143:
              if ((v78 & 4) != 0)
              {
                v79 = (*((v78 & 0xFFFFFFFFFFFFFFF8) + 168))(&v157);
              }

              else
              {
                v79 = &v157;
              }

              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v127, v79);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v128, v79 + 1);
            }
          }

          if ((v160 & 4) != 0)
          {
            v80 = (*((v160 & 0xFFFFFFFFFFFFFFF8) + 168))(&v159);
          }

          else
          {
            v80 = v159;
          }

          v151 = *v80;
          v152 = v80[1];
          v153 = v80[2];
          v154 = v80[3];
          v81 = v156;
          {
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&__p, &v127);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&__p + 1, &v128);
            if ((BYTE8(v141[0]) & 4) != 0)
            {
              v82 = (*((*(&v141[0] + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(v141);
            }

            else
            {
              v82 = *&v141[0];
            }

            v144 = *v82;
            if (v144)
            {
              RERetain();
            }

            v145 = v151;
            v146 = v152;
            v147 = v153;
            v148 = v154;
            if ((v156 & 4) != 0)
            {
              v83 = (*((v156 & 0xFFFFFFFFFFFFFFF8) + 168))(&v155);
            }

            else
            {
              v83 = v155;
            }

            std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::map[abi:ne200100](&v149, v83);
            std::vector<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo>>::push_back[abi:ne200100](&v129, &__p);
            std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(&v149, v150[0]);
            realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&v144);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&__p, &v127);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&__p + 1, &v128);
            if ((BYTE8(v141[0]) & 4) != 0)
            {
              v86 = (*((*(&v141[0] + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(v141);
            }

            else
            {
              v86 = *&v141[0];
            }

            v144 = *v86;
            if (v144)
            {
              RERetain();
            }

            v145 = v151;
            v146 = v152;
            v147 = v153;
            v148 = v154;
            v150[0] = 0;
            v150[1] = 0;
            v149 = v150;
            std::vector<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo>>::push_back[abi:ne200100](&v129, &__p);
            std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(&v149, v150[0]);
            realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&v144);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          }

          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v127);
          goto LABEL_175;
        }

        v84 = *(&v141[0] + 1);
        if (*(&v141[0] + 1))
        {
          if (!strcmp((*(*(*(&v141[0] + 1) & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio12WrappedRERefIP17REAssetDescriptorEE" & 0x7FFFFFFFFFFFFFFFLL)))
          {
            goto LABEL_166;
          }

          {
            break;
          }
        }
      }

LABEL_175:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v155);
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v157);
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v159);
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v141);
LABEL_176:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v163);
      ++v11;
      v10 = *a4;
      if (v11 >= (a4[1] - *a4) >> 3)
      {
        goto LABEL_190;
      }
    }

    v84 = *(&v141[0] + 1);
LABEL_166:
    if ((v84 & 4) != 0)
    {
      v85 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(v141);
    }

    else
    {
      v85 = *&v141[0];
    }

    v118 = *v85;
    goto LABEL_175;
  }

  v118 = 0;
LABEL_190:
  v87 = *(a1 + 8);
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  v89 = v124;
  v90 = *(a1 + 16);
  if (v90 && *(v90 + 200))
  {
    v121 = *(v90 + 192);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v151, a2);
    std::string::basic_string[abi:ne200100]<0>(&__p, "/__root");
    v91 = MEMORY[0x24C1A5D70](&v163, &__p);
    if (v151 == v163)
    {
      v92 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v91);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v155, v92);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v155 + 1, v92 + 1);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v155, a2);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v163);
    if (SBYTE7(v145) < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v151);
    memset(v141, 0, sizeof(v141));
    v142 = 1065353216;
    operator new();
  }

  if (v118)
  {
    REAssetRegistrationOptionsCreate();
    v159 = REAssetHandleCreateFromAssetRegistrationOptions();
    RERelease();
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&__p, a2);
    v93 = *(a1 + 16);
    if (v93)
    {
      v93 = *(v93 + 192);
    }

    *&v151 = v93;
  }

  REMeshAssetDescriptorCreate();
  *&v152 = 0;
  *(&v151 + 1) = 0;
  *&v151 = &v151 + 8;
  v94 = v129;
  for (i = v130; v94 != i; v94 += 13)
  {
    v96 = v94[1];
    v97 = *(&v151 + 1);
    if (*(&v151 + 1))
    {
      v98 = *(&v151 + 1);
      do
      {
        v99 = v98[4];
        if (v96 >= v99)
        {
          if (v99 >= v96)
          {
            v104 = &v151 + 8;
            do
            {
              v105 = *(v97 + 4);
              v64 = v105 >= v96;
              v106 = v105 < v96;
              if (v64)
              {
                v104 = v97;
              }

              v97 = *&v97[8 * v106];
            }

            while (v97);
            if (v104 == &v151 + 8 || v96 < *(v104 + 4))
            {
              v104 = &v151 + 8;
            }

            v107 = *(v104 + 10);
            goto LABEL_228;
          }

          ++v98;
        }

        v98 = *v98;
      }

      while (v98);
    }

    if (v96)
    {
      REMeshAssetDescriptorAddModel();
      v100 = v94[1];
      v101 = *(&v151 + 1);
      if (!*(&v151 + 1))
      {
LABEL_216:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v102 = v101;
          v103 = v101[4];
          if (v103 <= v100)
          {
            break;
          }

          v101 = *v102;
          if (!*v102)
          {
            goto LABEL_216;
          }
        }

        if (v103 >= v100)
        {
          break;
        }

        v101 = v102[1];
        if (!v101)
        {
          goto LABEL_216;
        }
      }

      v89 = v124;
    }

LABEL_228:
    v108 = *(v94 + 1);
    v109 = *(v94 + 2);
    v110 = *(v94 + 3);
    v111 = *(v94 + 4);
    REGeomInstanceCreate();
    REMeshAssetDescriptorAddInstance();
    RERelease();
  }

  v112 = v138;
  v113 = v139;
  while (v112 != v113)
  {
    __p = *v112;
    if (__p)
    {
      RERetain();
      if (__p)
      {
        REMeshAssetDescriptorAddSkeleton();
      }
    }

    realityio::WrappedRERef<REGeomSkeleton *>::~WrappedRERef(&__p);
    ++v112;
  }

  v157 = REAssetManagerMeshAssetCreateFromMeshAssetDescriptorAndOptionsAsyncRegistration();
  if (v157)
  {
    RERelease();
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&__p, a2);
    v114 = *(a1 + 16);
    if (v114)
    {
      v114 = *(v114 + 192);
    }

    v163 = v114;
  }

  v89[1] = 0;
  if (v162)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&__p, v89);
    v115 = v162;
    v116 = ~v162;
    v89[1] = v162;
    if ((v116 & 3) != 0)
    {
      (*((v115 & 0xFFFFFFFFFFFFFFF8) + 40))(&v161, v89);
    }

    else
    {
      *v89 = v161;
    }

    v162 = 0;
    if (v144)
    {
      (*(v144 + 4))(&__p);
    }
  }

  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v151 + 1));
  std::vector<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo>>::~vector[abi:ne200100](&v129);
  __p = v132;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &v133;
  std::vector<realityio::MaterialAssetPair>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &v135;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &v138;
  std::vector<realityio::WrappedRERef<REGeomSkeleton *>>::__destroy_vector::operator()[abi:ne200100](&__p);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v161);
  v117 = *MEMORY[0x277D85DE8];
}

void sub_2475BC798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, char a55)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v55 - 144));
  std::vector<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo>>::~vector[abi:ne200100](&a43);
  STACK[0x220] = &a46;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  STACK[0x220] = &a49;
  std::vector<realityio::MaterialAssetPair>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  STACK[0x220] = &a52;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  STACK[0x220] = &a55;
  std::vector<realityio::WrappedRERef<REGeomSkeleton *>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v55 - 160));
  _Unwind_Resume(a1);
}

uint64_t std::vector<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
    if ((v7 + 1) > 0x276276276276276)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x4EC4EC4EC4EC4EC5 * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x13B13B13B13B13BLL)
    {
      v10 = 0x276276276276276;
    }

    else
    {
      v10 = v9;
    }

    v29 = a1;
    if (v10)
    {
      if (v10 <= 0x276276276276276)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 104 * v7;
    v25 = 0;
    v26 = 104 * v7;
    v12 = 0;
    v28 = 0;
    std::allocator_traits<std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo>>::construct[abi:ne200100]<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,0>(104 * v7, a2);
    v13 = *a1;
    v14 = a1[1];
    v15 = v14 - *a1;
    v6 = 104 * v7 + 104;
    v27 = v6;
    if (v14 != v13)
    {
      v16 = 0;
      v17 = 104 * v7 - 8 * ((v14 - v13) >> 3);
      do
      {
        v18 = (v13 + v16);
        v19 = v17 + v16;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v17 + v16), (v13 + v16));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v17 + v16 + 4), (v13 + v16 + 4));
        v20 = *(v13 + v16 + 8);
        *(v17 + v16 + 8) = v20;
        if (v20)
        {
          RERetain();
        }

        v21 = v18[1];
        v22 = v18[2];
        v23 = v18[4];
        *(v19 + 48) = v18[3];
        *(v19 + 64) = v23;
        *(v19 + 16) = v21;
        *(v19 + 32) = v22;
        std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::map[abi:ne200100]((v19 + 80), (v18 + 5));
        v16 += 104;
      }

      while (v13 + v16 != v14);
      do
      {
        std::allocator_traits<std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo>>::destroy[abi:ne200100]<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,0>(v13);
        v13 += 104;
      }

      while (v13 != v14);
      v13 = *a1;
      v6 = v27;
      v12 = v28;
    }

    *a1 = v11 - v15;
    a1[1] = v6;
    v24 = a1[2];
    a1[2] = v12;
    v27 = v13;
    v28 = v24;
    v25 = v13;
    v26 = v13;
    result = std::__split_buffer<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo> &>::~__split_buffer(&v25);
  }

  else
  {
    result = std::allocator_traits<std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo>>::construct[abi:ne200100]<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,0>(a1[1], a2);
    v6 = v4 + 104;
    a1[1] = v4 + 104;
  }

  a1[1] = v6;
  return result;
}

uint64_t realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::DescriptorInfo::~DescriptorInfo(uint64_t a1)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(a1 + 80, *(a1 + 88));
  realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__16vectorIN32pxrInternal__aapl__pxrReserved__7SdfPathENS_9allocatorIS2_EEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

void *std::pair<realityio::BuilderAndIOName,realityio::BuilderAndIOName>::pair[abi:ne200100]<realityio::BuilderAndIOName&,realityio::BuilderAndIOName&,0>(void *result, void *a2, void *a3)
{
  v3 = a2[1];
  *result = *a2;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[2];
  result[2] = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = a3[1];
  result[3] = *a3;
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a3[2];
  result[5] = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[5] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void *std::pair<realityio::BuilderAndIOName,realityio::BuilderAndIOName>::~pair(void *a1)
{
  v2 = a1[5];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t realityio::ECSAction::performBlockPostAssetLoadOnEngineQueue(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v9, a2);
    v3 = *(v2 + 88);
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v3 + 48))(v3, v9);
    result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v9);
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *(a2 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v7 = *(*v6 + 48);
    v8 = *MEMORY[0x277D85DE8];

    return v7();
  }

  return result;
}

uint64_t realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::$_0::~$_0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 32);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void realityio::MeshAssetWithMaterialArray::~MeshAssetWithMaterialArray(realityio::MeshAssetWithMaterialArray *this)
{
  v3 = (this + 16);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t realityio::ECSAction::queueDedupingAssetForDeferredLoad(uint64_t result)
{
  if (result)
  {
    v2 = *(result + 184);
    if (!v2)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v3 = *(*v2 + 48);

    return v3();
  }

  return result;
}

uint64_t realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::$_1::~$_1(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 32);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::$_2::~$_2(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 32);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void **std::vector<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 104;
        std::allocator_traits<std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo>>::destroy[abi:ne200100]<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,0>(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void realityio::BlendShapeWeightsDefinitionAssetAction::operator()(uint64_t a1, int a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, uint64_t *a4, uint64_t *a5)
{
  v53 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v52, a3);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  memset(v43, 0, sizeof(v43));
  v7 = *a4;
  if (a4[1] == *a4)
  {
LABEL_59:
    v35 = *(a1 + 8);
    ServiceLocator = REEngineGetServiceLocator();
    MEMORY[0x24C1A4230](ServiceLocator);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    std::vector<char const*>::resize(&v47, v44);
    v38 = v47;
    if (v44)
    {
      v39 = v46;
      v40 = 8 * v44;
      do
      {
        if ((*v39 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*v39 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        }

        if (EmptyString[23] < 0)
        {
          EmptyString = *EmptyString;
        }

        *v38++ = EmptyString;
        ++v39;
        v40 -= 8;
      }

      while (v40);
    }

    operator new();
  }

  v8 = 0;
  while (1)
  {
    v9 = (v7 + 8 * v8);
    v10 = *a5;
    NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v9);
    MEMORY[0x24C1A5DE0](&v47, "skel:blendShapes");
    v12 = (v10 + 16 * v8);
    v13 = v47;
    if ((v47 ^ *NameToken) > 7)
    {
      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

LABEL_45:
      v31 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v9);
      MEMORY[0x24C1A5DE0](&v47, "skel:blendShapeTargets");
      if ((v47 ^ *v31) > 7)
      {
        if ((v47 & 7) != 0)
        {
          atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v32 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>((v10 + 16 * v8));
        if ((v47 & 7) != 0)
        {
          atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v32)
        {
          v33 = v12[1];
          v34 = ((v33 & 4) != 0 ? (*((v33 & 0xFFFFFFFFFFFFFFF8) + 168))(v10 + 16 * v8) : *v12);
          if (v43 != v34)
          {
            std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__assign_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(v43, *v34, v34[1], (v34[1] - *v34) >> 3);
          }
        }
      }

      goto LABEL_55;
    }

    v14 = v12[1];
    if (!v14)
    {
      goto LABEL_10;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16) == 60)
    {
      IsImpl = 1;
      goto LABEL_12;
    }

    if ((v14 & 4) != 0)
    {
      v13 = v47;
    }

    else
    {
LABEL_10:
      IsImpl = 0;
    }

LABEL_12:
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (!IsImpl)
    {
      goto LABEL_45;
    }

    v16 = v12[1];
    if ((v16 & 4) != 0)
    {
      v17 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(v10 + 16 * v8);
    }

    else
    {
      v17 = *v12;
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::reserve(&v44, *v17 + v44);
    if (*v17)
    {
      v18 = v17[4];
      v19 = &v18[*v17];
      while (1)
      {
        if (DWORD2(v44))
        {
          v47 = "vt/array.h";
          v48 = "emplace_back";
          v49 = 416;
          v50 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::TfToken, Args = <const pxrInternal__aapl__pxrReserved__::TfToken &>]";
          v51 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
          goto LABEL_30;
        }

        v20 = v44;
        v21 = v46;
        if (*(&v45 + 1))
        {
          break;
        }

        if (v46)
        {
          v22 = atomic_load(v46 - 2);
          v21 = v46;
          if (v22 != 1)
          {
            break;
          }

          v23 = *(v46 - 1);
        }

        else
        {
          v23 = 0;
        }

        if (v44 == v23)
        {
          break;
        }

        v24 = *v18;
        v21[v44] = *v18;
        if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v21[v20] &= 0xFFFFFFFFFFFFFFF8;
        }

LABEL_29:
        *&v44 = v44 + 1;
LABEL_30:
        if (++v18 == v19)
        {
          goto LABEL_55;
        }
      }

      v25 = 1;
      do
      {
        v26 = v25;
        v25 *= 2;
      }

      while (v26 < v44 + 1);
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateNew(&v44, v26);
      if (v20)
      {
        v27 = 8 * v20;
        v28 = New;
        do
        {
          v29 = *v21;
          *v28 = *v21;
          if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v28 &= 0xFFFFFFFFFFFFFFF8;
          }

          ++v21;
          ++v28;
          v27 -= 8;
        }

        while (v27);
      }

      v30 = *v18;
      New[v20] = *v18;
      if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        New[v20] &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v44);
      v46 = New;
      goto LABEL_29;
    }

LABEL_55:
    ++v8;
    v7 = *a4;
    if (v8 >= (a4[1] - *a4) >> 3)
    {
      goto LABEL_59;
    }
  }
}

void sub_2475BDE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  __p = &a18;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&__p);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&a21);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v27 - 112));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::reserve(unint64_t *a1, unint64_t a2)
{
  v3 = a1[4];
  if (!v3)
  {
    if (!a2)
    {
      return;
    }

    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateNew(a1, a2);
    goto LABEL_15;
  }

  if (a1[3])
  {
    v4 = a1;
  }

  else
  {
    v4 = (v3 - 8);
  }

  if (*v4 < a2)
  {
    v5 = *a1;
    v6 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateNew(a1, a2);
    New = v6;
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v9 = *(v3 + i * 8);
        v6[i] = v9;
        if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v6[i] &= 0xFFFFFFFFFFFFFFF8;
        }
      }
    }

LABEL_15:
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(a1);
    a1[4] = New;
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *realityio::MaterialAssetPair::MaterialAssetPair(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    RERetain();
  }

  v6 = *a3;
  a1[1] = *a3;
  if (v6)
  {
    RERetain();
  }

  return a1;
}

void *realityio::MeshAssetWithMaterialArray::MeshAssetWithMaterialArray(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  std::vector<realityio::WrappedRERef<REAsset *>>::__init_with_size[abi:ne200100]<realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*>((a1 + 2), *a4, a4[1], (a4[1] - *a4) >> 3);
  return a1;
}

void sub_2475BE138(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *realityio::WrappedRERef<REMeshCompileOptions *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

void std::vector<realityio::WrappedRERef<REGeomSkeleton *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = realityio::WrappedRERef<REGeomSkeleton *>::~WrappedRERef(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<realityio::MaterialAssetPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<realityio::MaterialAssetPair>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<realityio::MaterialAssetPair>::__base_destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 2;
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(v4 - 1);
      result = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v5);
      v4 = v5;
    }

    while (v5 != a2);
  }

  v3[1] = a2;
  return result;
}

uint64_t std::allocator_traits<std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo>>::destroy[abi:ne200100]<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,0>(uint64_t a1)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(a1 + 80, *(a1 + 88));
  realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::__split_buffer<realityio::WrappedRERef<REGeomSkeleton *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    realityio::WrappedRERef<REGeomSkeleton *>::~WrappedRERef((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *std::allocator_traits<std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo>>::construct[abi:ne200100]<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,0>(uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v8;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 80) = *(a2 + 80);
  v9 = (a2 + 88);
  v10 = *(a2 + 88);
  *(a1 + 88) = v10;
  v11 = a1 + 88;
  v12 = *(a2 + 96);
  *(a1 + 96) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    *(a2 + 80) = v9;
    *v9 = 0;
    *(a2 + 96) = 0;
  }

  else
  {
    *(a1 + 80) = v11;
  }

  return result;
}

uint64_t std::__split_buffer<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    std::allocator_traits<std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo>>::destroy[abi:ne200100]<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::DescriptorInfo,0>(i - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::TfToken> const&>(v5, v5 + 1, v4 + 4);
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

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::TfToken> const&>(void *a1, void *a2, void *a3)
{
  v3 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::TfToken>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_DetachIfNotUnique() [ELEM = pxrInternal__aapl__pxrReserved__::VtValue]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 0;
        v9 = -16 * v5;
        do
        {
          v10 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(New, v4);
          v4 = (v4 + 16);
          New = (v10 + 16);
          v8 -= 16;
        }

        while (v9 != v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

void sub_2475BE6C8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v1);
      v1 = (v1 + 16);
      v3 -= 16;
    }

    while (v3);
  }

  __cxa_rethrow();
}

uint64_t std::vector<realityio::MaterialAssetPair>::__emplace_back_slow_path<realityio::MaterialAssetPair const&>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
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

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  std::allocator_traits<std::allocator<realityio::MaterialAssetPair>>::construct[abi:ne200100]<realityio::MaterialAssetPair,realityio::MaterialAssetPair const&,0>(a1, (16 * v2), a2);
  v16 = (16 * v2 + 16);
  v8 = *(a1 + 8);
  v9 = (16 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::MaterialAssetPair>,realityio::MaterialAssetPair*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<realityio::MaterialAssetPair>::~__split_buffer(&v14);
  return v13;
}

void sub_2475BE804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<realityio::MaterialAssetPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::allocator_traits<std::allocator<realityio::MaterialAssetPair>>::construct[abi:ne200100]<realityio::MaterialAssetPair,realityio::MaterialAssetPair const&,0>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  *a2 = *a3;
  if (v5)
  {
    RERetain();
  }

  result = a3[1];
  a2[1] = result;
  if (result)
  {
    return RERetain();
  }

  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::MaterialAssetPair>,realityio::MaterialAssetPair*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<realityio::MaterialAssetPair>>::construct[abi:ne200100]<realityio::MaterialAssetPair,realityio::MaterialAssetPair const&,0>(a1, a4, v7);
      v7 += 2;
      a4 = v12 + 2;
      v12 += 2;
    }

    while (v7 != a3);
    v10 = 1;
    do
    {
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(v5 + 1);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(v5);
      v5 += 2;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::MaterialAssetPair>,realityio::MaterialAssetPair*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::MaterialAssetPair>,realityio::MaterialAssetPair*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<realityio::MaterialAssetPair>,realityio::MaterialAssetPair*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::_AllocatorDestroyRangeReverse<std::allocator<realityio::MaterialAssetPair>,realityio::MaterialAssetPair*>::operator()[abi:ne200100](void *result)
{
  v1 = *result[2];
  v2 = *result[1];
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 2;
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(v1 - 1);
      result = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v3);
      v1 = v3;
    }

    while (v3 != v2);
  }

  return result;
}

void **std::__split_buffer<realityio::MaterialAssetPair>::~__split_buffer(void **a1)
{
  std::__split_buffer<realityio::MaterialAssetPair>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<realityio::MaterialAssetPair>::__destruct_at_end[abi:ne200100](void *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = (v2 - 16);
      v4[2] = v2 - 16;
      realityio::WrappedRERef<REAsset *>::~WrappedRERef((v2 - 8));
      result = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v5);
      v2 = v4[2];
    }

    while (v2 != a2);
  }

  return result;
}

void std::__shared_ptr_emplace<anonymous namespace::TinyMeshModelDescriptorBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859516E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void anonymous namespace::TinyMeshModelDescriptorBuilder::~TinyMeshModelDescriptorBuilder(_anonymous_namespace_::TinyMeshModelDescriptorBuilder *this)
{
  *this = &unk_285951738;
  v2 = *(this + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_285951738;
  v2 = *(this + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::__emplace_back_slow_path<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v8, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v8 + 4), (a2 + 4));
  v9 = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 8) = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v18 = v8 + 32;
  v10 = a1[1];
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::~__split_buffer(&v16);
  return v15;
}

void sub_2475BED1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4, v8);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v4 + 4), (v8 + 4));
      v9 = *(v8 + 8);
      *(v4 + 24) = *(v8 + 24);
      *(v4 + 8) = v9;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      v8 += 32;
      v4 = v14 + 32;
      v14 += 32;
    }

    while (v8 != a3);
    v12 = 1;
    do
    {
      std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,0>(a1, v6);
      v6 += 32;
    }

    while (v6 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 32;
      result = std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__split_buffer<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 32;
    result = std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,0>(v5, v4 - 32);
  }

  return result;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::__shared_ptr_emplace<realityio::MeshModelDescriptorBuilder::MeshModelDataT>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285951C48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::MeshModelDescriptorBuilder::MeshModelDataT::MeshModelDataT(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, uint64_t *a6, uint64_t *a7)
{
  v13 = *a2;
  *a1 = *a2;
  if (v13)
  {
    RERetain();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 8), a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 12), a3 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 16), a4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 20), a4 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 24), a5);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 28), a5 + 1);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1 + 32, *a6, a6[1], (a6[1] - *a6) >> 3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>*>(a1 + 56, *a7, a7[1], (a7[1] - *a7) >> 5);
  return a1;
}

void sub_2475BF180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](va);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v2 + 3));
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v2 + 2));
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v2 + 1));
  realityio::WrappedRERef<REMeshCompileOptions *>::~WrappedRERef(v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::__init_with_size[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2475BF228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>(a1, a2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>*,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>::pair[abi:ne200100](v4, v6);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v5;
  }

  return a1;
}

void std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>,0>(v3, i))
  {
    i -= 32;
  }

  *(v3 + 8) = a2;
  return result;
}

void realityio::MeshModelDescriptorBuilder::MeshModelDataT::~MeshModelDataT(realityio::MeshModelDescriptorBuilder::MeshModelDataT *this)
{
  v2 = (this + 56);
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 32);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 8);
  realityio::WrappedRERef<REMeshCompileOptions *>::~WrappedRERef(this);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285951C98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_285951CE8;
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t realityio::InputOutputWrapperObject<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::getRawValue(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return v2;
}

void sub_2475BF5EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2475BF6B8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = realityio::BuilderAndIOName::Hash::operator()(a1, a2 + 2);
  a2[1] = v4;
  inserted = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__node_insert_multi_prepare(a1, v4, a2 + 2);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
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
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
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

    if (v19 == a2)
    {
      v21 = v16[2] != *a3 || (v16[4] ^ a3[2]) >= 8uLL;
      v22 = !v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 != (v17 & 1);
    v24 = v17 & v23;
    v17 |= v23;
  }

  while (v24 != 1);
  return result;
}

void std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[7];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 = __p[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = __p[4];
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v6 = __p[3];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__shared_ptr_emplace<anonymous namespace::TinySkeletonPoseDefinitionBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859517C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void **std::unique_ptr<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDataT>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((v2 + 2));
    v3 = realityio::WrappedRERef<REGeomSkeleton *>::~WrappedRERef(v2);
    MEMORY[0x24C1A91B0](v3, 0x1060C40E60A0C5ALL);
  }

  return a1;
}

void anonymous namespace::TinySkeletonPoseDefinitionBuilder::~TinySkeletonPoseDefinitionBuilder(_anonymous_namespace_::TinySkeletonPoseDefinitionBuilder *this)
{
  *this = &unk_285951818;
  std::unique_ptr<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDataT>::~unique_ptr[abi:ne200100](this + 23);

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_285951818;
  std::unique_ptr<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDataT>::~unique_ptr[abi:ne200100](this + 23);
  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<anonymous namespace::TinyMaterialAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285951890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void anonymous namespace::TinyMaterialAssetBuilder::~TinyMaterialAssetBuilder(_anonymous_namespace_::TinyMaterialAssetBuilder *this)
{
  *this = &unk_2859518E0;
  realityio::MaterialAssetDataT::~MaterialAssetDataT((this + 184));

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_2859518E0;
  realityio::MaterialAssetDataT::~MaterialAssetDataT((this + 184));
  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

void *std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_285951958;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_285951958;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x24C1A91B0);
}

_DWORD *std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285951958;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 40), (a1 + 40));

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 44), (a1 + 44));
}

void std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 40);
  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(a1);
}

void std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v4, (a1 + 5));
  realityio::ECSAction::addAsset(v2, (v3 + 8), __p, &v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2475C0218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::MeshAssetWithMaterialArray,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MeshAssetWithMaterialArray>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MeshAssetWithMaterialArray>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::MeshAssetWithMaterialArray,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MeshAssetWithMaterialArray>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MeshAssetWithMaterialArray>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MeshAssetWithMaterialArray>>::_DecrementIfValid(0);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::MeshAssetWithMaterialArray,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MeshAssetWithMaterialArray>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MeshAssetWithMaterialArray>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 40));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::MeshAssetWithMaterialArray,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MeshAssetWithMaterialArray>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MeshAssetWithMaterialArray>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::MeshAssetWithMaterialArray>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MeshAssetWithMaterialArray>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MeshAssetWithMaterialArray>>::_DecrementIfValid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (atomic_fetch_add_explicit((result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v3 = (result + 16);
      std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v3);
      v2 = *(v1 + 8);
      if (v2)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      }

      return MEMORY[0x24C1A91B0](v1, 0x1020C40ABECFA7DLL);
    }
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_ProxyHelper<realityio::MeshAssetWithMaterialArray,void>::Equal(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v4 = a2[2];
  if (v2 - v3 != a2[3] - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    result = *(v5 - 8) == v6;
    v8 = *(v5 - 8) != v6 || v5 == v2;
    v5 += 8;
  }

  while (!v8);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MeshAssetWithMaterialArray>::_Counted(uint64_t a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::vector<realityio::WrappedRERef<REAsset *>>::__init_with_size[abi:ne200100]<realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*>(a1 + 16, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  atomic_store(0, (a1 + 40));
  return a1;
}

void sub_2475C05B8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<anonymous namespace::DeduplicatingMeshActionAsset>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285951AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *std::__shared_ptr_emplace<anonymous namespace::DeduplicatingMeshActionAsset>::__on_zero_shared(void *a1)
{
  a1[3] = &unk_285951AF0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 8));
  a1[3] = &unk_285951C30;
  realityio::WrappedRERef<REAssetLoadRequest *>::~WrappedRERef(a1 + 7);

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1 + 4);
}

uint64_t *anonymous namespace::DeduplicatingMeshActionAsset::onComplete(_anonymous_namespace_::DeduplicatingMeshActionAsset *this)
{
  v1 = (this + 8);
  v3 = realityio::ImportSession::deduplicateMeshAsset(*(this + 6), this + 5, *(this + 1), 0);
  return realityio::WrappedRERef<REAsset *>::operator=(v1, &v3);
}

void *realityio::WrappedRERef<REAssetLoadRequest *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

void *std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_1,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_285951B20;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_1,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_285951B20;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x24C1A91B0);
}

_DWORD *std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_1,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285951B20;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 40), (a1 + 40));

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 44), (a1 + 44));
}

void std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_1,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_1>,void ()(void)>::destroy(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 40);
  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_1,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_1>,void ()(void)>::destroy_deallocate(void *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(a1);
}

void std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_1,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_1>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v4, (a1 + 5));
  realityio::ECSAction::addAsset(v2, (v3 + 8), __p, &v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2475C0B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_1,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_2,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_2>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_285951BA0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_2,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_2>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_285951BA0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x24C1A91B0);
}

_DWORD *std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_2,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_2>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285951BA0;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 40), (a1 + 40));

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 44), (a1 + 44));
}

void std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_2,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_2>,void ()(void)>::destroy(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 40);
  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_2,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_2>,void ()(void)>::destroy_deallocate(void *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_2,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_2>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v13, (a1 + 5));
  realityio::ECSAction::addAsset(v2, (v3 + 8), __p, &v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(a1[2] + 8);
  v5 = a1[4];
  REAssetCopyDependencyArray();
  Size = REAssetDynamicArrayGetSize();
  if (Size)
  {
    v7 = Size;
    for (i = 0; i != v7; ++i)
    {
      Asset = REAssetDynamicArrayGetAsset();
      Type = REAssetGetType();
      if (CFStringCompare(Type, @"Skeleton", 0) == kCFCompareEqualTo)
      {
        v13 = Asset;
        if (Asset)
        {
          RERetain();
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "");
        pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v12, (a1 + 5));
        realityio::ECSAction::addAsset(v2, &v13, __p, &v12);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v13);
      }
    }
  }

  return RERelease();
}

void sub_2475C0FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a12);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_2,std::allocator<realityio::MeshAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_2>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<REBlendWeightsDefinition>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<REBlendWeightsMeshMap>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void Exec::setPropertiesDirty(std::mutex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  std::mutex::lock(this);
  v18[1] = 0;
  v18[0] = pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::find(this[3].__m_.__opaque, a2);
  NextSubtree = pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::Iterator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_Entry *>::GetNextSubtree(v18);
  v17 = v18[0];
  if (NextSubtree != v18[0])
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v18, a2);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v16, v17);
      v7 = v18[0];
      v8 = v16;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v18);
      if (v7 != v8)
      {
        break;
      }

      v9 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(&this[1], v17);
      v10 = (v9 + 96);
      if (this[1].__m_.__opaque == v9)
      {
        v10 = &realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::nullID(void)::nullID;
      }

      if (*v10 != realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::nullID(void)::nullID)
      {
        v11 = v17;
        if (a3)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, v17);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15 + 1, v11 + 1);
          realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::_setAllDirty(&this[1], &v15, 1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          v12 = &v15;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, v17);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14 + 1, v11 + 1);
          realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::_setAllDirty(&this[1], &v14, 0);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          v12 = &v14;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v12);
      }

      v13 = *(v17 + 4);
      if (!v13)
      {
        v13 = pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::Iterator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_Entry *>::GetNextSubtree(&v17);
      }

      v17 = v13;
    }

    while (v13 != NextSubtree);
  }

  std::mutex::unlock(this);
}

void sub_2475C12A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  std::mutex::unlock(v2);
  _Unwind_Resume(a1);
}

void Exec::setHierarchyDirty(std::mutex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  std::mutex::lock(this);
  v15[1] = 0;
  v15[0] = pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::find(this[3].__m_.__opaque, a2);
  NextSubtree = pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::Iterator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_Entry *>::GetNextSubtree(v15);
  v7 = v15[0];
  v14 = v15[0];
  if (NextSubtree != v15[0])
  {
    do
    {
      v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(&this[1], v7);
      v9 = (v8 + 96);
      if (this[1].__m_.__opaque == v8)
      {
        v9 = &realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::nullID(void)::nullID;
      }

      if (*v9 != realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::nullID(void)::nullID)
      {
        v10 = v14;
        if (a3)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, v14);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13 + 1, v10 + 1);
          realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::_setAllDirty(&this[1], &v13, 1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          v11 = &v13;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, v14);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12 + 1, v10 + 1);
          realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::_setAllDirty(&this[1], &v12, 0);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          v11 = &v12;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v11);
      }

      v7 = *(v14 + 4);
      if (!v7)
      {
        v7 = pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::Iterator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_Entry *>::GetNextSubtree(&v14);
      }

      v14 = v7;
    }

    while (v7 != NextSubtree);
  }

  std::mutex::unlock(this);
}

void *Exec::setValue(Exec *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::find(this + 25, a2))
  {
    v6 = pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::operator[](this + 25, a2);
    v7 = *MEMORY[0x277D85DE8];

    return pxrInternal__aapl__pxrReserved__::VtValue::operator=(v6, a3);
  }

  else
  {
    std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100]<true,0>(&v10, a2, a3);
    pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::insert(this + 25, &v10);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
    v9 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_2475C1584(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::operator[](void *a1, _DWORD *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v6[1] = 0;
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue,0>(&v7, a2, v6);
  v3 = pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::insert(a1, &v7);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v6);
  v4 = *MEMORY[0x277D85DE8];
  return v3 + 8;
}

void sub_2475C164C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::SdfPath *pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::insert(void *a1, unsigned int *a2)
{
  v7 = a2;
  result = pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_InsertInTableImpl<pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_InsertInTable(std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue> const&)::{lambda(pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_Entry *)#1}>(a1, a2);
  v5 = result;
  LOBYTE(v6) = v4;
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::_UpdateTreeForNewEntry(a1, &v5);
    return v5;
  }

  return result;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void Exec::setValueAndFault(int8x8_t *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<ExecFault>(a3))
  {
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<ExecFault>(a3))
    {
      v6 = *(a3 + 1);
      if ((v6 & 4) == 0)
      {
        v7 = *a3;
LABEL_5:
        Exec::setValue(this, a2, (v7 + 32));
        v8 = bswap64(0x9E3779B97F4A7C55 * (*(a2 + 1) + ((*(a2 + 1) + *a2 + (*(a2 + 1) + *a2) * (*(a2 + 1) + *a2)) >> 1)));
        v9 = this[31];
        if (!*&v9)
        {
          goto LABEL_25;
        }

        v10 = vcnt_s8(v9);
        v10.i16[0] = vaddlv_u8(v10);
        if (v10.u32[0] > 1uLL)
        {
          v11 = v8;
          if (v8 >= *&v9)
          {
            v11 = v8 % *&v9;
          }
        }

        else
        {
          v11 = v8 & (*&v9 - 1);
        }

        v16 = *(*&this[30] + 8 * v11);
        if (!v16 || (v17 = *v16) == 0)
        {
LABEL_25:
          operator new();
        }

        while (1)
        {
          v18 = v17[1];
          if (v18 == v8)
          {
            if (v17[2] == *a2)
            {
              *(v17 + 6) = *v7;
              std::string::operator=((v17 + 4), (v7 + 8));

              pxrInternal__aapl__pxrReserved__::VtValue::operator=(v17 + 7, (v7 + 32));
              return;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v18 >= *&v9)
              {
                v18 %= *&v9;
              }
            }

            else
            {
              v18 &= *&v9 - 1;
            }

            if (v18 != v11)
            {
              goto LABEL_25;
            }
          }

          v17 = *v17;
          if (!v17)
          {
            goto LABEL_25;
          }
        }
      }

      v30 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a3);
    }

    else
    {
      v30 = pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
    }

    v7 = v30;
    goto LABEL_5;
  }

  Exec::setValue(this, a2, a3);
  v12 = this[31];
  if (!*&v12)
  {
    return;
  }

  v13 = bswap64(0x9E3779B97F4A7C55 * (*(a2 + 1) + ((*(a2 + 1) + *a2 + (*(a2 + 1) + *a2) * (*(a2 + 1) + *a2)) >> 1)));
  v14 = vcnt_s8(v12);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = v13;
    if (v13 >= *&v12)
    {
      v15 = v13 % *&v12;
    }
  }

  else
  {
    v15 = v13 & (*&v12 - 1);
  }

  v19 = this[30];
  v20 = *(*&v19 + 8 * v15);
  if (!v20)
  {
    return;
  }

  v21 = *v20;
  if (!*v20)
  {
    return;
  }

  v22 = *&v12 - 1;
  while (1)
  {
    v23 = v21[1];
    if (v23 == v13)
    {
      break;
    }

    if (v14.u32[0] > 1uLL)
    {
      if (v23 >= *&v12)
      {
        v23 %= *&v12;
      }
    }

    else
    {
      v23 &= v22;
    }

    if (v23 != v15)
    {
      return;
    }

LABEL_39:
    v21 = *v21;
    if (!v21)
    {
      return;
    }
  }

  if (*&v21[2] != *a2)
  {
    goto LABEL_39;
  }

  v24 = *v21;
  if (v14.u32[0] > 1uLL)
  {
    if (v13 >= *&v12)
    {
      v13 %= *&v12;
    }
  }

  else
  {
    v13 &= v22;
  }

  v25 = *(*&v19 + 8 * v13);
  do
  {
    v26 = v25;
    v25 = *v25;
  }

  while (v25 != v21);
  if (v26 == &this[32])
  {
    goto LABEL_61;
  }

  v27 = v26[1];
  if (v14.u32[0] > 1uLL)
  {
    if (v27 >= *&v12)
    {
      v27 %= *&v12;
    }
  }

  else
  {
    v27 &= v22;
  }

  if (v27 == v13)
  {
LABEL_63:
    if (v24)
    {
      v28 = v24[1];
      goto LABEL_65;
    }
  }

  else
  {
LABEL_61:
    if (!v24)
    {
      goto LABEL_62;
    }

    v28 = v24[1];
    if (v14.u32[0] > 1uLL)
    {
      v29 = v24[1];
      if (v28 >= *&v12)
      {
        v29 = v28 % *&v12;
      }
    }

    else
    {
      v29 = v28 & v22;
    }

    if (v29 != v13)
    {
LABEL_62:
      *(*&v19 + 8 * v13) = 0;
      v24 = *v21;
      goto LABEL_63;
    }

LABEL_65:
    if (v14.u32[0] > 1uLL)
    {
      if (v28 >= *&v12)
      {
        v28 %= *&v12;
      }
    }

    else
    {
      v28 &= v22;
    }

    if (v28 != v13)
    {
      *(*&this[30] + 8 * v28) = v26;
      v24 = *v21;
    }
  }

  *v26 = v24;
  *v21 = 0;
  --*&this[33];

  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,void *>>>::operator()[abi:ne200100](1, v21);
}

void sub_2475C1E34(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v1 + 16));
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<ExecFault>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("9ExecFault" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

uint64_t Exec::gatherFaultRecords(uint64_t result, uint64_t a2)
{
  for (i = *(result + 256); i; i = *i)
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((i + 2));
    v5 = i + 4;
    if (*(i + 55) < 0)
    {
      v5 = *v5;
    }

    result = std::function<void ()(char const*,ExecFault::Type,char const*)>::operator()(a2, Text, *(i + 6), v5);
  }

  return result;
}

uint64_t std::function<void ()(char const*,ExecFault::Type,char const*)>::operator()(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

unint64_t Exec::_ensureTarget(Exec *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 64, a2);
  v5 = (this + 72);
  v6 = (v4 + 96);
  if ((this + 72) == v4)
  {
    v6 = &realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::nullID(void)::nullID;
  }

  v7 = *v6;
  if (*v6 == realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::nullID(void)::nullID)
  {
    v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 64, a2);
    v9 = v8;
    if (v5 == v8)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v21 = 0;
      v22 = 0uLL;
      v10 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 64, a2);
      if (v9 == v10)
      {
        v7 = *(this + 20);
        *(this + 20) = v7 + 1;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v33, a2);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, a2 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, &v19);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v36, &v20);
        v37 = v21;
        if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v37 &= 0xFFFFFFFFFFFFFFF8;
        }

        v38 = v22;
        if (*(&v22 + 1))
        {
          atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v39 = v23;
        LOBYTE(v40) = 0;
        *(&v40 + 1) = v7;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v24, a2);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v24 + 1, a2 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v25, &v33);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v26, &v34);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v27, &v35);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v28, &v36);
        v29 = v37;
        if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v29 &= 0xFFFFFFFFFFFFFFF8;
        }

        v30 = v38;
        if (*(&v38 + 1))
        {
          atomic_fetch_add_explicit((*(&v38 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v31 = v39;
        v32 = v40;
        v11 = *v5;
        if (!*v5)
        {
          goto LABEL_25;
        }

        while (1)
        {
          while (1)
          {
            v12 = v11;
            if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v24, v11 + 4))
            {
              break;
            }

            v11 = *v12;
            v5 = v12;
            if (!*v12)
            {
              goto LABEL_25;
            }
          }

          if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v12 + 4, &v24))
          {
            break;
          }

          v5 = v12 + 1;
          v11 = v12[1];
          if (!v11)
          {
            goto LABEL_25;
          }
        }

        if (!*v5)
        {
LABEL_25:
          operator new();
        }

        if (*(&v30 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
        }

        if ((v29 & 7) != 0)
        {
          atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v24);
        v13 = *(this + 12);
        if (!v13)
        {
LABEL_36:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v14 = v13;
            v15 = v13[4];
            if (v15 <= v7)
            {
              break;
            }

            v13 = *v14;
            if (!*v14)
            {
              goto LABEL_36;
            }
          }

          if (v15 >= v7)
          {
            break;
          }

          v13 = v14[1];
          if (!v13)
          {
            goto LABEL_36;
          }
        }

        std::vector<std::set<unsigned long>>::resize(this + 17, *(this + 20));
        std::vector<std::set<unsigned long>>::resize(this + 14, *(this + 20));
        if (*(&v38 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v38 + 1));
        }

        if ((v37 & 7) != 0)
        {
          atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v35);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v33);
      }

      else
      {
        v7 = *(v10 + 96);
      }

      if (*(&v22 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
      }

      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
    }

    else
    {
      v7 = *(v8 + 96);
    }

    v16 = realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::node(this + 64, v7);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v16 + 8, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v16 + 12, a2 + 1);
    v17 = *(v16 + 4);
    *(v16 + 3) = 0;
    *(v16 + 4) = 0;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    *(v16 + 48) = 1;
  }

  return v7;
}

void sub_2475C24B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage::~NodeStorage(va1);
  Exec::TargetVertex::~TargetVertex(va);
  _Unwind_Resume(a1);
}

uint64_t *realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::edgesConnectedFrom(uint64_t a1, unint64_t a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_18, memory_order_acquire) & 1) == 0)
  {
    v8 = a1;
    v9 = a2;
    v10 = __cxa_guard_acquire(&_MergedGlobals_18);
    a2 = v9;
    v11 = v10;
    a1 = v8;
    if (v11)
    {
      qword_27EE53050 = 0;
      qword_27EE53048 = 0;
      qword_27EE53040 = &qword_27EE53048;
      __cxa_guard_release(&_MergedGlobals_18);
      a1 = v8;
      a2 = v9;
    }
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return &qword_27EE53040;
  }

  v3 = a1 + 32;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 != a1 + 32 && *(v3 + 32) <= a2)
  {
    return (*(a1 + 48) + 24 * a2);
  }

  else
  {
    return &qword_27EE53040;
  }
}

void Exec::ensureTarget(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath **a3)
{
  std::mutex::lock(a1);
  v6 = Exec::_ensureTarget(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  v7 = *a3;
  v8 = a3[1];
  if (*a3 != v8)
  {
    v9 = v31;
    do
    {
      v24 = Exec::_ensureTarget(a1, v7);
      v10 = *std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::__find_equal<std::shared_ptr<RIO_MTLX::Element const>>(&v30, v9, v32, &v27, &v24);
      if (!v10)
      {
        operator new();
      }

      v11 = v10[1];
      if (v11)
      {
        do
        {
          v9 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v9 = v10[2];
          v12 = *v9 == v10;
          v10 = v9;
        }

        while (!v12);
      }

      v7 = (v7 + 8);
    }

    while (v7 != v8);
  }

  v13 = realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::edgesConnectedFrom(a1 + 64, v6);
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = &v28;
  v24 = &v25;
  v25 = 0;
  v14 = *v13;
  v37 = (v13 + 1);
  v38 = v14;
  v35 = v31;
  v36 = v30;
  v33 = &v27;
  v34 = &v28;
  std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long> &,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long> &,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long> &,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long> &,std::insert_iterator<std::set<unsigned long>> &>(v32, &v38, &v37, &v36, &v35, &v33);
  v15 = *v13;
  v37 = v31;
  v38 = v30;
  v35 = (v13 + 1);
  v36 = v15;
  v33 = &v24;
  v34 = v24;
  std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long> &,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long> &,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long> &,std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long> &,std::insert_iterator<std::set<unsigned long>> &>(v32, &v38, &v37, &v36, &v35, &v33);
  if (v26 | v29)
  {
    *(a1 + 192) = 1;
    *(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::node(a1 + 64, v6) + 48) = 1;
    v16 = v24;
    if (v24 != &v25)
    {
      do
      {
        v17 = v16[4];
        v32[0] = v6;
        v33 = v17;
        std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(*(a1 + 112) + 24 * v6, &v33);
        std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(*(a1 + 136) + 24 * v33, v32);
        v18 = v16[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v16[2];
            v12 = *v19 == v16;
            v16 = v19;
          }

          while (!v12);
        }

        v16 = v19;
      }

      while (v19 != &v25);
    }

    v20 = v27;
    if (v27 != &v28)
    {
      do
      {
        v21 = v20[4];
        std::__tree<unsigned long>::__erase_unique<unsigned long>((*(a1 + 112) + 24 * v6), v21);
        std::__tree<unsigned long>::__erase_unique<unsigned long>((*(a1 + 136) + 24 * v21), v6);
        v22 = v20[1];
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
            v23 = v20[2];
            v12 = *v23 == v20;
            v20 = v23;
          }

          while (!v12);
        }

        v20 = v23;
      }

      while (v23 != &v28);
    }
  }

  std::__tree<unsigned int>::destroy(&v24, v25);
  std::__tree<unsigned int>::destroy(&v27, v28);
  std::__tree<unsigned int>::destroy(&v30, v31[0]);
  std::mutex::unlock(a1);
}

double realityio::RioTimer::stop(std::chrono::steady_clock::time_point *this)
{
  ++this[2].__d_.__rep_;
  this[4].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  result = *&this[1].__d_.__rep_ + ((((std::chrono::steady_clock::now().__d_.__rep_ - this[3].__d_.__rep_) / 1000) / 1000.0) / 1000.0);
  *&this[1].__d_.__rep_ = result;
  return result;
}

void Exec::execGraphSerial(std::chrono::steady_clock::time_point *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v56[4] = *MEMORY[0x277D85DE8];
  if (LOBYTE(this[24].__d_.__rep_) == 1)
  {
    this[39].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    rep = this[20].__d_.__rep_;
    LODWORD(v52[0]) = 0;
    std::vector<int>::vector[abi:ne200100](&__p, rep);
    v4 = this[17].__d_.__rep_;
    v5 = this[18].__d_.__rep_;
    if (v4 != v5)
    {
      v6 = 0;
      do
      {
        v7 = *v4;
        if (*v4 != v4 + 1)
        {
          v8 = __p;
          do
          {
            v9 = v7[4];
            if (v9 != v6)
            {
              ++v8[v9];
            }

            v10 = v7[1];
            if (v10)
            {
              do
              {
                v11 = v10;
                v10 = *v10;
              }

              while (v10);
            }

            else
            {
              do
              {
                v11 = v7[2];
                v12 = *v11 == v7;
                v7 = v11;
              }

              while (!v12);
            }

            v7 = v11;
          }

          while (v11 != v4 + 1);
        }

        v4 += 3;
        ++v6;
      }

      while (v4 != v5);
    }

    v53 = 0u;
    v54 = 0u;
    *v52 = 0u;
    *&v49 = 0;
    v14 = __p;
    v13 = v56[0];
    if (v56[0] != __p)
    {
      v15 = 0;
      do
      {
        if (!*&v14[4 * v15])
        {
          std::deque<unsigned long>::push_back(v52, &v49);
          v15 = v49;
          v14 = __p;
          v13 = v56[0];
        }

        *&v49 = ++v15;
      }

      while (v15 < (v13 - v14) >> 2);
    }

    v16 = realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::null_storage();
    v17 = *(&v54 + 1);
    if (*(&v54 + 1))
    {
      v18 = v16;
      do
      {
        v19 = *(*(v52[1] + ((v54 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v54 & 0x1FF));
        *&v54 = v54 + 1;
        *(&v54 + 1) = v17 - 1;
        if (v54 >= 0x400)
        {
          operator delete(*v52[1]);
          v52[1] = v52[1] + 8;
          *&v54 = v54 - 512;
        }

        if (realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::node(&this[8], v19) != v18)
        {
          operator new();
        }

        v20 = (this[17].__d_.__rep_ + 24 * v19);
        v23 = *v20;
        v21 = v20 + 1;
        v22 = v23;
        if (v23 != v21)
        {
          do
          {
            v24 = v22[4];
            v25 = *(__p + v24) - 1;
            *(__p + v24) = v25;
            if (!v25)
            {
              std::deque<unsigned long>::push_back(v52, v22 + 4);
            }

            v26 = v22[1];
            if (v26)
            {
              do
              {
                v27 = v26;
                v26 = *v26;
              }

              while (v26);
            }

            else
            {
              do
              {
                v27 = v22[2];
                v12 = *v27 == v22;
                v22 = v27;
              }

              while (!v12);
            }

            v22 = v27;
          }

          while (v27 != v21);
        }

        v17 = *(&v54 + 1);
      }

      while (*(&v54 + 1));
    }

    std::deque<unsigned long>::~deque[abi:ne200100](v52);
    if (__p)
    {
      v56[0] = __p;
      operator delete(__p);
    }

    v28 = this[21].__d_.__rep_;
    if (v28)
    {
      this[22].__d_.__rep_ = v28;
      operator delete(v28);
    }

    this[21].__d_.__rep_ = 0;
    this[22].__d_.__rep_ = 0;
    this[23].__d_.__rep_ = 0;
    LOBYTE(this[24].__d_.__rep_) = 0;
    realityio::RioTimer::stop(this + 36);
  }

  LODWORD(v52[0]) = 0;
  v52[1] = 0;
  v53 = 0uLL;
  *(&v54 + 1) = 0;
  this[44].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  this[46].__d_.__rep_ = 0;
  this[47].__d_.__rep_ = 0;
  v30 = this[21].__d_.__rep_;
  for (i = this[22].__d_.__rep_; v30 != i; ++v30)
  {
    v31 = *v30;
    ++this[46].__d_.__rep_;
    if (*(v31 + 48))
    {
      v47 = 0uLL;
      v48 = 0;
      std::mutex::lock(this);
      v32 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(&this[8], (v31 + 8));
      v33 = (v32 + 96);
      if (&this[9] == v32)
      {
        v33 = &realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::nullID(void)::nullID;
      }

      v34 = *v33;
      v35 = realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::nullID(void)::nullID;
      std::mutex::unlock(this);
      if (v34 != v35)
      {
        v36 = *(&v47 + 1);
        v37 = v47;
        while (v36 != v37)
        {
          v36 -= 8;
          std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy[abi:ne200100](&v47, v36);
        }

        *(&v47 + 1) = v37;
        v38 = realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::edgesConnectedFrom(&this[8], v34);
        std::set<unsigned long>::set[abi:ne200100](&__p, v38);
        v49 = 0uLL;
        v50 = 0;
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::reserve(&v49, v56[1]);
        v39 = __p;
        if (__p != v56)
        {
          do
          {
            v40 = realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::node(&this[8], v39[4]);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v51, v40);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v51 + 1, v40 + 1);
            v41 = *(&v49 + 1);
            if (*(&v49 + 1) >= v50)
            {
              v42 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath>(&v49, v51);
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(*(&v49 + 1), v51);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v41 + 4), v51 + 1);
              v42 = v41 + 8;
            }

            *(&v49 + 1) = v42;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v51);
            v43 = v39[1];
            if (v43)
            {
              do
              {
                v44 = v43;
                v43 = *v43;
              }

              while (v43);
            }

            else
            {
              do
              {
                v44 = v39[2];
                v12 = *v44 == v39;
                v39 = v44;
              }

              while (!v12);
            }

            v39 = v44;
          }

          while (v44 != v56);
        }

        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__vdeallocate(&v47);
        v47 = v49;
        v48 = v50;
        v50 = 0;
        v49 = 0uLL;
        v51[0] = &v49;
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](v51);
        std::__tree<unsigned int>::destroy(&__p, v56[0]);
      }

      if (*(v31 + 24))
      {
        Exec::getValue(this, (v31 + 8), v51);
        v49 = 0uLL;
        v50 = 0;
        v45 = *(&v47 + 1) - v47;
        if (*(&v47 + 1) != v47)
        {
          if (!((v45 >> 3) >> 60))
          {
            v56[3] = &v49;
            std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::VtValue>>(&v49, v45 >> 3);
          }

          std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
        }

        (***(v31 + 24))(&__p);
        Exec::setValueAndFault(this, (v31 + 8), &__p);
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
        *(v31 + 48) = 0;
        __p = &v49;
        std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&__p);
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v51);
      }

      else
      {
        *(v31 + 48) = 0;
      }

      __p = &v47;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&__p);
      i = this[22].__d_.__rep_;
    }

    else
    {
      ++this[47].__d_.__rep_;
    }
  }

  realityio::RioTimer::stop(this + 41);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v54);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[1]);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void sub_2475C322C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t *a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
  a16 = &a13;
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a17);
  a13 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a13);
  ExecFault::~ExecFault(&a19);
  _Unwind_Resume(a1);
}

void Exec::getStatistics(Exec *this, pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "graph:time:computeMakeOrder");
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "graph:time:computeLoop");
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "graph:numTraversedInCompute");
  v7 = *(this + 46);
  v8 = &unk_285951DD3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "graph:numSkippedClean");
  v7 = *(this + 47);
  v8 = &unk_285951DD3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2475C34C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::timerStat(uint64_t a1, const void **a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = __p;
  std::string::basic_string[abi:ne200100](__p, v5 + 6);
  if (v18 < 0)
  {
    v6 = __p[0];
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v6, v7, v5);
  }

  strcpy(v6 + v5, ":total");
  v8 = ((((std::chrono::steady_clock::now().__d_.__rep_ - *(a3 + 24)) / 1000) / 1000.0) / 1000.0);
  v20 = &unk_285946DC3;
  v19 = v8;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v19);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  v10 = __p;
  std::string::basic_string[abi:ne200100](__p, v9 + 6);
  if (v18 < 0)
  {
    v10 = __p[0];
  }

  if (v9)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    memmove(v10, v11, v9);
  }

  strcpy(v10 + v9, ":count");
  v19 = *(a3 + 16);
  v20 = &unk_285951DD3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v19);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = __p;
  std::string::basic_string[abi:ne200100](__p, v12 + 4);
  if (v18 < 0)
  {
    v13 = __p[0];
  }

  if (v12)
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    memmove(v13, v14, v12);
  }

  strcpy(v13 + v12, ":avg");
  v15 = ((((std::chrono::steady_clock::now().__d_.__rep_ - *(a3 + 24)) / 1000) / 1000.0) / 1000.0) / *(a3 + 16);
  v20 = &unk_285946DC3;
  v19 = v15;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v19);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = *MEMORY[0x277D85DE8];
}