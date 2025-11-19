void sub_1B57DA038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    if (a16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a16);
    }

    if (a22 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    v24 = EarGeoLMHelperLogger();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v25)
      {
        [_EARGeoLMHelper initWithLocale:config:];
      }

      __cxa_end_catch();
    }

    else
    {
      if (v25)
      {
        [_EARGeoLMHelper initWithLocale:config:];
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B57D9FF4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::WriteCompactLattice(void *a1, int a2, uint64_t a3)
{
  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "<unspecifed>");
    v5 = FLAGS_fst_align;
    if (SHIBYTE(v19[0].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v19[0].__r_.__value_.__l.__data_, v19[0].__r_.__value_.__l.__size_);
      v14 = 257;
      v15 = 1;
      v16 = v5;
      if (SHIBYTE(v19[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      __p = v19[0];
      v14 = 257;
      v15 = 1;
      v16 = FLAGS_fst_align;
    }

    v10 = (*(*a3 + 96))(a3, a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v11 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_25;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
    v6 = (*(*a3 + 64))(a3, 0x10000, 1);
    v7 = (*(*a3 + 112))(a3);
    v8 = (*(*a3 + 120))(a3);
    std::string::basic_string[abi:ne200100]<0>(&__p, "\t");
    std::string::basic_string[abi:ne200100]<0>(&v17, "");
    fst::FstPrinter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::FstPrinter(v19, a3, v7, v8, 0, (v6 >> 16) & 1, 0, &__p, &v17);
    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "<unknown>");
    fst::FstPrinter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::Print(v19, a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0 && kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Stream failure detected.", 24);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    }

    __p.__r_.__value_.__s.__data_[0] = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
    v10 = *(a1 + *(*a1 - 24) + 32) == 0;
    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (v21 < 0)
    {
      v11 = v20;
LABEL_25:
      operator delete(v11);
    }
  }

  return v10;
}

void sub_1B57DA4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 - 169) < 0)
  {
    operator delete(*(v16 - 192));
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::FstPrinter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::Print(std::string *a1, std::string::size_type a2, std::string *__str)
{
  a1[1].__r_.__value_.__r.__words[2] = a2;
  std::string::operator=(a1 + 2, __str);
  result = (*(*a1->__r_.__value_.__l.__data_ + 24))();
  if (result == -1)
  {
    return result;
  }

  v5 = result;
  fst::FstPrinter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::PrintState(a1, result);
  v6 = a1->__r_.__value_.__r.__words[0];
  v11 = 0;
  (*(*v6 + 128))(v6, &v9);
  while (1)
  {
    result = v9;
    if (!v9)
    {
      if (v11 >= v10)
      {
        return result;
      }

      goto LABEL_8;
    }

    v7 = (*(*v9 + 16))(v9);
    result = v9;
    if (v7)
    {
      break;
    }

    if (v9)
    {
      v8 = (*(*v9 + 24))();
      goto LABEL_9;
    }

LABEL_8:
    v8 = v11;
LABEL_9:
    if (v8 != v5)
    {
      fst::FstPrinter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::PrintState(a1, v8);
    }

    if (v9)
    {
      (*(*v9 + 32))(v9);
    }

    else
    {
      ++v11;
    }
  }

  if (v9)
  {
    return (*(*v9 + 8))();
  }

  return result;
}

void sub_1B57DA6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::WriteLattice(void *a1, int a2, uint64_t a3)
{
  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "<unspecifed>");
    v5 = FLAGS_fst_align;
    if (SHIBYTE(v18[0].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v18[0].__r_.__value_.__l.__data_, v18[0].__r_.__value_.__l.__size_);
      v13 = 257;
      v14 = 1;
      v15 = v5;
      if (SHIBYTE(v18[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      __p = v18[0];
      v13 = 257;
      v14 = 1;
      v15 = FLAGS_fst_align;
    }

    v9 = (*(*a3 + 96))(a3, a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_25;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
    v6 = (*(*a3 + 112))(a3);
    v7 = (*(*a3 + 120))(a3);
    std::string::basic_string[abi:ne200100]<0>(&__p, "\t");
    std::string::basic_string[abi:ne200100]<0>(&v16, "");
    fst::FstPrinter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::FstPrinter(v18, a3, v6, v7, 0, 0, 0, &__p, &v16);
    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "<unknown>");
    fst::FstPrinter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Print(v18, a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0 && kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Stream failure detected.", 24);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    }

    __p.__r_.__value_.__s.__data_[0] = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
    v9 = *(a1 + *(*a1 - 24) + 32) == 0;
    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (v20 < 0)
    {
      v10 = v19;
LABEL_25:
      operator delete(v10);
    }
  }

  return v9;
}

void sub_1B57DA9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 - 153) < 0)
  {
    operator delete(*(v16 - 176));
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::FstPrinter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Print(std::string *a1, std::string::size_type a2, std::string *__str)
{
  a1[1].__r_.__value_.__r.__words[2] = a2;
  std::string::operator=(a1 + 2, __str);
  result = (*(*a1->__r_.__value_.__l.__data_ + 24))();
  if (result == -1)
  {
    return result;
  }

  v5 = result;
  fst::FstPrinter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::PrintState(a1, result);
  v6 = a1->__r_.__value_.__r.__words[0];
  v11 = 0;
  (*(*v6 + 128))(v6, &v9);
  while (1)
  {
    result = v9;
    if (!v9)
    {
      if (v11 >= v10)
      {
        return result;
      }

      goto LABEL_8;
    }

    v7 = (*(*v9 + 16))(v9);
    result = v9;
    if (v7)
    {
      break;
    }

    if (v9)
    {
      v8 = (*(*v9 + 24))();
      goto LABEL_9;
    }

LABEL_8:
    v8 = v11;
LABEL_9:
    if (v8 != v5)
    {
      fst::FstPrinter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::PrintState(a1, v8);
    }

    if (v9)
    {
      (*(*v9 + 32))(v9);
    }

    else
    {
      ++v11;
    }
  }

  if (v9)
  {
    return (*(*v9 + 8))();
  }

  return result;
}

void sub_1B57DAC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::FstPrinter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Print(std::string *a1, std::string::size_type a2, std::string *__str)
{
  a1[1].__r_.__value_.__r.__words[2] = a2;
  std::string::operator=(a1 + 2, __str);
  result = (*(*a1->__r_.__value_.__l.__data_ + 24))();
  if (result == -1)
  {
    return result;
  }

  v5 = result;
  fst::FstPrinter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::PrintState(a1, result);
  v6 = a1->__r_.__value_.__r.__words[0];
  v11 = 0;
  (*(*v6 + 128))(v6, &v9);
  while (1)
  {
    result = v9;
    if (!v9)
    {
      if (v11 >= v10)
      {
        return result;
      }

      goto LABEL_8;
    }

    v7 = (*(*v9 + 16))(v9);
    result = v9;
    if (v7)
    {
      break;
    }

    if (v9)
    {
      v8 = (*(*v9 + 24))();
      goto LABEL_9;
    }

LABEL_8:
    v8 = v11;
LABEL_9:
    if (v8 != v5)
    {
      fst::FstPrinter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::PrintState(a1, v8);
    }

    if (v9)
    {
      (*(*v9 + 32))(v9);
    }

    else
    {
      ++v11;
    }
  }

  if (v9)
  {
    return (*(*v9 + 8))();
  }

  return result;
}

void sub_1B57DADEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::FstPrinter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::~FstPrinter(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return a1;
}

uint64_t fst::FstPrinter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::FstPrinter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7, __int128 *a8, __int128 *a9)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  if (a6)
  {
    v12 = (*(*a2 + 64))(a2, 0x10000, 1) != 0;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 32) = v12;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = a7;
  if (*(a8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a8, *(a8 + 1));
  }

  else
  {
    v13 = *a8;
    *(a1 + 96) = *(a8 + 2);
    *(a1 + 80) = v13;
  }

  if (*(a9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), *a9, *(a9 + 1));
  }

  else
  {
    v14 = *a9;
    *(a1 + 120) = *(a9 + 2);
    *(a1 + 104) = v14;
  }

  return a1;
}

void sub_1B57DAF64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void fst::FstPrinter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::PrintState(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v5 = a1 + 80;
  v4 = *a1;
  v34 = 0;
  (*(*v4 + 136))(v4, a2, v32);
  v6 = 1;
  while (1)
  {
    if (!v32[0])
    {
      if (v34 >= v32[2])
      {
        goto LABEL_46;
      }

      goto LABEL_7;
    }

    if ((*(*v32[0] + 24))(v32[0]))
    {
      break;
    }

    if (v32[0])
    {
      v7 = (*(*v32[0] + 32))();
      goto LABEL_8;
    }

LABEL_7:
    v7 = v32[1] + 48 * v34;
LABEL_8:
    v26 = *v7;
    v27 = *(v7 + 8);
    v29 = 0;
    v30 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v7 + 16), *(v7 + 24), (*(v7 + 24) - *(v7 + 16)) >> 2);
    v31 = *(v7 + 40);
    fst::FstPrinter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::PrintId(a1, v2, *(a1 + 24));
    v8 = *(a1 + 103);
    if (v8 >= 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = *(a1 + 80);
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 103);
    }

    else
    {
      v10 = *(a1 + 88);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v9, v10);
    fst::FstPrinter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::PrintId(a1, v31, *(a1 + 24));
    v11 = *(a1 + 103);
    if (v11 >= 0)
    {
      v12 = v5;
    }

    else
    {
      v12 = *(a1 + 80);
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 103);
    }

    else
    {
      v13 = *(a1 + 88);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v12, v13);
    fst::FstPrinter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::PrintId(a1, v26, *(a1 + 8));
    if ((*(a1 + 32) & 1) == 0)
    {
      v14 = *(a1 + 103);
      if (v14 >= 0)
      {
        v15 = v5;
      }

      else
      {
        v15 = *(a1 + 80);
      }

      if (v14 >= 0)
      {
        v16 = *(a1 + 103);
      }

      else
      {
        v16 = *(a1 + 88);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v15, v16);
      fst::FstPrinter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::PrintId(a1, SHIDWORD(v26), *(a1 + 16));
    }

    if ((*(a1 + 72) & 1) != 0 || (v37 = *(&v27 + 1), v38 = *&v27, v36 = 0.0, v35 = 0.0, *&v27 != 0.0) || v37 != v35 || v29 != __p)
    {
      v17 = *(a1 + 103);
      if (v17 >= 0)
      {
        v18 = v5;
      }

      else
      {
        v18 = *(a1 + 80);
      }

      if (v17 >= 0)
      {
        v19 = *(a1 + 103);
      }

      else
      {
        v19 = *(a1 + 88);
      }

      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v18, v19);
      fst::operator<<<fst::LatticeWeightTpl<float>,int>(v20, &v27);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "\n", 1);
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v32[0])
    {
      (*(*v32[0] + 40))(v32[0]);
      v6 = 0;
    }

    else
    {
      v6 = 0;
      ++v34;
    }
  }

  if (v32[0])
  {
    (*(*v32[0] + 8))();
    goto LABEL_48;
  }

LABEL_46:
  if (v33)
  {
    --*v33;
  }

LABEL_48:
  (*(**a1 + 32))(&v26);
  v38 = *(&v26 + 1);
  LODWORD(v32[0]) = v26;
  v37 = INFINITY;
  v36 = INFINITY;
  if (*&v26 != INFINITY || v38 != v36 || (v21 = v27, __p != v27) || (v6 & 1) != 0)
  {
    fst::FstPrinter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::PrintId(a1, v2, *(a1 + 24));
    if ((*(a1 + 72) & 1) != 0 || (v38 = *(&v26 + 1), LODWORD(v32[0]) = v26, v37 = 0.0, v36 = 0.0, *&v26 != 0.0) || v38 != v36 || __p != v27)
    {
      v22 = *(a1 + 103);
      if (v22 >= 0)
      {
        v23 = v5;
      }

      else
      {
        v23 = *(a1 + 80);
      }

      if (v22 >= 0)
      {
        v24 = *(a1 + 103);
      }

      else
      {
        v24 = *(a1 + 88);
      }

      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v23, v24);
      fst::operator<<<fst::LatticeWeightTpl<float>,int>(v25, &v26);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "\n", 1);
    v21 = v27;
  }

  if (v21)
  {
    __p = v21;
    operator delete(v21);
  }
}

void sub_1B57DB3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::FstPrinter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::PrintId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {

    JUMPOUT(0x1B8C84C60);
  }

  (*(*a3 + 88))(&v26, a3, a2);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v26.__r_.__value_.__l.__size_)
    {
      goto LABEL_31;
    }
  }

  else if (*(&v26.__r_.__value_.__s + 23))
  {
    goto LABEL_31;
  }

  if (*(a1 + 127) < 0)
  {
    if (*(a1 + 112))
    {
      goto LABEL_11;
    }
  }

  else if (*(a1 + 127))
  {
LABEL_11:
    std::string::operator=(&v26, (a1 + 104));
    goto LABEL_31;
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v6 = fst::LogMessage::LogMessage(&v25, __p);
  v7 = fst::cerr(v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "FstPrinter: Integer ", 20);
  v9 = MEMORY[0x1B8C84C60](v8, a2);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " is not mapped to any textual symbol", 36);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", symbol table = ", 17);
  v12 = (*(*a3 + 48))(a3);
  v13 = *(v12 + 23);
  if (v13 >= 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = *v12;
  }

  if (v13 >= 0)
  {
    v15 = *(v12 + 23);
  }

  else
  {
    v15 = *(v12 + 8);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v14, v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", destination = ", 16);
  v18 = *(a1 + 71);
  if (v18 >= 0)
  {
    v19 = a1 + 48;
  }

  else
  {
    v19 = *(a1 + 48);
  }

  if (v18 >= 0)
  {
    v20 = *(a1 + 71);
  }

  else
  {
    v20 = *(a1 + 56);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
  fst::LogMessage::~LogMessage(&v25);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x1B8C84820](&v26, "?");
LABEL_31:
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v26;
  }

  else
  {
    v21 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v21, size);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1B57DB680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::FstPrinter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::FstPrinter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7, __int128 *a8, __int128 *a9)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  if (a6)
  {
    v12 = (*(*a2 + 64))(a2, 0x10000, 1) != 0;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 32) = v12;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = a7;
  if (*(a8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a8, *(a8 + 1));
  }

  else
  {
    v13 = *a8;
    *(a1 + 96) = *(a8 + 2);
    *(a1 + 80) = v13;
  }

  if (*(a9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), *a9, *(a9 + 1));
  }

  else
  {
    v14 = *a9;
    *(a1 + 120) = *(a9 + 2);
    *(a1 + 104) = v14;
  }

  return a1;
}

void sub_1B57DB7C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void *fst::FstPrinter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::PrintState(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v5 = a1 + 80;
  v4 = *a1;
  v31 = 0;
  (*(*v4 + 136))(v4, a2, v29);
  v6 = 1;
  while (1)
  {
    if (!v29[0])
    {
      if (v31 >= v29[2])
      {
        goto LABEL_43;
      }

      goto LABEL_7;
    }

    if ((*(*v29[0] + 24))(v29[0]))
    {
      break;
    }

    if (v29[0])
    {
      v7 = (*(*v29[0] + 32))();
      goto LABEL_8;
    }

LABEL_7:
    v7 = v29[1] + 20 * v31;
LABEL_8:
    v26 = *v7;
    v27 = *(v7 + 8);
    v28 = *(v7 + 16);
    fst::FstPrinter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::PrintId(a1, v2, *(a1 + 24));
    v8 = *(a1 + 103);
    if (v8 >= 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = *(a1 + 80);
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 103);
    }

    else
    {
      v10 = *(a1 + 88);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v9, v10);
    fst::FstPrinter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::PrintId(a1, v28, *(a1 + 24));
    v11 = *(a1 + 103);
    if (v11 >= 0)
    {
      v12 = v5;
    }

    else
    {
      v12 = *(a1 + 80);
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 103);
    }

    else
    {
      v13 = *(a1 + 88);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v12, v13);
    fst::FstPrinter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::PrintId(a1, v26, *(a1 + 8));
    if ((*(a1 + 32) & 1) == 0)
    {
      v14 = *(a1 + 103);
      if (v14 >= 0)
      {
        v15 = v5;
      }

      else
      {
        v15 = *(a1 + 80);
      }

      if (v14 >= 0)
      {
        v16 = *(a1 + 103);
      }

      else
      {
        v16 = *(a1 + 88);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v15, v16);
      fst::FstPrinter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::PrintId(a1, SHIDWORD(v26), *(a1 + 16));
    }

    if ((*(a1 + 72) & 1) != 0 || (v34 = *(&v27 + 1), v35 = *&v27, v33 = 0.0, v32 = 0.0, *&v27 != 0.0) || v34 != v32)
    {
      v17 = *(a1 + 103);
      if (v17 >= 0)
      {
        v18 = v5;
      }

      else
      {
        v18 = *(a1 + 80);
      }

      if (v17 >= 0)
      {
        v19 = *(a1 + 103);
      }

      else
      {
        v19 = *(a1 + 88);
      }

      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v18, v19);
      fst::operator<<<float>(v20, &v27);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "\n", 1);
    if (v29[0])
    {
      (*(*v29[0] + 40))(v29[0]);
      v6 = 0;
    }

    else
    {
      v6 = 0;
      ++v31;
    }
  }

  if (v29[0])
  {
    (*(*v29[0] + 8))();
    goto LABEL_45;
  }

LABEL_43:
  if (v30)
  {
    --*v30;
  }

LABEL_45:
  result = (*(**a1 + 32))(v29);
  v35 = *(v29 + 1);
  v34 = INFINITY;
  v33 = INFINITY;
  if (*v29 != INFINITY || v6 & 1 | (v35 != v33))
  {
    fst::FstPrinter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::PrintId(a1, v2, *(a1 + 24));
    if ((*(a1 + 72) & 1) != 0 || (v35 = *(v29 + 1), v34 = 0.0, v33 = 0.0, *v29 != 0.0) || v35 != v33)
    {
      v22 = *(a1 + 103);
      if (v22 >= 0)
      {
        v23 = v5;
      }

      else
      {
        v23 = *(a1 + 80);
      }

      if (v22 >= 0)
      {
        v24 = *(a1 + 103);
      }

      else
      {
        v24 = *(a1 + 88);
      }

      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v23, v24);
      fst::operator<<<float>(v25, v29);
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), "\n", 1);
  }

  return result;
}

void sub_1B57DBBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::IsIsymbolOrFinal(va);
  _Unwind_Resume(a1);
}

void fst::FstPrinter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::PrintId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {

    JUMPOUT(0x1B8C84C60);
  }

  (*(*a3 + 88))(&v26, a3, a2);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v26.__r_.__value_.__l.__size_)
    {
      goto LABEL_31;
    }
  }

  else if (*(&v26.__r_.__value_.__s + 23))
  {
    goto LABEL_31;
  }

  if (*(a1 + 127) < 0)
  {
    if (*(a1 + 112))
    {
      goto LABEL_11;
    }
  }

  else if (*(a1 + 127))
  {
LABEL_11:
    std::string::operator=(&v26, (a1 + 104));
    goto LABEL_31;
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v6 = fst::LogMessage::LogMessage(&v25, __p);
  v7 = fst::cerr(v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "FstPrinter: Integer ", 20);
  v9 = MEMORY[0x1B8C84C60](v8, a2);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " is not mapped to any textual symbol", 36);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", symbol table = ", 17);
  v12 = (*(*a3 + 48))(a3);
  v13 = *(v12 + 23);
  if (v13 >= 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = *v12;
  }

  if (v13 >= 0)
  {
    v15 = *(v12 + 23);
  }

  else
  {
    v15 = *(v12 + 8);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v14, v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", destination = ", 16);
  v18 = *(a1 + 71);
  if (v18 >= 0)
  {
    v19 = a1 + 48;
  }

  else
  {
    v19 = *(a1 + 48);
  }

  if (v18 >= 0)
  {
    v20 = *(a1 + 71);
  }

  else
  {
    v20 = *(a1 + 56);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
  fst::LogMessage::~LogMessage(&v25);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x1B8C84820](&v26, "?");
LABEL_31:
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v26;
  }

  else
  {
    v21 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v21, size);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1B57DBE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::FstPrinter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::FstPrinter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7, __int128 *a8, __int128 *a9)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  if (a6)
  {
    v12 = (*(*a2 + 64))(a2, 0x10000, 1) != 0;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 32) = v12;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = a7;
  if (*(a8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a8, *(a8 + 1));
  }

  else
  {
    v13 = *a8;
    *(a1 + 96) = *(a8 + 2);
    *(a1 + 80) = v13;
  }

  if (*(a9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), *a9, *(a9 + 1));
  }

  else
  {
    v14 = *a9;
    *(a1 + 120) = *(a9 + 2);
    *(a1 + 104) = v14;
  }

  return a1;
}

void sub_1B57DBF8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void fst::FstPrinter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::PrintState(void *a1, uint64_t a2)
{
  v5 = a1 + 10;
  v4 = *a1;
  v36 = 0;
  (*(*v4 + 136))(v4, a2, v34);
  v6 = 1;
  while (1)
  {
    if (!v34[0])
    {
      if (v36 >= v34[2])
      {
        goto LABEL_47;
      }

      goto LABEL_7;
    }

    if ((*(*v34[0] + 24))(v34[0]))
    {
      break;
    }

    if (v34[0])
    {
      v7 = (*(*v34[0] + 32))();
      goto LABEL_8;
    }

LABEL_7:
    v7 = (v34[1] + 16 * v36);
LABEL_8:
    v9 = *v7;
    v8 = *(v7 + 1);
    v10 = v7[2];
    v11 = *(v7 + 3);
    fst::FstPrinter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::PrintId(a1, a2, a1[3]);
    v12 = *(a1 + 103);
    if (v12 >= 0)
    {
      v13 = v5;
    }

    else
    {
      v13 = a1[10];
    }

    if (v12 >= 0)
    {
      v14 = *(a1 + 103);
    }

    else
    {
      v14 = a1[11];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1[5], v13, v14);
    fst::FstPrinter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::PrintId(a1, v11, a1[3]);
    v15 = *(a1 + 103);
    if (v15 >= 0)
    {
      v16 = v5;
    }

    else
    {
      v16 = a1[10];
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 103);
    }

    else
    {
      v17 = a1[11];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1[5], v16, v17);
    fst::FstPrinter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::PrintId(a1, v9, a1[1]);
    if ((a1[4] & 1) == 0)
    {
      v18 = *(a1 + 103);
      if (v18 >= 0)
      {
        v19 = v5;
      }

      else
      {
        v19 = a1[10];
      }

      if (v18 >= 0)
      {
        v20 = *(a1 + 103);
      }

      else
      {
        v20 = a1[11];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1[5], v19, v20);
      fst::FstPrinter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::PrintId(a1, v8, a1[2]);
    }

    if ((a1[9] & 1) != 0 || (v38 = LODWORD(v10), v37 = 0, v10 != 0.0))
    {
      v21 = *(a1 + 103);
      if (v21 >= 0)
      {
        v22 = v5;
      }

      else
      {
        v22 = a1[10];
      }

      if (v21 >= 0)
      {
        v23 = *(a1 + 103);
      }

      else
      {
        v23 = a1[11];
      }

      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1[5], v22, v23);
      if (v10 == INFINITY)
      {
        v25 = "Infinity";
        v26 = 8;
      }

      else
      {
        if (v10 != -INFINITY)
        {
          std::ostream::operator<<();
          goto LABEL_41;
        }

        v25 = "-Infinity";
        v26 = 9;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
    }

LABEL_41:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1[5], "\n", 1);
    if (v34[0])
    {
      (*(*v34[0] + 40))(v34[0]);
      v6 = 0;
    }

    else
    {
      v6 = 0;
      ++v36;
    }
  }

  if (v34[0])
  {
    (*(*v34[0] + 8))();
    goto LABEL_49;
  }

LABEL_47:
  if (v35)
  {
    --*v35;
  }

LABEL_49:
  v27 = (*(**a1 + 32))(*a1, a2);
  *v34 = v27;
  v38 = 2139095040;
  if (v6 & 1 | (v27 != INFINITY))
  {
    fst::FstPrinter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::PrintId(a1, a2, a1[3]);
    if ((a1[9] & 1) != 0 || (*v34 = v27, v38 = 0, v27 != 0.0))
    {
      v28 = *(a1 + 103);
      if (v28 >= 0)
      {
        v29 = v5;
      }

      else
      {
        v29 = a1[10];
      }

      if (v28 >= 0)
      {
        v30 = *(a1 + 103);
      }

      else
      {
        v30 = a1[11];
      }

      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1[5], v29, v30);
      if (v27 == INFINITY)
      {
        v32 = "Infinity";
        v33 = 8;
        goto LABEL_62;
      }

      if (v27 == -INFINITY)
      {
        v32 = "-Infinity";
        v33 = 9;
LABEL_62:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
      }

      else
      {
        std::ostream::operator<<();
      }
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1[5], "\n", 1);
  }
}

void sub_1B57DC40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>,fst::ToGallicMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)3>>::Expand(va);
  _Unwind_Resume(a1);
}

void fst::FstPrinter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::PrintId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {

    JUMPOUT(0x1B8C84C60);
  }

  (*(*a3 + 88))(&v26, a3, a2);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v26.__r_.__value_.__l.__size_)
    {
      goto LABEL_31;
    }
  }

  else if (*(&v26.__r_.__value_.__s + 23))
  {
    goto LABEL_31;
  }

  if (*(a1 + 127) < 0)
  {
    if (*(a1 + 112))
    {
      goto LABEL_11;
    }
  }

  else if (*(a1 + 127))
  {
LABEL_11:
    std::string::operator=(&v26, (a1 + 104));
    goto LABEL_31;
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v6 = fst::LogMessage::LogMessage(&v25, __p);
  v7 = fst::cerr(v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "FstPrinter: Integer ", 20);
  v9 = MEMORY[0x1B8C84C60](v8, a2);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " is not mapped to any textual symbol", 36);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", symbol table = ", 17);
  v12 = (*(*a3 + 48))(a3);
  v13 = *(v12 + 23);
  if (v13 >= 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = *v12;
  }

  if (v13 >= 0)
  {
    v15 = *(v12 + 23);
  }

  else
  {
    v15 = *(v12 + 8);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v14, v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", destination = ", 16);
  v18 = *(a1 + 71);
  if (v18 >= 0)
  {
    v19 = a1 + 48;
  }

  else
  {
    v19 = *(a1 + 48);
  }

  if (v18 >= 0)
  {
    v20 = *(a1 + 71);
  }

  else
  {
    v20 = *(a1 + 56);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
  fst::LogMessage::~LogMessage(&v25);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x1B8C84820](&v26, "?");
LABEL_31:
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v26;
  }

  else
  {
    v21 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 40), v21, size);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1B57DC664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::LmeContainer::LmeContainer(uint64_t a1, void *a2, __int128 *a3, int a4)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v7;
  }

  *(a1 + 40) = a4;
  return a1;
}

void sub_1B57DC728(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

quasar::LmeDataStreams *quasar::LmeDataStreams::LmeDataStreams(quasar::LmeDataStreams *this)
{
  *&v5[4] = *MEMORY[0x1E69E9840];
  v3 = 2;
  v4 = 1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  std::vector<quasar::LmeDataFactoryBase::LmeType>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::LmeType const*,quasar::LmeDataFactoryBase::LmeType const*>(this, &v3, v5, 3uLL);
  *(this + 5) = 0;
  *(this + 4) = 0;
  *(this + 3) = this + 32;
  return this;
}

void *quasar::LmeDataFactoryBase::PronSet::PronSet(void *this)
{
  this[2] = 0;
  this[1] = 0;
  *this = this + 1;
  return this;
}

void *quasar::LmeDataFactoryBase::PronSet::PronSet(void *a1, uint64_t *a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    quasar::LmeDataFactoryBase::PronSet::insert(a1, 1, v3, 0.0);
    v3 += 24;
  }

  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  quasar::LmeDataFactoryBase::PronSet::insert(a1, a2);
  return a1;
}

uint64_t quasar::LmeDataFactoryBase::PronSet::insert(uint64_t a1, int a2, uint64_t a3, float a4)
{
  v12 = a4;
  if (*(a3 + 23) < 0)
  {
    v5 = *(a3 + 8);
    if (!v5)
    {
      return 0;
    }

    v10 = a2;
    std::string::__init_copy_ctor_external(&__p, *a3, v5);
  }

  else
  {
    if (!*(a3 + 23))
    {
      return 0;
    }

    v10 = a2;
    __p = *a3;
  }

  v7 = std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__emplace_unique_key_args<std::pair<quasar::PronType,std::string>,std::pair<quasar::PronType,std::string>,float &>(a1, &v10);
  v8 = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v8)
    {
      return 1;
    }
  }

  else if (v6)
  {
    return 1;
  }

  if (*(v7 + 64) > v12)
  {
    *(v7 + 64) = v12;
    return 1;
  }

  return 0;
}

void sub_1B57DC954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::LmeDataFactoryBase::PronSet::PronSet(void *a1, void *a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      quasar::LmeDataFactoryBase::PronSet::insert(a1, 1, (v4 + 4), 0.0);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v3);
  }

  return a1;
}

uint64_t quasar::LmeDataFactoryBase::PronSet::insert(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      result = quasar::LmeDataFactoryBase::PronSet::insert(v4, *v2, v2 + 8, *(v2 + 32));
      v2 += 40;
    }

    while (v2 != v3);
  }

  return result;
}

void *quasar::LmeDataFactoryBase::PronSet::toPronChoices@<X0>(void *result@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = result + 1;
  v4 = *result;
  if (*result != result + 1)
  {
    do
    {
      result = quasar::pronTypeMatchesPronRequest(*(v4 + 8), a2);
      if (result)
      {
        v7 = a3[1];
        if (v7 >= a3[2])
        {
          result = std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronType const&,std::string const&,float const&>(a3, v4 + 8, (v4 + 5), v4 + 16);
        }

        else
        {
          std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType const&,std::string const&,float const&>(a3, a3[1], v4 + 8, (v4 + 5), v4 + 16);
          result = (v7 + 40);
        }

        a3[1] = result;
      }

      v8 = v4[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != v3);
  }

  return result;
}

void sub_1B57DCBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void quasar::LmeDataFactoryBase::PronSet::clear(char **this)
{
  v2 = (this + 1);
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(this, this[1]);
  *this = v2;
  this[2] = 0;
  *v2 = 0;
}

uint64_t quasar::LmeDataFactoryBase::PronSet::toString(void *a1, int a2, uint64_t a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
  v8 = *a1;
  v6 = a1 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 1;
    do
    {
      if ((v9 & 1) == 0)
      {
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v11, v12);
      }

      if (a2)
      {
        v13 = quasar::PronTypeToString(*(v7 + 8));
        v14 = strlen(v13);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v13, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " ", 1);
        v16 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
      }

      v17 = *(v7 + 63);
      if (v17 >= 0)
      {
        v18 = (v7 + 5);
      }

      else
      {
        v18 = v7[5];
      }

      if (v17 >= 0)
      {
        v19 = *(v7 + 63);
      }

      else
      {
        v19 = v7[6];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v18, v19);
      v20 = v7[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v7[2];
          v22 = *v21 == v7;
          v7 = v21;
        }

        while (!v22);
      }

      v9 = 0;
      v7 = v21;
    }

    while (v21 != v6);
  }

  std::stringbuf::str();
  v24 = *MEMORY[0x1E69E54E8];
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v25 = MEMORY[0x1E69E5548] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v26);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v28);
}

void sub_1B57DCE68(_Unwind_Exception *a1, uint64_t a2, ...)
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
  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va1);
  _Unwind_Resume(a1);
}

double quasar::LmeDataFactoryBase::Word::Word(quasar::LmeDataFactoryBase::Word *this)
{
  *(this + 9) = 0;
  *(this + 8) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  *(this + 7) = this + 64;
  return result;
}

std::string *quasar::LmeDataFactoryBase::Word::Word(std::string *this, __int128 *a2, __int128 *a3, int a4, uint64_t *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v10;
  }

  LODWORD(this[2].__r_.__value_.__l.__data_) = a4;
  quasar::LmeDataFactoryBase::PronSet::PronSet(&this[2].__r_.__value_.__l.__size_, a5);
  return this;
}

void sub_1B57DCF54(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *quasar::LmeDataFactoryBase::Word::Word(std::string *this, __int128 *a2, __int128 *a3, int a4, void *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v10;
  }

  LODWORD(this[2].__r_.__value_.__l.__data_) = a4;
  quasar::LmeDataFactoryBase::PronSet::PronSet(&this[2].__r_.__value_.__l.__size_, a5);
  return this;
}

void sub_1B57DD028(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *quasar::LmeDataFactoryBase::Word::Word(std::string *this, __int128 *a2, __int128 *a3, int a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v10;
  }

  LODWORD(this[2].__r_.__value_.__l.__data_) = a4;
  std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100](&this[2].__r_.__value_.__l.__size_, a5);
  return this;
}

void sub_1B57DD0FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *quasar::LmeDataFactoryBase::Word::Word(std::string *this, __int128 *a2, __int128 *a3, int a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v8;
  }

  LODWORD(this[2].__r_.__value_.__l.__data_) = a4;
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__l.__size_ = &this[2].__r_.__value_.__r.__words[2];
  return this;
}

void sub_1B57DD1D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B57DD324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *quasar::lmeTypeString(unsigned int a1)
{
  if (a1 >= 4)
  {
    memset(v4, 0, sizeof(v4));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Unknown LmeType: ", 17);
    MEMORY[0x1B8C84C00](v2, a1);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v4);
  }

  return off_1E7C1BED8[a1];
}

void *quasar::operator<<(void *a1, unsigned int a2)
{
  v3 = quasar::lmeTypeString(a2);
  v4 = strlen(v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
  return a1;
}

uint64_t quasar::lmeTypeFromString(uint64_t a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v2 = *(a1 + 23);
    if (v2 != 6)
    {
      if (v2 != 7)
      {
        v3 = a1;
        if (v2 != 8)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      if (*a1 != 2054845762 || *(a1 + 3) != 1701661818)
      {
        goto LABEL_43;
      }

      return 2;
    }

    if (*a1 != 1282699073 || *(a1 + 4) != 25965)
    {
      if (*a1 != 1282697546 || *(a1 + 4) != 25965)
      {
        goto LABEL_43;
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 8) == 6 && **a1 == 1282699073 && *(*a1 + 4) == 25965)
  {
    return 0;
  }

  if (*(a1 + 8) == 6 && **a1 == 1282697546 && *(*a1 + 4) == 25965)
  {
    return 1;
  }

  v6 = *(a1 + 8);
  if (v6 != 8)
  {
    if (v6 != 7)
    {
      goto LABEL_43;
    }

    if (**a1 != 2054845762 || *(*a1 + 3) != 1701661818)
    {
      goto LABEL_43;
    }

    return 2;
  }

  v3 = *a1;
LABEL_42:
  if (*v3 == 0x656D4C7465736E55)
  {
    return 3;
  }

LABEL_43:
  if (quasar::gLogLevel >= 2)
  {
    memset(v16, 0, sizeof(v16));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Unknown LmeType: ", 17);
    v13 = *(a1 + 23);
    if (v13 >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = *a1;
    }

    if (v13 >= 0)
    {
      v15 = *(a1 + 23);
    }

    else
    {
      v15 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(v16);
  }

  return 4;
}

void sub_1B57DD73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void **quasar::LmeDataStreams::addLmeContainer(void **result, signed int a2, __int128 *a3)
{
  v33 = a2;
  if (a2 != 4)
  {
    v4 = *result;
    v5 = result[1];
    if (*result != v5)
    {
      while (*v4 != a2)
      {
        if (++v4 == v5)
        {
          goto LABEL_5;
        }
      }
    }

    if (v4 == v5)
    {
LABEL_5:
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
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v16);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "lmeType: ", 9);
      v8 = quasar::operator<<(v7, a2);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, " is not listed in lmeTypeInOffsetOrder.");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v16);
    }

    v11 = result[4];
    v9 = result + 4;
    v10 = v11;
    v12 = (v9 - 1);
    if (!v11)
    {
      goto LABEL_14;
    }

    v13 = v9;
    do
    {
      if (*(v10 + 8) >= a2)
      {
        v13 = v10;
      }

      v10 = v10[*(v10 + 8) < a2];
    }

    while (v10);
    if (v13 == v9 || *(v13 + 8) > a2)
    {
LABEL_14:
      *&v17 = 0;
      v34 = &v33;
      v14 = std::__tree<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v9 - 1), &v33);
      std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate(v14 + 5);
      *(v14 + 5) = 0uLL;
      v14[7] = v17;
      *&v17 = 0;
      v16 = 0uLL;
      v35 = &v16;
      std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v35);
    }

    *&v16 = &v33;
    v15 = std::__tree<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v12, &v33);
    return std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](v15 + 5, a3);
  }

  return result;
}

void sub_1B57DD918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 40) = &a9;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100]((v9 - 40));
  _Unwind_Resume(a1);
}

void quasar::LmeDataStreams::getLmeStreams(int **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *this;
  v3 = this[1];
  if (*this != v3)
  {
    v5 = this + 4;
    do
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = *v2;
        v8 = v5;
        do
        {
          if (*(v6 + 32) >= v7)
          {
            v8 = v6;
          }

          v6 = *(v6 + 8 * (*(v6 + 32) < v7));
        }

        while (v6);
        if (v8 != v5 && v7 >= *(v8 + 8))
        {
          v9 = v8[5];
          v10 = v8[6];
          while (v9 != v10)
          {
            v11 = v9[1];
            *&v12 = *v9;
            *(&v12 + 1) = v11;
            if (v11)
            {
              atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
            }

            std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](a2, &v12);
            if (*(&v12 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
            }

            v9 += 2;
          }
        }
      }

      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_1B57DDA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::LmeDataFactoryBase::LmeType>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::LmeType const*,quasar::LmeDataFactoryBase::LmeType const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B57DDAA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__emplace_unique_key_args<std::pair<quasar::PronType,std::string>,std::pair<quasar::PronType,std::string>,float &>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__find_equal<std::pair<quasar::PronType,std::string>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__shared_ptr_emplace<quasar::LmeContainer>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::LmeData> &,std::string const&,quasar::LmeDataFactoryBase::LmeType &,std::allocator<quasar::LmeContainer>,0>(void *a1, void *a2, __int128 *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D04190;
  std::allocator<quasar::LmeContainer>::construct[abi:ne200100]<quasar::LmeContainer,std::shared_ptr<quasar::LmeData> &,std::string const&,quasar::LmeDataFactoryBase::LmeType &>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void std::allocator<quasar::LmeContainer>::construct[abi:ne200100]<quasar::LmeContainer,std::shared_ptr<quasar::LmeData> &,std::string const&,quasar::LmeDataFactoryBase::LmeType &>(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, int *a5)
{
  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::LmeContainer::LmeContainer(a2, v6, a4, *a5);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1B57DDCFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *quasar::replaceAll(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 23);
  v6 = *a2;
  if (v5 >= 0)
  {
    v6 = a2;
  }

  if (v5 < 0)
  {
    v5 = a2[1];
  }

  *&v16 = v6;
  *(&v16 + 1) = v6 + v5;
  v7 = *(a3 + 23);
  v8 = *a3;
  v9 = *(a3 + 8);
  v18 = v16;
  v19 = v17;
  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 < 0)
  {
    v10 = *(a1 + 8);
  }

  result = boost::algorithm::detail::first_finderF<char const*,boost::algorithm::is_equal>::operator()<std::__wrap_iter<char *>>(&v16, v11, &v11[v10]);
  if (result != v13)
  {
    if ((v7 & 0x80u) == 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = v8;
    }

    if ((v7 & 0x80u) == 0)
    {
      v15 = v7;
    }

    else
    {
      v15 = v9;
    }

    v20 = v18;
    v21 = v19;
    return boost::algorithm::detail::find_format_all_impl2<std::string,boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_equal>,boost::algorithm::detail::const_formatF<boost::iterator_range<std::__wrap_iter<char const*>>>,boost::iterator_range<std::__wrap_iter<char *>>,boost::iterator_range<std::__wrap_iter<char const*>>>(a1, &v20, v14, &v14[v15], result, v13, v14, &v14[v15]);
  }

  return result;
}

void boost::algorithm::replace_first<std::string,std::string,std::string>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 23);
  v6 = *a2;
  if (v5 >= 0)
  {
    v6 = a2;
  }

  if (v5 < 0)
  {
    v5 = *(a2 + 8);
  }

  v19[0] = v6;
  v19[1] = &v6[v5];
  v7 = *(a3 + 23);
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 < 0)
  {
    v10 = *(a1 + 8);
  }

  v12 = boost::algorithm::detail::first_finderF<char const*,boost::algorithm::is_equal>::operator()<std::__wrap_iter<char *>>(v19, v11, &v11[v10]);
  v14 = v13;
  if (v12 != v13)
  {
    if ((v7 & 0x80u) == 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = v8;
    }

    if ((v7 & 0x80u) == 0)
    {
      v16 = v7;
    }

    else
    {
      v16 = v9;
    }

    std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, v15, &v15[v16], v16);
    std::string::replace[abi:ne200100](a1, v12, v14, __p);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B57DDF34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::algorithm::replace_last<std::string,std::string,std::string>(std::string *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  v4 = *a2;
  if (v3 >= 0)
  {
    v4 = a2;
  }

  if (v3 < 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  v9 = a1->__r_.__value_.__r.__words[0];
  size = a1->__r_.__value_.__l.__size_;
  if (v8 >= 0)
  {
    v9 = a1;
  }

  if (v8 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  if (v3)
  {
    v12 = v9 + size;
    v13 = 1;
    v14 = v12;
    while (2)
    {
      if (v14 != v9)
      {
        v15 = 0;
        v16 = v14 - 1;
        v17 = (v4 + v13);
        while (1)
        {
          v18 = v14 + v15;
          if (v3 == v15)
          {
            v19 = v18 - 1;
            goto LABEL_27;
          }

          if (*(v18 - 1) != *(v4 + v15))
          {
            break;
          }

          if (v13 == ++v15)
          {
            v19 = v12;
            goto LABEL_24;
          }
        }

        v17 = (v4 + v15);
        v19 = v14 + v15 - 1;
LABEL_24:
        ++v13;
        --v14;
        if (v17 != (v4 + v3))
        {
          continue;
        }

LABEL_27:
        if (v16 != v19)
        {
          std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, v6, &v6[v7], v7);
          std::string::replace[abi:ne200100](a1, v16, v19, __p);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      break;
    }
  }
}

void sub_1B57DE088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *quasar::eraseAll(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 23);
  v4 = *a2;
  if (v3 >= 0)
  {
    v4 = a2;
  }

  if (v3 < 0)
  {
    v3 = a2[1];
  }

  *&v9 = v4;
  *(&v9 + 1) = v4 + v3;
  v11 = v9;
  v12 = v10;
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 < 0)
  {
    v5 = *(a1 + 8);
  }

  result = boost::algorithm::detail::first_finderF<char const*,boost::algorithm::is_equal>::operator()<std::__wrap_iter<char *>>(&v9, v6, &v6[v5]);
  if (result != v8)
  {
    v13 = v11;
    v14 = v12;
    return boost::algorithm::detail::find_format_all_impl2<std::string,boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_equal>,boost::algorithm::detail::empty_formatF<char>,boost::iterator_range<std::__wrap_iter<char *>>,boost::algorithm::detail::empty_container<char>>(a1, &v13, result, v8);
  }

  return result;
}

void quasar::toUpper(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v4 = v3;
  v5 = (a2 + v3);
  if (v4 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = (*a2 + *(a2 + 8));
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  while (v7 != v6)
  {
    *v7 = __toupper(*v7);
    ++v7;
  }
}

void sub_1B57DE204(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::toUpper(uint64_t a1@<X0>, const std::locale *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v7 = *(a1 + 23);
  if (v7 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 23);
  }

  else
  {
    v9 = *(a1 + 8);
  }

  std::wstring_convert<std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::from_bytes(a3, v8, (v8 + v9), &__p);
  if ((v20 & 0x80u) == 0)
  {
    v10 = &__p + 4 * v20;
  }

  else
  {
    v10 = __p + 4 * v19;
  }

  if ((v20 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  std::locale::locale(&v17, a2);
  if (p_p != v10)
  {
    v12 = MEMORY[0x1E69E5320];
    do
    {
      v13 = *p_p;
      v14 = std::locale::use_facet(&v17, v12);
      *p_p = (v14->__vftable[2].~facet_0)(v14, v13);
      p_p += 4;
    }

    while (p_p != v10);
  }

  std::locale::~locale(&v17);
  v15 = v20;
  if ((v20 & 0x80u) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p;
  }

  if ((v20 & 0x80u) != 0)
  {
    v15 = v19;
  }

  std::wstring_convert<std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::to_bytes(a3, v16, (v16 + 4 * v15), a4);
  if (v20 < 0)
  {
    operator delete(__p);
  }
}

void sub_1B57DE354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::toLower(uint64_t a1@<X0>, const std::locale *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v7 = *(a1 + 23);
  if (v7 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 23);
  }

  else
  {
    v9 = *(a1 + 8);
  }

  std::wstring_convert<std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::from_bytes(a3, v8, (v8 + v9), &__p);
  if ((v20 & 0x80u) == 0)
  {
    v10 = &__p + 4 * v20;
  }

  else
  {
    v10 = __p + 4 * v19;
  }

  if ((v20 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  std::locale::locale(&v17, a2);
  if (p_p != v10)
  {
    v12 = MEMORY[0x1E69E5320];
    do
    {
      v13 = *p_p;
      v14 = std::locale::use_facet(&v17, v12);
      *p_p = (v14->__vftable[3].~facet)(v14, v13);
      p_p += 4;
    }

    while (p_p != v10);
  }

  std::locale::~locale(&v17);
  v15 = v20;
  if ((v20 & 0x80u) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p;
  }

  if ((v20 & 0x80u) != 0)
  {
    v15 = v19;
  }

  std::wstring_convert<std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::to_bytes(a3, v16, (v16 + 4 * v15), a4);
  if (v20 < 0)
  {
    operator delete(__p);
  }
}

void sub_1B57DE4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *quasar::removeSpaces@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
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

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v11 = 32;
  v5 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v4, v4 + size, &v11);
  v6 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v7 = v6;
  v8 = a2 + v6;
  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
    v9 = a2->__r_.__value_.__r.__words[0];
  }

  return std::string::erase(a2, &v5[-v9], v8 - v5);
}

void sub_1B57DE58C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

void quasar::copyAndTrim(uint64_t a1@<X0>, std::string *a2@<X8>)
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

  quasar::trim(a2);
}

void sub_1B57DE664(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::hasWhitespace(char *a1)
{
  v1 = a1[23];
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (!v1)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = MEMORY[0x1E69E9830];
  do
  {
    v6 = *v4;
    if ((v6 & 0x80000000) != 0)
    {
      v7 = __maskrune(v6, 0x4000uLL);
    }

    else
    {
      v7 = *(v5 + 4 * v6 + 60) & 0x4000;
    }

    result = v7 != 0;
    if (v7)
    {
      break;
    }

    ++v4;
    v9 = a1[23];
    v10 = (v9 & 0x80u) == 0 ? a1 : *a1;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a1 + 1);
    }
  }

  while (v4 != &v10[v9]);
  return result;
}

std::string *quasar::addWord(std::string *this, uint64_t a2, uint64_t a3)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    if (v6 >= 0)
    {
      v8 = *(a3 + 23);
    }

    else
    {
      v8 = *(a3 + 8);
    }

    std::string::append(this, v7, v8);
  }

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

  return std::string::append(this, v10, v11);
}

uint64_t quasar::wordIsNativeScriptForLocale(quasar *this, const char *a2, const char *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v32 = 0;
  uloc_addLikelySubtags();
  uloc_getScript();
  memset(&v31, 0, sizeof(v31));
  std::vector<int>::resize(&v31, 0x20uLL);
  Code = uscript_getCode();
  v6 = 0;
  if (v32 > 0 || !Code)
  {
    goto LABEL_69;
  }

  std::vector<int>::resize(&v31, Code);
  std::set<UScriptCode>::set[abi:ne200100]<std::__wrap_iter<UScriptCode*>>(&v29, v31.__begin_, v31.__end_);
  v7 = v30[0];
  if (v30[0])
  {
    v8 = v30;
    v9 = v30[0];
    do
    {
      if (v9[7] >= 74)
      {
        v8 = v9;
      }

      v9 = *&v9[2 * (v9[7] < 74)];
    }

    while (v9);
    if (v8 != v30 && v8[7] <= 74)
    {
      goto LABEL_18;
    }

    v10 = v30;
    v11 = v30[0];
    do
    {
      if (v11[7] >= 73)
      {
        v10 = v11;
      }

      v11 = *&v11[2 * (v11[7] < 73)];
    }

    while (v11);
    if (v10 != v30 && v10[7] <= 73)
    {
LABEL_18:
      v28 = 17;
      std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v29, &v28);
      v7 = v30[0];
    }

    if (v7)
    {
      v12 = v30;
      do
      {
        if (v7[7] >= 105)
        {
          v12 = v7;
        }

        v7 = *&v7[2 * (v7[7] < 105)];
      }

      while (v7);
      if (v12 != v30 && v12[7] <= 105)
      {
        v28 = 20;
        std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v29, &v28);
        v28 = 22;
        std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v29, &v28);
        v28 = 17;
        std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v29, &v28);
      }
    }
  }

  v13 = strlen(this);
  if (v13 < 1)
  {
LABEL_66:
    v6 = 1;
    goto LABEL_68;
  }

  LODWORD(v14) = 0;
  while (1)
  {
    v15 = v14;
    v16 = *(this + v14);
    v14 = v14 + 1;
    v17 = v16;
    if (v16 < 0)
    {
      if (v14 == v13)
      {
        goto LABEL_31;
      }

      if (v16 < 0xE0u)
      {
        if (v16 < 0xC2u)
        {
LABEL_51:
          v17 = -1;
          goto LABEL_52;
        }

        v20 = v16 & 0x1F;
      }

      else
      {
        if (v16 > 0xEFu)
        {
          if (v16 > 0xF4u)
          {
            goto LABEL_51;
          }

          v23 = *(this + v14);
          if (((byte_1B5B2522E[v23 >> 4] >> (v16 + 16)) & 1) == 0)
          {
            goto LABEL_51;
          }

          v14 = v15 + 2;
          if (v15 + 2 == v13)
          {
            goto LABEL_31;
          }

          v19 = *(this + v14) ^ 0x80;
          if (v19 > 0x3F)
          {
            v17 = -1;
            goto LABEL_52;
          }

          LODWORD(v18) = v23 & 0x3F | ((v17 - 240) << 6);
        }

        else
        {
          v18 = v16 & 0xF;
          if (((a00000000000000[v18] >> (*(this + v14) >> 5)) & 1) == 0)
          {
            goto LABEL_51;
          }

          v19 = *(this + v14) & 0x3F;
        }

        LODWORD(v14) = v14 + 1;
        if (v14 == v13)
        {
LABEL_31:
          v17 = -1;
          LODWORD(v14) = v13;
          goto LABEL_52;
        }

        v20 = v19 | (v18 << 6);
      }

      v21 = *(this + v14) ^ 0x80;
      v22 = v21 | (v20 << 6);
      if (v21 <= 0x3F)
      {
        v17 = v22;
      }

      else
      {
        v17 = -1;
      }

      if (v21 <= 0x3F)
      {
        LODWORD(v14) = v14 + 1;
      }
    }

LABEL_52:
    if (!u_isUWhiteSpace(v17))
    {
      v24 = v29;
      if (v30 != v29)
      {
        while (!uscript_hasScript())
        {
          v25 = v24[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v24[2];
              v27 = *v26 == v24;
              v24 = v26;
            }

            while (!v27);
          }

          v24 = v26;
          if (v26 == v30)
          {
            goto LABEL_67;
          }
        }
      }

      if (v24 == v30)
      {
        break;
      }
    }

    if (v14 >= v13)
    {
      goto LABEL_66;
    }
  }

LABEL_67:
  v6 = 0;
LABEL_68:
  std::__tree<int>::destroy(&v29, v30[0]);
LABEL_69:
  if (v31.__begin_)
  {
    v31.__end_ = v31.__begin_;
    operator delete(v31.__begin_);
  }

  return v6;
}

void sub_1B57DEBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, void *__p, uint64_t a14)
{
  std::__tree<int>::destroy(&a10, a11);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *quasar::utf8::substr@<X0>(std::string *__str@<X0>, int a2@<W1>, int a3@<W2>, std::string *a4@<X8>)
{
  v6 = a2 & ~(a2 >> 31);
  v7 = ((a2 & (a2 >> 31)) + a3) & ~(((a2 & (a2 >> 31)) + a3) >> 31);
  v8 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v9 = v8;
  size = __str->__r_.__value_.__l.__size_;
  if ((v8 & 0x80u) == 0)
  {
    v11 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __str->__r_.__value_.__l.__size_;
  }

  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = __str->__r_.__value_.__r.__words[0];
    if ((v8 & 0x80u) == 0)
    {
      v14 = __str;
    }

    v15 = &v14->__r_.__value_.__s.__data_[1];
    v16 = -1;
    while (1)
    {
      if (v12 == v6)
      {
        v16 = v13;
      }

      if (v7 == v12 - v6)
      {
        break;
      }

      ++v12;
      v17 = v13;
      v18 = v13 + 1;
      if (v11 > v18)
      {
        LODWORD(v18) = v11;
      }

      while (1)
      {
        v13 = v17 + 1;
        if (v11 <= v17 + 1)
        {
          break;
        }

        v19 = v15[v17++] & 0xC0;
        if (v19 != 128)
        {
          goto LABEL_17;
        }
      }

      v13 = v18;
LABEL_17:
      if (v11 <= v13)
      {
        v20 = -1;
        goto LABEL_23;
      }
    }

    v12 = v6 + v7;
    v20 = v13;
LABEL_23:
    if (v7 == v12 - v6)
    {
      v21 = v13;
    }

    else
    {
      v21 = v20;
    }

    if ((v16 & 0x80000000) == 0)
    {
      if ((v21 & 0x80000000) == 0)
      {
        return std::string::basic_string(a4, __str, v16, v21 - v16, &v23);
      }

      goto LABEL_35;
    }
  }

  else if (v7 + v6)
  {
    v21 = -1;
  }

  else
  {
    v21 = 0;
  }

  if (quasar::gLogLevel >= 2)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Incorrect substr range start, or incorrect UTF8 string", 54);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(&v23);
    v8 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    size = __str->__r_.__value_.__l.__size_;
    v9 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  if ((v9 & 0x80u) == 0)
  {
    v16 = v8;
  }

  else
  {
    v16 = size;
  }

  if (v21 < 0)
  {
LABEL_35:
    if (quasar::gLogLevel >= 2)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Incorrect substr range end, or incorrect UTF8 string", 52);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v23);
      v9 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      size = __str->__r_.__value_.__l.__size_;
    }

    if ((v9 & 0x80u) == 0)
    {
      v21 = v9;
    }

    else
    {
      v21 = size;
    }
  }

  return std::string::basic_string(a4, __str, v16, v21 - v16, &v23);
}

_BYTE *quasar::utf8::codepointsCtr@<X0>(_BYTE *result@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, unint64_t a5@<X8>)
{
  v5 = a5;
  LODWORD(a5) = a4 - a3;
  if (a4 < a3 || ((a4 | a3) & 0x80000000) != 0)
  {
    v13 = "Provided byte range is incorrect";
    goto LABEL_23;
  }

  if (a2 < a3)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (a2 - a3 >= a5)
  {
    a5 = a5;
  }

  else
  {
    a5 = a2 - a3;
  }

  if (a5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = result[a3 + v6];
      if ((v9 & 0xF8) == 0xF0)
      {
        v10 = 4;
      }

      else
      {
        v11 = v9 & 0xF0;
        if ((v9 & 0xE0) == 0xC0)
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        if (v11 == 224)
        {
          v10 = 3;
        }
      }

      v6 = (v7 + v10);
      ++v8;
      v7 = v6;
    }

    while (a5 > v6);
    if (a5 != v6)
    {
      v13 = "Byte-range queried for number of codepoints seems to intersect a codepoint";
LABEL_23:
      result = std::string::basic_string[abi:ne200100]<0>(v5, v13);
      v12 = 0;
      goto LABEL_24;
    }

    *v5 = v8;
  }

  else
  {
    *v5 = 0;
  }

  v12 = 1;
LABEL_24:
  v5[24] = v12;
  return result;
}

void quasar::utf8::utf8ToUtf16(char *src@<X0>, uint64_t srcLength@<X1>, uint64_t a3@<X8>)
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (!srcLength)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
LABEL_17:
    *(a3 + 24) = 1;
    return;
  }

  v4 = srcLength;
  *pErrorCode = 0;
  u_strFromUTF8(0, 0, pErrorCode, src, srcLength, &pErrorCode[1]);
  if (pErrorCode[1] != U_BUFFER_OVERFLOW_ERROR && pErrorCode[1] >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    std::string::basic_string[abi:ne200100]<0>(&dest, "Unable to calculate size of the string converting to UTF16: ");
    v13 = u_errorName(pErrorCode[1]);
    v14 = std::string::append(&dest, v13);
    v15 = v14->__r_.__value_.__r.__words[0];
    v22[0] = v14->__r_.__value_.__l.__size_;
    *(v22 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v20.__r_.__value_.__r.__words[0] = v22[0];
    *(v20.__r_.__value_.__r.__words + 7) = *(v22 + 7);
    *(a3 + 15) = *(v22 + 7);
    v17 = v20.__r_.__value_.__r.__words[0];
    *a3 = v15;
    *(a3 + 8) = v17;
    *(a3 + 23) = v16;
    if (SHIBYTE(dest.__r_.__value_.__r.__words[2]) < 0)
    {
      v12 = dest.__r_.__value_.__r.__words[0];
      goto LABEL_15;
    }

    return;
  }

  LOWORD(v20.__r_.__value_.__l.__data_) = 0;
  std::vector<unsigned short>::vector[abi:ne200100](&dest, pErrorCode[0]);
  pErrorCode[1] = U_ZERO_ERROR;
  u_strFromUTF8(dest.__r_.__value_.__l.__data_, pErrorCode[0], pErrorCode, src, v4, &pErrorCode[1]);
  if (pErrorCode[1] < U_ILLEGAL_ARGUMENT_ERROR)
  {
    *a3 = dest;
    goto LABEL_17;
  }

  std::string::basic_string[abi:ne200100]<0>(&v20, "Unable to convert UTF8 string to UTF16: ");
  v7 = u_errorName(pErrorCode[1]);
  v8 = std::string::append(&v20, v7);
  v9 = v8->__r_.__value_.__r.__words[0];
  v21[0] = v8->__r_.__value_.__l.__size_;
  *(v21 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
  v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v22[0] = v21[0];
  *(v22 + 7) = *(v21 + 7);
  *(a3 + 15) = *(v21 + 7);
  v11 = v22[0];
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 23) = v10;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v12 = dest.__r_.__value_.__r.__words[0];
  if (dest.__r_.__value_.__r.__words[0])
  {
    dest.__r_.__value_.__l.__size_ = dest.__r_.__value_.__r.__words[0];
LABEL_15:
    operator delete(v12);
  }
}

void sub_1B57DF138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::utf8::utf16ToLower(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*a1 == v4)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
LABEL_17:
    *(a2 + 24) = 1;
    return;
  }

  pErrorCode = U_ZERO_ERROR;
  v6 = u_strToLower(0, 0, v3, (v4 - v3) >> 1, "", &pErrorCode);
  if (pErrorCode != U_BUFFER_OVERFLOW_ERROR && pErrorCode >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    std::string::basic_string[abi:ne200100]<0>(&dest, "Unable to calculate size of the converted to lower case string: ");
    v15 = u_errorName(pErrorCode);
    v16 = std::string::append(&dest, v15);
    v17 = v16->__r_.__value_.__r.__words[0];
    v24[0] = v16->__r_.__value_.__l.__size_;
    *(v24 + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
    v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v22.__r_.__value_.__r.__words[0] = v24[0];
    *(v22.__r_.__value_.__r.__words + 7) = *(v24 + 7);
    *(a2 + 15) = *(v24 + 7);
    v19 = v22.__r_.__value_.__r.__words[0];
    *a2 = v17;
    *(a2 + 8) = v19;
    *(a2 + 23) = v18;
    if (SHIBYTE(dest.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = dest.__r_.__value_.__r.__words[0];
      goto LABEL_15;
    }

    return;
  }

  v8 = v6;
  LOWORD(v22.__r_.__value_.__l.__data_) = 0;
  std::vector<unsigned short>::vector[abi:ne200100](&dest, v6);
  pErrorCode = U_ZERO_ERROR;
  u_strToLower(dest.__r_.__value_.__l.__data_, v8, *a1, (*(a1 + 8) - *a1) >> 1, "", &pErrorCode);
  if (pErrorCode < U_ILLEGAL_ARGUMENT_ERROR)
  {
    *a2 = dest;
    goto LABEL_17;
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "Unable to convert string to lower case:");
  v9 = u_errorName(pErrorCode);
  v10 = std::string::append(&v22, v9);
  v11 = v10->__r_.__value_.__r.__words[0];
  v23[0] = v10->__r_.__value_.__l.__size_;
  *(v23 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
  v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v24[0] = v23[0];
  *(v24 + 7) = *(v23 + 7);
  *(a2 + 15) = *(v23 + 7);
  v13 = v24[0];
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 23) = v12;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v14 = dest.__r_.__value_.__r.__words[0];
  if (dest.__r_.__value_.__r.__words[0])
  {
    dest.__r_.__value_.__l.__size_ = dest.__r_.__value_.__r.__words[0];
LABEL_15:
    operator delete(v14);
  }
}

void sub_1B57DF398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::utf8::utf16ToUpper(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*a1 == v4)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
LABEL_17:
    *(a2 + 24) = 1;
    return;
  }

  pErrorCode = U_ZERO_ERROR;
  v6 = u_strToUpper(0, 0, v3, (v4 - v3) >> 1, "", &pErrorCode);
  if (pErrorCode != U_BUFFER_OVERFLOW_ERROR && pErrorCode >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    std::string::basic_string[abi:ne200100]<0>(&dest, "Unable to calculate size of the converted to upper case string: ");
    v15 = u_errorName(pErrorCode);
    v16 = std::string::append(&dest, v15);
    v17 = v16->__r_.__value_.__r.__words[0];
    v24[0] = v16->__r_.__value_.__l.__size_;
    *(v24 + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
    v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v22.__r_.__value_.__r.__words[0] = v24[0];
    *(v22.__r_.__value_.__r.__words + 7) = *(v24 + 7);
    *(a2 + 15) = *(v24 + 7);
    v19 = v22.__r_.__value_.__r.__words[0];
    *a2 = v17;
    *(a2 + 8) = v19;
    *(a2 + 23) = v18;
    if (SHIBYTE(dest.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = dest.__r_.__value_.__r.__words[0];
      goto LABEL_15;
    }

    return;
  }

  v8 = v6;
  LOWORD(v22.__r_.__value_.__l.__data_) = 0;
  std::vector<unsigned short>::vector[abi:ne200100](&dest, v6);
  pErrorCode = U_ZERO_ERROR;
  u_strToUpper(dest.__r_.__value_.__l.__data_, v8, *a1, (*(a1 + 8) - *a1) >> 1, "", &pErrorCode);
  if (pErrorCode < U_ILLEGAL_ARGUMENT_ERROR)
  {
    *a2 = dest;
    goto LABEL_17;
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "Unable to convert string to upper case:");
  v9 = u_errorName(pErrorCode);
  v10 = std::string::append(&v22, v9);
  v11 = v10->__r_.__value_.__r.__words[0];
  v23[0] = v10->__r_.__value_.__l.__size_;
  *(v23 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
  v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v24[0] = v23[0];
  *(v24 + 7) = *(v23 + 7);
  *(a2 + 15) = *(v23 + 7);
  v13 = v24[0];
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 23) = v12;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v14 = dest.__r_.__value_.__r.__words[0];
  if (dest.__r_.__value_.__r.__words[0])
  {
    dest.__r_.__value_.__l.__size_ = dest.__r_.__value_.__r.__words[0];
LABEL_15:
    operator delete(v14);
  }
}

void sub_1B57DF5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::utf8::utf16ToTitle(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*a1 == v4)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
LABEL_17:
    *(a2 + 24) = 1;
    return;
  }

  pErrorCode = U_ZERO_ERROR;
  v6 = u_strToTitle(0, 0, v3, (v4 - v3) >> 1, 0, "", &pErrorCode);
  if (pErrorCode != U_BUFFER_OVERFLOW_ERROR && pErrorCode >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    std::string::basic_string[abi:ne200100]<0>(&dest, "Unable to calculate size of the converted to title case string: ");
    v15 = u_errorName(pErrorCode);
    v16 = std::string::append(&dest, v15);
    v17 = v16->__r_.__value_.__r.__words[0];
    v24[0] = v16->__r_.__value_.__l.__size_;
    *(v24 + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
    v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v22.__r_.__value_.__r.__words[0] = v24[0];
    *(v22.__r_.__value_.__r.__words + 7) = *(v24 + 7);
    *(a2 + 15) = *(v24 + 7);
    v19 = v22.__r_.__value_.__r.__words[0];
    *a2 = v17;
    *(a2 + 8) = v19;
    *(a2 + 23) = v18;
    if (SHIBYTE(dest.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = dest.__r_.__value_.__r.__words[0];
      goto LABEL_15;
    }

    return;
  }

  v8 = v6;
  LOWORD(v22.__r_.__value_.__l.__data_) = 0;
  std::vector<unsigned short>::vector[abi:ne200100](&dest, v6);
  pErrorCode = U_ZERO_ERROR;
  u_strToTitle(dest.__r_.__value_.__l.__data_, v8, *a1, (*(a1 + 8) - *a1) >> 1, 0, "", &pErrorCode);
  if (pErrorCode < U_ILLEGAL_ARGUMENT_ERROR)
  {
    *a2 = dest;
    goto LABEL_17;
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "Unable to convert string to title case:");
  v9 = u_errorName(pErrorCode);
  v10 = std::string::append(&v22, v9);
  v11 = v10->__r_.__value_.__r.__words[0];
  v23[0] = v10->__r_.__value_.__l.__size_;
  *(v23 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
  v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v24[0] = v23[0];
  *(v24 + 7) = *(v23 + 7);
  *(a2 + 15) = *(v23 + 7);
  v13 = v24[0];
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 23) = v12;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v14 = dest.__r_.__value_.__r.__words[0];
  if (dest.__r_.__value_.__r.__words[0])
  {
    dest.__r_.__value_.__l.__size_ = dest.__r_.__value_.__r.__words[0];
LABEL_15:
    operator delete(v14);
  }
}

void sub_1B57DF860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::utf8::utf16ToUtf8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*a1 == v4)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    goto LABEL_17;
  }

  *pErrorCode = 0;
  u_strToUTF8(0, 0, pErrorCode, v3, (v4 - v3) >> 1, &pErrorCode[1]);
  if (pErrorCode[1] == U_BUFFER_OVERFLOW_ERROR || pErrorCode[1] < U_ILLEGAL_ARGUMENT_ERROR)
  {
    std::string::basic_string[abi:ne200100](&__p, pErrorCode[0], 0);
    pErrorCode[1] = U_ZERO_ERROR;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    u_strToUTF8(p_p, pErrorCode[0], pErrorCode, *a1, (*(a1 + 8) - *a1) >> 1, &pErrorCode[1]);
    if (pErrorCode[1] >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      std::string::basic_string[abi:ne200100]<0>(&v20, "Unable to convert UTF16 string to UTF8: ");
      v8 = u_errorName(pErrorCode[1]);
      v9 = std::string::append(&v20, v8);
      v10 = v9->__r_.__value_.__r.__words[0];
      v21[0] = v9->__r_.__value_.__l.__size_;
      *(v21 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
      v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v22[0] = v21[0];
      *(v22 + 7) = *(v21 + 7);
      *(a2 + 15) = *(v21 + 7);
      v12 = v22[0];
      *a2 = v10;
      *(a2 + 8) = v12;
      *(a2 + 23) = v11;
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      goto LABEL_14;
    }

    *a2 = __p;
LABEL_17:
    *(a2 + 24) = 1;
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "Unable to calculate size of the string converting to UTF8:");
  v13 = u_errorName(pErrorCode[1]);
  v14 = std::string::append(&__p, v13);
  v15 = v14->__r_.__value_.__r.__words[0];
  v22[0] = v14->__r_.__value_.__l.__size_;
  *(v22 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
  v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v20.__r_.__value_.__r.__words[0] = v22[0];
  *(v20.__r_.__value_.__r.__words + 7) = *(v22 + 7);
  *(a2 + 15) = *(v22 + 7);
  v17 = v20.__r_.__value_.__r.__words[0];
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 23) = v16;
LABEL_14:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B57DFAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::utf8::convertToLowerCase@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  quasar::utf8::utf8ToUtf16(a1, a2, &v5);
  if (v7 != 1)
  {
    v8 = v5;
    v9 = v6;
    v6 = 0;
    v5 = 0uLL;
    v10 = 0;
    goto LABEL_5;
  }

  quasar::utf8::utf16ToLower(&v5, &v8);
  if ((v10 & 1) == 0)
  {
LABEL_5:
    *a3 = v8;
    *(a3 + 16) = v9;
    v9 = 0;
    v8 = 0uLL;
    *(a3 + 24) = 0;
    goto LABEL_6;
  }

  quasar::utf8::utf16ToUtf8(&v8, a3);
LABEL_6:
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&v8);
  return tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&v5);
}

void sub_1B57DFBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&a13);
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&a9);
  _Unwind_Resume(a1);
}

uint64_t quasar::utf8::convertToUpperCase@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  quasar::utf8::utf8ToUtf16(a1, a2, &v5);
  if (v7 != 1)
  {
    v8 = v5;
    v9 = v6;
    v6 = 0;
    v5 = 0uLL;
    v10 = 0;
    goto LABEL_5;
  }

  quasar::utf8::utf16ToUpper(&v5, &v8);
  if ((v10 & 1) == 0)
  {
LABEL_5:
    *a3 = v8;
    *(a3 + 16) = v9;
    v9 = 0;
    v8 = 0uLL;
    *(a3 + 24) = 0;
    goto LABEL_6;
  }

  quasar::utf8::utf16ToUtf8(&v8, a3);
LABEL_6:
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&v8);
  return tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&v5);
}

void sub_1B57DFC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&a13);
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&a9);
  _Unwind_Resume(a1);
}

uint64_t quasar::utf8::convertToTitleCase@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  quasar::utf8::utf8ToUtf16(a1, a2, &v5);
  if (v7 != 1)
  {
    v8 = v5;
    v9 = v6;
    v6 = 0;
    v5 = 0uLL;
    v10 = 0;
    goto LABEL_5;
  }

  quasar::utf8::utf16ToTitle(&v5, &v8);
  if ((v10 & 1) == 0)
  {
LABEL_5:
    *a3 = v8;
    *(a3 + 16) = v9;
    v9 = 0;
    v8 = 0uLL;
    *(a3 + 24) = 0;
    goto LABEL_6;
  }

  quasar::utf8::utf16ToUtf8(&v8, a3);
LABEL_6:
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&v8);
  return tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&v5);
}

void sub_1B57DFD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&a13);
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&a9);
  _Unwind_Resume(a1);
}

void quasar::utf8::convertToLowerCaseOrEmpty(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  quasar::utf8::convertToLowerCase(a1, a2, &v8);
  if (v10)
  {
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      *&a3->__r_.__value_.__l.__data_ = v8;
      a3->__r_.__value_.__r.__words[2] = v9;
      return;
    }

    std::string::__init_copy_ctor_external(a3, v8, *(&v8 + 1));
    goto LABEL_15;
  }

  if (quasar::gLogLevel >= 1)
  {
    memset(v7, 0, sizeof(v7));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "convertToLowerCaseOrEmpty: ", 27);
    if (v9 >= 0)
    {
      v5 = &v8;
    }

    else
    {
      v5 = v8;
    }

    if (v9 >= 0)
    {
      v6 = HIBYTE(v9);
    }

    else
    {
      v6 = *(&v8 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v7);
  }

  std::string::basic_string[abi:ne200100]<0>(a3, "");
  if (SHIBYTE(v9) < 0)
  {
LABEL_15:
    operator delete(v8);
  }
}

void sub_1B57DFE60(_Unwind_Exception *exception_object)
{
  if (*(v1 - 25) < 0)
  {
    operator delete(*(v1 - 48));
  }

  _Unwind_Resume(exception_object);
}

void quasar::utf8::convertToLowerCaseOrThrow(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  quasar::utf8::convertToLowerCase(a1, a2, &v9);
  if ((v11 & 1) == 0)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "convertToLowerCaseOrThrow: ", 27);
    if (v10 >= 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9;
    }

    if (v10 >= 0)
    {
      v7 = HIBYTE(v10);
    }

    else
    {
      v7 = *(&v9 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
  }

  if (SHIBYTE(v10) < 0)
  {
    v4 = v9;
    std::string::__init_copy_ctor_external(a3, v9, *(&v9 + 1));

    operator delete(v4);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = v9;
    a3->__r_.__value_.__r.__words[2] = v10;
  }
}

void sub_1B57DFFAC()
{
  if (*(v0 - 41) < 0)
  {
    JUMPOUT(0x1B57DFFB8);
  }

  JUMPOUT(0x1B57DFFC0);
}

void quasar::utf8::convertToUpperCaseOrThrow(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  quasar::utf8::convertToUpperCase(a1, a2, &v9);
  if ((v11 & 1) == 0)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "convertToUpperCaseOrThrow: ", 27);
    if (v10 >= 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9;
    }

    if (v10 >= 0)
    {
      v7 = HIBYTE(v10);
    }

    else
    {
      v7 = *(&v9 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
  }

  if (SHIBYTE(v10) < 0)
  {
    v4 = v9;
    std::string::__init_copy_ctor_external(a3, v9, *(&v9 + 1));

    operator delete(v4);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = v9;
    a3->__r_.__value_.__r.__words[2] = v10;
  }
}

void sub_1B57E00E0()
{
  if (*(v0 - 41) < 0)
  {
    JUMPOUT(0x1B57E00ECLL);
  }

  JUMPOUT(0x1B57E00F4);
}

void quasar::utf8::convertToTitleCaseOrThrow(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  quasar::utf8::convertToTitleCase(a1, a2, &v9);
  if ((v11 & 1) == 0)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "convertToTitleCaseOrThrow: ", 27);
    if (v10 >= 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9;
    }

    if (v10 >= 0)
    {
      v7 = HIBYTE(v10);
    }

    else
    {
      v7 = *(&v9 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
  }

  if (SHIBYTE(v10) < 0)
  {
    v4 = v9;
    std::string::__init_copy_ctor_external(a3, v9, *(&v9 + 1));

    operator delete(v4);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = v9;
    a3->__r_.__value_.__r.__words[2] = v10;
  }
}

void sub_1B57E0214()
{
  if (*(v0 - 41) < 0)
  {
    JUMPOUT(0x1B57E0220);
  }

  JUMPOUT(0x1B57E0228);
}

void sub_1B57E0384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&a16);
  _Unwind_Resume(a1);
}

BOOL quasar::utf8::caseInsensitiveEquals(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (!a2 || !a4)
  {
    return (a2 == 0) ^ (a4 != 0);
  }

  quasar::utf8::utf8ToUtf16(a1, a2, v18);
  v6 = tl::expected<std::vector<unsigned short>,std::string>::value<std::vector<unsigned short>,(void *)0>(v18);
  v7 = *v6;
  v8 = *(v6 + 8);
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 0;
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(v18);
  quasar::utf8::utf8ToUtf16(a3, a4, v18);
  v9 = tl::expected<std::vector<unsigned short>,std::string>::value<std::vector<unsigned short>,(void *)0>(v18);
  v10 = *v9;
  v11 = *(v9 + 8);
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(v18);
  pErrorCode = U_ZERO_ERROR;
  v12 = u_strCaseCompare(v7, (v8 - v7) >> 1, v10, (v11 - v10) >> 1, 0, &pErrorCode);
  if (pErrorCode >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    memset(v18, 0, sizeof(v18));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "caseInsensitiveEquals: ", 23);
    v16 = u_errorName(pErrorCode);
    v17 = strlen(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v18);
  }

  v13 = v12 == 0;
  if (v10)
  {
    operator delete(v10);
  }

  if (v7)
  {
    operator delete(v7);
  }

  return v13;
}

void sub_1B57E06F0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B57E07D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::exception a16)
{
  tl::bad_expected_access<std::string>::~bad_expected_access(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::algorithm::detail::find_format_all_impl2<std::string,boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_equal>,boost::algorithm::detail::const_formatF<boost::iterator_range<std::__wrap_iter<char const*>>>,boost::iterator_range<std::__wrap_iter<char *>>,boost::iterator_range<std::__wrap_iter<char const*>>>(std::string *a1, unsigned __int8 **a2, char *a3, char *a4, unsigned __int8 *a5, unsigned __int8 *a6, char *a7, char *a8)
{
  v8 = a6;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  LODWORD(v10) = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  v11 = a1->__r_.__value_.__r.__words[0];
  if ((v10 & 0x80000000) == 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = a1->__r_.__value_.__r.__words[0];
  }

  if (a5 == a6)
  {
    v13 = v12;
  }

  else
  {
    v16 = a5;
    v13 = v12;
    v20 = v12;
    do
    {
      v12 = v8;
      v13 = boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(&v43, &v40, a1, v13, v20, v16);
      v21 = (v40.i64[1] + 8 * ((v42 + *(&v42 + 1)) >> 12));
      if (v41 == v40.i64[1])
      {
        v22 = 0;
      }

      else
      {
        v22 = *v21 + ((v42 + WORD4(v42)) & 0xFFF);
      }

      std::deque<char>::__insert_bidirectional[abi:ne200100]<std::__wrap_iter<char const*>>(&v40, v21, v22, a7, a8, a8 - a7);
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v24 = a1;
      }

      else
      {
        v24 = a1->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = a1->__r_.__value_.__l.__size_;
      }

      v16 = boost::algorithm::detail::first_finderF<char const*,boost::algorithm::is_equal>::operator()<std::__wrap_iter<char *>>(a2, v12, &v24[size]);
      v8 = v25;
      v20 = v12;
      a7 = a3;
      a8 = a4;
    }

    while (v16 != v25);
    LOBYTE(v10) = *(&a1->__r_.__value_.__s + 23);
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  v10 = v10;
  if ((v10 & 0x80u) == 0)
  {
    v26 = a1;
  }

  else
  {
    v26 = v11;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = a1->__r_.__value_.__l.__size_;
  }

  v27 = boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(&v43, &v40, a1, v13, v12, &v26[v10]);
  v28 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v28 & 0x80u) == 0)
  {
    v29 = a1;
  }

  else
  {
    v29 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v28 & 0x80u) != 0)
  {
    v28 = a1->__r_.__value_.__l.__size_;
  }

  v30 = v29 + v28;
  if (*(&v42 + 1))
  {
    v31 = (v42 >> 9) & 0x7FFFFFFFFFFFF8;
    if (v41 == v40.i64[1])
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v33 = v40.i64[1] + 8 * ((v42 + *(&v42 + 1)) >> 12);
    }

    else
    {
      v32 = ((v42 + *(&v42 + 1)) >> 9) & 0x7FFFFFFFFFFFF8;
      v33 = v40.i64[1] + v32;
      v34 = *(v40.i64[1] + v32) + ((v42 + *(&v42 + 1)) & 0xFFF);
      v35 = ((v42 + *(&v42 + 1)) & 0xFFF) + ((v32 - v31) << 9) - (v42 & 0xFFF);
      v36 = v34;
      v37 = (*(v40.i64[1] + v31) + (v42 & 0xFFF));
      if (v34 == v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = v35;
      }
    }

    std::string::__insert_with_size<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>(a1, v30, (v40.i64[1] + v31), v37, v33, v36, v38);
  }

  else
  {
    std::string::erase(a1, &v27[-v29], v30 - v27);
  }

  return std::deque<char>::~deque[abi:ne200100](&v40);
}

void *std::deque<char>::__insert_bidirectional[abi:ne200100]<std::__wrap_iter<char const*>>(int64x2_t *a1, char *a2, uint64_t a3, char *a4, char *a5, unint64_t a6)
{
  v6 = a6;
  v10 = a1[2].u64[0];
  v11 = v10 >> 12;
  v12 = a1->i64[1];
  v13 = a1[1].i64[0];
  v14 = (v12 + 8 * (v10 >> 12));
  if (v13 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14 + (a1[2].i64[0] & 0xFFF);
  }

  if (a3 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = a3 + ((a2 - v14) << 9) - (v15 + *a2) + *v14;
  }

  v17 = a1[2].i64[1];
  if (v16 >= v17 - v16)
  {
    v20 = ((v13 - v12) << 9) - 1;
    if (v13 == v12)
    {
      v20 = 0;
    }

    v21 = v10 + v17;
    v22 = v20 - v21;
    if (a6 > v22)
    {
      std::deque<char>::__add_back_capacity(a1, a6 - v22);
      v17 = a1[2].i64[1];
      v12 = a1->i64[1];
      v13 = a1[1].i64[0];
      v21 = a1[2].i64[0] + v17;
    }

    v23 = (v12 + 8 * (v21 >> 12));
    if (v13 == v12)
    {
      v24 = 0;
    }

    else
    {
      v24 = (*v23 + (v21 & 0xFFF));
    }

    *&v70 = v12 + 8 * (v21 >> 12);
    *(&v70 + 1) = v24;
    v46 = v17 - v16;
    if (v17 - v16 < v6)
    {
      v47 = &a5[-v6];
      if (v46 < v6 >> 1)
      {
        v47 = a4;
      }

      v48 = &v47[v46];
      if (v48 != a5)
      {
        v49 = v48;
        do
        {
          *v24++ = *v49;
          if (&v24[-*v23] == 4096)
          {
            v50 = v23[1];
            ++v23;
            v24 = v50;
          }

          ++v49;
          ++a1[2].i64[1];
        }

        while (v49 != a5);
      }

      a5 = v48;
      v6 = v17 - v16;
    }

    if (v6)
    {
      v51 = std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator-[abi:ne200100](&v70, v6);
      v53 = v51;
      v54 = v52;
      v55 = *(&v70 + 1);
      if (*(&v70 + 1) != v52)
      {
        v56 = v51;
        v57 = v52;
        do
        {
          *v24++ = *v57;
          if (&v24[-*v23] == 4096)
          {
            v58 = v23[1];
            ++v23;
            v24 = v58;
          }

          if (&(++v57)[-*v56] == 4096)
          {
            v59 = v56[1];
            ++v56;
            v57 = v59;
          }

          ++a1[2].i64[1];
          v55 = *(&v70 + 1);
        }

        while (v57 != *(&v70 + 1));
      }

      if (v6 < v46)
      {
        v60 = std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator-[abi:ne200100](&v70, v46);
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>,0>(v60, v61, v53, v54, v70, *(&v70 + 1), &v71);
        v55 = *(&v72 + 1);
        v70 = v72;
      }

      if (a5 != a4)
      {
        v66 = (v70 - 8);
        v65 = *v70;
        while (1)
        {
          v67 = v55 - v65;
          if (a5 - a4 >= v67)
          {
            v68 = v67;
          }

          else
          {
            v68 = a5 - a4;
          }

          a5 -= v68;
          if (v68)
          {
            memmove((v55 - v68), a5, v68);
          }

          if (a5 == a4)
          {
            break;
          }

          v69 = *v66--;
          v65 = v69;
          v55 = v69 + 4096;
        }
      }
    }
  }

  else
  {
    if (a6 > v10)
    {
      std::deque<char>::__add_front_capacity(a1, a6 - v10);
      v10 = a1[2].u64[0];
      v12 = a1->i64[1];
      v13 = a1[1].i64[0];
      v11 = v10 >> 12;
    }

    v18 = (v12 + 8 * v11);
    if (v13 == v12)
    {
      v19 = 0;
    }

    else
    {
      v19 = *v18 + (v10 & 0xFFF);
    }

    *&v70 = v12 + 8 * v11;
    *(&v70 + 1) = v19;
    if (v16 < v6)
    {
      v25 = &a4[v6];
      if (v16 < v6 >> 1)
      {
        v25 = a5;
      }

      v26 = &v25[-v16];
      if (v26 != a4)
      {
        v27 = v26;
        do
        {
          if (v19 == *v18)
          {
            v28 = *--v18;
            v19 = v28 + 4096;
          }

          v29 = *--v27;
          *--v19 = v29;
          a1[2] = vaddq_s64(a1[2], xmmword_1B5AE1340);
        }

        while (v27 != a4);
      }

      a4 = v26;
      v6 = v16;
    }

    if (v6)
    {
      v31 = std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator+[abi:ne200100](&v70, v6);
      v32 = v30;
      v33 = *(&v70 + 1);
      if (*(&v70 + 1) != v30)
      {
        v34 = v31;
        v35 = v30;
        do
        {
          if (v19 == *v18)
          {
            v36 = *--v18;
            v19 = v36 + 4096;
          }

          if (v35 == *v34)
          {
            v37 = *--v34;
            v35 = (v37 + 4096);
          }

          v38 = *--v35;
          *--v19 = v38;
          a1[2] = vaddq_s64(a1[2], xmmword_1B5AE1340);
          v33 = *(&v70 + 1);
        }

        while (v35 != *(&v70 + 1));
      }

      if (v6 < v16)
      {
        v39 = std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator+[abi:ne200100](&v70, v16);
        v71 = v70;
        std::__for_each_segment[abi:ne200100]<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>>(v31, v32, v39, v40, &v71);
        v33 = *(&v71 + 1);
        v70 = v71;
      }

      if (a4 != a5)
      {
        v42 = (v70 + 8);
        v41 = *v70;
        while (1)
        {
          v43 = v41 - v33 + 4096;
          if (a5 - a4 >= v43)
          {
            v44 = v43;
          }

          else
          {
            v44 = a5 - a4;
          }

          if (v44)
          {
            memmove(v33, a4, v44);
          }

          a4 += v44;
          if (a4 == a5)
          {
            break;
          }

          v45 = *v42++;
          v41 = v45;
          v33 = v45;
        }
      }
    }
  }

  v62 = a1->i64[1];
  if (a1[1].i64[0] == v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = *(v62 + 8 * (a1[2].i64[0] >> 12)) + (a1[2].i64[0] & 0xFFF);
  }

  *&v71 = v62 + 8 * (a1[2].i64[0] >> 12);
  *(&v71 + 1) = v63;
  return std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator+[abi:ne200100](&v71, v16);
}

std::string *std::string::replace[abi:ne200100](std::string *a1, uint64_t a2, uint64_t a3, const std::string::value_type *a4)
{
  v4 = a1;
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  v5 = a2 - v4;
  v6 = a3 - a2;
  v7 = *(a4 + 1);
  if (a4[23] >= 0)
  {
    v8 = *(a4 + 23);
  }

  else
  {
    a4 = *a4;
    v8 = v7;
  }

  return std::string::replace(a1, v5, v6, a4, v8);
}

uint64_t boost::algorithm::detail::find_format_all_impl2<std::string,boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_equal>,boost::algorithm::detail::empty_formatF<char>,boost::iterator_range<std::__wrap_iter<char *>>,boost::algorithm::detail::empty_container<char>>(std::string *a1, unsigned __int8 **a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = a1->__r_.__value_.__r.__words[0];
  }

  v9 = v8;
  while (a3 != a4)
  {
    v9 = boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(&v33, &v30, a1, v9, v8, a3);
    v10 = (v30.i64[1] + 8 * ((v32 + *(&v32 + 1)) >> 12));
    if (v31 == v30.i64[1])
    {
      v11 = 0;
    }

    else
    {
      v11 = *v10 + ((v32 + WORD4(v32)) & 0xFFF);
    }

    std::deque<char>::__insert_bidirectional[abi:ne200100]<char const*>(&v30, v10, v11, 0, 0, 0);
    v8 = a4;
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = a1->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    a3 = boost::algorithm::detail::first_finderF<char const*,boost::algorithm::is_equal>::operator()<std::__wrap_iter<char *>>(a2, a4, &v13[size]);
    a4 = v14;
  }

  v15 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v15 & 0x80u) == 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v15 & 0x80u) != 0)
  {
    v15 = a1->__r_.__value_.__l.__size_;
  }

  v17 = boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(&v33, &v30, a1, v9, v8, &v16[v15]);
  v18 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v18 & 0x80u) == 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v18 & 0x80u) != 0)
  {
    v18 = a1->__r_.__value_.__l.__size_;
  }

  v20 = v19 + v18;
  if (*(&v32 + 1))
  {
    v21 = (v32 >> 9) & 0x7FFFFFFFFFFFF8;
    if (v31 == v30.i64[1])
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v23 = v30.i64[1] + 8 * ((v32 + *(&v32 + 1)) >> 12);
    }

    else
    {
      v22 = ((v32 + *(&v32 + 1)) >> 9) & 0x7FFFFFFFFFFFF8;
      v23 = v30.i64[1] + v22;
      v24 = *(v30.i64[1] + v22) + ((v32 + *(&v32 + 1)) & 0xFFF);
      v25 = ((v32 + *(&v32 + 1)) & 0xFFF) + ((v22 - v21) << 9) - (v32 & 0xFFF);
      v26 = v24;
      v27 = (*(v30.i64[1] + v21) + (v32 & 0xFFF));
      if (v24 == v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = v25;
      }
    }

    std::string::__insert_with_size<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>(a1, v20, (v30.i64[1] + v21), v27, v23, v26, v28);
  }

  else
  {
    std::string::erase(a1, &v17[-v19], v20 - v17);
  }

  return std::deque<char>::~deque[abi:ne200100](&v30);
}

uint64_t std::__function::__func<quasar::splitAndTrimNoEmpty(std::string const&,std::string const&,std::vector<std::string> *)::$_0,std::allocator<quasar::splitAndTrimNoEmpty(std::string const&,std::string const&,std::vector<std::string> *)::$_0>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D318A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::splitAndTrimNoEmpty(std::string const&,std::string const&,std::vector<std::string> *)::$_0,std::allocator<quasar::splitAndTrimNoEmpty(std::string const&,std::string const&,std::vector<std::string> *)::$_0>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::set<UScriptCode>::set[abi:ne200100]<std::__wrap_iter<UScriptCode*>>(void *a1, int *a2, int *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

void sub_1B57E140C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineTransducerBeamSearchDecoder::OnlineTransducerBeamSearchDecoder(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D31928;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 520) = 0u;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 16843009;
  *(v3 + 556) = 0;
  *(v3 + 560) = xmmword_1B5B25380;
  *(v3 + 576) = 1082130432;
  *(v3 + 584) = 0;
  *(v3 + 588) = 0x32000003E8;
  *(v3 + 596) = 1065353216;
  *(v3 + 600) = 0;
  *(v3 + 604) = 0x1E000000FALL;
  *(v3 + 612) = xmmword_1B5B25390;
  *(v3 + 628) = 0x3F8000003F800000;
  *(v3 + 636) = 0;
  *(v3 + 640) = 4;
  std::string::basic_string[abi:ne200100]<0>((v3 + 648), "");
  *(a1 + 696) = 0;
  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0;
  operator new();
}

void sub_1B57E20FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = *(v2 + 752);
  *(v2 + 752) = 0;
  if (v6)
  {
    MEMORY[0x1B8C85350](v6, 0x1000C408195852FLL);
  }

  v7 = *(v2 + 744);
  *(v2 + 744) = 0;
  if (v7)
  {
    MEMORY[0x1B8C85350](v7, 0x1000C40605AC02ELL);
  }

  std::unique_ptr<kaldi::AutoRegressiveBeamSearchDecoder>::reset[abi:ne200100]((v2 + 736), 0);
  std::unique_ptr<kaldi::quasar::CELabelEncoderNet>::reset[abi:ne200100]((v2 + 728), 0);
  std::unique_ptr<kaldi::quasar::CEJointPredictorNet>::reset[abi:ne200100]((v2 + 720), 0);
  std::unique_ptr<kaldi::quasar::CELabelEncoderNet>::reset[abi:ne200100]((v2 + 712), 0);
  std::unique_ptr<kaldi::quasar::CEAcousticEncoderNet>::reset[abi:ne200100]((v2 + 704), 0);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 671) < 0)
  {
    operator delete(*v3);
  }

  if (*(v2 + 551) < 0)
  {
    operator delete(*(v2 + 528));
  }

  if (*(v2 + 527) < 0)
  {
    operator delete(*(v2 + 504));
  }

  if (*(v2 + 503) < 0)
  {
    operator delete(*(v2 + 480));
  }

  if (*(v2 + 479) < 0)
  {
    operator delete(*v4);
  }

  quasar::Decoder::~Decoder(v2);
  _Unwind_Resume(a1);
}

void quasar::OnlineTransducerBeamSearchDecoder::~OnlineTransducerBeamSearchDecoder(quasar::OnlineTransducerBeamSearchDecoder *this)
{
  *this = &unk_1F2D31928;
  v2 = *(this + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 94);
  *(this + 94) = 0;
  if (v3)
  {
    MEMORY[0x1B8C85350](v3, 0x1000C408195852FLL);
  }

  v4 = *(this + 93);
  *(this + 93) = 0;
  if (v4)
  {
    MEMORY[0x1B8C85350](v4, 0x1000C40605AC02ELL);
  }

  std::unique_ptr<kaldi::AutoRegressiveBeamSearchDecoder>::reset[abi:ne200100](this + 92, 0);
  std::unique_ptr<kaldi::quasar::CELabelEncoderNet>::reset[abi:ne200100](this + 91, 0);
  std::unique_ptr<kaldi::quasar::CEJointPredictorNet>::reset[abi:ne200100](this + 90, 0);
  std::unique_ptr<kaldi::quasar::CELabelEncoderNet>::reset[abi:ne200100](this + 89, 0);
  std::unique_ptr<kaldi::quasar::CEAcousticEncoderNet>::reset[abi:ne200100](this + 88, 0);
  v5 = (this + 672);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 671) < 0)
  {
    operator delete(*(this + 81));
  }

  if (*(this + 551) < 0)
  {
    operator delete(*(this + 66));
  }

  if (*(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  if (*(this + 503) < 0)
  {
    operator delete(*(this + 60));
  }

  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

  quasar::Decoder::~Decoder(this);
}

{
  quasar::OnlineTransducerBeamSearchDecoder::~OnlineTransducerBeamSearchDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineTransducerBeamSearchDecoder::registerParams(quasar::QsrTextSymbolTable **this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "transducer-beam-search-decoder");
  quasar::SystemConfig::enforceMinVersion(a2, 244, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  kaldi::AutoRegressiveBeamSearchDecoderOptions::Register((this + 69), a2);
  kaldi::EndPointerOptions::Register((this + 73), a2);
  kaldi::UtteranceDetectorOptions::Register((this + 75), a2);
  kaldi::quasar::TransducerAutoRegressiveDecodableOptions::Register(this + 612, a2);
  quasar::QsrTextSymbolTable::Register(this[95], a2, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  std::string::basic_string[abi:ne200100]<0>(__p, "acoustic-encoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "Acoustic encoder model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 57), v4, 1, 244, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "label-encoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "Label encoder model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 60), v4, 1, 244, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "joint-predictor-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "Joint predictor model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 63), v4, 1, 244, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "nnlm-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "Neural network language model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 66), v4, 0, 244, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "chunk-size");
  std::string::basic_string[abi:ne200100]<0>(v4, "Number of acoustic encoder output frames to compute per chunk.");
  quasar::SystemConfig::Register<int>(a2, __p, (this + 80), v4, 0, 244, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "substring-delimiter");
  std::string::basic_string[abi:ne200100]<0>(v4, "Substring delimiter");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 81), v4, 0, 244, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "token-delimiters");
  std::string::basic_string[abi:ne200100]<0>(v4, "List of token delimiters");
  quasar::SystemConfig::Register<std::vector<std::string>>(a2, __p, (this + 84), v4, 0, 244, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "split-tokens-by-character");
  std::string::basic_string[abi:ne200100]<0>(v4, "split tokens by character");
  quasar::SystemConfig::Register<BOOL>(a2, __p, (this + 87), v4, 0, 244, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B57E2778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::AutoRegressiveBeamSearchDecoderOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "remove-eos");
  std::string::basic_string[abi:ne200100]<0>(__p, "Remove EOS labels from output.");
  (**a2)(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "remove-sil");
  std::string::basic_string[abi:ne200100]<0>(__p, "Remove silence labels from output.");
  (**a2)(a2, v6, a1 + 1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "remove-blank");
  std::string::basic_string[abi:ne200100]<0>(__p, "Remove blank labels from output.");
  (**a2)(a2, v6, a1 + 2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "merge-hyps");
  std::string::basic_string[abi:ne200100]<0>(__p, "Merge equivalent hypotheses.");
  (**a2)(a2, v6, a1 + 3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "merge-max");
  std::string::basic_string[abi:ne200100]<0>(__p, "Assign max score to merged hypotheses, otherwise total score (default).");
  (**a2)(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "label-context-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "Context size to merge hypotheses by label context. Inactive if negative (default).");
  (*(*a2 + 8))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "keep-merged-hyps-active");
  std::string::basic_string[abi:ne200100]<0>(__p, "Keep hypotheses active when merged by label context.");
  (**a2)(a2, v6, a1 + 5, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-steps");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum number of decoder steps. Inactive if negative (default).");
  (*(*a2 + 8))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "min-active");
  std::string::basic_string[abi:ne200100]<0>(__p, "At least min-active best hypotheses are retained after pruning.");
  (*(*a2 + 8))(a2, v6, a1 + 16, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-active");
  std::string::basic_string[abi:ne200100]<0>(__p, "At most max-active best hypotheses are retained after pruning.");
  (*(*a2 + 8))(a2, v6, a1 + 20, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "Beam width. pruning-cutoff = best-hypothesis-score - beam.");
  (*(*a2 + 24))(a2, v6, a1 + 24, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "length-penalty");
  std::string::basic_string[abi:ne200100]<0>(__p, "Score penalty added for each non-blank label.");
  (*(*a2 + 24))(a2, v6, a1 + 28, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B57E2D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void kaldi::EndPointerOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "enable-endpointing");
  std::string::basic_string[abi:ne200100]<0>(__p, "Enable endpointing.");
  (**a2)(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-frames");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum number of frames allowed. Hard limit. We will endpoint when this many frames are decoded.");
  (*(*a2 + 8))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-trailing-sil-frames");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum number of trailing silence frames allowed. Active only if some speech frames have already been decoded.");
  (*(*a2 + 8))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "eos-probability-threshold");
  std::string::basic_string[abi:ne200100]<0>(__p, "Endpointing threshold. Endpoints if P(EOS) > eos-probability-threshold. Active only if some speech frames have already been decoded.");
  (*(*a2 + 24))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B57E300C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void kaldi::UtteranceDetectorOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "enable-utterance-detection");
  std::string::basic_string[abi:ne200100]<0>(__p, "Enable utterance detection.");
  (**a2)(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-utt-frames");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum number of frames allowed in an utterance if num-utt-speech-frames == 0. Otherwise, it is used to determine the maximum number of trailing silence frames allowed.");
  (*(*a2 + 8))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-utt-trailing-sil-frames");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum number of trailing silence frames allowed in an utterance if num-utt-frames <= max-utt-frames. Otherwise, we use the formula max-utt-trailing-sil-frames * max-utt-frames / num-utt-frames.");
  (*(*a2 + 8))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B57E31E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void kaldi::quasar::TransducerAutoRegressiveDecodableOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "max-label-fraction");
  std::string::basic_string[abi:ne200100]<0>(__p, "#decoded-nonblank-labels / #acoustic-encoder-output-frames <= max-label-fraction. Must be positive. Active only if max-steps < 0.");
  (*(*a2 + 24))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nnlm-weight");
  std::string::basic_string[abi:ne200100]<0>(__p, "Neural network language model weight. NNLM loglikes are weighted and added to transducer loglikes.");
  (*(*a2 + 24))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "ilm-weight");
  std::string::basic_string[abi:ne200100]<0>(__p, "Internal language model weight. ILM loglikes are weighted and subtracted from transducer loglikes.");
  (*(*a2 + 24))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "softmax-temperature");
  std::string::basic_string[abi:ne200100]<0>(__p, "Transducer model softmax temperature.");
  (*(*a2 + 24))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nnlm-softmax-temperature");
  std::string::basic_string[abi:ne200100]<0>(__p, "Neural network language model softmax temperature.");
  (*(*a2 + 24))(a2, v6, a1 + 16, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "ilm-softmax-temperature");
  std::string::basic_string[abi:ne200100]<0>(__p, "Internal language model softmax temperature.");
  (*(*a2 + 24))(a2, v6, a1 + 20, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "mask-nnlm-eos");
  std::string::basic_string[abi:ne200100]<0>(__p, "Mask out EOS when computing neural network language model loglikes.");
  (**a2)(a2, v6, a1 + 24, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B57E357C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void quasar::OnlineTransducerBeamSearchDecoder::runImpl(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  quasar::SymbolTableList::clear(*(*a3 + 488));
  v6 = *(*a3 + 488);
  v26 = *(a1 + 760);
  v7 = *(a1 + 768);
  v27 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::SymbolTableList::addSymbolTable(v6, &v26, 0, -1);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v8 = *a2;
  v9 = *(a1 + 704);
  v10 = *(a1 + 712);
  v11 = *(a1 + 720);
  v12 = *(a1 + 744);
  v13 = *(a1 + 752);
  v14 = *(a1 + 728);
  *__p = *(a1 + 612);
  *&__p[12] = *(a1 + 624);
  kaldi::quasar::TransducerAutoRegressiveDecodable::TransducerAutoRegressiveDecodable(v25, v8, v9, v10, v11, v12, v13, v14, __p, *(a1 + 640));
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v20 = 0;
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_16LatticeWeightTplIfEEiEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B57E46E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a21);
  if (v71)
  {
    operator delete(v71);
  }

  a21 = &a71;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  v74 = v72[53];
  if (v74)
  {
    v72[54] = v74;
    operator delete(v74);
  }

  v75 = v72[56];
  if (v75)
  {
    v72[57] = v75;
    operator delete(v75);
  }

  kaldi::quasar::TransducerAutoRegressiveDecodable::~TransducerAutoRegressiveDecodable(&STACK[0x238]);
  _Unwind_Resume(a1);
}

void *fst::Concat<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 112))(a1);
  v5 = (*(*a2 + 112))(a2);
  if (!fst::CompatSymbols(v4, v5, 1) || (v6 = (*(*a1 + 120))(a1), v7 = (*(*a2 + 120))(a2), !fst::CompatSymbols(v6, v7, 1)))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v17 = fst::LogMessage::LogMessage(&v34, &__p);
    v18 = fst::cerr(v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Concat: input/output symbol tables of 1st argument ", 51);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "do not match input/output symbol tables of 2nd argument", 55);
    fst::LogMessage::~LogMessage(&v34);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }

    return (*(*a1 + 192))(a1, 4, 4);
  }

  v8 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v9 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    if ((v9 & 4) != 0)
    {
      v26 = *(*a1 + 192);

      return v26(a1, 4, 4);
    }

    return result;
  }

  v11 = (*(*a1 + 160))(a1);
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v12 = fst::CountStates<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a2);
    (*(*a1 + 248))(a1, (v12 + v11));
  }

  v36 = 0;
  (*(*a2 + 128))(a2, &v34);
LABEL_7:
  if (!v34)
  {
    if (v36 >= v35)
    {
      goto LABEL_37;
    }

    goto LABEL_11;
  }

  if (!(*(*v34 + 16))(v34))
  {
LABEL_11:
    v13 = (*(*a1 + 200))(a1);
    if (v34)
    {
      v14 = (*(*v34 + 24))(v34);
    }

    else
    {
      v14 = v36;
    }

    (*(*a2 + 32))(&__p, a2, v14);
    (*(*a1 + 184))(a1, v13, &__p);
    v15 = (*(*a2 + 40))(a2, v14);
    (*(*a1 + 256))(a1, v13, v15);
    v33 = 0;
    (*(*a2 + 136))(a2, v14, &__p);
    while (__p)
    {
      if ((*(*__p + 24))(__p))
      {
        if (__p)
        {
          (*(*__p + 8))();
          goto LABEL_28;
        }

LABEL_26:
        if (v32)
        {
          --*v32;
        }

LABEL_28:
        if (v34)
        {
          (*(*v34 + 32))(v34);
        }

        else
        {
          ++v36;
        }

        goto LABEL_7;
      }

      if (!__p)
      {
        goto LABEL_20;
      }

      v16 = (*(*__p + 32))();
LABEL_21:
      v27[0] = *v16;
      v27[1] = *(v16 + 8);
      v28 = *(v16 + 16) + v11;
      (*(*a1 + 208))(a1, v13, v27);
      if (__p)
      {
        (*(*__p + 40))(__p);
      }

      else
      {
        ++v33;
      }
    }

    if (v33 >= v31)
    {
      goto LABEL_26;
    }

LABEL_20:
    v16 = v30 + 20 * v33;
    goto LABEL_21;
  }

  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

LABEL_37:
  result = (*(*a2 + 24))(a2);
  v20 = result;
  if (v11 >= 1)
  {
    v21 = 0;
    v22 = result + v11;
    v23 = vneg_f32(0x7F0000007FLL);
    do
    {
      result = (*(*a1 + 32))(&v34, a1, v21);
      LODWORD(v27[0]) = HIDWORD(v34);
      LODWORD(__p) = v34;
      v38 = 2139095040;
      v37 = INFINITY;
      v24.n128_u32[0] = v34;
      if (*&v34 != INFINITY || (v24.n128_u32[0] = v27[0], *v27 != v37))
      {
        __p = v23;
        result = (*(*a1 + 184))(a1, v21, &__p, v24);
        if (v20 != -1)
        {
          __p = 0;
          v30 = v34;
          LODWORD(v31) = v22;
          result = (*(*a1 + 208))(a1, v21, &__p);
        }
      }

      v21 = (v21 + 1);
    }

    while (v11 != v21);
  }

  if (v20 != -1)
  {
    v25 = fst::ConcatProperties(v8, v9, 0);
    return (*(*a1 + 192))(a1, v25, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B57E51C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

kaldi::quasar::CEAcousticEncoderNet *std::unique_ptr<kaldi::quasar::CEAcousticEncoderNet>::reset[abi:ne200100](kaldi::quasar::CEAcousticEncoderNet **a1, kaldi::quasar::CEAcousticEncoderNet *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::quasar::CEAcousticEncoderNet::~CEAcousticEncoderNet(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

kaldi::quasar::CELabelEncoderNet *std::unique_ptr<kaldi::quasar::CELabelEncoderNet>::reset[abi:ne200100](kaldi::quasar::CELabelEncoderNet **a1, kaldi::quasar::CELabelEncoderNet *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::quasar::CELabelEncoderNet::~CELabelEncoderNet(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

kaldi::quasar::CEJointPredictorNet *std::unique_ptr<kaldi::quasar::CEJointPredictorNet>::reset[abi:ne200100](kaldi::quasar::CEJointPredictorNet **a1, kaldi::quasar::CEJointPredictorNet *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::quasar::CEJointPredictorNet::~CEJointPredictorNet(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

kaldi::AutoRegressiveBeamSearchDecoder *std::unique_ptr<kaldi::AutoRegressiveBeamSearchDecoder>::reset[abi:ne200100](kaldi::AutoRegressiveBeamSearchDecoder **a1, kaldi::AutoRegressiveBeamSearchDecoder *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::AutoRegressiveBeamSearchDecoder::~AutoRegressiveBeamSearchDecoder(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void kaldi::AutoRegressiveBeamSearchDecoder::~AutoRegressiveBeamSearchDecoder(kaldi::AutoRegressiveBeamSearchDecoder *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v4 = (this + 128);
  std::vector<std::vector<std::vector<unsigned long>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 104);
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 80);
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }
}

void std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 96;
        std::deque<int>::~deque[abi:ne200100](v4 - 7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *kaldi::EventMap::Write(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*a3 + 56))(a3, a1, a2);
  }

  else
  {
    return kaldi::WriteToken(a1, a2, "NULL");
  }
}

uint64_t kaldi::EventMap::Read(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = kaldi::Peek(a1, a2);
  if (v12 > 0x52u)
  {
    if (v12 == 83)
    {

      kaldi::SplitEventMap::Read(a1, a2);
    }

    if (v12 == 84)
    {

      kaldi::TableEventMap::Read(a1, a2);
    }

LABEL_16:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "EventMap::read, was not expecting character ", 44);
    kaldi::CharToString(&v12, &__p);
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

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, p_p, size);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", at file position ", 19);
    std::istream::tellg();
    MEMORY[0x1B8C84C60](v9, v13);
    std::string::~string(&__p);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  if (v12 == 67)
  {

    kaldi::ConstantEventMap::Read(a1, a2);
  }

  if (v12 != 78)
  {
    goto LABEL_16;
  }

  kaldi::ExpectToken(a1, a2, "NULL");
  return 0;
}

void sub_1B57E572C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void kaldi::ConstantEventMap::Read(uint64_t *a1, int a2)
{
  kaldi::ExpectToken(a1, a2, "CE");
  v4 = 0;
  kaldi::ReadBasicType<int>(a1, a2, &v4);
  operator new();
}

void kaldi::TableEventMap::Read(uint64_t *a1, uint64_t a2)
{
  kaldi::ExpectToken(a1, a2, "TE");
  v8 = 0;
  kaldi::ReadBasicType<int>(a1, a2, &v8);
  v7 = 0;
  kaldi::ReadBasicType<unsigned int>(a1, a2, &v7);
  std::vector<kaldi::EventMap *>::vector[abi:ne200100](&__p, v7);
  kaldi::ExpectToken(a1, a2, "(");
  if (v7)
  {
    for (i = 0; i < v7; *(__p + i++) = v5)
    {
      v5 = kaldi::EventMap::Read(a1, a2);
    }
  }

  kaldi::ExpectToken(a1, a2, ")");
  operator new();
}

void sub_1B57E58F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  MEMORY[0x1B8C85350](v10, 0x1081C40F159ABB6);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::SplitEventMap::Read(uint64_t *a1, uint64_t a2)
{
  kaldi::ExpectToken(a1, a2, "SE");
  v10 = 0;
  kaldi::ReadBasicType<int>(a1, a2, &v10);
  v7 = 1;
  v8 = 0u;
  memset(v9, 0, sizeof(v9));
  kaldi::ReadIntegerVector<int>(a1, a2, (v9 + 8), 0, 0, 0, 0);
  kaldi::ConstIntegerSet<int>::InitInternal(&v7);
  kaldi::ExpectToken(a1, a2, "{");
  v4 = kaldi::EventMap::Read(a1, a2);
  v5 = kaldi::EventMap::Read(a1, a2);
  kaldi::ExpectToken(a1, a2, "}");
  if (v4)
  {
    if (v5)
    {
      operator new();
    }
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "SplitEventMap::Read, NULL pointers.", 35);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
}

uint64_t kaldi::ConstantEventMap::Write(uint64_t a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "CE");
  result = kaldi::WriteBasicType<int>(a2, a3, *(a1 + 8));
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "ConstantEventMap::Write(), could not write to stream.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  return result;
}

uint64_t kaldi::TableEventMap::Prune(kaldi::TableEventMap *this)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(&__p, (*(this + 3) - *(this + 2)) >> 3);
  v2 = *(this + 3) - *(this + 2);
  if ((v2 >> 3) >= 1)
  {
    v3 = 0;
    v4 = (v2 >> 3) & 0x7FFFFFFF;
    do
    {
      v5 = *(*(this + 2) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        if (v6)
        {
          v8 = 0;
          std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(&__p, v3 + 1, &v8);
          *(__p + v3) = v6;
        }
      }

      ++v3;
    }

    while (v4 != v3);
  }

  if (__p != v10)
  {
    operator new();
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_1B57E5D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1B8C85350](v11, 0x1081C40F159ABB6);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::TableEventMap::MapValues(uint64_t a1, void *a2, void *a3)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(&v20, (*(a1 + 24) - *(a1 + 16)) >> 3);
  v6 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  v19 = 0;
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(a1 + 16) + 8 * v7);
      if (v8)
      {
        v9 = (*(*v8 + 32))(v8, a2, a3);
        if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a2, (a1 + 8)))
        {
          v10 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a3, &v19);
          if (!v10)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
            v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Could not map value ", 20);
            v16 = MEMORY[0x1B8C84C00](v15, v19);
            v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " for key ", 9);
            MEMORY[0x1B8C84C00](v17, *(a1 + 8));
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
          }

          v11 = v10 + 5;
        }

        else
        {
          v11 = &v19;
        }

        v12 = *v11;
        v13 = v20;
        if (v12 >= ((v21 - v20) >> 3))
        {
          v18[0] = 0;
          std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(&v20, v12 + 1, v18);
          v13 = v20;
        }

        if (*(v13 + 8 * v12))
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
          v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Multiple values map to the same point: this code cannot ", 56);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "handle this case.", 17);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
        }

        *(v13 + 8 * v12) = v9;
        v7 = v19;
      }

      v19 = ++v7;
    }

    while (v7 < v6);
  }

  operator new();
}

void sub_1B57E5FD0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::TableEventMap::Write(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "TE");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 8));
  v6 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  kaldi::WriteBasicType<unsigned int>(a2, a3, v6);
  kaldi::WriteToken(a2, a3, "(");
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    v9 = 8 * v7;
    do
    {
      kaldi::EventMap::Write(a2, a3, *(*(a1 + 16) + v8));
      v8 += 8;
    }

    while (v9 != v8);
  }

  result = kaldi::WriteToken(a2, a3, ")");
  if ((a3 & 1) == 0)
  {
    LOBYTE(v11[0]) = 10;
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v11, 1);
  }

  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "TableEventMap::Write(), could not write to stream.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  return result;
}

uint64_t kaldi::SplitEventMap::Prune(kaldi::SplitEventMap *this)
{
  v2 = (*(**(this + 10) + 40))(*(this + 10));
  v3 = (*(**(this + 11) + 40))(*(this + 11));
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    operator new();
  }

  return v4;
}

void kaldi::SplitEventMap::MapValues(uint64_t a1, void *a2, void *a3)
{
  (*(**(a1 + 80) + 32))(*(a1 + 80));
  (*(**(a1 + 88) + 32))(*(a1 + 88), a2, a3);
  if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a2, (a1 + 8)))
  {
    v16 = 0;
    v15 = 0u;
    for (i = *(a1 + 56); i != *(a1 + 64); ++i)
    {
      v14 = *i;
      v7 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a3, &v14);
      if (!v7)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Value ", 6);
        v10 = MEMORY[0x1B8C84C00](v9, v14);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", for key ", 10);
        v12 = MEMORY[0x1B8C84C00](v11, *(a1 + 8));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", cannot be mapped.", 19);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
      }

      LODWORD(v13[0]) = *(v7 + 5);
      std::vector<int>::push_back[abi:ne200100](&v15, v13);
    }

    std::__sort<std::__less<int,int> &,int *>();
    v8 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(v15, *(&v15 + 1));
    if (v8 != *(&v15 + 1))
    {
      *(&v15 + 1) = v8;
    }

    operator new();
  }

  operator new();
}

void sub_1B57E6508(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 96);
  if (v3)
  {
    *(v1 - 88) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::SplitEventMap::Write(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "SE");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 8));
  kaldi::WriteIntegerByteArray<int>(a2, a3, 0, (*(a1 + 64) - *(a1 + 56)) >> 2, *(a1 + 56));
  kaldi::WriteToken(a2, a3, "{");
  (*(**(a1 + 80) + 56))(*(a1 + 80), a2, a3);
  (*(**(a1 + 88) + 56))(*(a1 + 88), a2, a3);
  result = kaldi::WriteToken(a2, a3, "}");
  if ((a3 & 1) == 0)
  {
    LOBYTE(v7[0]) = 10;
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v7, 1);
  }

  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "SplitEventMap::Write(), could not write to stream.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  return result;
}

uint64_t kaldi::EventMap::Lookup(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 != *a1)
  {
    v5 = (v4 - *a1) >> 3;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[2 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 2;
      v5 += ~(v5 >> 1);
      if (v9 >= a2)
      {
        v5 = v6;
      }

      else
      {
        v3 = v8;
      }
    }

    while (v5);
  }

  if (v3 == v4 || *v3 != a2)
  {
    return 0;
  }

  *a3 = v3[1];
  return 1;
}

uint64_t kaldi::EventMap::MaxResult(kaldi::EventMap *this)
{
  v14 = 0uLL;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  (*(*this + 8))(this, &v11, &v14);
  v1 = v14;
  if (v14 == *(&v14 + 1))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "EventMap::MaxResult(), empty result", 35);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v10);
    }

    v8 = 0x80000000;
  }

  else
  {
    v2 = (v14 + 4);
    if (v14 + 4 != *(&v14 + 1))
    {
      v3 = *v14;
      v4 = (v14 + 4);
      do
      {
        v6 = *v4++;
        v5 = v6;
        v7 = v3 < v6;
        if (v3 <= v6)
        {
          v3 = v5;
        }

        if (v7)
        {
          v1 = v2;
        }

        v2 = v4;
      }

      while (v4 != *(&v14 + 1));
    }

    v8 = *v1;
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v14)
  {
    *(&v14 + 1) = v14;
    operator delete(v14);
  }

  return v8;
}

void sub_1B57E6808(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  v4 = *(v2 - 72);
  if (v4)
  {
    *(v2 - 64) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 48);
  if (v5)
  {
    *(v2 - 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::ConstantEventMap::Copy(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if ((v2 & 0x80000000) != 0 || v2 >= ((a2[1] - *a2) >> 3) || (v3 = *(*a2 + 8 * v2)) == 0)
  {
    operator new();
  }

  return kaldi::EventMap::Copy(v3);
}

uint64_t kaldi::ConstantEventMap::Prune(kaldi::ConstantEventMap *this)
{
  if (*(this + 2) != -1)
  {
    operator new();
  }

  return 0;
}

uint64_t kaldi::TableEventMap::Map(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v8 = 0;
  *a3 = -1;
  if (!kaldi::EventMap::Lookup(a2, *(a1 + 8), &v8))
  {
    return 0;
  }

  if (v8 < 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (v8 >= ((*(a1 + 24) - v4) >> 3))
  {
    return 0;
  }

  v5 = *(v4 + 8 * v8);
  if (!v5)
  {
    return 0;
  }

  v6 = **v5;

  return v6();
}

uint64_t kaldi::TableEventMap::MultiMap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  result = kaldi::EventMap::Lookup(a2, *(a1 + 8), &v12);
  if (result)
  {
    if ((v12 & 0x80000000) == 0)
    {
      v7 = *(a1 + 16);
      if (v12 < ((*(a1 + 24) - v7) >> 3))
      {
        result = *(v7 + 8 * v12);
        if (result)
        {
          v8 = *(*result + 8);

          return v8();
        }
      }
    }
  }

  else
  {
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    if (v9 != v10)
    {
      v11 = 0;
      do
      {
        result = *(v10 + 8 * v11);
        if (result)
        {
          result = (*(*result + 8))(result, a2, a3);
          v10 = *(a1 + 16);
          v9 = *(a1 + 24);
        }

        ++v11;
      }

      while (v11 < (v9 - v10) >> 3);
    }
  }

  return result;
}

void kaldi::TableEventMap::GetChildren(uint64_t a1, void *a2)
{
  a2[1] = *a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v3 != v2)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(v2 + v6))
      {
        std::vector<TVertex *>::push_back[abi:ne200100](a2, (v2 + v6));
        v2 = *(a1 + 16);
        v3 = *(a1 + 24);
      }

      ++v7;
      v6 += 8;
    }

    while (v7 < (v3 - v2) >> 3);
  }
}

void kaldi::TableEventMap::Copy(uint64_t a1, uint64_t a2)
{
  std::vector<kaldi::EventMap *>::vector[abi:ne200100](&__p, (*(a1 + 24) - *(a1 + 16)) >> 3);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (v7)
      {
        v8 = (*(*v7 + 24))(v7, a2);
        *(__p + v6) = v8;
        v5 = *(a1 + 16);
        v4 = *(a1 + 24);
      }

      ++v6;
    }

    while (v6 < (v4 - v5) >> 3);
  }

  operator new();
}

void sub_1B57E6D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1B8C85350](v11, 0x1081C40F159ABB6);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::TableEventMap::~TableEventMap(kaldi::TableEventMap *this)
{
  kaldi::TableEventMap::~TableEventMap(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D31A00;
  kaldi::DeletePointers<kaldi::EventMap>(this + 2);
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

uint64_t kaldi::SplitEventMap::Map(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  result = kaldi::EventMap::Lookup(a2, *(a1 + 8), &v7);
  if (result)
  {
    v4 = kaldi::ConstIntegerSet<int>::count(a1 + 16, v7);
    v5 = 80;
    if (!v4)
    {
      v5 = 88;
    }

    v6 = ***(a1 + v5);

    return v6();
  }

  return result;
}

uint64_t kaldi::SplitEventMap::MultiMap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  if (kaldi::EventMap::Lookup(a2, *(a1 + 8), &v16))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    if (v7 != v6)
    {
      v8 = v7 - v6;
      do
      {
        v9 = v8 >> 1;
        v10 = &v6[v8 >> 1];
        v12 = *v10;
        v11 = v10 + 1;
        v8 += ~(v8 >> 1);
        if (v12 < v16)
        {
          v6 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v8);
      if (v6 != v7 && v16 >= *v6)
      {
        v13 = 80;
        goto LABEL_13;
      }
    }
  }

  else
  {
    (*(**(a1 + 80) + 8))(*(a1 + 80), a2, a3);
  }

  v13 = 88;
LABEL_13:
  v14 = *(**(a1 + v13) + 8);

  return v14();
}

void kaldi::SplitEventMap::GetChildren(uint64_t a1, void *a2)
{
  a2[1] = *a2;
  std::vector<TVertex *>::push_back[abi:ne200100](a2, (a1 + 80));

  std::vector<TVertex *>::push_back[abi:ne200100](a2, (a1 + 88));
}

void kaldi::SplitEventMap::~SplitEventMap(kaldi::SplitEventMap *this)
{
  *this = &unk_1F2D31B00;
  v1 = (this + 16);
  kaldi::SplitEventMap::Destroy(this);
  kaldi::ConstIntegerSet<int>::~ConstIntegerSet(v1);
}

{
  *this = &unk_1F2D31B00;
  kaldi::SplitEventMap::Destroy(this);
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x1B8C85350);
}

void *kaldi::DeletePointers<kaldi::EventMap>(void *result)
{
  v1 = *result;
  v2 = result[1];
  while (v1 != v2)
  {
    result = *v1;
    if (*v1)
    {
      result = (*(*result + 72))(result);
      *v1 = 0;
    }

    ++v1;
  }

  return result;
}

uint64_t kaldi::SplitEventMap::Destroy(kaldi::SplitEventMap *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  result = *(this + 11);
  if (result)
  {
    v4 = *(*result + 72);

    return v4();
  }

  return result;
}

void quasar::addPhoneSequence(uint64_t a1, uint64_t a2)
{
  quasar::copyAndTrim(a2, &__p);
  std::string::basic_string[abi:ne200100]<0>(v3, " .");
  quasar::splitStringSimple(&__p, v3, &v4);
}

void sub_1B57E7680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B57E7760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong},float>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong},float>>::__emplace_back_slow_path<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong}>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 8) = *(a2 + 8);
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<std::pair<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong},float>>::__emplace_back_slow_path<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong}>(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong},float>>>(a1, v6);
  }

  v9 = 16 * v5;
  v15 = 0;
  v16 = 16 * v5;
  v10 = *a2;
  *a2 = 0;
  *v9 = v10;
  *(v9 + 8) = *(a2 + 2);
  v17 = (16 * v5 + 16);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong},float>>,objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong}*>(a1, v3, v4, 0);
  v11 = *a1;
  *a1 = 0;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong},float>>::~__split_buffer(&v15);
  return v14;
}

void sub_1B57E7B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong},float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong},float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong},float>>,objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong}*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *a4 = v7;
      *(a4 + 8) = *(v6 + 2);
      v6 += 2;
      a4 += 16;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      v5 += 2;
    }
  }
}

uint64_t std::__split_buffer<std::pair<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong},float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong},float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 2);
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B57E7E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sentencepiece::util::Status::~Status(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__120__shared_ptr_emplaceIN13sentencepiece22SentencePieceProcessorENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D31B78;
  sentencepiece::SentencePieceProcessor::SentencePieceProcessor((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<sentencepiece::SentencePieceProcessor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D31B78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

float SimpleClassNgram::replaceWithClass(SimpleClassNgram *this, const unsigned int *a2, unsigned int *a3, unsigned int a4)
{
  v5 = 0.0;
  if (a4)
  {
    v8 = 0;
    v9 = a4;
    while (1)
    {
      v10 = a2[v8];
      if (v10 == -1)
      {
        break;
      }

      LOBYTE(v16) = 0;
      v11 = LHash<unsigned int,LHash<unsigned int const*,double>>::insert(this + 25, v10, &v16);
      LHashIter<unsigned int const*,double>::LHashIter(v17, v11, 0);
      v16 = 0;
      v12 = LHashIter<unsigned int const*,double>::next(v17, &v16);
      if (v12 && Ngram::findProb(this, *v16, &emptyContext))
      {
        a3[v8] = *v16;
        v13 = log10(*v12);
        v5 = v5 + v13;
      }

      else
      {
        a3[v8] = a2[v8];
      }

      if (v18)
      {
        MEMORY[0x1B8C85310](v18, 0x50C80EE9192B6);
      }

      if (v9 == ++v8)
      {
        LODWORD(v8) = v9;
        break;
      }
    }

    v14 = v8;
  }

  else
  {
    v14 = 0;
  }

  a3[v14] = -1;
  return v5;
}

void sub_1B57E8474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x1B8C85310](a14, v14);
  }

  _Unwind_Resume(exception_object);
}

char *SimpleClassNgram::contextID(SimpleClassNgram *this, const unsigned int *a2, Vocab *a3, unsigned int *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(this + 288))
  {

    return Ngram::contextID(this, a2, a3, a4);
  }

  else
  {
    v8 = -1;
    if (a2 != -1)
    {
      v11 = a2;
      *v12 = -1;
      SimpleClassNgram::replaceWithClass(this, &v11, &v14, 1u);
      v8 = v14;
    }

    v9 = Vocab::length(a3, a2);
    *&v12[8] = 0;
    v13 = 0;
    v11 = 0;
    *v12 = (v9 + 1);
    if (v9 != -1)
    {
      Array<unsigned int>::alloc();
    }

    SimpleClassNgram::replaceWithClass(this, a3, 0, *(this + 44) - 1);
    v10 = Ngram::contextID(this, v8, (*&v12[4] - 4 * v11), a4);
    if (*&v12[4])
    {
      MEMORY[0x1B8C85310](*&v12[4], 0x1000C8052888210);
    }

    return v10;
  }
}

float SimpleClassNgram::contextBOW(SimpleClassNgram *this, const unsigned int *a2, unsigned int a3)
{
  if (*(this + 288))
  {

    return Ngram::contextBOW(this, a2, a3);
  }

  else
  {
    v7 = Vocab::length(a2, a2);
    *&v8[8] = 0;
    *v8 = (v7 + 1);
    if (v7 != -1)
    {
      Array<unsigned int>::alloc();
    }

    SimpleClassNgram::replaceWithClass(this, a2, 0, *(this + 44) - 1);
    return Ngram::contextBOW(this, *&v8[4], a3);
  }
}

void sub_1B57E8744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x1B8C85310](a11, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

float SimpleClassNgram::wordProb(SimpleClassNgram *this, uint64_t a2, const unsigned int *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(this + 288))
  {

    return LM::wordProb(this, a2, a3);
  }

  else
  {
    v13[0] = a2;
    v13[1] = -1;
    v6 = SimpleClassNgram::replaceWithClass(this, v13, &v12, 1u);
    v7 = v12;
    v9 = Vocab::length(a3, v8);
    *Array<unsigned int>::operator[](this + 62, v9) = -1;
    v10 = Array<unsigned int>::operator[](this + 62, 0);
    SimpleClassNgram::replaceWithClass(this, a3, v10, *(this + 44) - 1);
    v11 = Array<unsigned int>::operator[](this + 62, 0);
    return v6 + LM::wordProb(this, v7, v11);
  }
}

float SimpleClassNgram::wordProbRecompute(SimpleClassNgram *this, uint64_t a2, const unsigned int *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(this + 288))
  {

    LM::wordProbRecompute(this, a2, a3);
  }

  else
  {
    v9[0] = a2;
    v9[1] = -1;
    v5 = SimpleClassNgram::replaceWithClass(this, v9, &v8, 1u);
    v6 = v8;
    v7 = Array<unsigned int>::operator[](this + 62, 0);
    return v5 + LM::wordProb(this, v6, v7);
  }

  return result;
}

float SimpleClassNgram::sentenceProb(uint64_t a1, unsigned int *a2, double *a3)
{
  if (*(a1 + 288) || !*(a1 + 8) && (Debug::debugAll > 1 || *(a1 + 12) >= 2u))
  {

    return LM::sentenceProb(a1, a2, a3);
  }

  else
  {
    if (Vocab::length(a2, a2) != -1)
    {
      Array<unsigned int>::alloc();
    }

    v7 = SimpleClassNgram::replaceWithClass(a1, a2, 0, 0xFFFFFFFF);
    *(a1 + 288) = 1;
    v8 = LM::sentenceProb(a1, 0, a3);
    *(a1 + 288) = 0;
    *a3 = *a3 + v7;
    return v7 + v8;
  }
}

void sub_1B57E8AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x1B8C85310](a11, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

BOOL SimpleClassNgram::readClasses(SimpleClassNgram *this, File *a2)
{
  if (!ClassNgram::readClasses(this, a2) || *(this + 289))
  {
    return 0;
  }

  v24 = 0;
  LHashIter<unsigned int,LHash<unsigned int const*,double>>::LHashIter(v22, this + 25, 0);
  v6 = MEMORY[0x1E69E5300];
  while (LHashIter<unsigned int,LHash<unsigned int const*,double>>::next(v22, &v24))
  {
    if (Map2<unsigned int,unsigned int const*,double>::numEntries(this + 25, v24) >= 2)
    {
      v7 = File::position(a2, v6);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "word ", 5);
      v9 = (*(**(this + 3) + 32))(*(this + 3), v24);
      v10 = strlen(v9);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " has multiple class memberships\n", 32);
      *(this + 289) = 1;
    }

    LOBYTE(v19) = 0;
    v12 = LHash<unsigned int,LHash<unsigned int const*,double>>::insert(this + 25, v24, &v19);
    LHashIter<unsigned int const*,double>::LHashIter(v20, v12, 0);
    v19 = 0;
    LHashIter<unsigned int const*,double>::next(v20, &v19);
    if (Vocab::length(v19, v13) >= 3)
    {
      v14 = File::position(a2, v6);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "class ", 6);
      v16 = (*(**(this + 3) + 32))(*(this + 3), *v19);
      v17 = strlen(v16);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " expands to string of more than one word\n", 41);
      *(this + 289) = 1;
    }

    if (v21)
    {
      MEMORY[0x1B8C85310](v21, 0x50C80EE9192B6);
    }
  }

  v4 = *(this + 289) == 0;
  if (v23)
  {
    MEMORY[0x1B8C85310](v23, 0x1000C8052888210);
  }

  return v4;
}

void sub_1B57E8D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    MEMORY[0x1B8C85310](a17, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void SimpleClassNgram::~SimpleClassNgram(SimpleClassNgram *this)
{
  ClassNgram::~ClassNgram(this);

  JUMPOUT(0x1B8C85350);
}

float kaldi::AutoRegressiveBeamSearchDecoder::AutoRegressiveBeamSearchDecoder(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 56) = 0u;
  *a1 = v2;
  *(a1 + 16) = v3;
  *(a1 + 104) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  v4 = *(a1 + 16);
  if (v4 <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "opts_.min_active > 0", 20);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  if (*(a1 + 20) < v4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "opts_.max_active >= opts_.min_active", 36);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  result = *(a1 + 24);
  if (result <= 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "opts_.beam > 0", 14);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  return result;
}

void sub_1B57E8EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *(v9 + 152);
  if (v12)
  {
    *(v9 + 160) = v12;
    operator delete(v12);
  }

  a9 = (v9 + 128);
  std::vector<std::vector<std::vector<unsigned long>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = (v9 + 80);
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  v13 = *v10;
  if (*v10)
  {
    *(v9 + 64) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void kaldi::AutoRegressiveBeamSearchDecoder::InitDecoding(uint64_t a1, uint64_t a2)
{
  v13[22] = *MEMORY[0x1E69E9840];
  if (((*(*a2 + 24))(a2) & 0x80000000) != 0 || ((*(*a2 + 32))(a2) & 0x80000000) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__src);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__src, "decodable->BOSIndex() >= 0 && decodable->EOSIndex() >= 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__src);
  }

  *(a1 + 52) = 0;
  *(a1 + 32) = (*(*a2 + 16))(a2);
  *(a1 + 36) = (*(*a2 + 24))(a2);
  *(a1 + 40) = (*(*a2 + 32))(a2);
  *(a1 + 44) = (*(*a2 + 40))(a2);
  *(a1 + 48) = (*(*a2 + 48))(a2);
  LODWORD(__src[0]) = 0;
  std::vector<kaldi::LevenshteinOp::Value>::__assign_with_size[abi:ne200100]<kaldi::LevenshteinOp::Value const*,kaldi::LevenshteinOp::Value const*>((a1 + 56), __src, __src + 4, 1uLL);
  LODWORD(__src[0]) = *(a1 + 8);
  *(&__src[1] + 4) = 0;
  *(__src + 4) = 0;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__assign_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo const*,kaldi::AutoRegressiveBeamSearchDecoder::HypInfo const*>(a1 + 80, __src, v13, 1uLL);
  std::deque<int>::~deque[abi:ne200100](v11);
  v5 = *(a1 + 104);
  v4 = *(a1 + 112);
  if (v4 != v5)
  {
    do
    {
      v6 = v4 - 96;
      std::deque<int>::~deque[abi:ne200100]((v4 - 56));
      v4 = v6;
    }

    while (v6 != v5);
  }

  *(a1 + 112) = v5;
  v7 = *(a1 + 128);
  v8 = *(a1 + 136);
  while (v8 != v7)
  {
    v8 -= 3;
    __src[0] = v8;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](__src);
  }

  *(a1 + 136) = v7;
  *(a1 + 160) = *(a1 + 152);
}

void sub_1B57E91EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

BOOL kaldi::AutoRegressiveBeamSearchDecoder::Finished(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 52);
  v4 = *(a1 + 12);
  if (v4 < 0)
  {
    v4 = (*(*a2 + 56))(a2);
  }

  return v3 == v4 || *(a1 + 56) == *(a1 + 64);
}

uint64_t kaldi::AutoRegressiveBeamSearchDecoder::AdvanceDecoding(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 52);
  while (1)
  {
    v8 = *(a1 + 12);
    if (v8 < 0)
    {
      v8 = (*(*a2 + 56))(a2);
    }

    if (v7 == v8 || *(a1 + 56) == *(a1 + 64))
    {
      break;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v9 = (**a2)(a2, *(a1 + 52), a1 + 56, &v13);
    if (v9)
    {
      kaldi::AutoRegressiveBeamSearchDecoder::ComputeHypLogLikelihoods(a1, &v13);
      kaldi::AutoRegressiveBeamSearchDecoder::ComputeHypScores(a1, &v13, v12);
      kaldi::AutoRegressiveBeamSearchDecoder::PruneHyps(a1, v12, __p);
      kaldi::AutoRegressiveBeamSearchDecoder::UpdateDecoderState(a1, a2, &v13, v12, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v12[0])
      {
        v12[1] = v12[0];
        operator delete(v12[0]);
      }
    }

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    if (!v9)
    {
      break;
    }

    v7 = *(a1 + 52) + 1;
    *(a1 + 52) = v7;
    v6 = (v6 + 1);
    if (a3 == v6)
    {
      return a3;
    }
  }

  return v6;
}

void sub_1B57E93EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::AutoRegressiveBeamSearchDecoder::ComputeHypLogLikelihoods(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = v5 - v4;
  if (v5 != v4)
  {
    v7 = 0;
    v8 = *a2;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 5);
    v10 = *(a1 + 32);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      v11 = &v8[v10];
      if (v10)
      {
        do
        {
          *v8 = *(v4 + 96 * v7 + 4) + *v8;
          ++v8;
        }

        while (v8 != v11);
      }

      ++v7;
      v8 = v11;
    }

    while (v7 != v9);
  }

  v12 = *(a1 + 104);
  v13 = *(a1 + 112);
  if (v12 != v13)
  {
    v14 = a2[1];
    do
    {
      v15 = a2[2];
      if (v14 >= v15)
      {
        v16 = *a2;
        v17 = v14 - *a2;
        v18 = v17 >> 2;
        v19 = (v17 >> 2) + 1;
        if (v19 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v20 = v15 - v16;
        if (v20 >> 1 > v19)
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v21);
        }

        *(4 * v18) = *(v12 + 4);
        v14 = (4 * v18 + 4);
        memcpy(0, v16, v17);
        v22 = *a2;
        *a2 = 0;
        a2[1] = v14;
        a2[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v14++ = *(v12 + 4);
      }

      a2[1] = v14;
      v12 += 96;
    }

    while (v12 != v13);
  }

  if (*(a1 + 3))
  {

    kaldi::AutoRegressiveBeamSearchDecoder::MergeHyps(a1, a2);
  }
}

float kaldi::AutoRegressiveBeamSearchDecoder::ComputeHypScores@<S0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, float **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a3, *a2, a2[1], (a2[1] - *a2) >> 2);
  result = *(a1 + 28);
  if (result != 0.0)
  {
    v6 = *a3;
    v7 = *(a1 + 80);
    v8 = *(a1 + 88) - v7;
    if (v8)
    {
      v9 = 0;
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 5);
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      if (v10 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v10;
      }

      do
      {
        v14 = &v6[v11];
        v15 = *(a1 + 28);
        if (v11)
        {
          v16 = v15 * (*(v7 + 96 * v9 + 16) + 1);
          v17 = v6;
          do
          {
            *v17 = v16 + *v17;
            ++v17;
          }

          while (v17 != v14);
          v15 = *(a1 + 28);
        }

        result = v6[v12] - v15;
        v6[v12] = result;
        ++v9;
        v6 += v11;
      }

      while (v9 != v13);
    }

    else
    {
      v14 = *a3;
    }

    v18 = *(a1 + 104);
    v19 = *(a1 + 112) - v18;
    if (v19)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 5);
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = (v18 + 16);
      do
      {
        v22 = *v21;
        v21 += 24;
        result = *v14 + (v22 * *(a1 + 28));
        *v14++ = result;
        --v20;
      }

      while (v20);
    }
  }

  return result;
}

void kaldi::AutoRegressiveBeamSearchDecoder::PruneHyps(uint64_t a1@<X0>, uint64_t *a2@<X1>, int **a3@<X8>)
{
  std::vector<int>::vector[abi:ne200100](a3, (a2[1] - *a2) >> 2);
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    v8 = 0;
    v9 = (v7 - v6 - 4) >> 2;
    v10 = vdupq_n_s64(v9);
    v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v12 = v6 + 2;
    do
    {
      v13 = vdupq_n_s64(v8);
      v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_1B5AE0060)));
      if (vuzp1_s16(v14, *v10.i8).u8[0])
      {
        *(v12 - 2) = v8;
      }

      if (vuzp1_s16(v14, *&v10).i8[2])
      {
        *(v12 - 1) = v8 + 1;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_1B5AE0050)))).i32[1])
      {
        *v12 = v8 + 2;
        v12[1] = v8 + 3;
      }

      v8 += 4;
      v12 += 4;
    }

    while (v11 != v8);
  }

  v15 = *(a1 + 20);
  v16 = v7 - v6;
  if (v16 <= v15)
  {
    v51 = a2;
    if (v16 < 129)
    {
      v50 = 0;
      v47 = 0;
    }

    else
    {
      v46 = MEMORY[0x1E69E5398];
      v47 = v7 - v6;
      while (1)
      {
        v48 = operator new(4 * v47, v46);
        if (v48)
        {
          break;
        }

        v49 = v47 >> 1;
        v32 = v47 > 1;
        v47 >>= 1;
        if (!v32)
        {
          v50 = 0;
          v47 = v49;
          goto LABEL_49;
        }
      }

      v50 = v48;
    }

LABEL_49:
    std::__stable_sort<std::_ClassicAlgPolicy,kaldi::AutoRegressiveBeamSearchDecoder::PruneHyps(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(v6, v7, &v51, v7 - v6, v50, v47);
    if (v50)
    {
      operator delete(v50);
    }
  }

  else
  {
    v51 = a2;
    if (v15)
    {
      v17 = &v6[v15];
      if (v15 >= 2)
      {
        v18 = (v15 - 2) >> 1;
        v19 = &v6[v18];
        v20 = v18 + 1;
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> kaldi::quasar::argsortn<float,false>(std::vector<float> const&,unsigned long)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(v6, &v51, v15, v19--);
          --v20;
        }

        while (v20);
      }

      if (v17 != v7)
      {
        v21 = &v6[v15];
        do
        {
          v22 = *v21;
          v23 = *v6;
          if (*(*a2 + 4 * v22) > *(*a2 + 4 * v23))
          {
            *v21 = v23;
            *v6 = v22;
            std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> kaldi::quasar::argsortn<float,false>(std::vector<float> const&,unsigned long)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(v6, &v51, v15, v6);
          }

          ++v21;
        }

        while (v21 != v7);
      }

      if (v15 >= 2)
      {
        do
        {
          v24 = 0;
          v25 = *v6;
          v26 = v51;
          v27 = v6;
          do
          {
            v28 = v27;
            v27 += v24 + 1;
            v29 = 2 * v24;
            v24 = (2 * v24) | 1;
            v30 = v29 + 2;
            if (v30 < v15 && *(*v26 + 4 * *v27) > *(*v26 + 4 * v27[1]))
            {
              ++v27;
              v24 = v30;
            }

            *v28 = *v27;
          }

          while (v24 <= ((v15 - 2) >> 1));
          if (v27 == --v17)
          {
            *v27 = v25;
          }

          else
          {
            *v27 = *v17;
            *v17 = v25;
            v31 = (v27 - v6 + 4) >> 2;
            v32 = v31 < 2;
            v33 = v31 - 2;
            if (!v32)
            {
              v34 = v33 >> 1;
              v35 = &v6[v34];
              v36 = *v35;
              v37 = *v27;
              v38 = *v26;
              v39 = *(v38 + 4 * v37);
              if (*(v38 + 4 * v36) > v39)
              {
                do
                {
                  v40 = v35;
                  *v27 = v36;
                  if (!v34)
                  {
                    break;
                  }

                  v34 = (v34 - 1) >> 1;
                  v35 = &v6[v34];
                  v36 = *v35;
                  v27 = v40;
                }

                while (*(v38 + 4 * v36) > v39);
                *v40 = v37;
              }
            }
          }

          v32 = v15-- <= 2;
        }

        while (!v32);
      }
    }

    v41 = *(a1 + 20);
    v42 = *(a1 + 16);
    v43 = *a3;
    v44 = &(*a3)[v42];
    if (v42 != v41)
    {
      v45 = &v43[v41];
      while (*(*a2 + 4 * *v44) >= (*(*a2 + 4 * *v43) - *(a1 + 24)))
      {
        if (++v44 == v45)
        {
          v44 = v45;
          break;
        }
      }
    }

    if (v44 != a3[1])
    {
      a3[1] = v44;
    }
  }
}

void sub_1B57E9B04(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::AutoRegressiveBeamSearchDecoder::UpdateDecoderState(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, int **a5)
{
  *&v106[4] = *MEMORY[0x1E69E9840];
  v102 = 0uLL;
  v103 = 0;
  v100 = 0uLL;
  v101 = 0;
  v98 = 0uLL;
  v99 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  __src[0] = 0;
  __src[1] = 0;
  v94 = 0;
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v81 = (a1 + 80);
  v8 = *(a1 + 32);
  memset(v91, 0, sizeof(v91));
  v92 = 1065353216;
  v10 = *a5;
  v9 = a5[1];
  if (*a5 != v9)
  {
    v13 = -1431655765 * ((v7 - v6) >> 5) * v8;
    do
    {
      v14 = *v10;
      if (*v10 >= v13)
      {
        v27 = v14 % v13;
        v28 = *(a1 + 104) + 96 * (v14 % v13);
        v29 = *(v28 + 32);
        v30 = *(v28 + 16);
        v86 = *v28;
        v87 = v30;
        v88 = v29;
        std::deque<int>::deque(v89, (v28 + 40));
        v90 = *(v28 + 88);
        v31 = *(a1 + 152) + 16 * v27;
        v104 = *v31;
        v105 = *(v31 + 8);
        v32 = *(v31 + 12);
        v33 = *v10;
        v35 = *(&v86 + 1);
        v36 = *(*a4 + 4 * v33);
        DWORD1(v86) = *(*a3 + 4 * v33);
        v34 = *(&v86 + 1);
        DWORD2(v86) = v36;
        std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::push_back[abi:ne200100](&v98, &v86);
        v37 = v32 + (v34 - v35);
        v23 = __src[1];
        if (__src[1] >= v94)
        {
          v39 = (__src[1] - __src[0]) >> 4;
          v40 = v39 + 1;
          if ((v39 + 1) >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v41 = v94 - __src[0];
          if ((v94 - __src[0]) >> 3 > v40)
          {
            v40 = v41 >> 3;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF0)
          {
            v42 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(__src, v42);
          }

          v50 = 16 * v39;
          *v50 = v104;
          *(v50 + 8) = v105;
          *(v50 + 12) = v37;
          v38 = (16 * v39 + 16);
          v45 = __src[0];
          v46 = __src[1] - __src[0];
          v51 = (16 * v39 - (__src[1] - __src[0]));
          goto LABEL_40;
        }

        *__src[1] = v104;
        *(v23 + 2) = v105;
        v23[3] = v37;
      }

      else
      {
        v15 = *(a1 + 32);
        v84 = v14 % v15;
        v85 = v14 / v15;
        v83 = (*(*a2 + 8))(a2, *(a1 + 52), *(*(a1 + 56) + 4 * (v14 / v15)));
        v16 = *v81 + 96 * v85;
        v17 = *(v16 + 32);
        v18 = *(v16 + 16);
        v86 = *v16;
        v87 = v18;
        v88 = v17;
        std::deque<int>::deque(v89, (v16 + 40));
        v90 = *(v16 + 88);
        v19 = *v10;
        v20 = *a3;
        *&v83 = *(*a3 + 4 * v19) - *(&v86 + 1);
        if (v84 == *(a1 + 48))
        {
          v21 = -1;
        }

        else
        {
          v21 = v84;
        }

        kaldi::AutoRegressiveBeamSearchDecoder::HypInfo::Update(&v86, *(v20 + 4 * v19), *(*a4 + 4 * v19), v21);
        if (v84 != *(a1 + 40))
        {
          if (*(a1 + 8) & 0x80000000) != 0 || (v90)
          {
            std::vector<int>::push_back[abi:ne200100](&v102, &v83 + 1);
            std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::push_back[abi:ne200100](&v100, &v86);
            v43 = v96;
            if (v96 >= v97)
            {
              v44 = std::vector<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain>::__emplace_back_slow_path<int &,int &,float &>(&v95, &v85, &v84, &v83);
            }

            else
            {
              v104 = __PAIR64__(v84, v85);
              v105 = v83;
              v96[1] = 0;
              v43[2] = 0;
              *v43 = 0;
              std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__init_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token const*,kaldi::AutoRegressiveBeamSearchDecoder::Token const*>(v43, &v104, v106, 1uLL);
              v44 = (v43 + 3);
            }

            v96 = v44;
          }

          else
          {
            v52 = std::__hash_table<std::__hash_value_type<std::deque<int>,unsigned long>,std::__unordered_map_hasher<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,std::equal_to<std::deque<int>>,true>,std::__unordered_map_equal<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,std::equal_to<std::deque<int>>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,true>,std::allocator<std::__hash_value_type<std::deque<int>,unsigned long>>>::find<std::deque<int>>(v91, v89);
            if (v52)
            {
              if (*(a1 + 5) == 1)
              {
                v90 = 1;
                std::vector<int>::push_back[abi:ne200100](&v102, &v83 + 1);
                std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::push_back[abi:ne200100](&v100, &v86);
                v53 = v96;
                if (v96 >= v97)
                {
                  v54 = std::vector<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain>::__emplace_back_slow_path<int &,int &,float &>(&v95, &v85, &v84, &v83);
                }

                else
                {
                  v104 = __PAIR64__(v84, v85);
                  v105 = v83;
                  v96[1] = 0;
                  v53[2] = 0;
                  *v53 = 0;
                  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__init_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token const*,kaldi::AutoRegressiveBeamSearchDecoder::Token const*>(v53, &v104, v106, 1uLL);
                  v54 = (v53 + 3);
                }

                v96 = v54;
              }

              v64 = (v95 + 24 * v52[8]);
              v65 = v64[1];
              v66 = v64[2];
              if (v65 >= v66)
              {
                v70 = *v64;
                v71 = v65 - *v64;
                v72 = 0xAAAAAAAAAAAAAAABLL * (v71 >> 2) + 1;
                if (v72 > 0x1555555555555555)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                v73 = 0xAAAAAAAAAAAAAAABLL * ((v66 - v70) >> 2);
                if (2 * v73 > v72)
                {
                  v72 = 2 * v73;
                }

                if (v73 >= 0xAAAAAAAAAAAAAAALL)
                {
                  v72 = 0x1555555555555555;
                }

                if (v72)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,float,int>>>(v64, v72);
                }

                v74 = (4 * (v71 >> 2));
                v75 = v84;
                v76 = v83;
                *v74 = v85;
                v74[1] = v75;
                v74[2] = v76;
                v69 = v74 + 3;
                v77 = v74 - v71;
                memcpy(v74 - v71, v70, v71);
                v78 = *v64;
                *v64 = v77;
                v64[1] = v69;
                v64[2] = 0;
                if (v78)
                {
                  operator delete(v78);
                }
              }

              else
              {
                v67 = v84;
                v68 = v83;
                *v65 = v85;
                v65[1] = v67;
                v65[2] = v68;
                v69 = v65 + 3;
              }

              v64[1] = v69;
            }

            else
            {
              std::vector<int>::push_back[abi:ne200100](&v102, &v83 + 1);
              std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::push_back[abi:ne200100](&v100, &v86);
              v61 = v96;
              if (v96 >= v97)
              {
                v62 = std::vector<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain>::__emplace_back_slow_path<int &,int &,float &>(&v95, &v85, &v84, &v83);
              }

              else
              {
                v104 = __PAIR64__(v84, v85);
                v105 = v83;
                v96[1] = 0;
                v61[2] = 0;
                *v61 = 0;
                std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__init_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token const*,kaldi::AutoRegressiveBeamSearchDecoder::Token const*>(v61, &v104, v106, 1uLL);
                v62 = (v61 + 3);
              }

              v96 = v62;
              v63 = v95;
              v104 = v89;
              std::__hash_table<std::__hash_value_type<std::deque<int>,unsigned long>,std::__unordered_map_hasher<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,std::equal_to<std::deque<int>>,true>,std::__unordered_map_equal<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,std::equal_to<std::deque<int>>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,true>,std::allocator<std::__hash_value_type<std::deque<int>,unsigned long>>>::__emplace_unique_key_args<std::deque<int>,std::piecewise_construct_t const&,std::tuple<std::deque<int> const&>,std::tuple<>>(v91, v89)[8] = 0xAAAAAAAAAAAAAAABLL * ((v62 - v63) >> 3) - 1;
            }
          }

          goto LABEL_43;
        }

        std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::push_back[abi:ne200100](&v98, &v86);
        v22 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 136) - *(a1 + 128)) >> 3);
        v23 = __src[1];
        if (__src[1] >= v94)
        {
          v45 = __src[0];
          v46 = __src[1] - __src[0];
          v47 = (__src[1] - __src[0]) >> 4;
          v48 = v47 + 1;
          if ((v47 + 1) >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v49 = v94 - __src[0];
          if ((v94 - __src[0]) >> 3 > v48)
          {
            v48 = v49 >> 3;
          }

          if (v49 >= 0x7FFFFFFFFFFFFFF0)
          {
            v48 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v48)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(__src, v48);
          }

          v55 = (__src[1] - __src[0]) >> 4;
          v56 = (16 * v47);
          v58 = v84;
          v57 = v85;
          v59 = v83;
          *v56 = v22;
          v56[1] = v57;
          v56[2] = v58;
          v56[3] = v59;
          v38 = (16 * v47 + 16);
          v51 = &v56[-4 * v55];
LABEL_40:
          memcpy(v51, v45, v46);
          v60 = __src[0];
          __src[0] = v51;
          __src[1] = v38;
          v94 = 0;
          if (v60)
          {
            operator delete(v60);
          }

          goto LABEL_42;
        }

        v25 = v84;
        v24 = v85;
        v26 = v83;
        *__src[1] = v22;
        *(v23 + 1) = v24;
        *(v23 + 2) = v25;
        *(v23 + 3) = v26;
      }

      v38 = v23 + 4;
LABEL_42:
      __src[1] = v38;
LABEL_43:
      std::deque<int>::~deque[abi:ne200100](v89);
      ++v10;
    }

    while (v10 != v9);
  }

  v79 = *(a1 + 56);
  if (v79)
  {
    *(a1 + 64) = v79;
    operator delete(v79);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 56) = v102;
  *(a1 + 72) = v103;
  v103 = 0;
  v102 = 0uLL;
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__vdeallocate(v81);
  *(a1 + 80) = v100;
  *(a1 + 96) = v101;
  v101 = 0;
  v100 = 0uLL;
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__vdeallocate((a1 + 104));
  *(a1 + 104) = v98;
  *(a1 + 120) = v99;
  v99 = 0;
  v98 = 0uLL;
  std::vector<std::vector<std::vector<unsigned long>>>::push_back[abi:ne200100]((a1 + 128), &v95);
  v80 = *(a1 + 152);
  if (v80)
  {
    *(a1 + 160) = v80;
    operator delete(v80);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  *(a1 + 152) = *__src;
  *(a1 + 168) = v94;
  __src[1] = 0;
  v94 = 0;
  __src[0] = 0;
  std::__hash_table<std::__hash_value_type<std::deque<int>,unsigned long>,std::__unordered_map_hasher<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,std::equal_to<std::deque<int>>,true>,std::__unordered_map_equal<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,std::equal_to<std::deque<int>>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,true>,std::allocator<std::__hash_value_type<std::deque<int>,unsigned long>>>::~__hash_table(v91);
  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  *&v86 = &v95;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v86);
  *&v86 = &v98;
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__destroy_vector::operator()[abi:ne200100](&v86);
  *&v86 = &v100;
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__destroy_vector::operator()[abi:ne200100](&v86);
  if (v102)
  {
    *(&v102 + 1) = v102;
    operator delete(v102);
  }
}

void sub_1B57EA348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  std::deque<int>::~deque[abi:ne200100](v39);
  std::__hash_table<std::__hash_value_type<std::deque<int>,unsigned long>,std::__unordered_map_hasher<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,std::equal_to<std::deque<int>>,true>,std::__unordered_map_equal<std::deque<int>,std::__hash_value_type<std::deque<int>,unsigned long>,std::equal_to<std::deque<int>>,kaldi::AutoRegressiveBeamSearchDecoder::DequeHash,true>,std::allocator<std::__hash_value_type<std::deque<int>,unsigned long>>>::~__hash_table(&a27);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  a15 = &a36;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a15);
  a15 = &a39;
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__destroy_vector::operator()[abi:ne200100](&a15);
  a15 = (v40 - 208);
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::HypInfo>::__destroy_vector::operator()[abi:ne200100](&a15);
  v42 = *(v40 - 176);
  if (v42)
  {
    *(v40 - 168) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

void *kaldi::AutoRegressiveBeamSearchDecoder::GetPartialResult@<X0>(void *this@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  if (this[16] == this[17])
  {
    a2->__begin_ = 0;
    a2->__end_ = 0;
    a2->__end_cap_.__value_ = 0;
    return this;
  }

  v3 = this;
  kaldi::AutoRegressiveBeamSearchDecoder::GetFinalTokensMap(this, 1, 1, v23);
  LODWORD(__n) = *(v24 + 16);
  memset(v22, 0, sizeof(v22));
  std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>::__init_with_size[abi:ne200100]<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>*>(v22, *(v24 + 24), *(v24 + 32), (*(v24 + 32) - *(v24 + 24)) >> 5);
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__init_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token*,kaldi::AutoRegressiveBeamSearchDecoder::Token*>(&__p, *v22[0], *(v22[0] + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v22[0] + 8) - *v22[0]) >> 2));
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<int>::reserve(a2, __n);
  v4 = *(__p + 1);
  if (*(v3 + 12) == v4)
  {
    if (*(v3 + 2))
    {
      goto LABEL_12;
    }
  }

  else if (*(v3 + 11) == v4)
  {
    if (*(v3 + 1))
    {
      goto LABEL_12;
    }
  }

  else if (*(v3 + 10) == v4 && (*v3 & 1) != 0)
  {
    goto LABEL_12;
  }

  std::vector<int>::push_back[abi:ne200100](&a2->__begin_, __p + 1);
LABEL_12:
  if (__n >= 1)
  {
    v5 = __n + 1;
    v6 = 24 * __n - 24;
    do
    {
      v7 = __p;
      v8 = (*(v3[16] + v6) + 24 * *__p);
      if (&__p != v8)
      {
        std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__assign_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token*,kaldi::AutoRegressiveBeamSearchDecoder::Token*>(&__p, *v8, v8[1], 0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 2));
        v7 = __p;
      }

      v11 = v7[1];
      v9 = v7 + 1;
      v10 = v11;
      if (*(v3 + 12) == v11)
      {
        if (*(v3 + 2))
        {
          goto LABEL_25;
        }
      }

      else if (*(v3 + 11) == v10)
      {
        if (*(v3 + 1))
        {
          goto LABEL_25;
        }
      }

      else if (*(v3 + 10) == v10 && (*v3 & 1) != 0)
      {
        goto LABEL_25;
      }

      std::vector<int>::push_back[abi:ne200100](&a2->__begin_, v9);
LABEL_25:
      --v5;
      v6 -= 24;
    }

    while (v5 > 1);
  }

  begin = a2->__begin_;
  end = a2->__end_;
  if (a2->__begin_ != end)
  {
    v14 = end - 1;
    if (v14 > begin)
    {
      v15 = (begin + 1);
      do
      {
        v16 = *(v15 - 4);
        *(v15 - 4) = *v14;
        *v14-- = v16;
        v17 = v15 >= v14;
        v15 += 4;
      }

      while (!v17);
    }
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  __p = v22;
  std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  return std::__hash_table<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>>>::~__hash_table(v23);
}

void sub_1B57EA65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__hash_table<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

void kaldi::AutoRegressiveBeamSearchDecoder::GetFinalTokensMap(kaldi::AutoRegressiveBeamSearchDecoder *this@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  *&v36[4] = *MEMORY[0x1E69E9840];
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  v7 = *(this + 17);
  if (a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1431655765 * ((*(v7 - 16) - *(v7 - 24)) >> 3);
  }

  if (a3 == -1)
  {
    v4 = ((*(this + 20) - *(this + 19)) >> 4) - 1431655765 * ((*(v7 - 16) - *(v7 - 24)) >> 3);
  }

  if (v4 >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(this + 19);
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(v7 - 16) - *(v7 - 24)) >> 3);
      if (v9 >= ((*(this + 20) - v10) >> 4))
      {
        if (v11 <= v8)
        {
          return;
        }

        v13 = *(this + 10);
LABEL_16:
        v27[0] = *(v13 + 96 * v8 + 8) - *(v13 + 96 * v8 + 4);
        LODWORD(v34) = -1 - 1431655765 * ((*(this + 17) - *(this + 16)) >> 3);
        v16 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a4, &v34);
        v17 = v16;
        if (v16)
        {
          v18 = (*(v7 - 24) + 24 * v8);
          v19 = v16[4];
          if (v19 >= v16[5])
          {
            v20 = std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>::__emplace_back_slow_path<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain const&,float &>(v16 + 3, v18, v27);
          }

          else
          {
            std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>::__construct_one_at_end[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain const&,float &>((v16 + 3), v18, v27);
            v20 = v19 + 32;
          }

          v17[4] = v20;
        }

        else
        {
          v21 = (*(v7 - 24) + 24 * v8);
          __p[0] = 0;
          __p[1] = 0;
          v31 = 0;
          std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__init_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token*,kaldi::AutoRegressiveBeamSearchDecoder::Token*>(__p, *v21, v21[1], 0xAAAAAAAAAAAAAAABLL * ((v21[1] - *v21) >> 2));
          v32 = v27[0];
          *&v28 = &v34;
          v22 = std::__hash_table<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a4, &v34);
          std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>::__assign_with_size[abi:ne200100]<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float> const*,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float> const*>(v22 + 3, __p, &v33, 1uLL);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        ++v8;
        goto LABEL_32;
      }

      v12 = *(this + 13);
      if (v11 > v8)
      {
        v13 = *(this + 10);
        if (*(v13 + 96 * v8 + 8) > *(v12 + 96 * v9 + 8))
        {
          goto LABEL_16;
        }
      }

      *v27 = *(v10 + 16 * v9);
      v26 = *(v12 + 96 * v9 + 8) - *(v12 + 96 * v9 + 4);
      v14 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a4, v27);
      if (!v14)
      {
        break;
      }

      *&v28 = *&v27[1];
      *(&v28 + 2) = v27[3];
      __p[1] = 0;
      v31 = 0;
      __p[0] = 0;
      std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__init_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token const*,kaldi::AutoRegressiveBeamSearchDecoder::Token const*>(__p, &v28, &v28 + 12, 1uLL);
      v15 = v14[4];
      if (v15 >= v14[5])
      {
        v25 = std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>::__emplace_back_slow_path<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float &>(v14 + 3, __p, &v26);
        v24 = __p[0];
        v14[4] = v25;
        if (v24)
        {
          __p[1] = v24;
LABEL_30:
          operator delete(v24);
        }
      }

      else
      {
        *v15 = 0;
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        *v15 = *__p;
        *(v15 + 16) = v31;
        *(v15 + 24) = v26;
        v14[4] = v15 + 32;
      }

LABEL_31:
      ++v9;
LABEL_32:
      if (!--v4)
      {
        return;
      }
    }

    v34 = *&v27[1];
    v35 = v27[3];
    v29 = 0;
    v28 = 0uLL;
    std::vector<kaldi::AutoRegressiveBeamSearchDecoder::Token>::__init_with_size[abi:ne200100]<kaldi::AutoRegressiveBeamSearchDecoder::Token const*,kaldi::AutoRegressiveBeamSearchDecoder::Token const*>(&v28, &v34, v36, 1uLL);
    *__p = v28;
    v31 = v29;
    v28 = 0uLL;
    v29 = 0;
    v32 = v26;
    v34 = v27;
    v23 = std::__hash_table<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a4, v27);
    std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>::__assign_with_size[abi:ne200100]<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float> const*,std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float> const*>(v23 + 3, __p, &v33, 1uLL);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v24 = v28;
    if (!v28)
    {
      goto LABEL_31;
    }

    *(&v28 + 1) = v28;
    goto LABEL_30;
  }
}

void sub_1B57EAA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>>>::~__hash_table(v20);
  _Unwind_Resume(a1);
}

BOOL kaldi::AutoRegressiveBeamSearchDecoder::GetRawLattice(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v57 = *MEMORY[0x1E69E9840];
  (*(*a2 + 224))(a2);
  kaldi::AutoRegressiveBeamSearchDecoder::GetFinalTokensMap(a1, a3, a4, v47);
  v38 = v48;
  if (!v48)
  {
    goto LABEL_55;
  }

  if (*(a1 + 136) == *(a1 + 128))
  {
    goto LABEL_51;
  }

  v8 = (*(*a2 + 200))(a2);
  v50 = 0;
  (*(*a2 + 184))(a2, v8, &v50);
  v45 = 0;
  v46 = 0;
  v9 = -1431655765 * ((*(a1 + 136) - *(a1 + 128)) >> 3) - 1;
  v44 = &v45;
  v43 = v9;
  v39 = v8;
  do
  {
    v41 = v44;
    v42[0] = v45;
    v10 = v46;
    v45 = 0;
    v46 = 0;
    v42[1] = v10;
    v11 = v10 == 0;
    v12 = &v41;
    if (!v11)
    {
      v12 = v42[0] + 2;
    }

    *v12 = v42;
    v44 = &v45;
    v13 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v47, &v43);
    v14 = v13;
    if (v13 && v13[4] != v13[3])
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v49 = v16;
        v50 = &v49;
        *(std::__tree<std::__value_type<std::pair<BOOL,int>,int>,std::__map_value_compare<std::pair<BOOL,int>,std::__value_type<std::pair<BOOL,int>,int>,std::less<std::pair<BOOL,int>>,true>,std::allocator<std::__value_type<std::pair<BOOL,int>,int>>>::__emplace_unique_key_args<std::pair<BOOL,int>,std::piecewise_construct_t const&,std::tuple<std::pair<BOOL,int>&&>,std::tuple<>>(&v41, &v49) + 36) = v8;
        ++v15;
        v16 += 0x100000000;
      }

      while (v15 < (v14[4] - v14[3]) >> 5);
    }

    v17 = v41;
    if (v41 != v42)
    {
      while (1)
      {
        if (*(v17 + 28) == 1)
        {
          v50 = &v43;
          v18 = std::__hash_table<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v47, &v43)[3] + 32 * *(v17 + 8);
        }

        else
        {
          v18 = *(*(a1 + 128) + 24 * v43) + 24 * *(v17 + 8);
        }

        v19 = *v18;
        v20 = *(v18 + 8);
        if (*v18 != v20)
        {
          break;
        }

LABEL_42:
        v34 = v17[1];
        if (v34)
        {
          do
          {
            v35 = v34;
            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          do
          {
            v35 = v17[2];
            v11 = *v35 == v17;
            v17 = v35;
          }

          while (!v11);
        }

        v17 = v35;
        if (v35 == v42)
        {
          goto LABEL_48;
        }
      }

      v21 = 0;
      while (1)
      {
        v23 = *v19;
        v22 = *(v19 + 1);
        v24 = v19[2];
        if (*(a1 + 48) == v22)
        {
          if (*(a1 + 2))
          {
            goto LABEL_27;
          }
        }

        else if (*(a1 + 44) == v22)
        {
          if (*(a1 + 1))
          {
            goto LABEL_27;
          }
        }

        else if (*(a1 + 40) == v22 && (*a1 & 1) != 0)
        {
          goto LABEL_27;
        }

        if (v22 != *(a1 + 36))
        {
          v27 = *(v19 + 1);
          if (!v22)
          {
            if (kaldi::g_kaldi_verbose_level >= -1)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
              v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Decoding output contains label 0. Replacing it with BOS label (", 63);
              v33 = MEMORY[0x1B8C84C00](v32, *(a1 + 36));
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ").", 2);
              kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v50);
            }

            v27 = 0;
            v22 = *(a1 + 36);
          }

          goto LABEL_28;
        }

        if (kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Decoding output contains BOS label (", 36);
          v26 = MEMORY[0x1B8C84C00](v25, *(a1 + 36));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "). Mapping it to label 0.", 25);
          kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v50);
        }

LABEL_27:
        v27 = 0;
LABEL_28:
        v28 = 0.0;
        if (*(v17 + 28) == 1)
        {
          v50 = &v43;
          v28 = *(std::__hash_table<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v47, &v43)[3] + 32 * *(v17 + 8) + 24);
        }

        v29 = *(v17 + 9);
        v50 = __PAIR64__(v27, v22);
        v51 = -v28;
        v52 = -v24;
        LODWORD(v53) = v29;
        v40 = v23 << 32;
        v30 = std::__tree<std::__value_type<std::pair<BOOL,int>,int>,std::__map_value_compare<std::pair<BOOL,int>,std::__value_type<std::pair<BOOL,int>,int>,std::less<std::pair<BOOL,int>>,true>,std::allocator<std::__value_type<std::pair<BOOL,int>,int>>>::find<std::pair<BOOL,int>>(&v44, &v40);
        if (&v45 == v30)
        {
          v31 = (*(*a2 + 200))(a2);
          v49 = &v40;
          *(std::__tree<std::__value_type<std::pair<BOOL,int>,int>,std::__map_value_compare<std::pair<BOOL,int>,std::__value_type<std::pair<BOOL,int>,int>,std::less<std::pair<BOOL,int>>,true>,std::allocator<std::__value_type<std::pair<BOOL,int>,int>>>::__emplace_unique_key_args<std::pair<BOOL,int>,std::piecewise_construct_t const&,std::tuple<std::pair<BOOL,int>&&>,std::tuple<>>(&v44, &v40) + 36) = v31;
        }

        else
        {
          v31 = *(v30 + 9);
        }

        (*(*a2 + 208))(a2, v31, &v50);
        if (a4 == -1 || (++v21, v21 < a4))
        {
          v19 += 3;
          if (v19 != v20)
          {
            continue;
          }
        }

        goto LABEL_42;
      }
    }

LABEL_48:
    std::__tree<int>::destroy(&v41, v42[0]);
    v36 = --v43 < 0;
    LODWORD(v8) = v39;
  }

  while (!v36);
  (*(*a2 + 176))(a2, *(v44 + 9));
  std::__tree<int>::destroy(&v44, v45);
LABEL_51:
  fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEpsLocalClass(&v50, a2);
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

LABEL_55:
  std::__hash_table<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>>>::~__hash_table(v47);
  return v38 != 0;
}

void sub_1B57EB0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void *);
  v15 = va_arg(va1, void);
  std::__tree<int>::destroy(va, v14);
  std::__hash_table<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::pair<kaldi::AutoRegressiveBeamSearchDecoder::TokenChain,float>>>>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void kaldi::AutoRegressiveBeamSearchDecoder::MergeHyps(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 48) & 0x80000000) == 0)
  {
    v4 = *(a1 + 80);
    v3 = *(a1 + 88);
    if (v3 != v4)
    {
      v6 = 0;
      do
      {
        if (v3 == v4)
        {
          v3 = v4;
        }

        else
        {
          v7 = 0;
          v8 = 0;
          do
          {
            if (v6 != v8 && *(v4 + 96 * v6 + 24) == *(v4 + v7 + 32))
            {
              kaldi::AutoRegressiveBeamSearchDecoder::MergeLogLikelihoods(a1, a2, *(v4 + v7 + 12) + *(a1 + 32) * v6, *(a1 + 48) + *(a1 + 32) * v8);
              v4 = *(a1 + 80);
              v3 = *(a1 + 88);
            }

            ++v8;
            v7 += 96;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 5) > v8);
        }

        v10 = *(a1 + 104);
        v9 = *(a1 + 112);
        if (v9 != v10)
        {
          v11 = 0;
          v12 = 32;
          do
          {
            v13 = *(a1 + 80);
            if (*(v13 + 96 * v6 + 24) == *(v10 + v12))
            {
              kaldi::AutoRegressiveBeamSearchDecoder::MergeLogLikelihoods(a1, a2, *(a1 + 40) + *(a1 + 32) * v6, v11 - 1431655765 * ((*(a1 + 88) - v13) >> 5) * *(a1 + 32));
              v10 = *(a1 + 104);
              v9 = *(a1 + 112);
            }

            ++v11;
            v12 += 96;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 5) > v11);
          v4 = *(a1 + 80);
          v3 = *(a1 + 88);
        }

        ++v6;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 5) > v6);
    }
  }
}