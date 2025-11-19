void sub_254C55858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x259C28F60](v2 + 112);
  _Unwind_Resume(a1);
}

void InputTranscoder::PathKeyLayoutProcessor::input_feature_stream_for_path(InputTranscoder::PathKeyLayoutProcessor *this@<X0>, const InputTranscoder::Path *a2@<X1>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  InputTranscoder::PathKeyLayoutProcessor::input_stream_for_path(this, a2, &v11);
  __asm { FMOV            V0.2S, #-1.0 }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v9 = v12 - v11;
  if (v12 != v11)
  {
    if (!((v9 >> 2) >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::InputFeature>>(a3, v9 >> 2);
    }

    std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t InputTranscoder::PathKeyLayoutProcessor::input_stream_for_path@<X0>(uint64_t this@<X0>, const InputTranscoder::Path *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = (*(a2 + 1) - *a2) >> 6;
  if (v4 >= 4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v4 >> 2);
  }

  if (*(a2 + 1) != *a2)
  {
    v5 = *(this + 8);
    InputTranscoder::PathKeyLayoutProcessor::keystr_for_touch(this, *a2, &__p);
  }

  return this;
}

void sub_254C55CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void InputTranscoder::PathKeyLayoutProcessor::input_stream_for_path(InputTranscoder::PathKeyLayoutProcessor *this@<X0>, const InputTranscoder::Path *a2@<X1>, const void **a3@<X8>)
{
  v23[4] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<float>::reserve(a3, (*(a2 + 1) - *a2) >> 5);
  __asm { FMOV            V0.2S, #-1.0 }

  v22 = -_D0;
  v11 = *a2;
  v12 = *(a2 + 1);
  if (*a2 != v12)
  {
    v13 = *a2;
    do
    {
      v14 = *(this + 3);
      v23[0] = &unk_2867142D0;
      v23[1] = v11;
      v23[2] = &v22;
      v23[3] = v23;
      v15 = (*(**v14 + 64))(*v13, v13[1], *&v22, *(&v22 + 1));
      v17 = v16;
      std::__function::__value_func<CGPoint const ()(InputTranscoder::KeyboardLayout &)>::~__value_func[abi:ne200100](v23);
      v18 = v15;
      *v23 = v18;
      v19 = v17;
      v21 = v19;
      std::vector<float>::push_back[abi:ne200100](a3, v23);
      std::vector<float>::push_back[abi:ne200100](a3, &v21);
      v13 += 8;
      v11 += 64;
    }

    while (v13 != v12);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_254C55E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void InputTranscoder::PathKeyLayoutProcessor::keystr_for_touch(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(a1 + 40);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v21 = *(a1 + 24);
      v22 = a2[1];
      v31 = *a2;
      v32 = v22;
      v23 = a2[3];
      v33 = a2[2];
      v34 = v23;
      v24 = *(a1 + 44);
      operator new();
    }

    if (v5 == 3)
    {
      v9 = *(a1 + 24);
      v10 = a2[1];
      v31 = *a2;
      v32 = v10;
      v11 = a2[3];
      v33 = a2[2];
      v34 = v11;
      v12 = *(a1 + 44);
      operator new();
    }
  }

  else
  {
    if (!v5)
    {
      v17 = *(a1 + 24);
      v18 = a2[1];
      v31 = *a2;
      v32 = v18;
      v19 = a2[3];
      v33 = a2[2];
      v34 = v19;
      v20 = *(a1 + 44);
      operator new();
    }

    if (v5 == 1)
    {
      v6 = *(a1 + 24);
      v7 = (*(**(a1 + 8) + 16))(*(a1 + 8));
      v28 = a2[3];
      v27 = a2[2];
      v26 = a2[1];
      v25 = *a2;
      v29 = *(a1 + 44);
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 8));
      }

      else
      {
        v8 = *v7;
        __p.__r_.__value_.__r.__words[2] = *(v7 + 16);
        *&__p.__r_.__value_.__l.__data_ = v8;
      }

      *(&v32 + 1) = 0;
      operator new();
    }
  }

  v13 = *(a1 + 24);
  v14 = a2[1];
  v31 = *a2;
  v32 = v14;
  v15 = a2[3];
  v33 = a2[2];
  v34 = v15;
  v16 = *(a1 + 44);
  operator new();
}

void sub_254C563D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  std::__function::__value_func<std::string ()(InputTranscoder::KeyboardLayout &)>::~__value_func[abi:ne200100](&a28);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void InputTranscoder::getNearestKey(double *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, std::string *a4@<X8>)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x4002000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  __p = 0;
  v16 = 0;
  v17 = 0;
  v5 = *a1;
  v6 = a1[1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___ZN15InputTranscoderL13getNearestKeyERKNS_10PathSampleERNS_14KeyboardLayoutEb_block_invoke;
  v8[3] = &unk_2797B1BB0;
  v9 = a3;
  v8[4] = &v10;
  v8[5] = a2;
  (*(*a2 + 16))(a2, v8, v5, v6);
  if (*(v11 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a4, v11[5], v11[6]);
  }

  else
  {
    v7 = *(v11 + 5);
    a4->__r_.__value_.__r.__words[2] = v11[7];
    *&a4->__r_.__value_.__l.__data_ = v7;
  }

  _Block_object_dispose(&v10, 8);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }
}

void sub_254C56564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void InputTranscoder::getNearestKeyOrUnk(double *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4002000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x6002000000;
  v11[3] = __Block_byref_object_copy__4;
  v11[4] = __Block_byref_object_dispose__5;
  v6 = *a1;
  v7 = a1[1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN15InputTranscoderL18getNearestKeyOrUnkERKNS_10PathSampleERNS_14KeyboardLayoutEbRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEE_block_invoke;
  v9[3] = &unk_2797B1BD8;
  v10 = a3;
  v9[4] = &v12;
  v9[5] = v11;
  v9[6] = a2;
  v9[7] = a1;
  v9[8] = a4;
  (*(*a2 + 16))(a2, v9, v6, v7);
  if (*(v13 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a5, v13[5], v13[6]);
  }

  else
  {
    v8 = *(v13 + 5);
    a5->__r_.__value_.__r.__words[2] = v13[7];
    *&a5->__r_.__value_.__l.__data_ = v8;
  }

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v12, 8);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }
}

void sub_254C5670C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  if (*(v11 - 17) < 0)
  {
    operator delete(*(v11 - 40));
  }

  _Unwind_Resume(a1);
}

void InputTranscoder::getEnclosingOrNearestKey(double *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  (*(*a2 + 24))(v11, a2, *a1, a1[1]);
  nlp::getUTF8StringFromCFString(v12, &__p);
  if (a3)
  {
    InputTranscoder::transformNonLetterKeys(&__p, &v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v9;
  }

  v8 = (*(*a2 + 80))(a2);
  if (InputTranscoder::keyIsValid(v11, a3, v8))
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(a4, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      *a4 = __p;
    }
  }

  else
  {
    InputTranscoder::getNearestKey(a1, a2, a3, a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254C56884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InputTranscoder::getMostProbableMultiKey(double *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, std::string *a4@<X8>)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4002000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v11 = 0;
  v5 = *a1;
  v6 = a1[1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___ZN15InputTranscoderL23getMostProbableMultiKeyERKNS_10PathSampleERNS_14KeyboardLayoutEb_block_invoke;
  v8[3] = &unk_2797B1C00;
  v9 = a3;
  v8[5] = &v12;
  v8[6] = a2;
  v8[4] = v10;
  (*(*a2 + 16))(a2, v8, v5, v6);
  if (*(v13 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a4, v13[5], v13[6]);
  }

  else
  {
    v7 = *(v13 + 5);
    a4->__r_.__value_.__r.__words[2] = v13[7];
    *&a4->__r_.__value_.__l.__data_ = v7;
  }

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v12, 8);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }
}

void sub_254C569FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  if (*(v9 - 17) < 0)
  {
    operator delete(*(v9 - 40));
  }

  _Unwind_Resume(a1);
}

uint64_t InputTranscoder::map_to_key_class(void *a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = a1[1];
    if (v2 != 5)
    {
      if (v2 != 6)
      {
        return 1;
      }

      a1 = *a1;
      goto LABEL_8;
    }

    if (**a1 != 1718184051 || *(*a1 + 4) != 116)
    {
      v11 = **a1 ^ 0x63617073 | *(*a1 + 4) ^ 0x65;
      goto LABEL_23;
    }

    return 2;
  }

  v1 = *(a1 + 23);
  if (v1 != 5)
  {
    if (v1 != 6)
    {
      return 1;
    }

LABEL_8:
    v3 = bswap64(*a1 | (*(a1 + 2) << 32));
    v4 = v3 >= 0x64656C6574650000;
    v5 = v3 > 0x64656C6574650000;
    v6 = !v4;
    v7 = v5 == v6;
    v8 = 4;
    goto LABEL_24;
  }

  if (*a1 == 1718184051 && *(a1 + 4) == 116)
  {
    return 2;
  }

  v11 = *a1 ^ 0x63617073 | *(a1 + 4) ^ 0x65;
LABEL_23:
  v7 = v11 == 0;
  v8 = 3;
LABEL_24:
  if (v7)
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

uint64_t InputTranscoder::PathKeyLayoutProcessor::key_class_for_touch_key(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 44);
  v5 = *(a1 + 24);
  __p.__r_.__value_.__r.__words[0] = &unk_286714480;
  p_p = &__p;
  v6 = (*(**v5 + 80))();
  IsValid = InputTranscoder::keyIsValid(a2, v4, v6);
  std::__function::__value_func<BOOL ()(InputTranscoder::KeyboardLayout &)>::~__value_func[abi:ne200100](&__p);
  if (IsValid)
  {
    nlp::getUTF8StringFromCFString(*(a2 + 48), &__p);
    if (*(a1 + 44) == 1)
    {
      InputTranscoder::transformNonLetterKeys(&__p, &v11);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v11;
    }

    v8 = InputTranscoder::map_to_key_class(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_254C56CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InputTranscoder::keyIsValid(uint64_t a1, int a2, int a3)
{
  Length = CFStringGetLength(*(a1 + 48));
  LOBYTE(v7) = Length != 0;
  if (Length)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return v7 & 1;
  }

  nlp::getUTF8StringFromCFString(*(a1 + 48), &__p);
  v9 = v29;
  if ((v29 & 0x80u) == 0)
  {
    v10 = v29;
  }

  else
  {
    v10 = v28;
  }

  if (v10 != 1)
  {
LABEL_18:
    v7 = 0;
    if (a2)
    {
      goto LABEL_19;
    }

LABEL_64:
    v16 = 0;
    goto LABEL_65;
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "a") & 0x80) == 0 && std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "z") <= 0)
  {
    v9 = v29;
    goto LABEL_63;
  }

  v9 = v29;
  if (v29 < 0)
  {
    if (v28 != 2)
    {
      goto LABEL_18;
    }

    p_p = __p;
    if (*__p == 46274)
    {
      goto LABEL_63;
    }
  }

  else
  {
    if (v29 != 2)
    {
      goto LABEL_18;
    }

    if (__p == 46274)
    {
      v9 = 2;
      goto LABEL_63;
    }

    p_p = &__p;
  }

  if (*p_p != 45507)
  {
    goto LABEL_18;
  }

LABEL_63:
  v7 = 1;
  if (!a2)
  {
    goto LABEL_64;
  }

LABEL_19:
  if ((v9 & 0x80) == 0)
  {
    if (v9 == 1)
    {
      v19 = __p - 8;
      v20 = v19 >= 0x19;
      v21 = v7 | (0x10001E5u >> v19);
      if (!v20)
      {
        LOBYTE(v7) = v21;
      }

      return v7 & 1;
    }

    if (v9 == 5)
    {
      if (__p == 1718184051 && BYTE4(__p) == 116)
      {
        LOBYTE(v7) = 1;
      }

      else if (__p == 1667330163 && BYTE4(__p) == 101)
      {
        LOBYTE(v7) = 1;
      }

      return v7 & 1;
    }

    if (v9 != 6)
    {
      return v7 & 1;
    }

    v12 = &__p;
    goto LABEL_28;
  }

  if (v28 == 1)
  {
    v24 = *__p;
    if (v24 <= 0x20)
    {
      v25 = 1;
      if (((1 << v24) & 0x1C500) != 0)
      {
LABEL_70:
        operator delete(__p);
        LOBYTE(v7) = v25;
        return v7 & 1;
      }

      if (((1 << v24) & 0x100002000) != 0)
      {
LABEL_69:
        v25 |= v7;
        goto LABEL_70;
      }
    }

LABEL_61:
    v25 = 0;
    goto LABEL_69;
  }

  if (v28 == 5)
  {
    if (*__p == 1718184051 && *(__p + 4) == 116)
    {
      v25 = 1;
      goto LABEL_69;
    }

    if (*__p == 1667330163 && *(__p + 4) == 101)
    {
      v16 = 1;
      goto LABEL_65;
    }
  }

  if (v28 != 6)
  {
    goto LABEL_61;
  }

  v12 = __p;
LABEL_28:
  v13 = *v12;
  v14 = v12[2];
  v16 = v13 == 1701602660 && v14 == 25972;
LABEL_65:
  v25 = v7 | v16;
  LOBYTE(v7) = v7 | v16;
  if ((v9 & 0x80) != 0)
  {
    goto LABEL_70;
  }

  return v7 & 1;
}

void InputTranscoder::transformNonLetterKeys(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 23);
  v5 = *a1;
  v6 = *(a1 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = &v7[v8];
  if (v8 >= 1)
  {
    v10 = v8;
    v11 = v7;
    do
    {
      v12 = memchr(v11, 14, v10);
      if (!v12)
      {
        break;
      }

      if (*v12 == 14)
      {
        if (v12 != v9 && v12 - v7 != -1)
        {
          goto LABEL_28;
        }

        break;
      }

      v11 = v12 + 1;
      v10 = v9 - v11;
    }

    while (v9 - v11 >= 1);
  }

  if ((v4 & 0x80) != 0)
  {
    v13 = v5;
    v14 = v6;
    if (v6 == 5)
    {
      v17 = *v5 == 1718184051 && v5[4] == 116;
      v13 = v5;
      if (!v17)
      {
        goto LABEL_21;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v13 = a1;
    v14 = v4;
    if (v4 == 5)
    {
      v15 = *a1 == 1718184051 && *(a1 + 4) == 116;
      v13 = a1;
      if (!v15)
      {
LABEL_21:
        v16 = v13 + 5;
        v14 = 5;
        goto LABEL_31;
      }

LABEL_28:
      v18 = "shift";
LABEL_99:

      std::string::basic_string[abi:ne200100]<0>(a2, v18);
      return;
    }
  }

  if (v14 < 1)
  {
    goto LABEL_38;
  }

  v16 = &v13[v14];
LABEL_31:
  v19 = v13;
  do
  {
    v20 = memchr(v19, 8, v14);
    if (!v20)
    {
      break;
    }

    if (*v20 == 8)
    {
      if (v20 != v16 && v20 - v13 != -1)
      {
        goto LABEL_59;
      }

      break;
    }

    v19 = v20 + 1;
    v14 = v16 - v19;
  }

  while (v16 - v19 >= 1);
LABEL_38:
  if (v8 >= 1)
  {
    v21 = v8;
    v22 = v7;
    do
    {
      v23 = memchr(v22, 8, v21);
      if (!v23)
      {
        break;
      }

      if (*v23 == 8)
      {
        if (v23 != v9 && v23 - v7 != -1)
        {
          goto LABEL_59;
        }

        break;
      }

      v22 = v23 + 1;
      v21 = v9 - v22;
    }

    while (v9 - v22 >= 1);
  }

  if ((v4 & 0x80) != 0)
  {
    if (v6 == 6)
    {
      if (*v5 != 1701602660 || *(v5 + 2) != 25972)
      {
        goto LABEL_52;
      }

LABEL_59:
      v18 = "delete";
      goto LABEL_99;
    }

    v4 = v6;
  }

  else
  {
    v5 = a1;
    if (v4 == 6)
    {
      v24 = *a1 == 1701602660 && *(a1 + 4) == 25972;
      v5 = a1;
      if (!v24)
      {
LABEL_52:
        v25 = v5 + 6;
        v4 = 6;
        goto LABEL_63;
      }

      goto LABEL_59;
    }
  }

  if (v4 < 1)
  {
    goto LABEL_71;
  }

  v25 = &v5[v4];
LABEL_63:
  v27 = v5;
  do
  {
    v28 = memchr(v27, 15, v4);
    if (!v28)
    {
      break;
    }

    if (*v28 == 15)
    {
      if (v28 != v25 && v28 - v5 != -1)
      {
        v18 = "{international}";
        goto LABEL_99;
      }

      break;
    }

    v27 = v28 + 1;
    v4 = v25 - v27;
  }

  while (v25 - v27 >= 1);
LABEL_71:
  if (v8 >= 1)
  {
    v29 = v8;
    v30 = v7;
    do
    {
      v31 = memchr(v30, 16, v29);
      if (!v31)
      {
        break;
      }

      if (*v31 == 16)
      {
        if (v31 != v9 && v31 - v7 != -1)
        {
          v18 = "{more}";
          goto LABEL_99;
        }

        break;
      }

      v30 = v31 + 1;
      v29 = v9 - v30;
    }

    while (v9 - v30 >= 1);
    v32 = v8;
    v33 = v7;
    do
    {
      v34 = memchr(v33, 10, v32);
      if (!v34)
      {
        break;
      }

      if (*v34 == 10)
      {
        if (v34 != v9 && v34 - v7 != -1)
        {
          v18 = "{newline}";
          goto LABEL_99;
        }

        break;
      }

      v33 = v34 + 1;
      v32 = v9 - v33;
    }

    while (v9 - v33 >= 1);
    v35 = v7;
    do
    {
      v36 = memchr(v35, 13, v8);
      if (!v36)
      {
        break;
      }

      if (*v36 == 13)
      {
        if (v36 != v9 && v36 - v7 != -1)
        {
          v18 = "{return}";
          goto LABEL_99;
        }

        break;
      }

      v35 = v36 + 1;
      v8 = v9 - v35;
    }

    while (v9 - v35 >= 1);
  }

  if (std::string::find[abi:ne200100](a1, " ") != -1 || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "space"))
  {
    v18 = "space";
    goto LABEL_99;
  }

  if (*(a1 + 23) < 0)
  {
    v37 = *a1;
    v38 = *(a1 + 8);

    std::string::__init_copy_ctor_external(a2, v37, v38);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

uint64_t InputTranscoder::PathKeyLayoutProcessor::getInflectionString@<X0>(uint64_t result@<X0>, __int128 **a2@<X1>, void *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      if ((*(v3 + 56) & 1) == 0)
      {
        v5 = *(result + 24);
        v7 = *v3;
        v8 = v3[1];
        v9 = v3[2];
        v10 = v3[3];
        operator new();
      }

      v3 += 4;
    }

    while (v3 != v4);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_254C57590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  std::__function::__value_func<std::string ()(InputTranscoder::KeyboardLayout &)>::~__value_func[abi:ne200100](&a23);
  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
  }

  _Unwind_Resume(a1);
}

void InputTranscoder::getNearestKeyWithoutValidCheck(double *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, std::string *a4@<X8>)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x4002000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  __p = 0;
  v16 = 0;
  v17 = 0;
  v5 = *a1;
  v6 = a1[1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___ZN15InputTranscoderL30getNearestKeyWithoutValidCheckERKNS_10PathSampleERNS_14KeyboardLayoutEb_block_invoke;
  v8[3] = &unk_2797B1C28;
  v9 = a3;
  v8[4] = &v10;
  (*(*a2 + 16))(a2, v8, v5, v6);
  if (*(v11 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a4, v11[5], v11[6]);
  }

  else
  {
    v7 = *(v11 + 5);
    a4->__r_.__value_.__r.__words[2] = v11[7];
    *&a4->__r_.__value_.__l.__data_ = v7;
  }

  _Block_object_dispose(&v10, 8);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }
}

void sub_254C57704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  _Block_object_dispose(&a15, 8);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN15InputTranscoderL13getNearestKeyERKNS_10PathSampleERNS_14KeyboardLayoutEb_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 48);
  v7 = (*(**(a1 + 40) + 80))(*(a1 + 40));
  if (InputTranscoder::keyIsValid(a2, v6, v7))
  {
    nlp::getUTF8StringFromCFString(*(a2 + 48), &__str);
    if (*(a1 + 48))
    {
      InputTranscoder::transformNonLetterKeys(&__str, &v9);
      v8 = *(*(a1 + 32) + 8);
      if (*(v8 + 63) < 0)
      {
        operator delete(*(v8 + 40));
      }

      *(v8 + 40) = v9;
    }

    else
    {
      std::string::operator=((*(*(a1 + 32) + 8) + 40), &__str);
    }

    *a3 = 1;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_254C57888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

void ___ZN15InputTranscoderL18getNearestKeyOrUnkERKNS_10PathSampleERNS_14KeyboardLayoutEbRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEE_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 72);
  v7 = (*(**(a1 + 48) + 80))(*(a1 + 48));
  if (InputTranscoder::keyIsValid(a2, v6, v7))
  {
    nlp::getUTF8StringFromCFString(*(a2 + 48), &__str);
    if (*(a1 + 72))
    {
      InputTranscoder::transformNonLetterKeys(&__str, &v16);
      v8 = *(*(a1 + 32) + 8);
      if (*(v8 + 63) < 0)
      {
        operator delete(*(v8 + 40));
      }

      *(v8 + 40) = v16;
    }

    else
    {
      std::string::operator=((*(*(a1 + 32) + 8) + 40), &__str);
    }

    *a3 = 1;
    v9 = *(*(a1 + 40) + 8);
    v10 = *a2;
    v11 = *(a2 + 16);
    v12 = *(a2 + 32);
    *(v9 + 88) = *(a2 + 48);
    *(v9 + 72) = v12;
    *(v9 + 56) = v11;
    *(v9 + 40) = v10;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v13 = (*(**(a1 + 48) + 88))(*(a1 + 48), a2, **(a1 + 56), *(*(a1 + 56) + 8));
  v14 = fabs(v13);
  if (v14 >= 2.22507386e-308)
  {
    v15 = fabs(v13 + 0.0);
    if (v14 > v15 * 2.22044605e-16 + v15 * 2.22044605e-16)
    {
      std::string::operator=((*(*(a1 + 32) + 8) + 40), *(a1 + 64));
    }
  }
}

void sub_254C57A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN15InputTranscoderL23getMostProbableMultiKeyERKNS_10PathSampleERNS_14KeyboardLayoutEb_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 56);
  v7 = (*(**(a1 + 48) + 80))(*(a1 + 48));
  if (!InputTranscoder::keyIsValid(a2, v6, v7))
  {
    return;
  }

  ++*(*(*(a1 + 32) + 8) + 24);
  nlp::getUTF8StringFromCFString(*(a2 + 48), &v23);
  v8 = *(*(a1 + 40) + 8);
  v9 = (v8 + 40);
  if (*(a1 + 56))
  {
    v10 = *(v8 + 63);
    if (v10 < 0)
    {
      if (*(v8 + 48) != 14)
      {
        goto LABEL_19;
      }

      v11 = v9->__r_.__value_.__r.__words[0];
    }

    else
    {
      v11 = (v8 + 40);
      if (v10 != 14)
      {
        goto LABEL_19;
      }
    }

    v17 = *v11;
    v18 = *(v11 + 6);
    if (v17 != 0x616469646E61637BLL || v18 != 0x7D72614265746164)
    {
LABEL_19:
      InputTranscoder::transformNonLetterKeys(&v23, &__p);
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

      std::string::append((*(*(a1 + 40) + 8) + 40), p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_27;
    }

    v12 = v25;
    v13 = v24;
    v14 = (v25 & 0x80u) != 0;
    if ((v25 & 0x80u) == 0)
    {
      v15 = &v23;
    }

    else
    {
      v15 = v23;
    }
  }

  else
  {
    v12 = v25;
    v13 = v24;
    v14 = (v25 & 0x80u) != 0;
    if ((v25 & 0x80u) == 0)
    {
      v15 = &v23;
    }

    else
    {
      v15 = v23;
    }
  }

  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  std::string::append(v9, v15, v16);
LABEL_27:
  if (*(*(*(a1 + 32) + 8) + 24) == 2)
  {
    *a3 = 1;
  }

  if (v25 < 0)
  {
    operator delete(v23);
  }
}

void sub_254C57C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(const void **a1, char *__s)
{
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  v6 = strlen(__s);

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(v4, v5, __s, v6);
}

uint64_t std::string::find[abi:ne200100](char **a1, char *__s)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v3 = *a1;
    v4 = a1[1];
  }

  result = strlen(__s);
  if (result)
  {
    v6 = result;
    v7 = &v3[v4];
    if (v4 >= result)
    {
      v9 = *__s;
      v10 = v3;
      do
      {
        if (v4 - v6 == -1)
        {
          break;
        }

        v11 = memchr(v10, v9, v4 - v6 + 1);
        if (!v11)
        {
          break;
        }

        v8 = v11;
        if (!memcmp(v11, __s, v6))
        {
          goto LABEL_6;
        }

        v10 = v8 + 1;
        v4 = v7 - (v8 + 1);
      }

      while (v4 >= v6);
    }

    v8 = v7;
LABEL_6:
    if (v8 == v7)
    {
      return -1;
    }

    else
    {
      return v8 - v3;
    }
  }

  return result;
}

void ___ZN15InputTranscoderL30getNearestKeyWithoutValidCheckERKNS_10PathSampleERNS_14KeyboardLayoutEb_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  nlp::getUTF8StringFromCFString(*(a2 + 48), &__str);
  if (*(a1 + 40))
  {
    InputTranscoder::transformNonLetterKeys(&__str, &v6);
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 63) < 0)
    {
      operator delete(*(v5 + 40));
    }

    *(v5 + 40) = v6;
  }

  else
  {
    std::string::operator=((*(*(a1 + 32) + 8) + 40), &__str);
  }

  *a3 = 1;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_254C57EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<InputTranscoder::PathKeyLayoutProcessor::input_feature_stream_for_path(InputTranscoder::Path const&,BOOL,unsigned int,BOOL,unsigned int)::$_0,std::allocator<InputTranscoder::PathKeyLayoutProcessor::input_feature_stream_for_path(InputTranscoder::Path const&,BOOL,unsigned int,BOOL,unsigned int)::$_0>,CGPoint const ()(InputTranscoder::KeyboardLayout &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286714240;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<InputTranscoder::PathKeyLayoutProcessor::input_feature_stream_for_path(InputTranscoder::Path const&,BOOL,unsigned int,BOOL,unsigned int)::$_0,std::allocator<InputTranscoder::PathKeyLayoutProcessor::input_feature_stream_for_path(InputTranscoder::Path const&,BOOL,unsigned int,BOOL,unsigned int)::$_0>,CGPoint const ()(InputTranscoder::KeyboardLayout &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<CGPoint const ()(InputTranscoder::KeyboardLayout &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<InputTranscoder::PathKeyLayoutProcessor::input_stream_for_path(InputTranscoder::Path const&)::$_0,std::allocator<InputTranscoder::PathKeyLayoutProcessor::input_stream_for_path(InputTranscoder::Path const&)::$_0>,CGPoint const ()(InputTranscoder::KeyboardLayout &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867142D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<InputTranscoder::PathKeyLayoutProcessor::input_stream_for_path(InputTranscoder::Path const&)::$_0,std::allocator<InputTranscoder::PathKeyLayoutProcessor::input_stream_for_path(InputTranscoder::Path const&)::$_0>,CGPoint const ()(InputTranscoder::KeyboardLayout &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&>,std::allocator<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&>>,std::string ()(InputTranscoder::KeyboardLayout &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286714350;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&>,std::allocator<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&>>,std::string ()(InputTranscoder::KeyboardLayout &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL,std::string const&),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&,std::string const&>,std::allocator<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL,std::string const&),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&,std::string const&>>,std::string ()(InputTranscoder::KeyboardLayout &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2867143E8;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  return a1;
}

void std::__function::__func<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL,std::string const&),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&,std::string const&>,std::allocator<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL,std::string const&),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&,std::string const&>>,std::string ()(InputTranscoder::KeyboardLayout &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2867143E8;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  JUMPOUT(0x259C28FE0);
}

uint64_t std::__function::__func<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL,std::string const&),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&,std::string const&>,std::allocator<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL,std::string const&),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&,std::string const&>>,std::string ()(InputTranscoder::KeyboardLayout &)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2867143E8;
  a2[1] = v2;
  return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,InputTranscoder::PathSample,std::placeholders::__ph<1>,BOOL,std::string>::__tuple_impl((a2 + 2), (a1 + 16));
}

void std::__function::__func<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL,std::string const&),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&,std::string const&>,std::allocator<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL,std::string const&),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&,std::string const&>>,std::string ()(InputTranscoder::KeyboardLayout &)>::destroy(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }
}

void std::__function::__func<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL,std::string const&),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&,std::string const&>,std::allocator<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL,std::string const&),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&,std::string const&>>,std::string ()(InputTranscoder::KeyboardLayout &)>::destroy_deallocate(void **__p)
{
  if (*(__p + 111) < 0)
  {
    operator delete(__p[11]);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL,std::string const&),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&,std::string const&>,std::allocator<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL,std::string const&),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL const&,std::string const&>>,std::string ()(InputTranscoder::KeyboardLayout &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,InputTranscoder::PathSample,std::placeholders::__ph<1>,BOOL,std::string>::__tuple_impl(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 64) = *(a2 + 64);
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v6;
  }

  return a1;
}

uint64_t std::__function::__func<InputTranscoder::PathKeyLayoutProcessor::key_class_for_touch_key(ITKeyInfo const&)::$_0,std::allocator<InputTranscoder::PathKeyLayoutProcessor::key_class_for_touch_key(ITKeyInfo const&)::$_0>,BOOL ()(InputTranscoder::KeyboardLayout &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(InputTranscoder::KeyboardLayout &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL>,std::allocator<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL>>,std::string ()(InputTranscoder::KeyboardLayout &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286714510;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL>,std::allocator<std::__bind<std::string (&)(InputTranscoder::PathSample const&,InputTranscoder::KeyboardLayout &,BOOL),InputTranscoder::PathSample const&,std::placeholders::__ph<1> const&,BOOL>>,std::string ()(InputTranscoder::KeyboardLayout &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t InputTranscoder::PathResampler::is_inflection_point(InputTranscoder::PathResampler *this, unsigned int a2)
{
  if (!*(this + 2))
  {
    return 0;
  }

  v2 = *(this + 10);
  v3 = v2 + (a2 << 6);
  if ((*(v3 + 40) | 2) == 2)
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = *this * 3.0;
  v6 = *(v3 + 32);
  if (v6 < v5)
  {
    return 0;
  }

  v7 = *(this + 11);
  v8 = v2 == v7 ? 0.0 : *(v7 - 32);
  if (v6 + v5 > v8)
  {
    return 0;
  }

  if (*(this + 24) == 1)
  {
    v9 = a2 - 1;
    if (a2 == 1)
    {
      v10 = (v7 - v2) >> 6;
    }

    else
    {
      v10 = (v7 - v2) >> 6;
      v11 = (v2 + (v9 << 6) + 32);
      v12 = a2 - 2;
      v13 = a2 - 1;
      while (*v11 > v6 - v5)
      {
        if (v10 > v13 && *(v11 - 2) - *(v2 + (v12 << 6) + 16) > *(this + 2))
        {
          return 0;
        }

        v11 -= 8;
        --v12;
        if (!--v13)
        {
          break;
        }
      }
    }

    if (v10 > a2 && *(v3 + 16) - *(v2 + (v9 << 6) + 16) > *(this + 2))
    {
      return 1;
    }

    v14 = a2 + 1;
    if (v10 > v14)
    {
      v15 = v6 - v5;
      v16 = a2 + 2;
      do
      {
        v17 = v2 + (v14 << 6);
        if (*(v17 + 32) <= v15)
        {
          break;
        }

        if (v16 != 1 && *(v17 + 16) - *(v2 + ((v16 - 2) << 6) + 16) > *(this + 2))
        {
          return 0;
        }

        v14 = v16;
      }

      while (v10 > v16++);
    }
  }

  return InputTranscoder::Path::is_curvature_local_max((this + 80), a2, v5);
}

unint64_t InputTranscoder::PathResampler::process_sample(InputTranscoder::PathResampler *this, unsigned int a2)
{
  is_inflection_point = InputTranscoder::PathResampler::is_inflection_point(this, a2);
  v5 = *(this + 4);
  v6 = *(this + 5);
  if (!a2)
  {
    v19 = *(this + 10);
    v20 = this + 32;
    goto LABEL_16;
  }

  v7 = is_inflection_point;
  v8 = *(this + 10);
  v9 = v8 + (a2 << 6);
  v10 = *(this + 11) - v8;
  if ((v10 >> 6) < 2)
  {
LABEL_6:
    if (v10 != 64)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = (v8 + 104);
    v12 = (v10 >> 6) - 1;
    while (1)
    {
      v13 = *v11;
      v11 += 8;
      if (v13 == 1)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_6;
      }
    }
  }

  InputTranscoder::PathResampler::drop_non_resampled_path(this, a2);
  v14 = *(this + 5);
  if (*(this + 4) != v14)
  {
    v15 = *(v14 - 32) + *this;
    v16 = *(v9 + 32);
    if (v15 < v16)
    {
      v17 = (v8 + ((a2 - 1) << 6));
      do
      {
        v18 = (v15 - v17[2].f64[0]) / (v16 - v17[2].f64[0]);
        InputTranscoder::PathSample::lerp(v17, v9, v22, v18);
        std::vector<InputTranscoder::PathSample>::push_back[abi:ne200100](this + 32, v22);
        v15 = *(*(this + 5) - 32) + *this;
        v16 = *(v9 + 32);
      }

      while (v15 < v16);
    }
  }

LABEL_11:
  if (!v7)
  {
    if (*(this + 12))
    {
      return (v6 - v5) >> 6;
    }

    v20 = this + 32;
    v19 = v9;
LABEL_16:
    std::vector<InputTranscoder::PathSample>::push_back[abi:ne200100](v20, v19);
    return (v6 - v5) >> 6;
  }

  std::vector<InputTranscoder::PathSample>::push_back[abi:ne200100](this + 32, v9);
  InputTranscoder::Path::set_sample_is_inflection_point((this + 32), ((*(this + 5) - *(this + 4)) >> 6) - 1);
  *(*(this + 5) - 7) = 1;
  return (v6 - v5) >> 6;
}

void InputTranscoder::PathResampler::drop_non_resampled_path(InputTranscoder::PathResampler *this, unsigned int a2)
{
  if (a2 >= 2)
  {
    v14 = v2;
    v15 = v3;
    v5 = this + 80;
    v4 = *(this + 10);
    v6 = v4 + (a2 << 6);
    if (*(v6 + 40) == 1)
    {
      v7 = v4 + ((a2 - 1) << 6);
      if (!*(v7 + 40))
      {
        v8 = *(v7 + 16);
        v13[0] = *v7;
        v13[1] = v8;
        v9 = *(v7 + 48);
        v13[2] = *(v7 + 32);
        v13[3] = v9;
        v10 = *(v6 + 16);
        v12[0] = *v6;
        v12[1] = v10;
        v11 = *(v6 + 48);
        v12[2] = *(v6 + 32);
        v12[3] = v11;
        *(this + 5) = *(this + 4);
        *(this + 8) = *(this + 7);
        *(this + 11) = v4;
        *(this + 14) = *(this + 13);
        *(this + 128) = 0;
        *(this + 33) = 0;
        *(this + 34) = 0;
        std::vector<InputTranscoder::PathSample>::push_back[abi:ne200100](this + 80, v13);
        std::vector<InputTranscoder::PathSample>::push_back[abi:ne200100](v5, v12);
      }
    }
  }
}

unint64_t InputTranscoder::PathResampler::retroactively_process_sample(InputTranscoder::PathResampler *this, unsigned int a2)
{
  v2 = a2;
  if (!InputTranscoder::PathResampler::is_inflection_point(this, a2))
  {
    goto LABEL_16;
  }

  v4 = *(this + 10);
  v5 = *(this + 11) - v4;
  if ((v5 >> 6) >= 2)
  {
    v6 = (v4 + 104);
    v7 = (v5 >> 6) - 1;
    do
    {
      v8 = *v6;
      v6 += 8;
      if (v8 == 1)
      {
        goto LABEL_7;
      }
    }

    while (--v7);
  }

  if (v5 != 64)
  {
LABEL_16:
    v19 = *(this + 5) - *(this + 4);
    return v19 >> 6;
  }

LABEL_7:
  v9 = *(this + 4);
  v10 = *(this + 5);
  v11 = v10 - v9;
  if (v10 != v9)
  {
    v12 = v4 + (v2 << 6);
    v13 = v11 >> 6;
    v14 = *(v12 + 32);
    v10 = *(this + 4);
    do
    {
      v15 = v13 >> 1;
      v16 = v10 + (v13 >> 1 << 6);
      v17 = *(v16 + 32);
      v18 = v16 + 64;
      v13 += ~(v13 >> 1);
      if (v17 < v14)
      {
        v10 = v18;
      }

      else
      {
        v13 = v15;
      }
    }

    while (v13);
  }

  InputTranscoder::Path::resize((this + 32), (v10 - v9) >> 6);
  v19 = *(this + 5) - *(this + 4);
  v20 = *(this + 33);
  for (*(this + 33) = v2; v2 < v20; *(this + 33) = v2)
  {
    InputTranscoder::PathResampler::process_sample(this, v2);
    v2 = *(this + 33) + 1;
  }

  return v19 >> 6;
}

uint64_t InputTranscoder::PathResampler::process_new_samples(InputTranscoder::PathResampler *this)
{
  v2 = *(this + 10);
  v3 = *(this + 11);
  if (v2 == v3)
  {
    return (*(this + 5) - *(this + 4)) >> 6;
  }

  if (*(this + 24) != 1)
  {
    goto LABEL_6;
  }

  v4 = (v3 - v2) >> 6;
  v5 = (v4 - 1);
  if (v4 == 1)
  {
    goto LABEL_7;
  }

  if (v5 < (v3 - v2) >> 6)
  {
    LOBYTE(v5) = *(v2 + (v5 << 6) + 16) - *(v2 + ((v4 - 2) << 6) + 16) > *(this + 2);
  }

  else
  {
LABEL_6:
    LOBYTE(v5) = 0;
  }

LABEL_7:
  v6 = *(this + 2);
  v7 = *(v3 - 32);
  if (v6 == 1 && (v5 & 1) == 0)
  {
    v7 = v7 + *this * -3.0;
  }

  v8 = (*(this + 5) - *(this + 4)) >> 6;
  v9 = *(this + 33);
  if (v9 < (v3 - v2) >> 6 && *(v2 + (v9 << 6) + 32) <= v7)
  {
    do
    {
      v10 = InputTranscoder::PathResampler::process_sample(this, v9);
      if (v10 >= v8)
      {
        v8 = v8;
      }

      else
      {
        v8 = v10;
      }

      v9 = (*(this + 33) + 1);
      *(this + 33) = v9;
      v2 = *(this + 10);
      v3 = *(this + 11);
    }

    while (v9 < (v3 - v2) >> 6 && *(v2 + (v9 << 6) + 32) <= v7);
    v6 = *(this + 2);
  }

  if (v6 == 2)
  {
    v11 = v2 == v3 ? 0.0 : *(v3 - 32);
    v12 = *(this + 34);
    if (v12 < (v3 - v2) >> 6)
    {
      v13 = v11 + *this * -3.0;
      do
      {
        if (*(v2 + (v12 << 6) + 32) >= v13)
        {
          break;
        }

        v14 = InputTranscoder::PathResampler::retroactively_process_sample(this, v12);
        v8 = v14 >= v8 ? v8 : v14;
        v12 = (*(this + 34) + 1);
        *(this + 34) = v12;
        v2 = *(this + 10);
      }

      while (v12 < (*(this + 11) - v2) >> 6);
    }
  }

  return v8;
}

uint64_t InputTranscoder::PathResampler::append_and_resample(InputTranscoder::PathResampler *a1, __int128 *a2)
{
  std::vector<InputTranscoder::PathSample>::push_back[abi:ne200100](a1 + 80, a2);
  InputTranscoder::PathResampler::drop_non_resampled_path(a1, ((*(a1 + 11) - *(a1 + 10)) >> 6) - 1);

  return InputTranscoder::PathResampler::process_new_samples(a1);
}

uint64_t InputTranscoder::PathResampler::finalize(InputTranscoder::PathResampler *this)
{
  v1 = this + 32;
  v2 = (*(this + 5) - *(this + 4)) >> 6;
  if ((*(this + 128) & 1) == 0)
  {
    v4 = *(this + 33);
    v5 = *(this + 10);
    for (i = *(this + 11); v4 < (i - v5) >> 6; i = *(this + 11))
    {
      v7 = InputTranscoder::PathResampler::process_sample(this, v4);
      if (v7 >= v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v7;
      }

      v4 = (*(this + 33) + 1);
      *(this + 33) = v4;
      v5 = *(this + 10);
    }

    if (*(this + 2) == 2)
    {
      v8 = *(this + 34);
      if (v8 < (i - v5) >> 6)
      {
        do
        {
          v9 = InputTranscoder::PathResampler::retroactively_process_sample(this, v8);
          if (v9 >= v2)
          {
            v2 = v2;
          }

          else
          {
            v2 = v9;
          }

          v8 = (*(this + 34) + 1);
          *(this + 34) = v8;
          i = *(this + 11);
        }

        while (v8 < (i - *(this + 10)) >> 6);
      }
    }

    v10 = *(this + 4);
    v11 = *(this + 5);
    if (v10 != v11)
    {
      v13 = *(i - 64);
      v14 = *(i - 56);
      v12 = (i - 64);
      if (hypot(v13 - *(v11 - 64), v14 - *(v11 - 56)) > 1.0e-10)
      {
        v15 = (v11 - v10) >> 6;
        if (v2 >= v15)
        {
          v2 = v15;
        }

        else
        {
          v2 = v2;
        }

        std::vector<InputTranscoder::PathSample>::push_back[abi:ne200100](v1, v12);
      }
    }

    *(this + 128) = 1;
  }

  return v2;
}

void InputTranscoder::PathResampler::getInflectionPoints(__int128 **this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<InputTranscoder::PathSample>::push_back[abi:ne200100](a2, this[4]);
  v4 = this[7];
  v5 = this[8];
  while (v4 != v5)
  {
    v6 = *v4;
    if (v6)
    {
      v7 = this[4];
      if (((this[5] - v7) >> 6) - 1 != v6)
      {
        std::vector<InputTranscoder::PathSample>::push_back[abi:ne200100](a2, &v7[4 * v6]);
      }
    }

    ++v4;
  }

  std::vector<InputTranscoder::PathSample>::push_back[abi:ne200100](a2, &this[4][4 * (((this[5] - this[4]) >> 6) - 1)]);
}

void sub_254C590A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<InputTranscoder::PathSample>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = (v4 - *a1) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
    }

    v12 = v5 - *a1;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::PathSample>>(a1, v13);
    }

    v14 = (v10 << 6);
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[3];
    v14[2] = a2[2];
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v9 = (v10 << 6) + 64;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy(v14 - v18, *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = (v4 + 4);
  }

  *(a1 + 8) = v9;
}

void InputTranscoder::getTouchUpPoints(InputTranscoder *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<InputTranscoder::PathSample>::reserve(a2, ((*(this + 1) - *this) >> 6) >> 1);
  v6 = *this;
  v5 = *(this + 1);
  if (v5 != *this)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (*(v6 + v7 + 40) == 2)
      {
        std::vector<InputTranscoder::PathSample>::push_back[abi:ne200100](a2, (v6 + v7));
        v6 = *this;
        v5 = *(this + 1);
      }

      ++v8;
      v7 += 64;
    }

    while (v8 < (v5 - v6) >> 6);
  }
}

void sub_254C59240(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void InputTranscoder::PathResampler::pop_last_path(InputTranscoder::PathResampler *this)
{
  v2 = *(this + 10);
  v1 = *(this + 11);
  v3 = *(this + 12);
  v4 = *(this + 104);
  v5 = *(this + 15);
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 5) = 0u;
  *(this + 5) = *(this + 4);
  *(this + 8) = *(this + 7);
  *(this + 14) = 0;
  *(this + 128) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  if (v2 == v1)
  {
    if (v4)
    {
      operator delete(v4);
    }

    if (v2)
    {

      operator delete(v2);
    }
  }

  else
  {
    do
    {
      v6 = v1;
      if (v1 == v2)
      {
        break;
      }

      v1 -= 64;
    }

    while (*(v6 - 3) || (*(v6 - 8) & 1) != 0);
    *(this + 10) = v2;
    *(this + 11) = v1;
    *(this + 12) = v3;
    *(this + 104) = v4;
    *(this + 15) = v5;
  }
}

void *std::vector<InputTranscoder::PathSample>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::PathSample>>(result, a2);
    }

    std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t InputTranscoder::createMRLModel(uint64_t a1)
{
  v1 = *MEMORY[0x277CBECE8];
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE8], v3, v4, 0);
  Mutable = CFDictionaryCreateMutable(v1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D2A280], v5);
  v7 = MRLNeuralNetworkCreate();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

void sub_254C59534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, const void *a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      nlp::CFScopedPtr<__CFError *>::reset(&a23, 0);
      nlp::CFScopedPtr<__CFDictionary *>::reset((v25 - 48), 0);
      nlp::CFScopedPtr<__CFURL const*>::reset((v25 - 40), 0);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

uint64_t InputTranscoder::MontrealModel::recognize(uint64_t *a1, unsigned int *a2, unint64_t a3)
{
  ptr = a2;
  v33 = a3;
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  v4 = os_signpost_id_make_with_pointer(_nlpSignpostLog::log, &ptr);
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = _nlpSignpostLog::log;
    if (os_signpost_enabled(_nlpSignpostLog::log))
    {
      LOWORD(__p[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_254C34000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MontrealRecognition", &unk_254C6731B, __p, 2u);
    }
  }

  v6 = a1[1];
  v7 = ptr;
  v8 = v33;
  v9 = a1[3];
  if (v33 > (v9 - v6) >> 2)
  {
    if (v6)
    {
      a1[2] = v6;
      operator delete(v6);
      v9 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a1[3] = 0;
    }

    if (!(v8 >> 62))
    {
      v10 = v9 >> 1;
      if (v9 >> 1 <= v8)
      {
        v10 = v8;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<float>::__vallocate[abi:ne200100]((a1 + 1), v11);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[2];
  if (v33 <= v12 - v6)
  {
    v17 = a1[1];
    if (v33)
    {
      v19 = 4 * v33;
      v17 = a1[1];
      do
      {
        v20 = *v7++;
        *v17++ = v20;
        v19 -= 4;
      }

      while (v19);
    }
  }

  else
  {
    v13 = &ptr[v33];
    v14 = (ptr + v12 - v6);
    if (v12 != v6)
    {
      v15 = a1[1];
      do
      {
        v16 = *v7++;
        *v15++ = v16;
      }

      while (v7 != v14);
    }

    v17 = v12;
    if (v14 != v13)
    {
      v17 = v12;
      do
      {
        v18 = *v14++;
        *v12++ = v18;
        ++v17;
      }

      while (v14 != v13);
    }
  }

  a1[2] = v17;
  err = 0;
  v21 = *a1;
  MRLNeuralNetworkSetInput();
  if (err)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "MRLNeuralNetworkSetInput");
    InputTranscoder::logMontrealError(__p, err);
LABEL_35:
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v22 = *a1;
  MRLNeuralNetworkPredict();
  if (err)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "MRLNeuralNetworkPredict");
    InputTranscoder::logMontrealError(__p, err);
    goto LABEL_35;
  }

  v23 = *a1;
  Output = MRLNeuralNetworkGetOutput();
  if (err)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "MRLNeuralNetworkGetOutput");
    InputTranscoder::logMontrealError(__p, err);
    goto LABEL_35;
  }

  v25 = Output;
  v27 = *a1;
  MRLNeuralNetworkGetOutputDimension();
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v28 = _nlpSignpostLog::log;
    if (os_signpost_enabled(_nlpSignpostLog::log))
    {
      LOWORD(__p[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_254C34000, v28, OS_SIGNPOST_INTERVAL_END, v4, "MontrealRecognition", &unk_254C6731B, __p, 2u);
    }
  }

  return v25;
}

void sub_254C5994C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InputTranscoder::logMontrealError(uint64_t *a1, CFErrorRef err)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = CFErrorCopyDescription(err);
  if (_nlpDefaultLog::token != -1)
  {
    dispatch_once(&_nlpDefaultLog::token, &__block_literal_global_2);
  }

  v5 = _nlpDefaultLog::log;
  if (os_log_type_enabled(_nlpDefaultLog::log, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    *buf = 136315394;
    v9 = v7;
    v10 = 2112;
    v11 = v4;
    _os_log_error_impl(&dword_254C34000, v5, OS_LOG_TYPE_ERROR, "%s() failed: %@", buf, 0x16u);
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  CFRelease(v4);
LABEL_6:
  if (err)
  {
    CFRelease(err);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_254C59A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InputTranscoder::MontrealModel::recognize(uint64_t *a1, char *a2, unint64_t a3)
{
  ptr = a2;
  v36 = a3;
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  v4 = os_signpost_id_make_with_pointer(_nlpSignpostLog::log, &ptr);
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = _nlpSignpostLog::log;
    if (os_signpost_enabled(_nlpSignpostLog::log))
    {
      LOWORD(__p[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_254C34000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MontrealRecognition", &unk_254C6731B, __p, 2u);
    }
  }

  v6 = a1 + 1;
  v7 = a1[1];
  v8 = v36;
  v9 = a1[3];
  if (v36 > (v9 - v7) >> 2)
  {
    if (v7)
    {
      a1[2] = v7;
      operator delete(v7);
      v9 = 0;
      *v6 = 0;
      a1[2] = 0;
      a1[3] = 0;
    }

    if (!(v8 >> 62))
    {
      v10 = v9 >> 1;
      if (v9 >> 1 <= v8)
      {
        v10 = v8;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<float>::__vallocate[abi:ne200100]((a1 + 1), v11);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[2];
  v13 = v12 - v7;
  if (v36 <= (v12 - v7) >> 2)
  {
    v20 = 4 * v36;
    if (v36)
    {
      memmove(a1[1], ptr, 4 * v36);
    }

    v19 = &v7[v20];
  }

  else
  {
    v14 = &ptr[4 * v36];
    v15 = &ptr[v13];
    if (v12 != v7)
    {
      memmove(a1[1], ptr, v13);
      v12 = a1[2];
    }

    v16 = v12;
    if (v15 != v14)
    {
      v16 = v12;
      v17 = v12;
      do
      {
        v18 = *v15;
        v15 += 4;
        *v17 = v18;
        v17 += 4;
        v16 += 4;
      }

      while (v15 != v14);
    }

    v19 = v16;
  }

  a1[2] = v19;
  err = 0;
  v21 = MRLNeuralNetworkTensorCreate();
  v33 = v21;
  v22 = *v6;
  MRLNeuralNetworkTensorAppendData();
  v23 = *a1;
  MRLNeuralNetworkSetInputTensor();
  if (err)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "MRLNeuralNetworkSetInput");
    InputTranscoder::logMontrealError(__p, err);
LABEL_34:
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    v27 = 0;
    goto LABEL_37;
  }

  v24 = *a1;
  MRLNeuralNetworkPredict();
  if (err)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "MRLNeuralNetworkPredict");
    InputTranscoder::logMontrealError(__p, err);
    goto LABEL_34;
  }

  v25 = *a1;
  Output = MRLNeuralNetworkGetOutput();
  if (err)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "MRLNeuralNetworkGetOutput");
    InputTranscoder::logMontrealError(__p, err);
    goto LABEL_34;
  }

  v27 = Output;
  v29 = *a1;
  MRLNeuralNetworkGetOutputDimension();
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v30 = _nlpSignpostLog::log;
    if (os_signpost_enabled(_nlpSignpostLog::log))
    {
      LOWORD(__p[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_254C34000, v30, OS_SIGNPOST_INTERVAL_END, v4, "MontrealRecognition", &unk_254C6731B, __p, 2u);
    }
  }

LABEL_37:
  if (v21)
  {
    CFRelease(v21);
  }

  return v27;
}

void nlp::CFScopedPtr<MontrealNeuralNetworkTensor *>::reset(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

std::string *InputTranscoder::DecoderImpl::DecoderImpl(std::string *a1, uint64_t a2, std::string::size_type *a3, uint64_t **a4)
{
  v7 = InputTranscoder::CTCDecoder::CTCDecoder(a1, a2 + 104, a4);
  v8 = a3[1];
  v7[13].__r_.__value_.__l.__size_ = *a3;
  v7[13].__r_.__value_.__r.__words[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  a1[14].__r_.__value_.__r.__words[0] = InputTranscoder::createMRLModel(a2);
  a1[14].__r_.__value_.__l.__size_ = 0;
  a1[14].__r_.__value_.__r.__words[2] = 0;
  a1[15].__r_.__value_.__r.__words[0] = 0;
  return a1;
}

void sub_254C59F4C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 328);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  InputTranscoder::CTCDecoder::~CTCDecoder(v1);
  _Unwind_Resume(a1);
}

void InputTranscoder::DecoderImpl::enumerateCandidates(uint64_t *a1, unsigned int *a2, unint64_t a3)
{
  v4 = InputTranscoder::MontrealModel::recognize(a1 + 42, a2, a3);
  v5 = a1[42];
  OutputDimension = MRLNeuralNetworkGetOutputDimension();
  InputTranscoder::CTCDecoder::decode(a1, v4, OutputDimension);
}

void sub_254C5A180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, char *__p, char *a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = *(v15 + 56);
  if (v17)
  {
    *(v15 + 64) = v17;
    operator delete(v17);
  }

  if (*(v15 + 47) < 0)
  {
    operator delete(*(v15 + 24));
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  MEMORY[0x259C28FE0](v15, 0x1012C40652C33EFLL);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a15;
  std::vector<InputTranscoder::CTCOutput>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_254C5A278(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InputTranscoder::KeyboardLayoutImpl::KeyboardLayoutImpl(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  *a1 = &unk_286714598;
  *(a1 + 8) = 1;
  BaseLayoutInfoAssorted = InputTranscoder::getBaseLayoutInfoAssorted(a4);
  *(a1 + 16) = InputTranscoder::calculateFrame(a2, a3, BaseLayoutInfoAssorted, *(a1 + 8));
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = hypot(v10, v11);
  *(a1 + 56) = InputTranscoder::getBaseLayoutInfoAssorted(a4);
  *(a1 + 64) = InputTranscoder::getBaseLayoutInfoAssorted(a4) + 48;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  else
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    std::vector<ITKeyInfo>::__init_with_size[abi:ne200100]<std::__wrap_iter<ITKeyInfo const*>,std::__wrap_iter<ITKeyInfo const*>>(a1 + 72, a2, a2 + 56 * a3, a3);
  }

  return a1;
}

double InputTranscoder::calculateFrame(uint64_t a1, uint64_t a2, double *a3, int a4)
{
  if (!a2)
  {
    goto LABEL_27;
  }

  v6 = a1;
  v7 = 0;
  v8 = a1 + 56 * a2;
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  do
  {
    if (a4)
    {
      if (CFStringGetLength(*(v6 + 48)) == 1)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(*(v6 + 48), 0);
        v14 = *(a3 + 11);
        if (v14)
        {
          v15 = vcnt_s8(v14);
          v15.i16[0] = vaddlv_u8(v15);
          if (v15.u32[0] > 1uLL)
          {
            v16 = CharacterAtIndex;
            if (v14 <= CharacterAtIndex)
            {
              v16 = CharacterAtIndex % *(a3 + 11);
            }
          }

          else
          {
            v16 = (v14 - 1) & CharacterAtIndex;
          }

          v17 = *(*(a3 + 10) + 8 * v16);
          if (v17)
          {
            for (i = *v17; i; i = *i)
            {
              v19 = i[1];
              if (v19 == CharacterAtIndex)
              {
                if (*(i + 8) == CharacterAtIndex)
                {
                  goto LABEL_22;
                }
              }

              else
              {
                if (v15.u32[0] > 1uLL)
                {
                  if (v19 >= v14)
                  {
                    v19 %= v14;
                  }
                }

                else
                {
                  v19 &= v14 - 1;
                }

                if (v19 != v16)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

    else
    {
LABEL_22:
      ++v7;
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v25 = CGRectUnion(v24, *(v6 + 16));
      x = v25.origin.x;
      y = v25.origin.y;
      width = v25.size.width;
      height = v25.size.height;
    }

    v6 += 56;
  }

  while (v6 != v8);
  if (!v7 || width == 0.0 || height == 0.0)
  {
LABEL_27:
    x = a3[6];
    v20 = *(a3 + 7);
    v22 = *(a3 + 8);
    v21 = *(a3 + 9);
  }

  return x;
}

const void *InputTranscoder::getBaseLayoutInfoAssorted(uint64_t a1)
{
  if ((atomic_load_explicit(&_MergedGlobals_2, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_2))
  {
    xmmword_28143BC68 = 0u;
    *&qword_28143BC78 = 0u;
    dword_28143BC88 = 1065353216;
    __cxa_guard_release(&_MergedGlobals_2);
  }

  if ((atomic_load_explicit(&qword_28143BC60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28143BC60))
  {
    qword_28143BC90 = 850045863;
    unk_28143BC98 = 0u;
    unk_28143BCA8 = 0u;
    unk_28143BCB8 = 0u;
    qword_28143BCC8 = 0;
    __cxa_guard_release(&qword_28143BC60);
  }

  std::mutex::lock(&qword_28143BC90);
  v2 = std::__string_hash<char>::operator()[abi:ne200100](&xmmword_28143BC68, a1);
  v3 = *(&xmmword_28143BC68 + 1);
  if (!*(&xmmword_28143BC68 + 1))
  {
    goto LABEL_19;
  }

  v4 = v2;
  v5 = vcnt_s8(*(&xmmword_28143BC68 + 8));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v2;
    if (v2 >= *(&xmmword_28143BC68 + 1))
    {
      v7 = v2 % *(&xmmword_28143BC68 + 1);
    }
  }

  else
  {
    v7 = (*(&xmmword_28143BC68 + 1) - 1) & v2;
  }

  v8 = *(xmmword_28143BC68 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_19:
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

    v14 = CFURLCreateFromFileSystemRepresentation(0, v12, v13, 0);
    v17 = v14;
    v37 = v14;
    if (v14)
    {
      DictionaryWithContentsOfURL = nlp::createDictionaryWithContentsOfURL(v14, 0, v15, v16);
      v19 = DictionaryWithContentsOfURL;
      v36 = DictionaryWithContentsOfURL;
      if (DictionaryWithContentsOfURL)
      {
        Required = InputTranscoder::getRequiredCFType<__CFArray const*>(DictionaryWithContentsOfURL, @"keys");
        Count = CFArrayGetCount(Required);
        if (Count)
        {
          __p[0] = 0;
          __p[1] = 0;
          v35 = 0;
          std::vector<ITKeyInfo>::__vallocate[abi:ne200100](__p, Count);
        }

        CFRelease(v19);
      }

      CFRelease(v17);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    nlp::ResourceCreationException::ResourceCreationException(exception, &v38);
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v10 >= v3)
      {
        v10 %= v3;
      }
    }

    else
    {
      v10 &= v3 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_19;
    }

LABEL_18:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](&xmmword_28143BC68, v9 + 2, a1))
  {
    goto LABEL_18;
  }

  v22 = std::__string_hash<char>::operator()[abi:ne200100](&xmmword_28143BC68, a1);
  v23 = v22;
  v24 = *(&xmmword_28143BC68 + 1);
  if (!*(&xmmword_28143BC68 + 1))
  {
    goto LABEL_49;
  }

  v25 = vcnt_s8(*(&xmmword_28143BC68 + 8));
  v25.i16[0] = vaddlv_u8(v25);
  v26 = v25.u32[0];
  if (v25.u32[0] > 1uLL)
  {
    v27 = v22;
    if (v22 >= *(&xmmword_28143BC68 + 1))
    {
      v27 = v22 % *(&xmmword_28143BC68 + 1);
    }
  }

  else
  {
    v27 = (*(&xmmword_28143BC68 + 1) - 1) & v22;
  }

  v28 = *(xmmword_28143BC68 + 8 * v27);
  if (!v28 || (v29 = *v28) == 0)
  {
LABEL_49:
    operator new();
  }

  while (2)
  {
    v30 = v29[1];
    if (v30 != v23)
    {
      if (v26 > 1)
      {
        if (v30 >= v24)
        {
          v30 %= v24;
        }
      }

      else
      {
        v30 &= v24 - 1;
      }

      if (v30 != v27)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](&xmmword_28143BC68, v29 + 2, a1))
    {
LABEL_48:
      v29 = *v29;
      if (!v29)
      {
        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  v31 = v29[5];
  std::mutex::unlock(&qword_28143BC90);
  return v31;
}

void sub_254C5B464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<InputTranscoder::LayoutInfoAssorted>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<InputTranscoder::LayoutInfoAssorted>>,void *>>>>::~unique_ptr[abi:ne200100](&a25);
  std::mutex::unlock(&qword_28143BC90);
  _Unwind_Resume(a1);
}

uint64_t InputTranscoder::KeyboardLayoutImpl::KeyboardLayoutImpl(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  *a1 = &unk_286714598;
  Required = InputTranscoder::getRequiredCFType<__CFBoolean const*>(a5, @"isAlphabeticPlane");
  *(a1 + 8) = CFBooleanGetValue(Required) != 0;
  BaseLayoutInfoAssorted = InputTranscoder::getBaseLayoutInfoAssorted(a4);
  *(a1 + 16) = InputTranscoder::calculateFrame(a2, a3, BaseLayoutInfoAssorted, *(a1 + 8));
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = hypot(v12, v13);
  *(a1 + 56) = InputTranscoder::getBaseLayoutInfoAssorted(a4);
  *(a1 + 64) = InputTranscoder::getBaseLayoutInfoAssorted(a4) + 48;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  else
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    std::vector<ITKeyInfo>::__init_with_size[abi:ne200100]<std::__wrap_iter<ITKeyInfo const*>,std::__wrap_iter<ITKeyInfo const*>>(a1 + 72, a2, a2 + 56 * a3, a3);
  }

  return a1;
}

void InputTranscoder::KeyboardLayoutImpl::enumerateNearestKeys(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *v61 = a3;
  *&v61[1] = a4;
  __src = 0;
  v58 = 0;
  v59 = 0;
  v60 = v61;
  if (*(a1 + 8) == 1)
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = (a1 + 72);
  }

  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    do
    {
      v8 = v58;
      if (v58 >= v59)
      {
        v13 = __src;
        v14 = v58 - __src;
        v15 = 0x6DB6DB6DB6DB6DB7 * ((v58 - __src) >> 3);
        v16 = v15 + 1;
        if ((v15 + 1) > 0x492492492492492)
        {
          std::vector<ITKeyInfo>::__throw_length_error[abi:ne200100]();
        }

        if (0xDB6DB6DB6DB6DB6ELL * ((v59 - __src) >> 3) > v16)
        {
          v16 = 0xDB6DB6DB6DB6DB6ELL * ((v59 - __src) >> 3);
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((v59 - __src) >> 3)) >= 0x249249249249249)
        {
          v16 = 0x492492492492492;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ITKeyInfo>>(&__src, v16);
        }

        v17 = 8 * ((v58 - __src) >> 3);
        v18 = *v6;
        v19 = v6[1];
        v20 = v6[2];
        *(v17 + 48) = *(v6 + 6);
        *(v17 + 16) = v19;
        *(v17 + 32) = v20;
        *v17 = v18;
        v12 = 56 * v15 + 56;
        v21 = (56 * v15 - v14);
        memcpy(v21, v13, v14);
        v22 = __src;
        __src = v21;
        v58 = v12;
        v59 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        v9 = *v6;
        v10 = v6[1];
        v11 = v6[2];
        v58[6] = *(v6 + 6);
        v8[1] = v10;
        v8[2] = v11;
        *v8 = v9;
        v12 = v8 + 56;
      }

      v58 = v12;
      *&v63 = v60;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,InputTranscoder::KeyboardLayoutImpl::enumerateNearestKeys(CGPoint,void({block_pointer})(ITKeyInfo,BOOL *))::$_0 &,std::__wrap_iter<ITKeyInfo*>>(__src, v12, &v63, 0x6DB6DB6DB6DB6DB7 * ((v12 - __src) >> 3));
      v6 = (v6 + 56);
    }

    while (v6 != v7);
    v23 = __src;
    v56 = 0;
    if (__src != v58)
    {
      v53 = vdupq_n_s64(0xBFD99999A0000000);
      v52 = a2;
      do
      {
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        v66 = *(v23 + 6);
        v64 = v25;
        v65 = v26;
        v63 = v24;
        (*(a2 + 16))(a2, &v63, &v56);
        v23 = __src;
        if (v56)
        {
          break;
        }

        v27 = v58;
        v28 = v60;
        v62 = v60;
        if (v58 - __src >= 57)
        {
          v29 = 0;
          v30 = 0x6DB6DB6DB6DB6DB7 * ((v58 - __src) >> 3);
          v63 = *__src;
          v64 = *(__src + 1);
          v65 = *(__src + 2);
          v66 = *(__src + 6);
          v31 = __src;
          do
          {
            v32 = v31;
            v31 += 56 * v29 + 56;
            v33 = 2 * v29;
            v29 = (2 * v29) | 1;
            v34 = v33 + 2;
            if (v33 + 2 < v30)
            {
              v35 = vaddq_f64(vabdq_f64(*v28, *v31), vmulq_f64(*(v31 + 2), v53));
              v55 = vcvt_f32_f64(vaddq_f64(vabdq_f64(*v28, *(v31 + 56)), vmulq_f64(*(v31 + 88), v53)));
              v36 = vcvt_f32_f64(v35);
              v37 = vmovn_s32(vcltzq_f32(vcvt_hight_f32_f64(v55, v35)));
              v54 = v37.i32[0];
              if (v37.i8[4])
              {
                v38 = 0.0;
              }

              else
              {
                v38 = v36.f32[0];
              }

              v37.i32[0] = v36.i32[1];
              if (v37.i8[6])
              {
                *v37.i32 = 0.0;
              }

              v39 = hypotf(v38, *v37.i32);
              if (v54)
              {
                v40 = 0.0;
              }

              else
              {
                v40 = *v55.i32;
              }

              v41 = *&v55.i32[1];
              if ((v54 & 0x10000) != 0)
              {
                v41 = 0.0;
              }

              if (v39 > hypotf(v40, v41))
              {
                v31 += 56;
                v29 = v34;
              }
            }

            v42 = *v31;
            v43 = *(v31 + 1);
            v44 = *(v31 + 2);
            *(v32 + 6) = *(v31 + 6);
            *(v32 + 1) = v43;
            *(v32 + 2) = v44;
            *v32 = v42;
          }

          while (v29 <= ((v30 - 2) >> 1));
          v45 = (v27 - 7);
          if (v31 == (v27 - 7))
          {
            v49 = v63;
            v50 = v64;
            v51 = v65;
            *(v31 + 6) = v66;
            *(v31 + 1) = v50;
            *(v31 + 2) = v51;
            *v31 = v49;
          }

          else
          {
            v46 = *v45;
            v47 = *(v27 - 5);
            v48 = *(v27 - 3);
            *(v31 + 6) = *(v27 - 1);
            *(v31 + 1) = v47;
            *(v31 + 2) = v48;
            *v31 = v46;
            *v45 = v63;
            *(v27 - 5) = v64;
            *(v27 - 3) = v65;
            *(v27 - 1) = v66;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,InputTranscoder::KeyboardLayoutImpl::enumerateNearestKeys(CGPoint,void({block_pointer})(ITKeyInfo,BOOL *))::$_0 &,std::__wrap_iter<ITKeyInfo*>>(v23, (v31 + 56), &v62, 0x6DB6DB6DB6DB6DB7 * ((v31 + 56 - v23) >> 3));
            v23 = __src;
            v27 = v58;
          }

          a2 = v52;
        }

        v58 = v27 - 7;
      }

      while (v23 != (v27 - 7));
    }

    if (v23)
    {
      v58 = v23;
      operator delete(v23);
    }
  }
}

void sub_254C5BB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InputTranscoder::KeyboardLayoutImpl::enclosingKey(InputTranscoder::KeyboardLayoutImpl *this@<X0>, CGPoint a2@<0:D0, 8:D1>, uint64_t a3@<X8>)
{
  y = a2.y;
  x = a2.x;
  if (*(this + 8) == 1)
  {
    v6 = *(this + 7);
  }

  else
  {
    v6 = (this + 72);
  }

  v7 = *v6;
  v8 = v6[1];
  if (*v6 == v8)
  {
LABEL_10:
    *a3 = v15;
    *(a3 + 16) = v16;
    *(a3 + 32) = v17;
    v13 = v18;
  }

  else
  {
    v9 = INFINITY;
    while (1)
    {
      v19.x = x;
      v19.y = y;
      if (CGRectContainsPoint(*(v7 + 1), v19))
      {
        break;
      }

      v10 = x - *v7;
      v11 = y - *(v7 + 1);
      v12 = hypotf(v10, v11);
      if (v12 < v9)
      {
        v15 = *v7;
        v16 = v7[1];
        v17 = v7[2];
        v18 = *(v7 + 6);
        v9 = v12;
      }

      v7 = (v7 + 56);
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    v14 = v7[1];
    *a3 = *v7;
    *(a3 + 16) = v14;
    *(a3 + 32) = v7[2];
    v13 = *(v7 + 6);
  }

  *(a3 + 48) = v13;
}

void InputTranscoder::KeyboardLayoutImpl::keyCandidatesForLastTouch(InputTranscoder::KeyboardLayoutImpl *this@<X0>, CGPoint a2@<0:D0, 8:D1>, void *a3@<X8>)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x4002000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  memset(v20, 0, 24);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v4 = *(this + 6);
  v12 = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK15InputTranscoder18KeyboardLayoutImpl25keyCandidatesForLastTouchE7CGPoint_block_invoke;
  v9[3] = &unk_2797B1C50;
  v10 = a2;
  v9[4] = v11;
  v9[5] = &v15;
  v9[6] = v13;
  InputTranscoder::KeyboardLayoutImpl::enumerateNearestKeys(this, v9, a2.x, a2.y);
  v5 = v16;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v6 = v5[5];
  v7 = v5[6];
  v20[3] = a3;
  v21 = 0;
  v8 = v7 - v6;
  if (v7 != v6)
  {
    if (!((v8 >> 5) >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::KeyCandidateImpl>>(v8 >> 5);
    }

    std::vector<ITKeyInfo>::__throw_length_error[abi:ne200100]();
  }

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);
  v22 = v20;
  std::vector<InputTranscoder::KeyCandidateImpl>::__destroy_vector::operator()[abi:ne200100](&v22);
}

void sub_254C5BE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  *(v28 - 112) = v27;
  std::vector<InputTranscoder::KeyCandidateImpl>::__destroy_vector::operator()[abi:ne200100]((v28 - 112));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void ___ZNK15InputTranscoder18KeyboardLayoutImpl25keyCandidatesForLastTouchE7CGPoint_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = vcvt_f32_f64(vaddq_f64(vabdq_f64(*(a1 + 56), *a2), vmulq_f64(*(a2 + 32), vdupq_n_s64(0xBFD99999A0000000))));
  v7 = vcltz_f32(v6);
  if (v7.i8[0])
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6.f32[0];
  }

  v9 = v6.f32[1];
  if (v7.i8[4])
  {
    v9 = 0.0;
  }

  v10 = hypotf(v8, v9) / *(*(*(a1 + 32) + 8) + 24);
  nlp::getUTF8StringFromCFString(*(a2 + 48), __p);
  if (SBYTE7(v38) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, __p[0], __p[1]);
    v36 = v10;
    if (SBYTE7(v38) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v35.__r_.__value_.__l.__data_ = *__p;
    v35.__r_.__value_.__r.__words[2] = v38;
    v36 = v10;
  }

  v11 = *(*(a1 + 40) + 8);
  v13 = v11[6];
  v12 = v11[7];
  if (v13 >= v12)
  {
    v15 = v11[5];
    v16 = (v13 - v15) >> 5;
    if ((v16 + 1) >> 59)
    {
      std::vector<ITKeyInfo>::__throw_length_error[abi:ne200100]();
    }

    v17 = v12 - v15;
    v18 = v17 >> 4;
    if (v17 >> 4 <= (v16 + 1))
    {
      v18 = v16 + 1;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFE0)
    {
      v19 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    v39 = v11 + 5;
    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::KeyCandidateImpl>>(v19);
    }

    v21 = 32 * v16;
    __p[0] = 0;
    __p[1] = v21;
    v38 = v21;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v21, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
      v23 = __p[1];
      v24 = v38;
    }

    else
    {
      v22 = *&v35.__r_.__value_.__l.__data_;
      *(v21 + 16) = *(&v35.__r_.__value_.__l + 2);
      *v21 = v22;
      v23 = v21;
      v24 = v21;
    }

    *(v21 + 24) = v36;
    *&v38 = v24 + 32;
    v26 = v11[5];
    v25 = v11[6];
    v40[0] = v11 + 5;
    v40[1] = &v42;
    v40[2] = &v43;
    v41 = 0;
    v27 = &v23[v26 - v25];
    v42 = v27;
    v43 = v27;
    if (v26 == v25)
    {
      v41 = 1;
    }

    else
    {
      v28 = &v23[v26 - v25];
      v29 = v26;
      do
      {
        if (*(v29 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v28, *v29, *(v29 + 1));
          v31 = v43;
        }

        else
        {
          v30 = *v29;
          v28->__r_.__value_.__r.__words[2] = *(v29 + 2);
          *&v28->__r_.__value_.__l.__data_ = v30;
          v31 = v28;
        }

        LODWORD(v28[1].__r_.__value_.__l.__data_) = *(v29 + 6);
        v29 += 2;
        v28 = (v31 + 32);
        v43 = &v31[1].__r_.__value_.__s.__data_[8];
      }

      while (v29 != v25);
      v41 = 1;
      do
      {
        if (v26[23] < 0)
        {
          operator delete(*v26);
        }

        v26 += 32;
      }

      while (v26 != v25);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<InputTranscoder::KeyCandidateImpl>,InputTranscoder::KeyCandidateImpl*>>::~__exception_guard_exceptions[abi:ne200100](v40);
    v32 = v11[5];
    v11[5] = v27;
    v33 = v11[7];
    v34 = v38;
    *(v11 + 3) = v38;
    *&v38 = v32;
    *(&v38 + 1) = v33;
    __p[0] = v32;
    __p[1] = v32;
    std::__split_buffer<InputTranscoder::KeyCandidateImpl>::~__split_buffer(__p);
    v20 = v34;
  }

  else
  {
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v11[6], v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = *&v35.__r_.__value_.__l.__data_;
      *(v13 + 16) = *(&v35.__r_.__value_.__l + 2);
      *v13 = v14;
    }

    *(v13 + 24) = v36;
    v20 = v13 + 32;
    v11[6] = v13 + 32;
  }

  v11[6] = v20;
  if (++*(*(*(a1 + 48) + 8) + 24) == 5)
  {
    *a3 = 1;
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }
}

void sub_254C5C21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  std::__split_buffer<InputTranscoder::KeyCandidateImpl>::~__split_buffer(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double InputTranscoder::KeyboardLayoutImpl::normalizePointToRange(uint64_t a1, double a2, double a3, float a4, float a5)
{
  v5 = *(a1 + 64);
  v6 = a5 - a4;
  v7 = a4;
  v8 = v6;
  result = v7 + (a2 - *v5) / v5[2] * v8;
  v10 = v7 + (a3 - v5[1]) / v5[3] * v8;
  return result;
}

double InputTranscoder::KeyboardLayoutImpl::getCentroid(InputTranscoder::KeyboardLayoutImpl *this, int a2)
{
  if (*(this + 8) == 1)
  {
    v3 = *(this + 7);
  }

  else
  {
    v3 = (this + 72);
  }

  v4 = *v3;
  v5 = v3[1];
  if (*v3 != v5)
  {
    while (CFStringGetCharacterAtIndex(*(v4 + 48), 0) != a2)
    {
      v4 += 56;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }
  }

  result = *v4;
  v7 = *(v4 + 8);
  return result;
}

double InputTranscoder::KeyboardLayoutImpl::getSpaceCost(InputTranscoder::KeyboardLayoutImpl *this, const unsigned __int16 *a2, const unsigned __int16 *a3)
{
  if (*this != *a2)
  {
    operator new();
  }

  return 0.0;
}

double InputTranscoder::KeyboardLayoutImpl::getInsertionCost(InputTranscoder::KeyboardLayoutImpl *this, CFStringRef theString, const __CFString *a3, CFIndex idx, unsigned int a5)
{
  v9 = idx;
  if (CFStringGetCharacterAtIndex(theString, idx) == 32 || CFStringGetCharacterAtIndex(a3, a5) == 32)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v9);
    v14 = CFStringGetCharacterAtIndex(a3, a5);
    return InputTranscoder::KeyboardLayoutImpl::getSpaceCost(&CharacterAtIndex, &v14, v10);
  }

  else
  {
    v12 = CFStringGetCharacterAtIndex(theString, v9);
    v13 = CFStringGetCharacterAtIndex(a3, a5);
    return InputTranscoder::KeyboardLayoutImpl::getKeyDistance(this, v12, &v13);
  }
}

double InputTranscoder::KeyboardLayoutImpl::getKeyDistance(InputTranscoder::KeyboardLayoutImpl *this, const unsigned __int16 *a2, const unsigned __int16 *a3)
{
  Centroid = InputTranscoder::KeyboardLayoutImpl::getCentroid(this, a2);
  v7 = v6;
  v8 = Centroid - InputTranscoder::KeyboardLayoutImpl::getCentroid(this, *a3);
  *&v9 = v7 - v9;
  return fabsf(hypotf(v8, *&v9)) / *(this + 6);
}

double InputTranscoder::KeyboardLayoutImpl::getDeletionCost(InputTranscoder::KeyboardLayoutImpl *this, CFStringRef theString, CFIndex idx)
{
  v5 = idx;
  v6 = (idx - 1);
  if (CFStringGetCharacterAtIndex(theString, idx) == 32 || CFStringGetCharacterAtIndex(theString, v6) == 32)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v5);
    v11 = CFStringGetCharacterAtIndex(theString, v6);
    return InputTranscoder::KeyboardLayoutImpl::getSpaceCost(&CharacterAtIndex, &v11, v7);
  }

  else
  {
    v9 = CFStringGetCharacterAtIndex(theString, v5);
    v10 = CFStringGetCharacterAtIndex(theString, v6);
    return InputTranscoder::KeyboardLayoutImpl::getKeyDistance(this, v9, &v10);
  }
}

double InputTranscoder::KeyboardLayoutImpl::getEditDistance(InputTranscoder::KeyboardLayoutImpl *a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  CFStringFromString = nlp::createCFStringFromString(v7, v8);
  theString = CFStringFromString;
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  v13 = nlp::createCFStringFromString(v11, v12);
  v53 = v13;
  if (CFStringFromString && CFStringGetLength(CFStringFromString))
  {
    if (v13 && CFStringGetLength(v13))
    {
      Length = CFStringGetLength(CFStringFromString);
      v15 = CFStringGetLength(v13);
      std::vector<double>::vector[abi:ne200100](&__p, v15 + 1);
      std::vector<std::vector<double>>::vector[abi:ne200100](v52, Length + 1);
      if (*&__p != 0.0)
      {
        v56 = *&__p;
        operator delete(__p);
      }

      v16 = v52[0];
      **v52[0] = 0;
      if (Length)
      {
        v17 = 1;
        do
        {
          v18 = 0;
          *v16[3 * v17] = 0;
          do
          {
            v19 = v18 + 1;
            DeletionCost = 1.0;
            if (Length > v18 + 1)
            {
              DeletionCost = InputTranscoder::KeyboardLayoutImpl::getDeletionCost(a1, CFStringFromString, (v18 + 1));
              v16 = v52[0];
            }

            *v16[3 * v17] = DeletionCost + *v16[3 * v17];
            v18 = v19;
          }

          while (v17 != v19);
          v21 = v17++ == Length;
        }

        while (!v21);
      }

      if (v15)
      {
        if (Length >= v15)
        {
          v22 = v15;
        }

        else
        {
          v22 = Length;
        }

        v23 = *v16;
        v24 = 1;
        do
        {
          v25 = 0;
          *(v23 + 8 * v24) = 0;
          do
          {
            v26 = v25 + 1;
            InsertionCost = 1.0;
            if (v22 > v25 + 1)
            {
              InsertionCost = InputTranscoder::KeyboardLayoutImpl::getInsertionCost(a1, CFStringFromString, v13, v25, v25);
              v16 = v52[0];
              v23 = *v52[0];
            }

            *(v23 + 8 * v24) = InsertionCost + *(v23 + 8 * v24);
            v25 = v26;
          }

          while (v24 != v26);
          v21 = v24++ == v15;
        }

        while (!v21);
      }

      if (Length)
      {
        v28 = 1;
        do
        {
          if (v15)
          {
            v48 = v28 - 1;
            idx = v28 - 2;
            v50 = v28 - 1;
            v29 = *v16[3 * v28];
            v30 = 1;
            v51 = v28;
            do
            {
              if (Length <= v28)
              {
                v34 = v16[3 * v50];
                v32 = *(v34 + 8 * v30);
                v31 = 1.0;
                v35 = v48;
                v33 = 1.0;
              }

              else
              {
                v31 = InputTranscoder::KeyboardLayoutImpl::getInsertionCost(a1, CFStringFromString, v13, v28, v30 - 1);
                v32 = *(*(v52[0] + 24 * v50) + 8 * v30);
                CFStringFromString = theString;
                v33 = InputTranscoder::KeyboardLayoutImpl::getDeletionCost(a1, theString, v28);
                v34 = *(v52[0] + 24 * v50);
                v35 = v50;
                v13 = v53;
              }

              v36 = *(v34 + 8 * (v30 - 1));
              v37 = v36 + InputTranscoder::KeyboardLayoutImpl::getInsertionCost(a1, CFStringFromString, v13, v35, v30 - 1);
              if (v51 < 2)
              {
                v38 = v37;
              }

              else if (v30 >= 2 && (v13 = v53, InputTranscoder::KeyboardLayoutImpl::getInsertionCost(a1, CFStringFromString, v53, v35, v30 - 2) == 0.0) && (v13 = v53, InputTranscoder::KeyboardLayoutImpl::getInsertionCost(a1, CFStringFromString, v53, idx, v30 - 1) == 0.0))
              {
                v38 = *(*(v52[0] + 24 * idx) + 8 * (v30 - 2)) + 0.181999996;
              }

              else
              {
                v38 = v37;
              }

              v39 = v29 + v31;
              *&__p = v29 + v31;
              v56 = v32 + v33;
              v57 = v37;
              v58 = v38;
              p_p = &__p;
              v41 = 8;
              v28 = v51;
              do
              {
                if (*(&__p + v41) < v39)
                {
                  v39 = *(&__p + v41);
                  p_p = (&__p + v41);
                }

                v41 += 8;
              }

              while (v41 != 32);
              v16 = v52[0];
              v29 = *p_p;
              *(*(v52[0] + 24 * v51) + 8 * v30) = *p_p;
              v21 = v30++ == v15;
            }

            while (!v21);
          }

          v21 = v28++ == Length;
        }

        while (!v21);
        v13 = v53;
      }

      v42 = *(v16[3 * Length] + 8 * v15);
      *&__p = COERCE_DOUBLE(v52);
      std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (!v13)
      {
        goto LABEL_69;
      }

LABEL_68:
      CFRelease(v13);
      goto LABEL_69;
    }

    v43 = *(a2 + 23);
    v44 = v43;
    v45 = *(a2 + 8);
  }

  else
  {
    v43 = *(a3 + 23);
    v44 = v43;
    v45 = *(a3 + 8);
  }

  if (v44 < 0)
  {
    v43 = v45;
  }

  v42 = v43;
  if (v13)
  {
    goto LABEL_68;
  }

LABEL_69:
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  v46 = *MEMORY[0x277D85DE8];
  return v42;
}

void sub_254C5CB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, const void *a17, const void *a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a17, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a18, 0);
  _Unwind_Resume(a1);
}

uint64_t InputTranscoder::KeyboardLayoutImpl::getAutocorrectionOperations(InputTranscoder::KeyboardLayoutImpl *a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x277D85DE8];
  InputTranscoder::toLower(a2, v73);
  InputTranscoder::toLower(a3, v71);
  if ((v74 & 0x80u) == 0)
  {
    v5 = v73;
  }

  else
  {
    v5 = v73[0];
  }

  if ((v74 & 0x80u) == 0)
  {
    v6 = v74;
  }

  else
  {
    v6 = v73[1];
  }

  CFStringFromString = nlp::createCFStringFromString(v5, v6);
  v70 = CFStringFromString;
  if ((v72 & 0x80u) == 0)
  {
    v8 = v71;
  }

  else
  {
    v8 = v71[0];
  }

  if ((v72 & 0x80u) == 0)
  {
    v9 = v72;
  }

  else
  {
    v9 = v71[1];
  }

  v10 = nlp::createCFStringFromString(v8, v9);
  v69[3] = v10;
  if (CFStringFromString && CFStringGetLength(CFStringFromString))
  {
    if (!v10)
    {
      v60 = 0;
      goto LABEL_95;
    }

    if (CFStringGetLength(v10))
    {
      if (*(a2 + 23) >= 0)
      {
        v11 = *(a2 + 23);
      }

      else
      {
        v11 = *(a2 + 8);
      }

      v12 = *(a3 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a3 + 8);
      }

      v66 = v12;
      std::vector<double>::vector[abi:ne200100](&__p, v12 + 1);
      std::vector<std::vector<double>>::vector[abi:ne200100](v69, v11 + 1);
      if (*&__p != 0.0)
      {
        v79 = *&__p;
        operator delete(__p);
      }

      std::vector<unsigned int>::vector[abi:ne200100](&__p, v66 + 1);
      memset(v68, 0, sizeof(v68));
      *v75 = v68;
      v76 = 0;
      if (v11 != -1)
      {
        if ((v11 + 1) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        std::vector<ITKeyInfo>::__throw_length_error[abi:ne200100]();
      }

      if (*&__p != 0.0)
      {
        v79 = *&__p;
        operator delete(__p);
      }

      v14 = v69[0];
      v15 = *v69[0];
      **v69[0] = 0;
      v16 = v68[0];
      v17 = *v68[0];
      **v68[0] = 0;
      v18 = (v16 + 24);
      v19 = v14;
      v20 = -1;
      do
      {
        v21 = **v19;
        v22 = v19[3];
        v19 += 3;
        *v22 = v21 + 0.0909999982;
        v23 = *v18;
        v18 += 3;
        *v23 = 8;
        --v20;
      }

      while (v20);
      if (v66)
      {
        v25 = *v15;
        v24 = v15 + 1;
        v26 = v25;
        v27 = (v17 + 4);
        v28 = v66;
        do
        {
          v26 = v26 + 0.0909999982;
          *v24++ = v26;
          *v27++ = 4;
          --v28;
        }

        while (v28);
      }

      cf = v10;
      v63 = a3;
      v29 = 1;
      while (!v66)
      {
LABEL_87:
        v44 = v29++ == -1;
        if (v44)
        {
          v60 = *(*(v16 - 24) + 4 * v66);
          *&__p = COERCE_DOUBLE(v68);
          std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&__p);
          *&__p = COERCE_DOUBLE(v69);
          std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&__p);
          v10 = cf;
          goto LABEL_91;
        }
      }

      v30 = v29 - 1;
      v64 = v29 - 2;
      v31 = *v14[3 * v29];
      v32 = 1;
      while (1)
      {
        v33 = v32 - 1;
        v34 = v14[3 * v30][v32];
        v35 = v73;
        if ((v74 & 0x80u) != 0)
        {
          v35 = v73[0];
        }

        v36 = *(v35 + v30);
        v37 = v71;
        if ((v72 & 0x80u) != 0)
        {
          v37 = v71[0];
        }

        v38 = *(v37 + v33);
        v39 = v38;
        if (v36 == 32 || v38 == 32)
        {
          v75[0] = v36;
          v77 = v38;
          SpaceCost = InputTranscoder::KeyboardLayoutImpl::getSpaceCost(v75, &v77, v13);
          if (SpaceCost == 0.0)
          {
            v42 = 0.0;
          }

          else
          {
            v42 = SpaceCost;
          }

          v41 = 32 * (SpaceCost != 0.0);
          if (v39 != 32 && SpaceCost != 0.0)
          {
            v44 = SpaceCost <= 0.100099996 && v36 == 32;
            if (v44)
            {
              v41 = 64;
            }

            else
            {
              v41 = 2;
            }

            v42 = SpaceCost;
          }
        }

        else
        {
          v75[0] = v38;
          KeyDistance = InputTranscoder::KeyboardLayoutImpl::getKeyDistance(a1, v36, v75);
          if (KeyDistance == 0.0)
          {
            v41 = 0;
            v42 = 0.0;
          }

          else
          {
            if (KeyDistance <= 0.154699996)
            {
              v41 = 1;
            }

            else
            {
              v41 = 2;
            }

            v42 = 0.0909999982;
          }
        }

        v45 = *(*(v69[0] + 24 * v30) + 8 * v33);
        v46 = v42 + v45;
        v47 = v42 + v45;
        if (v29 >= 2)
        {
          v47 = v42 + v45;
          if (v32 >= 2)
          {
            InsertionCost = InputTranscoder::KeyboardLayoutImpl::getInsertionCost(a1, CFStringFromString, cf, v29 - 1, v32 - 2);
            v47 = v46;
            if (InsertionCost == 0.0)
            {
              v49 = InputTranscoder::KeyboardLayoutImpl::getInsertionCost(a1, CFStringFromString, cf, v64, v32 - 1);
              v47 = v46;
              if (v49 == 0.0)
              {
                v47 = *(*(v69[0] + 24 * v64) + 8 * (v32 - 2)) + 0.0909999982;
              }
            }
          }
        }

        v50 = v31 + 0.0909999982;
        *&__p = v31 + 0.0909999982;
        v79 = v34 + 0.0909999982;
        v80 = v46;
        v81 = v47;
        p_p = &__p;
        v52 = v31 + 0.0909999982;
        for (i = 8; i != 32; i += 8)
        {
          if (*(&__p + i) < v52)
          {
            v52 = *(&__p + i);
            p_p = (&__p + i);
          }
        }

        v31 = *p_p;
        v14 = v69[0];
        *(*(v69[0] + 24 * v29) + 8 * v32) = v31;
        if (v31 == v46)
        {
          v16 = v68[0];
          v54 = *(*(v68[0] + 24 * v30) + 4 * v33) | v41;
        }

        else
        {
          if (v31 != v34 + 0.0909999982)
          {
            if (v31 == v50)
            {
              if (*(v63 + 23) >= 0)
              {
                v56 = v63;
              }

              else
              {
                v56 = *v63;
              }

              v57 = *(v56 + v33);
              v16 = v68[0];
              v55 = *(v68[0] + 24 * v29);
              if (v57 == 32)
              {
                v58 = 32;
              }

              else
              {
                v58 = 4;
              }

              v54 = *(v55 + 4 * v33) | v58;
            }

            else
            {
              v16 = v68[0];
              v59 = (v68[0] + 24 * v29);
              v54 = *(*(v59 - 6) + 4 * v32 - 8) | 0x10;
              v55 = *v59;
            }

            goto LABEL_75;
          }

          v16 = v68[0];
          v54 = *(*(v68[0] + 24 * v30) + 4 * v32) | 8;
        }

        v55 = *(v16 + 24 * v29);
LABEL_75:
        *(v55 + 4 * v32) = v54;
        v44 = v32++ == v66;
        if (v44)
        {
          goto LABEL_87;
        }
      }
    }

    v60 = 0;
  }

  else
  {
    v60 = 0;
    if (!v10)
    {
      goto LABEL_92;
    }
  }

LABEL_91:
  CFRelease(v10);
  CFStringFromString = v70;
LABEL_92:
  if (CFStringFromString)
  {
LABEL_95:
    CFRelease(CFStringFromString);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  v61 = *MEMORY[0x277D85DE8];
  return v60;
}

void sub_254C5D1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, const void *a22, const void *a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, char *a39, uint64_t a40)
{
  a39 = &a19;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a39);
  nlp::CFScopedPtr<__CFString const*>::reset(&a22, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a23, 0);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void InputTranscoder::KeyboardLayoutImpl::getCondensedPath(InputTranscoder::KeyboardLayoutImpl *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    v6 = *(a2 + 8);
    if (!v6)
    {
      v35 = *a2;

      std::string::__init_copy_ctor_external(a3, v35, 0);
      return;
    }

    v7 = *a2;
  }

  else
  {
    if (!v6)
    {
      *&a3->__r_.__value_.__l.__data_ = *a2;
      a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
      return;
    }

    v7 = a2;
  }

  CFStringFromString = nlp::createCFStringFromString(v7, v6);
  v39 = 0;
  v40 = CFStringFromString;
  v37 = 0;
  v38 = 0;
  CharacterAtIndex = CFStringGetCharacterAtIndex(CFStringFromString, 0);
  std::vector<unsigned short>::push_back[abi:ne200100](&v37, &CharacterAtIndex);
  if (CFStringGetLength(CFStringFromString) > 1)
  {
    if (CFStringGetLength(CFStringFromString) == 2)
    {
      v9 = CFStringGetCharacterAtIndex(CFStringFromString, 0);
      if (v9 != CFStringGetCharacterAtIndex(CFStringFromString, 1))
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(CFStringFromString, 1);
        std::vector<unsigned short>::push_back[abi:ne200100](&v37, &CharacterAtIndex);
      }

      v10 = v37;
      InputTranscoder::toUTF8String(a3, v37, v38);
    }

    else
    {
      v11 = 0;
      LODWORD(v12) = 1;
LABEL_15:
      v13 = v11;
      v14 = v12;
      while (1)
      {
        v12 = v14 + 1;
        if (CFStringGetLength(CFStringFromString) <= v12)
        {
          break;
        }

        v15 = CFStringGetCharacterAtIndex(CFStringFromString, v13);
        Centroid = InputTranscoder::KeyboardLayoutImpl::getCentroid(a1, v15);
        v18 = v17;
        v19 = v14;
        v20 = CFStringGetCharacterAtIndex(CFStringFromString, v14);
        v21 = InputTranscoder::KeyboardLayoutImpl::getCentroid(a1, v20);
        v23 = v22;
        v24 = CFStringGetCharacterAtIndex(CFStringFromString, v14 + 1);
        v25 = InputTranscoder::KeyboardLayoutImpl::getCentroid(a1, v24);
        v27 = v26;
        v28 = Centroid - v21;
        *&v26 = v18 - v23;
        v29 = hypotf(v28, *&v26);
        v30 = v21 - v25;
        v31 = v23 - v27;
        *&v23 = v29 + hypotf(v30, v31);
        v32 = Centroid - v25;
        v33 = v18 - v27;
        ++v14;
        if (vabds_f32(*&v23, hypotf(v32, v33)) >= 0.00000011921)
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(CFStringFromString, v19);
          std::vector<unsigned short>::push_back[abi:ne200100](&v37, &CharacterAtIndex);
          v11 = v12 - 1;
          goto LABEL_15;
        }
      }

      Length = CFStringGetLength(CFStringFromString);
      CharacterAtIndex = CFStringGetCharacterAtIndex(CFStringFromString, Length - 1);
      std::vector<unsigned short>::push_back[abi:ne200100](&v37, &CharacterAtIndex);
      v10 = v37;
      InputTranscoder::toUTF8String(a3, v37, v38);
    }
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a2;
      a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }

    v10 = v37;
  }

  if (v10)
  {
    operator delete(v10);
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_254C5D5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14)
{
  if (v14)
  {
    operator delete(v14);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a14, 0);
  _Unwind_Resume(a1);
}

void std::vector<unsigned short>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::vector<ITKeyInfo>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
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

void InputTranscoder::toUTF8String(uint64_t a1, const UniChar *a2, uint64_t a3)
{
  v4 = CFStringCreateWithCharacters(0, a2, (a3 - a2) >> 1);
  nlp::getUTF8StringFromCFString(v4, a1);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_254C5D77C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

double InputTranscoder::KeyboardLayoutImpl::getDistanceFromKey(float64x2_t a1, float64_t a2, uint64_t a3, float64x2_t *a4)
{
  a1.f64[1] = a2;
  v4 = vcvt_f32_f64(vaddq_f64(vabdq_f64(a1, *a4), vmulq_f64(a4[2], vdupq_n_s64(0xBFD99999A0000000))));
  v5 = vcltz_f32(v4);
  if (v5.i8[0])
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4.f32[0];
  }

  v7 = v4.f32[1];
  if (v5.i8[4])
  {
    v7 = 0.0;
  }

  return hypotf(v6, v7);
}

void InputTranscoder::KeyboardLayoutImpl::~KeyboardLayoutImpl(InputTranscoder::KeyboardLayoutImpl *this)
{
  *this = &unk_286714598;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286714598;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x259C28FE0);
}

void std::vector<ITKeyInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ITKeyInfo>>(a1, a2);
  }

  std::vector<ITKeyInfo>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ITKeyInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<nlp::CFScopedPtr<__CFString const*>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    nlp::CFScopedPtr<__CFString const*>::reset((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<nlp::CFScopedPtr<__CFString const*>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        nlp::CFScopedPtr<__CFString const*>::reset(--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<InputTranscoder::LayoutInfoAssorted>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<InputTranscoder::LayoutInfoAssorted>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 48);
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_pointer<InputTranscoder::LayoutInfoAssorted *,std::shared_ptr<InputTranscoder::LayoutInfoAssorted>::__shared_ptr_default_delete<InputTranscoder::LayoutInfoAssorted,InputTranscoder::LayoutInfoAssorted>,std::allocator<InputTranscoder::LayoutInfoAssorted>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C28FE0);
}

uint64_t std::__shared_ptr_pointer<InputTranscoder::LayoutInfoAssorted *,std::shared_ptr<InputTranscoder::LayoutInfoAssorted>::__shared_ptr_default_delete<InputTranscoder::LayoutInfoAssorted,InputTranscoder::LayoutInfoAssorted>,std::allocator<InputTranscoder::LayoutInfoAssorted>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::default_delete<InputTranscoder::LayoutInfoAssorted>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(result + 80);
    v3 = (v1 + 24);
    std::vector<nlp::CFScopedPtr<__CFString const*>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x259C28FE0);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InputTranscoder::LayoutInfoAssorted>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InputTranscoder::LayoutInfoAssorted>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InputTranscoder::LayoutInfoAssorted>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InputTranscoder::LayoutInfoAssorted>>>>::__rehash<true>(size_t __n)
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

  v2 = *(&xmmword_28143BC68 + 1);
  if (prime > *(&xmmword_28143BC68 + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *(&xmmword_28143BC68 + 1))
  {
    v3 = vcvtps_u32_f32(qword_28143BC80 / *&dword_28143BC88);
    if (*(&xmmword_28143BC68 + 1) < 3uLL || (v4 = vcnt_s8(*(&xmmword_28143BC68 + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = xmmword_28143BC68;
      *&xmmword_28143BC68 = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&xmmword_28143BC68 + 1) = 0;
    }
  }
}

uint64_t std::vector<ITKeyInfo>::__init_with_size[abi:ne200100]<std::__wrap_iter<ITKeyInfo const*>,std::__wrap_iter<ITKeyInfo const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ITKeyInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254C5DE50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::KeyCandidateImpl>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<InputTranscoder::KeyCandidateImpl>,InputTranscoder::KeyCandidateImpl*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v5 = *(v4 - 9);
      v4 -= 4;
      if (v5 < 0)
      {
        operator delete(*v4);
      }
    }
  }

  return a1;
}

uint64_t std::__split_buffer<InputTranscoder::KeyCandidateImpl>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_254C5DFD4(_Unwind_Exception *exception_object)
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
    operator new();
  }

  std::vector<ITKeyInfo>::__throw_length_error[abi:ne200100]();
}

void *std::vector<std::vector<double>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<ITKeyInfo>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,InputTranscoder::KeyboardLayoutImpl::enumerateNearestKeys(CGPoint,void({block_pointer})(ITKeyInfo,BOOL *))::$_0 &,std::__wrap_iter<ITKeyInfo*>>(uint64_t a1, uint64_t a2, double **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 56 * (v4 >> 1));
    v10 = **a3;
    v11 = (*a3)[1];
    v12 = vabdd_f64(v11, v9[1]);
    v13 = vabdd_f64(v10, *v9) - v9[4] * 0.400000006;
    if (v13 < 0.0)
    {
      v13 = 0.0;
    }

    v14 = v12 - v9[5] * 0.400000006;
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }

    v15 = hypotf(v13, v14);
    v17 = *(a2 - 48);
    v16 = (a2 - 56);
    v18 = *(a2 - 24);
    v19 = *(a2 - 16);
    v42 = *(a2 - 56);
    v20 = vabdd_f64(v10, v42);
    v21 = vabdd_f64(v11, v17);
    v22 = v18 * 0.400000006;
    v23 = v19 * 0.400000006;
    v24 = v20 - v18 * 0.400000006;
    if (v24 < 0.0)
    {
      v24 = 0.0;
    }

    v25 = v21 - v23;
    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    if (v15 > hypotf(v24, v25))
    {
      v40 = v19;
      v41 = v18;
      v43 = *(a2 - 40);
      v26 = *(a2 - 8);
      do
      {
        v27 = v16;
        v16 = v9;
        v28 = *v9;
        v29 = *(v9 + 1);
        v30 = *(v9 + 2);
        v27[6] = v9[6];
        *(v27 + 1) = v29;
        *(v27 + 2) = v30;
        *v27 = v28;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 56 * v8);
        v31 = **a3;
        v32 = (*a3)[1];
        v33 = vabdd_f64(v32, v9[1]);
        v34 = vabdd_f64(v31, *v9) - v9[4] * 0.400000006;
        if (v34 < 0.0)
        {
          v34 = 0.0;
        }

        v35 = v33 - v9[5] * 0.400000006;
        if (v35 < 0.0)
        {
          v35 = 0.0;
        }

        v36 = hypotf(v34, v35);
        v37 = vabdd_f64(v32, v17);
        v38 = vabdd_f64(v31, v42) - v22;
        if (v38 < 0.0)
        {
          v38 = 0.0;
        }

        v39 = v37 - v23;
        if (v39 < 0.0)
        {
          v39 = 0.0;
        }
      }

      while (v36 > hypotf(v38, v39));
      *v16 = v42;
      v16[1] = v17;
      *(v16 + 1) = v43;
      v16[4] = v41;
      v16[5] = v40;
      *(v16 + 6) = v26;
    }
  }
}

float64_t InputTranscoder::PathSample::lerp@<D0>(float64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v4 = a4;
  v5 = vmlaq_n_f64(*a1, vsubq_f64(*a2, *a1), v4);
  v6 = vmlaq_n_f64(a1[1], vsubq_f64(*(a2 + 16), a1[1]), v4);
  *(a3 + 58) = 0;
  *(a3 + 56) = 0;
  *a3 = v5;
  *(a3 + 16) = v6;
  *(a3 + 48) = a1[3].f64[0] + v4 * (*(a2 + 48) - a1[3].f64[0]);
  result = a1[2].f64[0] + v4 * (*(a2 + 32) - a1[2].f64[0]);
  *(a3 + 32) = result;
  *(a3 + 40) = *(a2 + 40);
  return result;
}

unint64_t InputTranscoder::Path::inflection_point_count(InputTranscoder::Path *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 3);
  v4 = *(this + 4);
  if (v4 == v3)
  {
    v11 = *(this + 4);
  }

  else
  {
    v5 = (v4 - v3) >> 2;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[4 * (v5 >> 1)];
      v9 = *v7;
      v8 = (v7 + 1);
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
    if (v4 == v3)
    {
      v11 = *(this + 4);
    }

    else
    {
      v10 = (v4 - v3) >> 2;
      v11 = v3;
      do
      {
        v12 = v10 >> 1;
        v13 = &v11[4 * (v10 >> 1)];
        v15 = *v13;
        v14 = (v13 + 1);
        v10 += ~(v10 >> 1);
        if (v15 > a3)
        {
          v10 = v12;
        }

        else
        {
          v11 = v14;
        }
      }

      while (v10);
    }

    v4 = v3;
  }

  return (v11 - v4) >> 2;
}

double InputTranscoder::Path::turn_angle(InputTranscoder::Path *this, unsigned int a2)
{
  v2 = 0.0;
  if (a2)
  {
    v3 = a2 + 1;
    v4 = *this;
    if (v3 != (*(this + 1) - *this) >> 6)
    {
      v5 = a2;
      v6 = (v4 + (a2 << 6));
      v7 = *v6;
      v8 = v6[1];
      v9 = (v4 + (v3 << 6));
      v10 = *v9 - *v6;
      v11 = v9[1] - v8;
      if (hypot(v10, v11) >= 0.00001)
      {
        v12 = v6 - 8;
        v13 = v5 + 1;
        while (--v13)
        {
          v14 = v12 - 8;
          v15 = v7 - *v12;
          v16 = v8 - v12[1];
          v17 = hypot(v15, v16);
          v12 = v14;
          if (v17 >= 0.00001)
          {
            v18 = atan2(v16, v15);
            v2 = atan2(v11, v10) - v18;
            if (v2 >= -3.14159265)
            {
              if (v2 <= 3.14159265)
              {
                return v2;
              }

              v19 = -6.28318531;
            }

            else
            {
              v19 = 6.28318531;
            }

            return v2 + v19;
          }
        }
      }
    }
  }

  return v2;
}

void InputTranscoder::Path::resize(InputTranscoder::Path *this, unint64_t a2)
{
  if (a2 != (*(this + 1) - *this) >> 6)
  {
    std::vector<InputTranscoder::PathSample>::resize(this, a2);
    v5 = *(this + 3);
    v4 = *(this + 4);
    if (v4 != v5)
    {
      v6 = v4 - v5;
      do
      {
        v7 = v6 >> 1;
        v8 = &v5[v6 >> 1];
        v10 = *v8;
        v9 = v8 + 1;
        v6 += ~(v6 >> 1);
        if (v10 < a2)
        {
          v5 = v9;
        }

        else
        {
          v6 = v7;
        }
      }

      while (v6);
      if (v5 != v4)
      {
        v11 = *(this + 4);
        *(this + 4) = v5;
      }
    }
  }
}

void std::vector<InputTranscoder::PathSample>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + (a2 << 6);
    }
  }

  else
  {
    std::vector<InputTranscoder::PathSample>::__append(a1, a2 - v2);
  }
}

std::__wrap_iter<unsigned int *>::iterator_type InputTranscoder::Path::set_sample_is_inflection_point(InputTranscoder::Path *this, std::vector<unsigned int>::value_type a2)
{
  __x = a2;
  v5 = *(this + 3);
  v4.__i_ = *(this + 4);
  result = (this + 24);
  if (v4.__i_ == v5)
  {
    return std::vector<unsigned int>::insert(result, v4, &__x).__i_;
  }

  v6 = 0;
  while (v4.__i_[v6 - 1] > a2)
  {
    if (&v4.__i_[--v6] == v5)
    {
      v4.__i_ = (v4.__i_ + v6 * 4);
      goto LABEL_8;
    }
  }

  if (!(v6 * 4))
  {
    return std::vector<unsigned int>::insert(result, v4, &__x).__i_;
  }

  v4.__i_ = (v4.__i_ + v6 * 4);
LABEL_8:
  if (*v4.__i_ != a2)
  {
    return std::vector<unsigned int>::insert(result, v4, &__x).__i_;
  }

  return result;
}

std::vector<unsigned int>::iterator std::vector<unsigned int>::insert(std::vector<unsigned int> *this, std::vector<unsigned int>::const_iterator __position, std::vector<unsigned int>::const_reference __x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v14);
    }

    v16 = (4 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (begin == i)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12 >> 1;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v19);
      }

      v16 = (v16 - (((v12 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL));
    }

    *v16 = *__x;
    memcpy(v16 + 1, i, this->__end_ - i);
    v20 = this->__begin_;
    v21 = (v16 + (this->__end_ - i) + 4);
    this->__end_ = i;
    v22 = i - v20;
    v23 = v16 - (i - v20);
    memcpy(v23, v20, v22);
    v24 = this->__begin_;
    this->__begin_ = v23;
    this->__end_ = v21;
    this->__end_cap_.__value_ = 0;
    if (v24)
    {
      operator delete(v24);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
      v9 = this->__end_;
    }

    v17 = v9 <= __x || i > __x;
    v18 = 1;
    if (v17)
    {
      v18 = 0;
    }

    *i = __x[v18];
  }

  return i;
}

void sub_254C5E938(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InputTranscoder::Path::is_local_max(void *a1, unsigned int a2, uint64_t a3, double a4)
{
  std::function<double ()>::operator()(a3, a2);
  v9 = v8;
  v10 = *(*a1 + (a2 << 6) + 32);
  v11 = a2 - 1;
  while (v11 != -1 && *(*a1 + (v11 << 6) + 32) > v10 - a4)
  {
    std::function<double ()>::operator()(a3, v11--);
    if (v12 >= v9)
    {
      return 0;
    }
  }

  v13 = v10 + a4;
  v14 = a2 + 1;
  while (1)
  {
    v15 = v14;
    if (v14 >= ((a1[1] - *a1) >> 6) || *(*a1 + (v14 << 6) + 32) >= v13)
    {
      break;
    }

    std::function<double ()>::operator()(a3, v14);
    v14 = v15 + 1;
    if (v16 >= v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t std::function<double ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void InputTranscoder::Path::curvature(InputTranscoder::Path *this, unsigned int a2)
{
  if (a2 && ((*(this + 1) - *this) >> 6) - 1 != a2)
  {
    v2 = (*(*this + ((a2 + 1) << 6) + 32) - *(*this + ((a2 - 1) << 6) + 32)) * 0.5;
    if (v2 != 0.0)
    {
      InputTranscoder::Path::turn_angle(this, a2);
    }
  }
}

uint64_t InputTranscoder::Path::is_curvature_local_max(InputTranscoder::Path *this, unsigned int a2, double a3)
{
  v10[4] = *MEMORY[0x277D85DE8];
  InputTranscoder::Path::curvature(this, a2);
  if (fabs(v6) <= 0.02)
  {
    is_local_max = 0;
  }

  else
  {
    v10[0] = &unk_2867146A8;
    v10[1] = this;
    v10[3] = v10;
    is_local_max = InputTranscoder::Path::is_local_max(this, a2, v10, a3);
    std::__function::__value_func<double ()>::~__value_func[abi:ne200100](v10);
  }

  v8 = *MEMORY[0x277D85DE8];
  return is_local_max;
}

void sub_254C5EBE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<double ()>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<InputTranscoder::PathSample>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 6)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 6);
      v5 += a2 << 6;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::PathSample>>(a1, v9);
    }

    v10 = (v6 >> 6 << 6);
    bzero(v10, a2 << 6);
    v11 = &v10[64 * a2];
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

uint64_t std::__function::__func<InputTranscoder::Path::is_curvature_local_max(unsigned int,double)::$_0,std::allocator<InputTranscoder::Path::is_curvature_local_max(unsigned int,double)::$_0>,double ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2867146A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<InputTranscoder::Path::is_curvature_local_max(unsigned int,double)::$_0,std::allocator<InputTranscoder::Path::is_curvature_local_max(unsigned int,double)::$_0>,double ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<double ()(unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

CFErrorRef InputTranscoder::createErrorWithMessage(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = CFStringCreateWithCString(0, v3, 0x8000100u);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBEE58], v4);
  v5 = CFErrorCreate(0, @"com.apple.InputTranscoder", 0, Mutable);
  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v5;
}

void sub_254C5EF6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFDictionary *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void InputTranscoder::makeStaticLexicon(UInt8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 1);
  if ((a1[23] & 0x80u) == 0)
  {
    v4 = a1[23];
  }

  else
  {
    a1 = *a1;
    v4 = v3;
  }

  CFStringFromString = nlp::createCFStringFromString(a1, v4);
  v14 = CFStringFromString;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = Mutable;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D23168], CFStringFromString);
  v7 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D23158], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D23160], v7);
  v12 = 0;
  v8 = LXLexiconCreate();
  *a2 = v8;
  if (!v8)
  {
    v9 = v12;
    v11[3] = v12;
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v11, "Failed to create static lexicon");
    nlp::ResourceCreationException::ResourceCreationException(exception, v11, v9);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_254C5F0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, uint64_t a17, const void *a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      nlp::CFScopedPtr<__CFError *>::reset(&a16, 0);
      nlp::CFScopedPtr<_LXLexicon const*>::reset(v18, 0);
      nlp::CFScopedPtr<__CFDictionary *>::reset(&a18, 0);
      nlp::CFScopedPtr<__CFString const*>::reset((v21 - 40), 0);
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

void InputTranscoder::splitAtLastWord(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 < 0)
  {
    v4 = a1[1];
  }

  v6 = v4 + 1;
  while (1)
  {
    v7 = v6 - 1;
    if (v6 == 1)
    {
      break;
    }

    v8 = v5[v6-- - 2];
    if (v8 == 32)
    {
      if (v7)
      {
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(__dst, v5, &v5[v7], v7);
        v9 = *(a1 + 23);
        if ((v9 & 0x80u) == 0)
        {
          v10 = a1;
        }

        else
        {
          v10 = *a1;
        }

        if ((v9 & 0x80u) != 0)
        {
          v9 = a1[1];
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(__p, v10 + v7, v10 + v9, v9 - v7);
        std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(a2, __dst, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        if (v14 < 0)
        {
          operator delete(__dst[0]);
        }

        return;
      }

      break;
    }
  }

  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[1],std::string const&,0>(a2, "", a1);
}

void sub_254C5F28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

std::string *InputTranscoder::removeUnwantedCharacters@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  v3 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v4 = v3;
  v5 = a2->__r_.__value_.__r.__words[0];
  size = a2->__r_.__value_.__l.__size_;
  if ((v3 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2->__r_.__value_.__r.__words[0];
  }

  if ((v3 & 0x80u) == 0)
  {
    v8 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = a2->__r_.__value_.__l.__size_;
  }

  v9 = &v7[v8];
  if (v8)
  {
    v10 = v8 - 1;
    v11 = MEMORY[0x277D85DE0];
    while (1)
    {
      v12 = *v7;
      if (v12 == 39 || (v12 & 0x80) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v12 + 60) & 0x400) != 0)
      {
        break;
      }

      ++v7;
      --v10;
      if (v7 == v9)
      {
        goto LABEL_27;
      }
    }

    if (v7 == v9 || v7 + 1 == v9)
    {
      v9 = v7;
    }

    else
    {
      v13 = 1;
      v9 = v7;
      do
      {
        v14 = v7[v13];
        if (v14 != 39 && (v14 < 0 || (*(v11 + 4 * v14 + 60) & 0x400) == 0))
        {
          *v9++ = v14;
        }

        ++v13;
        --v10;
      }

      while (v10);
      v3 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      v5 = a2->__r_.__value_.__r.__words[0];
      size = a2->__r_.__value_.__l.__size_;
      v4 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }
  }

LABEL_27:
  v15 = v5 + size;
  v16 = a2 + v3;
  if (v4 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v16 = v15;
    v17 = v5;
  }

  return std::string::erase(a2, v9 - v17, v16 - v9);
}

void sub_254C5F3EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void InputTranscoder::toLower(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
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
    v5 = *(a2 + 8);
  }

  for (; v5; --v5)
  {
    *v4 = __tolower(*v4);
    ++v4;
  }
}

void sub_254C5F488(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *InputTranscoder::removeSpace@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  v3 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v4 = v3;
  v5 = a2->__r_.__value_.__r.__words[0];
  size = a2->__r_.__value_.__l.__size_;
  if ((v3 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2->__r_.__value_.__r.__words[0];
  }

  if ((v3 & 0x80u) == 0)
  {
    v8 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = a2->__r_.__value_.__l.__size_;
  }

  v9 = (v7 + v8);
  if (v8)
  {
    v10 = v8 - 1;
    while (v7->__r_.__value_.__s.__data_[0] != 32)
    {
      v7 = (v7 + 1);
      --v10;
      if (v7 == v9)
      {
        goto LABEL_23;
      }
    }

    if (v7 == v9 || (&v7->__r_.__value_.__l.__data_ + 1) == v9)
    {
      v9 = v7;
    }

    else
    {
      v11 = 1;
      v9 = v7;
      do
      {
        v12 = v7->__r_.__value_.__s.__data_[v11];
        if (v12 != 32)
        {
          v9->__r_.__value_.__s.__data_[0] = v12;
          v9 = (v9 + 1);
        }

        ++v11;
        --v10;
      }

      while (v10);
      v3 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      v5 = a2->__r_.__value_.__r.__words[0];
      size = a2->__r_.__value_.__l.__size_;
      v4 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }
  }

LABEL_23:
  v13 = v5 + size;
  v14 = a2 + v3;
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v14 = v13;
  }

  return std::string::erase(a2, v9 - v5, v14 - v9);
}

void sub_254C5F5A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL InputTranscoder::stringHasSeparator(char **a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  v4 = *(a2 + 8);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    return 0;
  }

  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    v6 = a1[1];
  }

  if (!v6)
  {
    return 0;
  }

  if (v3 < 0)
  {
    v9 = *a2;
    if (v4 != 5 || (*v9 == 1667330163 ? (v10 = v9[4] == 101) : (v10 = 0), !v10))
    {
      std::string::__init_copy_ctor_external(&v25, v9, v4);
      goto LABEL_22;
    }

LABEL_21:
    std::string::basic_string[abi:ne200100]<0>(&v25, " ");
    goto LABEL_22;
  }

  if (v3 == 5 && *a2 == 1667330163 && *(a2 + 4) == 101)
  {
    goto LABEL_21;
  }

  v25 = *a2;
LABEL_22:
  v11 = *(a1 + 23);
  if (v11 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (v11 < 0)
  {
    v11 = a1[1];
  }

  v13 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
  v14 = v25.__r_.__value_.__r.__words[0];
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v25;
  }

  else
  {
    v15 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v8 = 1;
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v8;
    }

    goto LABEL_43;
  }

  v17 = &v11[v12];
  if (v11 >= size)
  {
    v21 = v15->__r_.__value_.__s.__data_[0];
    v22 = v12;
    do
    {
      v23 = &v11[-size];
      if (v23 == -1)
      {
        break;
      }

      v24 = memchr(v22, v21, (v23 + 1));
      if (!v24)
      {
        break;
      }

      v18 = v24;
      if (!memcmp(v24, v15, size))
      {
        goto LABEL_36;
      }

      v22 = v18 + 1;
      v11 = (v17 - (v18 + 1));
    }

    while (v11 >= size);
  }

  v18 = v17;
LABEL_36:
  v8 = v18 != v17 && v18 - v12 != -1;
  if (v13 < 0)
  {
LABEL_43:
    operator delete(v14);
  }

  return v8;
}

void InputTranscoder::enumerateLDAssets()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x2000000000;
  v1 = 0;
  LDEnumerateAssetDataItems();
  _Block_object_dispose(v0, 8);
}

void sub_254C5F81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15InputTranscoder17enumerateLDAssetsEPK10__CFLocaleU13block_pointerFvPK7__CFURL17LDAssetBundleTypeS2_PK10__CFStringPbE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a6;
  return result;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[1],std::string const&,0>(std::string *a1, char *a2, __int128 *a3)
{
  std::string::basic_string[abi:ne200100]<0>(a1, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    a1[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

void sub_254C5F8CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
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

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_254C5FA14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}