void sub_22CDB8340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (*(v35 - 169) < 0)
  {
    operator delete(*(v35 - 192));
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void NLHindiTransliterator::postProcessForNewOrthography(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "यें");
  std::string::basic_string[abi:ne200100]<0>(__p, "एँ");
  LODWORD(v4) = *(a1 + 23);
  if ((v4 & 0x80000000) == 0)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
LABEL_4:
    v4 = v4;
    goto LABEL_5;
  }

  std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  LODWORD(v4) = *(a1 + 23);
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 8);
LABEL_5:
  v5 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v5 = v18;
  }

  if (v4 > v5)
  {
    replaceAll(a2, &v17, __p);
  }

  MEMORY[0x2318C02F0](&v17, "ये");
  MEMORY[0x2318C02F0](__p, "ए");
  v6 = *(a1 + 23);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v6 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  if (v10 == v8 && !v13)
  {
    v14 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v14 = v18;
    }

    if (v8 > v14)
    {
      replaceAll(a2, &v17, __p);
    }
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v17);
  }
}

void sub_22CDB85DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void NLHindiTransliterator::postProcessForExaggeration(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a1[1];
  std::string::basic_string(&__p, a2, 0, 2uLL, &v22);
  (*(*v10 + 32))(v21, v10, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*(a2 + 23) >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  (*(*a1 + 144))(a1, v21, a4, (v11 + a4), a3, a5);
  v12 = *a5;
  if (a5[1] != *a5)
  {
    v13 = 0;
    do
    {
      NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor((v12 + 48 * v13));
      if (*(v14 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v14, *(v14 + 1));
      }

      else
      {
        v15 = *v14;
        __p.__r_.__value_.__r.__words[2] = *(v14 + 2);
        *&__p.__r_.__value_.__l.__data_ = v15;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4) <= v13)
      {
        goto LABEL_25;
      }

      Weight = NLExtendedString::getWeight((*a5 + 48 * v13));
      v17 = *(a2 + 23);
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(a2 + 8);
      }

      if (v17 >= 3)
      {
        for (i = 2; i < v19; ++i)
        {
          std::string::append(&__p, "ऽ");
          Weight = Weight + Weight;
          v19 = *(a2 + 23);
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(a2 + 8);
          }
        }
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4) <= v13 || (NLExtendedString::setString((*a5 + 48 * v13), &__p), 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4) <= v13))
      {
LABEL_25:
        std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
      }

      NLExtendedString::setWeight(*a5 + 48 * v13, Weight);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v13;
      v12 = *a5;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4) > v13);
  }

  __p.__r_.__value_.__r.__words[0] = v21;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_22CDB8884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a16;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void NLHindiTransliterator::postProcessForPhonetics(uint64_t a1@<X1>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v33, "एहे");
  std::string::basic_string[abi:ne200100]<0>(__p, "अह");
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
  }

  else
  {
    __str = *a1;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  }

  else
  {
    v29 = __str;
  }

  replaceAll(&v29, v33, __p);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = v29.__r_.__value_.__l.__size_;
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v29;
  }

  else
  {
    v7 = v29.__r_.__value_.__r.__words[0];
  }

  if (v6 >= size)
  {
    v8 = size;
  }

  else
  {
    v8 = v6;
  }

  v9 = memcmp(p_str, v7, v8);
  if (v6 != size || v9)
  {
    std::vector<std::string>::push_back[abi:ne200100](a2, &v29);
  }

  MEMORY[0x2318C02F0](v33, "ेहे");
  MEMORY[0x2318C02F0](__p, "ह");
  std::string::operator=(&__str, &v29);
  std::string::operator=(&v29, &__str);
  replaceAll(&v29, v33, __p);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __str.__r_.__value_.__l.__size_;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &__str;
  }

  else
  {
    v11 = __str.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v29.__r_.__value_.__l.__size_;
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v29;
  }

  else
  {
    v13 = v29.__r_.__value_.__r.__words[0];
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  if (v12 != v10 || v15)
  {
    std::vector<std::string>::push_back[abi:ne200100](a2, &v29);
  }

  MEMORY[0x2318C02F0](v33, "एह");
  MEMORY[0x2318C02F0](__p, "अह");
  std::string::operator=(&__str, &v29);
  std::string::operator=(&v29, &__str);
  replaceAll(&v29, v33, __p);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __str.__r_.__value_.__l.__size_;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__str;
  }

  else
  {
    v17 = __str.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v29.__r_.__value_.__l.__size_;
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v29;
  }

  else
  {
    v19 = v29.__r_.__value_.__r.__words[0];
  }

  if (v18 >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v18;
  }

  v21 = memcmp(v17, v19, v20);
  if (v18 != v16 || v21)
  {
    std::vector<std::string>::push_back[abi:ne200100](a2, &v29);
  }

  MEMORY[0x2318C02F0](v33, "ेह");
  MEMORY[0x2318C02F0](__p, "ह");
  std::string::operator=(&__str, &v29);
  std::string::operator=(&v29, &__str);
  replaceAll(&v29, v33, __p);
  v22 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __str.__r_.__value_.__l.__size_;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &__str;
  }

  else
  {
    v24 = __str.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v29.__r_.__value_.__l.__size_;
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v29;
  }

  else
  {
    v26 = v29.__r_.__value_.__r.__words[0];
  }

  if (v25 >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = v25;
  }

  v28 = memcmp(v24, v26, v27);
  if (v25 != v23 || v28)
  {
    std::vector<std::string>::push_back[abi:ne200100](a2, &v29);
    if ((*(&v29.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_79;
    }
  }

  else if ((v22 & 0x80) == 0)
  {
    goto LABEL_79;
  }

  operator delete(v29.__r_.__value_.__l.__data_);
LABEL_79:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }
}

void sub_22CDB8C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t NLHindiTransliterator::pruneLattice(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  MaximumLayerSize = NLTransliteratorUtils::getMaximumLayerSize(a2);
  v5 = *a3;
  v4 = a3[1];
  if (v4 != *a3)
  {
    v6 = 0;
    LODWORD(result) = 1;
    while (1)
    {
      v38 = result;
      v8 = (v5 + 24 * v6);
      v9 = *v8;
      if (v8[1] == *v8)
      {
        std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
      }

      if (*(v9 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v40, *v9, *(v9 + 1));
        v5 = *a3;
        v4 = a3[1];
      }

      else
      {
        v10 = *v9;
        v40.__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v40.__r_.__value_.__l.__data_ = v10;
      }

      v11 = *(v9 + 24);
      v42 = *(v9 + 40);
      v41 = v11;
      if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) <= v6)
      {
        goto LABEL_55;
      }

      v12 = (v5 + 24 * v6);
      v13 = *v12;
      v14 = v12[1];
      if (v14 != *v12)
      {
        break;
      }

LABEL_42:
      if (v13 == v14)
      {
        std::vector<NLExtendedString>::push_back[abi:ne200100](v12, &v40);
        v5 = *a3;
        v4 = a3[1];
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) <= v6)
      {
        goto LABEL_56;
      }

      std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<NLExtendedString *>,std::greater<NLExtendedString>>(*(v5 + 24 * v6), *(v5 + 24 * v6 + 8), &v39);
      if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v6)
      {
        goto LABEL_56;
      }

      v31 = (*a3 + 24 * v6);
      v32 = -1431655765 * ((v31[1] - *v31) >> 4);
      if (MaximumLayerSize < v32)
      {
        v32 = MaximumLayerSize;
      }

      std::vector<NLExtendedString>::resize(v31, v32);
      v5 = *a3;
      v4 = a3[1];
      v33 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a3) >> 3);
      if (v33 <= v6)
      {
LABEL_56:
        std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
      }

      v34 = (v5 + 24 * v6);
      v36 = *v34;
      v35 = v34[1];
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
        v5 = *a3;
        v4 = a3[1];
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a3) >> 3);
      }

      result = -1431655765 * ((v35 - v36) >> 4) * v38;
      if (v33 <= ++v6)
      {
        return result;
      }
    }

    v15 = 0;
    v16 = 0;
    while (1)
    {
      NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor((v13 + 48 * v16));
      if (*(v17 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v39, *v17, *(v17 + 1));
      }

      else
      {
        v18 = *v17;
        v39.__r_.__value_.__r.__words[2] = *(v17 + 2);
        *&v39.__r_.__value_.__l.__data_ = v18;
      }

      v19 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v39;
      }

      else
      {
        v20 = v39.__r_.__value_.__r.__words[0];
      }

      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v39.__r_.__value_.__l.__size_;
      }

      if (size >= 3)
      {
        v22 = (v20 + size);
        v23 = v20;
        do
        {
          v24 = memchr(v23, -32, size - 2);
          if (!v24)
          {
            break;
          }

          if (*v24 == 42208 && v24[2] == 188)
          {
            if (v24 == v22 || v24 - v20 == -1)
            {
              break;
            }

            if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v6)
            {
              std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
            }

            v26 = *a3 + 24 * v6;
            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<NLExtendedString *,NLExtendedString *,NLExtendedString *>(&v43, (*v26 + 48 * v16 + 48), *(v26 + 8), *v26 + 48 * v16);
            v28 = v27;
            v29 = *(v26 + 8);
            while (v29 != v28)
            {
              v30 = *(v29 - 25);
              v29 -= 6;
              if (v30 < 0)
              {
                operator delete(*v29);
              }
            }

            *(v26 + 8) = v28;
            --v15;
            if ((*(&v39.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          v23 = (v24 + 1);
          size = v22 - v23;
        }

        while (v22 - v23 >= 3);
      }

      if (v19 < 0)
      {
LABEL_36:
        operator delete(v39.__r_.__value_.__l.__data_);
      }

LABEL_37:
      v5 = *a3;
      v4 = a3[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a3) >> 3) <= v6)
      {
        break;
      }

      v16 = ++v15;
      v12 = (v5 + 24 * v6);
      v13 = *v12;
      v14 = v12[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v14 - *v12) >> 4) <= v15)
      {
        goto LABEL_42;
      }
    }

LABEL_55:
    std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
  }

  return 1;
}

void sub_22CDB9024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NLHindiTransliterator::addSpecialCandidates(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (v2 != 2)
    {
      result = 0;
      goto LABEL_22;
    }

    v3 = a2;
    if (*a2 == 26994)
    {
      v4 = a2;
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  if (*(a2 + 8) == 2 && **a2 == 26994)
  {
    goto LABEL_13;
  }

  if (*(a2 + 8) == 2)
  {
    v3 = *a2;
LABEL_9:
    if (*v3 != 30066)
    {
      result = 0;
      if ((v2 & 0x80) != 0)
      {
        goto LABEL_24;
      }

LABEL_22:
      v6 = a2;
      if (v2 != 2)
      {
        return result;
      }

      goto LABEL_26;
    }

LABEL_13:
    if ((v2 & 0x80) != 0)
    {
      if (*(a2 + 8) != 2)
      {
        goto LABEL_20;
      }

      v4 = *a2;
    }

    else
    {
      v4 = a2;
      if (v2 != 2)
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    if (*v4 == 26994)
    {
      operator new();
    }

LABEL_20:
    operator new();
  }

  result = 0;
LABEL_24:
  if (*(a2 + 8) != 2)
  {
    return result;
  }

  v6 = *a2;
LABEL_26:
  if (*v6 == 28015)
  {
    operator new();
  }

  return result;
}

void sub_22CDB9564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  MEMORY[0x2318C0600](v18, 0x1012C40B0087DDBLL);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL NLHindiTransliterator::shouldHandleNasalizationException(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = (v6 + v7);
  if (v7 <= 1)
  {
LABEL_46:
    if (v7 >= 1)
    {
LABEL_47:
      v28 = v7;
      v29 = v6;
      do
      {
        v30 = memchr(v29, 110, v28);
        if (!v30)
        {
          break;
        }

        if (*v30 == 110)
        {
          if (v30 == v8 || &v30[-v6] == -1)
          {
            return 0;
          }

          if (v7 >= 3)
          {
            v31 = v7;
            v32 = v6;
            do
            {
              v33 = memchr(v32, 110, v31 - 2);
              if (!v33)
              {
                break;
              }

              if (*v33 == 26734 && v33[2] == 101)
              {
                if (v33 != v8 && &v33[-v6] != -1)
                {
                  return 0;
                }

                break;
              }

              v32 = v33 + 1;
              v31 = v8 - v32;
            }

            while (v8 - v32 >= 3);
            v35 = v7;
            v36 = v6;
            do
            {
              v37 = memchr(v36, 110, v35 - 2);
              if (!v37)
              {
                break;
              }

              if (*v37 == 26734 && v37[2] == 111)
              {
                if (v37 != v8 && &v37[-v6] != -1)
                {
                  return 0;
                }

                break;
              }

              v36 = v37 + 1;
              v35 = v8 - v36;
            }

            while (v8 - v36 >= 3);
            v39 = v6;
            do
            {
              v40 = memchr(v39, 110, v7 - 2);
              if (!v40)
              {
                break;
              }

              if (*v40 == 24942 && v40[2] == 104)
              {
                if (v40 != v8 && &v40[-v6] != -1)
                {
                  return 0;
                }

                break;
              }

              v39 = v40 + 1;
              v7 = v8 - v39;
            }

            while (v8 - v39 >= 3);
          }

          return std::string::find[abi:ne200100](a2, "ain", 0) == -1 && std::string::find[abi:ne200100](a2, "nu", 0) == -1 && (std::string::find[abi:ne200100](a3, "ं", 0) == -1 || std::string::find[abi:ne200100](a3, "ँ", 0) == -1 || std::string::find[abi:ne200100](a3, "न", 0) == -1 || std::string::find[abi:ne200100](a3, "ण", 0) == -1);
        }

        v29 = v30 + 1;
        v28 = v8 - v29;
      }

      while (v8 - v29 >= 1);
    }

    return 0;
  }

  else
  {
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = memchr(v10, 110, v9 - 1);
      if (!v11)
      {
        goto LABEL_42;
      }

      if (*v11 == 24942)
      {
        break;
      }

      v10 = v11 + 1;
      v9 = v8 - v10;
      if (v8 - v10 < 2)
      {
        goto LABEL_42;
      }
    }

    if (v11 == v8 || (v11 - v6) == -1)
    {
LABEL_42:
      v25 = v7;
      v26 = v6;
      while (1)
      {
        v27 = memchr(v26, 110, v25 - 1);
        if (!v27)
        {
          goto LABEL_46;
        }

        if (*v27 == 24942)
        {
          if (v27 != v8 && (v27 - v6) != -1)
          {
            return 0;
          }

          goto LABEL_47;
        }

        v26 = v27 + 1;
        v25 = v8 - v26;
        if (v8 - v26 <= 1)
        {
          goto LABEL_46;
        }
      }
    }

    v12 = *(a3 + 23);
    if (v12 >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    if (v12 >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = *(a3 + 8);
    }

    if (v14 >= 3)
    {
      v15 = (v13 + v14);
      v16 = v14;
      v17 = v13;
      do
      {
        v18 = memchr(v17, -32, v16 - 2);
        if (!v18)
        {
          break;
        }

        if (*v18 == 42208 && *(v18 + 2) == 168)
        {
          if (v18 != v15 && (v18 - v13) != -1)
          {
            goto LABEL_42;
          }

          break;
        }

        v17 = v18 + 1;
        v16 = v15 - v17;
      }

      while (v15 - v17 >= 3);
      v20 = v13;
      while (1)
      {
        v21 = memchr(v20, -32, v14 - 2);
        if (!v21)
        {
          break;
        }

        v22 = v21;
        if (*v21 == 42208 && *(v21 + 2) == 163)
        {
          result = 1;
          if (v22 == v15 || (v22 - v13) == -1)
          {
            return result;
          }

          goto LABEL_42;
        }

        v20 = v21 + 1;
        v14 = v15 - v20;
        result = 1;
        if (v15 - v20 < 3)
        {
          return result;
        }
      }
    }

    return 1;
  }
}

BOOL NLHindiTransliterator::isSpecialCharSeq(int a1, int a2, char *__s, int a4)
{
  if (a2 != 2)
  {
    return 0;
  }

  v5 = a4;
  v6 = a4 + 1;
  if (strlen(__s) <= v6 || __s[v5] != 114)
  {
    return 0;
  }

  v7 = __s[v6];
  return v7 == 105 || v7 == 117;
}

uint64_t NLHindiTransliterator::shouldHandleExaggeration(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  *__p = 0u;
  memset(v7, 0, sizeof(v7));
  v4 = std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(v3, &v3[v2], __p, a1 + 440, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v4;
}

void sub_22CDB9B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLHindiTransliterator::~NLHindiTransliterator(std::locale *this)
{
  NLHindiTransliterator::~NLHindiTransliterator(this);

  JUMPOUT(0x2318C0600);
}

{
  this->__locale_ = &unk_28400EFD8;
  locale = this[69].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this + 63);
  v3 = this[61].__locale_;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::locale::~locale(this + 55);
  v4 = this[53].__locale_;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::locale::~locale(this + 47);
  v5 = this[45].__locale_;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::locale::~locale(this + 39);
  v6 = this[37].__locale_;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::locale::~locale(this + 31);
  v7 = this[29].__locale_;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::locale::~locale(this + 23);

  NLGenericTransliterator::~NLGenericTransliterator(this);
}

uint64_t std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(char *__f, char *__l, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v9 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a4, __f, __l, &__p, a5 | 0x1040u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(a3, __f, __l, &__p, (v5 & 0x800) != 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if (!v9)
  {
    return 0;
  }

  if (*(a3 + 88) != 1)
  {
    return 1;
  }

  result = 0;
  *(a3 + 8) = *a3;
  return result;
}

void sub_22CDB9D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLArabicTransliterator::NLArabicTransliterator(NLArabicTransliterator *this, const __CFDictionary *a2)
{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = xmmword_22CDDF0C0;
  *(this + 34) = 2;
  *(this + 18) = 0xC03E000000000000;
  *(this + 19) = 0x3E800000005;
  *(this + 40) = 3;
  *(this + 21) = 0x3FF3333333333333;
  *(this + 22) = 0x1F40000000ALL;
  *this = &unk_28400EDE0;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]((this + 184), "[,,;.'?!:{}<>*\\-]", 0);
}

void sub_22CDBA0B4(_Unwind_Exception *a1)
{
  MEMORY[0x2318C0600](v2, 0xE1C40D30581F4);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 95);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 87);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 79);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 71);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 63);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 55);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 47);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 39);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 31);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 23);
  NLGenericTransliterator::~NLGenericTransliterator(v1);
  _Unwind_Resume(a1);
}

_BYTE *NLArabicTransliterator::getTargetDigit@<X0>(unsigned int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > 9)
  {
    v3 = "";
  }

  else
  {
    v3 = off_2787404F8[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

void NLArabicTransliterator::addDynamicMapping(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  memset(v35, 0, 41);
  memset(&v44.__prefix_, 0, 17);
  memset(&v44.__suffix_, 0, 17);
  v44.__ready_ = 0;
  v44.__position_start_ = 0;
  memset(&v44, 0, 32);
  v4 = *(a2 + 23);
  v5 = *(a2 + 8);
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
    v4 = v5;
  }

  *(&v44.__unmatched_.std::pair<const char *, const char *> + 1) = 0uLL;
  v6 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 568, a2, (a2 + v4), &v44, 0);
  v7 = *(v2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = *v2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v2 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v35, v8, (v8 + v7), &v44, 0);
  if (v44.__matches_.__begin_)
  {
    v44.__matches_.__end_ = v44.__matches_.__begin_;
    operator delete(v44.__matches_.__begin_);
  }

  if (v6)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    NLExtendedString::NLExtendedString(&v44, __p, 2, 2, 0.1);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v9 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "n");
    (*(*v9 + 16))(v9, __p, &v44);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(v32, "");
    NLExtendedString::NLExtendedString(__p, v32, 3, 2, 0.1);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    v10 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v32, "n");
    (*(*v10 + 16))(v10, v32, __p);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__matches_.__end_cap_.__value_) < 0)
    {
      operator delete(v44.__matches_.__begin_);
    }
  }

  memset(&v44.__prefix_, 0, 17);
  memset(&v44.__suffix_, 0, 17);
  v44.__ready_ = 0;
  v44.__position_start_ = 0;
  memset(&v44, 0, 41);
  v11 = *(v2 + 23);
  if ((v11 & 0x80u) == 0)
  {
    v12 = v2;
  }

  else
  {
    v12 = *v2;
  }

  if ((v11 & 0x80u) != 0)
  {
    v11 = *(v2 + 8);
  }

  v13 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 632, v12, &v12[v11], &v44, 0);
  v14 = *(v2 + 23);
  if ((v14 & 0x80u) == 0)
  {
    v15 = v2;
  }

  else
  {
    v15 = *v2;
  }

  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v2 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v35, v15, (v15 + v14), &v44, 0);
  if (v44.__matches_.__begin_)
  {
    v44.__matches_.__end_ = v44.__matches_.__begin_;
    operator delete(v44.__matches_.__begin_);
  }

  if (v13)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    NLExtendedString::NLExtendedString(&v44, __p, 2, 2, 0.1);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v16 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "h");
    (*(*v16 + 16))(v16, __p, &v44);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(v32, "");
    NLExtendedString::NLExtendedString(__p, v32, 3, 2, 0.1);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    v17 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v32, "h");
    (*(*v17 + 16))(v17, v32, __p);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__matches_.__end_cap_.__value_) < 0)
    {
      operator delete(v44.__matches_.__begin_);
    }
  }

  memset(&v44.__prefix_, 0, 17);
  memset(&v44.__suffix_, 0, 17);
  v44.__ready_ = 0;
  v44.__position_start_ = 0;
  memset(&v44, 0, 41);
  v18 = *(v2 + 23);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v2;
  }

  else
  {
    v19 = *v2;
  }

  if ((v18 & 0x80u) != 0)
  {
    v18 = *(v2 + 8);
  }

  v20 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 696, v19, &v19[v18], &v44, 0);
  v21 = *(v2 + 23);
  if ((v21 & 0x80u) == 0)
  {
    v22 = v2;
  }

  else
  {
    v22 = *v2;
  }

  if ((v21 & 0x80u) != 0)
  {
    v21 = *(v2 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v35, v22, (v22 + v21), &v44, 0);
  if (v44.__matches_.__begin_)
  {
    v44.__matches_.__end_ = v44.__matches_.__begin_;
    operator delete(v44.__matches_.__begin_);
  }

  if (v20)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    NLExtendedString::NLExtendedString(&v44, __p, 2, 2, 0.1);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v23 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "w");
    (*(*v23 + 16))(v23, __p, &v44);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(v32, "");
    NLExtendedString::NLExtendedString(__p, v32, 3, 2, 0.1);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    v24 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v32, "w");
    (*(*v24 + 16))(v24, v32, __p);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__matches_.__end_cap_.__value_) < 0)
    {
      operator delete(v44.__matches_.__begin_);
    }
  }

  memset(&v44.__prefix_, 0, 17);
  memset(&v44.__suffix_, 0, 17);
  v44.__ready_ = 0;
  v44.__position_start_ = 0;
  memset(&v44, 0, 41);
  v25 = *(v2 + 23);
  if ((v25 & 0x80u) == 0)
  {
    v26 = v2;
  }

  else
  {
    v26 = *v2;
  }

  if ((v25 & 0x80u) != 0)
  {
    v25 = *(v2 + 8);
  }

  v27 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 760, v26, &v26[v25], &v44, 0);
  v28 = *(v2 + 23);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v2;
  }

  else
  {
    v29 = *v2;
  }

  if ((v28 & 0x80u) != 0)
  {
    v28 = *(v2 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v35, v29, (v29 + v28), &v44, 0);
  if (v44.__matches_.__begin_)
  {
    v44.__matches_.__end_ = v44.__matches_.__begin_;
    operator delete(v44.__matches_.__begin_);
  }

  if (v27)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    NLExtendedString::NLExtendedString(&v44, __p, 3, 2, 0.1);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v30 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "l");
    (*(*v30 + 16))(v30, __p, &v44);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(v32, "");
    NLExtendedString::NLExtendedString(__p, v32, 3, 2, 0.1);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    v31 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v32, "h");
    (*(*v31 + 16))(v31, v32, __p);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__matches_.__end_cap_.__value_) < 0)
    {
      operator delete(v44.__matches_.__begin_);
    }
  }

  if (v35[0].__begin_)
  {
    v35[0].__end_ = v35[0].__begin_;
    operator delete(v35[0].__begin_);
  }
}

void sub_22CDBA9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v26 - 153) < 0)
  {
    operator delete(*(v26 - 176));
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NLArabicTransliterator::isSpecialCharSeq(int a1, int a2, char *__s, int a4)
{
  if (a2 != 1)
  {
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  v5 = a4;
  v6 = a4 + 1;
  if (strlen(__s) <= v6)
  {
    goto LABEL_21;
  }

  LOBYTE(v7) = 0;
  v8 = (((__s[v5] - 97) >> 1) | ((__s[v5] - 97) << 7));
  if (v8 <= 3)
  {
    if (((__s[v5] - 97) >> 1) | ((__s[v5] - 97) << 7))
    {
      if (v8 != 2)
      {
        return v7 & 1;
      }

      v9 = (__s[v6] & 0xFB) == 104;
      goto LABEL_12;
    }

    if ((__s[v6] - 104) < 0x10u)
    {
      v7 = 0x8041u >> (__s[v6] - 104);
      return v7 & 1;
    }

    goto LABEL_21;
  }

  if (v8 == 4)
  {
    if (__s[v6] == 110)
    {
LABEL_18:
      LOBYTE(v7) = 1;
      return v7 & 1;
    }

LABEL_21:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (v8 == 7)
  {
    if (__s[v6] == 119)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (v8 != 10)
  {
    return v7 & 1;
  }

  v9 = __s[v6] == 110;
LABEL_12:
  LOBYTE(v7) = v9;
  return v7 & 1;
}

void NLArabicTransliterator::addSpecialElements(void **a1, char *a2, int *a3, unsigned int *a4, unsigned int *a5, uint64_t *a6)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, a2);
  std::string::basic_string(&v16, &__str, *a3, 2uLL, &p_str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  (*(*a1[1] + 32))(&__str);
  ((*a1)[18])(a1, &__str, *a4, *a5, a2, a6);
  v12 = *a6;
  if (a6[1] != *a6)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      NLExtendedString::setJoin(v12 + v13, 1);
      ++v14;
      v12 = *a6;
      v13 += 48;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 4) > v14);
  }

  p_str = &__str;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&p_str);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_22CDBAD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t *a22)
{
  a22 = &a10;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void NLArabicTransliterator::~NLArabicTransliterator(std::locale *this)
{
  NLArabicTransliterator::~NLArabicTransliterator(this);

  JUMPOUT(0x2318C0600);
}

{
  this->__locale_ = &unk_28400EDE0;
  locale = this[101].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this + 95);
  v3 = this[93].__locale_;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::locale::~locale(this + 87);
  v4 = this[85].__locale_;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::locale::~locale(this + 79);
  v5 = this[77].__locale_;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::locale::~locale(this + 71);
  v6 = this[69].__locale_;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::locale::~locale(this + 63);
  v7 = this[61].__locale_;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::locale::~locale(this + 55);
  v8 = this[53].__locale_;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::locale::~locale(this + 47);
  v9 = this[45].__locale_;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::locale::~locale(this + 39);
  v10 = this[37].__locale_;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::locale::~locale(this + 31);
  v11 = this[29].__locale_;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::locale::~locale(this + 23);

  NLGenericTransliterator::~NLGenericTransliterator(this);
}

void NLUrduCharLanguageModeler::NLUrduCharLanguageModeler(NLUrduCharLanguageModeler *this, CFDictionaryRef theDict)
{
  *(this + 1) = 0;
  v2 = (this + 8);
  *this = &unk_28400E9B0;
  *(this + 2) = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v4 = MutableCopy;
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277D230E0], @"ur");
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.NLP");
  if (v4)
  {
    if (BundleWithIdentifier)
    {
      BundleWithIdentifier = CFBundleCopyResourcesDirectoryURL(BundleWithIdentifier);
      v6 = BundleWithIdentifier;
      if (BundleWithIdentifier)
      {
        CFDictionarySetValue(v4, *MEMORY[0x277D230A0], BundleWithIdentifier);
        *v2 = LMLanguageModelCreate();
        CFRelease(v6);
      }
    }
  }

  if (!*v2)
  {
    v7 = NL::CFLogger::sharedInstance(BundleWithIdentifier);
    (*(*v7 + 16))(v7, 3, "Could not locate Urdu character language model");
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

double NLUrduCharLanguageModeler::logProbability(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return -INFINITY;
  }

  LMLanguageModelJointProbability();
  return result;
}

double NLUrduCharLanguageModeler::logProbability(uint64_t a1, uint64_t *a2)
{
  stringToUTF32Characters(a2, __p);
  if (*(a1 + 8))
  {
    LMLanguageModelJointProbability();
    v4 = v3;
  }

  else
  {
    v4 = -INFINITY;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v4;
}

void sub_22CDBB0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLUrduCharLanguageModeler::~NLUrduCharLanguageModeler(NLUrduCharLanguageModeler *this)
{
  NLAbstractLanguageModeler::~NLAbstractLanguageModeler(this);

  JUMPOUT(0x2318C0600);
}

void NL::NumericConverter::~NumericConverter(NL::NumericConverter *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

const __CFLocale *NL::NumericConverter::locale@<X0>(NL::NumericConverter *this@<X0>, char *a2@<X8>)
{
  result = *(*this + 8);
  if (result)
  {
    Value = CFLocaleGetValue(result, *MEMORY[0x277CBEED0]);

    return getUTF8StringFromCFString(Value, a2);
  }

  else
  {
    a2[23] = 2;
    strcpy(a2, "en");
  }

  return result;
}

void NL::NumericConverter::numericValueForTypeWithValues(NL::ParserContext **this@<X0>, const __CFString *a2@<X1>, CFDictionaryRef theDict@<X2>, void *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a2 || !theDict)
  {
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_34;
  }

  v22 = 0;
  if (CFDictionaryContainsKey(theDict, @"DIGITS"))
  {
    v8 = @"DIGITS";
  }

  else if (CFDictionaryContainsKey(theDict, @"NUMBERS"))
  {
    if (NL::ParserContext::languageIsCJ(*this))
    {
      Value = CFDictionaryGetValue(theDict, @"SPELLED");
      v10 = copyTranslatedRomanNumberFromChineseNumberString(Value);
      v22 = v10;
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    v8 = @"NUMBERS";
  }

  else
  {
    if (!CFDictionaryContainsKey(theDict, @"DECIMAL"))
    {
      v10 = 0;
      goto LABEL_8;
    }

    v8 = @"DECIMAL";
  }

  Value = CFDictionaryGetValue(theDict, v8);
  v10 = 0;
LABEL_6:
  if (Value)
  {
    v10 = CFRetain(Value);
    v22 = v10;
  }

LABEL_8:
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
  cf = MutableCopy;
  if (MutableCopy)
  {
    v26.length = CFStringGetLength(a2);
    v26.location = 0;
    CFStringFindAndReplace(MutableCopy, @"Value", @"Unit", v26, 0);
    if (!CFDictionaryContainsKey(theDict, MutableCopy))
    {
      goto LABEL_19;
    }

    v12 = CFDictionaryGetValue(theDict, MutableCopy);
    v13 = v12;
    if (!v12)
    {
      *a4 = 0;
      a4[1] = 0;
LABEL_30:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_32;
    }

    if (CFDictionaryGetCount(v12) == 1)
    {
      keys[0] = 0;
      CFDictionaryGetKeysAndValues(v13, keys, 0);
      v14 = keys[0];
    }

    else
    {
LABEL_19:
      v14 = 0;
    }

    for (i = 0; i != 5; ++i)
    {
      if (CFStringHasPrefix(a2, NL::NumericConverter::numericValueForTypeWithValues(__CFString const*,__CFDictionary const*)const::intTypes[i]))
      {
        getUTF8StringFromCFString(v14, keys);
        UTF8StringFromCFString = getUTF8StringFromCFString(v10, __p);
        NL::NumericConverter::numericIntForType(UTF8StringFromCFString, v17, __p);
      }
    }

    getUTF8StringFromCFString(v14, keys);
    getUTF8StringFromCFString(v10, __p);
    NL::NumericConverter::numericDoubleForType(this, keys, __p, a4);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v24 < 0)
    {
      operator delete(keys[0]);
    }

    goto LABEL_30;
  }

  *a4 = 0;
  a4[1] = 0;
LABEL_32:
  if (v22)
  {
    CFRelease(v22);
  }

LABEL_34:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_22CDBB458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  nlp::CFScopedPtr<__CFString *>::reset(&a16, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a17, 0);
  _Unwind_Resume(a1);
}

void NL::NumericConverter::numericIntForType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a3, *(a3 + 8));
  }

  else
  {
    __str = *a3;
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v5 = std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,ValidNumChars>(p_str, p_str + size, ", ");
  v6 = &__str + HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__str;
  }

  else
  {
    v6 = (__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_);
    v7 = __str.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&__str, v5 - v7, v6 - v5);
  v8 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v8 = __str.__r_.__value_.__l.__size_;
    if (__str.__r_.__value_.__l.__size_)
    {
      v9 = __str.__r_.__value_.__r.__words[0];
      goto LABEL_17;
    }
  }

  else if (*(&__str.__r_.__value_.__s + 23))
  {
    v9 = &__str;
    do
    {
LABEL_17:
      v10 = v9->__r_.__value_.__s.__data_[0];
      if (v10 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v10 + 60) & 0x400) == 0)
      {
        goto LABEL_21;
      }

      v9 = (v9 + 1);
      --v8;
    }

    while (v8);
    std::stoi(&__str, 0, 10);
  }

LABEL_21:
  operator new();
}

void NL::NumericConverter::numericDoubleForType(NL::NumericConverter *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  *pErrorCode = 0;
  if (*(a3 + 23) < 0)
  {
    v7 = *(a3 + 8);
  }

  MEMORY[0x28223BE20]();
  v11 = (&v27 - v10);
  v12 = *(v9 + 23);
  if (v12 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = *v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v9 + 23);
  }

  else
  {
    v14 = *(v9 + 8);
  }

  u_strFromUTF8(v11, v8, pErrorCode, v13, v14, &pErrorCode[1]);
  v11[pErrorCode[0]] = 0;
  NL::NumericConverter::locale(a1, &v27);
  v15 = unum_open();
  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (pErrorCode[1] < U_ILLEGAL_ARGUMENT_ERROR)
  {
    unum_parseDouble();
    unum_close();
    if (pErrorCode[1] >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      goto LABEL_15;
    }

    v17 = *(a2 + 23);
    if (v17 >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    if (v17 >= 0)
    {
      v19 = *(a2 + 23);
    }

    else
    {
      v19 = *(a2 + 8);
    }

    if (v19 < 4)
    {
      goto LABEL_41;
    }

    v20 = (v18 + v19);
    v21 = v19;
    v22 = v18;
    while (1)
    {
      v23 = memchr(v22, 70, v21 - 3);
      if (!v23)
      {
        goto LABEL_30;
      }

      if (*v23 == 1952802118)
      {
        break;
      }

      v22 = v23 + 1;
      v21 = v20 - v22;
      if (v20 - v22 < 4)
      {
        goto LABEL_30;
      }
    }

    if (v23 == v20 || (v23 - v18) == -1)
    {
LABEL_30:
      if (v19 < 6)
      {
        goto LABEL_41;
      }

      v24 = v18;
      while (1)
      {
        v25 = memchr(v24, 73, v19 - 5);
        if (!v25)
        {
          goto LABEL_41;
        }

        if (*v25 == 1751346761 && v25[2] == 29541)
        {
          break;
        }

        v24 = v25 + 1;
        v19 = v20 - v24;
        if (v20 - v24 < 6)
        {
          goto LABEL_41;
        }
      }

      if (v25 == v20 || (v25 - v18) == -1)
      {
LABEL_41:
        if (std::string::find[abi:ne200100](a2, "Meters", 0) == -1 && std::string::find[abi:ne200100](a2, "Centimeters", 0) == -1 && std::string::find[abi:ne200100](a2, "Seconds", 0) == -1 && std::string::find[abi:ne200100](a2, "Minutes", 0) == -1 && std::string::find[abi:ne200100](a2, "Hours", 0) == -1 && std::string::find[abi:ne200100](a2, "Bytes", 0) == -1 && std::string::find[abi:ne200100](a2, "Kilobytes", 0) == -1 && std::string::find[abi:ne200100](a2, "Megabytes", 0) == -1)
        {
          std::string::find[abi:ne200100](a2, "Gigabytes", 0);
        }
      }
    }

    operator new();
  }

  if (v15)
  {
    unum_close();
  }

LABEL_15:
  *a4 = 0;
  a4[1] = 0;
  v16 = *MEMORY[0x277D85DE8];
}

void sub_22CDBBB4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,ValidNumChars>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = a2;
  if (a2 != a1)
  {
    result = a1;
    while (1)
    {
      v5 = a3;
      do
      {
        v7 = *v5++;
        v6 = v7;
      }

      while (v7 != *result && v6 != 0);
      if (v6)
      {
        break;
      }

      if (++result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 1; i != a2; ++i)
      {
        v10 = *i;
        v11 = a3;
        do
        {
          v13 = *v11++;
          v12 = v13;
        }

        while (v13 != v10 && v12 != 0);
        if (!v12)
        {
          *result++ = v10;
        }
      }
    }
  }

  return result;
}

void std::__shared_ptr_emplace<NL::NumericInterval<int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D6E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void *std::__shared_ptr_emplace<NL::NumericValue>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<NL::NumericInterval<int>> &,std::allocator<NL::NumericValue>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28400D8E0;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    a1[3] = v4;
    a1[4] = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    a1[5] = 0;
    a1[6] = 0;
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    a1[3] = v4;
    a1[4] = 0;
    a1[5] = 0;
    a1[6] = 0;
  }

  return a1;
}

void std::__shared_ptr_emplace<NL::NumericValue>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D8E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void NL::NumericValue::~NumericValue(NL::NumericValue *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__shared_ptr_emplace<NL::NumericInterval<double>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D720;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void *std::__shared_ptr_emplace<NL::NumericValue>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<NL::NumericInterval<double>> &,std::allocator<NL::NumericValue>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28400D8E0;
  std::allocator<NL::NumericValue>::construct[abi:ne200100]<NL::NumericValue,std::shared_ptr<NL::NumericInterval<double>> &>(&v4, a1 + 3, a2);
  return a1;
}

void std::allocator<NL::NumericValue>::construct[abi:ne200100]<NL::NumericValue,std::shared_ptr<NL::NumericInterval<double>> &>(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = v4;
    a2[3] = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = v4;
    a2[3] = 0;
  }
}

void SearchParseCandidate::~SearchParseCandidate(const void **this)
{
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 5, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 4, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 3, 0);
  nlp::CFScopedPtr<__CFArray const*>::reset(this + 2, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 1, 0);
}

void SearchParseCandidate::setDescription(const void **this, const __CFString *a2)
{
  nlp::CFScopedPtr<__CFString const*>::reset(this + 1, 0);
  if (a2)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], a2);

    nlp::CFScopedPtr<__CFString const*>::reset(this + 1, Copy);
  }
}

void SearchParseCandidate::setRankingTerms(const void **this, const __CFDictionary *a2)
{
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 3, 0);
  if (a2)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a2);

    nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 3, Copy);
  }
}

void SearchParseCandidate::setRankingCategories(const void **this, const __CFDictionary *a2)
{
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 4, 0);
  if (a2)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a2);

    nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 4, Copy);
  }
}

void SearchParseCandidate::setResultModifier(const void **this, const __CFDictionary *a2)
{
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 5, 0);
  if (a2)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a2);

    nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 5, Copy);
  }
}

void SearchParseCandidate::setAttributedInput(const void **this, const __CFArray *a2)
{
  nlp::CFScopedPtr<__CFArray const*>::reset(this + 2, 0);
  if (a2)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], a2);

    nlp::CFScopedPtr<__CFArray const*>::reset(this + 2, Copy);
  }
}

void SearchParser::SearchParser(SearchParser *this, const __CFDictionary *a2)
{
  *(this + 4) = 0u;
  *(this + 108) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 31) = 1;
  *(this + 64) = 1;
  SearchParser::init(this, a2);
}

void sub_22CDBC280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  nlp::CFScopedPtr<__CFDictionary const*>::reset((v10 + 112), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v10 + 104), 0);
  v13 = *(v10 + 96);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  SearchParser::SearchParser(v10, v11, (v10 + 40));
  a10 = v10;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_22CDBC4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  nlp::CFScopedPtr<__CFURL const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void SearchParser::~SearchParser(SearchParser *this)
{
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 14, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 13, 0);
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<NL::ParseBuilder>::reset[abi:ne200100](this + 8, 0);
  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<NL::ParserResources>::reset[abi:ne200100](this + 5, 0);
  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = this;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

NL::ParserResources *std::unique_ptr<NL::ParserResources>::reset[abi:ne200100](NL::ParserResources **a1, NL::ParserResources *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    NL::ParserResources::~ParserResources(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

NL::ParseBuilder *std::unique_ptr<NL::ParseBuilder>::reset[abi:ne200100](NL::ParseBuilder **a1, NL::ParseBuilder *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    NL::ParseBuilder::~ParseBuilder(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

void SearchParser::setLocale(SearchParser *this, const __CFLocale *a2)
{
  NL::ParserResources::setLocale(*(this + 5), a2);
  NL::ParserContext::setCanonicalRegions(*(this + 3), *(*(this + 5) + 24));
  v3 = NL::ParserResources::copyReferenceDatesPath(*(this + 5));
  if (v3)
  {
    v4 = v3;
    NL::ParserContext::setReferenceDatesPath(*(this + 3), v3);
    CFRelease(v4);
  }
}

void sub_22CDBC6CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFURL const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL SearchParser::hasResources(NL::ParserResources **this)
{
  NL::ParserResources::getSearchGrammar(this[5], &v3);
  v1 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1 != 0;
}

void SearchParser::addInput(SearchParser *this, CFTypeRef cf)
{
  v3 = *(this + 13);
  if (v3)
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@%@", v3, cf);
  }

  else
  {
    v4 = CFRetain(cf);
  }

  v5 = v4;
  SearchParser::setInput(this, v4);
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_22CDBC7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void SearchParser::setInput(SearchParser *this, const __CFString *a2)
{
  SearchParser::reset(this);
  if (a2)
  {
    v4 = CFRetain(a2);
  }

  else
  {
    v4 = 0;
  }

  nlp::CFScopedPtr<__CFString const*>::reset(this + 13, v4);
  NL::QueryTokenizer::setString(*(this + 6), a2);
  v5 = *(this + 8);

  NL::ParseBuilder::parse(v5);
}

void SearchParser::reset(SearchParser *this)
{
  std::vector<std::shared_ptr<NL::ParseAttributes>>::clear[abi:ne200100](this);
  *(this + 64) = 1;
  *(this + 15) = 0x100000000;
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 14, 0);
  v2 = *(this + 3);
  if (v2)
  {
    NL::ParserContext::reset(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    NL::QueryTokenizer::reset(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    NL::ParseBuilder::reset(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    NL::ParserResources::reset(v5);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(this + 13, 0);
  v6 = NL::ParserResources::copyLocale(*(this + 5));
  v22 = v6;
  if (v6)
  {
    NL::ParserContext::setLocale(*(this + 3), v6);
  }

  v7 = NL::ParserResources::copyEntityDetector(*(this + 5));
  NL::QueryTokenizer::setEntityDetector(*(this + 6), v7);
  if (v7)
  {
    NLEntityDetectorRelease(v7);
  }

  NL::ParserResources::getSearchGrammar(*(this + 5), &v20);
  v8 = v20;
  if (v20)
  {
    v9 = *(this + 3);
    v10 = *(this + 4);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(v8 + 40);
    *(v8 + 32) = v9;
    *(v8 + 40) = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  v12 = *(this + 8);
  v13 = v20;
  v14 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(v12 + 56);
  *(v12 + 48) = v13;
  *(v12 + 56) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v16 = *(this + 6);
  v17 = v20;
  v18 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = *(v16 + 24);
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_22CDBC9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFLocale const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void *SearchParser::getFormatter@<X0>(void *result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if ((a2 - 1) <= 1)
  {
    v4 = result[11];
    if (!v4)
    {
      std::allocate_shared[abi:ne200100]<NL::SpotlightParseFormatter,std::allocator<NL::SpotlightParseFormatter>,std::shared_ptr<NL::ParserContext> &,std::shared_ptr<NL::QueryTokenizer> &,0>();
    }

    v5 = result[12];
    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_9:
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    goto LABEL_10;
  }

  v4 = result[9];
  if (!v4)
  {
    std::allocate_shared[abi:ne200100]<NL::ParseFormatter,std::allocator<NL::ParseFormatter>,std::shared_ptr<NL::ParserContext> &,std::shared_ptr<NL::QueryTokenizer> &,0>();
  }

  v5 = result[10];
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  *a3 = v4;
  a3[1] = v5;
  return result;
}

void SearchParser::parse(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 120) != a2 || *(a1 + 124) != a3 || *(a1 + 128) == 1)
  {
    nlp::CFScopedPtr<__CFDictionary const*>::reset((a1 + 112), 0);
    SearchParser::getFormatter(a1, a2, &v15);
    v6 = v15;
    if (!v15)
    {
      goto LABEL_16;
    }

    if (!SearchParser::hasResources(a1))
    {
      v10 = (*(*v6 + 24))(v6, a3);
      nlp::CFScopedPtr<__CFDictionary const*>::reset((a1 + 112), v10);
      goto LABEL_16;
    }

    *(a1 + 120) = a2;
    *(a1 + 128) = 256;
    v7 = *(a1 + 64);
    v8 = *v7;
    v9 = v7[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (*(v8 + 16) != *(v8 + 8))
      {
        v13 = v8;
        v14 = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_12;
      }
    }

    else if (*(v8 + 16) != *(v8 + 8))
    {
      v13 = *v7;
      v14 = 0;
LABEL_12:
      v11 = (*(*v6 + 16))(v6, &v13, a3);
      nlp::CFScopedPtr<__CFDictionary const*>::reset((a1 + 112), v11);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (!v9)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v12 = (*(*v6 + 24))(v6, a3);
    nlp::CFScopedPtr<__CFDictionary const*>::reset((a1 + 112), v12);
    if (!v9)
    {
LABEL_16:
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      return;
    }

LABEL_15:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_16;
  }
}

void sub_22CDBCC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void SearchParser::enumerateDateRangeDisplaySuggestions(uint64_t a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (!theDict)
  {
    return;
  }

  Value = CFDictionaryGetValue(theDict, @"startDateQuery");
  v7 = CFDictionaryGetValue(theDict, @"startDateModifier");
  v8 = CFDictionaryGetValue(theDict, @"endDateQuery");
  v9 = CFDictionaryGetValue(theDict, @"endDateModifier");
  if (!Value || !v8)
  {
    return;
  }

  v10 = v9;
  v25 = 0;
  valuePtr = 0;
  if (v7)
  {
    CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr);
  }

  v23 = 0;
  if (v10)
  {
    CFNumberGetValue(v10, kCFNumberSInt32Type, &v23);
  }

  v11 = copyCurrentCalendar(*(*(a1 + 24) + 8));
  v22 = v11;
  NL::DateFormatter::DateFormatter(v17);
  v12 = NL::DateFormatter::copyDisplayStringWithStartAndEndDateForRange(v17, Value, valuePtr, v8, v23);
  if (v12)
  {
    (*(a3 + 16))(a3, v12, &v25);
  }

  if (valuePtr)
  {
    v13 = valuePtr == 3;
  }

  else
  {
    v13 = 1;
  }

  v14 = v23 == 3 && v13;
  if (v23)
  {
    v15 = 0;
  }

  else
  {
    v15 = valuePtr == 3;
  }

  if (v14 || v15)
  {
    v16 = NL::DateFormatter::copyDisplayStringForDates(v17, Value, v8);
    if (v12)
    {
      CFRelease(v12);
    }

    if (!v16)
    {
      goto LABEL_28;
    }

    (*(a3 + 16))(a3, v16, &v25);
  }

  else
  {
    v16 = v12;
    if (!v12)
    {
      goto LABEL_28;
    }
  }

  CFRelease(v16);
LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v20)
  {
    CFRelease(v20);
  }

  v20 = 0;
  if (v19)
  {
    CFRelease(v19);
  }

  v19 = 0;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

void sub_22CDBCEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  NL::DateFormatter::~DateFormatter(va);
  nlp::CFScopedPtr<__CFCalendar *>::reset(va1, 0);
  _Unwind_Resume(a1);
}

void NL::DateFormatter::~DateFormatter(const void **this)
{
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(this + 4, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(this + 3, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(this + 2, 0);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void SearchParser::enumerateDateDisplaySuggestions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v31 = *(a1 + 24);
  v32 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NL::DateConverter::DateConverter(&v33, &v31);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  NL::DateFormatter::DateFormatter(&v26);
  v5 = 0;
  v6 = 0;
  cf = 0;
  v25 = 0;
  v23 = 0;
  do
  {
    NL::DateConverter::datePeriodForRelativeDate(off_278740570[v5], &keys);
    v7 = keys;
    keys = 0;
    v25 = v7;
    if (!v6)
    {
      v6 = v7;
      if (!v7)
      {
        goto LABEL_16;
      }

LABEL_12:
      v9 = NL::DateFormatter::copyDisplayForDate(&v26, v6, 0, 0);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = v9;
      if (v9)
      {
        (*(a3 + 16))(a3, v9, &v23);
      }

      goto LABEL_16;
    }

    NL::DatePeriod::~DatePeriod(v6);
    MEMORY[0x2318C0600]();
    v8 = keys;
    keys = 0;
    if (v8)
    {
      NL::DatePeriod::~DatePeriod(v8);
      MEMORY[0x2318C0600]();
    }

    v6 = v25;
    if (v25)
    {
      goto LABEL_12;
    }

LABEL_16:
    ++v5;
  }

  while (v5 != 8);
  v10 = 0;
  keys = @"DIGITS";
  v11 = *MEMORY[0x277CBECE8];
  v12 = MEMORY[0x277CBF138];
  v13 = MEMORY[0x277CBF150];
  do
  {
    v14 = 1u;
    do
    {
      v15 = off_2787405B0[v14];
      values = CFStringCreateWithFormat(v11, 0, @"%ld", v10);
      v20 = CFDictionaryCreate(v11, &keys, &values, 1, v12, v13);
      NL::DateConverter::datePeriodForValues(v15, v20, &v19);
      v16 = v19;
      v19 = 0;
      v25 = v16;
      if (v6)
      {
        NL::DatePeriod::~DatePeriod(v6);
        MEMORY[0x2318C0600]();
        v17 = v19;
        v19 = 0;
        if (v17)
        {
          NL::DatePeriod::~DatePeriod(v17);
          MEMORY[0x2318C0600]();
        }
      }

      v6 = v25;
      v18 = NL::DateFormatter::copyDisplayForDate(&v26, v25, 0, 0);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = v18;
      (*(a3 + 16))(a3, v18, &v23);
      if (v20)
      {
        CFRelease(v20);
      }

      if (values)
      {
        CFRelease(values);
      }

      ++v14;
    }

    while (v14 != 4);
    ++v10;
  }

  while (v10 != 6);
  if (v18)
  {
    CFRelease(v18);
  }

  NL::DatePeriod::~DatePeriod(v6);
  MEMORY[0x2318C0600]();
  if (v30)
  {
    CFRelease(v30);
  }

  v30 = 0;
  if (v29)
  {
    CFRelease(v29);
  }

  v29 = 0;
  if (v28)
  {
    CFRelease(v28);
  }

  v28 = 0;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }
}

void sub_22CDBD298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = *(v33 - 88);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(exception_object);
}

void SearchParser::enumerateSuggestions(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, uint64_t a4)
{
  if (*(*(a1 + 24) + 8))
  {
    if (theDict && CFDictionaryContainsKey(theDict, @"startDateQuery") && CFDictionaryContainsKey(theDict, @"endDateQuery"))
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 0x40000000;
      v8[2] = ___ZN12SearchParser20enumerateSuggestionsEPK10__CFStringPK14__CFDictionaryU13block_pointerFvS2_PbE_block_invoke;
      v8[3] = &unk_27873FB78;
      v8[4] = a4;
      SearchParser::enumerateDateRangeDisplaySuggestions(a1, theDict, v8);
    }

    else
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 0x40000000;
      v7[2] = ___ZN12SearchParser20enumerateSuggestionsEPK10__CFStringPK14__CFDictionaryU13block_pointerFvS2_PbE_block_invoke_2;
      v7[3] = &unk_2787405E8;
      v7[4] = a4;
      SearchParser::enumerateDateDisplaySuggestions(a1, a2, v7);
    }
  }
}

const void *SearchParser::currentParse(SearchParser *this)
{
  v2 = *(this + 14);
  if (!v2 || !CFDictionaryContainsKey(v2, @"Parse"))
  {
    return 0;
  }

  v3 = *(this + 14);

  return CFDictionaryGetValue(v3, @"Parse");
}

const __CFDictionary *SearchParser::currentConfidence(SearchParser *this)
{
  valuePtr = 0;
  result = *(this + 14);
  if (result)
  {
    result = CFDictionaryContainsKey(result, @"Confidence");
    if (result)
    {
      Value = CFDictionaryGetValue(*(this + 14), @"Confidence");
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      return valuePtr;
    }
  }

  return result;
}

const void *SearchParser::rankingTerms(SearchParser *this)
{
  v2 = *(this + 14);
  if (!v2 || !CFDictionaryContainsKey(v2, @"RankTerms"))
  {
    return 0;
  }

  v3 = *(this + 14);

  return CFDictionaryGetValue(v3, @"RankTerms");
}

const void *SearchParser::rankCategories(SearchParser *this)
{
  v2 = *(this + 14);
  if (!v2 || !CFDictionaryContainsKey(v2, @"RankCategories"))
  {
    return 0;
  }

  v3 = *(this + 14);

  return CFDictionaryGetValue(v3, @"RankCategories");
}

const void *SearchParser::resultModifier(SearchParser *this)
{
  v2 = *(this + 14);
  if (!v2 || !CFDictionaryContainsKey(v2, @"ResultModifier"))
  {
    return 0;
  }

  v3 = *(this + 14);

  return CFDictionaryGetValue(v3, @"ResultModifier");
}

const void *SearchParser::attributedInput(SearchParser *this)
{
  v2 = *(this + 14);
  if (!v2 || !CFDictionaryContainsKey(v2, @"AttributedInput"))
  {
    return 0;
  }

  v3 = *(this + 14);

  return CFDictionaryGetValue(v3, @"AttributedInput");
}

uint64_t createSearchParserWrapper(SearchParser *a1)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_SearchParserWrapper)
  {
    qword_280C27410 = 0;
    unk_280C27420 = 0u;
    unk_280C27430 = 0u;
    g_CFTypeID_SearchParserWrapper = _CFRuntimeRegisterClass();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

uint64_t createSearchParseCandidateWrapper(SearchParseCandidate *a1)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_SearchParseCandidateWrapper)
  {
    qword_280C273B0 = 0;
    unk_280C273C0 = 0u;
    unk_280C273D0 = 0u;
    g_CFTypeID_SearchParseCandidateWrapper = _CFRuntimeRegisterClass();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

void NLSearchParserSetLocale(uint64_t a1, const __CFLocale *a2)
{
  if (a1 && a2)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      SearchParser::setLocale(v2, a2);
    }
  }
}

CFComparisonResult NLSearchParserSetContext(CFComparisonResult result, const __CFString *a2)
{
  if (result && a2)
  {
    v2 = *(result + 24);
    if (v2)
    {
      result = NL::ParserResources::setContext(*(v2 + 40), a2);
      *(*(v2 + 24) + 40) = *(*(v2 + 40) + 32);
    }
  }

  return result;
}

uint64_t NLSearchParserSetIndex(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    v2 = *(result + 24);
    if (v2)
    {
      *(*(v2 + 24) + 56) = a2;
    }
  }

  return result;
}

uint64_t NLSearchParserSetFutureDates(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 24);
    if (v2)
    {
      *(*(v2 + 24) + 66) = a2 != 0;
    }
  }

  return result;
}

void NLSearchParserSetCustomResourceDirectory(uint64_t a1, const __CFURL *a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      NL::ParserResources::setCustomResourcePath(*(v2 + 40), a2);
    }
  }
}

void NLSearchParserSetString(uint64_t a1, const __CFString *a2)
{
  if (a1 && a2)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      SearchParser::setInput(v2, a2);
    }
  }
}

void NLSearchParserSetDate(uint64_t a1, CFTypeRef cf2)
{
  if (a1)
  {
    if (cf2)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        NL::ParserResources::setDate(*(v3 + 40), cf2);
        v4 = *(v3 + 24);

        NL::ParserContext::setDate(v4, cf2);
      }
    }
  }
}

void NLSearchParserAppendString(uint64_t a1, CFStringRef theString)
{
  if (a1)
  {
    if (theString)
    {
      if (CFStringGetLength(theString))
      {
        v4 = *(a1 + 24);
        if (v4)
        {

          SearchParser::addInput(v4, theString);
        }
      }
    }
  }
}

uint64_t NLSearchParserGetTokenCount(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0)
  {
    return *(*(v1 + 48) + 256);
  }

  else
  {
    return -1;
  }
}

void NLSearchParserEnumerateSuggestions(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 0x40000000;
      v5[2] = __NLSearchParserEnumerateSuggestions_block_invoke;
      v5[3] = &unk_278740610;
      v5[4] = a4;
      SearchParser::enumerateSuggestions(v4, a2, a3, v5);
    }
  }
}

CFStringRef NLSearchParseCandidateCopyDescription(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0 && (v2 = *(v1 + 8)) != 0)
  {
    return CFStringCreateCopy(*MEMORY[0x277CBECE8], v2);
  }

  else
  {
    return &stru_284010170;
  }
}

__CFArray *NLSearchParseCandidateCopyRankingTerms(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a1 && (v1 = *(a1 + 24)) != 0 && (v2 = *(v1 + 24)) != 0)
  {
    Count = CFDictionaryGetCount(*(v1 + 24));
    MEMORY[0x28223BE20]();
    v5 = (v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v4 >= 0x200)
    {
      v6 = 512;
    }

    else
    {
      v6 = v4;
    }

    bzero(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    CFDictionaryGetKeysAndValues(v2, v5, 0);
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        CFArrayInsertValueAtIndex(Mutable, i, v5[i]);
      }
    }

    v12.location = 0;
    v12.length = Count;
    CFArraySortValues(Mutable, v12, compareRankTerms, v2);
  }

  else
  {
    Mutable = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return Mutable;
}

CFComparisonResult compareRankTerms(const void *key, const void *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, key);
  v6 = CFDictionaryGetValue(theDict, a2);

  return CFNumberCompare(Value, v6, 0);
}

CFDictionaryRef NLSearchParseCandidateCopyRankTerms(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0 && (v2 = *(v1 + 24)) != 0)
  {
    return CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v2);
  }

  else
  {
    return 0;
  }
}

CFArrayRef NLSearchParseCandidateCopyAttributedInput(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0 && (v2 = *(v1 + 16)) != 0)
  {
    return CFArrayCreateCopy(*MEMORY[0x277CBECE8], v2);
  }

  else
  {
    return 0;
  }
}

CFDictionaryRef NLSearchParseCandidateCopyRankCategories(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0 && (v2 = *(v1 + 32)) != 0)
  {
    return CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v2);
  }

  else
  {
    return 0;
  }
}

CFDictionaryRef NLSearchParseCandidateCopyResultModifier(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0 && (v2 = *(v1 + 40)) != 0)
  {
    return CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v2);
  }

  else
  {
    return 0;
  }
}

uint64_t NLSearchParseGetConfidence(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      return *(v1 + 48);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t NLSearchParseLanguageIsSupported(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      LOBYTE(v1) = *(v1 + 52);
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

void SearchParserWrapper::~SearchParserWrapper(SearchParserWrapper *this)
{
  SearchParserWrapper::~SearchParserWrapper(this);

  JUMPOUT(0x2318C0600);
}

{
  *this = &unk_28400F320;
  v2 = *(this + 1);
  if (v2)
  {
    SearchParser::~SearchParser(v2);
    MEMORY[0x2318C0600]();
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

void SearchParseCandidateWrapper::~SearchParseCandidateWrapper(SearchParseCandidateWrapper *this)
{
  SearchParseCandidateWrapper::~SearchParseCandidateWrapper(this);

  JUMPOUT(0x2318C0600);
}

{
  *this = &unk_28400E6A0;
  v2 = *(this + 1);
  if (v2)
  {
    SearchParseCandidate::~SearchParseCandidate(v2);
    MEMORY[0x2318C0600]();
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

void *_ZNSt3__120__shared_ptr_emplaceIN2NL13ParserContextENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28400D838;
  NL::ParserContext::ParserContext((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<NL::ParserContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void std::__shared_ptr_emplace<NL::ParserContext>::__on_zero_shared(uint64_t a1)
{
  std::__tree<std::string>::destroy(a1 + 120, *(a1 + 128));
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(a1 + 96, *(a1 + 104));
  nlp::CFScopedPtr<__CFDictionary const*>::reset((a1 + 56), 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset((a1 + 48), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((a1 + 40), 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset((a1 + 32), 0);

  nlp::CFScopedPtr<__CFDate const*>::reset((a1 + 24), 0);
}

void *std::__shared_ptr_emplace<NL::QueryTokenizer>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<NL::ParserContext> &,std::allocator<NL::QueryTokenizer>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28400D758;
  std::allocator<NL::QueryTokenizer>::construct[abi:ne200100]<NL::QueryTokenizer,std::shared_ptr<NL::ParserContext> &>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<NL::QueryTokenizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D758;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void std::allocator<NL::QueryTokenizer>::construct[abi:ne200100]<NL::QueryTokenizer,std::shared_ptr<NL::ParserContext> &>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NL::QueryTokenizer::QueryTokenizer(a2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_22CDBE37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<NL::SpotlightParseFormatter>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<NL::ParserContext> &,std::shared_ptr<NL::QueryTokenizer> &,std::allocator<NL::SpotlightParseFormatter>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28400D678;
  std::allocator<NL::SpotlightParseFormatter>::construct[abi:ne200100]<NL::SpotlightParseFormatter,std::shared_ptr<NL::ParserContext> &,std::shared_ptr<NL::QueryTokenizer> &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<NL::SpotlightParseFormatter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D678;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void std::allocator<NL::SpotlightParseFormatter>::construct[abi:ne200100]<NL::SpotlightParseFormatter,std::shared_ptr<NL::ParserContext> &,std::shared_ptr<NL::QueryTokenizer> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a3[1];
  v8 = *a3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a4[1];
  v6 = *a4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NL::SpotlightParseFormatter::SpotlightParseFormatter(a2, &v8, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_22CDBE594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<NL::ParseFormatter>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<NL::ParserContext> &,std::shared_ptr<NL::QueryTokenizer> &,std::allocator<NL::ParseFormatter>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28400D790;
  std::allocator<NL::ParseFormatter>::construct[abi:ne200100]<NL::ParseFormatter,std::shared_ptr<NL::ParserContext> &,std::shared_ptr<NL::QueryTokenizer> &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<NL::ParseFormatter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D790;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void std::allocator<NL::ParseFormatter>::construct[abi:ne200100]<NL::ParseFormatter,std::shared_ptr<NL::ParserContext> &,std::shared_ptr<NL::QueryTokenizer> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a3[1];
  v8 = *a3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a4[1];
  v6 = *a4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NL::ParseFormatter::ParseFormatter(a2, &v8, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_22CDBE7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

const void **std::unique_ptr<NL::DatePeriod>::reset[abi:ne200100](const void ***a1, const void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    NL::DatePeriod::~DatePeriod(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

id dateComponentsForDate(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = [a1 allKeys];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = [objc_msgSend(a1 objectForKey:{v8), "intValue"}];
          if ([v8 isEqualToString:@"d"])
          {
            [v2 setDay:v9];
          }

          else if ([v8 isEqualToString:@"E"])
          {
            [v2 setWeekday:v9];
          }

          else if ([v8 isEqualToString:@"F"])
          {
            [v2 setWeekdayOrdinal:v9];
          }

          else if ([v8 isEqualToString:@"M"])
          {
            [v2 setMonth:v9];
          }

          else if ([v8 isEqualToString:@"y"])
          {
            [v2 setYear:v9];
          }

          else if ([v8 isEqualToString:@"W"])
          {
            [v2 setWeekOfMonth:v9];
          }

          else if ([v8 isEqualToString:@"w"])
          {
            [v2 setWeekOfYear:v9];
          }

          else if ([v8 isEqualToString:@"Y"])
          {
            [v2 setYearForWeekOfYear:v9];
          }

          else if ([v8 isEqualToString:@"H"])
          {
            [v2 setHour:v9];
          }

          else if ([v8 isEqualToString:@"m"])
          {
            [v2 setMinute:v9];
          }

          else if ([v8 isEqualToString:@"s"])
          {
            [v2 setSecond:v9];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_22CDBEDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22CDBEEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22CDBF064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22CDBF518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22CDBF99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void **NL::DateFormatter::DateFormatter(const void **a1, const void **a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  v4 = *MEMORY[0x277CBECE8];
  ISO8601Formatter = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x277CBECE8], 0x333uLL);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(a1 + 2, ISO8601Formatter);
  v6 = *(*a1 + 1);
  if (v6)
  {
    v7 = CFDateFormatterCreate(v4, v6, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
    nlp::CFScopedPtr<__CFDateFormatter *>::reset(a1 + 4, v7);
    v8 = CFDateFormatterCreate(v4, *(*a1 + 1), kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    nlp::CFScopedPtr<__CFDateFormatter *>::reset(a1 + 3, v8);
  }

  return a1;
}

void sub_22CDBFB28(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(v4, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(v3, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(v2, 0);
  v6 = *(v1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

__CFBundle *NL::DateFormatter::copyDisplayStringForStartAndEndDateComponents(__CFDateFormatter **this, __CFCalendar *a2, const __CFLocale *a3, const __CFDate *a4, const NL::DateComponents *a5, const NL::DateComponents *a6)
{
  BundleWithIdentifier = 0;
  if (!a2)
  {
    return BundleWithIdentifier;
  }

  if (!a3)
  {
    return BundleWithIdentifier;
  }

  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.NLP");
  if (!BundleWithIdentifier)
  {
    return BundleWithIdentifier;
  }

  v21 = 0.0;
  if (!NL::DateComponents::isEmpty(a5))
  {
    if (NL::DateComponents::isEmpty(a6))
    {
      NL::DateComponents::getFullFormat(a5, a2, a4, &v21, &__p);
      v13 = copyDisplayDateForDateComponents(this[3], a2, a3, a4, a5, &__p);
      goto LABEL_8;
    }

    NL::DateComponents::getShortFormat(a5, a2, a4, &v21, &__p);
    v15 = copyDisplayDateForDateComponents(this[4], a2, a3, a4, a5, &__p);
    v19 = v15;
    NL::DateComponents::getShortFormat(a6, a2, a4, &v21, &v18);
    v16 = copyDisplayDateForDateComponents(this[4], a2, a3, a4, a6, &v18);
    v17 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"FROM_DATE_TO_DATE", @"FROM_DATE_TO_DATE", @"Localizable");
    if (v17)
    {
      BundleWithIdentifier = NLPCreateStringWithValidatedFormat(@"%1@%2@", v17, v15, v16, v17, v16);
      CFRelease(v17);
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
      BundleWithIdentifier = 0;
      if (!v16)
      {
LABEL_17:
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        goto LABEL_9;
      }
    }

    CFRelease(v16);
    goto LABEL_17;
  }

  NL::DateComponents::getFullFormat(a6, a2, a4, &v21, &__p);
  v13 = copyDisplayDateForDateComponents(this[3], a2, a3, a4, a6, &__p);
LABEL_8:
  BundleWithIdentifier = v13;
LABEL_9:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return BundleWithIdentifier;
}

void sub_22CDBFD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, const void *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a11, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a12, 0);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a19, 0);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

CFStringRef copyDisplayDateForDateComponents(__CFDateFormatter *a1, __CFCalendar *a2, const __CFLocale *a3, const __CFDate *a4, NL::DateComponents *this, uint64_t a6)
{
  StringWithDate = 0;
  if (!a1 || !a2 || !a3)
  {
    return StringWithDate;
  }

  if (NL::DateComponents::isEmpty(this))
  {
    return 0;
  }

  AbsoluteTime = NL::DateComponents::getAbsoluteTime(this, a2, a4);
  CFStringFromString = createCFStringFromString(a6);
  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, CFStringFromString, 0, a3);
  CFDateFormatterSetFormat(a1, DateFormatFromTemplate);
  v16 = *MEMORY[0x277CBECE8];
  v17 = CFDateCreate(*MEMORY[0x277CBECE8], AbsoluteTime);
  if (!v17)
  {
    StringWithDate = 0;
    if (!DateFormatFromTemplate)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  StringWithDate = CFDateFormatterCreateStringWithDate(v16, a1, v17);
  CFRelease(v17);
  if (DateFormatFromTemplate)
  {
LABEL_10:
    CFRelease(DateFormatFromTemplate);
  }

LABEL_11:
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  return StringWithDate;
}

void sub_22CDBFF30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  nlp::CFScopedPtr<__CFDate const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va2, 0);
  _Unwind_Resume(a1);
}

__CFBundle *NL::DateFormatter::copyDisplayStringForStartAndEndDateAndFreqComponents(NL::DateFormatter *this, __CFCalendar *a2, const __CFLocale *a3, const __CFDate *a4, const NL::DateComponents *a5, const NL::DateComponents *a6, const __CFString *a7)
{
  BundleWithIdentifier = 0;
  if (a2)
  {
    if (a3)
    {
      if (a7)
      {
        BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.NLP");
        if (BundleWithIdentifier)
        {
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a7, @"::");
          v33 = ArrayBySeparatingStrings;
          if (CFArrayGetCount(ArrayBySeparatingStrings) != 2)
          {
            BundleWithIdentifier = 0;
            if (!ArrayBySeparatingStrings)
            {
              return BundleWithIdentifier;
            }

            goto LABEL_20;
          }

          NL::DatePeriod::DatePeriod(v28);
          NL::DatePeriod::setLocale(v28, a3);
          NL::DatePeriod::setCurrentDate(v28, a4);
          v16 = MEMORY[0x2318BF5E0](a2);
          NL::DatePeriod::setCalendarWithIdentifier(v28, v16);
          ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
          NL::DatePeriod::setDisplayKey(v28, ValueAtIndex);
          v18 = *(a5 + 1);
          v29 = *a5;
          v30 = v18;
          v19 = *(a5 + 3);
          v31 = *(a5 + 2);
          v32 = v19;
          v20 = NL::DateFormatter::copyDisplayForDate(this, v28, 0, 0);
          v21 = *(a6 + 1);
          v29 = *a6;
          v30 = v21;
          v22 = *(a6 + 3);
          v31 = *(a6 + 2);
          v32 = v22;
          v23 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
          NL::DatePeriod::setDisplayKey(v28, v23);
          v24 = NL::DateFormatter::copyDisplayForDate(this, v28, 0, 0);
          v25 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"EVERY_DATE_TO_DATE", @"EVERY_DATE_TO_DATE", @"Localizable");
          if (v25)
          {
            if (CFStringHasPrefix(v20, @"Every"))
            {
              BundleWithIdentifier = NLPCreateStringWithValidatedFormat(@"%1@%2@", v25, v20, v24);
            }

            else
            {
              v26 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Every %@", v20);
              BundleWithIdentifier = NLPCreateStringWithValidatedFormat(@"%1@%2@", v25, v26, v24, v26, v25, v24, v20);
              if (v26)
              {
                CFRelease(v26);
              }
            }

            CFRelease(v25);
          }

          else
          {
            BundleWithIdentifier = 0;
          }

          if (v24)
          {
            CFRelease(v24);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          NL::DatePeriod::~DatePeriod(v28);
          if (ArrayBySeparatingStrings)
          {
LABEL_20:
            CFRelease(ArrayBySeparatingStrings);
          }
        }
      }
    }
  }

  return BundleWithIdentifier;
}

void sub_22CDC01E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v9 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v11 = va_arg(va4, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va2, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va3, 0);
  NL::DatePeriod::~DatePeriod(va4);
  nlp::CFScopedPtr<__CFArray const*>::reset((v3 - 88), 0);
  _Unwind_Resume(a1);
}

__CFDateFormatter **NL::DateFormatter::copyDisplayForDate(__CFDateFormatter **this, const NL::DatePeriod *a2, int a3, int a4)
{
  if (*(a2 + 1))
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  if (!*(a2 + 2))
  {
    return 0;
  }

  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.NLP");
  if (!BundleWithIdentifier)
  {
    return 0;
  }

  v10 = BundleWithIdentifier;
  v49 = 0;
  v50 = 0;
  memset(v48, 0, sizeof(v48));
  memset(v47, 0, sizeof(v47));
  NL::DatePeriod::resolveDateComponents(a2, v48, v47, a3, a4);
  if (CFStringFind(*a2, @"::", 0).location != -1)
  {
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    v13 = *(a2 + 28);
    v14 = *a2;
    goto LABEL_9;
  }

  if (CFStringFind(*a2, @":", 0).location != -1)
  {
    isEmpty = NL::DateComponents::isEmpty(v47);
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    v13 = *(a2 + 28);
    v14 = *a2;
    if (isEmpty)
    {
      v15 = NL::DateFormatter::copyDisplayStringForEveryOrdinalISODateComponents(this, v11, v12, v13, v48, *a2);
      goto LABEL_10;
    }

LABEL_9:
    v15 = NL::DateFormatter::copyDisplayStringForStartAndEndDateAndFreqComponents(this, v11, v12, v13, v48, v47, v14);
LABEL_10:
    this = v15;
    goto LABEL_11;
  }

  if (CFStringHasPrefix(*a2, @"VAL"))
  {
    v18 = *MEMORY[0x277CBECE8];
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], *a2, @"-");
    theArray[0] = ArrayBySeparatingStrings;
    if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) == 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], 1);
      v21 = CFRetain(ValueAtIndex);
      nlp::CFScopedPtr<__CFString const*>::reset(&v49, v21);
      v22 = CFArrayGetValueAtIndex(theArray[0], 0);
      v51.length = CFStringGetLength(v22) - 4;
      v51.location = 4;
      __p.__r_.__value_.__r.__words[0] = CFStringCreateWithSubstring(v18, v22, v51);
      IntValue = CFStringGetIntValue(__p.__r_.__value_.__l.__data_);
      nlp::CFScopedPtr<__CFString const*>::reset(&__p.__r_.__value_.__l.__data_, 0);
    }

    else
    {
      IntValue = 0;
    }

    nlp::CFScopedPtr<__CFArray const*>::reset(theArray, 0);
  }

  else
  {
    if (CFStringsAreEqual(*a2, @"FORMATTED") || CFStringHasSuffix(*a2, @"HOLIDAY"))
    {
      if (!NL::DateComponents::isEmpty(v48) && !NL::DateComponents::isEmpty(v47))
      {
        v15 = NL::DateFormatter::copyDisplayStringForStartAndEndDateComponents(this, *(a2 + 1), *(a2 + 2), *(a2 + 28), v48, v47);
        goto LABEL_10;
      }

      v46 = 0.0;
      v24 = (a2 + 28);
      if (a4)
      {
        v24 = v48;
      }

      v25 = v24[1];
      *theArray = *v24;
      v43 = v25;
      v26 = v24[3];
      v44 = v24[2];
      v45 = v26;
      NL::DateComponents::getFullFormat(theArray, *(a2 + 1), *(a2 + 28), &v46, &__p);
      v27 = copyDisplayDateForDateComponents(this[3], *(a2 + 1), *(a2 + 2), *(a2 + 28), theArray, &__p);
      nlp::CFScopedPtr<__CFString const*>::reset(&v50, v27);
      v28 = a3 >= 4 || v50 == 0;
      v29 = !v28;
      if (!v28)
      {
        this = CFRetain(v50);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v29)
      {
        goto LABEL_11;
      }
    }

    else if (CFStringHasPrefix(*a2, @"EVERY") && !NL::DateComponents::isEmpty(v48) && NL::DateComponents::isEmpty(v47))
    {
      v46 = 0.0;
      NL::DateComponents::getFullFormat((a2 + 28), *(a2 + 1), *(a2 + 28), &v46, &__p);
      v31 = v48;
      if (!a4)
      {
        v31 = (a2 + 28);
      }

      v32 = v31[1];
      *theArray = *v31;
      v43 = v32;
      v33 = v31[3];
      v44 = v31[2];
      v45 = v33;
      v34 = copyDisplayDateForDateComponents(this[3], *(a2 + 1), *(a2 + 2), *(a2 + 28), theArray, &__p);
      nlp::CFScopedPtr<__CFString const*>::reset(&v50, v34);
      v35 = v50;
      if (v50)
      {
        v40 = CFBundleCopyLocalizedString(v10, *a2, *a2, @"Localizable");
        this = NLPCreateStringWithValidatedFormat(@"%@", v40, v50);
        nlp::CFScopedPtr<__CFString const*>::reset(&v40, 0);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v35)
      {
        goto LABEL_11;
      }
    }

    IntValue = 0;
  }

  if (a3 <= 5)
  {
    if (a3 != 4)
    {
      if (a3 == 5)
      {
        if (v49)
        {
          v30 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"AFTER_%@", v49);
LABEL_77:
          nlp::CFScopedPtr<__CFString const*>::reset(&v49, v30);
          goto LABEL_78;
        }

        if (v50)
        {
          v30 = @"AFTER_DATE";
          goto LABEL_77;
        }

LABEL_76:
        v30 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"AFTER_%@", *a2);
        goto LABEL_77;
      }

      goto LABEL_78;
    }

    if (v49)
    {
      v30 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"BEFORE_%@", v49);
      goto LABEL_77;
    }

    if (v50)
    {
      v30 = @"BEFORE_DATE";
      goto LABEL_77;
    }

LABEL_74:
    v30 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"BEFORE_%@", *a2);
    goto LABEL_77;
  }

  if (a3 == 6)
  {
    if (v49)
    {
      v30 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"SINCE_%@", v49);
      goto LABEL_77;
    }

    if (v50)
    {
      v30 = @"SINCE_DATE";
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  if (a3 == 7)
  {
    if (v49)
    {
      v30 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"TO_%@", v49);
      goto LABEL_77;
    }

    if (v50)
    {
      v30 = @"TO_DATE";
      goto LABEL_77;
    }

    goto LABEL_74;
  }

LABEL_78:
  v36 = v49;
  if (v49 || (v37 = CFRetain(*a2), nlp::CFScopedPtr<__CFString const*>::reset(&v49, v37), (v36 = v49) != 0))
  {
    v38 = CFBundleCopyLocalizedString(v10, v36, v36, @"Localizable");
    theArray[0] = v38;
    if (v38)
    {
      if (IntValue)
      {
        v39 = NLPCreateStringWithValidatedFormat(@"%d", v38, IntValue);
      }

      else
      {
        v39 = NLPCreateStringWithValidatedFormat(@"%@", v38, v50);
      }

      this = v39;
      nlp::CFScopedPtr<__CFString const*>::reset(theArray, 0);
    }

    else
    {
      nlp::CFScopedPtr<__CFString const*>::reset(theArray, 0);
      this = 0;
    }

LABEL_11:
    if (v49)
    {
      CFRelease(v49);
    }

    goto LABEL_13;
  }

  this = 0;
LABEL_13:
  if (v50)
  {
    CFRelease(v50);
  }

  return this;
}

void sub_22CDC08F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a11, 0);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFString const*>::reset((v18 - 80), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v18 - 72), 0);
  _Unwind_Resume(a1);
}

__CFBundle *NL::DateFormatter::copyDisplayStringForEveryOrdinalISODateComponents(NL::DateFormatter *this, __CFCalendar *a2, const __CFLocale *a3, const __CFDate *a4, const NL::DateComponents *a5, const __CFString *a6)
{
  BundleWithIdentifier = 0;
  if (a2)
  {
    if (a3)
    {
      if (a6)
      {
        BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.NLP");
        if (BundleWithIdentifier)
        {
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a6, @":");
          v37 = ArrayBySeparatingStrings;
          if (CFArrayGetCount(ArrayBySeparatingStrings) == 3)
          {
            NL::DatePeriod::DatePeriod(v32);
            NL::DatePeriod::setLocale(v32, a3);
            NL::DatePeriod::setCurrentDate(v32, a4);
            v14 = MEMORY[0x2318BF5E0](a2);
            NL::DatePeriod::setCalendarWithIdentifier(v32, v14);
            ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
            v16 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
            v17 = *MEMORY[0x277CBECE8];
            v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@", ValueAtIndex, v16);
            NL::DatePeriod::setDisplayKey(v32, v18);
            v19 = *(a5 + 1);
            v33 = *a5;
            v34 = v19;
            v20 = *(a5 + 3);
            v35 = *(a5 + 2);
            v36 = v20;
            v21 = NL::DateFormatter::copyDisplayForDate(this, v32, 0, 0);
            v22 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
            NL::DatePeriod::setDisplayKey(v32, v22);
            v23 = NL::DateFormatter::copyDisplayForDate(this, v32, 0, 0);
            BundleWithIdentifier = CFStringCreateWithFormat(v17, 0, @"%@ %@", v21, v23);
            if (v23)
            {
              CFRelease(v23);
            }

            if (v21)
            {
LABEL_19:
              CFRelease(v21);
            }

LABEL_20:
            NL::DatePeriod::~DatePeriod(v32);
            if (!ArrayBySeparatingStrings)
            {
              return BundleWithIdentifier;
            }

            goto LABEL_23;
          }

          if (CFArrayGetCount(ArrayBySeparatingStrings) == 2)
          {
            NL::DatePeriod::DatePeriod(v32);
            NL::DatePeriod::setLocale(v32, a3);
            NL::DatePeriod::setCurrentDate(v32, a4);
            v24 = MEMORY[0x2318BF5E0](a2);
            NL::DatePeriod::setCalendarWithIdentifier(v32, v24);
            v25 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
            NL::DatePeriod::setDisplayKey(v32, v25);
            v26 = *(a5 + 1);
            v33 = *a5;
            v34 = v26;
            v27 = *(a5 + 3);
            v35 = *(a5 + 2);
            v36 = v27;
            v21 = NL::DateFormatter::copyDisplayForDate(this, v32, 0, 0);
            v28 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
            NL::DatePeriod::setDisplayKey(v32, v28);
            v29 = NL::DateFormatter::copyDisplayForDate(this, v32, 0, 0);
            v30 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"EVERY_ORDINAL_FORMATTED_DATE", @"EVERY_ORDINAL_FORMATTED_DATE", @"Localizable");
            BundleWithIdentifier = 0;
            if (v30)
            {
              if (v29 && v21)
              {
                BundleWithIdentifier = NLPCreateStringWithValidatedFormat(@"%1@%2@", v30, v29, v21);
              }

              CFRelease(v30);
            }

            if (v29)
            {
              CFRelease(v29);
            }

            if (v21)
            {
              goto LABEL_19;
            }

            goto LABEL_20;
          }

          BundleWithIdentifier = 0;
          if (ArrayBySeparatingStrings)
          {
LABEL_23:
            CFRelease(ArrayBySeparatingStrings);
          }
        }
      }
    }
  }

  return BundleWithIdentifier;
}

void sub_22CDC0CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va2, 0);
  NL::DatePeriod::~DatePeriod(va3);
  nlp::CFScopedPtr<__CFArray const*>::reset((v4 - 72), 0);
  _Unwind_Resume(a1);
}

CFStringRef NL::DateFormatter::copyISODisplayForDateComponents(NL::DateFormatter *this, __CFCalendar *a2, const NL::DateComponents *a3)
{
  if (NL::DateComponents::isEmpty(a3))
  {
    return 0;
  }

  at = 0.0;
  NL::DateComponents::getShortFormat(a3, a2, **this, &at, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = *MEMORY[0x277CBECE8];
  v7 = CFDateCreate(*MEMORY[0x277CBECE8], at);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  StringWithDate = CFDateFormatterCreateStringWithDate(v6, *(this + 2), v7);
  CFRelease(v8);
  return StringWithDate;
}

void sub_22CDC0E28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFDate const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

__CFBundle *NL::DateFormatter::copyDisplayStringWithStartAndEndDateForRange(NL::DateFormatter *this, const __CFString *a2, int a3, const __CFString *a4, int a5)
{
  Copy = 0;
  if (!a2)
  {
    return Copy;
  }

  if (!a4)
  {
    return Copy;
  }

  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.NLP");
  Copy = BundleWithIdentifier;
  if (!BundleWithIdentifier)
  {
    return Copy;
  }

  v30 = 0;
  cf = 0;
  if (a3 == 1)
  {
    v12 = CFRetain(a2);
    v30 = v12;
  }

  else if (a3 == 3)
  {
    if (!a5)
    {
      v18 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"TO_DATE", @"TO_DATE", @"Localizable");
      if (v18)
      {
        v19 = NLPCreateStringWithValidatedFormat(@"%@", v18, a2);
        nlp::CFScopedPtr<__CFString const*>::reset(&cf, v19);
        CFRelease(v18);
      }

      goto LABEL_28;
    }

    v11 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"FROM_DATE", @"FROM_DATE", @"Localizable");
    if (v11)
    {
      cf = NLPCreateStringWithValidatedFormat(@"%@", v11, a2);
      CFRelease(v11);
    }

    v12 = 0;
  }

  else
  {
    v13 = CFRetain(a2);
    v12 = 0;
    cf = v13;
  }

  if (a5 == 1)
  {
    if (v12)
    {
      v16 = CFRetain(a4);
      v17 = cf;
      if (cf)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v20 = CFRetain(a4);
LABEL_32:
    v12 = v20;
    v30 = v20;
    goto LABEL_33;
  }

  if (a5 == 3)
  {
    if (v12)
    {
      v14 = CFBundleCopyLocalizedString(Copy, @"FROM_DATE", @"FROM_DATE", @"Localizable");
      if (v14)
      {
        v15 = NLPCreateStringWithValidatedFormat(@"%@", v14, a4);
        if (cf)
        {
          CFRelease(cf);
        }

        cf = v15;
        CFRelease(v14);
      }
    }

    else
    {
      v21 = CFBundleCopyLocalizedString(Copy, @"TO_DATE", @"TO_DATE", @"Localizable");
      if (v21)
      {
        v12 = NLPCreateStringWithValidatedFormat(@"%@", v21, a4);
        v30 = v12;
        CFRelease(v21);
      }

      else
      {
        v12 = 0;
      }
    }

    goto LABEL_33;
  }

  if (!v12)
  {
LABEL_28:
    v20 = CFRetain(a4);
    goto LABEL_32;
  }

  v16 = CFRetain(a4);
  v17 = cf;
  if (cf)
  {
LABEL_24:
    CFRelease(v17);
  }

LABEL_25:
  cf = v16;
LABEL_33:
  v22 = CFBundleCopyLocalizedString(Copy, @"DATE1_DATE2", @"DATE1_DATE2", @"Localizable");
  v29 = v22;
  if (v22)
  {
    v23 = *MEMORY[0x277CBECE8];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v22);
    v25 = MutableCopy;
    theString = MutableCopy;
    if (MutableCopy)
    {
      v26 = cf;
      v32.length = CFStringGetLength(MutableCopy);
      v32.location = 0;
      CFStringFindAndReplace(v25, @"%@1", v26, v32, 0);
      v33.length = CFStringGetLength(v25);
      v33.location = 0;
      CFStringFindAndReplace(v25, @"%@2", v12, v33, 0);
      Copy = CFStringCreateCopy(v23, theString);
      CFRelease(theString);
    }

    else
    {
      Copy = 0;
    }

    if (v29)
    {
      CFRelease(v29);
    }
  }

  else
  {
    Copy = 0;
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Copy;
}

void sub_22CDC11C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va2, 0);
  _Unwind_Resume(a1);
}

CFStringRef NL::DateFormatter::copyDisplayStringForDates(NL::DateFormatter *this, const __CFString *a2, const __CFString *a3)
{
  Copy = 0;
  if (a2 && a3)
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.NLP");
    if (BundleWithIdentifier && (v7 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"DATE1_DATE2", @"DATE1_DATE2", @"Localizable")) != 0)
    {
      v8 = v7;
      v9 = *MEMORY[0x277CBECE8];
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v7);
      v11 = MutableCopy;
      if (MutableCopy)
      {
        v13.length = CFStringGetLength(MutableCopy);
        v13.location = 0;
        CFStringFindAndReplace(v11, @"%@1", a2, v13, 0);
        v14.length = CFStringGetLength(v11);
        v14.location = 0;
        CFStringFindAndReplace(v11, @"%@2", a3, v14, 0);
        Copy = CFStringCreateCopy(v9, v11);
        CFRelease(v11);
      }

      else
      {
        Copy = 0;
      }

      CFRelease(v8);
    }

    else
    {
      return 0;
    }
  }

  return Copy;
}

void sub_22CDC1394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

__CFDictionary *NL::DateFormatter::copyComponentsForDateComponents(NL::DateFormatter *this, const NL::DateComponents *a2)
{
  if (NL::DateComponents::isEmpty(a2))
  {
    return 0;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (*a2)
  {
    v5 = CFNumberCreate(v4, kCFNumberIntType, a2);
    CFDictionarySetValue(Mutable, @"d", v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (*(a2 + 9))
  {
    v6 = CFNumberCreate(v4, kCFNumberIntType, a2 + 36);
    CFDictionarySetValue(Mutable, @"E", v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (*(a2 + 10))
  {
    v7 = CFNumberCreate(v4, kCFNumberIntType, a2 + 40);
    CFDictionarySetValue(Mutable, @"F", v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (*(a2 + 1))
  {
    v8 = CFNumberCreate(v4, kCFNumberIntType, a2 + 4);
    CFDictionarySetValue(Mutable, @"M", v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (*(a2 + 2))
  {
    v9 = CFNumberCreate(v4, kCFNumberIntType, a2 + 8);
    CFDictionarySetValue(Mutable, @"y", v9);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  if (*(a2 + 11))
  {
    v10 = CFNumberCreate(v4, kCFNumberIntType, a2 + 44);
    CFDictionarySetValue(Mutable, @"W", v10);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  if (*(a2 + 12))
  {
    v11 = CFNumberCreate(v4, kCFNumberIntType, a2 + 48);
    CFDictionarySetValue(Mutable, @"w", v11);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (*(a2 + 13))
  {
    v12 = CFNumberCreate(v4, kCFNumberIntType, a2 + 52);
    CFDictionarySetValue(Mutable, @"Y", v12);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  if (*(a2 + 6))
  {
    v13 = CFNumberCreate(v4, kCFNumberIntType, a2 + 24);
    CFDictionarySetValue(Mutable, @"H", v13);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (*(a2 + 7))
  {
    v14 = CFNumberCreate(v4, kCFNumberIntType, a2 + 28);
    CFDictionarySetValue(Mutable, @"m", v14);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  v16 = *(a2 + 8);
  v15 = a2 + 32;
  if (v16)
  {
    v17 = CFNumberCreate(v4, kCFNumberIntType, v15);
    CFDictionarySetValue(Mutable, @"s", v17);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  return Mutable;
}

void sub_22CDC1720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

CFArrayRef *NLBranchGetRoot(CFArrayRef *result)
{
  if (result)
  {
    v1 = result;
    valuePtr = 0;
    result = CFArrayGetCount(*result);
    if (result)
    {
      result = CFArrayGetValueAtIndex(*v1, 0);
      if (result)
      {
        CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
        return valuePtr;
      }
    }
  }

  return result;
}

CFArrayRef *NLBranchGetLeaf(CFArrayRef *result)
{
  if (result)
  {
    v1 = result;
    valuePtr = 0;
    Count = CFArrayGetCount(*result);
    ValueAtIndex = CFArrayGetValueAtIndex(*v1, Count - 1);
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

uint64_t NLBranchGetLocation(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 18);
  }

  else
  {
    return -1;
  }
}

uint64_t NLBranchGetTokenSpan(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  result = *(a1 + 14);
  v3 = *(a1 + 16);
  return result;
}

uint64_t NLBranchGetScore(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

_DWORD *branchRetain(const __CFAllocator *a1, _DWORD *a2)
{
  result = a2;
  if (a2)
  {
    ++a2[6];
  }

  return result;
}

void branchRelease(const __CFAllocator *a1, CFTypeRef *a2)
{
  if (a2)
  {
    v3 = *(a2 + 6) - 1;
    *(a2 + 6) = v3;
    if (!v3)
    {
      CFRelease(*a2);

      free(a2);
    }
  }
}

BOOL NLBranchIsEqual(CFArrayRef *a1, CFArrayRef *a2)
{
  if (!a1)
  {
    Count = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  Count = CFArrayGetCount(*a1);
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = CFArrayGetCount(*a2);
LABEL_6:
  if (Count != v5)
  {
    return 0;
  }

  Root = NLBranchGetRoot(a1);
  if (Root != NLBranchGetRoot(a2))
  {
    return 0;
  }

  Leaf = NLBranchGetLeaf(a1);
  if (Leaf != NLBranchGetLeaf(a2))
  {
    return 0;
  }

  if (a1)
  {
    v8 = *(a1 + 6);
    if (a2)
    {
LABEL_11:
      v9 = *(a2 + 6);
      return v8 == v9;
    }
  }

  else
  {
    v8 = 0xFFFF;
    if (a2)
    {
      goto LABEL_11;
    }
  }

  v9 = 0xFFFF;
  return v8 == v9;
}

uint64_t NLBranchRetain(uint64_t result)
{
  if (result)
  {
    ++*(result + 24);
  }

  return result;
}

_DWORD *parseRetain(const __CFAllocator *a1, _DWORD *a2)
{
  result = a2;
  if (a2)
  {
    ++a2[4];
  }

  return result;
}

void parseRelease(const __CFAllocator *a1, CFTypeRef *a2)
{
  if (a2)
  {
    v3 = *(a2 + 4) - 1;
    *(a2 + 4) = v3;
    if (!v3)
    {
      CFRelease(*a2);

      free(a2);
    }
  }
}

void *NLParseCreate(CFIndex a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200405AF6BDC9uLL);
  if (v2)
  {
    callBacks.retain = branchRetain;
    callBacks.release = branchRelease;
    *v2 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], a1, &callBacks);
    v2[1] = 0xFFFFFFFF00000000;
    *(v2 + 4) = 1;
  }

  return v2;
}

void NLParseAddBranch(uint64_t a1, __int16 *value)
{
  if (a1 && value)
  {
    CFArrayAppendValue(*a1, value);
    v4 = *(a1 + 12);
    v5 = value[7];
    if (v4 < 0)
    {
      LOWORD(v4) = value[7];
    }

    *(a1 + 12) = v4;
    v6 = *(a1 + 14) + v4;
    v7 = value[8] + v5;
    v8 = v7 - v4;
    if (v6 >= v7)
    {
      v8 = *(a1 + 14);
    }

    *(a1 + 14) = v8;
    *(a1 + 8) += *(value + 2);
  }
}

uint64_t NLParseGetTokenCount(uint64_t result)
{
  if (result)
  {
    return *(result + 14) - *(result + 12);
  }

  return result;
}

void NLParseEnumerateBranches(CFArrayRef *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v9 = 0;
      Count = CFArrayGetCount(*a1);
      context = 0;
      v10.location = 0;
      v10.length = Count;
      CFArraySortValues(*a1, v10, NLBranchCompare, &context);
      if (Count >= 1)
      {
        v5 = 0;
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
          if (!v5 || !NLBranchIsEqual(v5, ValueAtIndex))
          {
            (*(a2 + 16))(a2, ValueAtIndex, &v9);
            v5 = ValueAtIndex;
            if (v9)
            {
              break;
            }
          }
        }
      }
    }
  }
}

uint64_t NLBranchCompare(__int16 *a1, __int16 *a2, void *a3)
{
  if (!a1)
  {
    v4 = 0;
    v3 = -1;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    v5 = -1;
    goto LABEL_6;
  }

  v3 = a1[7];
  v4 = a1[8];
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = a2[7];
  v6 = a2[8];
LABEL_6:
  if (v3 == v5 && v4 == v6)
  {
    if (a1)
    {
      v7 = a1[6];
      if (a2)
      {
LABEL_10:
        v8 = a2[6];
        goto LABEL_22;
      }
    }

    else
    {
      v7 = 0xFFFF;
      if (a2)
      {
        goto LABEL_10;
      }
    }

    v8 = 0xFFFF;
LABEL_22:
    if (v7 == v8)
    {
      if (a1)
      {
        v12 = *(a1 + 2);
        if (a2)
        {
LABEL_25:
          v13 = *(a2 + 2);
          goto LABEL_31;
        }
      }

      else
      {
        v12 = 0;
        if (a2)
        {
          goto LABEL_25;
        }
      }

      v13 = 0;
LABEL_31:
      if (v12 == v13)
      {
        return 0;
      }

      if (a1)
      {
        v16 = *(a1 + 2);
        if (a2)
        {
LABEL_35:
          v17 = *(a2 + 2);
          goto LABEL_43;
        }
      }

      else
      {
        v16 = 0;
        if (a2)
        {
          goto LABEL_35;
        }
      }

      v17 = 0;
LABEL_43:
      if (v16 > v17)
      {
        return -1;
      }

      else
      {
        return 1;
      }
    }

    if (a1)
    {
      v14 = *(a1 + 2);
      if (a2)
      {
LABEL_28:
        v15 = *(a2 + 2);
        goto LABEL_38;
      }
    }

    else
    {
      v14 = 0;
      if (a2)
      {
        goto LABEL_28;
      }
    }

    v15 = 0;
LABEL_38:
    if (v14 < v15)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  if (v3 < v5)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v4 > v6)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v3 == v5)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

void *NLGraphStructureStackCreate(void)
{
  v0 = malloc_type_calloc(1uLL, 0x78uLL, 0x10300403A992469uLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0x4000000000;
    v0[1] = malloc_type_calloc(0x40uLL, 0x1CuLL, 0x1000040028C9EA4uLL);
    v1[2] = 0;
    *(v1 + 6) = 128;
    v1[4] = malloc_type_calloc(0x80uLL, 4uLL, 0x100004052888210uLL);
    *(v1 + 10) = 0x40000;
    v1[6] = malloc_type_calloc(4uLL, 4uLL, 0x100004052888210uLL);
    *(v1 + 14) = 0x40000;
    v1[8] = malloc_type_calloc(4uLL, 4uLL, 0x100004052888210uLL);
    *(v1 + 72) = 0;
    v1[13] = 0;
    v1[10] = 0;
    v1[11] = 0;
    *(v1 + 28) = 1;
  }

  return v1;
}

uint64_t NLGraphStructureSetGrammar(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v2 = result;
    result = *a2;
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v4 = *(v2 + 88);
    *(v2 + 80) = result;
    *(v2 + 88) = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      result = *(v2 + 80);
    }

    if (result)
    {
      if (!*(v2 + 16))
      {
        v6 = 0;
        v7 = &v6;
        v8 = 0x2000000000;
        v9 = 0;
        v5[0] = MEMORY[0x277D85DD0];
        v5[1] = 0x40000000;
        v5[2] = ___Z26NLGraphStructureSetGrammarP22_NLGraphStructureStackNSt3__110shared_ptrIN2NL13SearchGrammarEEE_block_invoke;
        v5[3] = &unk_27873FBA0;
        v5[4] = &v6;
        NL::SearchGrammar::termIDs(result, v5);
        *(v2 + 20) = *(v7 + 6);
        _Block_object_dispose(&v6, 8);
      }

      return NLGraphStructureUpdate(v2);
    }
  }

  return result;
}

void sub_22CDC1F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z26NLGraphStructureSetGrammarP22_NLGraphStructureStackNSt3__110shared_ptrIN2NL13SearchGrammarEEE_block_invoke(uint64_t result, unsigned int a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24) < a2)
  {
    *(v2 + 24) = a2;
  }

  return result;
}

uint64_t NLGraphStructureUpdate(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = NL::SearchGrammar::hasResources(*(result + 80));
    if (result)
    {
      result = NL::SearchGrammar::tokenDelayed(*(v1 + 80));
    }

    *(v1 + 96) = result;
  }

  return result;
}

void NLGraphStructureStackAdd(uint64_t a1, int a2, int a3, __int16 a4)
{
  if (a1)
  {
    gssSetNode(a1, a3, a4, 0, 0, 1, 0);
    if (a2)
    {
      v8 = gssSetNodeWithNode(a1, a2, v7, 1, 0, 0);
      if (NL::SearchGrammar::isInferred(*(a1 + 80), a2) && (v8 & 0x80000000) == 0 && *a1 > v8)
      {
        v9 = *(a1 + 8);
        if (v9)
        {
          *(v9 + 28 * v8) |= 8u;
        }
      }

      if (*(a1 + 56))
      {
        v10 = *(a1 + 72);
        if (v10 + 1 >= a3)
        {
          isCombinable = NL::SearchGrammar::isCombinable(*(a1 + 80), a2);
          v11 = isCombinable;
          if (v10 < a3 && !isCombinable && *(a1 + 56))
          {
            v16 = 0;
            do
            {
              if (*(*(a1 + 64) + 4 * v16) >= *a1)
              {
                v17 = -1;
              }

              else
              {
                v17 = *(*(a1 + 64) + 4 * v16);
              }

              gssCombinableShift(a1, v17, v8);
              ++v16;
            }

            while (v16 < *(a1 + 56));
          }
        }

        else
        {
          v11 = NL::SearchGrammar::isCombinable(*(a1 + 80), a2);
          gssPopStack(a1);
        }

        if (v11)
        {
          goto LABEL_28;
        }
      }

      else if (NL::SearchGrammar::isCombinable(*(a1 + 80), a2))
      {
LABEL_28:
        *(a1 + 72) = a3;
        v20 = MEMORY[0x277D85DD0];
        v21 = 0x40000000;
        v18 = ___ZL6gssAddP22_NLGraphStructureStackjll_block_invoke;
        v19 = &__block_descriptor_tmp_15_2;
LABEL_32:
        v22 = v18;
        v23 = v19;
        v24 = a1;
LABEL_34:
        gssShift(a1, v8, &v20);
        return;
      }

      v12 = 0;
      v13 = *(a1 + 56);
      if (a3 && *(a1 + 40))
      {
        if (*(a1 + 56))
        {
          v14 = *(a1 + 72);
          if (v14 != a3)
          {
            v12 = 0;
            goto LABEL_30;
          }
        }

        gssCombine(a1, v8, 0);
        v13 = *(a1 + 56);
        v12 = 1;
      }

      if (!v13)
      {
        goto LABEL_33;
      }

      v14 = *(a1 + 72);
LABEL_30:
      if (v14 < a3)
      {
        v20 = MEMORY[0x277D85DD0];
        v21 = 0x40000000;
        v18 = ___ZL6gssAddP22_NLGraphStructureStackjll_block_invoke_2;
        v19 = &__block_descriptor_tmp_16_1;
        goto LABEL_32;
      }

LABEL_33:
      v20 = MEMORY[0x277D85DD0];
      v21 = 0x40000000;
      v22 = ___ZL6gssAddP22_NLGraphStructureStackjll_block_invoke_3;
      v23 = &__block_descriptor_tmp_17_1;
      v24 = a1;
      v25 = v12;
      goto LABEL_34;
    }
  }
}

__CFArray *NLGraphStructureStackCopyParsesWithCallback(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, CFArrayRef *, CFArrayRef *, uint64_t))
{
  if (!a1)
  {
    return 0;
  }

  gssPopStack(a1);
  v6 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    return 0;
  }

  callBacks.retain = parseRetain;
  callBacks.release = parseRelease;
  v7 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], v6, &callBacks);
  if (*(a1 + 40))
  {
    for (i = 0; i < *(a1 + 40); ++i)
    {
      v9 = *(*(a1 + 48) + 4 * i);
      if (v9 >= *a1)
      {
        v11 = NLParseCreate(0);
        v10 = 0;
        v12 = -1;
        v9 = -1;
      }

      else
      {
        if ((v9 & 0x80000000) != 0)
        {
          v11 = NLParseCreate(0);
          v10 = 0;
        }

        else
        {
          v10 = *(*(a1 + 8) + 28 * v9 + 8);
          v11 = NLParseCreate(0);
          if (*a1 > v9)
          {
            v12 = *(*(a1 + 8) + 28 * v9 + 2);
            goto LABEL_12;
          }
        }

        v12 = -1;
      }

LABEL_12:
      v13 = NLBranchCreate(v12, 0);
      NLBranchAddNode(v13, v10, 0);
      *&callBacks.version = xmmword_22CDDE2F0;
      gssVisitState(a1, v9, v11, v13, &callBacks.version, 0, a2, a3);
      branchRelease(v14, v13);
      if (v11 && v11[2])
      {
        CFArrayAppendValue(v7, v11);
      }

      parseRelease(v15, v11);
    }
  }

  if (!CFArrayGetCount(v7))
  {
    CFRelease(v7);
    return 0;
  }

  v18.length = CFArrayGetCount(v7);
  v18.location = 0;
  CFArraySortValues(v7, v18, NLParseCompare, 0);
  return v7;
}

void NLGraphStructureStackReset(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 4))
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = *(a1 + 8) + v2;
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 24) = 0;
        *(v4 + 16) = 0;
        ++v3;
        v2 += 28;
      }

      while (v3 < *(a1 + 4));
    }

    *a1 = 0;
    bzero(*(a1 + 32), *(a1 + 24));
    bzero(*(a1 + 48), *(a1 + 42));
    bzero(*(a1 + 64), *(a1 + 58));
    *(a1 + 16) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
  }
}

void NLGraphStructureStackRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 112) - 1;
    *(a1 + 112) = v2;
    if (!v2)
    {
      NLGraphStructureStackReset(a1);
      v3 = *(a1 + 88);
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      free(*(a1 + 8));
      free(*(a1 + 32));
      free(*(a1 + 64));
      free(*(a1 + 48));

      free(a1);
    }
  }
}

uint64_t gssGetRHSAtIndex(uint64_t a1, unsigned int a2, int a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a1;
  if (*a1 <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 8);
  if (*(v4 + 28 * a2 + 12) <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(v4 + 28 * a2 + 16) + a3;
  if (v5 >= *(a1 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  result = *(*(a1 + 32) + 4 * v5);
  if (result >= v3 || (result & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

double gssSetNode(uint64_t a1, __int16 a2, __int16 a3, int a4, int a5, int a6, int a7)
{
  if (a1)
  {
    v14 = *(a1 + 4);
    if (*a1 + 1 >= v14)
    {
      v15 = 2 * v14;
      *(a1 + 4) = v15;
      v16 = malloc_type_realloc(*(a1 + 8), 28 * v15, 0x1000040028C9EA4uLL);
      if (v16)
      {
        *(a1 + 8) = v16;
      }
    }
  }

  v17 = (*a1)++;
  v18 = v17;
  v19 = *(a1 + 8) + 28 * v17;
  if (a6)
  {
    v20 = 5;
  }

  else
  {
    v20 = 1;
  }

  if (a7)
  {
    v20 |= 2u;
  }

  *v19 = v20;
  *(v19 + 24) = v18;
  *(v19 + 2) = a2;
  *(v19 + 4) = a3;
  result = NAN;
  *(v19 + 16) = -1;
  *(v19 + 8) = a4;
  *(v19 + 12) = a5;
  return result;
}

uint64_t gssSetNodeWithNode(uint64_t a1, int a2, unsigned int a3, int a4, unsigned int a5, int *a6)
{
  if ((a3 & 0x80000000) != 0 || *a1 <= a3)
  {
    v11 = -1;
    v12 = -1;
  }

  else
  {
    v10 = *(a1 + 8) + 28 * a3;
    v11 = *(v10 + 2);
    v12 = *(v10 + 4);
  }

  gssSetNode(a1, v11, v12, a2, a5, 0, a4);
  v14 = (*(a1 + 8) + 28 * v13);
  v14[5] = a3;
  if (a5)
  {
    gssRefsResize(a1, a5);
    v14[4] = *(a1 + 16);
    v15 = *(a1 + 32);
    v16 = a5;
    do
    {
      v17 = *a6++;
      v18 = *(a1 + 16);
      *(a1 + 16) = v18 + 1;
      *(v15 + 4 * v18) = v17 + 100000;
      --v16;
    }

    while (v16);
  }

  return v14[6];
}

void gssPopStack(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v2 = *(a1 + 40);
  v12 = *(a1 + 40) != 0;
  v3 = *(a1 + 56);
  if (!v2)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_25;
    }

    v6 = 0;
    while (1)
    {
      v7 = *(*(a1 + 64) + 4 * v6);
      if (v7 >= *a1)
      {
        break;
      }

      if ((v7 & 0x80000000) != 0 || *(*(a1 + 8) + 28 * v7 + 20))
      {
        goto LABEL_22;
      }

LABEL_24:
      if (++v6 >= v3)
      {
        goto LABEL_25;
      }
    }

    v7 = -1;
LABEL_22:
    if (gssNodeHasRHS(a1, v7))
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 0x40000000;
      v10[2] = ___ZL11gssPopStackP22_NLGraphStructureStack_block_invoke;
      v10[3] = &unk_278740800;
      v10[4] = v11;
      v10[5] = a1;
      gssShift(a1, v7, v10);
      v3 = *(a1 + 56);
    }

    goto LABEL_24;
  }

  if (*(a1 + 56))
  {
    v4 = 0;
    while (1)
    {
      v5 = *(*(a1 + 64) + 4 * v4);
      if (v5 >= *a1)
      {
        break;
      }

      if ((v5 & 0x80000000) != 0 || *(*(a1 + 8) + 28 * v5 + 20))
      {
        goto LABEL_9;
      }

LABEL_13:
      if (++v4 >= v3)
      {
        goto LABEL_25;
      }
    }

    v5 = 0xFFFFFFFFLL;
LABEL_9:
    if (gssNodeHasRHS(a1, v5))
    {
      v9 = 0;
      gssCombine(a1, v5, &v9);
      if ((v9 & 1) == 0)
      {
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 0x40000000;
        v8[2] = ___ZL11gssPopStackP22_NLGraphStructureStack_block_invoke_2;
        v8[3] = &__block_descriptor_tmp_19;
        v8[4] = a1;
        gssShift(a1, v5, v8);
      }

      v3 = *(a1 + 56);
    }

    goto LABEL_13;
  }

LABEL_25:
  *(a1 + 56) = 0;
  _Block_object_dispose(v11, 8);
}

void sub_22CDC29BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t gssCombinableShift(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (a1)
  {
    v6 = a3 < 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  v8 = a3;
  do
  {
    if ((v7 & 1) != 0 || *a1 <= a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(*(a1 + 8) + 28 * v8 + 8);
    }

    v22 = 0;
    __gssNodeReduce(a1, a2, a3, &v21, &v22);
    v10 = v22;
    *(v18 + 24) = v22;
    if ((v10 & 1) != 0 || !NL::SearchGrammar::hasExpansions(*(a1 + 80), v9))
    {
      v11 = 0;
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 0x40000000;
      v15[2] = ___ZL18gssCombinableShiftP22_NLGraphStructureStackii_block_invoke;
      v15[3] = &unk_278740848;
      v15[4] = &v17;
      v15[5] = a1;
      v16 = a2;
      gssShift(a1, a3, v15);
      v11 = 1;
    }

    v12 = NL::SearchGrammar::hasExpansions(*(a1 + 80), v9);
    v13 = *(v18 + 24);
  }

  while (v12 && ((v11 | v13) & 1) == 0);
  _Block_object_dispose(&v17, 8);
  return v13 & 1;
}

void sub_22CDC2B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t gssCombine(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 40))
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(*(v5 + 48) + 4 * v6);
      v9 = 0;
      result = __gssNodeReduce(v5, v7, a2, &v8, &v9);
      if (a3)
      {
        if (v9)
        {
          *a3 = v9;
        }
      }

      ++v6;
    }

    while (v6 < *(v5 + 40));
  }

  return result;
}

void gssShift(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v8 = 0;
  v4 = *(a1 + 80);
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (*a1 <= a2)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(*(a1 + 8) + 28 * a2 + 8);
    }
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZL8gssShiftP22_NLGraphStructureStackiU13block_pointerFviPbE_block_invoke;
  v5[3] = &unk_278740870;
  v5[5] = v7;
  v5[6] = a1;
  v6 = a2;
  v5[4] = a3;
  NL::SearchGrammar::expansions(v4, v3, v5);
  _Block_object_dispose(v7, 8);
}

_DWORD *___ZL6gssAddP22_NLGraphStructureStackjll_block_invoke(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  if ((a2 & 0x80000000) == 0 && *v3 > a2)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      *(v4 + 28 * a2) |= 0x10u;
      v3 = *(a1 + 32);
    }
  }

  v5 = *(v3 + 56);
  v6 = *(v3 + 58);
  if (v5 + 1 >= v6)
  {
    *(v3 + 58) = 2 * v6;
    result = malloc_type_realloc(*(v3 + 64), 8 * (v6 & 0x7FFF), 0x100004052888210uLL);
    *(v3 + 64) = result;
    v5 = *(v3 + 56);
  }

  else
  {
    result = *(v3 + 64);
  }

  *(v3 + 56) = v5 + 1;
  result[v5] = a2;
  return result;
}

uint64_t ___ZL6gssAddP22_NLGraphStructureStackjll_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (*(result + 56))
  {
    v5 = 0;
    do
    {
      if (*(*(result + 64) + 4 * v5) >= *result)
      {
        v6 = -1;
      }

      else
      {
        v6 = *(*(result + 64) + 4 * v5);
      }

      gssCombinableShift(result, v6, a2);
      ++v5;
      result = *(a1 + 32);
    }

    while (v5 < *(result + 56));
  }

  return result;
}

void gssMerge(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v6 = 0;
  if (a3)
  {
    gssCombine(a1, a2, &v6);
  }

  gssExpand(a1, v4, &v6, 0, v3);
}

void *gssRefsResize(void *result, int a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 6);
    if (a2 + *(result + 4) + 1 >= v3)
    {
      v4 = 2 * v3;
      *(result + 6) = v4;
      result = malloc_type_realloc(*(result + 4), 4 * v4, 0x100004052888210uLL);
      v2[4] = result;
    }
  }

  return result;
}

uint64_t gssNodeHasRHS(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = *a1;
  if (*a1 <= a2)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    return 0;
  }

  v6 = v5 + 28 * a2;
  if ((*(v6 + 20) & 0x80000000) != 0 && !*(v6 + 12))
  {
    return 0;
  }

  v7 = *(v5 + 28 * a2 + 12);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  while (1)
  {
    RHSAtIndex = gssGetRHSAtIndex(a1, a2, v8);
    if ((RHSAtIndex & 0x80000000) == 0)
    {
      if (v4 <= RHSAtIndex)
      {
        break;
      }

      v10 = v5 + 28 * RHSAtIndex;
      if ((*(v10 + 20) & 0x80000000) == 0 || *(v10 + 12))
      {
        break;
      }
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  return 1;
}

void ___ZL11gssPopStackP22_NLGraphStructureStack_block_invoke_2(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  v3 = 0;
  gssExpand(v2, a2, &v3, 0, 0);
}

uint64_t ___ZL18gssCombinableShiftP22_NLGraphStructureStackii_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = gssCombinableShift(*(a1 + 40), *(a1 + 48), a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __gssNodeReduce(uint64_t result, unsigned int a2, uint64_t a3, __int16 *a4, char *a5)
{
  if (((a2 | a3) & 0x80000000) != 0)
  {
    return result;
  }

  v8 = a2;
  v9 = result;
  if (result)
  {
    v10 = a3 < 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  v38 = a3;
  while (1)
  {
    if ((v8 & 0x80000000) == 0 && *v9 > v8)
    {
      v12 = *(v9 + 8) + 28 * v8;
      v13 = *(v12 + 12);
      if (*(v12 + 12))
      {
        break;
      }
    }

    v20 = *a5;
LABEL_34:
    if ((v20 & 1) == 0)
    {
      if ((v8 & 0x80000000) != 0 || *v9 <= v8 || (v8 = *(*(v9 + 8) + 28 * v8 + 20), (v8 & 0x80000000) != 0))
      {
        v8 = -1;
      }

      if (((v8 | a3) & 0x80000000) == 0)
      {
        continue;
      }
    }

    return result;
  }

  v14 = 0;
  while (1)
  {
    result = gssGetRHSAtIndex(v9, v8, v14);
    if ((result & 0x80000000) != 0 && *v9 > v8 && (v15 = *(v9 + 8), *(v15 + 28 * v8 + 12) > v14) && (v16 = *(v15 + 28 * v8 + 16), (v14 + v16) < *(v9 + 16)))
    {
      v17 = *(*(v9 + 32) + 4 * (v14 + v16));
      if (v17 <= *v9)
      {
        v18 = *(v15 + 28 * v17 + 8);
        if (v11)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v18 = v17 - 100000;
        if (v17 == 100000)
        {
          v18 = -1;
        }

        if (v11)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = -1;
      if (v11)
      {
        goto LABEL_26;
      }
    }

    if (*v9 > a3)
    {
      v19 = *(*(v9 + 8) + 28 * v38 + 8);
      goto LABEL_27;
    }

LABEL_26:
    v19 = 0;
LABEL_27:
    if (v18 == v19)
    {
      break;
    }

    if (result)
    {
      result = __gssNodeReduce(v9, result, a3, a4, a5);
    }

    v20 = *a5;
    if ((*a5 & 1) == 0 && ++v14 < v13)
    {
      continue;
    }

    goto LABEL_34;
  }

  if ((result & 0x80000000) != 0)
  {
    v32 = *v9;
    if (*v9 > v8 && v32 > a3)
    {
      v33 = *(v9 + 8);
      if (*(v33 + 28 * v8 + 12) > v14)
      {
        v34 = *(v33 + 28 * v8 + 16);
        if ((v34 + v14) < *(v9 + 16))
        {
          v35 = *(v33 + 28 * v38 + 24);
          if (v35 < v32)
          {
            *(*(v9 + 32) + 4 * (v34 + v14)) = v35;
          }
        }
      }
    }

    if ((a3 & 0x80000000) == 0 && *v9 > a3)
    {
      v36 = (*(v9 + 8) + 28 * v38 + 2);
      goto LABEL_59;
    }

    v37 = -1;
LABEL_60:
    *a4 = v37;
  }

  else
  {
    result = gssNodesAreEqual(v9, result, a3);
    if ((result & 1) == 0)
    {
      v21 = *(v9 + 8) + 28 * v8;
      v22 = *(v9 + 16);
      v24 = *(v21 + 12);
      v23 = *(v21 + 16);
      *(v21 + 16) = v22;
      if (v24)
      {
        v25 = 0;
        v26 = v23 + v14;
        do
        {
          result = gssRefsResize(v9, 1);
          v27 = *(v9 + 32);
          v28 = *(v27 + 4 * v26);
          v29 = *(v9 + 16);
          *(v9 + 16) = v29 + 1;
          *(v27 + 4 * v29) = v28;
          v22 = *(v9 + 16) + 1;
          *(v9 + 16) = v22;
          ++v25;
          v30 = *(v21 + 12);
        }

        while (v25 < v30);
        v31 = v30 + 1;
      }

      else
      {
        v27 = *(v9 + 32);
        v31 = 1;
      }

      *(v21 + 12) = v31;
      *(v9 + 16) = v22 + 1;
      *(v27 + 4 * v22) = a3;
      v36 = (v21 + 2);
LABEL_59:
      v37 = *v36;
      goto LABEL_60;
    }
  }

  *a5 = 1;
  return result;
}

uint64_t gssNodesAreEqual(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if ((a2 & 0x80000000) != 0 || *a1 <= a2)
  {
    v6 = 0;
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = *(a1 + 8) + 28 * a2;
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_8;
    }
  }

  if (*a1 > a3)
  {
    v7 = *(a1 + 8) + 28 * a3;
    goto LABEL_9;
  }

LABEL_8:
  v7 = 0;
LABEL_9:
  if (!(v6 | v7))
  {
    return 1;
  }

  result = 0;
  if (v6 && v7)
  {
    if (*(v6 + 8) != *(v7 + 8))
    {
      return 0;
    }

    v9 = *(v6 + 12);
    if (v9 != *(v7 + 12) || *(v6 + 20) != *(v7 + 20))
    {
      return 0;
    }

    if ((a2 & 0x80000000) != 0 || *a1 <= a2 || (v10 = *(*(a1 + 8) + 28 * a2 + 20), (v10 & 0x80000000) != 0))
    {
      v10 = 0xFFFFFFFFLL;
    }

    if ((a3 & 0x80000000) != 0 || *a1 <= a3 || (v11 = *(*(a1 + 8) + 28 * a3 + 20), (v11 & 0x80000000) != 0))
    {
      v11 = 0xFFFFFFFFLL;
    }

    result = gssNodesAreEqual(a1, v10, v11);
    if (result)
    {
      if (v9)
      {
        v12 = 0;
        v13 = v9 - 1;
        do
        {
          RHSAtIndex = gssGetRHSAtIndex(a1, a2, v12);
          v15 = gssGetRHSAtIndex(a1, a3, v12);
          result = gssNodesAreEqual(a1, RHSAtIndex, v15);
          if (!result)
          {
            break;
          }
        }

        while (v13 != v12++);
        return result;
      }

      return 1;
    }
  }

  return result;
}

uint64_t ___ZL8gssShiftP22_NLGraphStructureStackiU13block_pointerFviPbE_block_invoke(uint64_t a1, int a2, uint64_t a3, _BYTE *a4)
{
  v6 = gssSetNodeWithNode(*(a1 + 48), a2, *(a1 + 56), 0, ((*(a3 + 8) - *a3) >> 2), *a3);
  v7 = 0;
  v8 = *(a1 + 48);
  if ((v6 & 0x80000000) == 0 && v8)
  {
    if (*v8 <= v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(*(v8 + 8) + 28 * v6 + 8);
    }
  }

  v9 = NL::SearchGrammar::requiresComplement(*(v8 + 80), v7);
  v10 = *(a1 + 48);
  if ((v6 & 0x80000000) == 0 && v9 && *v10 > v6)
  {
    v11 = *(v10 + 1);
    if (v11)
    {
      *(v11 + 28 * v6) |= 0x20u;
      v10 = *(a1 + 48);
    }
  }

  v12 = *(a1 + 56);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = *v10;
    if (*v10 > v12)
    {
      v14 = *(v10 + 1);
      if (v14)
      {
        if ((*(v14 + 28 * v12) & 8) != 0 && v13 > v6 && (v6 & 0x80000000) == 0)
        {
          *(v14 + 28 * v6) |= 8u;
        }
      }
    }
  }

  v15 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

void gssExpand(uint64_t a1, unsigned int a2, _BYTE *a3, char a4, char a5)
{
  v10 = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (*a1 <= a2)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(*(a1 + 8) + 28 * a2 + 8);
      if ((a4 & 1) == 0 && v10 == 1)
      {

        gssAddState(a1, a2);
        return;
      }
    }
  }

  if (*a3 == 1 && (NL::SearchGrammar::hasExpansions(*(a1 + 80), v10) & 1) == 0 && v10 != 1 && (*a3 & 1) == 0)
  {
    gssAddState(a1, a2);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = ___ZL9gssExpandP22_NLGraphStructureStackiPbbb_block_invoke;
  v11[3] = &__block_descriptor_tmp_23_0;
  v12 = a5;
  v11[4] = a1;
  v11[5] = a3;
  v13 = a4;
  gssShift(a1, a2, v11);
}

_DWORD *gssAddState(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 42);
  if (v4 + 1 >= v5)
  {
    *(a1 + 42) = 2 * v5;
    result = malloc_type_realloc(*(a1 + 48), 8 * (v5 & 0x7FFF), 0x100004052888210uLL);
    *(a1 + 48) = result;
    v4 = *(a1 + 40);
  }

  else
  {
    result = *(a1 + 48);
  }

  *(a1 + 40) = v4 + 1;
  result[v4] = a2;
  return result;
}

uint64_t ___ZL9gssExpandP22_NLGraphStructureStackiPbbb_block_invoke(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 48) == 1)
  {
    result = gssCombine(*(result + 32), a2, *(result + 40));
  }

  if ((**(v3 + 40) & 1) == 0)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 49);
    v6 = *(v3 + 48);

    return gssExpand(v4, a2);
  }

  return result;
}

_WORD *NLBranchCreate(__int16 a1, char a2)
{
  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004086FE837DuLL);
  if (v4)
  {
    *v4 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v4[6] = a1;
    v4[7] = a1;
    v4[8] = a1;
    v4[9] = -1;
    *(v4 + 2) = 0;
    *(v4 + 20) = a2;
    *(v4 + 6) = 1;
  }

  return v4;
}

void NLBranchAddNode(uint64_t a1, int a2, int a3)
{
  valuePtr = a2;
  if (a1)
  {
    v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    CFArrayAppendValue(*a1, v5);
    CFRelease(v5);
    *(a1 + 8) += a3;
  }
}

void gssVisitState(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, void (*a8)(uint64_t, CFArrayRef *, CFArrayRef *, uint64_t))
{
  v8 = a2;
  if ((a2 & 0x80000000) != 0 || *a1 <= a2)
  {
    v12 = -1;
    v13 = -1;
  }

  else
  {
    v10 = *(a1 + 8);
    v11 = v10 + 28 * a2;
    v12 = *(v11 + 2);
    v13 = *(v11 + 4);
    if (v10 && (*(v10 + 28 * a2) & 0x20) != 0 && (!gssNodeHasLHS(a1, a2) || !gssNodeHasRHS(a1, v8)))
    {
      return;
    }
  }

  if ((!a4 || !CFArrayGetCount(*a4) || CFArrayGetCount(*a4) <= 3) && (v8 & 0x80000000) == 0)
  {
    v14 = *a1;
    if (*a1 <= v8)
    {
      goto LABEL_43;
    }

    v15 = *(a1 + 8);
    if (!v15 || (*(v15 + 28 * v8) & 4) == 0)
    {
      v16 = *(a1 + 8);
      v17 = *(v16 + 28 * v8 + 20);
      if ((v17 & 0x80000000) == 0)
      {
        if (v14 <= v17)
        {
          v19 = 0;
          v21 = -1;
          if (a6)
          {
            goto LABEL_38;
          }

          v20 = -1;
LABEL_31:
          *a5 = v20;
          a5[1] = 1;
LABEL_32:
          if (v14 > v17 && (*(v16 + 28 * v17) & 0x20) != 0 && (a6 & 1) == 0)
          {
            if (gssNodeHasRHS(a1, v17))
            {
              v27 = NLBranchCreate(v21, 1);
              Score = gssNodeGetScore(a1, v17);
              NLBranchAddNode(v27, v19, Score);
              v65 = 0;
              gssNodeGetMaxIndex(a1, v17, &v65);
              v63 = v21;
              v64 = v65 - v21 + 1;
              v29 = gssVisitState(a1, v17, a3, v27, &v63, 1, a7, a8);
              branchRelease(v29, v27);
            }

            LOBYTE(a6) = 0;
            goto LABEL_43;
          }

LABEL_38:
          v30 = NLBranchCopy(a4);
          v31 = gssNodeGetScore(a1, v17);
          NLBranchAddNode(v30, v19, v31);
          v32 = gssVisitState(a1, v17, a3, v30, a5, a6, a7, a8);
          branchRelease(v32, v30);
          if (*a1 <= v17 || (v33 = *(a1 + 8)) == 0 || (*(v33 + 28 * v17) & 2) == 0)
          {
            v34 = NLBranchCreate(v21, 0);
            v35 = gssNodeGetScore(a1, v17);
            NLBranchAddNode(v34, v19, v35);
            v36 = gssVisitState(a1, v17, a3, v34, a5, a6, a7, a8);
            branchRelease(v36, v34);
          }

          goto LABEL_43;
        }

        v18 = v16 + 28 * v17;
        if ((*v18 & 4) == 0)
        {
          v19 = *(v18 + 8);
          v20 = *(v18 + 2);
          v21 = v20;
          if (a6)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        gssVisitState(a1, v17, a3, a4, a5, a6, a7, a8);
      }

LABEL_43:
      if (*a1 <= v8)
      {
        return;
      }

      v37 = *(a1 + 8) + 28 * v8;
      v38 = *(v37 + 12);
      if (!*(v37 + 12))
      {
        return;
      }

      v39 = 0;
      v56 = v8;
      while (1)
      {
        RHSAtIndex = gssGetRHSAtIndex(a1, v8, v39);
        if ((RHSAtIndex & 0x80000000) == 0)
        {
          v41 = RHSAtIndex;
          v42 = *a1;
          if (*a1 <= RHSAtIndex)
          {
            v43 = 0;
          }

          else
          {
            v43 = *(*(a1 + 8) + 28 * RHSAtIndex + 8);
            if (v43 == 2)
            {
              goto LABEL_62;
            }
          }

          if (v42 <= RHSAtIndex)
          {
            v45 = -1;
            goto LABEL_56;
          }

          v44 = *(a1 + 8);
          if (!v44 || (*(v44 + 28 * RHSAtIndex) & 0x20) == 0 || gssNodeHasLHS(a1, RHSAtIndex) && gssNodeHasRHS(a1, v41))
          {
            v45 = *(*(a1 + 8) + 28 * v41 + 2);
LABEL_56:
            if ((a6 & 1) == 0)
            {
              *a5 = v45;
              a5[1] = 1;
            }

            if (v42 > v41 && (v46 = *(a1 + 8)) != 0 && !(((*(v46 + 28 * v41) & 0x20) == 0) | a6 & 1))
            {
              v53 = NLBranchCreate(v45, 1);
              v54 = gssNodeGetScore(a1, v41);
              NLBranchAddNode(v53, v43, v54);
              v65 = 0;
              gssNodeGetMaxIndex(a1, v41, &v65);
              v63 = v45;
              v64 = v65 - v45 + 1;
              v55 = gssVisitState(a1, v41, a3, v53, &v63, 1, a7, a8);
              branchRelease(v55, v53);
              LOBYTE(a6) = 0;
            }

            else
            {
              v47 = NLBranchCopy(a4);
              v48 = gssNodeGetScore(a1, v41);
              NLBranchAddNode(v47, v43, v48);
              v49 = gssVisitState(a1, v41, a3, v47, a5, a6 & 1, a7, a8);
              branchRelease(v49, v47);
              v50 = NLBranchCreate(v45, 0);
              v51 = gssNodeGetScore(a1, v41);
              NLBranchAddNode(v50, v43, v51);
              v8 = v56;
              v52 = gssVisitState(a1, v41, a3, v50, a5, a6 & 1, a7, a8);
              branchRelease(v52, v50);
            }
          }
        }

LABEL_62:
        if (v38 == ++v39)
        {
          return;
        }
      }
    }

    Root = NLBranchGetRoot(a4);
    if (a4)
    {
      if (Root != 1 && CFArrayGetCount(*a4) >= 3 && CFArrayGetCount(*a4) <= 4)
      {
        *(a4 + 12) = v12;
        v23 = a5[1];
        *(a4 + 14) = *a5;
        *(a4 + 16) = v23;
        *(a4 + 18) = v13;
        NLParseAddBranch(a3, a4);
        if (a8)
        {
          v24 = NLBranchGetRoot(a4);
          Leaf = NLBranchGetLeaf(a4);
          v26 = *(a4 + 12);

          a8(a7, v24, Leaf, v26);
        }
      }
    }
  }
}

uint64_t NLParseCompare(_DWORD *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 6);
  v4 = *(a2 + 6);
  if (v3 == v4)
  {
    v5 = *(a1 + 7);
    v6 = *(a2 + 7);
    if (v5 == v6)
    {
      v7 = a1[2];
      v8 = a2[2];
      v9 = v7 == v8;
      v10 = v7 > v8;
      v11 = -1;
      if (!v10)
      {
        v11 = 1;
      }

      if (v9)
      {
        return 0;
      }

      else
      {
        return v11;
      }
    }

    else if (v5 > v6)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  else if (v3 < v4)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

BOOL gssNodeHasLHS(uint64_t a1, unsigned int a2)
{
  result = 0;
  if ((a2 & 0x80000000) == 0 && *a1 > a2)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = v2 + 28 * a2;
      if ((*(v3 + 20) & 0x80000000) == 0 || *(v3 + 12))
      {
        v4 = *(v2 + 28 * a2 + 20);
        if ((v4 & 0x80000000) != 0)
        {
          return 1;
        }

        if (*a1 <= v4)
        {
          return 1;
        }

        v5 = v2 + 28 * v4;
        if ((*(v5 + 20) & 0x80000000) == 0 || *(v5 + 12))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t gssNodeGetScore(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = a2;
    v4 = *a1;
    if (*a1 > a2)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(a1 + 8);
        if (!v6)
        {
          return v5;
        }

        v7 = *(v6 + 28 * v2 + 20);
        if ((v7 & 0x80000000) != 0)
        {
          return v5;
        }

        if (v4 <= v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = *(v6 + 28 * v7 + 8);
        }

        v9 = *(v6 + 28 * v2 + 8);
        v10 = v6 + 28 * v2;
        v11 = *(v10 + 12);
        if (*(v10 + 12))
        {
          v19 = v5;
          v12 = 0;
          v13 = 0;
          Score = 0;
          do
          {
            RHSAtIndex = gssGetRHSAtIndex(a1, v2, v12);
            if ((RHSAtIndex & 0x80000000) == 0)
            {
              v16 = RHSAtIndex;
              if (*a1 <= RHSAtIndex)
              {
                v17 = 0;
              }

              else
              {
                v17 = *(*(a1 + 8) + 28 * RHSAtIndex + 8);
              }

              Score += NL::SearchGrammar::getScore(*(a1 + 80), v9, v8, v17);
              v13 += gssNodeGetScore(a1, v16);
            }

            ++v12;
          }

          while (v11 != v12);
          LODWORD(v5) = v19;
          if (Score)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v13 = 0;
        }

        Score = NL::SearchGrammar::getScore(*(a1 + 80), v9, v8, 2u);
LABEL_21:
        v5 = v13 + v5 + Score;
        v4 = *a1;
        v2 = v7;
        if (*a1 <= v7)
        {
          return v5;
        }
      }
    }
  }

  return 0;
}

uint64_t gssNodeGetMaxIndex(uint64_t result, unsigned int a2, int *a3)
{
  if ((a2 & 0x80000000) == 0)
  {
    v4 = result;
    if (*result > a2)
    {
      v5 = *(result + 8);
      if (v5)
      {
        v7 = v5 + 28 * a2;
        v8 = *(v7 + 2);
        if (*a3 > v8)
        {
          v8 = *a3;
        }

        *a3 = v8;
        if (*result <= a2 || (v9 = *(v5 + 28 * a2 + 20), (v9 & 0x80000000) != 0))
        {
          v9 = 0xFFFFFFFFLL;
        }

        result = gssNodeGetMaxIndex(result, v9, a3);
        if (*(v7 + 12))
        {
          v10 = 0;
          do
          {
            RHSAtIndex = gssGetRHSAtIndex(v4, a2, v10);
            result = gssNodeGetMaxIndex(v4, RHSAtIndex, a3);
            ++v10;
          }

          while (v10 < *(v7 + 12));
        }
      }
    }
  }

  return result;
}

char *NLBranchCopy(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004086FE837DuLL);
  if (v2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    *v2 = Mutable;
    v4 = *a1;
    v6.length = CFArrayGetCount(*a1);
    v6.location = 0;
    CFArrayAppendArray(Mutable, v4, v6);
    *(v2 + 12) = *(a1 + 12);
    *(v2 + 2) = *(a1 + 8);
    v2[20] = *(a1 + 20);
    *(v2 + 6) = 1;
  }

  return v2;
}

void NLCompositeTransliterator::NLCompositeTransliterator(NLCompositeTransliterator *this, const __CFLocale *a2, const __CFURL *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  operator new();
}

void sub_22CDC46F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a11);
  nlp::CFScopedPtr<__EmojiLocaleDataWrapper const*>::reset((v11 + 40), 0);
  v15 = *(v11 + 32);
  *(v11 + 32) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(v11 + 24);
  *(v11 + 24) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  std::unique_ptr<NLCompositeTransliteratorLexicon>::reset[abi:ne200100](v12, 0);
  std::unique_ptr<NLCompositeTransliteratorException>::reset[abi:ne200100]((v11 + 8), 0);
  std::unique_ptr<NLCompositeTransliteratorSeq2Seq>::reset[abi:ne200100](v11, 0);
  _Unwind_Resume(a1);
}

NLCompositeTransliteratorSeq2Seq *std::unique_ptr<NLCompositeTransliteratorSeq2Seq>::reset[abi:ne200100](NLCompositeTransliteratorSeq2Seq **a1, NLCompositeTransliteratorSeq2Seq *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    NLCompositeTransliteratorSeq2Seq::~NLCompositeTransliteratorSeq2Seq(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

NL::StringMap **std::unique_ptr<NLCompositeTransliteratorException>::reset[abi:ne200100](NL::StringMap ***a1, NL::StringMap **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    NLCompositeTransliteratorException::~NLCompositeTransliteratorException(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

const void **std::unique_ptr<NLCompositeTransliteratorLexicon>::reset[abi:ne200100](const void ***a1, const void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    NLCompositeTransliteratorLexicon::~NLCompositeTransliteratorLexicon(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

void NLCompositeTransliterator::~NLCompositeTransliterator(NLCompositeTransliterator *this)
{
  nlp::CFScopedPtr<__EmojiLocaleDataWrapper const*>::reset(this + 5, 0);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::unique_ptr<NLCompositeTransliteratorLexicon>::reset[abi:ne200100](this + 2, 0);
  std::unique_ptr<NLCompositeTransliteratorException>::reset[abi:ne200100](this + 1, 0);
  std::unique_ptr<NLCompositeTransliteratorSeq2Seq>::reset[abi:ne200100](this, 0);
}

BOOL NLCompositeTransliterator::isTransliteratedWordInLexiconForCandidate(NLCompositeTransliterator *this, NLTransliterationCandidate *a2)
{
  TransliteratedWord = NLTransliterationCandidate::getTransliteratedWord(a2);
  if (*(TransliteratedWord + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *TransliteratedWord, *(TransliteratedWord + 8));
  }

  else
  {
    v4 = *TransliteratedWord;
    __p.__r_.__value_.__r.__words[2] = *(TransliteratedWord + 16);
    *&__p.__r_.__value_.__l.__data_ = v4;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    isMemberOfTheNativeLexicon = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return isMemberOfTheNativeLexicon;
    }

    goto LABEL_8;
  }

  isMemberOfTheNativeLexicon = NLCompositeTransliteratorLexicon::isMemberOfTheNativeLexicon(*(this + 2), &__p);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_8:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return isMemberOfTheNativeLexicon;
}

void sub_22CDC4ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t NLCompositeTransliterator::updateCandidatesWithEmojiCandidates(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 40) || *a2 == *(a2 + 8))
  {
    return 0;
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(**a2);
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    v28.__r_.__value_.__r.__words[2] = *(v4 + 2);
    *&v28.__r_.__value_.__l.__data_ = v5;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  for (i = *a2; i != *(a2 + 8); ++i)
  {
    TransliteratedWord = NLTransliterationCandidate::getTransliteratedWord(*i);
    CFStringFromString = createCFStringFromString(TransliteratedWord);
    v24 = CFStringFromString;
    v10 = *(a1 + 40);
    EmojiTokensForString = CEMEmojiLocaleDataCreateEmojiTokensForString();
    v23 = EmojiTokensForString;
    if (EmojiTokensForString)
    {
      for (j = 0; j < CFArrayGetCount(EmojiTokensForString); ++j)
      {
        CFArrayGetValueAtIndex(EmojiTokensForString, j);
        String = CEMEmojiTokenGetString();
        getUTF8StringFromCFString(String, &__p);
        std::vector<std::string>::push_back[abi:ne200100](&v25, &__p);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p);
        }
      }

      if (v25 != v26)
      {
        __p = 0uLL;
        v22 = 0;
        v14 = *(v25 + 23);
        if (v14 >= 0)
        {
          v15 = *(v25 + 23);
        }

        else
        {
          v15 = v25[1];
        }

        v16 = *(v25 + 23);
        v17 = v16;
        if (v16 < 0)
        {
          v16 = v25[1];
        }

        if (v15 == v16)
        {
          if (v14 >= 0)
          {
            v18 = v25;
          }

          else
          {
            v18 = *v25;
          }

          if (v17 >= 0)
          {
            v19 = v25;
          }

          else
          {
            v19 = *v25;
          }

          memcmp(v18, v19, v15);
        }

        operator new();
      }

      CFRelease(EmojiTokensForString);
    }

    if (CFStringFromString)
    {
      CFRelease(CFStringFromString);
    }
  }

  v6 = 0xAAAAAAAAAAAAAAABLL * (v26 - v25);
  *&__p = &v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_22CDC4D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 *__p, __int16 *a12, int a13, __int16 a14, char a15, char a16, const void *a17, const void *a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFArray const*>::reset(&a17, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a18, 0);
  __p = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void NLCompositeTransliterator::trimCandidatesToSize(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = (v5 - *a2) >> 3;
  if (v7 > a3)
  {
    v8 = a3;
    do
    {
      v9 = *(v6 + 8 * v8);
      if (v9)
      {
        if (*(v9 + 47) < 0)
        {
          operator delete(*(v9 + 24));
        }

        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        MEMORY[0x2318C0600](v9, 0x1012C40B0087DDBLL);
        v6 = *a2;
        v5 = a2[1];
      }

      ++v8;
    }

    while (v8 < (v5 - v6) >> 3);
    v7 = (v5 - v6) >> 3;
  }

  if (v7 > a3)
  {

    std::vector<NLTransliterationCandidate *>::resize(a2, a3);
  }
}

void std::vector<NLTransliterationCandidate *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<NLTransliterationCandidate *>::__append(a1, a2 - v2);
  }
}

uint64_t NLCompositeTransliterator::setIsInVocabularyforCandidates(uint64_t result, NLTransliterationCandidate ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *v2;
      Type = NLTransliterationCandidate::getType(*v2);
      if (Type)
      {
        v7 = Type == 5;
      }

      else
      {
        v7 = 1;
      }

      if (v7 || (result = NLCompositeTransliterator::isTransliteratedWordInLexiconForCandidate(v4, v5), result))
      {
        result = NLTransliterationCandidate::setIsInVocabulary(v5, 1);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

void NLCompositeTransliterator::assignLanguageModelScoreToCandidates(uint64_t a1, NLTransliterationCandidate ***a2, uint64_t *a3)
{
  if (*(a1 + 24))
  {
    __src = 0;
    v37 = 0;
    v38 = 0;
    v5 = *a3;
    v6 = a3[1];
    if (*a3 != v6)
    {
      do
      {
        v7 = *(v5 + 23);
        if (v7 >= 0)
        {
          v8 = v5;
        }

        else
        {
          v8 = *v5;
        }

        if (v7 >= 0)
        {
          v9 = *(v5 + 23);
        }

        else
        {
          v9 = *(v5 + 8);
        }

        v10 = CFStringCreateWithBytes(0, v8, v9, 0x8000100u, 0);
        if (!v10)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        cf = v10;
        v11 = CFGetTypeID(v10);
        if (v11 != CFStringGetTypeID())
        {
          v35 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v35, "Could not construct");
          __cxa_throw(v35, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        (*(**(a1 + 24) + 56))(*(a1 + 24));
        TokenIDForString = LMLanguageModelGetTokenIDForString();
        CFRelease(cf);
        v13 = v37;
        if (v37 >= v38)
        {
          v15 = __src;
          v16 = v37 - __src;
          v17 = (v37 - __src) >> 2;
          v18 = v17 + 1;
          if ((v17 + 1) >> 62)
          {
            std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
          }

          v19 = v38 - __src;
          if ((v38 - __src) >> 1 > v18)
          {
            v18 = v19 >> 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>(&__src, v20);
          }

          *(4 * v17) = TokenIDForString;
          v14 = 4 * v17 + 4;
          memcpy(0, v15, v16);
          v21 = __src;
          __src = 0;
          v37 = v14;
          v38 = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v37 = TokenIDForString;
          v14 = (v13 + 4);
        }

        v37 = v14;
        v5 += 24;
      }

      while (v5 != v6);
    }

    v22 = *a2;
    v23 = a2[1];
    if (*a2 != v23)
    {
      do
      {
        v24 = *v22;
        v25 = *(a1 + 24);
        TransliteratedWord = NLTransliterationCandidate::getTransliteratedWord(*v22);
        v27 = (*(*v25 + 24))(v25, TransliteratedWord);
        NLTransliterationCandidate::setLMScore(v24, v27);
        ++v22;
      }

      while (v22 != v23);
      v22 = *a2;
      v23 = a2[1];
    }

    if (v23 - v22 < 129)
    {
      v33 = 0;
      v29 = 0;
    }

    else
    {
      v28 = MEMORY[0x277D826F0];
      v29 = v23 - v22;
      while (1)
      {
        v30 = operator new(8 * v29, v28);
        if (v30)
        {
          break;
        }

        v31 = v29 >> 1;
        v32 = v29 > 1;
        v29 >>= 1;
        if (!v32)
        {
          v33 = 0;
          v29 = v31;
          goto LABEL_34;
        }
      }

      v33 = v30;
    }

LABEL_34:
    std::__stable_sort<std::_ClassicAlgPolicy,NLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<NLTransliterationCandidate *> &,std::vector<std::string> const&)::$_2 &,std::__wrap_iter<NLTransliterationCandidate **>>(v22, v23, v23 - v22, v33, v29);
    if (v33)
    {
      operator delete(v33);
    }
  }
}

void sub_22CDC52E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLCompositeTransliterator::getTransliterationCandidates(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  NLOSSignPostgetTransliterationCandidates::NLOSSignPostgetTransliterationCandidates(&v44);
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, *a3, *(a3 + 8));
  }

  else
  {
    v43 = *a3;
  }

  v10 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = (&v43 + HIBYTE(v43.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v11 = (v43.__r_.__value_.__r.__words[0] + v43.__r_.__value_.__l.__size_);
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v43;
  }

  else
  {
    v12 = v43.__r_.__value_.__r.__words[0];
  }

  if (v12 != v11)
  {
    do
    {
      v12->__r_.__value_.__s.__data_[0] = __tolower(v12->__r_.__value_.__s.__data_[0]);
      v12 = (v12 + 1);
    }

    while (v12 != v11);
    v10 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  if (v10 < 0)
  {
    std::string::__init_copy_ctor_external(&v46, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = v43;
  }

  v43 = v46;
  NLCompositeTransliteratorSeq2Seq::seq2SeqCandidatesForInput(*a1, &v43, &v41);
  NLCompositeTransliteratorException::exceptionCandidatesForInput(a1[1], a3, &v39);
  v13 = v39;
  v14 = v40;
  if (v39 == v40)
  {
    NLCompositeTransliteratorException::exceptionCandidatesForInput(a1[1], &v43, &v46);
    std::vector<NLTextSlot *>::__assign_with_size[abi:ne200100]<NLTextSlot **,NLTextSlot **>(&v39, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_, (v46.__r_.__value_.__l.__size_ - v46.__r_.__value_.__r.__words[0]) >> 3);
    if (v46.__r_.__value_.__r.__words[0])
    {
      v46.__r_.__value_.__l.__size_ = v46.__r_.__value_.__r.__words[0];
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    v13 = v39;
    v14 = v40;
  }

  if (v13 == v14)
  {
    NLCompositeTransliteratorLexicon::lexiconCandidatesForInput(a1[2], &v43, &v46);
    if (v46.__r_.__value_.__l.__size_ == v46.__r_.__value_.__r.__words[0])
    {
      if (&v41 != a5)
      {
        std::vector<NLTextSlot *>::__assign_with_size[abi:ne200100]<NLTextSlot **,NLTextSlot **>(a5, v41, v42, (v42 - v41) >> 3);
      }
    }

    else
    {
      if (&v46 != a5)
      {
        std::vector<NLTextSlot *>::__assign_with_size[abi:ne200100]<NLTextSlot **,NLTextSlot **>(a5, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_, (v46.__r_.__value_.__l.__size_ - v46.__r_.__value_.__r.__words[0]) >> 3);
      }

      v18 = v41;
      v19 = v42;
      if (v41 != v42)
      {
        do
        {
          if (candidateSurfaceFormPresentInVector(*v18, a5))
          {
            v20 = *v18;
            if (*v18)
            {
              if (*(v20 + 47) < 0)
              {
                operator delete(*(v20 + 3));
              }

              if (*(v20 + 23) < 0)
              {
                operator delete(*v20);
              }

              MEMORY[0x2318C0600](v20, 0x1012C40B0087DDBLL);
            }
          }

          else
          {
            std::vector<NLTransliterationCandidate *>::push_back[abi:ne200100](a5, v18);
          }

          v18 += 8;
        }

        while (v18 != v19);
      }
    }

    NLCompositeTransliterator::assignLanguageModelScoreToCandidates(a1, a5, a2);
    if (v46.__r_.__value_.__r.__words[0])
    {
      v46.__r_.__value_.__l.__size_ = v46.__r_.__value_.__r.__words[0];
      operator delete(v46.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (&v39 != a5)
    {
      std::vector<NLTextSlot *>::__assign_with_size[abi:ne200100]<NLTextSlot **,NLTextSlot **>(a5, v13, v14, (v14 - v13) >> 3);
    }

    NLCompositeTransliterator::assignLanguageModelScoreToCandidates(a1, &v41, a2);
    v15 = v41;
    v16 = v42;
    if (v41 != v42)
    {
      do
      {
        if (candidateSurfaceFormPresentInVector(*v15, a5))
        {
          v17 = *v15;
          if (*v15)
          {
            if (*(v17 + 47) < 0)
            {
              operator delete(*(v17 + 3));
            }

            if (*(v17 + 23) < 0)
            {
              operator delete(*v17);
            }

            MEMORY[0x2318C0600](v17, 0x1012C40B0087DDBLL);
          }
        }

        else
        {
          std::vector<NLTransliterationCandidate *>::push_back[abi:ne200100](a5, v15);
        }

        v15 += 8;
      }

      while (v15 != v16);
    }
  }

  if (a1[4])
  {
    v21 = a5->__r_.__value_.__r.__words[0];
    while (v21 != a5->__r_.__value_.__l.__size_)
    {
      TransliteratedWord = NLTransliterationCandidate::getTransliteratedWord(*v21);
      CFStringFromString = createCFStringFromString(TransliteratedWord);
      v46.__r_.__value_.__r.__words[0] = CFStringFromString;
      if ((*(*a1[4] + 16))(a1[4], CFStringFromString, 0, 0))
      {
        ++v21;
        if (!CFStringFromString)
        {
          continue;
        }
      }

      else
      {
        v24 = *v21;
        if (*v21)
        {
          if (*(v24 + 47) < 0)
          {
            operator delete(*(v24 + 3));
          }

          if (*(v24 + 23) < 0)
          {
            operator delete(*v24);
          }

          MEMORY[0x2318C0600](v24, 0x1012C40B0087DDBLL);
        }

        size = a5->__r_.__value_.__l.__size_;
        v26 = size - (v21 + 1);
        if (size != v21 + 1)
        {
          memmove(v21, v21 + 1, size - (v21 + 1));
        }

        a5->__r_.__value_.__l.__size_ = v21 + v26;
        if (!CFStringFromString)
        {
          continue;
        }
      }

      CFRelease(CFStringFromString);
    }
  }

  updated = NLCompositeTransliterator::updateCandidatesWithEmojiCandidates(a1, a5);
  if (updated + 5 >= updated + a4)
  {
    v28 = updated + a4;
  }

  else
  {
    v28 = updated + 5;
  }

  NLCompositeTransliterator::trimCandidatesToSize(updated, a5, v28);
  NLCompositeTransliterator::setIsInVocabularyforCandidates(a1, a5);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v46);
  v29 = a5->__r_.__value_.__r.__words[0];
  v30 = a5->__r_.__value_.__l.__size_;
  if (a5->__r_.__value_.__l.__data_ != v30)
  {
    v31 = MEMORY[0x277D82680];
    do
    {
      v32 = *v29;
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "<", 1);
      v34 = operator<<(v33, v32);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ">", 1);
      std::ios_base::getloc((v35 + *(*v35 - 24)));
      v36 = std::locale::use_facet(&v45, v31);
      (v36->__vftable[2].~facet_0)(v36, 10);
      std::locale::~locale(&v45);
      std::ostream::put();
      std::ostream::flush();
      ++v29;
    }

    while (v29 != v30);
  }

  v37 = _nlpDefaultLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    std::stringbuf::str();
    NLCompositeTransliterator::getTransliterationCandidates(&v45, buf, v37);
  }

  v46.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82828];
  *(v46.__r_.__value_.__r.__words + *(v46.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82828] + 24);
  v46.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
  if (v48 < 0)
  {
    operator delete(__p);
  }

  v46.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v46.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  MEMORY[0x2318C0570](&v49);
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  NLOSSignPostgetTransliterationCandidates::~NLOSSignPostgetTransliterationCandidates(&v44);
  v38 = *MEMORY[0x277D85DE8];
}

void sub_22CDC5A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, os_signpost_id_t a22, std::locale a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v29 = *v27;
  if (*v27)
  {
    *(v27 + 8) = v29;
    operator delete(v29);
  }

  NLOSSignPostgetTransliterationCandidates::~NLOSSignPostgetTransliterationCandidates(&a22);
  _Unwind_Resume(a1);
}

uint64_t candidateSurfaceFormPresentInVector(NLTransliterationCandidate *a1, NLTransliterationCandidate ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  while (1)
  {
    TransliteratedWord = NLTransliterationCandidate::getTransliteratedWord(*v2);
    v6 = NLTransliterationCandidate::getTransliteratedWord(a1);
    v7 = *(TransliteratedWord + 23);
    if (v7 >= 0)
    {
      v8 = *(TransliteratedWord + 23);
    }

    else
    {
      v8 = *(TransliteratedWord + 8);
    }

    v9 = *(v6 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v6 + 8);
    }

    if (v8 == v9)
    {
      v11 = v7 >= 0 ? TransliteratedWord : *TransliteratedWord;
      v12 = v10 >= 0 ? v6 : *v6;
      if (!memcmp(v11, v12, v8))
      {
        break;
      }
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  return 1;
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void NLOSSignPostgetTransliterationCandidates::NLOSSignPostgetTransliterationCandidates(NLOSSignPostgetTransliterationCandidates *this)
{
  v2 = _nlpSignpostLog();
  *this = os_signpost_id_make_with_pointer(v2, this);
  v3 = _nlpSignpostLog();
  v4 = *this;
  if ((*this - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v3;
    if (os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CD0B000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "getTransliterationCandidates", &unk_22CDFA99D, v6, 2u);
    }
  }
}

void NLOSSignPostgetTransliterationCandidates::~NLOSSignPostgetTransliterationCandidates(os_signpost_id_t *this)
{
  v2 = _nlpSignpostLog();
  v3 = *this;
  if (*this - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CD0B000, v4, OS_SIGNPOST_INTERVAL_END, v3, "getTransliterationCandidates", &unk_22CDFA99D, v5, 2u);
    }
  }
}

void nlp::CFScopedPtr<__EmojiLocaleDataWrapper const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

char *std::vector<NLTransliterationCandidate *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<NLTransliterationCandidate **>,std::__wrap_iter<NLTransliterationCandidate **>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<NLTransliterationCandidate *>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::vector<NLTransliterationCandidate *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<NLTransliterationCandidate *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__stable_sort<std::_ClassicAlgPolicy,NLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<NLTransliterationCandidate *> &,std::vector<std::string> const&)::$_2 &,std::__wrap_iter<NLTransliterationCandidate **>>(NLTransliterationCandidate **a1, NLTransliterationCandidate **a2, unint64_t a3, NLTransliterationCandidate **a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = a1;
    if (a3 == 2)
    {
      v7 = *a1;
      TotalScore = NLTransliterationCandidate::getTotalScore(*(a2 - 1));
      if (TotalScore > NLTransliterationCandidate::getTotalScore(v7))
      {
        v9 = *v6;
        *v6 = *(a2 - 1);
        *(a2 - 1) = v9;
      }
    }

    else if (a3 > 128)
    {
      v22 = a4;
      v23 = a3 >> 1;
      v24 = &a1[a3 >> 1];
      v25 = a3 >> 1;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,NLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<NLTransliterationCandidate *> &,std::vector<std::string> const&)::$_2 &,std::__wrap_iter<NLTransliterationCandidate **>>(a1, v24, v25, a4);
        v26 = &v22[v23];
        std::__stable_sort_move<std::_ClassicAlgPolicy,NLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<NLTransliterationCandidate *> &,std::vector<std::string> const&)::$_2 &,std::__wrap_iter<NLTransliterationCandidate **>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v26);
        v27 = &v22[a3];
        v28 = v26;
        while (v28 != v27)
        {
          v29 = *v22;
          v30 = NLTransliterationCandidate::getTotalScore(*v28);
          v31 = NLTransliterationCandidate::getTotalScore(v29);
          if (v30 <= v31)
          {
            v32 = v22;
          }

          else
          {
            v32 = v28;
          }

          v22 += v30 <= v31;
          v28 += v30 > v31;
          *v6 = *v32;
          v6 += 8;
          if (v22 == v26)
          {
            while (v28 != v27)
            {
              v34 = *v28++;
              *v6 = v34;
              v6 += 8;
            }

            return;
          }
        }

        while (v22 != v26)
        {
          v33 = *v22++;
          *v6 = v33;
          v6 += 8;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,NLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<NLTransliterationCandidate *> &,std::vector<std::string> const&)::$_2 &,std::__wrap_iter<NLTransliterationCandidate **>>(a1, v24, v25, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,NLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<NLTransliterationCandidate *> &,std::vector<std::string> const&)::$_2 &,std::__wrap_iter<NLTransliterationCandidate **>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v22, a5);

        std::__inplace_merge<std::_ClassicAlgPolicy,NLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<NLTransliterationCandidate *> &,std::vector<std::string> const&)::$_2 &,std::__wrap_iter<NLTransliterationCandidate **>>(v6, &v6[8 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v22, a5);
      }
    }

    else if (a1 != a2)
    {
      v11 = a1 + 1;
      if (a1 + 1 != a2)
      {
        v12 = 0;
        v13 = a1;
        do
        {
          v14 = *v13;
          v13 = v11;
          v15 = NLTransliterationCandidate::getTotalScore(*v11);
          if (v15 > NLTransliterationCandidate::getTotalScore(v14))
          {
            v16 = *v13;
            v17 = v12;
            while (1)
            {
              *&v6[v17 + 8] = *&v6[v17];
              if (!v17)
              {
                break;
              }

              v18 = *&v6[v17 - 8];
              v19 = NLTransliterationCandidate::getTotalScore(v16);
              v17 -= 8;
              if (v19 <= NLTransliterationCandidate::getTotalScore(v18))
              {
                v20 = &v6[v17 + 8];
                goto LABEL_16;
              }
            }

            v20 = v6;
LABEL_16:
            *v20 = v16;
          }

          v11 = v13 + 1;
          v12 += 8;
        }

        while (v13 + 1 != a2);
      }
    }
  }
}

void std::__stable_sort_move<std::_ClassicAlgPolicy,NLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<NLTransliterationCandidate *> &,std::vector<std::string> const&)::$_2 &,std::__wrap_iter<NLTransliterationCandidate **>>(NLTransliterationCandidate **a1, NLTransliterationCandidate **a2, unint64_t a3, NLTransliterationCandidate **a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = a1;
    if (a3 == 1)
    {
LABEL_9:
      *v4 = *v6;
      return;
    }

    if (a3 == 2)
    {
      v8 = a2 - 1;
      v9 = *a1;
      TotalScore = NLTransliterationCandidate::getTotalScore(*(a2 - 1));
      v11 = NLTransliterationCandidate::getTotalScore(v9);
      if (TotalScore <= v11)
      {
        v12 = v6;
      }

      else
      {
        v12 = v8;
      }

      *v4++ = *v12;
      if (TotalScore <= v11)
      {
        v6 = v8;
      }

      goto LABEL_9;
    }

    if (a3 > 8)
    {
      v24 = &a1[a3 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,NLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<NLTransliterationCandidate *> &,std::vector<std::string> const&)::$_2 &,std::__wrap_iter<NLTransliterationCandidate **>>(a1, v24, a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,NLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<NLTransliterationCandidate *> &,std::vector<std::string> const&)::$_2 &,std::__wrap_iter<NLTransliterationCandidate **>>(&v6[a3 >> 1], a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v25 = &v6[a3 >> 1];
      while (v25 != a2)
      {
        v26 = *v6;
        v27 = NLTransliterationCandidate::getTotalScore(*v25);
        v28 = NLTransliterationCandidate::getTotalScore(v26);
        if (v27 <= v28)
        {
          v29 = v6;
        }

        else
        {
          v29 = v25;
        }

        v25 += v27 > v28;
        v6 += v27 <= v28;
        *v4++ = *v29;
        if (v6 == v24)
        {
          while (v25 != a2)
          {
            v31 = *v25++;
            *v4++ = v31;
          }

          return;
        }
      }

      while (v6 != v24)
      {
        v30 = *v6++;
        *v4++ = v30;
      }
    }

    else if (a1 != a2)
    {
      v13 = a1 + 1;
      *a4 = *a1;
      if (a1 + 1 != a2)
      {
        v14 = 0;
        v15 = a4;
        do
        {
          v16 = v15;
          v17 = *v15++;
          v18 = NLTransliterationCandidate::getTotalScore(*v13);
          v19 = v15;
          if (v18 > NLTransliterationCandidate::getTotalScore(v17))
          {
            v16[1] = *v16;
            v19 = v4;
            if (v16 != v4)
            {
              v20 = v14;
              while (1)
              {
                v19 = (v4 + v20);
                v21 = *(v4 + v20 - 8);
                v22 = NLTransliterationCandidate::getTotalScore(*v13);
                if (v22 <= NLTransliterationCandidate::getTotalScore(v21))
                {
                  break;
                }

                *v19 = *(v19 - 1);
                v20 -= 8;
                if (!v20)
                {
                  v19 = v4;
                  break;
                }
              }
            }
          }

          v23 = *v13++;
          *v19 = v23;
          v14 += 8;
        }

        while (v13 != a2);
      }
    }
  }
}

void std::__inplace_merge<std::_ClassicAlgPolicy,NLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<NLTransliterationCandidate *> &,std::vector<std::string> const&)::$_2 &,std::__wrap_iter<NLTransliterationCandidate **>>(char *a1, NLTransliterationCandidate **a2, NLTransliterationCandidate **a3, uint64_t a4, uint64_t a5, NLTransliterationCandidate **a6, uint64_t a7)
{
  v71 = a5;
  if (a5)
  {
    while (v71 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return;
      }

      v13 = 0;
      v14 = -a4;
      while (1)
      {
        v15 = *&a1[v13];
        TotalScore = NLTransliterationCandidate::getTotalScore(*a2);
        if (TotalScore > NLTransliterationCandidate::getTotalScore(v15))
        {
          break;
        }

        v13 += 8;
        if (__CFADD__(v14++, 1))
        {
          return;
        }
      }

      v18 = -v14;
      v19 = v71;
      v69 = a6;
      v70 = a3;
      v67 = &a1[v13];
      v68 = a7;
      if (-v14 >= v71)
      {
        if (v14 == -1)
        {
          v63 = *&a1[v13];
          *&a1[v13] = *a2;
          *a2 = v63;
          return;
        }

        v28 = v18 / 2;
        v29 = &a1[8 * (v18 / 2)];
        v30 = a3;
        v21 = a2;
        if (a2 != v30)
        {
          v66 = v28;
          v31 = v70 - a2;
          v21 = a2;
          do
          {
            v32 = &v21[v31 >> 1];
            v34 = *v32;
            v33 = v32 + 1;
            v35 = *&v29[v13];
            v36 = NLTransliterationCandidate::getTotalScore(v34);
            v37 = NLTransliterationCandidate::getTotalScore(v35);
            if (v36 <= v37)
            {
              v31 >>= 1;
            }

            else
            {
              v31 += ~(v31 >> 1);
            }

            if (v36 > v37)
            {
              v21 = v33;
            }
          }

          while (v31);
          v19 = v71;
          v28 = v66;
        }

        v20 = v21 - a2;
        v22 = &v29[v13];
      }

      else
      {
        v20 = v71 / 2;
        v21 = &a2[v71 / 2];
        v22 = a2;
        if (a2 - a1 != v13)
        {
          v23 = (a2 - a1 - v13) >> 3;
          v22 = &a1[v13];
          do
          {
            v24 = &v22[8 * (v23 >> 1)];
            v26 = *v24;
            v25 = (v24 + 1);
            v27 = NLTransliterationCandidate::getTotalScore(*v21);
            if (v27 > NLTransliterationCandidate::getTotalScore(v26))
            {
              v23 >>= 1;
            }

            else
            {
              v22 = v25;
              v23 += ~(v23 >> 1);
            }
          }

          while (v23);
          v19 = v71;
          v20 = v71 / 2;
        }

        v28 = (v22 - a1 - v13) >> 3;
      }

      a4 = -(v28 + v14);
      v38 = v19 - v20;
      v39 = a2;
      v40 = v20;
      v41 = v28;
      v42 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<NLTransliterationCandidate **>,std::__wrap_iter<NLTransliterationCandidate **>>(v22, v39, v21);
      v43 = v40;
      v44 = v42;
      if (v41 + v43 >= v19 - (v41 + v43) - v14)
      {
        v47 = v41;
        v48 = v43;
        a7 = v68;
        std::__inplace_merge<std::_ClassicAlgPolicy,NLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<NLTransliterationCandidate *> &,std::vector<std::string> const&)::$_2 &,std::__wrap_iter<NLTransliterationCandidate **>>(v42, v21, v70, a4, v38, v69, v68);
        v21 = v22;
        a6 = v69;
        v38 = v48;
        a4 = v47;
        v70 = v44;
        a1 = v67;
      }

      else
      {
        v45 = v22;
        v46 = v41;
        a7 = v68;
        a6 = v69;
        std::__inplace_merge<std::_ClassicAlgPolicy,NLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<NLTransliterationCandidate *> &,std::vector<std::string> const&)::$_2 &,std::__wrap_iter<NLTransliterationCandidate **>>(&a1[v13], v45, v42, v46, v43, v69, v68);
        a1 = v44;
      }

      v71 = v38;
      a2 = v21;
      a3 = v70;
      if (!v38)
      {
        return;
      }
    }

    if (a4 <= v71)
    {
      if (a2 != a1)
      {
        v55 = -a6;
        v56 = a6;
        v57 = a1;
        do
        {
          v58 = *v57++;
          *v56++ = v58;
          v55 -= 8;
        }

        while (v57 != a2);
        while (a2 != a3)
        {
          v59 = *a6;
          v60 = NLTransliterationCandidate::getTotalScore(*a2);
          v61 = NLTransliterationCandidate::getTotalScore(v59);
          if (v60 <= v61)
          {
            v62 = a6;
          }

          else
          {
            v62 = a2;
          }

          a2 += v60 > v61;
          a6 += v60 <= v61;
          *a1 = *v62;
          a1 += 8;
          if (v56 == a6)
          {
            return;
          }
        }

        memmove(a1, a6, -(a6 + v55));
      }
    }

    else if (a2 != a3)
    {
      v49 = 0;
      do
      {
        a6[v49] = a2[v49];
        ++v49;
      }

      while (&a2[v49] != a3);
      v50 = &a6[v49];
      while (a2 != a1)
      {
        v51 = *(a2 - 1);
        v52 = NLTransliterationCandidate::getTotalScore(*(v50 - 1));
        v53 = NLTransliterationCandidate::getTotalScore(v51);
        if (v52 <= v53)
        {
          v54 = v50;
        }

        else
        {
          v54 = a2;
        }

        if (v52 <= v53)
        {
          --v50;
        }

        else
        {
          --a2;
        }

        *--a3 = *(v54 - 1);
        if (v50 == a6)
        {
          return;
        }
      }

      if (v50 != a6)
      {
        v64 = 0x1FFFFFFFFFFFFFFFLL;
        do
        {
          v65 = *--v50;
          a3[v64--] = v65;
        }

        while (v50 != a6);
      }
    }
  }
}

uint64_t NL::ParseIntent::ParseIntent(uint64_t this)
{
  *(this + 8) = 0;
  *this = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 16) = this + 24;
  *(this + 48) = 0;
  *(this + 56) = 0;
  return this;
}

uint64_t NL::ParseIntent::confidence(NL::ParseIntent *this)
{
  v1 = *this;
  if (*this >= 20.0)
  {
    return 3;
  }

  if (v1 >= 15.0)
  {
    return 2;
  }

  return v1 > 8.0;
}

void NL::ParseIntent::add(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }
}

void sub_22CDC6A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void NL::ParseIntent::append(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v2 = *(a1 + 48);
    if (v2 == *(a1 + 40))
    {
      operator new();
    }

    v3 = *(v2 - 16);
    v4 = a2[1];
    *&v5 = *a2;
    *(&v5 + 1) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<NL::ParseAttribute>>::push_back[abi:ne200100](v3, &v5);
    if (*(&v5 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
    }
  }
}

void sub_22CDC6B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<NL::ParseAttributes>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D6B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void NL::SharedCFType::Wrapper::~Wrapper(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::shared_ptr<NL::SharedCFType::Wrapper>::shared_ptr[abi:ne200100]<NL::SharedCFType::Wrapper,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_22CDC6D90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<NL::SharedCFType::Wrapper>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void ***std::unique_ptr<NL::SharedCFType::Wrapper>::~unique_ptr[abi:ne200100](const void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    NL::SharedCFType::Wrapper::~Wrapper(v2);
    MEMORY[0x2318C0600]();
  }

  return a1;
}

void std::__shared_ptr_pointer<NL::SharedCFType::Wrapper *,std::shared_ptr<NL::SharedCFType::Wrapper>::__shared_ptr_default_delete<NL::SharedCFType::Wrapper,NL::SharedCFType::Wrapper>,std::allocator<NL::SharedCFType::Wrapper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

const void **std::__shared_ptr_pointer<NL::SharedCFType::Wrapper *,std::shared_ptr<NL::SharedCFType::Wrapper>::__shared_ptr_default_delete<NL::SharedCFType::Wrapper,NL::SharedCFType::Wrapper>,std::allocator<NL::SharedCFType::Wrapper>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    NL::SharedCFType::Wrapper::~Wrapper(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<NL::SharedCFType::Wrapper *,std::shared_ptr<NL::SharedCFType::Wrapper>::__shared_ptr_default_delete<NL::SharedCFType::Wrapper,NL::SharedCFType::Wrapper>,std::allocator<NL::SharedCFType::Wrapper>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void NLArabicWordLanguageModeler::NLArabicWordLanguageModeler(NLArabicWordLanguageModeler *this, const __CFDictionary *a2)
{
  NLAbstractLanguageModeler::NLAbstractLanguageModeler(this, @"ar");
  *v4 = &unk_28400E710;
  if (CFDictionaryGetValue(a2, @"useLanguageModel") == *MEMORY[0x277CBED28])
  {
    NLArabicWordLanguageModeler::loadLanguageModel(this, a2);
  }
}

void NLArabicWordLanguageModeler::loadLanguageModel(NLArabicWordLanguageModeler *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v4 = MutableCopy;
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277D23078], *MEMORY[0x277CBED28]);
  valuePtr = 0x3FD0000000000000;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFDictionarySetValue(v4, *MEMORY[0x277D230A8], v5);
  CFRelease(v5);
  v9 = 1;
  v6 = CFNumberCreate(0, kCFNumberLongType, &v9);
  CFDictionarySetValue(v4, *MEMORY[0x277D230B0], v6);
  CFDictionarySetValue(v4, *MEMORY[0x277D230C0], v6);
  CFDictionarySetValue(v4, *MEMORY[0x277D230B8], v6);
  CFRelease(v6);
  CFDictionarySetValue(v4, *MEMORY[0x277D230E0], @"ar");
  *(this + 1) = LMLanguageModelCreate();
  CFRelease(v4);
  if (!*(this + 1))
  {
    v8 = NL::CFLogger::sharedInstance(v7);
    (*(*v8 + 16))(v8, 3, "Could not locate Arabic language model");
  }
}