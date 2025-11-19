float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *,float *>(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[v14];
          v16 = v18 + 1;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[2];
            v21 = v18 + 2;
            if (*(v21 - 1) > v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v16 != --v6)
        {
          *v16 = *v6;
          *v6 = v15;
          v23 = (v16 - a1 + 4) >> 2;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (v24)
          {
            goto LABEL_22;
          }

          v26 = v25 >> 1;
          v27 = &a1[v26];
          v28 = *v27;
          v15 = *v16;
          if (*v27 <= *v16)
          {
            goto LABEL_22;
          }

          do
          {
            *v16 = v28;
            v16 = v27;
            if (!v26)
            {
              break;
            }

            v26 = (v26 - 1) >> 1;
            v27 = &a1[v26];
            v28 = *v27;
          }

          while (*v27 > v15);
        }

        *v16 = v15;
LABEL_22:
        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 > v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 4 * v7);
          v13 = v12 + 2;
          if (v13 < a3 && *v8 > v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 <= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL arabicToRoman(unint64_t a1, uint64_t a2)
{
  v2 = a1 - 3000;
  if (a1 - 3000 >= 0xFFFFFFFFFFFFF449)
  {
    v4 = a1;
    v5 = 0;
    v6 = 1000;
    do
    {
      if (v6 <= v4)
      {
        v7 = 0;
        v8 = (&arabicToRoman(unsigned long,TBuffer<wchar_t> &)::pppszRomanTable[9 * (3 - v5)])[v4 / v6 - 1];
          ;
        }

        TBuffer<wchar_t>::insert(a2, *(a2 + 16), v8, v7 - 1);
      }

      v4 %= v6;
      ++v5;
      v6 /= 0xAuLL;
    }

    while (v5 != 4);
  }

  return v2 < 0xFFFFFFFFFFFFF449;
}

BOOL romanToArabic(__int32 *a1, void *a2)
{
  *a2 = 0;
  v2 = *a1;
  if (*a1)
  {
    v4 = a1;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = wcschr(dword_1B5B13CA8, v2);
      if (!v7)
      {
        break;
      }

      v8 = v7 - dword_1B5B13CA8;
      if (v8 <= 6)
      {
        v9 = v7 - dword_1B5B13CA8;
      }

      else
      {
        v9 = v8 - 7;
      }

      v2 = v4[1];
      if (!v2)
      {
        goto LABEL_19;
      }

      v10 = wcschr(dword_1B5B13CA8, v4[1]);
      if (!v10)
      {
        return 1;
      }

      v11 = v10 - dword_1B5B13CA8;
      if (v11 > 6)
      {
        v11 -= 7;
      }

      if (v5 && v11 > v9)
      {
        return 1;
      }

      v5 = v9 == v11;
      if (v9)
      {
        if (v11 >= v9)
        {
          return 1;
        }
      }

      else if (v11 > v9 + 2)
      {
        return 1;
      }

      if (v11 > v9)
      {
        v5 = 0;
        v6 += romanToArabic(wchar_t const*,unsigned long &)::pNums[v11] - romanToArabic(wchar_t const*,unsigned long &)::pNums[v9];
        *a2 = v6;
        v12 = v4[2];
        v4 += 2;
        v2 = v12;
        if (!v12)
        {
          return v6 == 0;
        }
      }

      else
      {
LABEL_19:
        v6 += romanToArabic(wchar_t const*,unsigned long &)::pNums[v9];
        *a2 = v6;
        ++v4;
        if (!v2)
        {
          return v6 == 0;
        }
      }
    }
  }

  return 1;
}

char *getNextToken(char *a1, uint64_t a2, char *a3)
{
  TBuffer<char>::resize(a2, 0);
  if (!a1)
  {
    return 0;
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = a1;
  while (strchr(a3, v6))
  {
    v8 = *++a1;
    v6 = v8;
    ++v7;
    if (!v8)
    {
      return 0;
    }
  }

  v9 = a1;
  do
  {
    if (strchr(a3, v6))
    {
      break;
    }

    v11 = *++v9;
    v6 = v11;
  }

  while (v11);
  TBuffer<char>::resize(a2, 0);
  TBuffer<char>::insert(a2, 0, a1, v9 - v7);
  return v9;
}

int *getNextToken(int *a1, uint64_t a2, __int32 *a3)
{
  TBuffer<wchar_t>::resize(a2, 0);
  if (!a1)
  {
    return 0;
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = a1;
  while (wcschr(a3, v6))
  {
    v8 = a1[1];
    ++a1;
    v6 = v8;
    ++v7;
    if (!v8)
    {
      return 0;
    }
  }

  v9 = a1;
  do
  {
    if (wcschr(a3, v6))
    {
      break;
    }

    v11 = v9[1];
    ++v9;
    v6 = v11;
  }

  while (v11);
  TBuffer<wchar_t>::resize(a2, 0);
  TBuffer<wchar_t>::insert(a2, 0, a1, v9 - v7);
  return v9;
}

uint64_t slashEscape(uint64_t result, uint64_t a2)
{
  for (i = result; ; ++i)
  {
    v4 = *i;
    if (*i > 12)
    {
      switch(v4)
      {
        case 13:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = &unk_1B5B13CFC;
          goto LABEL_13;
        case 34:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = &unk_1B5B13D14;
          goto LABEL_13;
        case 92:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = &unk_1B5B13D08;
LABEL_13:
          v8 = 2;
          goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (v4 == 9)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = &unk_1B5B13CE4;
      goto LABEL_13;
    }

    if (v4 == 10)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = &unk_1B5B13CF0;
      goto LABEL_13;
    }

    if (!v4)
    {
      break;
    }

LABEL_16:
    v9 = *i;
    v5 = *(a2 + 16);
    v7 = &v9;
    v6 = a2;
    v8 = 1;
LABEL_14:
    result = TBuffer<wchar_t>::insert(v6, v5, v7, v8);
  }

  return result;
}

{
  for (i = result; ; ++i)
  {
    v4 = *i;
    if (v4 > 0xC)
    {
      switch(v4)
      {
        case 0xDu:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = "\\r";
          goto LABEL_13;
        case 0x22u:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = "\\"";
          goto LABEL_13;
        case 0x5Cu:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = "\\\";
LABEL_13:
          v8 = 2;
          goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (v4 == 9)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = "\\t";
      goto LABEL_13;
    }

    if (v4 == 10)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = "\\n";
      goto LABEL_13;
    }

    if (!*i)
    {
      break;
    }

LABEL_16:
    v9 = v4;
    v5 = *(a2 + 16);
    v7 = &v9;
    v6 = a2;
    v8 = 1;
LABEL_14:
    result = TBuffer<char>::insert(v6, v5, v7, v8);
  }

  return result;
}

uint64_t tildeEscape(uint64_t result, uint64_t a2)
{
  for (i = result; ; ++i)
  {
    v4 = *i;
    if (v4 <= 0x1F)
    {
      break;
    }

    if (v4 != 32)
    {
      if (v4 == 95)
      {
        v5 = *(a2 + 16);
        v6 = a2;
        v7 = "~_";
        goto LABEL_16;
      }

      if (v4 == 126)
      {
        v5 = *(a2 + 16);
        v6 = a2;
        v7 = "~~";
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    v5 = *(a2 + 16);
    v6 = a2;
    v7 = "_";
LABEL_19:
    v8 = 1;
LABEL_20:
    result = TBuffer<char>::insert(v6, v5, v7, v8);
  }

  if (*i > 9u)
  {
    if (v4 == 10)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = "~n";
      goto LABEL_16;
    }

    if (v4 == 13)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = "~r";
LABEL_16:
      v8 = 2;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v4 == 9)
  {
    v5 = *(a2 + 16);
    v6 = a2;
    v7 = "~t";
    goto LABEL_16;
  }

  if (*i)
  {
LABEL_18:
    v9 = v4;
    v5 = *(a2 + 16);
    v7 = &v9;
    v6 = a2;
    goto LABEL_19;
  }

  return result;
}

void quasar::Geography::addBitmapRegionContext(uint64_t a1, std::string *a2, quasar::Location *a3)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    v6 = quasar::RegionsBitmapData::lookupBitmapColorForLocation(v4, a3);
    if (v6 >= 1)
    {
      v7 = *(a1 + 64);
      if (v7)
      {
        v8 = a1 + 64;
        do
        {
          if (*(v7 + 32) >= v6)
          {
            v8 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 32) < v6));
        }

        while (v7);
        if (v8 != a1 + 64 && v6 >= *(v8 + 32))
        {
          v9 = *(v8 + 40);
          std::string::basic_string[abi:ne200100]<0>(__p, " based on regions bitmap");
          quasar::Geography::addRegionContext(a1, a2, v9, __p);
          if (v11 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }
}

void sub_1B569D744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::Geography::resolveRegionId(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 80, a2);
  if (a1 + 88 == v6)
  {
    if (quasar::gLogLevel >= 5)
    {
      memset(v12, 0, sizeof(v12));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Cannot resolve regionId=", 24);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v12);
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = *(v6 + 64);
    *a3 = *(v6 + 56);
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void quasar::Geography::addContextForKnownLocation(uint64_t a1, std::string *a2, quasar::Location *this)
{
  if (quasar::Location::isUnknown(this))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v8 = this;
    v9 = exception;
    quasar::Location::toString(&v29, v8);
    v10 = std::string::insert(&v29, 0, "Internal error, known location expected but got ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    *&v13 = *(&v10->__r_.__value_.__l + 2);
    v12 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v9, &v12);
    __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (quasar::gLogLevel >= 5)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v12);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Computing geo context for ", 26);
    quasar::operator<<(v6, this);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v12);
  }

  quasar::Geography::addBitmapRegionContext(a1, a2, this);
  quasar::Geography::addCircleRegionsContext(a1, a2, this);
}

void sub_1B569D9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 - 33) < 0)
  {
    operator delete(*(v16 - 56));
    if ((v15 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v14);
  goto LABEL_8;
}

void quasar::Geography::addCircleRegionsContext(uint64_t a1, std::string *a2, quasar::Location *a3)
{
  v53 = 0;
  v5 = 0uLL;
  v52 = 0u;
  v6 = *(a1 + 32);
  if (*(a1 + 40) != v6)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v6 + v8);
      CircleRegion = quasar::GeoRegion::getCircleRegion(v10);
      v35[0] = COERCE_VOID_(quasar::CircleRegion::getLocation(*CircleRegion));
      v35[1] = v12;
      DistanceKm = quasar::Location::getDistanceKm(a3, v35);
      v14 = quasar::GeoRegion::getCircleRegion(v10);
      if (DistanceKm <= quasar::CircleRegion::getMaxRadiusKm(*v14))
      {
        v15 = *(&v52 + 1);
        if (*(&v52 + 1) >= v53)
        {
          v17 = v52;
          v18 = *(&v52 + 1) - v52;
          v19 = (*(&v52 + 1) - v52) >> 4;
          v20 = v19 + 1;
          if ((v19 + 1) >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v21 = v53 - v52;
          if ((v53 - v52) >> 3 > v20)
          {
            v20 = v21 >> 3;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFF0;
          v23 = 0xFFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,unsigned int>>>(&v52, v23);
          }

          v24 = 16 * v19;
          *v24 = DistanceKm;
          *(v24 + 8) = v9;
          v16 = 16 * v19 + 16;
          memcpy(0, v17, v18);
          v25 = v52;
          *&v52 = 0;
          *(&v52 + 1) = v16;
          v53 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          **(&v52 + 1) = DistanceKm;
          *(v15 + 8) = v9;
          v16 = v15 + 16;
        }

        *(&v52 + 1) = v16;
        if (quasar::gLogLevel >= 5)
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          *v35 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v35);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Location is within max radius of geoRegion=", 43);
          kaldi::quasar::Vocab::OOvWord(v10, &__p);
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

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          quasar::QuasarDebugMessage::~QuasarDebugMessage(v35);
        }
      }

      ++v9;
      v6 = *(a1 + 32);
      v8 += 16;
    }

    while (v9 < (*(a1 + 40) - v6) >> 4);
    v5 = v52;
  }

  v29 = 126 - 2 * __clz((*(&v5 + 1) - v5) >> 4);
  if (*(&v5 + 1) == v5)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,false>(v5, *(&v5 + 1), v35, v30, 1);
  v32 = *(&v52 + 1);
  v31 = v52;
  if (v52 != *(&v52 + 1))
  {
    do
    {
      v33 = *(*(a1 + 32) + 16 * v31[2]);
      std::string::basic_string[abi:ne200100]<0>(v35, " based on circle regions");
      quasar::Geography::addRegionContext(a1, a2, v33, v35);
      if (SBYTE7(v36) < 0)
      {
        operator delete(v35[0]);
      }

      v31 += 4;
    }

    while (v31 != v32);
    v31 = v52;
  }

  if (v31)
  {
    *(&v52 + 1) = v31;
    operator delete(v31);
  }
}

void sub_1B569DD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v23 = *(v21 - 144);
  if (v23)
  {
    *(v21 - 136) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void quasar::Geography::addContextFromOldMemories(uint64_t a1, std::string *a2, quasar::GeoMemories *this)
{
  quasar::GeoMemories::recallLastRegionId(this, (a1 + 4), &v10);
  quasar::Geography::resolveRegionId(a1, &v10, &v8);
  v5 = v8;
  if (v8)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, " based on cached region id");
    quasar::Geography::addRegionContext(a1, a2, v5, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1B569DE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<quasar::GeoRegion>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D27240;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t *std::__tree<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>>>::__emplace_unique_key_args<int,int &,std::shared_ptr<quasar::GeoRegion>&>(uint64_t a1, int *a2)
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

void *_ZNSt3__120__shared_ptr_emplaceIN6quasar17RegionsBitmapDataENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D27290;
  quasar::RegionsBitmapData::RegionsBitmapData(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::RegionsBitmapData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D27290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::RegionsBitmapData>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<quasar::Geography::GeoContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D272E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::Geography::GeoContext>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 96);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(a1 + 48, *(a1 + 56));
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(a1 + 24, *(a1 + 32));
}

uint64_t quasar::StructuredPredictionOptions::options@<X0>(quasar::StructuredPredictionOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 16;
  v3[1] = this + 176;
  v3[2] = this + 336;
  v3[3] = this + 496;
  v3[4] = this + 656;
  v3[5] = this + 816;
  v3[6] = this + 976;
  v3[7] = this + 1136;
  v3[8] = this + 1296;
  v3[9] = this + 1440;
  v3[10] = this + 1584;
  v3[11] = this + *(*(this + 216) - 24) + 1728;
  v3[12] = this + 1880;
  v3[13] = this + 2040;
  v3[14] = this + 2184;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 0xFuLL);
}

void quasar::recomputeAlignment(uint64_t *a1)
{
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v29);
      v4 = v44;
      if (v44 >= v45)
      {
        v5 = std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__emplace_back_slow_path<kaldi::quasar::TranslationUtil::NbestElement>(&v43, &v29);
      }

      else
      {
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v44, &v29);
        v5 = (v4 + 272);
      }

      v44 = v5;
      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v29);
      v6 = *(v2 + 200);
      v7 = *(v2 + 208);
      if (v6 != v7)
      {
        v8 = v44 - 272;
        v9 = (v44 - 264);
        do
        {
          v29 = 0uLL;
          v30 = 0;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          memset(v42, 0, sizeof(v42));
          std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](v8, &v29);
          kaldi::quasar::TranslationUtil::PathElement::~PathElement(&v29);
          v10 = *v9;
          v11 = (*v9 - 104);
          if (v11 != (v6 + 104))
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v11, *(v6 + 104), *(v6 + 112), (*(v6 + 112) - *(v6 + 104)) >> 2);
          }

          v12 = *(v6 + 104);
          v13 = *(v6 + 112);
          if (v12 == v13)
          {
            v15 = *(v6 + 104);
          }

          else
          {
            v14 = v12 + 1;
            v15 = *(v6 + 104);
            if (v12 + 1 != v13)
            {
              v16 = *v12;
              v15 = *(v6 + 104);
              v17 = v12 + 1;
              do
              {
                v18 = *v17++;
                v19 = v18;
                if (v16 < v18)
                {
                  v16 = v19;
                  v15 = v14;
                }

                v14 = v17;
              }

              while (v17 != v13);
            }
          }

          LODWORD(v29) = (v15 - v12) >> 2;
          std::vector<kaldi::LevenshteinOp::Value>::__assign_with_size[abi:ne200100]<kaldi::LevenshteinOp::Value const*,kaldi::LevenshteinOp::Value const*>((v10 - 152), &v29, &v29 + 4, 1uLL);
          v6 += 136;
        }

        while (v6 != v7);
      }

      v2 += 264;
    }

    while (v2 != v3);
  }

  kaldi::quasar::TranslationUtil::ComputeBackwardAlignments(&v43);
  kaldi::quasar::TranslationUtil::MergeAlignments(&v43);
  v20 = *a1;
  v21 = a1[1];
  if (v21 != *a1)
  {
    v22 = 0;
    do
    {
      v23 = *(v20 + 264 * v22 + 200);
      if (*(v20 + 264 * v22 + 208) != v23)
      {
        v24 = 0;
        v25 = 0;
        v26 = 32;
        do
        {
          v27 = &v43[34 * v22][v24];
          if (v27 + 88 != (v23 + v26))
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v23 + v26), *(v27 + 11), *(v27 + 12), (*(v27 + 12) - *(v27 + 11)) >> 2);
            v20 = *a1;
          }

          ++v25;
          v28 = v20 + 264 * v22;
          v23 = *(v28 + 200);
          v26 += 136;
          v24 += 240;
        }

        while (0xF0F0F0F0F0F0F0F1 * ((*(v28 + 208) - v23) >> 3) > v25);
        v21 = a1[1];
      }

      ++v22;
    }

    while (0xF83E0F83E0F83E1 * ((v21 - v20) >> 3) > v22);
  }

  *&v29 = &v43;
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](&v29);
}

void sub_1B569E5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 112);
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::quasar::TranslationUtil::PathElement>::__emplace_back_slow_path<kaldi::quasar::TranslationUtil::PathElement>(a1, a2);
  }

  else
  {
    std::vector<kaldi::quasar::TranslationUtil::PathElement>::__construct_one_at_end[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement>(a1, a2);
    result = v3 + 240;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t quasar::manyToOneAssignments(void *a1)
{
  v3 = *a1;
  v1 = a1 + 1;
  v2 = v3;
  if (v3 == v1)
  {
    return 6;
  }

  while (*(v2 + 8) != 5)
  {
    v4 = v2[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v2[2];
        v6 = *v5 == v2;
        v2 = v5;
      }

      while (!v6);
    }

    v2 = v5;
    if (v5 == v1)
    {
      return 6;
    }
  }

  return 5;
}

void quasar::computeTokenCharMapping(quasar *this, const quasar::TranslationPhraseInternal *a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v6[1] = 0;
  v6[2] = v7;
  v5 = v6;
  v6[0] = 0;
  v2 = quasar::MetaInfo::get((this + 256));
  v4 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "tokenizer output");
  quasar::PTree::getChild(v2, __p);
}

void sub_1B569EA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::__tree<int>::destroy(v17 - 152, *(v16 + 288));
  std::__tree<int>::destroy(v17 - 128, *(v16 + 312));
  _Unwind_Resume(a1);
}

void quasar::computeTokenSpmMapping(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[1] = 0;
  a4[2] = 0;
  *a4 = a4 + 1;
  v35 = 0;
  v4 = *(a1 + 200);
  v5 = *(a1 + 208);
  if (v4 != v5)
  {
    v7 = (a3 + 8);
    while (1)
    {
      v8 = *(a2 + 23);
      v9 = v8 >= 0 ? a2 : *a2;
      v10 = v8 >= 0 ? *(a2 + 23) : *(a2 + 8);
      quasar::utf8::codepointsCtr(v9, v10, 0, *(v4 + 128), v32);
      if (v34 == 1)
      {
        break;
      }

      *__p = *v32;
      v37 = v33;
      v32[0] = 0;
      v32[1] = 0;
      v33 = 0;
      if (quasar::gLogLevel >= 1)
      {
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
        if (v37 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if (v37 >= 0)
        {
          v13 = HIBYTE(v37);
        }

        else
        {
          v13 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v12, v13);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v38);
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p[0]);
      }

      v11 = 0;
      if ((v34 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_25:
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

      quasar::utf8::codepointsCtr(v15, v16, 0, *(v4 + 132), v32);
      if (v34 != 1)
      {
        *__p = *v32;
        v37 = v33;
        v32[0] = 0;
        v32[1] = 0;
        v33 = 0;
        if (quasar::gLogLevel >= 1)
        {
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
          if (v37 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          if (v37 >= 0)
          {
            v19 = HIBYTE(v37);
          }

          else
          {
            v19 = __p[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v18, v19);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(&v38);
        }

        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }

        v17 = 0;
        if (v34)
        {
          goto LABEL_47;
        }

LABEL_45:
        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32[0]);
        }

        goto LABEL_47;
      }

      v17 = v32[0];
      if ((v34 & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_47:
      *(&v38 + 1) = 0;
      *&v39 = 0;
      *&v38 = &v38 + 8;
      if (v11 < v17)
      {
        do
        {
          v20 = *v7;
          if (*v7)
          {
            v21 = v7;
            do
            {
              if (v20[7] >= v11)
              {
                v21 = v20;
              }

              v20 = *&v20[2 * (v20[7] < v11)];
            }

            while (v20);
            if (v21 != v7 && v11 >= v21[7])
            {
              v32[0] = v21 + 8;
              v22 = std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v38, v21 + 8);
              ++*(v22 + 8);
            }
          }

          ++v11;
        }

        while (v11 != v17);
        if (v39)
        {
          v23 = v38;
          v24 = &v38 + 8;
          if (v38 != (&v38 + 8))
          {
LABEL_59:
            v24 = v23;
            while (1)
            {
              v25 = *(v23 + 1);
              v26 = v23;
              if (v25)
              {
                do
                {
                  v23 = v25;
                  v25 = *v25;
                }

                while (v25);
              }

              else
              {
                do
                {
                  v23 = *(v26 + 2);
                  v27 = *v23 == v26;
                  v26 = v23;
                }

                while (!v27);
              }

              if (v23 == &v38 + 8)
              {
                break;
              }

              v28 = *(v24 + 7);
              v29 = *(v23 + 7);
              if (v28 < v29 || v29 >= v28 && *(v24 + 8) < *(v23 + 8))
              {
                goto LABEL_59;
              }
            }
          }

          v30 = *(v24 + 7);
          v32[0] = &v35;
          *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a4, &v35) + 8) = v30;
        }
      }

      ++v35;
      std::__tree<int>::destroy(&v38, *(&v38 + 1));
      v4 += 136;
      if (v4 == v5)
      {
        return;
      }
    }

    v11 = v32[0];
    if (v34)
    {
      goto LABEL_25;
    }

LABEL_23:
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[0]);
    }

    goto LABEL_25;
  }
}

void sub_1B569EE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::locale a25, uint64_t a26)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a25);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if ((a16 & 1) == 0 && a15 < 0)
  {
    operator delete(a10);
  }

  std::__tree<int>::destroy(a9, *(a9 + 8));
  _Unwind_Resume(a1);
}

void quasar::findStructureTags(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  quasar::OptionValueBase::OptionValueBase(v48, (a3 + 16));
  v48[0] = &unk_1F2CFAFC8;
  if (*(a3 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, *(a3 + 120), *(a3 + 128));
  }

  else
  {
    v49 = *(a3 + 120);
  }

  v50 = *(a3 + 144);
  std::map<std::string,std::string>::map[abi:ne200100](v51, (a3 + 152));
  v52 = 0;
  quasar::OptionValueBase::OptionValueBase(&v53, (a3 + 176));
  v53 = &unk_1F2CFAFC8;
  if (*(a3 + 303) < 0)
  {
    std::string::__init_copy_ctor_external(&v54, *(a3 + 280), *(a3 + 288));
  }

  else
  {
    v54 = *(a3 + 280);
  }

  v55 = *(a3 + 304);
  std::map<std::string,std::string>::map[abi:ne200100](v56, (a3 + 312));
  v57 = 1;
  quasar::OptionValueBase::OptionValueBase(&v58, (a3 + 336));
  v58 = &unk_1F2CFAFC8;
  if (*(a3 + 463) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, *(a3 + 440), *(a3 + 448));
  }

  else
  {
    v59 = *(a3 + 440);
  }

  v60 = *(a3 + 464);
  std::map<std::string,std::string>::map[abi:ne200100](v61, (a3 + 472));
  v62 = 2;
  quasar::OptionValueBase::OptionValueBase(v63, (a3 + 496));
  v63[0] = &unk_1F2CFAFC8;
  if (*(a3 + 623) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, *(a3 + 600), *(a3 + 608));
  }

  else
  {
    v64 = *(a3 + 600);
  }

  v65 = *(a3 + 624);
  std::map<std::string,std::string>::map[abi:ne200100](v66, (a3 + 632));
  v8 = 0;
  v67 = 3;
  v9 = (a1 + a2);
  do
  {
    v10 = 0;
    v47 = v8;
    v11 = v48 + v8;
    while (1)
    {
      v12 = quasar::OptionValue<std::string>::value(v11);
      v13 = *(v12 + 23);
      v14 = v13 >= 0 ? v12 : *v12;
      v15 = v13 >= 0 ? *(v12 + 23) : *(v12 + 8);
      if (a2 < v10)
      {
        break;
      }

      if (v15)
      {
        v16 = a2 - v10;
        if (v16 >= v15)
        {
          v30 = (a1 + v10);
          v31 = *v14;
          do
          {
            v32 = v16 - v15;
            if (v32 == -1)
            {
              break;
            }

            v33 = memchr(v30, v31, v32 + 1);
            if (!v33)
            {
              break;
            }

            v17 = v33;
            if (!memcmp(v33, v14, v15))
            {
              goto LABEL_25;
            }

            v30 = v17 + 1;
            v16 = v9 - (v17 + 1);
          }

          while (v16 >= v15);
        }

        v17 = (a1 + a2);
LABEL_25:
        if (v17 == v9)
        {
          v10 = -1;
        }

        else
        {
          v10 = v17 - a1;
        }
      }

      if (v10 == -1)
      {
        break;
      }

      v18 = quasar::OptionValue<std::string>::value(v11);
      if (a2 < v10)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      v19 = *(v18 + 23);
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v18 + 8);
      }

      v20 = a1 + v10;
      if (a2 - v10 >= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = a2 - v10;
      }

      v22 = *(v11 + 40);
      v23 = *(a4 + 8);
      v24 = *(a4 + 16);
      if (v23 >= v24)
      {
        v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a4) >> 3);
        v27 = v26 + 1;
        if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v28 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a4) >> 3);
        if (2 * v28 > v27)
        {
          v27 = 2 * v28;
        }

        if (v28 >= 0x555555555555555)
        {
          v29 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,quasar::SegmentType,std::string_view>>>(a4, v29);
        }

        v34 = 24 * v26;
        *v34 = v10;
        *(v34 + 4) = v22;
        *(v34 + 8) = v20;
        *(v34 + 16) = v21;
        v25 = 24 * v26 + 24;
        v35 = *(a4 + 8) - *a4;
        v36 = (24 * v26 - v35);
        memcpy(v36, *a4, v35);
        v37 = *a4;
        *a4 = v36;
        *(a4 + 8) = v25;
        *(a4 + 16) = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v23 = v10;
        *(v23 + 4) = v22;
        v25 = v23 + 24;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
      }

      *(a4 + 8) = v25;
      v38 = quasar::OptionValue<std::string>::value(v11);
      LODWORD(v39) = *(v38 + 23);
      if ((v39 & 0x80u) != 0)
      {
        v39 = *(v38 + 8);
      }

      v10 += v39;
    }

    v8 = v47 + 168;
  }

  while (v47 != 504);
  for (i = 0; i != -84; i -= 21)
  {
    v41 = &v48[i];
    v63[i] = &unk_1F2CFAFC8;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v66[i], v66[i + 1]);
    if (SHIBYTE(v64.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(v41[76]);
    }

    v63[i] = &unk_1F2D08890;
    v42 = v41[75];
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    v43 = &v48[i];
    if (SHIBYTE(v63[i + 9]) < 0)
    {
      operator delete(v43[70]);
    }

    if (*(v43 + 559) < 0)
    {
      operator delete(v63[i + 4]);
    }

    if (SHIBYTE(v63[i + 3]) < 0)
    {
      operator delete(v63[i + 1]);
    }
  }

  v44 = *(a4 + 8);
  v45 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v44[-*a4] >> 3));
  if (v44 == *a4)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,false>(*a4, v44, v48, v46, 1);
}

void sub_1B569F440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  quasar::OptionValueBase::~OptionValueBase(v12);
  do
  {
    v12 = (v12 - 168);
    quasar::OptionValue<std::string>::~OptionValue(v12);
  }

  while (v12 != &a11);
  v14 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void quasar::computeSourceAlignments(int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v65[0] = 0;
  v65[1] = 0;
  v63[1] = 0;
  v64 = v65;
  v62 = v63;
  v63[0] = 0;
  v7 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    LODWORD(v8) = a5;
    v11 = (a3 + 8);
    while (1)
    {
      v12 = *v7;
      v61 = -1;
      v13 = *(a2 + 200) + 136 * v12;
      v14 = *quasar::OptionValue<int>::value((a4 + 2184));
      if (v14 >= v8)
      {
        v8 = v8;
      }

      else
      {
        v8 = v14;
      }

      v15 = *(v13 + 104);
      v16 = *(v13 + 112) - v15;
      if (v8 > (v16 >> 2) && quasar::gLogLevel >= 2)
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v44);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "Inconsistent soft alignment length! Soft alignment length: ", 59);
        v19 = MEMORY[0x1B8C84C30](v18, (*(v13 + 112) - *(v13 + 104)) >> 2);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " - numSourceSpm: ", 17);
        MEMORY[0x1B8C84C00](v20, v8);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&v44);
        v15 = *(v13 + 104);
        v16 = *(v13 + 112) - v15;
      }

      v21 = v15;
      v22 = v16 >> 2;
      if (v8 >= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v8;
      }

      v24 = &v15[v23];
      v25 = v15 + 1;
      if (v23)
      {
        v26 = v25 == v24;
      }

      else
      {
        v26 = 1;
      }

      v27 = v15;
      if (!v26)
      {
        v28 = *v15;
        v29 = v15 + 1;
        do
        {
          v30 = *v29++;
          v31 = v30;
          if (v28 < v30)
          {
            v28 = v31;
            v21 = v25;
          }

          v25 = v29;
        }

        while (v29 != v24);
        v27 = v21;
      }

      v61 = (v27 - v15) >> 2;
      if (quasar::gLogLevel >= 5)
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v44);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "Aligning middle tag at pos ", 27);
        v33 = MEMORY[0x1B8C84C00](v32, v12);
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " to source spm ", 15);
        MEMORY[0x1B8C84C00](v34, v61);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v44);
      }

      std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v62, &v61);
      if (*quasar::OptionValue<BOOL>::value((a4 + 1296)) != 1)
      {
        goto LABEL_37;
      }

      v35 = *v11;
      if (*v11)
      {
        v36 = v11;
        do
        {
          if (*(v35 + 28) >= v61)
          {
            v36 = v35;
          }

          v35 = *(v35 + 8 * (*(v35 + 28) < v61));
        }

        while (v35);
        if (v36 != v11 && v61 >= *(v36 + 7))
        {
          break;
        }
      }

      if (quasar::gLogLevel >= 5)
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v44);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "Source SPM at pos", 17);
        v38 = MEMORY[0x1B8C84C00](v37, v61);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " does not map to any source token.", 34);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v44);
      }

LABEL_40:
      if (++v7 == v6)
      {
        goto LABEL_41;
      }
    }

    v39 = *(v36 + 8);
    v61 = v39;
    if (quasar::gLogLevel >= 5)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v44);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "Aligning middle tag at pos ", 27);
      v41 = MEMORY[0x1B8C84C00](v40, v12);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " to source token ", 17);
      MEMORY[0x1B8C84C00](v42, v61);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v44);
LABEL_37:
      v39 = v61;
    }

    if (v39 != -1)
    {
      std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v64, &v61);
    }

    goto LABEL_40;
  }

LABEL_41:
  std::set<int>::set[abi:ne200100](a6, &v64);
  std::set<int>::set[abi:ne200100](a6 + 3, &v62);
  std::__tree<int>::destroy(&v62, v63[0]);
  std::__tree<int>::destroy(&v64, v65[0]);
}

void sub_1B569F9A4(_Unwind_Exception *a1)
{
  std::__tree<int>::destroy(v1 - 136, *(v1 - 128));
  std::__tree<int>::destroy(v1 - 112, *(v1 - 104));
  _Unwind_Resume(a1);
}

void quasar::parseAllSegments(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  v8 = a8;
  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  v48 = -252645135 * ((*(a2 + 208) - *(a2 + 200)) >> 3);
  v73[0] = 0;
  v9 = *a1;
  if (*a1 != a1[1])
  {
    v10 = 0;
    v11 = 7;
    while (1)
    {
      v12 = *v9;
      v13 = v9[1];
      v15 = *(v9 + 1);
      v14 = *(v9 + 2);
      LODWORD(v16) = *v9 - v10;
      if (*v9 > v10 || (*v9 | v10) == 0)
      {
        *&v53 = __PAIR64__(v11, v10);
        if (a5 < v10)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        if (a5 - v10 >= v16)
        {
          v16 = v16;
        }

        else
        {
          v16 = a5 - v10;
        }

        *(&v53 + 1) = a4 + v10;
        __p[0] = v16;
        LODWORD(v49) = v73[0];
        v55 = 0uLL;
        __p[1] = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p[1], &v49, &v49 + 4, 1uLL);
        *(&v56 + 1) = 0;
        *&v57 = 0;
        v58 = 0uLL;
        *&v56 = &v56 + 8;
        *(&v57 + 1) = &v58;
        std::vector<quasar::Segment>::push_back[abi:ne200100](v8, &v53);
        std::__tree<int>::destroy(&v57 + 8, v58);
        std::__tree<int>::destroy(&v56, *(&v56 + 1));
        if (__p[1])
        {
          *&v55 = __p[1];
          operator delete(__p[1]);
        }
      }

      v70 = 0;
      v71 = 0;
      v72 = 0;
      if (v48 <= v73[0])
      {
LABEL_66:
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        *__p = 0u;
        v55 = 0u;
        v53 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v53);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v53);
      }

      v18 = v11;
      v19 = *(a2 + 200) + 136 * v73[0];
      v20 = v48 - v73[0];
      v21 = v73[0] + 1;
      while (1)
      {
        v22 = *(v19 + 23);
        if ((v22 & 0x8000000000000000) != 0)
        {
          v23 = *v19;
          v22 = *(v19 + 8);
        }

        else
        {
          v23 = v19;
        }

        if (v22 == v14 && !memcmp(v23, v15, v14))
        {
          break;
        }

        v73[0] = v21;
        v19 += 136;
        ++v21;
        if (!--v20)
        {
          goto LABEL_66;
        }
      }

      v11 = v18;
      if (v18 == 5)
      {
        break;
      }

      v8 = a8;
      if (v18 == 6)
      {
        if (v13 != 3)
        {
          goto LABEL_37;
        }

        v11 = 7;
      }

      else
      {
        if (v13 >= 2)
        {
          goto LABEL_37;
        }

        v11 = 5;
      }

LABEL_40:
      std::vector<int>::push_back[abi:ne200100](&v70, v73);
      if (v13 == 2)
      {
        quasar::computeSourceAlignments(&v70, a2, a3, a6, a7, &v49);
      }

      else
      {
        v50[0] = 0;
        v50[1] = 0;
        v52[0] = 0;
        v52[1] = 0;
        v49 = v50;
        v51 = v52;
      }

      *&v53 = __PAIR64__(v13, v12);
      *(&v53 + 1) = v15;
      __p[0] = v14;
      v55 = 0uLL;
      __p[1] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p[1], v70, v71, v71 - v70);
      std::set<int>::set[abi:ne200100](&v56, &v49);
      std::set<int>::set[abi:ne200100](&v57 + 1, &v51);
      std::vector<quasar::Segment>::push_back[abi:ne200100](v8, &v53);
      std::__tree<int>::destroy(&v57 + 8, v58);
      std::__tree<int>::destroy(&v56, *(&v56 + 1));
      if (__p[1])
      {
        *&v55 = __p[1];
        operator delete(__p[1]);
      }

      ++v73[0];
      std::__tree<int>::destroy(&v51, v52[0]);
      std::__tree<int>::destroy(&v49, v50[0]);
      if (v70)
      {
        v71 = v70;
        operator delete(v70);
      }

      v10 = v12 + v14;
      v9 += 6;
      if (v9 == a1[1])
      {
        goto LABEL_53;
      }
    }

    v8 = a8;
    if (v13 == 2)
    {
      v24 = v9 + 6;
      if (a1[1] == v9 + 6 || v9[7] != 2)
      {
        v11 = 6;
        v13 = 2;
      }

      else
      {
        v25 = v9 + 6;
        v26 = v9 + 12;
        v13 = 2;
        while (1)
        {
          v9 = v25;
          if (&v14[v12] != *v24)
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](&v70, v73);
          ++v73[0];
          v12 = *v9;
          v13 = v9[1];
          v15 = *(v9 + 1);
          v14 = *(v9 + 2);
          if (a1[1] == v26)
          {
            goto LABEL_51;
          }

          v24 = v26;
          v27 = v26[1];
          v25 = v9 + 6;
          v26 += 6;
          v11 = 6;
          if (v27 != 2)
          {
            goto LABEL_40;
          }
        }

        v9 = v25 - 6;
LABEL_51:
        v11 = 6;
      }

      goto LABEL_40;
    }

LABEL_37:
    if (quasar::gLogLevel >= 5)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      *__p = 0u;
      v55 = 0u;
      v53 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v53);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, "Ignoring unexpected ", 20);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v15, v14);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " at position ", 13);
      MEMORY[0x1B8C84C00](v30, v10);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v53);
    }

    v13 = 8;
    goto LABEL_40;
  }

  LODWORD(v10) = 0;
  LODWORD(v11) = 7;
LABEL_53:
  if (a5 > v10)
  {
    *&v53 = __PAIR64__(v11, v10);
    *(&v53 + 1) = a4 + v10;
    __p[0] = (a5 - v10);
    LODWORD(v49) = v73[0];
    v55 = 0uLL;
    __p[1] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p[1], &v49, &v49 + 4, 1uLL);
    v56 = &v56 + 8;
    v58 = 0uLL;
    *&v57 = 0;
    *(&v57 + 1) = &v58;
    std::vector<quasar::Segment>::push_back[abi:ne200100](v8, &v53);
    std::__tree<int>::destroy(&v57 + 8, v58);
    std::__tree<int>::destroy(&v56, *(&v56 + 1));
    if (__p[1])
    {
      *&v55 = __p[1];
      operator delete(__p[1]);
    }
  }

  if (v11 == 6)
  {
    *&v53 = 0x4FFFFFFFFLL;
    *(&v53 + 1) = "";
    __p[0] = 0;
    LODWORD(v49) = v48;
    v55 = 0uLL;
    __p[1] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p[1], &v49, &v49 + 4, 1uLL);
    v56 = &v56 + 8;
    v58 = 0uLL;
    *&v57 = 0;
    *(&v57 + 1) = &v58;
    std::vector<quasar::Segment>::push_back[abi:ne200100](v8, &v53);
    std::__tree<int>::destroy(&v57 + 8, v58);
    std::__tree<int>::destroy(&v56, *(&v56 + 1));
    if (__p[1])
    {
      *&v55 = __p[1];
      operator delete(__p[1]);
    }
  }

  v31 = v8[1];
  while (v31 != *v8)
  {
    v32 = v31;
    v31 -= 24;
    v33 = *(v32 - 23);
    v34 = v33 >= 3;
    v35 = v33 - 3;
    if (v34)
    {
      if (v35 <= 1)
      {
        return;
      }
    }

    else
    {
      *(v32 - 23) = 8;
      std::__tree<int>::destroy((v32 - 12), *(v32 - 5));
      *(v32 - 6) = v32 - 10;
      *(v32 - 5) = 0;
      v36 = *(v32 - 2);
      *(v32 - 4) = 0;
      std::__tree<int>::destroy((v32 - 6), v36);
      *(v32 - 2) = 0;
      *(v32 - 1) = 0;
      *(v32 - 3) = v32 - 4;
      if (quasar::gLogLevel >= 5)
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        *__p = 0u;
        v55 = 0u;
        v53 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v53);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, "Ignoring trailing unmatched ", 28);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, *(v32 - 11), *(v32 - 10));
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " at position ", 13);
        MEMORY[0x1B8C84C00](v39, *v31);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v53);
      }
    }
  }
}

uint64_t std::vector<quasar::Segment>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::Segment>::__emplace_back_slow_path<quasar::Segment>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<quasar::Segment>>::construct[abi:ne200100]<quasar::Segment,quasar::Segment,0>(a1, a1[1], a2);
    result = v3 + 96;
    a1[1] = v3 + 96;
  }

  a1[1] = result;
  return result;
}

void quasar::Segment::~Segment(quasar::Segment *this)
{
  std::__tree<int>::destroy(this + 72, *(this + 10));
  std::__tree<int>::destroy(this + 48, *(this + 7));
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

void quasar::extendExpansions(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*a2 != v7)
  {
    do
    {
      std::map<int,quasar::Expansion::SegmentTypeData>::map[abi:ne200100](v26, (a3 + 3));
      v13 = *v6;
      if (*v6 != v6 + 1)
      {
        do
        {
          v24 = *(v13 + 28);
          v25 = *(v13 + 9);
          v14 = std::__tree<std::__value_type<int,quasar::Expansion::SegmentTypeData>,std::__map_value_compare<int,std::__value_type<int,quasar::Expansion::SegmentTypeData>,std::less<int>,true>,std::allocator<std::__value_type<int,quasar::Expansion::SegmentTypeData>>>::__emplace_unique_key_args<int,int const&,quasar::Expansion::SegmentTypeData&>(v26, &v24);
          if ((v15 & 1) == 0)
          {
            *(v14 + 8) = HIDWORD(v24);
          }

          v16 = v13[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v13[2];
              v18 = *v17 == v13;
              v13 = v17;
            }

            while (!v18);
          }

          v13 = v17;
        }

        while (v17 != v6 + 1);
      }

      v19 = a1[1];
      if (v19 >= a1[2])
      {
        v20 = std::vector<quasar::Expansion>::__emplace_back_slow_path<std::vector<quasar::Expansion::SegmentData> const&,std::map<int,quasar::Expansion::SegmentTypeData> &>(a1, a3, v26);
      }

      else
      {
        std::allocator<quasar::Expansion>::construct[abi:ne200100]<quasar::Expansion,std::vector<quasar::Expansion::SegmentData> const&,std::map<int,quasar::Expansion::SegmentTypeData> &>(a1, a1[1], a3, v26);
        v20 = v19 + 48;
        a1[1] = v20;
      }

      a1[1] = v20;
      v21 = v20 - 48;
      v24 = __PAIR64__(a6, a5);
      v22 = *(v20 - 40);
      if (v22 >= *(v20 - 32))
      {
        v23 = std::vector<quasar::Expansion::SegmentData>::__emplace_back_slow_path<std::string const&,std::pair<int,int>>(v21, a4, &v24);
      }

      else
      {
        std::vector<quasar::Expansion::SegmentData>::__construct_one_at_end[abi:ne200100]<std::string const&,std::pair<int,int>>(v21, a4, &v24);
        v23 = v22 + 32;
      }

      *(v20 - 40) = v23;
      std::__tree<int>::destroy(v26, v26[1]);
      v6 += 3;
    }

    while (v6 != v7);
  }
}

void sub_1B56A0448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  *(v13 + 8) = v14;
  std::__tree<int>::destroy(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t quasar::markAssignmentAsReversed(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  if (*result != v2)
  {
    do
    {
      v3 = *v1;
      if (*v1 != v1 + 1)
      {
        do
        {
          *(v3 + 36) = 1;
          v4 = v3[1];
          if (v4)
          {
            do
            {
              v5 = v4;
              v4 = *v4;
            }

            while (v4);
          }

          else
          {
            do
            {
              v5 = v3[2];
              v6 = *v5 == v3;
              v3 = v5;
            }

            while (!v6);
          }

          v3 = v5;
        }

        while (v5 != v1 + 1);
      }

      v1 += 3;
    }

    while (v1 != v2);
  }

  return result;
}

void quasar::computeExpansions(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v117 = *MEMORY[0x1E69E9840];
  *&v101 = 0;
  v102 = 0u;
  *__p = 0u;
  *(&v101 + 1) = &v102;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  std::vector<quasar::Expansion>::__init_with_size[abi:ne200100]<quasar::Expansion const*,quasar::Expansion const*>(a4, __p, &v103, 1uLL);
  std::__tree<int>::destroy(&v101 + 8, v102);
  *__src = __p;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__src);
  v5 = *a1;
  if (*a1 >= a1[1])
  {
    return;
  }

  v71 = a1;
  do
  {
    v6 = *v5;
    *&__src[16] = *(v5 + 2);
    *__src = v6;
    v94 = 0;
    v95 = 0;
    v93 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v93, *(v5 + 3), *(v5 + 4), (*(v5 + 4) - *(v5 + 3)) >> 2);
    std::set<int>::set[abi:ne200100](&v96, (v5 + 3));
    std::set<int>::set[abi:ne200100](v98, v5 + 72);
    v7 = *a4;
    v8 = a4[1];
    while (v7 != v8)
    {
      v9 = v7[1];
      if (*v7 != v9 && *(v9 - 4) == a3)
      {
        if (*(v9 - 9) < 0)
        {
          std::string::__init_copy_ctor_external(&v91, *(v9 - 32), *(v9 - 24));
        }

        else
        {
          v10 = *(v9 - 32);
          v91.__r_.__value_.__r.__words[2] = *(v9 - 16);
          *&v91.__r_.__value_.__l.__data_ = v10;
        }

        v11 = *(v9 - 8);
        v12 = *v93;
        __p[0] = v91.__r_.__value_.__l.__size_;
        v13 = v91.__r_.__value_.__r.__words[0];
        *(__p + 7) = *(&v91.__r_.__value_.__r.__words[1] + 7);
        v14 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
        memset(&v91, 0, sizeof(v91));
        v15 = v7[1];
        if (*(v15 - 9) < 0)
        {
          operator delete(*(v15 - 32));
        }

        *(v15 - 32) = v13;
        *(v15 - 24) = __p[0];
        *(v15 - 17) = *(__p + 7);
        *(v15 - 9) = v14;
        *(v15 - 8) = v11;
        *(v15 - 4) = v12;
        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }
      }

      v7 += 6;
    }

    v16 = v5 + 6;
    v17 = *&__src[4];
    if ((*&__src[4] - 5) < 3)
    {
      v19 = *a4;
      v18 = a4[1];
      if (*a4 != v18)
      {
        do
        {
          v20 = *&__src[16];
          if (*&__src[16] >= 0x7FFFFFFFFFFFFFF8uLL)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (*&__src[16] >= 0x17uLL)
          {
            operator new();
          }

          HIBYTE(v90) = __src[16];
          if (*&__src[16])
          {
            memmove(&__dst, *&__src[8], *&__src[16]);
          }

          *(&__dst + v20) = 0;
          v21 = (a3 << 32) | *v93;
          v22 = v90;
          *__p = __dst;
          __dst = 0uLL;
          v90 = 0;
          *&v101 = v22;
          *(&v101 + 1) = v21;
          v23 = *(v19 + 8);
          if (v23 >= *(v19 + 16))
          {
            v25 = std::vector<quasar::Expansion::SegmentData>::__emplace_back_slow_path<quasar::Expansion::SegmentData>(v19, __p);
          }

          else
          {
            v24 = *__p;
            *(v23 + 16) = v101;
            *v23 = v24;
            __p[1] = 0;
            *&v101 = 0;
            __p[0] = 0;
            *(v23 + 24) = *(&v101 + 1);
            v25 = v23 + 32;
          }

          *(v19 + 8) = v25;
          if (SBYTE7(v101) < 0)
          {
            operator delete(__p[0]);
          }

          v19 += 48;
        }

        while (v19 != v18);
        goto LABEL_29;
      }

      v5 += 6;
      goto LABEL_57;
    }

    if (*&__src[4] > 1u)
    {
      if (*&__src[4] == 8)
      {
        v35 = quasar::gLogLevel;
        if (quasar::gLogLevel >= 6)
        {
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Discarding spurious structure tag at position: ", 47);
          v37 = MEMORY[0x1B8C84C00](v36, *__src);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " (spm pos: ", 11);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
          v35 = quasar::gLogLevel;
        }

        v38 = v93;
        v39 = v94;
        while (v38 != v39)
        {
          if (v35 >= 6)
          {
            v40 = *v38;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            *__p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v41 = MEMORY[0x1B8C84C00](__p, v40);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " ", 1);
            quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
            v35 = quasar::gLogLevel;
          }

          v38 += 4;
        }

        if (v35 > 5)
        {
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, ")", 1);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
          v5 = v16;
          goto LABEL_30;
        }

LABEL_29:
        v5 = v16;
LABEL_30:
        v26 = v71;
        goto LABEL_113;
      }

      v5 += 6;
LABEL_57:
      v26 = v71;
      goto LABEL_113;
    }

    v70 = *v93;
    v87 = 0;
    v88 = 0;
    v85 = 0;
    v86 = &v87;
    v83 = 0;
    v84 = 0;
    memset(&v82, 0, sizeof(v82));
    v80[0] = 0;
    v80[1] = 0;
    v27 = v5 + 19;
    v81 = 0;
    do
    {
      if (v16 == v71[1])
      {
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Logic error!", 12);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
      }

      v28 = v16;
      v29 = *(v16 + 1);
      *__src = *v16;
      *&__src[4] = v29;
      *&__src[8] = *(v16 + 8);
      if (__src != v16)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v93, *(v16 + 3), *(v16 + 4), (*(v16 + 4) - *(v16 + 3)) >> 2);
        std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(&v96, *(v16 + 6), v27);
        v29 = *&__src[4];
      }

      if (v29 == 2)
      {
        std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(&v86, v96, v97);
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v83, v93, v94, (v94 - v93) >> 2);
      }

      else
      {
        if (v29 == 5)
        {
          v30 = &v82;
        }

        else
        {
          if (v29 != 6)
          {
            goto LABEL_43;
          }

          v30 = v80;
        }

        std::string::append(v30, *&__src[8], *&__src[16]);
      }

LABEL_43:
      v27 += 12;
      v16 += 6;
    }

    while ((*&__src[4] - 5) < 0xFFFFFFFE);
    if (a2)
    {
      v31 = a4[1];
      v32 = v31 - 48;
      LODWORD(__p[0]) = v70 + 1;
      HIDWORD(__p[0]) = *v83;
      v33 = *(v31 - 40);
      if (v33 >= *(v31 - 32))
      {
        v34 = std::vector<quasar::Expansion::SegmentData>::__emplace_back_slow_path<std::string &,std::pair<int,int>>(v32, &v82, __p);
      }

      else
      {
        std::vector<quasar::Expansion::SegmentData>::__construct_one_at_end[abi:ne200100]<std::string &,std::pair<int,int>>(v32, &v82, __p);
        v34 = v33 + 32;
      }

      *(v31 - 40) = v34;
    }

    else
    {
      v69 = *v93;
      v78 = 0uLL;
      v79 = 0;
      v42 = v88;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      if (v88 != 31)
      {
        v43 = 0;
        v44 = 1 << v88;
        do
        {
          boost::dynamic_bitset<unsigned long,std::allocator<unsigned long>>::dynamic_bitset<int>(__p, v42, v43);
          *(&v73 + 1) = 0;
          v74 = 0;
          *&v73 = &v73 + 8;
          v45 = v86;
          if (v86 != &v87)
          {
            v46 = 0;
            do
            {
              v47 = *(__p[0] + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8));
              v99 = (v45 + 28);
              v48 = std::__tree<std::__value_type<int,quasar::Expansion::SegmentTypeData>,std::__map_value_compare<int,std::__value_type<int,quasar::Expansion::SegmentTypeData>,std::less<int>,true>,std::allocator<std::__value_type<int,quasar::Expansion::SegmentTypeData>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v73, v45 + 7);
              if ((v47 >> v46))
              {
                v49 = 5;
              }

              else
              {
                v49 = 6;
              }

              *(v48 + 8) = v49;
              *(v48 + 36) = 0;
              v50 = v45[1];
              if (v50)
              {
                do
                {
                  v51 = v50;
                  v50 = *v50;
                }

                while (v50);
              }

              else
              {
                do
                {
                  v51 = v45[2];
                  v52 = *v51 == v45;
                  v45 = v51;
                }

                while (!v52);
              }

              ++v46;
              v45 = v51;
            }

            while (v51 != &v87);
          }

          std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::push_back[abi:ne200100](&v75, &v73);
          std::__tree<int>::destroy(&v73, *(&v73 + 1));
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          ++v43;
        }

        while (v43 != v44);
      }

      v54 = *a4;
      v53 = a4[1];
      while (v54 != v53)
      {
        __p[0] = 0;
        __p[1] = 0;
        *&v101 = 0;
        v73 = 0uLL;
        v74 = 0;
        v56 = v75;
        v55 = v76;
        if (v75 != v76)
        {
          v57 = v54 + 4;
          do
          {
            v58 = *v56;
            if (*v56 == v56 + 1)
            {
LABEL_95:
              if (quasar::manyToOneAssignments(v56) == 5)
              {
                v64 = __p;
              }

              else
              {
                v64 = &v73;
              }

              std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::push_back[abi:ne200100](v64, v56);
            }

            else
            {
              while (1)
              {
                if (*v57)
                {
                  v59 = *(v58 + 7);
                  v60 = v54 + 4;
                  v61 = *v57;
                  do
                  {
                    if (*(v61 + 28) >= v59)
                    {
                      v60 = v61;
                    }

                    v61 = *(v61 + 8 * (*(v61 + 28) < v59));
                  }

                  while (v61);
                  if (v60 != v57 && v59 >= *(v60 + 7) && *(v60 + 8) != *(v58 + 8))
                  {
                    break;
                  }
                }

                v62 = v58[1];
                if (v62)
                {
                  do
                  {
                    v63 = v62;
                    v62 = *v62;
                  }

                  while (v62);
                }

                else
                {
                  do
                  {
                    v63 = v58[2];
                    v52 = *v63 == v58;
                    v58 = v63;
                  }

                  while (!v52);
                }

                v58 = v63;
                if (v63 == v56 + 1)
                {
                  goto LABEL_95;
                }
              }
            }

            v56 += 3;
          }

          while (v56 != v55);
        }

        if (v17 == 1)
        {
          quasar::markAssignmentAsReversed(__p);
          quasar::markAssignmentAsReversed(&v73);
          v65 = *__p;
          *__p = v73;
          v73 = v65;
          v66 = v101;
          *&v101 = v74;
          v74 = v66;
        }

        quasar::extendExpansions(&v78, __p, v54, &v82, v70 + 1, *v83);
        quasar::extendExpansions(&v78, &v73, v54, v80, *(v84 - 1) + 1, v69);
        v99 = &v73;
        std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::__destroy_vector::operator()[abi:ne200100](&v99);
        *&v73 = __p;
        std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::__destroy_vector::operator()[abi:ne200100](&v73);
        v54 += 6;
      }

      std::vector<quasar::Expansion>::__vdeallocate(a4);
      *a4 = v78;
      a4[2] = v79;
      v79 = 0;
      v78 = 0uLL;
      __p[0] = &v75;
      std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = &v78;
      std::vector<quasar::Expansion>::__destroy_vector::operator()[abi:ne200100](__p);
    }

    v26 = v71;
    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80[0]);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }

    v5 = v28 + 6;
    std::__tree<int>::destroy(&v86, v87);
LABEL_113:
    std::__tree<int>::destroy(v98, v98[1]);
    std::__tree<int>::destroy(&v96, *v97);
    if (v93)
    {
      v94 = v93;
      operator delete(v93);
    }
  }

  while (v5 < v26[1]);
}

void sub_1B56A0F7C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B56A10C0);
}

void sub_1B56A0FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void ***a58, char a59)
{
  a58 = &a17;
  std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::__destroy_vector::operator()[abi:ne200100](&a58);
  a17 = &a59;
  std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::__destroy_vector::operator()[abi:ne200100](&a17);
  JUMPOUT(0x1B56A102CLL);
}

void sub_1B56A0FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a64 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B56A0FCCLL);
}

void sub_1B56A0FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  std::__tree<int>::destroy(&a54, a55);
  std::__tree<int>::destroy(&a51, a52);
  if (__p)
  {
    operator delete(__p);
  }

  a59 = a11;
  std::vector<quasar::Expansion>::__destroy_vector::operator()[abi:ne200100](&a59);
  _Unwind_Resume(a1);
}

void sub_1B56A0FD4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, char a41, void *a42)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a38)
  {
    operator delete(a38);
  }

  std::__tree<int>::destroy(&a41, a42);
  JUMPOUT(0x1B56A1088);
}

uint64_t std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::__emplace_back_slow_path<std::map<int,quasar::Expansion::SegmentTypeData> const&>(a1, a2);
  }

  else
  {
    std::map<int,quasar::Expansion::SegmentTypeData>::map[abi:ne200100](a1[1], a2);
    result = v3 + 24;
    a1[1] = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void quasar::putPhraseWithAllDefaultsFirst(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    while (1)
    {
      v10 = quasar::MetaInfo::structuredPrediction((v6 + 256), a3, a4);
      if (v10)
      {
        break;
      }

LABEL_19:
      v6 += 264;
      if (v6 == v7)
      {
        v6 = v7;
        goto LABEL_21;
      }
    }

    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    while (v11 != v12)
    {
      v13 = *(v11 + 23);
      if (v13 >= 0)
      {
        v14 = *(v11 + 23);
      }

      else
      {
        v14 = *(v11 + 8);
      }

      v15 = *(v11 + 47);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v11 + 32);
      }

      if (v14 != v15)
      {
        goto LABEL_19;
      }

      v17 = v13 >= 0 ? v11 : *v11;
      v18 = v16 >= 0 ? (v11 + 24) : *(v11 + 24);
      if (memcmp(v17, v18, v14))
      {
        goto LABEL_19;
      }

      v11 += 80;
    }
  }

LABEL_21:
  v19 = v6 - *a1;
  if (v6 != *a1 && v6 != a1[1])
  {
    std::swap[abi:ne200100]<quasar::TranslationPhraseInternal>(v6, *a1);
    v20 = *a2;
    v21 = *a2 + v19;

    std::swap[abi:ne200100]<quasar::TranslationPhraseInternal>(v20, v21);
  }
}

void std::swap[abi:ne200100]<quasar::TranslationPhraseInternal>(uint64_t a1, uint64_t a2)
{
  quasar::TranslationPhraseInternal::TranslationPhraseInternal(v7, a1);
  quasar::TranslationPhrase::operator=(a1, a2);
  std::vector<quasar::TranslationTokenInternal>::__vdeallocate((a1 + 200));
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 200) = 0;
  *(a1 + 224) = *(a2 + 224);
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  v4 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v4;
  *(a2 + 255) = 0;
  *(a2 + 232) = 0;
  quasar::MetaInfo::operator=((a1 + 256), (a2 + 256));
  quasar::TranslationPhrase::operator=(a2, v7);
  std::vector<quasar::TranslationTokenInternal>::__vdeallocate((a2 + 200));
  *(a2 + 200) = v18;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  v18 = 0uLL;
  *(a2 + 216) = v5;
  *(a2 + 224) = v6;
  if (*(a2 + 255) < 0)
  {
    operator delete(*(a2 + 232));
  }

  *(a2 + 232) = __p;
  *(a2 + 248) = v22;
  HIBYTE(v22) = 0;
  LOBYTE(__p) = 0;
  quasar::MetaInfo::operator=((a2 + 256), &v23);
  quasar::MetaInfo::~MetaInfo(&v23);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  v24 = &v18;
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = &v17;
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v24);
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v14[24] == 1)
  {
    v24 = v14;
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v24);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  v24 = &v8;
  std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](&v24);
}

void *quasar::StructuredPredictionBlock::processBody(quasar::StructuredPredictionBlock *this)
{
  result = quasar::ProcessingInput::getValue((this + 2400));
  if (*result != result[1])
  {
    Value = quasar::ProcessingInput::getValue((this + 2400));
    quasar::TranslationPhraseInternal::isFromPhrasebook(*Value);
  }

  return result;
}

void sub_1B56A2FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  quasar::PTree::~PTree(&a69);
  quasar::PTree::~PTree(&STACK[0x6B0]);
  quasar::PTree::~PTree(&STACK[0x280]);
  STACK[0x280] = &STACK[0x3F8];
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  STACK[0x280] = &STACK[0x410];
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  STACK[0x280] = &STACK[0x428];
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  std::__tree<int>::destroy(&STACK[0x440], STACK[0x448]);
  std::__tree<int>::destroy(&STACK[0x458], STACK[0x460]);
  std::__tree<int>::destroy(&STACK[0x470], STACK[0x478]);
  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(STACK[0x488]);
  }

  quasar::MetaInfo::~MetaInfo(&STACK[0x5A0]);
  if (SLOBYTE(STACK[0x59F]) < 0)
  {
    operator delete(STACK[0x588]);
  }

  STACK[0x280] = &STACK[0x568];
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  STACK[0x280] = &STACK[0x550];
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  v70 = STACK[0x538];
  if (STACK[0x538])
  {
    STACK[0x540] = v70;
    operator delete(v70);
  }

  if (LOBYTE(STACK[0x518]) == 1)
  {
    STACK[0x280] = &STACK[0x500];
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  }

  if (LOBYTE(STACK[0x4F8]) == 1 && SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(STACK[0x4C8]);
  }

  STACK[0x280] = &STACK[0x4B0];
  std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  quasar::MetaInfo::~MetaInfo(&STACK[0x6A8]);
  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(STACK[0x690]);
  }

  STACK[0x280] = a9;
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  STACK[0x280] = &STACK[0x658];
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  v71 = STACK[0x640];
  if (STACK[0x640])
  {
    STACK[0x648] = v71;
    operator delete(v71);
  }

  if (LOBYTE(STACK[0x620]) == 1)
  {
    STACK[0x280] = &STACK[0x608];
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  }

  if (LOBYTE(STACK[0x600]) == 1 && SLOBYTE(STACK[0x5FF]) < 0)
  {
    operator delete(STACK[0x5E8]);
  }

  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
  }

  STACK[0x280] = &STACK[0x5B8];
  std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  _Unwind_Resume(a1);
}

void quasar::StructuredPredictionBlock::init(quasar::StructuredPredictionBlock *this)
{
  v2 = quasar::OptionValue<std::string>::value(this + 236);
  v3 = *(v2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(v2 + 8);
  }

  if (v3)
  {
    quasar::WordSetFileFactory::get(v2, &v6);
    v4 = v6;
    v6 = 0uLL;
    v5 = *(this + 329);
    *(this + 164) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (*(&v6 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
      }
    }
  }
}

void quasar::ConfiguredProcessingBlock<quasar::StructuredPredictionOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
{
  v3 = (*(*a1 + 8))(a1);
  (**v3)(&v10);
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    do
    {
      v6 = *v4;
      v7 = a2[1];
      v8 = *a2;
      v9 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      quasar::OptionValueBase::setContextProvider(v6, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
    operator delete(v4);
  }
}

void sub_1B56A3828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::StructuredPredictionBlock::~StructuredPredictionBlock(quasar::StructuredPredictionBlock *this)
{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 2640));
}

{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 2640));

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::StructuredPredictionBlock::inputs@<X0>(quasar::StructuredPredictionBlock *this@<X0>, void *a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*quasar::OptionValue<BOOL>::value(this + 163) == 1)
  {
    v8 = this + 2344;
    v9 = this + 2400;
    v10 = this + 2456;
    v11 = this + 2512;
    v12 = this + 2568;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v4 = &v13;
    v5 = a2;
    v6 = 5;
  }

  else
  {
    v8 = this + 2344;
    v9 = this + 2400;
    v10 = this + 2456;
    v11 = this + 2512;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v4 = &v12;
    v5 = a2;
    v6 = 4;
  }

  return std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(v5, &v8, v4, v6);
}

void non-virtual thunk toquasar::StructuredPredictionBlock::~StructuredPredictionBlock(char **this)
{

  quasar::ProcessingBlock::~ProcessingBlock(this + 38);
}

{
  quasar::ProcessingBlock::~ProcessingBlock(this + 38);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::StructuredPredictionBlock::~StructuredPredictionBlock(quasar::StructuredPredictionBlock *this)
{
  v2 = (v1 + 2640);

  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  v1 = (this + *(*this - 24));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 330);

  JUMPOUT(0x1B8C85350);
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_3mapIiNS_4pairIiiEENS_4lessIiEENS_9allocatorINS4_IKiS5_EEEEEENS3_IiiS7_NS8_INS4_IS9_iEEEEEEEEC2B8ne200100IJLm0ELm1EEJSC_SF_EJEJEJRSC_RSF_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSL_IJDpT2_EEEDpOT3_(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = std::map<int,std::pair<int,int>>::map[abi:ne200100](a1, a2);
  std::map<int,int>::map[abi:ne200100](v5 + 3, a3);
  return a1;
}

void *std::map<int,std::pair<int,int>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<int,std::pair<int,int>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,std::pair<int,int>>,std::__tree_node<std::__value_type<int,std::pair<int,int>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<int,std::pair<int,int>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,std::pair<int,int>>,std::__tree_node<std::__value_type<int,std::pair<int,int>>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_hint_unique_key_args<int,std::pair<int const,std::pair<int,int>> const&>(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_hint_unique_key_args<int,std::pair<int const,std::pair<int,int>> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<quasar::PronType,int>,std::__map_value_compare<quasar::PronType,std::__value_type<quasar::PronType,int>,std::less<quasar::PronType>,true>,std::allocator<std::__value_type<quasar::PronType,int>>>::__find_equal<quasar::PronType>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

quasar::OptionValueBase *quasar::OptionValueBase::OptionValueBase(quasar::OptionValueBase *this, const quasar::OptionValueBase *a2)
{
  *this = &unk_1F2D08890;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = *(a2 + 2);
    *(this + 6) = *(a2 + 6);
    *(this + 2) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    *(this + 9) = *(a2 + 9);
    *(this + 56) = v6;
  }

  *(this + 20) = *(a2 + 20);
  v7 = *(a2 + 12);
  *(this + 11) = *(a2 + 11);
  *(this + 12) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_1B56A3E30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void quasar::Expansion::~Expansion(quasar::Expansion *this)
{
  std::__tree<int>::destroy(this + 24, *(this + 4));
  v2 = this;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void quasar::StructuredPredictionBlock::~StructuredPredictionBlock(quasar::StructuredPredictionBlock *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[5];
  *(this + 292) = a2[6];
  v5 = *(this + 329);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v7 = (this + 2600);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 2591) < 0)
  {
    operator delete(*(this + 321));
  }

  v7 = (this + 2544);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 2535) < 0)
  {
    operator delete(*(this + 314));
  }

  v7 = (this + 2488);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 2479) < 0)
  {
    operator delete(*(this + 307));
  }

  v7 = (this + 2432);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 2423) < 0)
  {
    operator delete(*(this + 300));
  }

  v7 = (this + 2376);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 2367) < 0)
  {
    operator delete(*(this + 293));
  }

  v6 = a2[1];
  *this = v6;
  *(this + *(v6 - 24)) = a2[2];
  quasar::StructuredPredictionOptions::~StructuredPredictionOptions((this + 8));
}

uint64_t std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__emplace_back_slow_path<kaldi::quasar::TranslationUtil::NbestElement>(uint64_t a1, const kaldi::quasar::TranslationUtil::NbestElement *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xF0F0F0F0F0F0F0)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 4) >= 0x78787878787878)
  {
    v6 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>>(a1, v6);
  }

  v13 = 0;
  v14 = 272 * v2;
  kaldi::quasar::TranslationUtil::NbestElement::NbestElement((272 * v2), a2);
  v15 = 272 * v2 + 272;
  v7 = *(a1 + 8);
  v8 = (272 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>,kaldi::quasar::TranslationUtil::NbestElement*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::quasar::TranslationUtil::NbestElement>::~__split_buffer(&v13);
  return v12;
}

void sub_1B56A4278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::TranslationUtil::NbestElement>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::vector<kaldi::quasar::TranslationUtil::PathElement>::__construct_one_at_end[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement>(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v2 + 24) = *(a2 + 6);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 32) = a2[2];
  *(v2 + 48) = *(a2 + 6);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v4 = *(a2 + 56);
  *(v2 + 72) = *(a2 + 9);
  *(v2 + 56) = v4;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 7) = 0;
  *(v2 + 80) = *(a2 + 10);
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 88) = 0;
  *(v2 + 88) = *(a2 + 88);
  *(v2 + 104) = *(a2 + 13);
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 112) = a2[7];
  *(v2 + 128) = *(a2 + 16);
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 136) = *(a2 + 136);
  *(v2 + 152) = *(a2 + 19);
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 160) = a2[10];
  *(v2 + 176) = *(a2 + 22);
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 184) = *(a2 + 184);
  *(v2 + 200) = *(a2 + 25);
  *(a2 + 23) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  *(v2 + 224) = 0;
  result = a2[13];
  *(v2 + 208) = result;
  *(v2 + 224) = *(a2 + 28);
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 26) = 0;
  *(v2 + 232) = *(a2 + 58);
  *(a1 + 8) = v2 + 240;
  return result;
}

uint64_t std::vector<kaldi::quasar::TranslationUtil::PathElement>::__emplace_back_slow_path<kaldi::quasar::TranslationUtil::PathElement>(uint64_t a1, __int128 *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v6 = 0x111111111111111;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>>(a1, v6);
  }

  v7 = 240 * v2;
  v16 = 0;
  v17 = v7;
  v18 = 240 * v2;
  v19 = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = *(a2 + 6);
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = a2[2];
  *(v7 + 48) = *(a2 + 6);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v9 = *(a2 + 56);
  *(v7 + 72) = *(a2 + 9);
  *(v7 + 56) = v9;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 7) = 0;
  *(v7 + 80) = *(a2 + 10);
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 88) = 0;
  *(v7 + 88) = *(a2 + 88);
  *(v7 + 104) = *(a2 + 13);
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 112) = a2[7];
  *(v7 + 128) = *(a2 + 16);
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(v7 + 136) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 136) = *(a2 + 136);
  *(v7 + 152) = *(a2 + 19);
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(v7 + 160) = 0;
  *(v7 + 168) = 0;
  *(v7 + 176) = 0;
  *(v7 + 160) = a2[10];
  *(v7 + 176) = *(a2 + 22);
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(v7 + 184) = 0;
  *(v7 + 192) = 0;
  *(v7 + 200) = 0;
  *(v7 + 184) = *(a2 + 184);
  *(v7 + 200) = *(a2 + 25);
  *(a2 + 23) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(v7 + 208) = 0;
  *(v7 + 216) = 0;
  *(v7 + 224) = 0;
  *(v7 + 208) = a2[13];
  *(v7 + 224) = *(a2 + 28);
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 26) = 0;
  *(v7 + 232) = *(a2 + 58);
  v18 += 240;
  v10 = v18;
  v11 = *(a1 + 8);
  v12 = (v17 + *a1 - v11);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>,kaldi::quasar::TranslationUtil::PathElement*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v19;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  std::__split_buffer<kaldi::quasar::TranslationUtil::PathElement>::~__split_buffer(&v16);
  return v10;
}

void sub_1B56A45F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<kaldi::quasar::TranslationUtil::PathElement>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,quasar::SegmentType,std::string_view>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,false>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 3);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(v9, v9 + 3, a2 - 3);
          return;
        case 4uLL:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(v9, v9 + 3, v9 + 6, a2 - 3);
          return;
        case 5uLL:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(v9, (v9 + 24), (v9 + 48), (v9 + 72), (a2 - 24));
          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v27, a2 - 6, v9))
        {
          v26 = *v9;
          *v9 = *(a2 - 3);
          *(a2 - 3) = v26;
          v27 = *(v9 + 8);
          *(v9 + 8) = *(a2 - 1);
          *(a2 - 1) = v27;
        }

        return;
      }
    }

    if (v12 <= 575)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *>(v9, a2);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      break;
    }

    v14 = v13 >> 1;
    v15 = &v9[24 * (v13 >> 1)];
    if (v12 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(&v9[24 * v14], v9, a2 - 3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(v9, &v9[24 * v14], a2 - 3);
      v16 = 3 * v14;
      v17 = &v9[24 * v14 - 24];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(v9 + 6, v17, a2 - 6);
      v18 = &v9[8 * v16 + 24];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>((a1 + 48), v18, a2 - 9);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(v17, v15, v18);
      v19 = *a1;
      *a1 = *v15;
      *v15 = v19;
      v27 = *(a1 + 8);
      *(a1 + 8) = *(v15 + 8);
      *(v15 + 8) = v27;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if ((std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v27, (a1 - 24), a1) & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<int,quasar::SegmentType,std::string_view> *,std::__less<void,void> &>(a1, a2);
      goto LABEL_22;
    }

LABEL_17:
    v21.n128_f64[0] = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<int,quasar::SegmentType,std::string_view> *,std::__less<void,void> &>(a1, a2);
    v22 = v20;
    if ((v23 & 1) == 0)
    {
      goto LABEL_20;
    }

    v24 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *>(a1, v20);
    v9 = v22 + 24;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *>((v22 + 24), a2))
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v24)
    {
LABEL_20:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,false>(a1, v22, a3, -v11, a5 & 1, v21);
      v9 = v22 + 24;
LABEL_22:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v9 != a2)
  {
    std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,std::tuple<int,quasar::SegmentType,std::string_view> *>(v9, a2, a2, a3);
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(int *a1, uint64_t *a2, uint64_t *a3)
{
  if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v17, a2, a1))
  {
    v6 = std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v17, a3, a2);
    v8 = *a1;
    v7 = a1[1];
    if (v6)
    {
      *a1 = *a3;
      *a3 = v8;
      *(a3 + 1) = v7;
      v9 = *(a1 + 2);
      *(a1 + 2) = *(a3 + 1);
LABEL_9:
      *(a3 + 1) = v9;
      return 1;
    }

    *a1 = *a2;
    *a2 = v8;
    *(a2 + 1) = v7;
    v15 = *(a1 + 2);
    *(a1 + 2) = *(a2 + 1);
    *(a2 + 1) = v15;
    if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v17, a3, a2))
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v9 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      goto LABEL_9;
    }
  }

  else
  {
    result = std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v17, a3, a2);
    if (!result)
    {
      return result;
    }

    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    v12 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v12;
    if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v17, a2, a1))
    {
      v13 = *a1;
      *a1 = *a2;
      *a2 = v13;
      v14 = *(a1 + 2);
      *(a1 + 2) = *(a2 + 1);
      *(a2 + 1) = v14;
    }
  }

  return 1;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(a1, a2, a3);
  if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v14, a4, a3))
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    v10 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 1);
    *(a4 + 1) = v10;
    if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v14, a3, a2))
    {
      v11 = *a2;
      *a2 = *a3;
      *a3 = v11;
      v12 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v12;
      if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v14, a2, a1))
      {
        v13 = *a1;
        *a1 = *a2;
        *a2 = v13;
        result = *(a1 + 1);
        *(a1 + 1) = *(a2 + 1);
        *(a2 + 1) = result;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(a1, a2, a3, a4);
  if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v18, a5, a4))
  {
    v11 = *a4;
    *a4 = *a5;
    *a5 = v11;
    v12 = *(a4 + 8);
    *(a4 + 8) = *(a5 + 8);
    *(a5 + 8) = v12;
    if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v18, a4, a3))
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      v14 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 8);
      *(a4 + 8) = v14;
      if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v18, a3, a2))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
        v16 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v16;
        if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v18, a2, a1))
        {
          v17 = *a1;
          *a1 = *a2;
          *a2 = v17;
          result = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a2 + 8) = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *>(uint64_t result, _DWORD *a2)
{
  if (result != a2)
  {
    v15 = v2;
    v16 = v3;
    v5 = result;
    v6 = (result + 24);
    if ((result + 24) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v8;
        v8 = v6;
        result = std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v13, v6, v9);
        if (result)
        {
          *v13 = *v8;
          *&v13[16] = *(v8 + 2);
          v10 = v7;
          while (1)
          {
            v11 = v5 + v10;
            *(v11 + 3) = *(v5 + v10);
            *(v11 + 2) = *(v5 + v10 + 8);
            if (!v10)
            {
              break;
            }

            v10 -= 24;
            result = std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v14, v13, (v5 + v10));
            if ((result & 1) == 0)
            {
              v12 = (v5 + v10 + 24);
              goto LABEL_10;
            }
          }

          v12 = v5;
LABEL_10:
          *v12 = *v13;
          *(v11 + 8) = *&v13[8];
        }

        v6 = v8 + 6;
        v7 += 24;
      }

      while (v8 + 6 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *>(uint64_t result, _DWORD *a2)
{
  if (result != a2)
  {
    v12 = v2;
    v13 = v3;
    v5 = result;
    v6 = (result + 24);
    if ((result + 24) != a2)
    {
      v7 = result - 24;
      do
      {
        v8 = v5;
        v5 = v6;
        result = std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v10, v6, v8);
        if (result)
        {
          *v10 = *v5;
          *&v10[16] = *(v5 + 2);
          v9 = v7;
          do
          {
            *(v9 + 48) = *(v9 + 24);
            *(v9 + 56) = *(v9 + 32);
            result = std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v11, v10, v9);
            v9 -= 24;
          }

          while ((result & 1) != 0);
          *(v9 + 48) = *v10;
          *(v9 + 56) = *&v10[8];
        }

        v6 = v5 + 6;
        v7 += 24;
      }

      while (v5 + 6 != a2);
    }
  }

  return result;
}

_DWORD *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<int,quasar::SegmentType,std::string_view> *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  *v9 = *a1;
  *&v9[16] = *(a1 + 16);
  if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v10, v9, (a2 - 24)))
  {
    v4 = a1;
    do
    {
      v4 += 6;
    }

    while ((std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v10, v9, v4) & 1) == 0);
  }

  else
  {
    v5 = (a1 + 24);
    do
    {
      v4 = v5;
      if (v5 >= v2)
      {
        break;
      }

      v6 = std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v10, v9, v5);
      v5 = v4 + 6;
    }

    while (!v6);
  }

  if (v4 < v2)
  {
    do
    {
      v2 -= 24;
    }

    while ((std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v10, v9, v2) & 1) != 0);
  }

  while (v4 < v2)
  {
    v7 = *v4;
    *v4 = *v2;
    *v2 = v7;
    v10 = *(v4 + 2);
    *(v4 + 2) = *(v2 + 8);
    *(v2 + 8) = v10;
    do
    {
      v4 += 6;
    }

    while (!std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v10, v9, v4));
    do
    {
      v2 -= 24;
    }

    while ((std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v10, v9, v2) & 1) != 0);
  }

  if (v4 - 6 != a1)
  {
    *a1 = *(v4 - 3);
    *(a1 + 8) = *(v4 - 1);
  }

  *(v4 - 3) = *v9;
  *(v4 - 1) = *&v9[8];
  return v4;
}

double std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::tuple<int,quasar::SegmentType,std::string_view> *,std::__less<void,void> &>(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  *v10 = *a1;
  *&v10[16] = *(a1 + 16);
  do
  {
    v4 += 24;
  }

  while ((std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v11, (v4 + a1), v10) & 1) != 0);
  v5 = a1 + v4;
  if (v4 == 24)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      a2 -= 6;
    }

    while ((std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v11, a2, v10) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 6;
    }

    while (!std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v11, a2, v10));
  }

  v6 = a1 + v4;
  if (v5 < a2)
  {
    v7 = a2;
    do
    {
      v8 = *v6;
      *v6 = *v7;
      *v7 = v8;
      v11 = *(v6 + 8);
      *(v6 + 8) = *(v7 + 2);
      *(v7 + 2) = v11;
      do
      {
        v6 += 24;
      }

      while ((std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v11, v6, v10) & 1) != 0);
      do
      {
        v7 -= 6;
      }

      while (!std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v11, v7, v10));
    }

    while (v6 < v7);
  }

  if (v6 - 24 != a1)
  {
    *a1 = *(v6 - 24);
    *(a1 + 8) = *(v6 - 16);
  }

  *(v6 - 24) = *v10;
  result = *&v10[8];
  *(v6 - 16) = *&v10[8];
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v15, (a2 - 24), a1))
        {
          v5 = *a1;
          *a1 = *(a2 - 24);
          *(a2 - 24) = v5;
          v6 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 16);
          *(a2 - 16) = v6;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(a1, (a1 + 24), (a2 - 24));
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24));
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24);
      return 1;
  }

LABEL_11:
  v7 = (a1 + 48);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,0>(a1, (a1 + 24), (a1 + 48));
  v8 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v15, v8, v7))
    {
      *v15 = *v8;
      *&v15[16] = *(v8 + 16);
      v11 = v9;
      while (1)
      {
        v12 = a1 + v11;
        *(v12 + 72) = *(a1 + v11 + 48);
        *(v12 + 80) = *(a1 + v11 + 56);
        if (v11 == -48)
        {
          break;
        }

        v11 -= 24;
        if ((std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v16, v15, (v12 + 24)) & 1) == 0)
        {
          v13 = (a1 + v11 + 72);
          goto LABEL_19;
        }
      }

      v13 = a1;
LABEL_19:
      *v13 = *v15;
      *(v12 + 56) = *&v15[8];
      if (++v10 == 8)
      {
        return v8 + 24 == a2;
      }
    }

    v7 = v8;
    v9 += 24;
    v8 += 24;
    if (v8 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    return 1;
  }

  if (*a3 < *a2)
  {
    return 0;
  }

  v6 = a2[1];
  v7 = a3[1];
  if (v6 < v7)
  {
    return 1;
  }

  if (v7 < v6)
  {
    return 0;
  }

  *&v8[1] = v3;
  v9 = v4;
  return std::__tuple_less<1ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v8, a2, a3);
}

uint64_t std::__tuple_less<1ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  v8 = memcmp(v3, v5, v7);
  if (v8)
  {
    if (v8 < 0)
    {
      return 1;
    }
  }

  else if (v4 < v6)
  {
    return 1;
  }

  return 0;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *,std::tuple<int,quasar::SegmentType,std::string_view> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 24 * v10;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *>(a1, a4, v9, v12);
        v12 -= 24;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v23, v13, a1))
        {
          v14 = *v13;
          *v13 = *a1;
          *a1 = v14;
          v15 = *(v13 + 1);
          *(v13 + 1) = *(a1 + 8);
          *(a1 + 8) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *>(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v17 = a2 - 3;
      do
      {
        v19 = *a1;
        v18 = *(a1 + 4);
        v23 = *(a1 + 8);
        v20 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *>(a1, a4, v16);
        if (v17 == v20)
        {
          *v20 = v19;
          *(v20 + 4) = v18;
          *(v20 + 8) = v23;
        }

        else
        {
          *v20 = *v17;
          *(v20 + 8) = *(v17 + 1);
          *v17 = v19;
          *(v17 + 1) = v18;
          *(v17 + 1) = v23;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *>(a1, v20 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v20 + 24 - a1) >> 3));
        }

        v17 -= 3;
      }

      while (v16-- > 2);
    }

    return v13;
  }

  return a3;
}

double std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v20 = v4;
    v21 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v11 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v12 = a1 + 24 * v11;
      v13 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v13 < a3 && std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v18, (a1 + 24 * v11), (v12 + 24)))
      {
        v12 += 24;
        v11 = v13;
      }

      if ((std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v18, v12, v7) & 1) == 0)
      {
        *v18 = *v7;
        *&v18[16] = *(v7 + 16);
        do
        {
          v15 = v12;
          *v7 = *v12;
          *(v7 + 8) = *(v12 + 8);
          if (v9 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = a1 + 24 * v16;
          v17 = 2 * v11 + 2;
          if (v17 < a3)
          {
            if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v19, (a1 + 24 * v16), (v12 + 24)))
            {
              v12 += 24;
              v16 = v17;
            }
          }

          v7 = v15;
          v11 = v16;
        }

        while (!std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v19, v12, v18));
        *v15 = *v18;
        result = *&v18[8];
        *(v15 + 8) = *&v18[8];
      }
    }
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 24 * v5;
    v8 = v7 + 24;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 < a3)
    {
      v11 = v7 + 48;
      if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v13, (v7 + 24), (v7 + 48)))
      {
        v8 = v11;
        v9 = v10;
      }
    }

    *a1 = *v8;
    *(a1 + 8) = *(v8 + 8);
    a1 = v8;
    v5 = v9;
  }

  while (v9 <= v6);
  return v8;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<int,quasar::SegmentType,std::string_view> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v14 = v4;
    v15 = v5;
    v7 = (a4 - 2) >> 1;
    v8 = a1 + 24 * v7;
    v9 = a2 - 24;
    if (std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(v12, v8, (a2 - 24)))
    {
      *v12 = *v9;
      *&v12[16] = *(v9 + 16);
      do
      {
        v11 = v8;
        *v9 = *v8;
        *(v9 + 8) = *(v8 + 8);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = a1 + 24 * v7;
        v9 = v11;
      }

      while ((std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<int,quasar::SegmentType,std::string_view>,std::tuple<int,quasar::SegmentType,std::string_view>>(&v13, v8, v12) & 1) != 0);
      *v11 = *v12;
      result = *&v12[8];
      *(v11 + 8) = *&v12[8];
    }
  }

  return result;
}

void std::vector<quasar::Segment>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::Segment>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::Segment>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<quasar::Segment>>::destroy[abi:ne200100]<quasar::Segment,0>(a1, i))
  {
    i -= 96;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<quasar::Segment>>::destroy[abi:ne200100]<quasar::Segment,0>(uint64_t a1, uint64_t a2)
{
  std::__tree<int>::destroy(a2 + 72, *(a2 + 80));
  std::__tree<int>::destroy(a2 + 48, *(a2 + 56));
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;

    operator delete(v3);
  }
}

uint64_t std::vector<quasar::Segment>::__emplace_back_slow_path<quasar::Segment>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Segment>>(a1, v6);
  }

  v13 = 0;
  v14 = 96 * v2;
  std::allocator_traits<std::allocator<quasar::Segment>>::construct[abi:ne200100]<quasar::Segment,quasar::Segment,0>(a1, 96 * v2, a2);
  v15 = 96 * v2 + 96;
  v7 = a1[1];
  v8 = 96 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Segment>,quasar::Segment*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::Segment>::~__split_buffer(&v13);
  return v12;
}

void sub_1B56A5A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::Segment>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<quasar::Segment>>::construct[abi:ne200100]<quasar::Segment,quasar::Segment,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  *(a2 + 48) = *(a3 + 48);
  v4 = (a3 + 56);
  v5 = *(a3 + 56);
  *(a2 + 56) = v5;
  v6 = a2 + 56;
  v7 = *(a3 + 64);
  *(a2 + 64) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a3 + 48) = v4;
    *v4 = 0;
    *(a3 + 64) = 0;
  }

  else
  {
    *(a2 + 48) = v6;
  }

  *(a2 + 72) = *(a3 + 72);
  v8 = (a3 + 80);
  v9 = *(a3 + 80);
  *(a2 + 80) = v9;
  v10 = a2 + 80;
  v11 = *(a3 + 88);
  *(a2 + 88) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *(a3 + 72) = v8;
    *v8 = 0;
    *(a3 + 88) = 0;
  }

  else
  {
    *(a2 + 72) = v10;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Segment>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Segment>,quasar::Segment*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::allocator_traits<std::allocator<quasar::Segment>>::construct[abi:ne200100]<quasar::Segment,quasar::Segment,0>(a1, a4, v7);
      v7 += 96;
      a4 = v12 + 96;
      v12 += 96;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::Segment>>::destroy[abi:ne200100]<quasar::Segment,0>(a1, v5);
      v5 += 96;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Segment>,quasar::Segment*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Segment>,quasar::Segment*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Segment>,quasar::Segment*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Segment>,quasar::Segment*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 96;
      std::allocator_traits<std::allocator<quasar::Segment>>::destroy[abi:ne200100]<quasar::Segment,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<quasar::Segment>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::Segment>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::Segment>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    std::allocator_traits<std::allocator<quasar::Segment>>::destroy[abi:ne200100]<quasar::Segment,0>(v5, v4 - 96);
  }
}

void *std::map<int,quasar::Expansion::SegmentTypeData>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<int,quasar::Expansion::SegmentTypeData>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,quasar::Expansion::SegmentTypeData>,std::__tree_node<std::__value_type<int,quasar::Expansion::SegmentTypeData>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<int,quasar::Expansion::SegmentTypeData>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,quasar::Expansion::SegmentTypeData>,std::__tree_node<std::__value_type<int,quasar::Expansion::SegmentTypeData>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<int,quasar::Expansion::SegmentTypeData>,std::__map_value_compare<int,std::__value_type<int,quasar::Expansion::SegmentTypeData>,std::less<int>,true>,std::allocator<std::__value_type<int,quasar::Expansion::SegmentTypeData>>>::__emplace_hint_unique_key_args<int,std::pair<int const,quasar::Expansion::SegmentTypeData> const&>(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t std::__tree<std::__value_type<int,quasar::Expansion::SegmentTypeData>,std::__map_value_compare<int,std::__value_type<int,quasar::Expansion::SegmentTypeData>,std::less<int>,true>,std::allocator<std::__value_type<int,quasar::Expansion::SegmentTypeData>>>::__emplace_hint_unique_key_args<int,std::pair<int const,quasar::Expansion::SegmentTypeData> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<quasar::PronType,int>,std::__map_value_compare<quasar::PronType,std::__value_type<quasar::PronType,int>,std::less<quasar::PronType>,true>,std::allocator<std::__value_type<quasar::PronType,int>>>::__find_equal<quasar::PronType>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<int,quasar::Expansion::SegmentTypeData>,std::__map_value_compare<int,std::__value_type<int,quasar::Expansion::SegmentTypeData>,std::less<int>,true>,std::allocator<std::__value_type<int,quasar::Expansion::SegmentTypeData>>>::__emplace_unique_key_args<int,int const&,quasar::Expansion::SegmentTypeData&>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t std::vector<quasar::Expansion>::__emplace_back_slow_path<std::vector<quasar::Expansion::SegmentData> const&,std::map<int,quasar::Expansion::SegmentTypeData> &>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Expansion>>(a1, v7);
  }

  v14 = 0;
  v15 = 48 * v3;
  std::allocator<quasar::Expansion>::construct[abi:ne200100]<quasar::Expansion,std::vector<quasar::Expansion::SegmentData> const&,std::map<int,quasar::Expansion::SegmentTypeData> &>(a1, 48 * v3, a2, a3);
  v16 = 48 * v3 + 48;
  v8 = a1[1];
  v9 = (48 * v3 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Expansion>,quasar::Expansion*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<quasar::Expansion>::~__split_buffer(&v14);
  return v13;
}

void sub_1B56A60EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::Expansion>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::Expansion>::construct[abi:ne200100]<quasar::Expansion,std::vector<quasar::Expansion::SegmentData> const&,std::map<int,quasar::Expansion::SegmentTypeData> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v14 = 0uLL;
  v15 = 0;
  std::vector<quasar::Expansion::SegmentData>::__init_with_size[abi:ne200100]<quasar::Expansion::SegmentData*,quasar::Expansion::SegmentData*>(&v14, *a3, a3[1], (a3[1] - *a3) >> 5);
  std::map<int,quasar::Expansion::SegmentTypeData>::map[abi:ne200100](&v11, a4);
  *a2 = v14;
  v6 = v15;
  v15 = 0;
  v14 = 0uLL;
  v8 = v11;
  v7 = v12;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
  v9 = a2 + 32;
  v10 = v13;
  *(a2 + 40) = v13;
  if (v10)
  {
    v7[2] = v9;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
    v7 = 0;
  }

  else
  {
    *(a2 + 24) = v9;
  }

  std::__tree<int>::destroy(&v11, v7);
  v16 = &v14;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void sub_1B56A61C8(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100]((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::Expansion::SegmentData>::__init_with_size[abi:ne200100]<quasar::Expansion::SegmentData*,quasar::Expansion::SegmentData*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::EuclidNeighbor>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B56A6248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::Expansion::SegmentData>,quasar::Expansion::SegmentData*,quasar::Expansion::SegmentData*,quasar::Expansion::SegmentData*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v4[1].__r_.__value_.__r.__words[0] = *(v6 + 3);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Expansion::SegmentData>,quasar::Expansion::SegmentData*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Expansion::SegmentData>,quasar::Expansion::SegmentData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Expansion>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Expansion>,quasar::Expansion*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v7 = a2;
    do
    {
      std::allocator<quasar::Expansion>::construct[abi:ne200100]<quasar::Expansion,quasar::Expansion>(a1, a4, v7);
      v7 += 48;
      a4 = v14 + 6;
      v14 += 6;
    }

    while (v7 != a3);
    v12 = 1;
    if (a2 != a3)
    {
      v8 = a2 + 24;
      do
      {
        std::__tree<int>::destroy(v8, *(v8 + 8));
        v15 = (v8 - 24);
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v15);
        v9 = v8 + 24;
        v8 += 48;
      }

      while (v9 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Expansion>,quasar::Expansion*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::allocator<quasar::Expansion>::construct[abi:ne200100]<quasar::Expansion,quasar::Expansion>(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = *a3;
  a2[2] = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  a2[3] = *(a3 + 24);
  v3 = (a3 + 32);
  v4 = *(a3 + 32);
  a2[4] = v4;
  v5 = a2 + 4;
  v6 = *(a3 + 40);
  a2[5] = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    *(a3 + 24) = v3;
    *v3 = 0;
    *(a3 + 40) = 0;
  }

  else
  {
    a2[3] = v5;
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Expansion>,quasar::Expansion*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::Expansion>,std::reverse_iterator<quasar::Expansion*>,std::reverse_iterator<quasar::Expansion*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::Expansion>,std::reverse_iterator<quasar::Expansion*>,std::reverse_iterator<quasar::Expansion*>>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v9[3] = v5;
    v9[4] = v6;
    do
    {
      v8 = a3 - 6;
      std::__tree<int>::destroy((a3 - 3), *(a3 - 2));
      v9[0] = v8;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v9);
      a3 = v8;
    }

    while (v8 != a5);
  }
}

uint64_t std::__split_buffer<quasar::Expansion>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 48);
    *(a1 + 16) = i - 48;
    std::__tree<int>::destroy(i - 24, *(i - 16));
    v6 = v4;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double std::vector<quasar::Expansion::SegmentData>::__construct_one_at_end[abi:ne200100]<std::string const&,std::pair<int,int>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a2, *(a2 + 8));
  }

  else
  {
    v9 = *a2;
  }

  v6 = *a3;
  result = *&v9.__r_.__value_.__l.__data_;
  v8 = v9.__r_.__value_.__r.__words[2];
  *v5 = *&v9.__r_.__value_.__l.__data_;
  *(v5 + 16) = v8;
  *(v5 + 24) = v6;
  *(a1 + 8) = v5 + 32;
  return result;
}

uint64_t std::vector<quasar::Expansion::SegmentData>::__emplace_back_slow_path<std::string const&,std::pair<int,int>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v24 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>>(a1, v9);
  }

  v10 = 32 * v3;
  v21 = 0;
  v22 = v10;
  v23 = v10;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *a2, *(a2 + 8));
    v11 = v22;
    v12 = v23;
  }

  else
  {
    v25 = *a2;
    v11 = v10;
    v12 = v10;
  }

  v13 = *a3;
  v14 = v25.__r_.__value_.__r.__words[2];
  *v10 = *&v25.__r_.__value_.__l.__data_;
  *(v10 + 16) = v14;
  *(v10 + 24) = v13;
  *&v23 = v12 + 32;
  v15 = *(a1 + 8);
  v16 = v11 + *a1 - v15;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Expansion::SegmentData>,quasar::Expansion::SegmentData*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = *(a1 + 16);
  v20 = v23;
  *(a1 + 8) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v21);
  return v20;
}

void sub_1B56A67D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Expansion::SegmentData>,quasar::Expansion::SegmentData*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Expansion::SegmentData>,quasar::Expansion::SegmentData*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::vector<quasar::Expansion>::__init_with_size[abi:ne200100]<quasar::Expansion const*,quasar::Expansion const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::Expansion>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B56A6908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::Expansion>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::Expansion>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Expansion>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::Expansion>,quasar::Expansion const*,quasar::Expansion const*,quasar::Expansion*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 24;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      v7 = v6 - 24;
      std::vector<quasar::Expansion::SegmentData>::__init_with_size[abi:ne200100]<quasar::Expansion::SegmentData*,quasar::Expansion::SegmentData*>(v4, *(v6 - 24), *(v6 - 16), (*(v6 - 16) - *(v6 - 24)) >> 5);
      std::map<int,quasar::Expansion::SegmentTypeData>::map[abi:ne200100](v4 + 3, v6);
      v4 = v12 + 6;
      v12 += 6;
      v6 += 48;
    }

    while (v7 + 48 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Expansion>,quasar::Expansion*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void sub_1B56A6A28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Expansion>,quasar::Expansion*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<quasar::Expansion>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::Expansion>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::Expansion>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 6;
      std::__tree<int>::destroy((v4 - 3), *(v4 - 2));
      v6 = v5;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v6);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<quasar::Expansion::SegmentData>::__emplace_back_slow_path<quasar::Expansion::SegmentData>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>>(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 3);
  *&v18 = 32 * v2 + 32;
  v10 = *(a1 + 8);
  v11 = 32 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Expansion::SegmentData>,quasar::Expansion::SegmentData*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v16);
  return v15;
}

void sub_1B56A6C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

double std::vector<quasar::Expansion::SegmentData>::__construct_one_at_end[abi:ne200100]<std::string &,std::pair<int,int>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a2, *(a2 + 8));
  }

  else
  {
    v9 = *a2;
  }

  v6 = *a3;
  result = *&v9.__r_.__value_.__l.__data_;
  v8 = v9.__r_.__value_.__r.__words[2];
  *v5 = *&v9.__r_.__value_.__l.__data_;
  *(v5 + 16) = v8;
  *(v5 + 24) = v6;
  *(a1 + 8) = v5 + 32;
  return result;
}

uint64_t std::vector<quasar::Expansion::SegmentData>::__emplace_back_slow_path<std::string &,std::pair<int,int>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v24 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>>(a1, v9);
  }

  v10 = 32 * v3;
  v21 = 0;
  v22 = v10;
  v23 = v10;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *a2, *(a2 + 8));
    v11 = v22;
    v12 = v23;
  }

  else
  {
    v25 = *a2;
    v11 = v10;
    v12 = v10;
  }

  v13 = *a3;
  v14 = v25.__r_.__value_.__r.__words[2];
  *v10 = *&v25.__r_.__value_.__l.__data_;
  *(v10 + 16) = v14;
  *(v10 + 24) = v13;
  *&v23 = v12 + 32;
  v15 = *(a1 + 8);
  v16 = v11 + *a1 - v15;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Expansion::SegmentData>,quasar::Expansion::SegmentData*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = *(a1 + 16);
  v20 = v23;
  *(a1 + 8) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v21);
  return v20;
}

void sub_1B56A6DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 24;
        std::__tree<int>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t boost::dynamic_bitset<unsigned long,std::allocator<unsigned long>>::dynamic_bitset<int>(uint64_t a1, int a2, int a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  boost::dynamic_bitset<unsigned long,std::allocator<unsigned long>>::init_from_unsigned_long(a1, a2, a3);
  return a1;
}

void sub_1B56A6EC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void boost::dynamic_bitset<unsigned long,std::allocator<unsigned long>>::init_from_unsigned_long(void *a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x3F) != 0)
  {
    v6 = (a2 >> 6) + 1;
  }

  else
  {
    v6 = a2 >> 6;
  }

  std::vector<double>::resize(a1, v6);
  a1[3] = a2;
  v7 = -1;
  if (a2 < 0x40)
  {
    v7 = ~(-1 << a2);
  }

  v8 = v7 & a3;
  if (v8)
  {
    **a1 = v8;
  }
}

uint64_t *std::__tree<std::__value_type<int,quasar::Expansion::SegmentTypeData>,std::__map_value_compare<int,std::__value_type<int,quasar::Expansion::SegmentTypeData>,std::less<int>,true>,std::allocator<std::__value_type<int,quasar::Expansion::SegmentTypeData>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t std::vector<std::map<int,quasar::Expansion::SegmentTypeData>>::__emplace_back_slow_path<std::map<int,quasar::Expansion::SegmentTypeData> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  std::map<int,quasar::Expansion::SegmentTypeData>::map[abi:ne200100]((24 * v2), a2);
  v15 = 24 * v2 + 24;
  v7 = a1[1];
  v8 = 24 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<int,quasar::Expansion::SegmentTypeData>>,std::map<int,quasar::Expansion::SegmentTypeData>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::map<int,quasar::Expansion::SegmentTypeData>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B56A713C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::map<int,quasar::Expansion::SegmentTypeData>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<int,quasar::Expansion::SegmentTypeData>>,std::map<int,quasar::Expansion::SegmentTypeData>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    while (v5 != a3)
    {
      std::__tree<int>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<int,quasar::Expansion::SegmentTypeData>>,std::map<int,quasar::Expansion::SegmentTypeData>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<int,quasar::Expansion::SegmentTypeData>>,std::map<int,quasar::Expansion::SegmentTypeData>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::map<int,quasar::Expansion::SegmentTypeData>>,std::map<int,quasar::Expansion::SegmentTypeData>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::map<int,quasar::Expansion::SegmentTypeData>>,std::map<int,quasar::Expansion::SegmentTypeData>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      std::__tree<int>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<std::map<int,quasar::Expansion::SegmentTypeData>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::map<int,quasar::Expansion::SegmentTypeData>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::map<int,quasar::Expansion::SegmentTypeData>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<int>::destroy(i - 24, *(i - 16));
  }
}

void std::vector<quasar::Expansion>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<quasar::Expansion>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t quasar::TranslationPhraseInternal::TranslationPhraseInternal(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = a2[4];
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  v4 = *(a2 + 5);
  *(a1 + 56) = a2[7];
  *(a1 + 40) = v4;
  a2[6] = 0;
  a2[7] = 0;
  a2[5] = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v5 = *(a2 + 4);
    *(a1 + 80) = a2[10];
    *(a1 + 64) = v5;
    a2[9] = 0;
    a2[10] = 0;
    a2[8] = 0;
    *(a1 + 88) = 1;
  }

  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = *(a2 + 6);
    *(a1 + 112) = a2[14];
    a2[12] = 0;
    a2[13] = 0;
    a2[14] = 0;
    *(a1 + 120) = 1;
  }

  v6 = *(a2 + 8);
  *(a1 + 143) = *(a2 + 143);
  *(a1 + 128) = v6;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 152) = *(a2 + 19);
  *(a1 + 168) = a2[21];
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = *(a2 + 11);
  *(a1 + 192) = a2[24];
  a2[22] = 0;
  a2[23] = 0;
  a2[24] = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = *(a2 + 25);
  *(a1 + 216) = a2[27];
  a2[25] = 0;
  a2[26] = 0;
  a2[27] = 0;
  *(a1 + 224) = a2[28];
  v7 = *(a2 + 29);
  *(a1 + 248) = a2[31];
  *(a1 + 232) = v7;
  a2[30] = 0;
  a2[31] = 0;
  a2[29] = 0;
  quasar::MetaInfo::MetaInfo((a1 + 256), a2 + 32);
  return a1;
}

void sub_1B56A7500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (v10[255] < 0)
  {
    operator delete(v11[4]);
  }

  a10 = v11;
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&a10);
  quasar::TranslationPhrase::~TranslationPhrase(v10);
  _Unwind_Resume(a1);
}

uint64_t quasar::TranslationPhrase::operator=(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  std::vector<quasar::TranslationToken>::__vdeallocate((a1 + 16));
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = a2[4];
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v5 = *(a2 + 5);
  *(a1 + 56) = a2[7];
  *(a1 + 40) = v5;
  *(a2 + 63) = 0;
  *(a2 + 40) = 0;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 64, a2 + 4);
  std::__optional_storage_base<std::vector<quasar::AlternativeSelectionSpan>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<quasar::AlternativeSelectionSpan>,false>>(a1 + 96, a2 + 6);
  v6 = *(a2 + 8);
  *(a1 + 143) = *(a2 + 143);
  *(a1 + 128) = v6;
  std::vector<int>::__move_assign(a1 + 152, (a2 + 19));
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__vdeallocate((a1 + 176));
  *(a1 + 176) = *(a2 + 11);
  *(a1 + 192) = a2[24];
  a2[22] = 0;
  a2[23] = 0;
  a2[24] = 0;
  return a1;
}

__n128 std::__optional_storage_base<std::vector<quasar::AlternativeSelectionSpan>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<quasar::AlternativeSelectionSpan>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      std::vector<quasar::AlternativeSelectionSpan>::__vdeallocate(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__emplace_back_slow_path<std::string const&,std::string&,quasar::MetaInfo::StructuredPrediction::Span::Range,std::vector<quasar::MetaInfo::StructuredPrediction::Span::Range>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, __n128 *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v9 = 0x333333333333333;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>(a1, v9);
  }

  v16 = 0;
  v17 = 80 * v5;
  std::allocator<quasar::MetaInfo::StructuredPrediction::Span>::construct[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span,std::string const&,std::string&,quasar::MetaInfo::StructuredPrediction::Span::Range,std::vector<quasar::MetaInfo::StructuredPrediction::Span::Range>>(a1, 80 * v5, a2, a3, a4, a5);
  v18 = 80 * v5 + 80;
  v10 = a1[1];
  v11 = 80 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>,quasar::MetaInfo::StructuredPrediction::Span*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::MetaInfo::StructuredPrediction::Span>::~__split_buffer(&v16);
  return v15;
}

void sub_1B56A77EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::MetaInfo::StructuredPrediction::Span>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator<quasar::MetaInfo::StructuredPrediction::Span>::construct[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span,std::string const&,std::string&,quasar::MetaInfo::StructuredPrediction::Span::Range,std::vector<quasar::MetaInfo::StructuredPrediction::Span::Range>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, __n128 *a6)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *a3, *(a3 + 8));
  }

  else
  {
    v14 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a4, *(a4 + 8));
  }

  else
  {
    v13 = *a4;
  }

  v10 = *a5;
  v11 = a6[1].n128_u64[0];
  result = *a6;
  a6->n128_u64[0] = 0;
  a6->n128_u64[1] = 0;
  a6[1].n128_u64[0] = 0;
  *a2 = v14;
  *(a2 + 24) = v13;
  *(a2 + 48) = v10;
  *(a2 + 56) = result;
  *(a2 + 72) = v11;
  return result;
}

void sub_1B56A78C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::set<int>>::__emplace_back_slow_path<std::set<int> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  std::set<int>::set[abi:ne200100]((24 * v2), a2);
  v15 = 24 * v2 + 24;
  v7 = a1[1];
  v8 = 24 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::set<int>>,std::set<int>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::map<int,quasar::Expansion::SegmentTypeData>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B56A7A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::map<int,quasar::Expansion::SegmentTypeData>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::set<int>>,std::set<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    while (v5 != a3)
    {
      std::__tree<int>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<int>>,std::set<int>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<int>>,std::set<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::map<int,quasar::Expansion::SegmentTypeData>>,std::map<int,quasar::Expansion::SegmentTypeData>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t quasar::RecogAudioBuffer::audioAheadOfBuffer(quasar::RecogAudioBuffer *this, uint64_t a2)
{
  if (*(this + 275) == 1)
  {
    if (quasar::gLogLevel >= 5)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v9 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v9);
      v3 = MEMORY[0x1B8C84BB0](&v9, this);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " is waiting for followers so letting them proceed", 49);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v9);
    }
  }

  else
  {
    v5 = *(this + 54);
    if (*(this + 53) + v5 < a2)
    {
      if (*(this + 55) != v5 || *(this + 273) != 1)
      {
        return 0;
      }

      if (quasar::gLogLevel >= 2)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        v9 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v9);
        v6 = MEMORY[0x1B8C84BB0](&v9, this);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " is exhausted even though follower buffer is ahead of ", 54);
        MEMORY[0x1B8C84C10](v7, a2);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&v9);
      }
    }
  }

  return 1;
}

void quasar::RecogAudioBuffer::setLeadBuffer(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 264);
  *(a1 + 256) = v5;
  *(a1 + 264) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (*a2 && (*(a1 + 216) || *(a1 + 220)))
  {
    memset(v7, 0, sizeof(v7));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "leadBuffer must not be changed to another buffer after audio is started");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v7);
  }
}

uint64_t quasar::RecogAudioBuffer::callAddAudioCompletion(uint64_t this, char a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(this + 360))
  {
    v3 = this;
    std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v4, this + 336);
    std::__function::__value_func<void ()(BOOL)>::operator=[abi:ne200100](v3 + 336);
    std::function<void ()(BOOL)>::operator()(v4, a2);
    return std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v4);
  }

  return this;
}

void sub_1B56A7E44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

float quasar::RecogAudioBuffer::audioReadSeconds(quasar::RecogAudioBuffer *this)
{
  std::mutex::lock((this + 24));
  LODWORD(v2) = *(this + 54);
  LODWORD(v3) = *(this + 52);
  v4 = v2 / v3;
  std::mutex::unlock((this + 24));
  return v4;
}

uint64_t quasar::RecogAudioBuffer::addAudio(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 24));
  if (*(a1 + 329) == 1)
  {
    v8 = *(a4 + 24);
    if (*(a1 + 328) == 1)
    {
      if (!v8)
      {
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v71 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v71);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "Error: addAudio was called without a completion, but a previous addAudio was called with a completion.", 102);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v71);
      }
    }

    else if (v8)
    {
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v71);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "Error: addAudio was called with a completion, but a previous addAudio was called without a completion.", 102);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v71);
    }
  }

  else
  {
    if (*(a4 + 24))
    {
      v9 = 257;
    }

    else
    {
      v9 = 256;
    }

    *(a1 + 328) = v9;
  }

  if (*(a1 + 360))
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v71);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "Error: addAudio was called, but a previous addAudio completion hasn't been called yet.", 86);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v71);
  }

  std::function<void ()(BOOL)>::operator=((a1 + 336), a4);
  std::__function::__value_func<void ()(BOOL)>::operator=[abi:ne200100](a4);
  v10 = *(a1 + 192);
  v12 = kaldi::Timer::GetSeconds(5, v11) - *v10;
  v14 = *(a1 + 288);
  v13 = *(a1 + 296);
  if (v14 >= v13)
  {
    v16 = *(a1 + 280);
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 4;
    v19 = v18 + 1;
    if ((v18 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 3 > v19)
    {
      v19 = v20 >> 3;
    }

    v21 = v20 >= 0x7FFFFFFFFFFFFFF0;
    v22 = 0xFFFFFFFFFFFFFFFLL;
    if (!v21)
    {
      v22 = v19;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1 + 280, v22);
    }

    v23 = v18;
    v24 = 16 * v18;
    *v24 = v12;
    *(v24 + 8) = a3;
    v15 = 16 * v18 + 16;
    v25 = (v24 - 16 * v23);
    memcpy(v25, v16, v17);
    v26 = *(a1 + 280);
    *(a1 + 280) = v25;
    *(a1 + 288) = v15;
    *(a1 + 296) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v14 = v12;
    *(v14 + 8) = a3;
    v15 = v14 + 16;
  }

  *(a1 + 288) = v15;
  if (*(a1 + 274) == 1)
  {
    quasar::RecogAudioBuffer::callAddAudioCompletion(a1, 0);
    v27 = 2;
    goto LABEL_77;
  }

  if (*(a1 + 273) == 1)
  {
    quasar::RecogAudioBuffer::callAddAudioCompletion(a1, 0);
    v27 = 1;
    goto LABEL_77;
  }

  if (*(a1 + 272))
  {
LABEL_27:
    quasar::RecogAudioBuffer::callAddAudioCompletion(a1, 0);
    v27 = 3;
    goto LABEL_77;
  }

  v28 = *(a1 + 152);
  if ((v28 & 0x80000000) != 0)
  {
    v31 = a3;
  }

  else
  {
    v29 = *(a1 + 220);
    v21 = v28 >= v29;
    v30 = v28 - v29;
    if (v30 == 0 || !v21)
    {
      *(a1 + 272) = 1;
      if (quasar::gLogLevel >= 2)
      {
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v71 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v71);
        v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "Maximum buffer length ", 22);
        v70 = MEMORY[0x1B8C84C00](v69, *(a1 + 152));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, " has been reached. All additional audio will be dropped.", 56);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&v71);
      }

      goto LABEL_27;
    }

    if (v30 >= a3)
    {
      v31 = a3;
    }

    else
    {
      v31 = v30;
    }

    if (v31 < a3 && quasar::gLogLevel >= 4)
    {
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v71);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "Clipped audio length ", 21);
      v33 = MEMORY[0x1B8C84C10](v32, a3);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " to ", 4);
      MEMORY[0x1B8C84C00](v34, v31);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v71);
    }
  }

  v35 = *(a1 + 224);
  v36 = v35[1] - *v35;
  v37 = v35[4] + v31;
  if (v37 > v36 >> 2)
  {
    v38 = v36 >> 1;
    v39 = *(a1 + 156);
    if (v38 >= v39)
    {
      v40 = *(a1 + 156);
    }

    else
    {
      v40 = v38;
    }

    if (v39 > 0)
    {
      v38 = v40;
    }

    if (v38 <= v37)
    {
      v41 = v35[4] + v31;
    }

    else
    {
      v41 = v38;
    }

    boost::circular_buffer<float,std::allocator<float>>::set_capacity(v35, v41);
  }

  if (*(a1 + 320) == 1)
  {
    v42 = (a1 + 232);
    v43 = (*(a1 + 208) * 5.0);
    v44 = *(a1 + 240);
    v45 = &v44[-*(a1 + 232)] >> 2;
    if (v43 > v45)
    {
      v46 = v31 + v45 <= v43 ? v31 : v43 - v45;
      if (v46)
      {
        for (i = 0; i < v46; ++i)
        {
          v48 = *(a1 + 248);
          if (v44 >= v48)
          {
            v49 = *v42;
            v50 = v44 - *v42;
            v51 = v50 >> 2;
            v52 = (v50 >> 2) + 1;
            if (v52 >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v53 = v48 - v49;
            if (v53 >> 1 > v52)
            {
              v52 = v53 >> 1;
            }

            if (v53 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v54 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v54 = v52;
            }

            if (v54)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1 + 232, v54);
            }

            *(4 * v51) = a2[i];
            v44 = (4 * v51 + 4);
            memcpy(0, v49, v50);
            v55 = *(a1 + 232);
            *(a1 + 232) = 0;
            *(a1 + 240) = v44;
            *(a1 + 248) = 0;
            if (v55)
            {
              operator delete(v55);
            }
          }

          else
          {
            *v44 = a2[i];
            v44 += 4;
          }

          *(a1 + 240) = v44;
        }
      }
    }
  }

  if (v31 >= 1)
  {
    v56 = v31;
    do
    {
      boost::circular_buffer<float,std::allocator<float>>::push_back_impl<float const&>(*(a1 + 224), a2++);
      --v56;
    }

    while (v56);
  }

  if (quasar::gLogLevel > 4)
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v71);
    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "Added ", 6);
    v58 = MEMORY[0x1B8C84C00](v57, v31);
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " samples: ", 10);
    v60 = MEMORY[0x1B8C84C10](v59, *(a1 + 220));
    v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "-", 1);
    v62 = MEMORY[0x1B8C84C10](v61, (*(a1 + 220) + v31));
    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " ringSize: ", 11);
    v64 = MEMORY[0x1B8C84C30](v63, *(*(a1 + 224) + 32));
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " completion: ", 13);
    MEMORY[0x1B8C84BD0](v65, *(a1 + 360) != 0);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v71);
  }

  *(a1 + 220) += v31;
  v66 = *(a1 + 156);
  if (v66 < 1 || *(*(a1 + 224) + 32) < v66)
  {
    quasar::RecogAudioBuffer::callAddAudioCompletion(a1, 1);
  }

  v67 = *(a1 + 136);
  std::mutex::lock(v67);
  std::mutex::unlock(v67);
  std::condition_variable::notify_all((a1 + 88));
  v27 = 0;
LABEL_77:
  std::mutex::unlock((a1 + 24));
  return v27;
}

void *std::function<void ()(BOOL)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(BOOL)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void boost::circular_buffer<float,std::allocator<float>>::set_capacity(uint64_t *a1, unint64_t a2)
{
  if (a2 != (a1[1] - *a1) >> 2)
  {
    v4 = boost::circular_buffer<float,std::allocator<float>>::allocate(a1, a2);
    v5 = a1[4];
    if (v5)
    {
      v6 = a1[2];
    }

    else
    {
      v6 = 0;
    }

    if (v5 >= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = a1[4];
    }

    v15[0] = a1;
    v15[1] = v6;
    v8 = boost::cb_details::iterator<boost::circular_buffer<float,std::allocator<float>>,boost::cb_details::nonconst_traits<std::allocator<float>>>::operator+=(v15, v7)[1];
    v9 = v4;
    if (v6 != v8)
    {
      v10 = a1[1];
      v11 = a1[3];
      v9 = v4;
      do
      {
        v12 = *v6++;
        *v9 = v12;
        if (v6 == v10)
        {
          v6 = *a1;
        }

        if (v6 == v11)
        {
          v6 = 0;
        }

        ++v9;
      }

      while (v6 != v8);
    }

    boost::circular_buffer<float,std::allocator<float>>::destroy(a1);
    v13 = (v4 + 4 * a2);
    *a1 = v4;
    a1[1] = v13;
    if (v13 == v9)
    {
      v14 = v4;
    }

    else
    {
      v14 = v9;
    }

    a1[2] = v4;
    a1[3] = v14;
    a1[4] = (v9 - v4) >> 2;
  }
}

void sub_1B56A87A4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete(v1);
  }

  __cxa_rethrow();
}

uint64_t quasar::RecogAudioBuffer::addAudio(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  kaldi::Vector<float>::Resize(v12, a3, 0);
  if (a3)
  {
    v8 = 0;
    v9 = v12[0];
    do
    {
      v9[v8] = *(a2 + 2 * v8);
      ++v8;
    }

    while (a3 != v8);
  }

  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v13, a4);
  v10 = quasar::RecogAudioBuffer::addAudio(a1, v12, a3, v13);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v13);
  kaldi::Vector<float>::Destroy(v12);
  return v10;
}

void sub_1B56A88B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::RecogAudioBuffer::addAudio(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v9, a4);
  v7 = (*(*a1 + 24))(a1, v6, a3, v9);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v9);
  return v7;
}

void sub_1B56A89A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::RecogAudioBuffer::endAudio(quasar::RecogAudioBuffer *this)
{
  std::mutex::lock((this + 24));
  quasar::RecogAudioBuffer::endAudioWithoutLock(this);

  std::mutex::unlock((this + 24));
}

void quasar::RecogAudioBuffer::endAudioWithoutLock(quasar::RecogAudioBuffer *this)
{
  if ((*(this + 273) & 1) == 0)
  {
    if (quasar::gLogLevel >= 5)
    {
      v21 = 0u;
      memset(v22, 0, 144);
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      memset(v18, 0, sizeof(v18));
      v16 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Signalling end of audio...", 26);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v16);
    }

    *(this + 273) = 1;
    quasar::RecogAudioBuffer::callAddAudioCompletion(this, 1);
    v2 = *(this + 17);
    std::mutex::lock(v2);
    std::mutex::unlock(v2);
    std::condition_variable::notify_all((this + 88));
    v3 = *(this + 24);
    *(this + 38) = kaldi::Timer::GetSeconds(5, v4) - *v3;
    if (quasar::gLogLevel >= 5)
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "PacketsReceived=", 17);
      for (i = *(this + 35); i != *(this + 36); i += 16)
      {
        v6 = MEMORY[0x1B8C84BE0](&v17, *i);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ":", 1);
        v8 = MEMORY[0x1B8C84C30](v7, *(i + 8));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " ", 1);
      }

      if (quasar::gLogLevel > 4)
      {
        memset(v15, 0, sizeof(v15));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
        std::stringbuf::str();
        if ((v14 & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        if ((v14 & 0x80u) == 0)
        {
          v10 = v14;
        }

        else
        {
          v10 = __p[1];
        }

        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v9, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "", 1);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }

        quasar::QuasarDebugMessage::~QuasarDebugMessage(v15);
      }

      *&v16 = *MEMORY[0x1E69E54D8];
      v12 = *(MEMORY[0x1E69E54D8] + 72);
      *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      *&v17 = v12;
      *(&v17 + 1) = MEMORY[0x1E69E5548] + 16;
      if (SHIBYTE(v20) < 0)
      {
        operator delete(*(&v19 + 1));
      }

      *(&v17 + 1) = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v18);
      std::iostream::~basic_iostream();
      MEMORY[0x1B8C85200](v22);
    }
  }
}

void sub_1B56A8D54(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, std::locale a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a43, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](va);
  _Unwind_Resume(a1);
}

void quasar::RecogAudioBuffer::endAudioToLeadBuffer(quasar::RecogAudioBuffer *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 32);
      if (v5)
      {
        std::mutex::lock((v5 + 24));
        v6 = *(v5 + 216);
        v7 = *(v5 + 220);
        std::mutex::unlock((v5 + 24));
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        std::mutex::lock((this + 24));
        *(this + 55) = v7;
        if (*(this + 54) >= v6)
        {
          if (quasar::gLogLevel >= 5)
          {
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v19 = 0u;
            v20 = 0u;
            v18 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
            v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "Clipping audio buffer like other at ", 36);
            v15 = MEMORY[0x1B8C84C10](v14, *(this + 55));
            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " from ", 6);
            MEMORY[0x1B8C84C10](v16, *(this + 54));
            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v18);
            v7 = *(this + 55);
          }

          *(this + 54) = v7;
        }

        else
        {
          if (quasar::gLogLevel >= 5)
          {
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v19 = 0u;
            v20 = 0u;
            v18 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
            v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "Clipping audio buffer like other from ", 38);
            v9 = MEMORY[0x1B8C84C10](v8, *(this + 55));
            v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " to ", 4);
            v11 = MEMORY[0x1B8C84C10](v10, v6);
            v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "; it was ", 9);
            MEMORY[0x1B8C84C10](v12, *(this + 54));
            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v18);
            v7 = *(this + 55);
          }

          if (v6 >= v7)
          {
            v13 = v7;
          }

          else
          {
            v13 = v6;
          }

          *(this + 55) = v13;
        }

        v17 = *(this + 17);
        std::mutex::lock(v17);
        std::mutex::unlock(v17);
        std::condition_variable::notify_all((this + 88));
        quasar::RecogAudioBuffer::endAudioWithoutLock(this);
        std::mutex::unlock((this + 24));
      }

      else
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }
    }
  }
}

void quasar::RecogAudioBuffer::synchronizeToLeadBuffer(quasar::RecogAudioBuffer *this)
{
  v2 = *(this + 33);
  if (v2 && std::__shared_weak_count::lock(v2))
  {
    v3 = *(this + 32);
    if (v3)
    {
      std::mutex::lock((this + 24));
      std::mutex::lock((v3 + 24));
      *(this + 27) = *(v3 + 216);
      operator new();
    }
  }

  memset(v4, 0, sizeof(v4));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Cannot synchronize when lead buffer has been deallocated", 56);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v4);
}

void sub_1B56A9254(_Unwind_Exception *a1)
{
  std::mutex::unlock((v3 + 24));
  std::mutex::unlock((v2 + 24));
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void sub_1B56A9278()
{
  if (!v0)
  {
    JUMPOUT(0x1B56A9270);
  }

  JUMPOUT(0x1B56A9268);
}

void quasar::RecogAudioBuffer::setWaitingForFollowers(quasar::RecogAudioBuffer *this, int a2)
{
  std::mutex::lock((this + 24));
  if (*(this + 275) != a2)
  {
    *(this + 275) = a2;
    v4 = *(this + 17);
    std::mutex::lock(v4);
    std::mutex::unlock(v4);
    std::condition_variable::notify_all((this + 88));
  }

  std::mutex::unlock((this + 24));
}

void quasar::RecogAudioBuffer::triggerServerSideEndPointer(quasar::RecogAudioBuffer *this)
{
  std::mutex::lock((this + 24));
  if (*(this + 8) == 1 && (*(this + 274) & 1) == 0)
  {
    quasar::RecogAudioBuffer::endAudioWithoutLock(this);
    *(this + 274) = 1;
    *(this + 54) = *(this + 55);
    if (quasar::gLogLevel >= 5)
    {
      memset(v3, 0, sizeof(v3));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Server endpoint triggered so moving buffer marker to end of buffer.", 67);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v3);
    }

    v2 = *(this + 17);
    std::mutex::lock(v2);
    std::mutex::unlock(v2);
    std::condition_variable::notify_all((this + 88));
  }

  std::mutex::unlock((this + 24));
}

void sub_1B56A93DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  std::mutex::unlock((v9 + 24));
  _Unwind_Resume(a1);
}

void quasar::RecogAudioBuffer::stopAudioDecoding(quasar::RecogAudioBuffer *this)
{
  std::mutex::lock((this + 24));
  quasar::RecogAudioBuffer::endAudioWithoutLock(this);
  *(this + 274) = 1;
  *(this + 54) = *(this + 55);
  if (quasar::gLogLevel >= 5)
  {
    memset(v3, 0, sizeof(v3));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Stop Audio Decoding called, so moving buffer marker to end of buffer.", 69);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v3);
  }

  v2 = *(this + 17);
  std::mutex::lock(v2);
  std::mutex::unlock(v2);
  std::condition_variable::notify_all((this + 88));
  std::mutex::unlock((this + 24));
}

void sub_1B56A94DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  std::mutex::unlock((v9 + 24));
  _Unwind_Resume(a1);
}

void quasar::RecogAudioBuffer::setServerSideEndPointing(quasar::RecogAudioBuffer *this, char a2)
{
  std::mutex::lock((this + 24));
  *(this + 8) = a2;

  std::mutex::unlock((this + 24));
}

void quasar::RecogAudioBuffer::stats(quasar::RecogAudioBuffer *this, double *a2, double *a3)
{
  std::mutex::lock((this + 24));
  *a2 = *(this + 38);
  *a3 = *(this + 39);

  std::mutex::unlock((this + 24));
}

uint64_t quasar::RecogAudioBuffer::serverSideEndPointingEnabled(quasar::RecogAudioBuffer *this)
{
  std::mutex::lock((this + 24));
  v2 = *(this + 8);
  std::mutex::unlock((this + 24));
  return v2;
}

void quasar::RecogAudioBuffer::getRawAudioCache(quasar::RecogAudioBuffer *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock((this + 24));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a2, *(this + 29), *(this + 30), (*(this + 30) - *(this + 29)) >> 2);

  std::mutex::unlock((this + 24));
}

void quasar::RecogAudioBuffer::emptyAudioBuffer(quasar::RecogAudioBuffer *this)
{
  std::mutex::lock((this + 24));
  if (quasar::gLogLevel >= 5)
  {
    memset(v11, 0, sizeof(v11));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "emptyAudioBuffer: ring=", 23);
    v3 = MEMORY[0x1B8C84C30](v2, *(*(this + 28) + 32));
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " bufferPos=", 11);
    v5 = MEMORY[0x1B8C84C10](v4, *(this + 54));
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " bufferLen=", 11);
    MEMORY[0x1B8C84C10](v6, *(this + 55));
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v11);
  }

  v7 = *(this + 28);
  v8 = v7[4];
  v10 = v7[1];
  v9 = v7[2];
  if (v8 >= (v10 - v9) >> 2)
  {
    v8 -= (v10 - *v7) >> 2;
  }

  v7[2] = v9 + 4 * v8;
  v7[4] = 0;
  *(this + 54) = *(this + 55);
  quasar::RecogAudioBuffer::callAddAudioCompletion(this, 1);
  std::mutex::unlock((this + 24));
}

void quasar::RecogAudioBuffer::startCountingAudioDuration(quasar::RecogAudioBuffer *this)
{
  std::mutex::lock((this + 24));
  *(this + 81) = *(this + 55);

  std::mutex::unlock((this + 24));
}

float quasar::RecogAudioBuffer::stopCountingAudioDuration(quasar::RecogAudioBuffer *this)
{
  std::mutex::lock((this + 24));
  v3 = 0.0;
  v4 = *(this + 55) - *(this + 81);
  if (v4)
  {
    LODWORD(v2) = *(this + 52);
    v3 = v4 / v2;
  }

  std::mutex::unlock((this + 24));
  return v3;
}

void quasar::RecogAudioBuffer::~RecogAudioBuffer(quasar::RecogAudioBuffer *this)
{
  *this = &unk_1F2D27790;
  v2 = (this + 16);
  *(this + 2) = &unk_1F2D27810;
  std::mutex::lock((this + 24));
  quasar::RecogAudioBuffer::callAddAudioCompletion(this, 1);
  std::mutex::unlock((this + 24));
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](this + 336);
  v3 = *(this + 35);
  if (v3)
  {
    *(this + 36) = v3;
    operator delete(v3);
  }

  v4 = *(this + 33);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 29);
  if (v5)
  {
    *(this + 30) = v5;
    operator delete(v5);
  }

  std::unique_ptr<boost::circular_buffer<float,std::allocator<float>>>::reset[abi:ne200100](this + 28, 0);
  v6 = *(this + 25);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  v7 = *(this + 18);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::condition_variable::~condition_variable((this + 88));
  std::mutex::~mutex((this + 24));
  quasar::Bitmap::~Bitmap(v2);

  quasar::Bitmap::~Bitmap(this);
}

{
  quasar::RecogAudioBuffer::~RecogAudioBuffer(this);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toquasar::RecogAudioBuffer::~RecogAudioBuffer(quasar::RecogAudioBuffer *this)
{
  quasar::RecogAudioBuffer::~RecogAudioBuffer((this - 16));
}

{
  quasar::RecogAudioBuffer::~RecogAudioBuffer((this - 16));

  JUMPOUT(0x1B8C85350);
}

unint64_t quasar::RecogAudioBuffer::packetArrivalTimestampFromAudioTime(quasar::RecogAudioBuffer *this, float a2)
{
  std::mutex::lock((this + 24));
  v4 = *(*(this + 24) + 32);
  mach_timebase_info(&info);
  v7 = *(this + 35);
  v8 = *(this + 36);
  if (v7 == v8)
  {
LABEL_9:
    v12 = 0;
  }

  else
  {
    LODWORD(v5) = info.numer;
    LODWORD(v6) = info.denom;
    v9 = 1000000000.0 / v5 * v6;
    v10 = 0.0;
    while (1)
    {
      v10 = v10 + (*(v7 + 8) / *(this + 52));
      if (v10 >= a2 && v4 != 0)
      {
        break;
      }

      v7 += 16;
      if (v7 == v8)
      {
        goto LABEL_9;
      }
    }

    v12 = (v4 + v9 * *v7);
  }

  std::mutex::unlock((this + 24));
  return v12;
}

uint64_t std::function<void ()(BOOL)>::operator()(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

BOOL std::condition_variable_any::wait_until<std::mutex,std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(uint64_t a1, std::mutex *a2, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep *a3)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15.__m_ = v6;
  v15.__owns_ = 1;
  std::mutex::lock(v6);
  std::mutex::unlock(a2);
  if (std::chrono::steady_clock::now().__d_.__rep_ >= *a3)
  {
    v12 = 1;
    goto LABEL_19;
  }

  v8 = *a3;
  v9.__d_.__rep_ = v8 - std::chrono::steady_clock::now().__d_.__rep_;
  if (v9.__d_.__rep_ >= 1)
  {
    std::chrono::steady_clock::now();
    v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v10.__d_.__rep_)
    {
      v11 = 0;
      goto LABEL_16;
    }

    if (v10.__d_.__rep_ < 1)
    {
      if (v10.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v11 = 0x8000000000000000;
        goto LABEL_16;
      }
    }

    else if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

    v11 = 1000 * v10.__d_.__rep_;
LABEL_14:
    if (v11 > (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v13.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_17:
      std::condition_variable::__do_timed_wait(a1, &v15, v13);
      std::chrono::steady_clock::now();
      goto LABEL_18;
    }

LABEL_16:
    v13.__d_.__rep_ = v11 + v9.__d_.__rep_;
    goto LABEL_17;
  }

LABEL_18:
  v12 = std::chrono::steady_clock::now().__d_.__rep_ >= *a3;
LABEL_19:
  std::unique_lock<std::mutex>::unlock[abi:ne200100](&v15);
  std::mutex::lock(a2);
  if (v15.__owns_)
  {
    std::mutex::unlock(v15.__m_);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v12;
}

void sub_1B56A9C7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(BOOL)>::operator=[abi:ne200100](uint64_t a1)
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

void boost::throw_exception<std::length_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::length_error>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<std::length_error>::wrapexcept(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &unk_1F2CFD548;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F2D278C8;
  *(a1 + 8) = &unk_1F2D278F8;
  *(a1 + 24) = &unk_1F2D27920;
  return a1;
}

uint64_t boost::wrapexcept<std::length_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));
  return a1;
}

void sub_1B56AA044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<std::length_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::length_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<std::length_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<std::length_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::logic_error::~logic_error(a1);
}

{
  *(a1 + 16) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::logic_error::~logic_error(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<std::length_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::logic_error::~logic_error(v1);
}

{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::logic_error::~logic_error(v1);

  JUMPOUT(0x1B8C85350);
}

uint64_t boost::wrapexcept<std::length_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFD548;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x1E69E55B0] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F2CFD578;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F2D278C8;
  *(a1 + 8) = &unk_1F2D278F8;
  *(a1 + 24) = &unk_1F2D27920;
  return a1;
}

void boost::circular_buffer<float,std::allocator<float>>::destroy(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *a1;
  v6 = v3 - v2;
  v7 = (v3 - v5) >> 2;
  if (v4 < v6 >> 2)
  {
    v7 = 0;
  }

  *(a1 + 16) = v2 + 4 * (v4 - v7);
  if (v5)
  {
    operator delete(v5);
  }
}

void *boost::cb_details::iterator<boost::circular_buffer<float,std::allocator<float>>,boost::cb_details::nonconst_traits<std::allocator<float>>>::operator+=(void *a1, uint64_t a2)
{
  if (a2 < 1)
  {
    if (a2 < 0)
    {
      boost::cb_details::iterator<boost::circular_buffer<float,std::allocator<float>>,boost::cb_details::nonconst_traits<std::allocator<float>>>::operator-=(a1, -a2);
    }
  }

  else
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = *(*a1 + 8);
    if (a2 >= (v5 - v4) >> 2)
    {
      a2 -= (v5 - *v3) >> 2;
    }

    v6 = v4 + 4 * a2;
    if (v6 == v3[3])
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    a1[1] = v7;
  }

  return a1;
}

uint64_t boost::cb_details::iterator<boost::circular_buffer<float,std::allocator<float>>,boost::cb_details::nonconst_traits<std::allocator<float>>>::operator-=(uint64_t a1, uint64_t a2)
{
  if (a2 < 1)
  {
    if (a2 < 0)
    {
      boost::cb_details::iterator<boost::circular_buffer<float,std::allocator<float>>,boost::cb_details::nonconst_traits<std::allocator<float>>>::operator+=(a1, -a2);
    }
  }

  else
  {
    v4 = *a1;
    v3 = *(a1 + 8);
    if (!v3)
    {
      v3 = v4[3];
    }

    if (a2 > (v3 - *v4) >> 2)
    {
      a2 -= (v4[1] - *v4) >> 2;
    }

    *(a1 + 8) = v3 - 4 * a2;
  }

  return a1;
}

uint64_t *boost::circular_buffer<float,std::allocator<float>>::circular_buffer(uint64_t *a1, int **a2)
{
  a1[4] = a2[4];
  v4 = a2[1] - *a2;
  v5 = boost::circular_buffer<float,std::allocator<float>>::allocate(a1, v4 >> 2);
  *a1 = v5;
  a1[1] = v5 + v4;
  a1[2] = v5;
  if (a2[4] && (v6 = a2[2]) != 0)
  {
    v7 = a2[1];
    v8 = a2[3];
    v9 = v5;
    do
    {
      v10 = *v6++;
      *v9++ = v10;
      if (v6 == v7)
      {
        v6 = *a2;
      }
    }

    while (v6 != v8 && v6 != 0);
  }

  else
  {
    v9 = v5;
  }

  if (v9 == (v5 + v4))
  {
    v12 = v5;
  }

  else
  {
    v12 = v9;
  }

  a1[3] = v12;
  return a1;
}

uint64_t *std::unique_ptr<boost::circular_buffer<float,std::allocator<float>>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    boost::circular_buffer<float,std::allocator<float>>::destroy(v2);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

char *std::vector<std::pair<double,unsigned long>>::__assign_with_size[abi:ne200100]<std::pair<double,unsigned long>*,std::pair<double,unsigned long>*>(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
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

      std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5++ + 1);
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
        *result = *v5;
        *(result + 1) = *(v5++ + 1);
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v13 = v11;
    }

    else
    {
      v13 = v11;
      do
      {
        v14 = *v12++;
        *v11 = v14;
        v11 += 16;
        v13 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v13;
  }

  return result;
}

float *quasar::Token::DecodingSignals::DecodingSignals(float *this, float a2, float a3, float a4, float a5)
{
  *this = a2;
  this[1] = a3;
  this[2] = a4;
  this[3] = a5;
  return this;
}

float32x4_t quasar::Token::DecodingSignals::operator+=(float32x4_t *a1, float32x4_t *a2)
{
  result = vaddq_f32(*a2, *a1);
  *a1 = result;
  return result;
}

double quasar::Token::Token(quasar::Token *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = -1;
  *(this + 36) = 0;
  *(this + 28) = 0;
  *(this + 22) = 1;
  *(this + 46) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 20) = 0;
  *(this + 42) = 3;
  *(this + 86) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 200) = 0;
  *(this + 24) = 0;
  *(this + 204) = 0;
  *(this + 212) = 0;
  return result;
}

std::string *quasar::Token::Token(std::string *this, __int128 *a2, int a3, int a4, int a5, std::string::value_type a6, std::string::value_type a7, __int128 *a8, float a9, __int128 *a10, uint64_t *a11, char a12, __int128 *a13, char a14, char a15, char a16)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v24 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v24;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = -1;
  HIDWORD(this[1].__r_.__value_.__r.__words[0]) = a3;
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = a4;
  HIDWORD(this[1].__r_.__value_.__r.__words[1]) = a5;
  *&this[1].__r_.__value_.__r.__words[2] = a9;
  this[1].__r_.__value_.__s.__data_[20] = a6;
  this[1].__r_.__value_.__s.__data_[21] = a7;
  this[1].__r_.__value_.__s.__data_[22] = a16;
  if (*(a8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *a8, *(a8 + 1));
  }

  else
  {
    v25 = *a8;
    this[2].__r_.__value_.__r.__words[2] = *(a8 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v25;
  }

  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  if (*(a10 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *a10, *(a10 + 1));
  }

  else
  {
    v26 = *a10;
    this[4].__r_.__value_.__r.__words[2] = *(a10 + 2);
    *&this[4].__r_.__value_.__l.__data_ = v26;
  }

  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::pair<std::string,float>>::__init_with_size[abi:ne200100]<std::pair<std::string,float>*,std::pair<std::string,float>*>(&this[5], *a11, a11[1], (a11[1] - *a11) >> 5);
  if (*(a13 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *a13, *(a13 + 1));
  }

  else
  {
    v27 = *a13;
    this[6].__r_.__value_.__r.__words[2] = *(a13 + 2);
    *&this[6].__r_.__value_.__l.__data_ = v27;
  }

  LODWORD(this[7].__r_.__value_.__l.__data_) = 3;
  this[7].__r_.__value_.__s.__data_[4] = a12;
  this[7].__r_.__value_.__s.__data_[5] = a14;
  this[7].__r_.__value_.__r.__words[2] = 0;
  this[8].__r_.__value_.__r.__words[0] = 0;
  this[7].__r_.__value_.__l.__size_ = 0;
  this[8].__r_.__value_.__s.__data_[8] = a15;
  *(&this[8].__r_.__value_.__r.__words[2] + 4) = 0;
  *(&this[8].__r_.__value_.__r.__words[1] + 4) = 0;
  return this;
}

{
  return quasar::Token::Token(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_1B56AA9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v11;
  a10 = v13;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 119) < 0)
  {
    operator delete(v12[3]);
  }

  a10 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

BOOL quasar::Token::isPrintable(quasar::Token *this)
{
  if ((*(this + 23) & 0x80000000) == 0)
  {
    if (*(this + 23))
    {
      if (*(this + 23) != 3)
      {
        return 1;
      }

      return *this != 16188 || *(this + 2) != 62;
    }

    return 0;
  }

  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  if (v1 != 3)
  {
    return 1;
  }

  this = *this;
  return *this != 16188 || *(this + 2) != 62;
}

uint64_t quasar::Token::isAutoPunctuation(quasar::Token *this)
{
  if (*(this + 172))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(this + 173);
  }

  return v1 & 1;
}

uint64_t quasar::Token::trailingSilenceMilliseconds(quasar::Token *this)
{
  v1 = *(this + 8);
  v2 = *(this + 9);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t quasar::Token::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3) || *(v7 + 6) != *(v6 + 6) || *(v7 + 7) != *(v6 + 7) || *(v7 + 8) != *(v6 + 8) || *(v7 + 9) != *(v6 + 9) || *(v7 + 10) != *(v6 + 10) || *(v7 + 44) != *(v6 + 44) || *(v7 + 45) != *(v6 + 45))
  {
    return 0;
  }

  result = std::operator==[abi:ne200100]<std::pair<std::string,float>,std::allocator<std::pair<std::string,float>>>(v7 + 15, v6 + 15);
  if (!result)
  {
    return result;
  }

  if (*(v7 + 172) != *(v6 + 172))
  {
    return 0;
  }

  result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 18, v6 + 18);
  if (!result)
  {
    return result;
  }

  if (*(v7 + 42) != *(v6 + 42) || *(v7 + 173) != *(v6 + 173))
  {
    return 0;
  }

  result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 22, v6 + 22);
  if (!result)
  {
    return result;
  }

  if (*(v7 + 51) != *(v6 + 51) || *(v7 + 52) != *(v6 + 52) || *(v7 + 53) != *(v6 + 53) || *(v7 + 54) != *(v6 + 54))
  {
    return 0;
  }

  result = std::operator==[abi:ne200100]<std::string,std::allocator<std::string>>(v7 + 9, (v6 + 9));
  if (result)
  {
    return *(v7 + 46) == *(v6 + 46);
  }

  return result;
}

uint64_t std::operator==[abi:ne200100]<std::pair<std::string,float>,std::allocator<std::pair<std::string,float>>>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 == a2[1] - *a2)
  {
    if (v3 == v2)
    {
      return 1;
    }

    v5 = 0;
    while (1)
    {
      v6 = v4 + v5;
      v7 = v3 + v5;
      v8 = *(v3 + v5 + 23);
      if (v8 >= 0)
      {
        v9 = *(v3 + v5 + 23);
      }

      else
      {
        v9 = *(v3 + v5 + 8);
      }

      v10 = *(v6 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v6 + 8);
      }

      if (v9 != v10)
      {
        break;
      }

      v12 = v8 >= 0 ? (v3 + v5) : *v7;
      v13 = v11 >= 0 ? (v4 + v5) : *v6;
      if (memcmp(v12, v13, v9) || *(v7 + 24) != *(v6 + 24))
      {
        break;
      }

      v5 += 32;
      if (v3 + v5 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL std::operator==[abi:ne200100]<std::string,std::allocator<std::string>>(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = std::equal_to<std::string>::operator()[abi:ne200100](&v6, v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 3;
    v4 += 3;
  }

  while (v2 != v3);
  return result;
}

void sub_1B56AB0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::operator<<(void *a1)
{
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "DecodingSignals(", 16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "graphCost=", 10);
  v3 = std::ostream::operator<<();
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "acousticCost=", 13);
  v5 = std::ostream::operator<<();
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "acousticCostFirstPassCollapsed=", 31);
  v7 = std::ostream::operator<<();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "acousticCostSecondPassUnpushed=", 31);
  v9 = std::ostream::operator<<();
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ")", 1);
  return a1;
}

uint64_t **quasar::Token::resetSpacing(uint64_t **result)
{
  v1 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    do
    {
      v4 = *v1;
      v3 = v1[1];
      if (*v1 != v3)
      {
        v5 = *v1;
        do
        {
          *(v5 + 44) = 1;
          v5 += 224;
        }

        while (v5 != v3);
        if (v4 != v3)
        {
          *(v3 - 180) = 0;
        }
      }

      v1 += 3;
    }

    while (v1 != v2);
  }

  return result;
}

void quasar::Token::tokenNameWithCleanedMetadata(const std::string *a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__p, "~w00");
  quasar::splitAndTrimNoEmpty(a1, &__p, &v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = v13;
  for (i = v14; v2 != i; v2 += 24)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "\");
    quasar::splitAndTrimNoEmpty(v2, &__p, &v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v4 = v12;
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3) >= 3)
    {
      if (*(v11 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v11, *(v11 + 1));
        v4 = v12;
      }

      else
      {
        v5 = *v11;
        __p.__r_.__value_.__r.__words[2] = *(v11 + 2);
        *&__p.__r_.__value_.__l.__data_ = v5;
      }

      if (*(v4 - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *(v4 - 24), *(v4 - 16));
      }

      else
      {
        v6 = *(v4 - 24);
        v16.__r_.__value_.__r.__words[2] = *(v4 - 8);
        *&v16.__r_.__value_.__l.__data_ = v6;
      }

      memset(v10, 0, sizeof(v10));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v10, &__p, v17, 2uLL);
      for (j = 0; j != -6; j -= 3)
      {
        if (SHIBYTE(v16.__r_.__value_.__r.__words[j + 2]) < 0)
        {
          operator delete(*(&__p + j * 8 + 24));
        }
      }

      v9[0] = "\";
      v9[1] = 1;
      quasar::join<std::vector<std::string>>(v10, v9);
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      v8 = *&__p.__r_.__value_.__l.__data_;
      *(v2 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v2 = v8;
      __p.__r_.__value_.__r.__words[0] = v10;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
    }

    __p.__r_.__value_.__r.__words[0] = &v11;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  __p.__r_.__value_.__r.__words[0] = "~w00";
  __p.__r_.__value_.__l.__size_ = 4;
  quasar::join<std::vector<std::string>>(&v13, &__p);
  __p.__r_.__value_.__r.__words[0] = &v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B56AB47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __p = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::Token::tokenNamesWithCleanedMetadata(const std::string **a1@<X0>, uint64_t a2@<X8>)
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
      quasar::Token::tokenNameWithCleanedMetadata(v2);
      v6 = *(a2 + 8);
      v5 = *(a2 + 16);
      if (v6 >= v5)
      {
        v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
        v8 = v7 + 1;
        if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 3);
        if (2 * v9 > v8)
        {
          v8 = 2 * v9;
        }

        if (v9 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v8;
        }

        v19.__end_cap_.__value_ = a2;
        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v10);
        }

        v11 = 24 * v7;
        *(v11 + 16) = v18;
        *v11 = *__p;
        v18 = 0;
        *__p = 0uLL;
        v12 = 24 * v7 + 24;
        v13 = *(a2 + 8) - *a2;
        v14 = 24 * v7 - v13;
        memcpy((v11 - v13), *a2, v13);
        v15 = *a2;
        *a2 = v14;
        *(a2 + 8) = v12;
        v16 = *(a2 + 16);
        *(a2 + 16) = 0;
        v19.__end_ = v15;
        v19.__end_cap_.__value_ = v16;
        v19.__first_ = v15;
        v19.__begin_ = v15;
        std::__split_buffer<std::string>::~__split_buffer(&v19);
        *(a2 + 8) = v12;
      }

      else
      {
        *(v6 + 16) = v18;
        *v6 = *__p;
        *(a2 + 8) = v6 + 24;
      }

      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_1B56AB6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::Token::tokensWithCleanedMetadata(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a2, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    v5 = *v3;
    v6 = v3[1];
    while (v5 != v6)
    {
      quasar::Token::tokenNameWithCleanedMetadata(v5);
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      *(v5 + 16) = v8;
      *v5 = v7;
      v5 += 224;
    }

    v3 += 3;
  }
}

void sub_1B56AB7B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

quasar::LeftContext *quasar::LeftContext::LeftContext(quasar::LeftContext *this, const quasar::LeftContext *a2)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *(this + 24) = 0u;
  v4 = (this + 24);
  *this = this + 8;
  *(this + 9) = 850045863;
  v5 = (this + 48);
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  std::mutex::lock((a2 + 72));
  if (this != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v4, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v5, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  }

  std::mutex::unlock((a2 + 72));
  return this;
}

void sub_1B56AB8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  std::mutex::~mutex(v11);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v10, *(v10 + 8));
  _Unwind_Resume(a1);
}

void quasar::LeftContext::getLeftContextForLM(quasar::LeftContext *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock((this + 72));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(this + 3), *(this + 4), 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - *(this + 3)) >> 3));

  std::mutex::unlock((this + 72));
}

void quasar::LeftContext::setLeftContextForLM(uint64_t a1, std::string **a2)
{
  std::mutex::lock((a1 + 72));
  if ((a1 + 24) != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 24), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  std::mutex::unlock((a1 + 72));
}

void quasar::LeftContext::getLeftContextForItn(quasar::LeftContext *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock((this + 72));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(this + 6), *(this + 7), 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 3));

  std::mutex::unlock((this + 72));
}

void quasar::LeftContext::setLeftContextForItn(uint64_t a1, std::string **a2)
{
  std::mutex::lock((a1 + 72));
  if ((a1 + 48) != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 48), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  std::mutex::unlock((a1 + 72));
}

void quasar::LeftContext::updateInterUtteranceLeftContext(uint64_t a1, __int128 **a2, unint64_t a3)
{
  std::mutex::lock((a1 + 72));
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    std::vector<std::string>::push_back[abi:ne200100](a1 + 24, v6);
    v6 += 14;
  }

  v8 = *(a1 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *(a1 + 24)) >> 3) > a3)
  {
    if (quasar::gLogLevel >= 5)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v12);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Clipped too big left context: ", 30);
      v10 = MEMORY[0x1B8C84C30](v9, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - *(a1 + 24)) >> 3));
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " words; limit is ", 17);
      MEMORY[0x1B8C84C30](v11, a3);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v12);
      v8 = *(a1 + 32);
    }

    v12 = 0uLL;
    *&v13 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v12, -24 * a3 + v8, v8, 0xAAAAAAAAAAAAAAABLL * ((24 * a3) >> 3));
    if ((a1 + 24) != &v12)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 24), v12, *(&v12 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v12 + 1) - v12) >> 3));
    }

    v29 = &v12;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
  }

  std::mutex::unlock((a1 + 72));
}

void quasar::LeftContext::setLeftContextForDecoder(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 72));
  if (a1 != a2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<void>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<void>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<void>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::shared_ptr<void>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<void>>,void *> *,long>>(a1, *a2, (a2 + 8));
  }

  std::mutex::unlock((a1 + 72));
}

void quasar::LeftContext::getLeftContextForDecoder(quasar::LeftContext *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock((this + 72));
  std::map<std::string,std::shared_ptr<void>>::map[abi:ne200100](a2, this);

  std::mutex::unlock((this + 72));
}

std::vector<std::wstring> *quasar::RightContext::RightContext(std::vector<std::wstring> *this, std::vector<std::wstring> *a2)
{
  this->__begin_ = 0;
  this->__end_ = 0;
  this[1].__begin_ = 850045863;
  this->__end_cap_.__value_ = 0;
  *&this[1].__end_ = 0u;
  *&this[2].__begin_ = 0u;
  *&this[2].__end_cap_.__value_ = 0u;
  this[3].__end_ = 0;
  std::mutex::lock(&a2[1]);
  if (this != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(this, a2->__begin_, a2->__end_, 0xAAAAAAAAAAAAAAABLL * ((a2->__end_ - a2->__begin_) >> 3));
  }

  std::mutex::unlock(&a2[1]);
  return this;
}

void sub_1B56ABE1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::mutex::unlock((v3 + 24));
  std::mutex::~mutex(v2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::RightContext::setRightContextForItn(uint64_t a1, std::string **a2)
{
  std::mutex::lock((a1 + 24));
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  if (v5 < 5)
  {
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, v4, v5);
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v6, &v4[-4], v4, 4uLL);
    if (&v6 != a1)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a1, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3));
    }

    v9 = &v6;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  std::mutex::unlock((a1 + 24));
}

void sub_1B56ABF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::mutex::unlock((v12 + 24));
  _Unwind_Resume(a1);
}

void quasar::RightContext::getRightContextForItn(quasar::RightContext *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock((this + 24));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *this, *(this + 1), 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3));

  std::mutex::unlock((this + 24));
}

uint64_t quasar::RunAsyncParams::RunAsyncParams(uint64_t a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 16000;
  *(a1 + 32) = 257;
  *(a1 + 34) = 0;
  *(a1 + 38) = 0;
  *(a1 + 40) = 0;
  *(a1 + 47) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 56), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 80), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 104), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 128), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 152), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 176), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 200), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 224), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 248), "");
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = a1 + 352;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = a1 + 376;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 850045863;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 489) = 0u;
  std::string::basic_string[abi:ne200100]<0>((a1 + 512), "");
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 560) = 850045863;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 610) = 0u;
  std::string::basic_string[abi:ne200100]<0>((a1 + 632), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 656), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 680), "");
  *(a1 + 724) = 0x200000000;
  *(a1 + 704) = 0u;
  *(a1 + 719) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 736), "");
  *(a1 + 776) = 0;
  *(a1 + 760) = 0u;
  quasar::LmeDataStreams::LmeDataStreams((a1 + 784));
  *(a1 + 832) = 0;
  return a1;
}

void sub_1B56AC1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 783) < 0)
  {
    operator delete(*v17);
  }

  if (*(v10 + 759) < 0)
  {
    operator delete(*v16);
  }

  v19 = *(v10 + 712);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (*(v10 + 703) < 0)
  {
    operator delete(*v15);
  }

  if (*(v10 + 679) < 0)
  {
    operator delete(*v14);
  }

  if (*(v10 + 655) < 0)
  {
    operator delete(*v13);
  }

  quasar::RightContext::~RightContext(v12);
  if (*(v10 + 535) < 0)
  {
    operator delete(*v11);
  }

  quasar::LeftContext::~LeftContext((v10 + 368));
  std::__tree<std::string>::destroy(v10 + 344, *(v10 + 352));
  v20 = *(v10 + 328);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  a10 = v10 + 296;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10 + 272;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 271) < 0)
  {
    operator delete(*(v10 + 248));
  }

  if (*(v10 + 247) < 0)
  {
    operator delete(*(v10 + 224));
  }

  if (*(v10 + 223) < 0)
  {
    operator delete(*(v10 + 200));
  }

  if (*(v10 + 199) < 0)
  {
    operator delete(*(v10 + 176));
  }

  if (*(v10 + 175) < 0)
  {
    operator delete(*(v10 + 152));
  }

  if (*(v10 + 151) < 0)
  {
    operator delete(*(v10 + 128));
  }

  if (*(v10 + 127) < 0)
  {
    operator delete(*(v10 + 104));
  }

  if (*(v10 + 103) < 0)
  {
    operator delete(*(v10 + 80));
  }

  if (*(v10 + 79) < 0)
  {
    operator delete(*(v10 + 56));
  }

  v21 = *(v10 + 16);
  if (v21 && !atomic_fetch_add(v21 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v21 + 16))(v21);
  }

  v22 = *(v10 + 8);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}