void sub_1B56203F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::SpeechRecognizerModelLoader::getDecoderChain@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 352, a2);

  return quasar::SpeechRecognizerModelLoader::getOrConstructDecoderChain(a1, a2, a3, a4);
}

uint64_t anonymous namespace::checkActiveConfigurationFilter<unsigned int>(uint64_t result, unsigned int *a2)
{
  if (*(result + 24) == 1)
  {
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *a2;
      do
      {
        v4 = *(v2 + 7);
        if (v3 >= v4)
        {
          if (v4 >= v3)
          {
            return result;
          }

          ++v2;
        }

        v2 = *v2;
      }

      while (v2);
    }

    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Value ", 6);
    v6 = MEMORY[0x1B8C84C10](v5, *a2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, " not found in active configuration.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
  }

  return result;
}

uint64_t anonymous namespace::checkActiveConfigurationFilter<std::string>(uint64_t result, uint64_t a2)
{
  if (*(result + 24) == 1)
  {
    result = std::__tree<std::string>::__count_unique<std::string>(result, a2);
    if (!result)
    {
      memset(v8, 0, sizeof(v8));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
      v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Value ", 6);
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

      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " not found in active configuration.");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::checkActiveConfigurationFilter<BOOL>(uint64_t result, unsigned __int8 *a2)
{
  if (*(result + 24) == 1)
  {
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *a2;
      do
      {
        v4 = *(v2 + 25);
        if (v3 >= v4)
        {
          if (v4 >= v3)
          {
            return result;
          }

          ++v2;
        }

        v2 = *v2;
      }

      while (v2);
    }

    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Value ", 6);
    v6 = MEMORY[0x1B8C84BD0](v5, *a2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, " not found in active configuration.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
  }

  return result;
}

void quasar::SpeechRecognizerModelLoader::lookupRecognizers(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, std::string *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, std::string *a7@<X6>, std::string *a8@<X7>, uint64_t a9@<X8>, std::string *a10)
{
  v21 = a2;
  v20 = a5;
  v19 = a6;

  quasar::lookupRecognizers<quasar::Decoder>(a2, a3, a4, a5, a6, a7, a8, a10, a9, (a1 + 376));
}

void quasar::lookupRecognizers<quasar::Decoder>(uint64_t a1@<X0>, const void **a2@<X1>, std::string *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string *a6@<X5>, std::string *a7@<X6>, std::string *a8@<X7>, uint64_t a9@<X8>, __int128 **a10)
{
  v71 = 0;
  v72 = 0;
  v73 = 0;
  memset(&v70, 0, sizeof(v70));
  v19 = *a10;
  v18 = a10[1];
  if (*a10 == v18)
  {
    goto LABEL_54;
  }

  do
  {
    if (quasar::RecogRequestFilter::isMatch(**v19, a1, a2, a3, a4, a5, a6, a7, a8))
    {
      if (v71 == v72)
      {
        goto LABEL_17;
      }

      v20 = **v19;
      v21 = *(v20 + 23);
      if (v21 >= 0)
      {
        v22 = *(v20 + 23);
      }

      else
      {
        v22 = *(v20 + 8);
      }

      size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v70.__r_.__value_.__l.__size_;
      }

      if (v22 == size)
      {
        v24 = v21 >= 0 ? **v19 : *v20;
        v25 = (v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v70 : v70.__r_.__value_.__r.__words[0];
        if (!memcmp(v24, v25, v22))
        {
LABEL_17:
          std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](&v71, v19);
          std::string::operator=(&v70, **v19);
        }
      }
    }

    ++v19;
  }

  while (v19 != v18);
  v26 = v71;
  v49 = v72;
  if (v71 == v72)
  {
LABEL_54:
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
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v53);
    quasar::RecogRequestFilter::noMatchingComponentErrorMessage(a1, a2, a3, a4, a5, a6, a7, a8);
    if ((v52 & 0x80u) == 0)
    {
      v47 = __p;
    }

    else
    {
      v47 = __p[0];
    }

    if ((v52 & 0x80u) == 0)
    {
      v48 = v52;
    }

    else
    {
      v48 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, v47, v48);
    if (v52 < 0)
    {
      operator delete(__p[0]);
    }

    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v53);
  }

  v27 = 0;
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  do
  {
    v28 = *v26;
    if (*v26)
    {
      v30 = *(v28 + 80);
      v29 = *(v28 + 88);
      if (v30 == v29)
      {
        LOBYTE(v32) = 0;
        v33 = 0;
      }

      else
      {
        v31 = 0;
        v32 = 0;
        do
        {
          v31 |= (*(**v30 + 96))();
          v32 |= (*(**v30 + 104))();
          v30 += 16;
        }

        while (v30 != v29);
        v27 = *(a9 + 8);
        if (v31)
        {
          v33 = 256;
        }

        else
        {
          v33 = 0;
        }
      }

      LOWORD(v28) = v32 & 1;
    }

    else
    {
      v33 = 0;
    }

    if (v72 - v71 == 16)
    {
      v34 = 1;
    }

    else
    {
      v34 = v28;
    }

    v35 = *(a9 + 16);
    if (v27 >= v35)
    {
      v37 = 0xAAAAAAAAAAAAAAABLL * ((v27 - *a9) >> 3);
      v38 = v37 + 1;
      if (v37 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v39 = 0xAAAAAAAAAAAAAAABLL * ((v35 - *a9) >> 3);
      if (2 * v39 > v38)
      {
        v38 = 2 * v39;
      }

      if (v39 >= 0x555555555555555)
      {
        v40 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v40 = v38;
      }

      *&v55 = a9;
      if (v40)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<quasar::RecognizerComponents<quasar::Decoder>>,quasar::RecognizerProperties>>>(a9, v40);
      }

      v41 = 24 * v37;
      *v41 = *v26;
      v42 = v26[1];
      *(v41 + 8) = v42;
      if (v42)
      {
        atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
      }

      *(24 * v37 + 0x10) = v33 | v34;
      v27 = v41 + 24;
      v43 = *(a9 + 8) - *a9;
      v44 = v41 - v43;
      memcpy((v41 - v43), *a9, v43);
      v45 = *a9;
      *a9 = v44;
      *(a9 + 8) = v27;
      v46 = *(a9 + 16);
      *(a9 + 16) = 0;
      *&v54 = v45;
      *(&v54 + 1) = v46;
      *&v53 = v45;
      *(&v53 + 1) = v45;
      std::__split_buffer<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::~__split_buffer(&v53);
    }

    else
    {
      *v27 = *v26;
      v36 = v26[1];
      *(v27 + 8) = v36;
      if (v36)
      {
        atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
      }

      *(v27 + 16) = v33 | v34;
      v27 += 24;
    }

    *(a9 + 8) = v27;
    v26 += 2;
  }

  while (v26 != v49);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  *&v53 = &v71;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v53);
}

void sub_1B5620C34(_Unwind_Exception *a1)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  *(v1 - 144) = v1 - 120;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100]((v1 - 144));
  _Unwind_Resume(a1);
}

void quasar::SpeechRecognizerModelLoader::DefaultFactory::createDecoder(uint64_t a1@<X2>, void *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v11, ".");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = std::string::append(&v12, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  quasar::Decoder::createDecoder(&v13, a2);
}

void sub_1B5620D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SpeechRecognizerModelLoader::DefaultFactory::createDecodable(uint64_t a1@<X2>, void *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v11, ".");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = std::string::append(&v12, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  quasar::Decodable::createDecodable(&v13, a2);
}

void sub_1B5620E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__tree<BOOL>::__assign_multi<std::__tree_const_iterator<BOOL,std::__tree_node<BOOL,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 25) = *(v9 + 25);
          std::__tree<BOOL>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<BOOL>::__emplace_multi<BOOL const&>();
  }

  return result;
}

void sub_1B5621030(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<BOOL>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 25) >= *(v4 + 25))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<quasar::RecognizerComponents<quasar::Decoder>>,quasar::RecognizerProperties>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__shared_ptr_emplace<quasar::RecognizerComponents<quasar::Decoder>>::__shared_ptr_emplace[abi:ne200100]<quasar::SystemConfig::Version,std::string const&,std::string const&,std::vector<std::shared_ptr<quasar::FeatureExtractor>> &,std::shared_ptr<quasar::Decodable> &,std::vector<std::shared_ptr<quasar::Decoder>> &,std::allocator<quasar::RecognizerComponents<quasar::Decoder>>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D20FD0;
  std::allocator<quasar::RecognizerComponents<quasar::Decoder>>::construct[abi:ne200100]<quasar::RecognizerComponents<quasar::Decoder>,quasar::SystemConfig::Version,std::string const&,std::string const&,std::vector<std::shared_ptr<quasar::FeatureExtractor>> &,std::shared_ptr<quasar::Decodable> &,std::vector<std::shared_ptr<quasar::Decoder>> &>(&v6, (a1 + 3), a2, a3, a4, a5, a6);
}

void std::__shared_ptr_emplace<quasar::RecognizerComponents<quasar::Decoder>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D20FD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::RecognizerComponents<quasar::Decoder>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v4 = (a1 + 104);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v4 = (a1 + 64);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::allocator<quasar::RecognizerComponents<quasar::Decoder>>::construct[abi:ne200100]<quasar::RecognizerComponents<quasar::Decoder>,quasar::SystemConfig::Version,std::string const&,std::string const&,std::vector<std::shared_ptr<quasar::FeatureExtractor>> &,std::shared_ptr<quasar::Decodable> &,std::vector<std::shared_ptr<quasar::Decoder>> &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a4, *(a4 + 8));
  }

  else
  {
    v11 = *a4;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a5, *(a5 + 8));
  }

  else
  {
    v10 = *a5;
  }

  v9 = *(a7 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  quasar::RecognizerComponents<quasar::Decoder>::RecognizerComponents();
}

void sub_1B56214CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B562160C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v11 = *(v9 + 8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void quasar::RegexEnumerator::RegexEnumerator(uint64_t a1, __int128 *a2, quasar::PTree *a3)
{
  v5 = quasar::NameEnumerator::NameEnumerator(a1, a2);
  *v5 = &unk_1F2D21020;
  *(v5 + 2) = 0u;
  v6 = (v5 + 4);
  v5[11] = 0;
  v5[10] = v5 + 11;
  v5[12] = 0;
  v7 = (v5 + 7);
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  v8 = quasar::PTree::begin(a3);
  v9 = quasar::PTree::end(a3);
  if (v8 == v9)
  {
LABEL_27:
    if (quasar::filesystem::exists(v6) && !quasar::filesystem::is_directory(v6))
    {
      quasar::RegexEnumerator::parseConfigFile(a1);
    }

    memset(v22, 0, 272);
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Rule config file does not exist or it is a directory. File path = ", 66);
    v19 = *(a1 + 55);
    if (v19 >= 0)
    {
      v20 = v6;
    }

    else
    {
      v20 = *(a1 + 32);
    }

    if (v19 >= 0)
    {
      v21 = *(a1 + 55);
    }

    else
    {
      v21 = *(a1 + 40);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v22);
  }

  while (*(v8 + 23) < 0)
  {
    if (*(v8 + 8) == 16 && **v8 == 0x6E6F632D656C7572 && *(*v8 + 8) == 0x656C69662D676966)
    {
      goto LABEL_24;
    }

    if (*(v8 + 8) == 9)
    {
      v10 = *v8;
      goto LABEL_13;
    }

LABEL_26:
    v8 += 88;
    if (v8 == v9)
    {
      goto LABEL_27;
    }
  }

  if (*(v8 + 23) == 16)
  {
    if (*v8 != 0x6E6F632D656C7572 || *(v8 + 8) != 0x656C69662D676966)
    {
      goto LABEL_26;
    }

LABEL_24:
    String = quasar::PTree::getString((v8 + 24));
    v16 = v6;
  }

  else
  {
    v10 = v8;
    if (*(v8 + 23) != 9)
    {
      goto LABEL_26;
    }

LABEL_13:
    v12 = *v10;
    v13 = *(v10 + 8);
    if (v12 != 0x7079742D656C7572 || v13 != 101)
    {
      goto LABEL_26;
    }

    String = quasar::PTree::getString((v8 + 24));
    v16 = v7;
  }

  std::string::operator=(v16, String);
  goto LABEL_26;
}

void sub_1B56218A4(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v3, *(v1 + 88));
  if (*(v1 + 79) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  quasar::NameEnumerator::~NameEnumerator(v1);
  _Unwind_Resume(a1);
}

void quasar::RegexEnumerator::parseConfigFile(quasar::RegexEnumerator *this)
{
  quasar::PTree::PTree(v23);
  if (quasar::gLogLevel >= 5)
  {
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
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    *__p = 0u;
    v7 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Read rule config file = ", 24);
    v3 = *(this + 55);
    if (v3 >= 0)
    {
      v4 = this + 32;
    }

    else
    {
      v4 = *(this + 4);
    }

    if (v3 >= 0)
    {
      v5 = *(this + 55);
    }

    else
    {
      v5 = *(this + 5);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  quasar::PTree::readJsonFromFile();
}

void sub_1B5621B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a23);
  quasar::PTree::~PTree((v34 - 128));
  _Unwind_Resume(a1);
}

void quasar::RegexEnumerator::RegexEnumerator(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v7 = quasar::NameEnumerator::NameEnumerator(a1, a2);
  *v7 = &unk_1F2D21020;
  v8 = (v7 + 4);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 4), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    v7[6] = *(a3 + 2);
    *&v8->__r_.__value_.__l.__data_ = v9;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    *(a1 + 72) = *(a4 + 2);
    *(a1 + 56) = v10;
  }

  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  if (quasar::filesystem::exists(v8) && !quasar::filesystem::is_directory(v8))
  {
    quasar::RegexEnumerator::parseConfigFile(a1);
  }

  memset(v15, 0, sizeof(v15));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Rule config file does not exist or it is a directory. File path = ", 66);
  v12 = *(a1 + 55);
  if (v12 >= 0)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(a1 + 32);
  }

  if (v12 >= 0)
  {
    v14 = *(a1 + 55);
  }

  else
  {
    v14 = *(a1 + 40);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v15);
}

void sub_1B5621EA8(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v3, *(v1 + 88));
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  quasar::NameEnumerator::~NameEnumerator(v1);
  _Unwind_Resume(a1);
}

void quasar::RegexEnumerator::getStepMap(uint64_t a1, const void **a2, uint64_t a3, void *a4)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a4, a2))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, a2);
    std::string::basic_string[abi:ne200100]<0>(__p, "rules");
    quasar::PTree::getChild(a3, __p);
  }

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
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "clone-from field is invalid. Rule config file path=", 51);
  std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8, a1 + 32);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void quasar::RegexEnumerator::cloneStep(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *a2;
  v30 = a2 + 1;
  if (*a2 != a2 + 1)
  {
    v4 = a3;
    v29 = a3 + 8;
    while (1)
    {
      if (*(v3 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, v3[4], v3[5]);
      }

      else
      {
        v32 = *(v3 + 4);
      }

      v5 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(v4, &v32.__r_.__value_.__l.__data_);
      v6 = v5;
      v7 = v3[7];
      if (v7)
      {
        break;
      }

      v10 = 0;
      if (v29 == v5)
      {
        *v28 = 0u;
        v31 = 0;
        v12 = 0;
LABEL_60:
        v20 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, &v32.__r_.__value_.__l.__data_);
        v16 = v28[1];
        if (v28[1])
        {
          atomic_fetch_add_explicit(v28[1] + 1, 1uLL, memory_order_relaxed);
        }

        v21 = *(v20 + 64);
        *(v20 + 56) = *v28;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        goto LABEL_64;
      }

      v12 = 0;
      v13 = 0;
      v31 = 0;
      v8 = 0;
      v11 = 0;
LABEL_24:
      v14 = *(v6 + 56);
      if (v14)
      {
        v27 = v8;
        v26 = v11;
        if (v15)
        {
          v16 = *(v6 + 64);
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            v14 = *(v6 + 56);
            if (!v14)
            {
              v17 = 0;
              v18 = 0;
              goto LABEL_41;
            }
          }
        }

        else
        {
          v16 = 0;
        }

        if (v18)
        {
          v17 = *(v6 + 64);
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            v14 = *(v6 + 56);
            if (!v14)
            {
LABEL_41:
              v19 = 0;
              goto LABEL_42;
            }
          }
        }

        else
        {
          v17 = 0;
        }

        if (!v14)
        {
          goto LABEL_41;
        }

        v19 = *(v6 + 64);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

LABEL_42:
        if (v27 && v15)
        {
          quasar::ReplaceStep::mergeStep(v15, v27);
        }

        if (v26 && v18)
        {
          quasar::SplitStep::mergeStep(v18, v26);
        }

        if (v13 && v14)
        {
          quasar::WholeStringStep::mergeStep(v14, v13);
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        v4 = a3;
LABEL_64:
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      v22 = v3[1];
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
          v23 = v3[2];
          v24 = *v23 == v3;
          v3 = v23;
        }

        while (!v24);
      }

      v3 = v23;
      if (v23 == v30)
      {
        return;
      }
    }

    if (v8)
    {
      v9 = v3[8];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = v3[7];
        if (!v7)
        {
          v31 = v9;
          v10 = 0;
          v11 = 0;
LABEL_17:
          v13 = 0;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v31 = v9;
    if (v11)
    {
      v10 = v3[8];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = v3[7];
        if (!v7)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    if (v13)
    {
      v12 = v3[8];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

LABEL_23:
      if (v29 == v6)
      {
        if (v8)
        {
          std::allocate_shared[abi:ne200100]<quasar::ReplaceStep,std::allocator<quasar::ReplaceStep>,quasar::ReplaceStep&,0>();
        }

        if (v11)
        {
          std::allocate_shared[abi:ne200100]<quasar::SplitStep,std::allocator<quasar::SplitStep>,quasar::SplitStep&,0>();
        }

        if (v13)
        {
          std::allocate_shared[abi:ne200100]<quasar::WholeStringStep,std::allocator<quasar::WholeStringStep>,quasar::WholeStringStep&,0>();
        }

        *v28 = 0u;
        goto LABEL_60;
      }

      goto LABEL_24;
    }

LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }
}

void sub_1B56226B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::RegexEnumerator::insertStep(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8) == 11 && **a2 == 0x2D746C612D657270 && *(*a2 + 3) == 0x6E65672D746C612DLL)
    {
      goto LABEL_61;
    }

    if (*(a2 + 8) == 12 && **a2 == 0x746C612D74736F70 && *(*a2 + 8) == 1852139309)
    {
      goto LABEL_61;
    }

    if (*(a2 + 8) == 12 && **a2 == 0x6D6F632D74736F70 && *(*a2 + 8) == 1701734754)
    {
      goto LABEL_61;
    }

    v8 = *(a2 + 8);
    if (v8 == 7)
    {
      if (**a2 != 762604641 || *(*a2 + 3) != 1852139309)
      {
        goto LABEL_53;
      }

LABEL_67:
      std::allocate_shared[abi:ne200100]<quasar::SplitStep,std::allocator<quasar::SplitStep>,std::string const&,quasar::PTree const&,0>();
    }

    if (v8 != 18)
    {
      goto LABEL_53;
    }

    v9 = *a2;
LABEL_31:
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (v10 == 0x74732D656C6F6877 && v11 == 0x6C75722D676E6972 && v12 == 29541)
    {
      std::allocate_shared[abi:ne200100]<quasar::WholeStringStep,std::allocator<quasar::WholeStringStep>,std::string const&,quasar::PTree const&,std::string&,0>();
    }

    goto LABEL_53;
  }

  v3 = *(a2 + 23);
  if (v3 > 0xB)
  {
    if (v3 == 12)
    {
      if (*a2 == 0x746C612D74736F70 && *(a2 + 8) == 1852139309)
      {
        goto LABEL_61;
      }

      if (*a2 == 0x6D6F632D74736F70 && *(a2 + 8) == 1701734754)
      {
        goto LABEL_61;
      }
    }

    v9 = a2;
    if (v3 != 18)
    {
      goto LABEL_53;
    }

    goto LABEL_31;
  }

  if (v3 != 7)
  {
    if (v3 != 11)
    {
      goto LABEL_53;
    }

    if (*a2 != 0x2D746C612D657270 || *(a2 + 3) != 0x6E65672D746C612DLL)
    {
      goto LABEL_53;
    }

LABEL_61:
    std::allocate_shared[abi:ne200100]<quasar::ReplaceStep,std::allocator<quasar::ReplaceStep>,std::string const&,quasar::PTree const&,0>();
  }

  if (*a2 == 762604641 && *(a2 + 3) == 1852139309)
  {
    goto LABEL_67;
  }

LABEL_53:
  if (quasar::gLogLevel >= 5)
  {
    memset(v23, 0, sizeof(v23));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v23);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "We do not support step = ", 25);
    v19 = *(a2 + 23);
    if (v19 >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    if (v19 >= 0)
    {
      v21 = *(a2 + 23);
    }

    else
    {
      v21 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v23);
  }
}

uint64_t quasar::RegexEnumerator::getEnumerations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, "pre-alt-gen");
    v7 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 80, __p);
    if (SBYTE7(v33) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = a1 + 88;
    if (a1 + 88 == v7)
    {
      std::vector<std::string>::push_back[abi:ne200100](&v29, a2);
    }

    else if ((*(**(v7 + 56) + 16))(*(v7 + 56), a2, &v29) == -1 || v30 - v29 != 24)
    {
      if (quasar::gLogLevel >= 5)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        v34 = 0u;
        v35 = 0u;
        *__p = 0u;
        v33 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Failed to generate enumeration in step = ", 41);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "pre-alt-gen", 11);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
      }

      v10 = 0xFFFFFFFFLL;
      goto LABEL_49;
    }

    v26 = 0;
    v27 = 0;
    v28 = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, "alt-gen");
    v15 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 80, __p);
    if (SBYTE7(v33) < 0)
    {
      operator delete(__p[0]);
    }

    if (v8 == v15)
    {
      std::vector<std::string>::push_back[abi:ne200100](&v26, v29);
    }

    else if ((*(**(v15 + 56) + 16))(*(v15 + 56), v29, &v26) == -1)
    {
      if (quasar::gLogLevel >= 5)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        v34 = 0u;
        v35 = 0u;
        *__p = 0u;
        v33 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Failed to generate enumeration in step = ", 41);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "alt-gen", 7);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
      }

      v10 = 0xFFFFFFFFLL;
      goto LABEL_48;
    }

    memset(&v25, 0, sizeof(v25));
    std::string::basic_string[abi:ne200100]<0>(__p, "post-alt-gen");
    v17 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 80, __p);
    if (SBYTE7(v33) < 0)
    {
      operator delete(__p[0]);
    }

    if (v8 == v17)
    {
      std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v25, v25.__end_, v26, v27, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3));
    }

    else
    {
      v18 = v26;
      v19 = v27;
      if (v26 != v27)
      {
        v20 = 0;
        while ((*(**(v17 + 56) + 16))(*(v17 + 56), v18, &v25) != -1)
        {
          if (++v20 != 0xAAAAAAAAAAAAAAABLL * ((v25.__end_ - v25.__begin_) >> 3))
          {
            break;
          }

          v18 = (v18 + 24);
          if (v18 == v19)
          {
            goto LABEL_40;
          }
        }

        if (quasar::gLogLevel >= 5)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          v34 = 0u;
          v35 = 0u;
          *__p = 0u;
          v33 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Failed to generate enumeration in step = ", 41);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "post-alt-gen", 12);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
        }

        v10 = 0xFFFFFFFFLL;
        goto LABEL_47;
      }
    }

LABEL_40:
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, a2);
    begin = v25.__begin_;
    end = v25.__end_;
    while (begin != end)
    {
      std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(a3, a3 + 8, &begin->__r_.__value_.__l.__data_);
      ++begin;
    }

    v10 = *(a3 + 16);
LABEL_47:
    __p[0] = &v25;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_48:
    __p[0] = &v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_49:
    __p[0] = &v29;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    return v10;
  }

  if (quasar::gLogLevel >= 5)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v34 = 0u;
    v35 = 0u;
    *__p = 0u;
    v33 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Skip empty input text = ", 24);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  return 0xFFFFFFFFLL;
}

void sub_1B56233FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __p = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t quasar::RegexEnumerator::addEnumerations(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 24))(a1);
  if ((result & 1) == 0)
  {
    memset(v7, 0, sizeof(v7));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "Enumeration is calculated already.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v7);
  }

  v4 = *a2;
  if (*a2 != a2[1])
  {
    memset(v6, 0, sizeof(v6));
    std::to_string(&__p, *(v4 + 48));
    *&v7[2] = v6;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v6, 1uLL);
  }

  return result;
}

void sub_1B5623690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::RegexEnumerator::~RegexEnumerator(quasar::RegexEnumerator *this)
{
  quasar::RegexEnumerator::~RegexEnumerator(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D21020;
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 80, *(this + 11));
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  quasar::NameEnumerator::~NameEnumerator(this);
}

uint64_t std::__shared_ptr_emplace<quasar::ReplaceStep>::__shared_ptr_emplace[abi:ne200100]<quasar::ReplaceStep&,std::allocator<quasar::ReplaceStep>,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D21078;
  *(a1 + 24) = &unk_1F2D3E380;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 48) = *(a2 + 24);
    *(a1 + 32) = v4;
  }

  *(a1 + 56) = 0;
  *(a1 + 24) = &unk_1F2D3E3A8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<std::shared_ptr<quasar::ReplaceStep::RegexRule>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::ReplaceStep::RegexRule>*,std::shared_ptr<quasar::ReplaceStep::RegexRule>*>(a1 + 56, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
  *(a1 + 80) = *(a2 + 56);
  return a1;
}

void std::__shared_ptr_emplace<quasar::ReplaceStep>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D21078;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::vector<std::shared_ptr<quasar::ReplaceStep::RegexRule>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::ReplaceStep::RegexRule>*,std::shared_ptr<quasar::ReplaceStep::RegexRule>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B56239F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<quasar::ReplaceStep::RegexRule>>,std::shared_ptr<quasar::ReplaceStep::RegexRule>*,std::shared_ptr<quasar::ReplaceStep::RegexRule>*,std::shared_ptr<quasar::ReplaceStep::RegexRule>*>(uint64_t a1, void *a2, void *a3, void *a4)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<quasar::ReplaceStep::RegexRule>>,std::shared_ptr<quasar::ReplaceStep::RegexRule>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<quasar::ReplaceStep::RegexRule>>,std::shared_ptr<quasar::ReplaceStep::RegexRule>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__shared_ptr_emplace<quasar::SplitStep>::__shared_ptr_emplace[abi:ne200100]<quasar::SplitStep&,std::allocator<quasar::SplitStep>,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D210C8;
  *(a1 + 24) = &unk_1F2D3E380;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 48) = *(a2 + 24);
    *(a1 + 32) = v4;
  }

  *(a1 + 56) = 0;
  *(a1 + 24) = &unk_1F2D3E3F8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 56, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  v5 = *(a2 + 56);
  *(a1 + 88) = *(a2 + 64);
  *(a1 + 80) = v5;
  return a1;
}

void std::__shared_ptr_emplace<quasar::SplitStep>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D210C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_emplace<quasar::WholeStringStep>::__shared_ptr_emplace[abi:ne200100]<quasar::WholeStringStep&,std::allocator<quasar::WholeStringStep>,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D21118;
  *(a1 + 24) = &unk_1F2D3E380;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 48) = *(a2 + 24);
    *(a1 + 32) = v4;
  }

  *(a1 + 24) = &unk_1F2D3E3D0;
  std::unordered_map<std::string,std::string>::unordered_map(a1 + 56, a2 + 32);
  return a1;
}

void std::__shared_ptr_emplace<quasar::WholeStringStep>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D21118;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::ReplaceStep>::__shared_ptr_emplace[abi:ne200100]<std::string const&,quasar::PTree const&,std::allocator<quasar::ReplaceStep>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D21078;
  quasar::ReplaceStep::ReplaceStep(a1 + 3);
  return a1;
}

void *std::__shared_ptr_emplace<quasar::SplitStep>::__shared_ptr_emplace[abi:ne200100]<std::string const&,quasar::PTree const&,std::allocator<quasar::SplitStep>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D210C8;
  quasar::SplitStep::SplitStep(a1 + 3);
  return a1;
}

void *std::__shared_ptr_emplace<quasar::WholeStringStep>::__shared_ptr_emplace[abi:ne200100]<std::string const&,quasar::PTree const&,std::string&,std::allocator<quasar::WholeStringStep>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D21118;
  quasar::WholeStringStep::WholeStringStep(a1 + 3);
  return a1;
}

void NBestHyp::NBestHyp(NBestHyp *this)
{
  *(this + 9) = 0;
  *(this + 20) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 28) = 0u;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
}

void NBestWordInfo::~NBestWordInfo(NBestWordInfo *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    free(v3);
  }
}

uint64_t NBestWordInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      free(v5);
    }

    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4);
    v6 = *(a2 + 24);
    if (v6)
    {
      v6 = strdup(v6);
    }

    *(a1 + 24) = v6;
    v7 = *(a2 + 32);
    if (v7)
    {
      v7 = strdup(v7);
    }

    *(a1 + 32) = v7;
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

void NBestHyp::~NBestHyp(NBestHyp *this)
{
  v2 = *this;
  if (v2)
  {
    MEMORY[0x1B8C85310](v2, 0x1000C8052888210);
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = v3 - 16;
    v5 = *(v3 - 8);
    if (v5)
    {
      v6 = (v3 + 56 * v5 - 56);
      v7 = -56 * v5;
      do
      {
        NBestWordInfo::~NBestWordInfo(v6);
        v6 = (v8 - 56);
        v7 += 56;
      }

      while (v7);
    }

    MEMORY[0x1B8C85310](v4, 0x1010C8070205E2DLL);
  }

  v9 = *(this + 9);
  if (v9)
  {
    MEMORY[0x1B8C85350](v9, 0x1000C4000313F17);
  }
}

uint64_t NBestHyp::parse(NBestHyp *this, Vocab *a2, Vocab *a3, int a4, double a5, const char *a6, int a7)
{
  v102 = *MEMORY[0x1E69E9840];
  v13 = wstringsTLS();
  v14 = *v13;
  if (!*v13)
  {
    v15 = v13;
    v14 = malloc_type_calloc(0x86474uLL, 8uLL, 0x50040EE9192B6uLL);
    *v15 = v14;
  }

  v16 = justWordsTLS();
  v18 = *v16;
  if (!*v16)
  {
    v19 = v16;
    v18 = malloc_type_calloc(0x86475uLL, 8uLL, 0x50040EE9192B6uLL);
    *v19 = v18;
  }

  v89[0] = 0;
  v89[1] = 0;
  v90 = 0;
  v20 = Vocab::parseWords(a2, v14, 0x86474, v17);
  if (v20 != 550004)
  {
    if (a7)
    {
      v25 = 0;
    }

    else
    {
      v25 = a6;
    }

    if (a4 != 2)
    {
      if (a4 == 1 || !a4 && **v14 == 40)
      {
        v26 = (v20 - 1);
        if (v26 <= 0xC350)
        {
          *__s1 = 0.0;
          if (sscanf(*v14, "(%lf)", __s1) != 1)
          {
            v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "bad Decipher score: ", 20);
            v43 = strlen(*v14);
            v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, *v14, v43);
            std::ios_base::getloc((v44 + *(*v44 - 24)));
            v45 = std::locale::use_facet(&v101, MEMORY[0x1E69E5318]);
            (v45->__vftable[2].~facet_0)(v45, 10);
            std::locale::~locale(&v101);
            std::ostream::put();
            std::ostream::flush();
            goto LABEL_31;
          }

          v28 = *__s1 * 0.0444695315;
          *(this + 2) = v28;
          *(this + 10) = v28;
          *(this + 3) = 0;
          *(this + 4) = v26;
          Vocab::copy(v18, v14 + 1, v27);
LABEL_17:
          *(this + 2) = *(this + 2) - a5;
          v29 = *(this + 10) - a5;
          *(this + 10) = v29;
          if (v25)
          {
            v30 = *v18;
            if (*v18)
            {
              v31 = 0;
              v32 = *v25;
              do
              {
                while (1)
                {
                  v33 = strchr(v30, v32);
                  if (!v33)
                  {
                    break;
                  }

                  LODWORD(v26) = v26 + 1;
                  v30 = v33 + 1;
                }

                v30 = v18[++v31];
              }

              while (v30);
            }
          }

          if (*this)
          {
            MEMORY[0x1B8C85310](*this, 0x1000C8052888210);
          }

          operator new[]();
        }
      }

      else
      {
        LODWORD(v26) = v20 - 3;
        if ((v20 - 3) < 0xC351)
        {
          if (parseLogP(*v14, this + 2))
          {
            v38 = v14 + 1;
            if (parseLogP(v14[1], this + 3))
            {
              v38 = v14 + 2;
              v39 = v14[2];
              if (*v39 != 45 && sscanf(v39, "%lu", this + 32) == 1)
              {
                v41 = *(this + 2);
                *(this + 10) = v41;
                Vocab::copy(v18, v14 + 3, v40);
                goto LABEL_17;
              }

              v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "bad word count: ", 16);
            }

            else
            {
              v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "bad LM score: ", 14);
            }

            v48 = v49;
            v14 = v38;
          }

          else
          {
            v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "bad acoustic score: ", 20);
          }

          v52 = strlen(*v14);
          v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, *v14, v52);
          std::ios_base::getloc((v53 + *(*v53 - 24)));
          v54 = std::locale::use_facet(&v101, MEMORY[0x1E69E5318]);
          (v54->__vftable[2].~facet_0)(v54, 10);
          std::locale::~locale(&v101);
          std::ostream::put();
          std::ostream::flush();
          goto LABEL_31;
        }
      }

      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "more than ", 10);
      v22 = MEMORY[0x1B8C84C10](v34, 50000);
      v23 = " words in hyp\n";
      v24 = 14;
      goto LABEL_30;
    }

    v35 = v20 - 1;
    v36 = (v20 - 1) / 0xBu;
    if ((v20 - 1) % 0xBu)
    {
      v23 = "badly formatted hyp\n";
      v22 = MEMORY[0x1E69E5300];
      v24 = 20;
      goto LABEL_30;
    }

    if (v35 > 0x8647A)
    {
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "more than ", 10);
      v47 = MEMORY[0x1B8C84C10](v46, 50000);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " tokens in hyp\n", 15);
      goto LABEL_31;
    }

    v88 = 0.0;
    if (sscanf(*v14, "(%lf)", &v88) != 1)
    {
      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "bad Decipher score: ", 20);
      v56 = strlen(*v14);
      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, *v14, v56);
      std::endl[abi:ne200100]<char,std::char_traits<char>>(v57);
      goto LABEL_31;
    }

    if (v35 < 0xB)
    {
      v86 = 0;
      LODWORD(v26) = 0;
      v50 = 0.0;
      v51 = 0.0;
LABEL_79:
      if (a7 && v86 && LOBYTE(v101.__locale_))
      {
        *(v86 + 24) = strdup(&v101);
        *(v86 + 32) = strdup(__s1);
      }

      v18[v26] = 0;
      v82 = v88 * 0.0444695315;
      *(this + 10) = v82;
      *(this + 2) = v51;
      *(this + 3) = v50;
      *(this + 4) = v26;
      goto LABEL_17;
    }

    v83 = a7;
    LODWORD(v26) = 0;
    v85 = 0;
    v86 = 0;
    if (v36 <= 1)
    {
      v58 = 1;
    }

    else
    {
      v58 = v36;
    }

    v59 = 0;
    v60 = v14 + 6;
    v61 = 0.0;
    v62 = -1.0;
    while (1)
    {
      v63 = *(v60 - 5);
      v64 = atof(*(v60 - 2));
      v65 = atof(*v60);
      v66 = strrchr(v63, 45);
      v67 = v66 && v66[1] - 48 <= 9 && v66[2] == 0;
      v68 = v64;
      v69 = v65;
      if (v62 >= v68 || v67)
      {
        if (!v67)
        {
          if (v86)
          {
            v84 = v59;
            v76 = strchr(v63, 91);
            if (v76)
            {
              v77 = v76 + 1;
            }

            else
            {
              v77 = v63;
            }

            v78 = strrchr(v77, 93);
            if (v78)
            {
              *v78 = 0;
            }

            v79 = strrchr(v77, 95);
            if (v79)
            {
              *v79 = 0;
            }

            addPhones(&v101, v77, v61 > v68);
            snprintf(__str, 0x14uLL, "%d", (((v69 - v68) / 0.01) + 0.5) + 1);
            addPhones(__s1, __str, v61 > v68);
            v61 = v68;
            v69 = v62;
            v59 = v84;
            goto LABEL_77;
          }

          v86 = 0;
        }

        v69 = v62;
      }

      else
      {
        v87 = atol(v60[4]);
        v70 = atol(v60[2]);
        v18[v26] = v63;
        if (v83)
        {
          if (v86 && LOBYTE(v101.__locale_))
          {
            v71 = v70;
            *(v86 + 24) = strdup(&v101);
            *(v86 + 32) = strdup(__s1);
            v70 = v71;
          }

          v98 = 0;
          v99 = 0;
          *__str = -1;
          v92 = v68;
          v93 = (v69 - v68) + 0.01;
          v72 = v87 * 0.0444695315;
          v73 = v70;
          v74 = v70 * 0.0444695315;
          v94 = v72;
          v95 = v74;
          v96 = 0;
          v97 = 0;
          v75 = Array<NBestWordInfo>::operator[](v89, v26);
          NBestWordInfo::operator=(v75, __str);
          v86 = Array<NBestWordInfo>::operator[](v89, v26);
          __s1[0] = 0;
          LOBYTE(v101.__locale_) = 0;
          NBestWordInfo::~NBestWordInfo(__str);
          v70 = v73;
        }

        v85 += v87;
        v59 += v70;
        LODWORD(v26) = v26 + 1;
      }

LABEL_77:
      v60 += 11;
      v62 = v69;
      if (!--v58)
      {
        v80 = v85 * 0.0444695315;
        v51 = v80;
        v81 = v59 * 0.0444695315;
        v50 = v81;
        a7 = v83;
        goto LABEL_79;
      }
    }
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "more than ", 10);
  v22 = MEMORY[0x1B8C84C10](v21, 550004);
  v23 = " fields per line\n";
  v24 = 17;
LABEL_30:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
LABEL_31:
  Array<NBestWordInfo>::~Array(v89);
  return 0;
}

uint64_t addPhones(char *a1, const char *a2, int a3)
{
  v6 = strlen(a1);
  result = strlen(a2);
  v8 = result;
  v9 = (v6 + 1);
  if ((result + v9 - 101) >= 0xFFFFFF9A)
  {
    if (a3)
    {
      if (v6)
      {
        memmove(&a1[(result + 1)], a1, v9);
        result = strcpy(a1, a2);
        a1[v8] = *phoneSeparator[0];
        return result;
      }

      v10 = a1;
    }

    else
    {
      if (v6)
      {
        a1[v6] = *phoneSeparator[0];
      }

      else
      {
        v9 = 0;
      }

      v10 = &a1[v9];
    }

    return strcpy(v10, a2);
  }

  return result;
}

void NBestHyp::freeThread(NBestHyp *this)
{
  v1 = wstringsTLS();
  if (*v1)
  {
    free(*v1);
    *v1 = 0;
  }

  v2 = justWordsTLS();
  if (*v2)
  {
    free(*v2);
    *v2 = 0;
  }

  TimeSentStartFlagTLS = firstTimeSentStartFlagTLS();
  if (*TimeSentStartFlagTLS)
  {
    free(*TimeSentStartFlagTLS);
    *TimeSentStartFlagTLS = 0;
  }
}

float NBestHyp::rescore(NBestHyp *this, LM *a2, double a3, double a4)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v8 = (*(*a2 + 80))(a2, *this, &v17) * a3;
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  *(this + 3) = v8;
  v9 = *(&v17 + 1);
  *(this + 4) = *(&v18 + 1);
  if (v9 > 0.0)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "warning: hyp contains zero prob words: ", 39);
    (*(**(a2 + 3) + 328))();
    v11 = operator<<(v10, *this);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v24);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*&v19 > 0.0)
  {
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "warning: hyp contains OOV words: ", 33);
    (*(**(a2 + 3) + 328))();
    v14 = operator<<(v13, *this);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v24);
    std::ostream::put();
    std::ostream::flush();
  }

  result = *(this + 2) + *(this + 3) + a4 * *(this + 4);
  *(this + 10) = result;
  return result;
}

double NBestHyp::decipherFix(NBestHyp *this, LM *a2, double a3, double a4)
{
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v9 = (*(*a2 + 80))(a2, *this, &v19) * a3;
  if (a3 == 0.0)
  {
    v9 = 0.0;
  }

  *(this + 3) = v9;
  *(this + 4) = *(&v20 + 1);
  v10 = Vocab::length(*this, v8);
  if (*(&v19 + 1) > 0.0)
  {
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "warning: hyp contains zero prob words: ", 39);
    (*(**(a2 + 3) + 328))();
    v12 = operator<<(v11, *this);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v26, MEMORY[0x1E69E5318]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v26);
    std::ostream::put();
    std::ostream::flush();
    *(this + 3) = -INFINITY;
  }

  if (*&v21 <= 0.0)
  {
    v17 = *(this + 3);
  }

  else
  {
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "warning: hyp contains OOV words: ", 33);
    (*(**(a2 + 3) + 328))();
    v15 = operator<<(v14, *this);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&v26, MEMORY[0x1E69E5318]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v26);
    std::ostream::put();
    std::ostream::flush();
    v17 = -INFINITY;
    *(this + 3) = -INFINITY;
  }

  result = *(this + 10) - v17 - a4 * v10;
  *(this + 2) = result;
  return result;
}

uint64_t Array<NBestWordInfo>::~Array(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = (v2 + 56 * v4 - 56);
      v6 = -56 * v4;
      do
      {
        NBestWordInfo::~NBestWordInfo(v5);
        v5 = (v7 - 56);
        v6 += 56;
      }

      while (v6);
    }

    MEMORY[0x1B8C85310](v3, 0x1010C8070205E2DLL);
  }

  return a1;
}

uint64_t Array<NBestWordInfo>::operator[](int *a1, uint64_t a2)
{
  v2 = a2 - *a1;
  if (v2 >= a1[1])
  {
    a1[1] = v2 + 1;
    if (v2 >= a1[4])
    {
      Array<NBestWordInfo>::alloc();
    }
  }

  return *(a1 + 1) + 56 * v2;
}

uint64_t quasar::QuasarTextProcImpl::QuasarTextProcImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  std::string::operator=((a1 + 24), a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "text-proc");
  quasar::SystemConfig::enforceMinVersion(a3, 10, 0, __p);
  if (SBYTE7(v73) < 0)
  {
    operator delete(__p[0]);
  }

  memset(&v98, 0, sizeof(v98));
  v95 = 0;
  v96 = 0;
  v97 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "text-proc");
  Ptree = quasar::SystemConfig::getPtree(a3, __p);
  v8 = Ptree;
  v91 = *Ptree;
  if (*(Ptree + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v92, *(Ptree + 8), *(Ptree + 16));
  }

  else
  {
    v9 = *(Ptree + 8);
    v92.__r_.__value_.__r.__words[2] = *(Ptree + 24);
    *&v92.__r_.__value_.__l.__data_ = v9;
  }

  memset(v93, 0, sizeof(v93));
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v93, *(v8 + 32), *(v8 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v8 + 40) - *(v8 + 32)) >> 3));
  v94 = *(v8 + 56);
  if (SBYTE7(v73) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = quasar::PTree::begin(&v91);
  v11 = quasar::PTree::end(&v91);
  if (v10 != v11)
  {
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    if (v12 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    while (1)
    {
      v15 = *(v10 + 23);
      v16 = v15 >= 0 ? *(v10 + 23) : *(v10 + 8);
      if (v16 == v13)
      {
        v17 = v15 >= 0 ? v10 : *v10;
        if (!memcmp(v17, v14, v16))
        {
          break;
        }
      }

      v10 += 88;
      if (v10 == v11)
      {
        goto LABEL_51;
      }
    }

    std::string::basic_string[abi:ne200100](&v90, v16 + 1);
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v90;
    }

    else
    {
      v18 = v90.__r_.__value_.__r.__words[0];
    }

    if (v16)
    {
      if (*(a2 + 23) >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      memmove(v18, v19, v16);
    }

    *(&v18->__r_.__value_.__l.__data_ + v16) = 46;
    v20 = *(a4 + 23);
    if (v20 >= 0)
    {
      v21 = a4;
    }

    else
    {
      v21 = *a4;
    }

    if (v20 >= 0)
    {
      v22 = *(a4 + 23);
    }

    else
    {
      v22 = *(a4 + 8);
    }

    v23 = std::string::append(&v90, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (*(a4 + 23) < 0)
    {
      if (*(a4 + 8))
      {
        goto LABEL_41;
      }
    }

    else if (*(a4 + 23))
    {
LABEL_41:
      v25 = ".";
      goto LABEL_44;
    }

    v25 = "";
LABEL_44:
    v26 = std::string::append(&v63, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = std::string::append(&v65, "rule-fst");
    v29 = *&v28->__r_.__value_.__l.__data_;
    *&v73 = *(&v28->__r_.__value_.__l + 2);
    *__p = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    quasar::PTree::getChild(&v91, __p);
  }

LABEL_51:
  v30 = v95;
  if (v95 != v96)
  {
    v31 = kaldi::Input::Input(v89, v95, 0);
    v32 = kaldi::Input::Stream(v31);
    if (*(v32 + *(*v32 - 24) + 32))
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not open decoding-graph FST ", 34);
      v59 = *(v30 + 23);
      if (v59 >= 0)
      {
        v60 = v30;
      }

      else
      {
        v60 = *v30;
      }

      if (v59 >= 0)
      {
        v61 = *(v30 + 23);
      }

      else
      {
        v61 = *(v30 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v60, v61);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v67 = 0u;
    v68 = 0u;
    *&v65.__r_.__value_.__r.__words[1] = 0u;
    v66 = 0u;
    v69 = -1;
    v70 = 0;
    v71 = 0;
    v33 = kaldi::Input::Stream(v89);
    if ((fst::FstHeader::Read(&v65, v33, v30, 0) & 1) == 0)
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Reading FST: error reading FST header.", 38);
      v55 = *(v30 + 23);
      if (v55 >= 0)
      {
        v56 = v30;
      }

      else
      {
        v56 = *v30;
      }

      if (v55 >= 0)
      {
        v57 = *(v30 + 23);
      }

      else
      {
        v57 = *(v30 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v56, v57);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v34 = fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type();
    if (v67 >= 0)
    {
      v35 = HIBYTE(v67);
    }

    else
    {
      v35 = v67;
    }

    v36 = *(v34 + 23);
    v37 = v36;
    if ((v36 & 0x80u) != 0)
    {
      v36 = *(v34 + 8);
    }

    if (v35 != v36 || (v67 >= 0 ? (v38 = &v66 + 8) : (v38 = *(&v66 + 1)), v37 >= 0 ? (v39 = v34) : (v39 = *v34), memcmp(v38, v39, v35)))
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "FST with arc type ", 18);
      if (v67 >= 0)
      {
        v48 = &v66 + 8;
      }

      else
      {
        v48 = *(&v66 + 1);
      }

      if (v67 >= 0)
      {
        v49 = HIBYTE(v67);
      }

      else
      {
        v49 = v67;
      }

      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v48, v49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " not supported.\n", 16);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    fst::FstReadOptions::FstReadOptions(&v63, v30, &v65, 0, 0);
    *&v90.__r_.__value_.__l.__data_ = 0uLL;
    if ((BYTE7(v66) & 0x80) != 0)
    {
      if (v65.__r_.__value_.__r.__words[2] != 5)
      {
        if (v65.__r_.__value_.__r.__words[2] == 6 && *v65.__r_.__value_.__l.__size_ == 1952671094 && *(v65.__r_.__value_.__l.__size_ + 4) == 29295)
        {
          goto LABEL_75;
        }

LABEL_100:
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Reading FST: unsupported hammer FST type: ", 42);
        if ((SBYTE7(v66) & 0x80u) == 0)
        {
          p_size = &v65.__r_.__value_.__l.__size_;
        }

        else
        {
          p_size = v65.__r_.__value_.__l.__size_;
        }

        if ((SBYTE7(v66) & 0x80u) == 0)
        {
          v53 = BYTE7(v66);
        }

        else
        {
          v53 = v65.__r_.__value_.__r.__words[2];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, p_size, v53);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
      }

      size = v65.__r_.__value_.__l.__size_;
    }

    else
    {
      size = &v65.__r_.__value_.__l.__size_;
      if (BYTE7(v66) != 5)
      {
        if (BYTE7(v66) != 6)
        {
          goto LABEL_100;
        }

        if (LODWORD(v65.__r_.__value_.__r.__words[1]) != 1952671094 || WORD2(v65.__r_.__value_.__r.__words[1]) != 29295)
        {
          goto LABEL_100;
        }

LABEL_75:
        v64 = 2;
        kaldi::Input::Stream(v89);
        fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Read();
      }
    }

    v43 = *size;
    v44 = *(size + 4);
    if (v43 == 1936617315 && v44 == 116)
    {
      v64 = 2;
      kaldi::Input::Stream(v89);
      fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::Read();
    }

    goto LABEL_100;
  }

  quasar::PTree::~PTree(&v91);
  __p[0] = &v95;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1B5626254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  JUMPOUT(0x1B5626288);
}

void sub_1B5626284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = *(v34 - 216);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a22);
  kaldi::Input::~Input((v34 - 232));
  quasar::PTree::~PTree((v34 - 200));
  a34 = v34 - 136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a34);
  if (*(v34 - 89) < 0)
  {
    operator delete(*(v34 - 112));
  }

  v37 = a10;
  if (*(a10 + 47) < 0)
  {
    operator delete(*(a10 + 24));
    v37 = a10;
  }

  a34 = v37;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<quasar::FeatureExtractor>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

uint64_t quasar::QuasarTextProcImpl::run(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v6 = quasar::QuasarTextProcImpl::run(a1, a2, &v44, 1, 0, a4);
  v25 = v6;
  if (!v6)
  {
    v8 = v44;
    v7 = v45;
    if (v45 != v44)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(v8 + v9);
        if (v11 != *(v8 + v9 + 8))
        {
          v6 = std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](a3, v11);
          v8 = v44;
          v7 = v45;
        }

        ++v10;
        v9 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3) > v10);
    }
  }

  v13 = *a2;
  v12 = a2[1];
  if (v12 - *a2 == *(a3 + 8) - *a3 && v12 != v13)
  {
    v15 = 0;
    v16 = 0;
    while (1)
    {
      quasar::tokens2Str((v13 + v15), __p);
      quasar::tokens2Str((*a3 + v15), &v43);
      v17 = BYTE7(v27);
      if ((SBYTE7(v27) & 0x80u) == 0)
      {
        v18 = BYTE7(v27);
      }

      else
      {
        v18 = __p[1];
      }

      size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
      v20 = SHIBYTE(v43.__r_.__value_.__r.__words[2]);
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v43.__r_.__value_.__l.__size_;
      }

      if (v18 != size)
      {
        break;
      }

      if ((SBYTE7(v27) & 0x80u) == 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v43;
      }

      else
      {
        v22 = v43.__r_.__value_.__r.__words[0];
      }

      v6 = memcmp(v21, v22, v18);
      v23 = v6 == 0;
      if (v20 < 0)
      {
        goto LABEL_27;
      }

LABEL_28:
      if (v17 < 0)
      {
        operator delete(__p[0]);
        if (v23)
        {
LABEL_32:
          if (quasar::gLogLevel >= 5)
          {
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            *__p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Hammer didn't change any text. Therefore returning the original input.", 70);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
          }

          if (*a3 != *a2)
          {
            std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(*a3 + v15, *(*a2 + v15), *(*a2 + v15 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(*a2 + v15 + 8) - *(*a2 + v15)) >> 5));
          }
        }
      }

      else if (v23)
      {
        goto LABEL_32;
      }

      ++v16;
      v13 = *a2;
      v15 += 24;
      if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v16)
      {
        goto LABEL_37;
      }
    }

    v23 = 0;
    if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_27:
    operator delete(v43.__r_.__value_.__l.__data_);
    v17 = BYTE7(v27);
    goto LABEL_28;
  }

LABEL_37:
  if (quasar::gLogLevel >= 5)
  {
    quasar::QuasarTextProcImpl::reportResults(v6, a2, a3);
  }

  __p[0] = &v44;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](__p);
  return v25;
}

void sub_1B5626734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __p = (v16 - 112);
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t quasar::QuasarTextProcImpl::run(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a4 <= 0 && quasar::gLogLevel >= 4)
  {
    memset(v27, 0, sizeof(v27));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Number of outputs (n) cannot be less than 1.", 44);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v27);
  }

  v11 = (a1 + 24);
  v12 = *(a1 + 47);
  if (v12 < 0)
  {
    if (*(a1 + 32) != 3)
    {
LABEL_15:
      v16 = 0;
      goto LABEL_16;
    }

    v11 = *v11;
  }

  else if (v12 != 3)
  {
    goto LABEL_15;
  }

  v13 = *v11;
  v14 = *(v11 + 2);
  v16 = v13 == 29801 && v14 == 110;
LABEL_16:
  if (*(a1 + 8) - *a1 != 16)
  {
    quasar::HammerSeqLat::HammerSeqLat(v27, a2, a1, 1, a4, v16, a5, 1.0);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    quasar::HammerSeqLat::hammerSeqLatMapping(v27, a6, &v24);
  }

  v17 = *a2;
  if (*a2 == a2[1])
  {
    return 0;
  }

  while (1)
  {
    quasar::Hammer::Hammer(v27, v17, *a1, 1, a4, v16, a5, 1.0);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    if ((quasar::Hammer::hammerMapping(v27, a6, &v24) & 1) == 0)
    {
      break;
    }

    memset(v23, 0, sizeof(v23));
    v18 = v24;
    if (v25 != v24)
    {
      v19 = 0;
      v20 = 8;
      do
      {
        std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v23, &v18[v20]);
        ++v19;
        v18 = v24;
        v20 += 56;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((v25 - v24) >> 3) > v19);
    }

    std::vector<std::vector<std::vector<quasar::Token>>>::push_back[abi:ne200100](a3, v23);
    v28 = v23;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v28);
    v23[0] = &v24;
    std::vector<quasar::Hammer::HammerSausage>::__destroy_vector::operator()[abi:ne200100](v23);
    quasar::Hammer::~Hammer(v27);
    v17 += 24;
    if (v17 == a2[1])
    {
      return 0;
    }
  }

  v23[0] = &v24;
  std::vector<quasar::Hammer::HammerSausage>::__destroy_vector::operator()[abi:ne200100](v23);
  quasar::Hammer::~Hammer(v27);
  return 2;
}

void sub_1B5626AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(v4, va1);
  std::vector<std::vector<quasar::Hammer::HammerSausage>>::__destroy_vector::operator()[abi:ne200100](va);
  quasar::HammerSeqLat::~HammerSeqLat(va2);
  _Unwind_Resume(a1);
}

uint64_t quasar::QuasarTextProcImpl::reportResults(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94[2] = *MEMORY[0x1E69E9840];
  memset(v92, 0, 24);
  memset(v91, 0, sizeof(v91));
  v3 = *a2;
  if (*a2 == *(a2 + 8))
  {
    goto LABEL_70;
  }

  v4 = 0;
  do
  {
    v66 = v4;
    for (i = *v3; i != v3[1]; i += 28)
    {
      if (*(i + 23) >= 0)
      {
        v6 = *(i + 23);
      }

      else
      {
        v6 = i[1];
      }

      std::string::basic_string[abi:ne200100](&v87, v6 + 3);
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v87;
      }

      else
      {
        v7 = v87.__r_.__value_.__r.__words[0];
      }

      if (v6)
      {
        if (*(i + 23) >= 0)
        {
          v8 = i;
        }

        else
        {
          v8 = *i;
        }

        memmove(v7, v8, v6);
      }

      *(&v7->__r_.__value_.__l.__data_ + v6) = 2112032;
      std::to_string(&v86, *(i + 7));
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v86;
      }

      else
      {
        v9 = v86.__r_.__value_.__r.__words[0];
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v86.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v86.__r_.__value_.__l.__size_;
      }

      v11 = std::string::append(&v87, v9, size);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = std::string::append(&v88, " : ");
      v14 = *&v13->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v85, *(i + 8));
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v85;
      }

      else
      {
        v15 = v85.__r_.__value_.__r.__words[0];
      }

      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v16 = v85.__r_.__value_.__l.__size_;
      }

      v17 = std::string::append(&v89, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v90.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v90.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v19 = std::string::append(&v90, ", start silence: ");
      v20 = *&v19->__r_.__value_.__l.__data_;
      *&v68[16] = *(&v19->__r_.__value_.__l + 2);
      *v68 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v84, *(i + 9));
      if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v84;
      }

      else
      {
        v21 = v84.__r_.__value_.__r.__words[0];
      }

      if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = v84.__r_.__value_.__l.__size_;
      }

      v23 = std::string::append(v68, v21, v22);
      v24 = v23->__r_.__value_.__r.__words[0];
      v93.__r_.__value_.__r.__words[0] = v23->__r_.__value_.__l.__size_;
      *(v93.__r_.__value_.__r.__words + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
      v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (SBYTE7(v92[1]) < 0)
      {
        operator delete(*&v92[0]);
      }

      *&v92[0] = v24;
      *(&v92[0] + 1) = v93.__r_.__value_.__r.__words[0];
      *(v92 + 15) = *(v93.__r_.__value_.__r.__words + 7);
      BYTE7(v92[1]) = v25;
      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      if ((v68[23] & 0x80000000) != 0)
      {
        operator delete(*v68);
      }

      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if ((*(i + 23) & 0x8000000000000000) != 0)
      {
        if (i[1])
        {
LABEL_54:
          std::vector<std::string>::push_back[abi:ne200100](v91, v92);
          continue;
        }
      }

      else if (*(i + 23))
      {
        goto LABEL_54;
      }

      if (quasar::gLogLevel >= 4)
      {
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
        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        memset(v68, 0, sizeof(v68));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v68);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "Empty tokenName", 15);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(v68);
      }
    }

    v90.__r_.__value_.__r.__words[0] = " ";
    v90.__r_.__value_.__l.__size_ = 1;
    quasar::join<std::vector<std::string>>(v91, &v90);
    if (SBYTE7(v92[1]) < 0)
    {
      operator delete(*&v92[0]);
    }

    v92[0] = *v68;
    *&v92[1] = *&v68[16];
    if (quasar::gLogLevel >= 6)
    {
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
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      memset(v68, 0, sizeof(v68));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v68);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "Pre-text-proc Choice[", 21);
      v27 = MEMORY[0x1B8C84C00](v26, v66);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "]: ", 3);
      if ((SBYTE7(v92[1]) & 0x80u) == 0)
      {
        v29 = v92;
      }

      else
      {
        v29 = *&v92[0];
      }

      if ((SBYTE7(v92[1]) & 0x80u) == 0)
      {
        v30 = BYTE7(v92[1]);
      }

      else
      {
        v30 = *(&v92[0] + 1);
      }

      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
      std::ios_base::getloc((v31 + *(*v31 - 24)));
      v32 = std::locale::use_facet(&v90, MEMORY[0x1E69E5318]);
      (v32->__vftable[2].~facet_0)(v32, 10);
      std::locale::~locale(&v90);
      std::ostream::put();
      std::ostream::flush();
      quasar::QuasarTraceMessage::~QuasarTraceMessage(v68);
    }

    v4 = v66 + 1;
    v3 += 3;
  }

  while (v3 != *(a2 + 8));
LABEL_70:
  MEMORY[0x1B8C84820](v92, "");
  v33 = *a3;
  if (*a3 == *(a3 + 8))
  {
    goto LABEL_139;
  }

  v34 = 0;
  while (2)
  {
    v67 = v34;
    memset(&v90, 0, sizeof(v90));
    v35 = *v33;
    while (2)
    {
      if (v35 != v33[1])
      {
        if (*(v35 + 23) >= 0)
        {
          v36 = *(v35 + 23);
        }

        else
        {
          v36 = v35[1];
        }

        std::string::basic_string[abi:ne200100](&v86, v36 + 3);
        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v86;
        }

        else
        {
          v37 = v86.__r_.__value_.__r.__words[0];
        }

        if (v36)
        {
          if (*(v35 + 23) >= 0)
          {
            v38 = v35;
          }

          else
          {
            v38 = *v35;
          }

          memmove(v37, v38, v36);
        }

        *(&v37->__r_.__value_.__l.__data_ + v36) = 2112032;
        std::to_string(&v85, *(v35 + 7));
        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &v85;
        }

        else
        {
          v39 = v85.__r_.__value_.__r.__words[0];
        }

        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v40 = v85.__r_.__value_.__l.__size_;
        }

        v41 = std::string::append(&v86, v39, v40);
        v42 = *&v41->__r_.__value_.__l.__data_;
        v87.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
        *&v87.__r_.__value_.__l.__data_ = v42;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        v43 = std::string::append(&v87, " : ");
        v44 = *&v43->__r_.__value_.__l.__data_;
        v88.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
        *&v88.__r_.__value_.__l.__data_ = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v84, *(v35 + 8));
        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v84;
        }

        else
        {
          v45 = v84.__r_.__value_.__r.__words[0];
        }

        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v46 = v84.__r_.__value_.__l.__size_;
        }

        v47 = std::string::append(&v88, v45, v46);
        v48 = *&v47->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        v49 = std::string::append(&v89, ", start silence: ");
        v50 = *&v49->__r_.__value_.__l.__data_;
        *&v68[16] = *(&v49->__r_.__value_.__l + 2);
        *v68 = v50;
        v49->__r_.__value_.__l.__size_ = 0;
        v49->__r_.__value_.__r.__words[2] = 0;
        v49->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v93, *(v35 + 9));
        if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = &v93;
        }

        else
        {
          v51 = v93.__r_.__value_.__r.__words[0];
        }

        if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v52 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v52 = v93.__r_.__value_.__l.__size_;
        }

        v53 = std::string::append(v68, v51, v52);
        v54 = v53->__r_.__value_.__r.__words[0];
        v94[0] = v53->__r_.__value_.__l.__size_;
        *(v94 + 7) = *(&v53->__r_.__value_.__r.__words[1] + 7);
        v55 = HIBYTE(v53->__r_.__value_.__r.__words[2]);
        v53->__r_.__value_.__l.__size_ = 0;
        v53->__r_.__value_.__r.__words[2] = 0;
        v53->__r_.__value_.__r.__words[0] = 0;
        if (SBYTE7(v92[1]) < 0)
        {
          operator delete(*&v92[0]);
        }

        *&v92[0] = v54;
        *(&v92[0] + 1) = v94[0];
        *(v92 + 15) = *(v94 + 7);
        BYTE7(v92[1]) = v55;
        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if ((v68[23] & 0x80000000) != 0)
        {
          operator delete(*v68);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        if ((*(v35 + 23) & 0x8000000000000000) != 0)
        {
          if (!v35[1])
          {
            goto LABEL_125;
          }

LABEL_123:
          std::vector<std::string>::push_back[abi:ne200100](&v90, v92);
        }

        else
        {
          if (*(v35 + 23))
          {
            goto LABEL_123;
          }

LABEL_125:
          if (quasar::gLogLevel >= 4)
          {
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
            v70 = 0u;
            v71 = 0u;
            v69 = 0u;
            memset(v68, 0, sizeof(v68));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v68);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "Empty tokenName", 15);
            quasar::QuasarInfoMessage::~QuasarInfoMessage(v68);
          }
        }

        v35 += 28;
        continue;
      }

      break;
    }

    v89.__r_.__value_.__r.__words[0] = " ";
    v89.__r_.__value_.__l.__size_ = 1;
    quasar::join<std::vector<std::string>>(&v90, &v89);
    if (SBYTE7(v92[1]) < 0)
    {
      operator delete(*&v92[0]);
    }

    v92[0] = *v68;
    *&v92[1] = *&v68[16];
    if (quasar::gLogLevel >= 6)
    {
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
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      memset(v68, 0, sizeof(v68));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v68);
      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "Post-text-proc Choice[", 22);
      v57 = MEMORY[0x1B8C84C00](v56, v67);
      v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "]: ", 3);
      if ((SBYTE7(v92[1]) & 0x80u) == 0)
      {
        v59 = v92;
      }

      else
      {
        v59 = *&v92[0];
      }

      if ((SBYTE7(v92[1]) & 0x80u) == 0)
      {
        v60 = BYTE7(v92[1]);
      }

      else
      {
        v60 = *(&v92[0] + 1);
      }

      v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v59, v60);
      std::ios_base::getloc((v61 + *(*v61 - 24)));
      v62 = std::locale::use_facet(&v89, MEMORY[0x1E69E5318]);
      (v62->__vftable[2].~facet_0)(v62, 10);
      std::locale::~locale(&v89);
      std::ostream::put();
      std::ostream::flush();
      quasar::QuasarTraceMessage::~QuasarTraceMessage(v68);
    }

    v34 = v67 + 1;
    *v68 = &v90;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v68);
    v33 += 3;
    if (v33 != *(a3 + 8))
    {
      continue;
    }

    break;
  }

LABEL_139:
  *v68 = v91;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v68);
  if (SBYTE7(v92[1]) < 0)
  {
    operator delete(*&v92[0]);
  }

  return 0;
}

void sub_1B5627514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  a13 = (v13 - 200);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (*(v13 - 153) < 0)
  {
    operator delete(*(v13 - 176));
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::QuasarTextProcImpl::run(uint64_t a1, const std::string *a2, void ***a3)
{
  v5 = (a1 + 24);
  if (*(a1 + 8) - *a1 != 16)
  {
    v7 = *(a1 + 47);
    if (v7 < 0)
    {
      if (*(a1 + 32) != 3)
      {
LABEL_27:
        v18 = 0;
        goto LABEL_28;
      }

      v5 = *v5;
    }

    else if (v7 != 3)
    {
      goto LABEL_27;
    }

    v15 = *v5;
    v16 = *(v5 + 2);
    v18 = v15 == 29801 && v16 == 110;
LABEL_28:
    quasar::HammerSeq::HammerSeq(v20, a2, a1, 1, 1, v18, 0, 1.0);
    v19 = quasar::HammerSeq::hammerSeqMappingString(v20, a3);
    v22 = &v21;
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v22);
    quasar::Hammer::~Hammer(v20);
    if (!v19)
    {
      return 2;
    }

    goto LABEL_29;
  }

  v6 = *(a1 + 47);
  if (v6 < 0)
  {
    if (*(a1 + 32) != 3)
    {
LABEL_16:
      v11 = 0;
      goto LABEL_17;
    }

    v5 = *v5;
  }

  else if (v6 != 3)
  {
    goto LABEL_16;
  }

  v8 = *v5;
  v9 = *(v5 + 2);
  v11 = v8 == 29801 && v9 == 110;
LABEL_17:
  quasar::Hammer::Hammer(v20, a2, *a1, 1, 1, 1.0, v11, 0);
  v12 = quasar::Hammer::hammerMappingString(v20, a3);
  quasar::Hammer::~Hammer(v20);
  if ((v12 & 1) == 0)
  {
    return 2;
  }

LABEL_29:
  if (quasar::gLogLevel >= 5)
  {
    quasar::QuasarTextProcImpl::reportResults(v13, a2, a3);
  }

  return 0;
}

void sub_1B56278EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::HammerSeq::~HammerSeq(va);
  _Unwind_Resume(a1);
}

void quasar::HammerSeq::~HammerSeq(void **this)
{
  v2 = this + 11;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::Hammer::~Hammer(this);
}

uint64_t quasar::QuasarTextProcImpl::reportResults(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  memset(v42, 0, sizeof(v42));
  if (quasar::gLogLevel >= 5)
  {
    v40 = 0u;
    v41 = 0u;
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
    v25 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Pre-sanitization: ", 18);
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

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v45, MEMORY[0x1E69E5318]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v45);
    std::ostream::put();
    std::ostream::flush();
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v25);
  }

  MEMORY[0x1B8C84820](v43, "");
  v12 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    v13 = 0;
    v14 = quasar::gLogLevel;
    v15 = MEMORY[0x1E69E5318];
    do
    {
      if (v14 >= 5)
      {
        v40 = 0u;
        v41 = 0u;
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
        v25 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Post-sanitization Choice[", 25);
        v17 = MEMORY[0x1B8C84C00](v16, v13);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "]: ", 3);
        v19 = *(v12 + 23);
        if (v19 >= 0)
        {
          v20 = v12;
        }

        else
        {
          v20 = *v12;
        }

        if (v19 >= 0)
        {
          v21 = *(v12 + 23);
        }

        else
        {
          v21 = *(v12 + 8);
        }

        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v23 = std::locale::use_facet(&v45, v15);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(&v45);
        std::ostream::put();
        std::ostream::flush();
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v25);
        v14 = quasar::gLogLevel;
        v11 = a3[1];
      }

      v13 = (v13 + 1);
      v12 += 24;
    }

    while (v12 != v11);
  }

  *&v25 = v42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  return 0;
}

void sub_1B5627C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 - 89) < 0)
  {
    operator delete(*(v9 - 112));
  }

  _Unwind_Resume(a1);
}

void quasar::QuasarTextProcImpl::~QuasarTextProcImpl(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t quasar::QuasarTextProcImpl::modelExist(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    return 0;
  }

  do
  {
    if (quasar::filesystem::exists(v1) && !quasar::filesystem::is_directory(v1))
    {
      result = 1;
    }

    else
    {
      if (quasar::gLogLevel >= 4)
      {
        memset(v8, 0, sizeof(v8));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
        v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "modelFile doesn't exist, or it's a directory: ", 46);
        v4 = *(v1 + 23);
        if (v4 >= 0)
        {
          v5 = v1;
        }

        else
        {
          v5 = *v1;
        }

        if (v4 >= 0)
        {
          v6 = *(v1 + 23);
        }

        else
        {
          v6 = *(v1 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(v8);
      }

      result = 0;
    }

    v1 += 24;
  }

  while (v1 != v2);
  return result;
}

void sub_1B5628214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v52 - 185) < 0)
  {
    operator delete(*(v52 - 208));
  }

  __p = (v52 - 184);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v52 - 137) < 0)
  {
    operator delete(*(v52 - 160));
  }

  quasar::PTree::~PTree((v52 - 136));
  _Unwind_Resume(a1);
}

_OWORD *quasar::QuasarTextProcImpl::QuasarTextProcImpl(_OWORD *result, uint64_t *a2)
{
  result[1] = 0u;
  result[2] = 0u;
  *result = 0u;
  v2 = *a2;
  if (*a2 != a2[1])
  {
    v3 = kaldi::Input::Input(v60, v2, 0);
    v4 = kaldi::Input::Stream(v3);
    if (*(v4 + *(*v4 - 24) + 32))
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Could not open decoding-graph FST ", 34);
      v30 = *(v2 + 23);
      if (v30 >= 0)
      {
        v31 = v2;
      }

      else
      {
        v31 = *v2;
      }

      if (v30 >= 0)
      {
        v32 = *(v2 + 23);
      }

      else
      {
        v32 = *(v2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v43);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v40 = -1;
    v41 = 0;
    v42 = 0;
    v5 = kaldi::Input::Stream(v60);
    if ((fst::FstHeader::Read(v35, v5, v2, 0) & 1) == 0)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Reading FST: error reading FST header.", 38);
      v26 = *(v2 + 23);
      if (v26 >= 0)
      {
        v27 = v2;
      }

      else
      {
        v27 = *v2;
      }

      if (v26 >= 0)
      {
        v28 = *(v2 + 23);
      }

      else
      {
        v28 = *(v2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v43);
    }

    v6 = fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type();
    if (v38 >= 0)
    {
      v7 = HIBYTE(v38);
    }

    else
    {
      v7 = v38;
    }

    v8 = *(v6 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v6 + 8);
    }

    if (v7 != v8 || (v38 >= 0 ? (v10 = &v37 + 8) : (v10 = *(&v37 + 1)), v9 >= 0 ? (v11 = v6) : (v11 = *v6), memcmp(v10, v11, v7)))
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "FST with arc type ", 18);
      if (v38 >= 0)
      {
        v19 = &v37 + 8;
      }

      else
      {
        v19 = *(&v37 + 1);
      }

      if (v38 >= 0)
      {
        v20 = HIBYTE(v38);
      }

      else
      {
        v20 = v38;
      }

      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " not supported.\n", 16);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v43);
    }

    fst::FstReadOptions::FstReadOptions(&__p, v2, v35, 0, 0);
    if ((BYTE7(v37) & 0x80) != 0)
    {
      if (*(&v36 + 1) != 5)
      {
        if (*(&v36 + 1) == 6 && *v36 == 1952671094 && *(v36 + 4) == 29295)
        {
          goto LABEL_25;
        }

LABEL_48:
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Reading FST: unsupported hammer FST type: ", 42);
        if ((SBYTE7(v37) & 0x80u) == 0)
        {
          v23 = &v36;
        }

        else
        {
          v23 = v36;
        }

        if ((SBYTE7(v37) & 0x80u) == 0)
        {
          v24 = BYTE7(v37);
        }

        else
        {
          v24 = *(&v36 + 1);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v43);
      }

      v12 = v36;
    }

    else
    {
      v12 = &v36;
      if (BYTE7(v37) != 5)
      {
        if (BYTE7(v37) != 6)
        {
          goto LABEL_48;
        }

        if (v36 != 1952671094 || WORD2(v36) != 29295)
        {
          goto LABEL_48;
        }

LABEL_25:
        v34 = 2;
        kaldi::Input::Stream(v60);
        fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Read();
      }
    }

    v15 = *v12;
    v16 = *(v12 + 4);
    if (v15 == 1936617315 && v16 == 116)
    {
      v34 = 2;
      kaldi::Input::Stream(v60);
      fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::Read();
    }

    goto LABEL_48;
  }

  return result;
}

void sub_1B562880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  JUMPOUT(0x1B5628840);
}

void sub_1B562883C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a22);
  kaldi::Input::~Input((v35 - 96));
  if (*(v34 + 47) < 0)
  {
    operator delete(*(v34 + 24));
  }

  a34 = v34;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

void sub_1B56289B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::pair<std::string,quasar::PTree>::~pair(&a15);
  _Unwind_Resume(a1);
}

void quasar::QuasarTextProc::modelKeyFromConfig(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "::");
  quasar::splitAndTrim(a1, __p, &v27);
  if (SBYTE7(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v27;
  v5 = v28;
  if (v28 - v27 == 24)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "*");
    std::vector<std::string>::push_back[abi:ne200100](&v27, __p);
    if (SBYTE7(v11) < 0)
    {
      operator delete(__p[0]);
    }

    v4 = v27;
    v5 = v28;
  }

  if (v5 - v4 != 48)
  {
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
    v11 = 0u;
    v12 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Key does not match 'locale' or 'locale::keyboard': ", 51);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  quasar::QuasarTextProc::modelKey(v4, (v4 + 24), a2);
  __p[0] = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B5628B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = (v14 - 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_1B5628B64(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5628B5CLL);
}

void quasar::QuasarTextProc::modelKey(uint64_t a1@<X1>, uint64_t *a2@<X2>, std::string *a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, *a1, *(a1 + 8));
  }

  else
  {
    v75 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v74, *a2, a2[1]);
  }

  else
  {
    v74 = *a2;
  }

  quasar::trim(&v75);
  quasar::trim(&v74);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v75.__r_.__value_.__l.__size_;
  }

  v7 = *(a1 + 23);
  v8 = v7;
  v56 = *(a1 + 8);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 8);
  }

  if (size != v7 || ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v9 = &v75) : (v9 = v75.__r_.__value_.__r.__words[0]), (v10 = *a1, v8 >= 0) ? (v11 = a1) : (v11 = *a1), memcmp(v9, v11, size)))
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
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
    v59 = 0u;
    memset(v58, 0, sizeof(v58));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v58);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "Locale cannot include leading/trailing whitespace: ", 51);
    v33 = *(a1 + 23);
    if (v33 >= 0)
    {
      v34 = a1;
    }

    else
    {
      v34 = *a1;
    }

    if (v33 >= 0)
    {
      v35 = *(a1 + 23);
    }

    else
    {
      v35 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v58);
  }

  v57 = a3;
  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v74.__r_.__value_.__l.__size_;
  }

  v13 = *(a2 + 23);
  v14 = v13;
  v54 = a2[1];
  if (v13 < 0)
  {
    v13 = a2[1];
  }

  if (v12 != v13 || ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v15 = &v74) : (v15 = v74.__r_.__value_.__r.__words[0]), (v55 = *a2, v14 >= 0) ? (v16 = a2) : (v16 = *a2), memcmp(v15, v16, v12)))
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
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
    v59 = 0u;
    memset(v58, 0, sizeof(v58));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v58);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "Keyboard cannot include leading/trailing whitespace: ", 53);
    v37 = *(a2 + 23);
    if (v37 >= 0)
    {
      v38 = a2;
    }

    else
    {
      v38 = *a2;
    }

    if (v37 >= 0)
    {
      v39 = *(a2 + 23);
    }

    else
    {
      v39 = a2[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v38, v39);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v58);
  }

  if (size >= 2)
  {
    v17 = &v11[size];
    v18 = size;
    v19 = v11;
    do
    {
      v20 = memchr(v19, 58, v18 - 1);
      if (!v20)
      {
        break;
      }

      if (*v20 == 14906)
      {
        if (v20 != v17 && v20 - v11 != -1)
        {
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
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
          v59 = 0u;
          memset(v58, 0, sizeof(v58));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v58);
          v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "Locale with separator '", 23);
          v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "::", 2);
          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "' not supported: ", 17);
          v45 = *(a1 + 23);
          if (v45 >= 0)
          {
            v46 = a1;
          }

          else
          {
            v46 = *a1;
          }

          if (v45 >= 0)
          {
            v47 = *(a1 + 23);
          }

          else
          {
            v47 = *(a1 + 8);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v58);
        }

        break;
      }

      v19 = v20 + 1;
      v18 = v17 - v19;
    }

    while (v17 - v19 >= 2);
  }

  if (v12 >= 2)
  {
    v21 = &v16[v12];
    v22 = v16;
    do
    {
      v23 = memchr(v22, 58, v12 - 1);
      if (!v23)
      {
        break;
      }

      if (*v23 == 14906)
      {
        if (v23 != v21 && v23 - v16 != -1)
        {
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
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
          v59 = 0u;
          memset(v58, 0, sizeof(v58));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v58);
          v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "Keyboard with separator '", 25);
          v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "::", 2);
          v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "' not supported: ", 17);
          v51 = *(a2 + 23);
          if (v51 >= 0)
          {
            v52 = a2;
          }

          else
          {
            v52 = *a2;
          }

          if (v51 >= 0)
          {
            v53 = *(a2 + 23);
          }

          else
          {
            v53 = a2[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v52, v53);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v58);
        }

        break;
      }

      v22 = v23 + 1;
      v12 = v21 - v22;
    }

    while (v21 - v22 >= 2);
  }

  if (v8 < 0)
  {
    if (v56 != 7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v10 = a1;
    if (v8 != 7)
    {
      goto LABEL_64;
    }
  }

  if (*v10 == 1634100580 && *(v10 + 3) == 1953264993)
  {
    if (v14 < 0)
    {
      if (v54 != 1)
      {
        goto LABEL_99;
      }

      v25 = *v55;
    }

    else
    {
      if (v14 != 1)
      {
        goto LABEL_99;
      }

      v25 = v55;
    }

    if (v25 == 42)
    {
      goto LABEL_64;
    }

LABEL_99:
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
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
    v59 = 0u;
    memset(v58, 0, sizeof(v58));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v58);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "Locale=", 7);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "default", 7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " should only be used with keyboard=*", 36);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v58);
  }

LABEL_64:
  std::string::basic_string[abi:ne200100](v58, size + 2);
  if (v58[23] >= 0)
  {
    v26 = v58;
  }

  else
  {
    v26 = *v58;
  }

  if (size)
  {
    if (*(a1 + 23) >= 0)
    {
      v27 = a1;
    }

    else
    {
      v27 = *a1;
    }

    memmove(v26, v27, size);
  }

  strcpy(&v26[size], "::");
  v28 = *(a2 + 23);
  if (v28 >= 0)
  {
    v29 = a2;
  }

  else
  {
    v29 = *a2;
  }

  if (v28 >= 0)
  {
    v30 = *(a2 + 23);
  }

  else
  {
    v30 = a2[1];
  }

  v31 = std::string::append(v58, v29, v30);
  *v57 = *v31;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if ((v58[23] & 0x80000000) != 0)
  {
    operator delete(*v58);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }
}

void sub_1B5629178(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B56291A4);
}

void sub_1B56291A0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  _Unwind_Resume(exception_object);
}

std::string *quasar::QuasarTextProc::getItn2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v7 = *(a3 + 23);
  if (v7 < 0)
  {
    if (*(a3 + 8) != 1)
    {
      goto LABEL_7;
    }

    v8 = *a3;
  }

  else
  {
    v8 = a3;
    if (v7 != 1)
    {
      goto LABEL_7;
    }
  }

  if (*v8 == 42)
  {
    v35 = 0u;
    v36 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Keyboard=* is reserved for internal use");
    goto LABEL_29;
  }

LABEL_7:
  if (!*(a1 + 1624))
  {
    result = std::string::basic_string[abi:ne200100]<0>(a4, "");
    a4[1].__r_.__value_.__r.__words[0] = 0;
    a4[1].__r_.__value_.__l.__size_ = 0;
    return result;
  }

  quasar::QuasarTextProc::modelKey(a2, a3, __p);
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 1600), __p);
  v10 = v9;
  if (SBYTE7(v21) < 0)
  {
    operator delete(__p[0]);
    if (!v10)
    {
LABEL_13:
      std::string::basic_string[abi:ne200100]<0>(v18, "*");
      quasar::QuasarTextProc::modelKey(a2, v18, __p);
      v10 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 1600), __p);
      if (SBYTE7(v21) < 0)
      {
        operator delete(__p[0]);
      }

      if (v19 < 0)
      {
        operator delete(v18[0]);
        if (v10)
        {
          goto LABEL_17;
        }
      }

      else if (v10)
      {
        goto LABEL_17;
      }

      std::string::basic_string[abi:ne200100]<0>(v18, "default");
      std::string::basic_string[abi:ne200100]<0>(v16, "*");
      quasar::QuasarTextProc::modelKey(v18, v16, __p);
      v14 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 1600), __p);
      if (SBYTE7(v21) < 0)
      {
        operator delete(__p[0]);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      if (v14)
      {
        v12 = (v14 + 2);
        v13 = (v14 + 5);
        return std::pair<std::string,std::shared_ptr<quasar::InverseTextNormalizer>>::pair[abi:ne200100]<true,0>(a4, v12, v13);
      }

      v35 = 0u;
      v36 = 0u;
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
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "There are itn2 models, but cannot find one for locale=", 54);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a2);
LABEL_29:
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }
  }

  else if (!v9)
  {
    goto LABEL_13;
  }

LABEL_17:
  v12 = (v10 + 2);
  v13 = (v10 + 5);
  return std::pair<std::string,std::shared_ptr<quasar::InverseTextNormalizer>>::pair[abi:ne200100]<true,0>(a4, v12, v13);
}

void sub_1B5629488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    JUMPOUT(0x1B5629498);
  }

  JUMPOUT(0x1B562949CLL);
}

std::string *quasar::QuasarTextProc::getPostItnHammer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, std::string *a5@<X8>)
{
  v8 = *(a3 + 23);
  if (v8 < 0)
  {
    if (*(a3 + 8) != 1)
    {
      goto LABEL_7;
    }

    v9 = *a3;
  }

  else
  {
    v9 = a3;
    if (v8 != 1)
    {
      goto LABEL_7;
    }
  }

  if (*v9 == 42)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Keyboard=* is reserved for internal use");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

LABEL_7:
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (*(a4 + 8) != 15)
    {
LABEL_15:
      v14 = 1640;
      goto LABEL_22;
    }

    a4 = *a4;
  }

  else if (v10 != 15)
  {
    goto LABEL_15;
  }

  v11 = 0x706F73742D69746ELL;
  v12 = bswap64(*a4);
  if (v12 == 0x706F73742D69746ELL && (v11 = 0x6E2D68616D6D6572, v12 = bswap64(*(a4 + 7)), v12 == 0x6E2D68616D6D6572))
  {
    v13 = 0;
  }

  else if (v12 < v11)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 1640;
  }

  else
  {
    v14 = 1680;
  }

LABEL_22:
  quasar::QuasarTextProc::modelKey(a2, a3, __p);
  v15 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + v14), __p);
  v16 = v15;
  if (SBYTE7(v27) < 0)
  {
    operator delete(__p[0]);
    if (v16)
    {
      goto LABEL_24;
    }

LABEL_26:
    std::string::basic_string[abi:ne200100]<0>(v24, "*");
    quasar::QuasarTextProc::modelKey(a2, v24, __p);
    v19 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + v14), __p);
    if (SBYTE7(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
      if (v19)
      {
        goto LABEL_30;
      }
    }

    else if (v19)
    {
LABEL_30:
      v17 = (v19 + 2);
      v18 = (v19 + 5);
      return std::pair<std::string,std::shared_ptr<quasar::InverseTextNormalizer>>::pair[abi:ne200100]<true,0>(a5, v17, v18);
    }

    std::string::basic_string[abi:ne200100]<0>(v24, "default");
    std::string::basic_string[abi:ne200100]<0>(v22, "*");
    quasar::QuasarTextProc::modelKey(v24, v22, __p);
    v20 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + v14), __p);
    if (SBYTE7(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
      if (v20)
      {
        goto LABEL_38;
      }
    }

    else if (v20)
    {
LABEL_38:
      v17 = (v20 + 2);
      v18 = (v20 + 5);
      return std::pair<std::string,std::shared_ptr<quasar::InverseTextNormalizer>>::pair[abi:ne200100]<true,0>(a5, v17, v18);
    }

    result = std::string::basic_string[abi:ne200100]<0>(a5, "");
    a5[1].__r_.__value_.__r.__words[0] = 0;
    a5[1].__r_.__value_.__l.__size_ = 0;
    return result;
  }

  if (!v15)
  {
    goto LABEL_26;
  }

LABEL_24:
  v17 = (v16 + 2);
  v18 = (v16 + 5);
  return std::pair<std::string,std::shared_ptr<quasar::InverseTextNormalizer>>::pair[abi:ne200100]<true,0>(a5, v17, v18);
}

void quasar::QuasarTextProc::formatWords(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unsigned __int8 a10)
{
  if (*a2 == *(a2 + 8))
  {
    if (quasar::gLogLevel >= 4)
    {
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
      v35 = 0u;
      v33 = 0u;
      v34 = 0u;
      *__p = 0u;
      v32 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "empty ITN input tokens", 22);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    *a9 = 0;
    a9[1] = 0;
    a9[2] = 0;
  }

  else
  {
    quasar::QuasarTextProc::getItn2(a1, a5, a6, __p);
    if (*(&v32 + 1))
    {
      quasar::InverseTextNormalizer::run(*(&v32 + 1), a2, a7, a8, a9);
    }

    else if (*(a1 + 1568))
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v19 = quasar::QsrText::SingletonInstance(0);
      quasar::QsrText::qsrToHatTokens(v19, a2, &v28, 0);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      memset(v24, 0, sizeof(v24));
      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v24, &v28);
      v20 = quasar::QuasarTextProcImpl::run(*(a1 + 1568), v24, &v25, a10);
      if (v20 || (v23 = v25, v25 == v26))
      {
        *a9 = 0;
        a9[1] = 0;
        a9[2] = 0;
        v21 = quasar::QsrText::SingletonInstance(v20);
        quasar::QsrText::decodeQsrTextTokens(v21, a2, a9);
      }

      else
      {
        *a9 = 0;
        a9[1] = 0;
        a9[2] = 0;
        std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a9, *v23, v23[1], 0x6DB6DB6DB6DB6DB7 * ((v23[1] - *v23) >> 5));
      }

      v48 = v24;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v48);
      v24[0] = &v25;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v24);
      v25 = &v28;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v25);
    }

    else
    {
      v22 = *(a1 + 1736);
      if (v22)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        (*(*v22 + 16))(v22, a2, a3, a4, a5, a6, a7, a8, a10, &v28);
        v25 = &v28;
        std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&v25);
      }

      else
      {
        *a9 = 0;
        a9[1] = 0;
        a9[2] = 0;
        std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a9, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 5));
      }
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (SBYTE7(v32) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B5629A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void **);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](va);
  std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>>::~pair(va1);
  _Unwind_Resume(a1);
}

void quasar::QuasarTextProc::formatWordsLat(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void **a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10)
{
  if (*a2 == a2[1])
  {
    if (quasar::gLogLevel >= 4)
    {
      v52 = 0u;
      v53 = 0u;
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
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "empty ITN input tokens", 22);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    *a9 = 0;
    a9[1] = 0;
    a9[2] = 0;
  }

  else
  {
    quasar::QuasarTextProc::getItn2(a1, a5, a6, __p);
    if (*(&v38 + 1))
    {
      std::vector<std::vector<quasar::Token>>::vector[abi:ne200100](a9, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
      v19 = *a2;
      if (a2[1] != *a2)
      {
        v20 = 0;
        v21 = 0;
        do
        {
          quasar::InverseTextNormalizer::run(*(&v38 + 1), (v19 + v20), a7, a8, &v35);
          v22 = *a9 + v20;
          std::vector<quasar::Token>::__vdeallocate(v22);
          *v22 = v35;
          *(v22 + 16) = v36;
          v35 = 0uLL;
          v36 = 0;
          *&v33 = &v35;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v33);
          ++v21;
          v19 = *a2;
          v20 += 24;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v21);
      }
    }

    else
    {
      v23 = *(a1 + 1568);
      if (v23)
      {
        v35 = 0uLL;
        v36 = 0;
        v24 = *a2;
        v25 = a2[1];
        if (*a2 != v25)
        {
          do
          {
            v33 = 0uLL;
            v34 = 0;
            v26 = quasar::QsrText::SingletonInstance(v23);
            quasar::QsrText::qsrToHatTokens(v26, v24, &v33, 0);
            std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v35, &v33);
            v32[0] = &v33;
            std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v32);
            v24 += 24;
          }

          while (v24 != v25);
          v23 = *(a1 + 1568);
        }

        v33 = 0uLL;
        v34 = 0;
        v27 = quasar::QuasarTextProcImpl::run(v23, &v35, &v33, a10);
        if (v27)
        {
          *a9 = 0;
          a9[1] = 0;
          a9[2] = 0;
          v29 = *a2;
          for (i = a2[1]; v29 != i; v29 += 3)
          {
            memset(v32, 0, sizeof(v32));
            v30 = quasar::QsrText::SingletonInstance(v27);
            quasar::QsrText::decodeQsrTextTokens(v30, v29, v32);
            std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](a9, v32);
            v54 = v32;
            std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v54);
          }
        }

        else
        {
          *a9 = v33;
          a9[2] = v34;
          v34 = 0;
          v33 = 0uLL;
        }

        v32[0] = &v33;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v32);
        *&v33 = &v35;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v33);
      }

      else
      {
        v31 = *(a1 + 1736);
        if (v31)
        {
          v35 = 0uLL;
          v36 = 0;
          (*(*v31 + 24))(v31, a2, a3, a4, a5, a6, a7, a8, a10, &v35);
          *&v33 = &v35;
          std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&v33);
        }

        else
        {
          *a9 = 0;
          a9[1] = 0;
          a9[2] = 0;
          std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a9, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
        }
      }
    }

    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if (SBYTE7(v38) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B5629E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void **);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](va);
  std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>>::~pair(va1);
  _Unwind_Resume(a1);
}

void quasar::QuasarTextProc::applyLatticeProcessor(quasar::QsrText *a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 215))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    memset(v15, 0, sizeof(v15));
    std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v15, a2);
    if (quasar::QuasarTextProcImpl::run(*(a1 + 215), v15, &v16, a3) || (v8 = v16, v16 == v17))
    {
      v8 = a2;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a4, *v8, v8[1], 0x6DB6DB6DB6DB6DB7 * ((v8[1] - *v8) >> 5));
    v19 = v15;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v19);
    v15[0] = &v16;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v15);
  }

  else if (*(a1 + 203))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v9 = quasar::QsrText::SingletonInstance(a1);
    quasar::QsrText::removeW00(v9, a2, a4);
  }

  else
  {
    v10 = *(a1 + 217);
    if (v10)
    {
      v11 = *(*v10 + 32);

      v11();
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v12 = *a2;
      v13 = a2[1];
      v14 = 0x6DB6DB6DB6DB6DB7 * ((v13 - *a2) >> 5);

      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a4, v12, v13, v14);
    }
  }
}

void sub_1B562A0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t quasar::QuasarTextProc::sanitizer(uint64_t a1, uint64_t a2, std::vector<std::string> *this)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
      goto LABEL_3;
    }

LABEL_6:
    if (quasar::gLogLevel >= 4)
    {
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
      v8 = 0u;
      v9 = 0u;
      v6 = 0u;
      v7 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "empty sanitizer input tokens", 28);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    std::vector<std::string>::resize(this, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    std::vector<std::string>::push_back[abi:ne200100](this, __p);
    if (SBYTE7(v6) < 0)
    {
      operator delete(__p[0]);
    }

    return 1;
  }

  if (!*(a2 + 23))
  {
    goto LABEL_6;
  }

LABEL_3:
  result = *(a1 + 1584);
  if (!result)
  {
    return result;
  }

  quasar::QuasarTextProcImpl::run(result, a2, this);
  return 1;
}

void quasar::QuasarTextProc::emojiPhraseWithoutKeyword(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a3, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  std::string::basic_string[abi:ne200100]<0>(v10, "emoji-keyword-remove-fst-1");
  std::string::basic_string[abi:ne200100]<0>(v8, "*");
  quasar::QuasarTextProc::modelKey(v10, v8, &__p);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 1640), &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  v6 = v5[5];
  if (v6)
  {
    v7 = v5[6];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(&__p, 0, sizeof(__p));
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v10, a3);
    if (!quasar::QuasarTextProcImpl::run(v6, v10, &__p, 0) && __p.__r_.__value_.__l.__data_ != a3 && __p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
    {
      std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a3, *__p.__r_.__value_.__l.__data_, *(__p.__r_.__value_.__r.__words[0] + 8), 0x6DB6DB6DB6DB6DB7 * ((*(__p.__r_.__value_.__r.__words[0] + 8) - *__p.__r_.__value_.__l.__data_) >> 5));
    }

    v8[0] = v10;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v8);
    v10[0] = &__p;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v10);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_1B562A3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **p_p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a10);
  p_p = &__p;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::QuasarTextProc::postItnHammer(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  if (*a2 != a2[1])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "post-itn-hammer");
    quasar::QuasarTextProc::getPostItnHammer(a1, a3, a4, __p, &v51);
    if (SBYTE7(v55) < 0)
    {
      operator delete(__p[0]);
      if (a6)
      {
LABEL_4:
        std::string::basic_string[abi:ne200100]<0>(__p, "emoji-hammer");
        quasar::QuasarTextProc::getPostItnHammer(a1, a3, a4, __p, &v49);
        if (SBYTE7(v55) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_11;
      }
    }

    else if (a6)
    {
      goto LABEL_4;
    }

    std::string::basic_string[abi:ne200100]<0>(&v49, "");
    v50 = 0uLL;
LABEL_11:
    if ((a5 & 1) == 0 && quasar::gLogLevel >= 4)
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "locale=", 7);
      v15 = *(a3 + 23);
      if (v15 >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      if (v15 >= 0)
      {
        v17 = *(a3 + 23);
      }

      else
      {
        v17 = *(a3 + 8);
      }

      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " keyboard=", 11);
      v20 = *(a4 + 23);
      if (v20 >= 0)
      {
        v21 = a4;
      }

      else
      {
        v21 = *a4;
      }

      if (v20 >= 0)
      {
        v22 = *(a4 + 23);
      }

      else
      {
        v22 = *(a4 + 8);
      }

      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "", 1);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " postItnHammer=", 16);
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v51;
      }

      else
      {
        v26 = v51.__r_.__value_.__r.__words[0];
      }

      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v51.__r_.__value_.__l.__size_;
      }

      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, size);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "", 1);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " emojiHammer=", 14);
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v49;
      }

      else
      {
        v31 = v49.__r_.__value_.__r.__words[0];
      }

      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = v49.__r_.__value_.__l.__size_;
      }

      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "", 1);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a7, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
    __p[0] = v52;
    __p[1] = v53;
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v55 = v50;
    if (*(&v50 + 1))
    {
      atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    for (i = 0; i != 4; i += 2)
    {
      if (__p[i])
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        memset(v45, 0, sizeof(v45));
        std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v45, a7);
        if (!quasar::QuasarTextProcImpl::run(__p[i], v45, &v46, a5))
        {
          v36 = v46;
          if (v46 != v47)
          {
            v38 = *v46;
            v37 = v46[1];
            if (*v46 != v37)
            {
              do
              {
                std::string::basic_string[abi:ne200100]<0>(v43, "\x1F");
                std::string::basic_string[abi:ne200100]<0>(v41, "");
                quasar::replaceAll(v38, v43, v41);
                if (v42 < 0)
                {
                  operator delete(v41[0]);
                }

                if (v44 < 0)
                {
                  operator delete(v43[0]);
                }

                v38 += 224;
              }

              while (v38 != v37);
              v36 = v46;
            }

            if (v36 != a7)
            {
              std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a7, *v36, v36[1], 0x6DB6DB6DB6DB6DB7 * ((v36[1] - *v36) >> 5));
            }
          }
        }

        v43[0] = v45;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v43);
        v45[0] = &v46;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v45);
      }
    }

    for (j = 3; j != -1; j -= 2)
    {
      v40 = __p[j];
      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }
    }

    if (!*(a1 + 1736))
    {
      quasar::QuasarTextProc::qsrItnExists((a1 + 8), v34);
    }

    if (*(&v50 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v50 + 1));
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (quasar::gLogLevel >= 4)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "empty postItnHammer input tokens", 32);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
}

void quasar::QuasarTextProc::qsrItnExists(quasar::QuasarTextProc *this, const quasar::SystemConfig *a2)
{
  quasar::QuasarTextProc::qsrItnExists((this + 8), a2);
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "text-proc");
  quasar::SystemConfig::getPtreeOptional(this, __p);
}

BOOL quasar::QuasarTextProc::isEmojiSupportedLocale(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "");
  quasar::QuasarTextProc::getItn2(a1, a2, v6, &__p);
  v4 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  return v4 != 0;
}

void sub_1B562AB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double quasar::QuasarTextProc::getEndsOfSentencePunctuations@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v9, "");
  quasar::QuasarTextProc::getItn2(a1, a2, v9, &__p);
  v7 = v12;
  v6 = v13;
  v12 = 0;
  v13 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
    if (v7)
    {
LABEL_5:
      result = quasar::InverseTextNormalizer::getEndsOfSentencePunctuations(v7, a3);
      if (!v6)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_5;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (!v6)
  {
    return result;
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return result;
}

void sub_1B562ABEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B562ACF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::QuasarTextProc::updateHammeredItnWithEmojiAlternativeName(uint64_t a1, std::wstring *a2, std::wstring *a3)
{
  v4 = a2;
  v40 = 0;
  v41 = 0;
  quasar::getPreItnTokenToPostItnCharAlignment(a2, a3, &v40, &v42);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v5 = v42;
  if (v43 != v42)
  {
    v6 = a3->__r_.__value_.__r.__words[0];
    if (a3->__r_.__value_.__l.__size_ != a3->__r_.__value_.__r.__words[0])
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        ++v8;
        while (quasar::Token::isAutoPunctuation((v6 + 224 * v7)))
        {
          v5 = v42;
          if (v10 < (v43 - v42) >> 4)
          {
            v7 = v8;
            v6 = a3->__r_.__value_.__r.__words[0];
            if (0x6DB6DB6DB6DB6DB7 * ((a3->__r_.__value_.__l.__size_ - a3->__r_.__value_.__r.__words[0]) >> 5) > v8++)
            {
              continue;
            }
          }

          goto LABEL_60;
        }

        v12 = a3->__r_.__value_.__r.__words[0] + 224 * v7;
        v13 = *(v12 + 23);
        if (v13 < 0)
        {
          v13 = *(v12 + 8);
        }

        v14 = *&v42[16 * v10 + 12] - *&v42[16 * v10 + 8];
        if (v14 != v13 && v14 + 1 != v13)
        {
          goto LABEL_58;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "spokenemoji|");
        v16 = quasar::startsWith(v12, &__p);
        v17 = v16;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v17)
          {
LABEL_22:
            std::string::basic_string[abi:ne200100]<0>(&__p, "");
            v36 = v10;
            v18 = &v42[16 * v10];
            v19 = *v18;
            LODWORD(v18) = *(v18 + 1);
            if (v19 < v18)
            {
              v34 = v9;
              v20 = 224 * v19;
              v35 = v4;
              do
              {
                v21 = (v4->__words[0] + v20);
                v22 = *(v21 + 44);
                if (*(v21 + 44))
                {
                  v23 = " ";
                }

                else
                {
                  v23 = "";
                }

                if (*(v21 + 23) >= 0)
                {
                  v24 = *(v21 + 23);
                }

                else
                {
                  v24 = v21[1];
                }

                std::string::basic_string[abi:ne200100](v37, v24 + v22);
                if ((v38 & 0x80u) == 0)
                {
                  v25 = v37;
                }

                else
                {
                  v25 = v37[0];
                }

                if (v24)
                {
                  if (*(v21 + 23) >= 0)
                  {
                    v26 = v21;
                  }

                  else
                  {
                    v26 = *v21;
                  }

                  memmove(v25, v26, v24);
                }

                v27 = v25 + v24;
                if (v22)
                {
                  memcpy(v27, v23, v22);
                }

                v27[v22] = 0;
                if ((v38 & 0x80u) == 0)
                {
                  v28 = v37;
                }

                else
                {
                  v28 = v37[0];
                }

                if ((v38 & 0x80u) == 0)
                {
                  v29 = v38;
                }

                else
                {
                  v29 = v37[1];
                }

                std::string::append(&__p, v28, v29);
                v4 = v35;
                if (v38 < 0)
                {
                  operator delete(v37[0]);
                }

                ++v19;
                v18 = *&v42[16 * v36 + 4];
                v20 += 224;
              }

              while (v19 < v18);
              v9 = v34;
            }

            v30 = v4->__words[0] + 224 * v18;
            v31 = *(v30 + 23);
            if (v31 >= 0)
            {
              v32 = v30;
            }

            else
            {
              v32 = *v30;
            }

            if (v31 >= 0)
            {
              v33 = *(v30 + 23);
            }

            else
            {
              v33 = *(v30 + 8);
            }

            std::string::append(&__p, v32, v33);
            std::string::operator=((a3->__r_.__value_.__r.__words[0] + 224 * v7 + 176), &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        else if (v16)
        {
          goto LABEL_22;
        }

LABEL_58:
        v10 = (v9 + 1);
        v5 = v42;
        if (v10 < (v43 - v42) >> 4)
        {
          v7 = v8;
          v6 = a3->__r_.__value_.__r.__words[0];
          ++v9;
          if (0x6DB6DB6DB6DB6DB7 * ((a3->__r_.__value_.__l.__size_ - a3->__r_.__value_.__r.__words[0]) >> 5) > v8)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_60:
  if (v5)
  {
    v43 = v5;
    operator delete(v5);
  }
}

void sub_1B562B050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::QuasarTextProc::isEnableAutoPunctuation(uint64_t a1, uint64_t a2, const void **a3, char a4)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "");
  quasar::QuasarTextProc::getItn2(a1, a2, v12, &__p);
  v9 = v15;
  v8 = v16;
  v15 = 0;
  v16 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v13 & 0x80000000) == 0)
  {
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_9:
    isEnableAutoPunctuation = 0;
    if (!v8)
    {
      return isEnableAutoPunctuation;
    }

    goto LABEL_6;
  }

  operator delete(v12[0]);
  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_5:
  isEnableAutoPunctuation = quasar::InverseTextNormalizer::isEnableAutoPunctuation(v9, a3, a4);
  if (v8)
  {
LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return isEnableAutoPunctuation;
}

void sub_1B562B180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void quasar::QuasarTextProc::~QuasarTextProc(quasar::QuasarTextProc *this)
{
  quasar::QuasarTextProc::~QuasarTextProc(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D21168;
  v2 = *(this + 218);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 216);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(this + 1680);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(this + 1640);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(this + 1600);
  v4 = *(this + 199);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 197);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  quasar::SystemConfig::~SystemConfig((this + 8));

  quasar::Bitmap::~Bitmap(this);
}

void quasar::Hammer::~Hammer(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  v3 = this + 5;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void quasar::HammerSeqLat::~HammerSeqLat(void **this)
{
  v2 = this + 14;
  std::vector<quasar::Hammer::HammerSausage>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 11;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::Hammer::~Hammer(this);
}

std::string *std::pair<std::string,std::shared_ptr<quasar::InverseTextNormalizer>>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, std::string::size_type *a3)
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

  v6 = a3[1];
  this[1].__r_.__value_.__r.__words[0] = *a3;
  this[1].__r_.__value_.__l.__size_ = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_1B562B6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a19);
  _Unwind_Resume(a1);
}

uint64_t fst::ConstFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::ConstFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D211D8;
  *(a1 + 104) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 112) = -1;
  std::string::basic_string[abi:ne200100]<0>(&__str, "const");
  std::string::operator=((a1 + 16), &__str);
  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950001;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1B562B82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v15);
  _Unwind_Resume(a1);
}

void fst::ConstFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::~ConstFstImpl(void *a1)
{
  fst::ConstFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::~ConstFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ConstFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::~ConstFstImpl(void *a1)
{
  *a1 = &unk_1F2D211D8;
  v2 = a1[9];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

void fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::~ConstFst(void *a1)
{
  fst::ImplToFst<fst::ConstFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ConstFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = *(v2 + 96);
  return result;
}

uint64_t fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(*(result + 8) + 80) + 20 * a2;
  v5 = *(v3 + 4);
  v4 = *(v3 + 8);
  v6 = *(*(result + 8) + 88) + 16 * v5;
  *a3 = 0;
  a3[1] = v6;
  a3[2] = v4;
  a3[3] = 0;
  return result;
}

void *fst::ImplToFst<fst::ConstFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D21328;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::WriteFst<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>(void *a1, void *a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  if (*(a3 + 27))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = a1[1];
  if (v6)
  {
    v41 = 0;
    v7 = 0;
    v8 = *(v6 + 104);
    v9 = *(v6 + 96);
  }

  else
  {
    v10 = a2 + *(*a2 - 24);
    if ((v10[32] & 5) != 0 || ((*(**(v10 + 5) + 32))(&v50), v7 = v58, v58 == -1))
    {
      v9 = *(a1[1] + 96);
      if (v9 < 1)
      {
        v41 = 0;
        v9 = 0;
        v8 = 0;
      }

      else
      {
        v8 = 0;
        for (i = 0; i != v9; ++i)
        {
          v8 += (*(*a1 + 40))(a1, i);
        }

        v41 = 0;
      }

      v7 = -1;
    }

    else
    {
      v9 = -1;
      v41 = 1;
      v8 = -1;
    }
  }

  v53 = 0u;
  v54 = 0u;
  *v51 = 0u;
  *v52 = 0u;
  v56 = 0;
  v57 = 0;
  v55 = -1;
  v55 = (*(*a1 + 24))(a1);
  v56 = v9;
  v57 = v8;
  std::string::basic_string[abi:ne200100]<0>(&__str, "const");
  v12 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 1);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteFstHeader(a1, a2, a3, v5, &__str, v12 | 1, &v50);
  if (*(a3 + 27) == 1 && !fst::AlignOutput(a2))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v32 = fst::LogMessage::LogMessage(v44, __p);
    v33 = fst::cerr(v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Could not align file during write after header", 46);
    v30 = v44;
  }

  else
  {
    v39 = v7;
    v40 = v5;
    v46 = 0;
    v44[0] = 2139095040;
    v13 = *(a1[1] + 96);
    if (v13 < 1)
    {
      v15 = 0;
      v13 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v44[0] = (*(*a1 + 32))(a1, v14);
        v44[1] = v15;
        v45 = (*(*a1 + 40))(a1, v14);
        LODWORD(v46) = (*(*a1 + 48))(a1, v14);
        HIDWORD(v46) = (*(*a1 + 56))(a1, v14);
        std::ostream::write();
        v15 += v45;
        ++v14;
      }

      while (v13 != v14);
    }

    v56 = v13;
    v57 = v15;
    if ((*(a3 + 27) & 1) != 0 && !fst::AlignOutput(a2))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      v16 = fst::LogMessage::LogMessage(&v43, __p);
      v17 = fst::cerr(v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Could not align file during write after writing states", 54);
      fst::LogMessage::~LogMessage(&v43);
      if (v48 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v18 = *(a1[1] + 96);
    if (v18 >= 1)
    {
      for (j = 0; j != v18; ++j)
      {
        v20 = a1[1];
        v21 = *(v20 + 80) + 20 * j;
        v22 = *(v21 + 8);
        if (v22)
        {
          v23 = *(v20 + 88) + 16 * *(v21 + 4);
          do
          {
            std::ostream::write();
            v23 += 16;
            --v22;
          }

          while (v22);
        }
      }
    }

    std::ostream::flush();
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      v24 = fst::LogMessage::LogMessage(&v43, __p);
      v25 = fst::cerr(v24);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "ConstFst Write write failed: ", 29);
      v27 = *(a3 + 23);
      if (v27 >= 0)
      {
        v28 = a3;
      }

      else
      {
        v28 = *a3;
      }

      if (v27 >= 0)
      {
        v29 = *(a3 + 23);
      }

      else
      {
        v29 = *(a3 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    }

    else
    {
      if (v41)
      {
        updated = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::UpdateFstHeader(a1, a2, a3, v40, &__str, v12 | 1, &v50, v39);
        goto LABEL_47;
      }

      if (v56 == v9)
      {
        if (v57 == v8)
        {
          updated = 1;
          goto LABEL_47;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        v37 = fst::LogMessage::LogMessage(&v43, __p);
        v38 = fst::cerr(v37);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Inconsistent number of arcs observed during write", 49);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        v35 = fst::LogMessage::LogMessage(&v43, __p);
        v36 = fst::cerr(v35);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Inconsistent number of states observed during write", 51);
      }
    }

    v30 = &v43;
  }

  fst::LogMessage::~LogMessage(v30);
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  updated = 0;
LABEL_47:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[1]);
  }

  if (SHIBYTE(v52[0]) < 0)
  {
    operator delete(v51[0]);
  }

  return updated;
}

void sub_1B562C254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  fst::FstHeader::~FstHeader(&a31);
  _Unwind_Resume(a1);
}

void sub_1B562C368(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::shared_ptr[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int> *,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__shared_ptr_default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,std::allocator<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int> *,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__shared_ptr_default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,std::allocator<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int> *,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__shared_ptr_default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,std::allocator<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<quasar::Hammer::HammerSausage>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::allocator<quasar::Hammer::HammerSausage>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<quasar::Hammer::HammerSausage>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  v3 = (a2 + 8);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<std::vector<quasar::Hammer::HammerSausage>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<quasar::Hammer::HammerSausage>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::QuasarTextProcImpl>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::QuasarTextProcImpl>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::QuasarTextProcImpl>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::QuasarTextProcImpl>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::shared_ptr<quasar::QuasarTextProcImpl>>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B562C838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<quasar::InverseTextNormalizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D21458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::vector<std::vector<quasar::Token>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

kaldi::CTCLabelScorer *kaldi::CTCLabelScorer::CTCLabelScorer(kaldi::CTCLabelScorer *this, int a2, int a3, uint64_t a4, float a5, float a6, int a7, float a8)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 4) = a6;
  *(this + 5) = a7;
  *(this + 6) = logf(a8);
  *(this + 3) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 8) = &unk_1F2D0EE38;
  *(this + 104) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 14) = &unk_1F2D0EE38;
  *(this + 152) = 0;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 20) = &unk_1F2D0EE38;
  *(this + 200) = 0;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 26) = &unk_1F2D0EE38;
  *(this + 248) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 32) = &unk_1F2D0EE38;
  *(this + 296) = 0;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 38) = &unk_1F2D0EE38;
  *(this + 344) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 44) = &unk_1F2D0EE38;
  *(this + 392) = 0;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 50) = &unk_1F2D0EE38;
  *(this + 440) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 56) = &unk_1F2D0EE38;
  *(this + 488) = 0;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 62) = &unk_1F2D0EE38;
  *(this + 536) = 0;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 68) = &unk_1F2D0EE38;
  *(this + 584) = 0;
  *(this + 77) = 0;
  *(this + 600) = 0u;
  *(this + 74) = &unk_1F2D3AC18;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 78) = &unk_1F2D0EE38;
  *(this + 664) = 0;
  *(this + 114) = 0;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 42) = 0u;
  *(this + 230) = 1065353216;
  *(this + 7) = -8388609;
  kaldi::CuMatrix<float>::Resize(this + 8, a4, a4, 0, 0);
  kaldi::CuMatrix<float>::Resize(this + 14, *(this + 2), *(this + 2), 0, 0);
  kaldi::CuMatrix<float>::Resize(this + 20, *(this + 2), *(this + 2), 0, 0);
  kaldi::CuMatrix<float>::Resize(this + 26, *(this + 2), *(this + 2), 0, 0);
  kaldi::CuMatrix<float>::Resize(this + 32, *(this + 2), *(this + 2), 0, 0);
  kaldi::CuMatrix<float>::Resize(this + 38, *(this + 2), *(this + 2), 0, 0);
  kaldi::CuMatrix<float>::Resize(this + 44, *(this + 2), *(this + 2), 0, 0);
  kaldi::CuMatrix<float>::Resize(this + 50, *(this + 2), *(this + 2), 0, 0);
  kaldi::CuMatrix<float>::Resize(this + 56, *(this + 2), *(this + 2), 0, 0);
  kaldi::CuMatrix<float>::Resize(this + 62, *(this + 2), *(this + 2), 0, 0);
  kaldi::CuMatrix<float>::Resize(this + 68, *(this + 2), *(this + 2), 0, 0);
  kaldi::CuVector<float>::Resize(this + 592, *(this + 2), 0);
  kaldi::CuMatrix<float>::Resize(this + 78, *(this + 2), *(this + 2), 0, 0);
  return this;
}

void sub_1B562CDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((v14 + 111));
  std::deque<kaldi::CuMatrix<float>>::~deque[abi:ne200100](v14 + 105);
  std::deque<kaldi::CuMatrix<float>>::~deque[abi:ne200100](v14 + 99);
  std::deque<kaldi::CuMatrix<float>>::~deque[abi:ne200100](v14 + 93);
  std::deque<kaldi::CuMatrix<float>>::~deque[abi:ne200100](v14 + 87);
  v24 = *a9;
  if (*a9)
  {
    v14[85] = v24;
    operator delete(v24);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v18);
  kaldi::CuVector<float>::~CuVector(v17);
  kaldi::CuMatrix<float>::~CuMatrix(v16);
  kaldi::CuMatrix<float>::~CuMatrix(v15);
  kaldi::CuMatrix<float>::~CuMatrix(v22);
  kaldi::CuMatrix<float>::~CuMatrix(v21);
  kaldi::CuMatrix<float>::~CuMatrix(v20);
  kaldi::CuMatrix<float>::~CuMatrix(v19);
  kaldi::CuMatrix<float>::~CuMatrix(a11);
  kaldi::CuMatrix<float>::~CuMatrix(a12);
  kaldi::CuMatrix<float>::~CuMatrix(a13);
  kaldi::CuMatrix<float>::~CuMatrix(a14);
  kaldi::CuMatrix<float>::~CuMatrix(a10);
  v25 = v14[7];
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void kaldi::CTCLabelScorer::Compute(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 7);
  v10 = *(a1 + 6);
  v11 = a1[2];
  LODWORD(p_p) = 0;
  std::vector<int>::vector[abi:ne200100](v183, v11);
  if (a1[8] >= 1 && a1[2] >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(a2 + 8);
      v15 = *(a2 + 24) * v13;
      LODWORD(__p) = *(*(a3 + 8) + 4 * *(a3 + 24) * v13);
      HIDWORD(__p) = *(v14 + 4 * v15);
      p_p = &__p;
      v16 = std::__hash_table<std::__hash_value_type<std::pair<int,int>,int>,std::__unordered_map_hasher<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,kaldi::CTCLabelScorer::PairHash,std::equal_to<std::pair<int,int>>,true>,std::__unordered_map_equal<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,std::equal_to<std::pair<int,int>>,kaldi::CTCLabelScorer::PairHash,true>,std::allocator<std::__hash_value_type<std::pair<int,int>,int>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>(a1 + 111, &__p);
      *(v183[0] + v13++) = *(v16 + 6);
    }

    while (v13 < a1[2]);
  }

  v12.i32[0] = a1[7];
  kaldi::CuVectorBase<float>::Set((a1 + 148), v12);
  v170 = v10;
  v166 = a1[9];
  v18 = *(a1 + 98);
  if (v18)
  {
    if (v18 + v166 >= a1[10])
    {
      v19 = a1[2];
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = *(a1 + 92) + *(a1 + 91) - 1;
        v22 = *(*(a1 + 88) + 8 * (v21 / 0x55)) + 48 * (v21 % 0x55);
        v23 = *(*(a1 + 94) + 8 * ((v18 + *(a1 + 97) - 1) / 0x55uLL)) + 48 * ((v18 + *(a1 + 97) - 1) % 0x55uLL);
        v24 = *(a3 + 8);
        v25 = v183[0];
        v26 = *(v23 + 8);
        v27 = *(v23 + 24);
        v28 = *(v22 + 8);
        v29 = *(v22 + 24);
        v30 = *(a1 + 75);
        v31 = 4 * *(a3 + 24);
        v171 = v183[0];
        v173 = a1[2];
        v169 = v26;
        do
        {
          v32 = *v24;
          v33 = v25[v20];
          v34 = v26 + 4 * v27 * v32;
          v35 = *(v34 + 4 * v33);
          v36 = v28 + 4 * v29 * v32;
          v37 = *(v36 + 4 * v33);
          if (v35 >= v37)
          {
            v38 = *(v34 + 4 * v33);
          }

          else
          {
            v38 = *(v36 + 4 * v33);
          }

          if (v35 >= v37)
          {
            v39 = v37 - v35;
          }

          else
          {
            v39 = v35 - v37;
          }

          if (v39 >= -15.942)
          {
            v40 = a2;
            v41 = v29;
            v42 = expf(v39);
            *v17.i32 = log1pf(v42);
            v29 = v41;
            a2 = v40;
            v26 = v169;
            v25 = v171;
            v19 = v173;
            v38 = v38 + *v17.i32;
          }

          *(v30 + 4 * v20++) = v38;
          v24 = (v24 + v31);
        }

        while (v19 != v20);
      }
    }
  }

  if (a1[8])
  {
    v17.i32[0] = a1[7];
    kaldi::CuMatrixBase<float>::Set((a1 + 52), v17);
    v43 = v170;
  }

  else
  {
    v44 = a1[2];
    v43 = v170;
    if (v44 >= 1)
    {
      v45 = 0;
      v46 = *(a1 + 27);
      v47 = *(a5 + 8);
      v48 = *(v170 + 8) + 4 * *(v170 + 24) * v166;
      v49 = 4 * a1[58];
      v50 = 4 * *(a5 + 24);
      do
      {
        for (i = 0; i != v44; ++i)
        {
          *(v46 + 4 * i) = *(v48 + 4 * *(v47 + 4 * i));
        }

        ++v45;
        v46 += v49;
        v47 += v50;
      }

      while (v45 != v44);
    }
  }

  v17.i32[0] = a1[7];
  kaldi::CuMatrixBase<float>::Set((a1 + 40), v17);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a1 + 124, (a1 + 52), 111);
  *(a1 + 85) = *(a1 + 84);
  v53 = *(a1 + 100);
  v54 = *(a1 + 101);
  if (v54 == v53)
  {
    v57 = a1 + 208;
    v54 = *(a1 + 100);
  }

  else
  {
    v55 = *(a1 + 103);
    v56 = &v53[v55 / 0x55];
    v57 = a1 + 208;
    v58 = v53[(*(a1 + 104) + v55) / 0x55] + 48 * ((*(a1 + 104) + v55) % 0x55);
    if (*v56 + 48 * (v55 % 0x55) != v58)
    {
      v59 = *v56 + 48 * (v55 % 0x55);
      do
      {
        v60 = *v59;
        v59 += 48;
        (*(v60 + 16))();
        if (v59 - *v56 == 4080)
        {
          v61 = v56[1];
          ++v56;
          v59 = v61;
        }
      }

      while (v59 != v58);
      v54 = *(a1 + 101);
      v53 = *(a1 + 100);
    }
  }

  v62 = a1 + 174;
  *v57 = 0;
  v63 = v54 - v53;
  if (v63 >= 3)
  {
    do
    {
      operator delete(*v53);
      v53 = (*(a1 + 100) + 8);
      *(a1 + 100) = v53;
      v63 = (*(a1 + 101) - v53) >> 3;
    }

    while (v63 > 2);
  }

  if (v63 == 1)
  {
    v64 = 42;
  }

  else
  {
    if (v63 != 2)
    {
      goto LABEL_40;
    }

    v64 = 85;
  }

  *(a1 + 103) = v64;
LABEL_40:
  v65 = *(a1 + 106);
  v66 = *(a1 + 107);
  if (v66 == v65)
  {
    v69 = a1 + 220;
    v66 = *(a1 + 106);
  }

  else
  {
    v67 = *(a1 + 109);
    v68 = &v65[v67 / 0x55];
    v69 = a1 + 220;
    v70 = v65[(*(a1 + 110) + v67) / 0x55] + 48 * ((*(a1 + 110) + v67) % 0x55);
    if (*v68 + 48 * (v67 % 0x55) != v70)
    {
      v71 = *v68 + 48 * (v67 % 0x55);
      do
      {
        v72 = *v71;
        v71 += 48;
        (*(v72 + 16))();
        if (v71 - *v68 == 4080)
        {
          v73 = v68[1];
          ++v68;
          v71 = v73;
        }
      }

      while (v71 != v70);
      v66 = *(a1 + 107);
      v65 = *(a1 + 106);
    }
  }

  *v69 = 0;
  v74 = v66 - v65;
  if (v74 >= 3)
  {
    do
    {
      operator delete(*v65);
      v65 = (*(a1 + 106) + 8);
      *(a1 + 106) = v65;
      v74 = (*(a1 + 107) - v65) >> 3;
    }

    while (v74 > 2);
  }

  if (v74 == 1)
  {
    v75 = 42;
    goto LABEL_54;
  }

  if (v74 == 2)
  {
    v75 = 85;
LABEL_54:
    *(a1 + 109) = v75;
  }

  v174 = (a1 + 168);
  v76 = a1[9];
  v77 = 0.0;
  while (1)
  {
    v78 = v76 + 1;
    if (v76 + 1 >= a1[10])
    {
      break;
    }

    v79 = v76 - a1[9];
    if (a1[8])
    {
      if (*(a1 + 98) <= v79)
      {
        v52.i32[0] = a1[7];
        kaldi::CuMatrixBase<float>::Set((a1 + 112), v52);
      }

      else
      {
        v172 = v76 - a1[9];
        if (a1[2] >= 1)
        {
          v80 = 0;
          v81 = *(*(a1 + 94) + 8 * ((*(a1 + 97) + v79) / 0x55)) + 48 * ((*(a1 + 97) + v79) % 0x55);
          v82 = *(*(a1 + 88) + 8 * ((*(a1 + 91) + v79) / 0x55)) + 48 * ((*(a1 + 91) + v79) % 0x55);
          do
          {
            v52.i32[0] = *(*(a3 + 8) + 4 * *(a3 + 24) * v80);
            v83 = *v52.i32;
            v84 = *(v183[0] + v80);
            v85 = *(*(a2 + 8) + 4 * *(a2 + 24) * v80);
            v86 = *(a1 + 33) + 4 * a1[70] * v80;
            v87 = a1[68];
            v88 = *(a1 + 36);
            p_p = &unk_1F2CFCA48;
            v180 = v86;
            v182 = v88;
            v181 = v87;
            v89 = *(v82 + 32);
            __p = (*(v82 + 8) + 4 * *(v82 + 24) * *v52.i32 + 4 * v84);
            v178 = v89;
            kaldi::CuVectorBase<float>::Set(&p_p, &__p, v52);
            v90 = a1[80];
            v91 = *(a1 + 42);
            v180 = *(a1 + 39) + 4 * a1[82] * v80;
            p_p = &unk_1F2CFCA48;
            v181 = v90;
            v182 = v91;
            v92 = *(v81 + 32);
            __p = (*(v81 + 8) + 4 * *(v81 + 24) * v83 + 4 * v84);
            v178 = v92;
            kaldi::CuVectorBase<float>::Set(&p_p, &__p, v93);
            v94 = a1[2];
            if (v94 >= 1)
            {
              v95 = 0;
              v96 = *(a5 + 8) + 4 * *(a5 + 24) * v80;
              do
              {
                if (*(v96 + 4 * v95) == v85)
                {
                  *(*(a1 + 39) + 4 * v80 * a1[82] + 4 * v95) = a1[7];
                }

                ++v95;
              }

              while (v94 != v95);
            }

            ++v80;
          }

          while (v80 < v94);
        }

        kaldi::CuMatrixBase<float>::CopyFromMat<float>(a1 + 112, (a1 + 64), 111);
        v62 = a1 + 174;
        v43 = v170;
        LODWORD(v79) = v172;
        kaldi::CuMatrixBase<float>::LogSumMat((a1 + 112), (a1 + 76));
      }
    }

    else
    {
      v77 = v77 + *(*(v43 + 8) + 4 * *(v43 + 24) * v76 + 4 * *a1);
      *v52.i32 = v77;
      kaldi::CuMatrixBase<float>::Set((a1 + 112), v52);
    }

    v97 = a1[2];
    if (v97 >= 1)
    {
      v98 = 0;
      v99 = *(a1 + 51);
      v100 = *(a5 + 8);
      v101 = *(v43 + 8) + 4 * *(v43 + 24) * v78;
      v102 = 4 * a1[106];
      v103 = 4 * *(a5 + 24);
      do
      {
        for (j = 0; j != v97; ++j)
        {
          *(v99 + 4 * j) = *(v101 + 4 * *(v100 + 4 * j));
        }

        ++v98;
        v99 += v102;
        v100 += v103;
      }

      while (v98 != v97);
    }

    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a1 + 28, (a1 + 52), 111);
    kaldi::CuMatrixBase<float>::LogSumMat((a1 + 28), (a1 + 112));
    kaldi::CuMatrixBase<float>::AddMat((a1 + 28), (a1 + 100), 111, 1.0, 1.0);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a1 + 16, (a1 + 40), 111);
    kaldi::CuMatrixBase<float>::LogSumMat((a1 + 16), (a1 + 52));
    kaldi::CuMatrixBase<float>::Add((a1 + 16), *(*(v43 + 8) + 4 * *(v43 + 24) * v78 + 4 * *a1));
    kaldi::CuMatrixBase<float>::AddMat((a1 + 112), (a1 + 100), 111, 1.0, 1.0);
    kaldi::CuMatrixBase<float>::LogSumMat((a1 + 124), (a1 + 112));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a1 + 88, (a1 + 16), 111);
    kaldi::CuMatrixBase<float>::LogSumMat((a1 + 88), (a1 + 28));
    kaldi::MatrixBase<float>::Max((a1 + 90));
    if (v9 < v105)
    {
      v9 = v105;
    }

    if ((v105 - v9) < *(a1 + 6) && v79 - a1[196] >= a1[5])
    {
      break;
    }

    v106 = *(a1 + 85);
    v107 = *(a1 + 86);
    if (v106 >= v107)
    {
      v109 = *v174;
      v110 = v106 - *v174;
      v111 = (v110 >> 2) + 1;
      if (v111 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v112 = v107 - v109;
      if (v112 >> 1 > v111)
      {
        v111 = v112 >> 1;
      }

      v113 = v112 >= 0x7FFFFFFFFFFFFFFCLL;
      v114 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v113)
      {
        v114 = v111;
      }

      if (v114)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v174, v114);
      }

      v115 = (4 * (v110 >> 2));
      *v115 = v105;
      v108 = v115 + 1;
      memcpy(0, v109, v110);
      v116 = *(a1 + 84);
      *(a1 + 84) = 0;
      *(a1 + 85) = v108;
      *(a1 + 86) = 0;
      if (v116)
      {
        operator delete(v116);
      }
    }

    else
    {
      *v106 = v105;
      v108 = v106 + 1;
    }

    *(a1 + 85) = v108;
    std::deque<kaldi::CuMatrix<float>>::push_back(v62 + 12, (a1 + 16));
    std::deque<kaldi::CuMatrix<float>>::push_back(v62 + 18, (a1 + 28));
    kaldi::CuMatrix<float>::Swap((a1 + 40), (a1 + 16));
    kaldi::CuMatrix<float>::Swap((a1 + 52), (a1 + 28));
    v76 = v78;
  }

  v117 = a1[2];
  LOBYTE(p_p) = 0;
  std::vector<BOOL>::vector(&__p, v117);
  v118 = a1[2];
  if (v118 >= 1)
  {
    v119 = 0;
    v120 = 0;
    v121 = __p;
    v122 = *(a5 + 8);
    v123 = *(a5 + 24);
    v124 = a1[1];
    do
    {
      v125 = 0;
      while (*(v122 + 4 * v119 + 4 * v125) != v124)
      {
        if (v118 == ++v125)
        {
          goto LABEL_98;
        }
      }

      *(*(a1 + 63) + 4 * a1[130] * v120 + 4 * v125) = *(*(a1 + 75) + 4 * v120);
      *&v121[(v120 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v120;
LABEL_98:
      ++v120;
      v119 += v123;
    }

    while (v120 != v118);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a1 + 136, (a1 + 124), 111);
  if (a1[2] >= 1)
  {
    v126 = 0;
    do
    {
      v127 = *(*(a3 + 8) + 4 * *(a3 + 24) * v126);
      v128 = *(v183[0] + v126);
      v129 = *(a1 + 69) + 4 * a1[142] * v126;
      v130 = a1[140];
      v131 = *(a1 + 72);
      p_p = &unk_1F2CFCA48;
      v180 = v129;
      v182 = v131;
      v181 = v130;
      kaldi::CuVectorBase<float>::Add(&p_p, -*(*(a1 + 79) + 4 * a1[162] * v127 + 4 * v128));
      ++v126;
    }

    while (v126 < a1[2]);
  }

  kaldi::CuMatrixBase<float>::Scale(a4, *(a1 + 4));
  kaldi::CuMatrixBase<float>::AddMat(a4, (a1 + 136), 111, *(a1 + 3), 1.0);
  v132 = a1[2];
  if (v132 >= 1)
  {
    v133 = 0;
    v134 = __p;
    v135 = *(a3 + 8);
    v136 = *(a3 + 24);
    v137 = v183[0];
    do
    {
      if (((*&v134[(v133 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v133) & 1) == 0)
      {
        v138 = (*(a4 + 8) + 4 * v133 * *(a4 + 24));
        v139 = v138;
        if (v132 != 1)
        {
          v140 = v138 + 1;
          v141 = *v138;
          v142 = 4 * v132 - 4;
          v139 = (*(a4 + 8) + 4 * v133 * *(a4 + 24));
          v143 = v138 + 1;
          do
          {
            v144 = *v143++;
            v145 = v144;
            if (v144 < v141)
            {
              v141 = v145;
              v139 = v140;
            }

            v140 = v143;
            v142 -= 4;
          }

          while (v142);
        }

        v146 = a1[1];
        v147 = (*(a1 + 4) * *(*(a6 + 8) + 4 * v133 * *(a6 + 24) + 4 * v146)) + (*(a1 + 3) * (*(*(a1 + 75) + 4 * v133) - *(*(a1 + 79) + 4 * a1[162] * *(v135 + 4 * v133 * v136) + 4 * v137[v133])));
        if (*v139 < v147)
        {
          v148 = (v139 - v138) >> 2;
          *(*(a5 + 8) + 4 * v133 * *(a5 + 24) + 4 * v148) = v146;
          v138[v148] = v147;
        }
      }

      ++v133;
    }

    while (v133 != v132);
  }

  *(a1 + 4) = vadd_s32(*(a1 + 8), 0x100000001);
  v149 = *(a1 + 84);
  v150 = *(a1 + 85);
  while (v149 != v150 && (*v149 - v9) < *(a1 + 6))
  {
    std::deque<kaldi::CuMatrix<float>>::pop_front(v62 + 6);
    std::deque<kaldi::CuMatrix<float>>::pop_front(v62 + 9);
    ++a1[9];
    ++v149;
  }

  kaldi::CuMatrix<float>::Swap((a1 + 156), (a1 + 124));
  v152 = *(v62 + 5);
  v151 = *(v62 + 6);
  *(v62 + 6) = *v62;
  v153 = *(v62 + 7);
  v154 = *(v62 + 8);
  *(a1 + 202) = *(a1 + 178);
  *v62 = v151;
  *(v62 + 1) = v153;
  v155 = *(a1 + 91);
  v156 = *(a1 + 92);
  v157 = *(v62 + 3);
  v158 = *(v62 + 9);
  v159 = *(v62 + 10);
  *(v62 + 2) = v154;
  *(v62 + 3) = v158;
  *(a1 + 103) = v155;
  *(a1 + 104) = v156;
  *(v62 + 9) = v157;
  v160 = *(a1 + 96);
  *(a1 + 107) = *(a1 + 95);
  *(a1 + 108) = v160;
  v161 = *(v62 + 11);
  *(v62 + 4) = v159;
  *(v62 + 5) = v161;
  *(v62 + 11) = v152;
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(a1 + 111);
  LODWORD(v162) = a1[2];
  if (v162 >= 1)
  {
    v163 = 0;
    do
    {
      if (v162 >= 1)
      {
        v164 = 0;
        do
        {
          v165 = *(a5 + 8) + 4 * v163 * *(a5 + 24);
          v176[0] = v163;
          v176[1] = *(v165 + 4 * v164);
          p_p = v176;
          *(std::__hash_table<std::__hash_value_type<std::pair<int,int>,int>,std::__unordered_map_hasher<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,kaldi::CTCLabelScorer::PairHash,std::equal_to<std::pair<int,int>>,true>,std::__unordered_map_equal<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,std::equal_to<std::pair<int,int>>,kaldi::CTCLabelScorer::PairHash,true>,std::allocator<std::__hash_value_type<std::pair<int,int>,int>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>(a1 + 111, v176) + 6) = v164++;
          v162 = a1[2];
        }

        while (v164 < v162);
      }

      ++v163;
    }

    while (v163 < v162);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v183[0])
  {
    v183[1] = v183[0];
    operator delete(v183[0]);
  }
}

void sub_1B562DCA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<kaldi::CuMatrix<float>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 85 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<kaldi::CuMatrix<float>>::__add_back_capacity(a1);
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
    v8 = *(v4 + 8 * (v7 / 0x55)) + 48 * (v7 % 0x55);
  }

  result = kaldi::CuMatrix<float>::CuMatrix(v8, a2, 111);
  ++a1[5];
  return result;
}

void kaldi::CTCLabelScorer::SetProbs(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    v7 = *(a1 + 48);
  }

  *(a1 + 40) = a3;
  if (a4 < 0)
  {
    v11 = *(v7 + 20);
  }

  else
  {
    v10 = a4 + a3;
    v11 = *(v7 + 20);
    if (a4 + a3 < v11)
    {
      goto LABEL_10;
    }
  }

  v10 = v11;
LABEL_10:
  *(a1 + 44) = v10;
}

void kaldi::CTCLabelScorer::ResetStates(kaldi::CTCLabelScorer *this, int a2)
{
  v4 = *(this + 88);
  v5 = *(this + 89);
  if (v5 == v4)
  {
    v8 = (this + 736);
    v5 = *(this + 88);
  }

  else
  {
    v6 = *(this + 91);
    v7 = &v4[v6 / 0x55];
    v8 = (this + 736);
    v9 = v4[(*(this + 92) + v6) / 0x55] + 48 * ((*(this + 92) + v6) % 0x55);
    if (*v7 + 48 * (v6 % 0x55) != v9)
    {
      v10 = *v7 + 48 * (v6 % 0x55);
      do
      {
        v11 = *v10;
        v10 += 48;
        (*(v11 + 16))();
        if (v10 - *v7 == 4080)
        {
          v12 = v7[1];
          ++v7;
          v10 = v12;
        }
      }

      while (v10 != v9);
      v5 = *(this + 89);
      v4 = *(this + 88);
    }
  }

  *v8 = 0;
  v13 = v5 - v4;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v4);
      v4 = (*(this + 88) + 8);
      *(this + 88) = v4;
      v13 = (*(this + 89) - v4) >> 3;
    }

    while (v13 > 2);
  }

  if (v13 == 1)
  {
    v14 = 42;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_16;
    }

    v14 = 85;
  }

  *(this + 91) = v14;
LABEL_16:
  v15 = *(this + 94);
  v16 = *(this + 95);
  if (v16 == v15)
  {
    v19 = (this + 784);
    v16 = *(this + 94);
  }

  else
  {
    v17 = *(this + 97);
    v18 = &v15[v17 / 0x55];
    v19 = (this + 784);
    v20 = v15[(*(this + 98) + v17) / 0x55] + 48 * ((*(this + 98) + v17) % 0x55);
    if (*v18 + 48 * (v17 % 0x55) != v20)
    {
      v21 = *v18 + 48 * (v17 % 0x55);
      do
      {
        v22 = *v21;
        v21 += 48;
        (*(v22 + 16))();
        if (v21 - *v18 == 4080)
        {
          v23 = v18[1];
          ++v18;
          v21 = v23;
        }
      }

      while (v21 != v20);
      v16 = *(this + 95);
      v15 = *(this + 94);
    }
  }

  *v19 = 0;
  v24 = v16 - v15;
  if (v24 >= 3)
  {
    do
    {
      operator delete(*v15);
      v15 = (*(this + 94) + 8);
      *(this + 94) = v15;
      v24 = (*(this + 95) - v15) >> 3;
    }

    while (v24 > 2);
  }

  if (v24 == 1)
  {
    v25 = 42;
  }

  else
  {
    if (v24 != 2)
    {
      goto LABEL_31;
    }

    v25 = 85;
  }

  *(this + 97) = v25;
LABEL_31:
  v26 = *(this + 100);
  v27 = *(this + 101);
  if (v27 == v26)
  {
    v30 = (this + 832);
    v27 = *(this + 100);
  }

  else
  {
    v28 = *(this + 103);
    v29 = &v26[v28 / 0x55];
    v30 = (this + 832);
    v31 = v26[(*(this + 104) + v28) / 0x55] + 48 * ((*(this + 104) + v28) % 0x55);
    if (*v29 + 48 * (v28 % 0x55) != v31)
    {
      v32 = *v29 + 48 * (v28 % 0x55);
      do
      {
        v33 = *v32;
        v32 += 48;
        (*(v33 + 16))();
        if (v32 - *v29 == 4080)
        {
          v34 = v29[1];
          ++v29;
          v32 = v34;
        }
      }

      while (v32 != v31);
      v27 = *(this + 101);
      v26 = *(this + 100);
    }
  }

  *v30 = 0;
  v35 = v27 - v26;
  if (v35 >= 3)
  {
    do
    {
      operator delete(*v26);
      v26 = (*(this + 100) + 8);
      *(this + 100) = v26;
      v35 = (*(this + 101) - v26) >> 3;
    }

    while (v35 > 2);
  }

  if (v35 == 1)
  {
    v36 = 42;
  }

  else
  {
    if (v35 != 2)
    {
      goto LABEL_46;
    }

    v36 = 85;
  }

  *(this + 103) = v36;
LABEL_46:
  v37 = *(this + 106);
  v38 = *(this + 107);
  if (v38 == v37)
  {
    v41 = (this + 880);
    v38 = *(this + 106);
  }

  else
  {
    v39 = *(this + 109);
    v40 = &v37[v39 / 0x55];
    v41 = (this + 880);
    v42 = v37[(*(this + 110) + v39) / 0x55] + 48 * ((*(this + 110) + v39) % 0x55);
    if (*v40 + 48 * (v39 % 0x55) != v42)
    {
      v43 = *v40 + 48 * (v39 % 0x55);
      do
      {
        v44 = *v43;
        v43 += 48;
        (*(v44 + 16))();
        if (v43 - *v40 == 4080)
        {
          v45 = v40[1];
          ++v40;
          v43 = v45;
        }
      }

      while (v43 != v42);
      v38 = *(this + 107);
      v37 = *(this + 106);
    }
  }

  *v41 = 0;
  v46 = v38 - v37;
  if (v46 >= 3)
  {
    do
    {
      operator delete(*v37);
      v37 = (*(this + 106) + 8);
      *(this + 106) = v37;
      v46 = (*(this + 107) - v37) >> 3;
    }

    while (v46 > 2);
  }

  if (v46 == 1)
  {
    v47 = 42;
  }

  else
  {
    if (v46 != 2)
    {
      goto LABEL_61;
    }

    v47 = 85;
  }

  *(this + 109) = v47;
LABEL_61:
  kaldi::CuMatrixBase<float>::SetZero(this + 624);
  v48 = *(this + 10);
  v49 = *(this + 11);
  *(this + 8) = 0;
  *(this + 9) = v48;
  v50 = v48 + a2;
  if (v49 < v50)
  {
    v50 = v49;
  }

  *(this + 10) = v50;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::pair<int,int>,int>,std::__unordered_map_hasher<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,kaldi::CTCLabelScorer::PairHash,std::equal_to<std::pair<int,int>>,true>,std::__unordered_map_equal<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,std::equal_to<std::pair<int,int>>,kaldi::CTCLabelScorer::PairHash,true>,std::allocator<std::__hash_value_type<std::pair<int,int>,int>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v2 ^ (2 * v3);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v2 ^ (2 * v3);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

void *std::deque<kaldi::CuMatrix<float>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(a1, &v10);
}

void sub_1B562E6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::SplitStringToFloats<float>(uint64_t a1, const char *a2, int a3, std::vector<unsigned int> *a4)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (*v5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    kaldi::SplitStringToVector(a1, a2, a3, &v11);
    std::vector<int>::resize(a4, 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3));
    v6 = v11;
    if (v12 == v11)
    {
LABEL_9:
      v9 = 1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LODWORD(v14) = 0;
        if ((kaldi::ConvertStringToReal(v6 + v7, &v14) & 1) == 0)
        {
          break;
        }

        a4->__begin_[v8++] = v14;
        v6 = v11;
        v7 += 24;
        if (v8 >= 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3))
        {
          goto LABEL_9;
        }
      }

      v9 = 0;
    }

    v14 = &v11;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  else
  {
    a4->__end_ = a4->__begin_;
    return 1;
  }

  return v9;
}

void sub_1B562E810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::ConvertStringToReal(uint64_t a1, float *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v11 = 0;
  *__error() = 0;
  v4 = strtod(v3, &v11);
  v5 = v11;
  if (v11 != v3)
  {
    v6 = MEMORY[0x1E69E9830];
    while (1)
    {
      v7 = *v5;
      v8 = (v7 & 0x80000000) != 0 ? __maskrune(v7, 0x4000uLL) : *(v6 + 4 * v7 + 60) & 0x4000;
      v5 = v11;
      if (!v8)
      {
        break;
      }

      v5 = ++v11;
    }
  }

  if (v5 == v3 || *v5 || *__error())
  {
    return 0;
  }

  v10 = v4;
  *a2 = v10;
  return 1;
}

uint64_t kaldi::ConvertStringToReal(uint64_t a1, double *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v10 = 0;
  *__error() = 0;
  v4 = strtod(v3, &v10);
  v5 = v10;
  if (v10 != v3)
  {
    v6 = MEMORY[0x1E69E9830];
    while (1)
    {
      v7 = *v5;
      v8 = (v7 & 0x80000000) != 0 ? __maskrune(v7, 0x4000uLL) : *(v6 + 4 * v7 + 60) & 0x4000;
      v5 = v10;
      if (!v8)
      {
        break;
      }

      v5 = ++v10;
    }
  }

  if (v5 == v3 || *v5 || *__error())
  {
    return 0;
  }

  *a2 = v4;
  return 1;
}

void kaldi::SplitStringToStringPair(const std::string *a1, const char *a2, uint64_t a3)
{
  v43 = 0;
  v44 = 0;
  v45 = 0;
  kaldi::SplitStringToVector(a1, a2, 1, &v43);
  v5 = *a3;
  for (i = *(a3 + 8); i != v5; std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](a3, i))
  {
    i -= 48;
  }

  *(a3 + 8) = v5;
  v6 = v43;
  v7 = v44;
  if (v43 == v44)
  {
    goto LABEL_45;
  }

  do
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    kaldi::SplitStringToVector(v6, ",", 1, &v40);
    v8 = v40;
    if (v41 == v40)
    {
LABEL_47:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "tensor pair specified size is not 2", 35);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v37);
    }

    v9 = 0;
    v10 = 0;
    do
    {
      v11 = (v8 + v9);
      size = *(v8 + v9 + 23);
      if ((size & 0x8000000000000000) == 0)
      {
        if (!*(v8 + v9 + 23))
        {
          goto LABEL_46;
        }

        if (v11->__r_.__value_.__s.__data_[0] != 91)
        {
          goto LABEL_19;
        }

        goto LABEL_14;
      }

      if (!v11->__r_.__value_.__l.__size_)
      {
LABEL_46:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v37);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "tensor specified being empty is not allowed", 43);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v37);
      }

      if (*v11->__r_.__value_.__l.__data_ == 91)
      {
        size = v11->__r_.__value_.__l.__size_;
LABEL_14:
        std::string::basic_string(&v37, (v8 + v9), 1uLL, size - 1, &v46);
        v13 = v40 + v9;
        if (*(v40 + v9 + 23) < 0)
        {
          operator delete(*v13);
        }

        v14 = *&v37.__r_.__value_.__l.__data_;
        *(v13 + 2) = *(&v37.__r_.__value_.__l + 2);
        *v13 = v14;
        v8 = v40;
        LOBYTE(size) = *(v40 + v9 + 23);
      }

      if ((size & 0x80) == 0)
      {
        v11 = (v8 + 24 * v10);
LABEL_19:
        v15 = 0;
        v16 = size;
        v17 = v11;
        goto LABEL_21;
      }

      v11 = (v8 + v9);
      v17 = *(v8 + v9);
      v16 = *(v8 + v9 + 8);
      v15 = 1;
LABEL_21:
      if (v17->__r_.__value_.__s.__data_[v16 - 1] == 93)
      {
        if (v15)
        {
          size = v11->__r_.__value_.__l.__size_;
        }

        else
        {
          size = size;
        }

        std::string::basic_string(&v37, v11, 0, size - 1, &v46);
        v18 = v40 + v9;
        if (*(v40 + v9 + 23) < 0)
        {
          operator delete(*v18);
        }

        v19 = *&v37.__r_.__value_.__l.__data_;
        *(v18 + 2) = *(&v37.__r_.__value_.__l + 2);
        *v18 = v19;
        v8 = v40;
      }

      ++v10;
      v9 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((v41 - v8) >> 3));
    if (v41 - v8 != 48)
    {
      goto LABEL_47;
    }

    std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&v37, v8, (v8 + 24));
    v20 = *(a3 + 8);
    v21 = *(a3 + 16);
    if (v20 >= v21)
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a3) >> 4);
      v25 = v24 + 1;
      if (v24 + 1 > 0x555555555555555)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a3) >> 4);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x2AAAAAAAAAAAAAALL)
      {
        v27 = 0x555555555555555;
      }

      else
      {
        v27 = v25;
      }

      v46.__end_cap_.__value_ = a3;
      if (v27)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a3, v27);
      }

      v28 = 48 * v24;
      v29 = *&v37.__r_.__value_.__l.__data_;
      *(v28 + 16) = *(&v37.__r_.__value_.__l + 2);
      *v28 = v29;
      memset(&v37, 0, sizeof(v37));
      v30 = __p;
      *(v28 + 40) = v39;
      *(v28 + 24) = v30;
      v39 = 0;
      __p = 0uLL;
      v31 = 48 * v24 + 48;
      v32 = *(a3 + 8) - *a3;
      v33 = 48 * v24 - v32;
      memcpy((v28 - v32), *a3, v32);
      v34 = *a3;
      *a3 = v33;
      *(a3 + 8) = v31;
      v35 = *(a3 + 16);
      *(a3 + 16) = 0;
      v46.__end_ = v34;
      v46.__end_cap_.__value_ = v35;
      v46.__first_ = v34;
      v46.__begin_ = v34;
      std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v46);
      v36 = SHIBYTE(v39);
      *(a3 + 8) = v31;
      if (v36 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v22 = *&v37.__r_.__value_.__l.__data_;
      *(v20 + 16) = *(&v37.__r_.__value_.__l + 2);
      *v20 = v22;
      memset(&v37, 0, sizeof(v37));
      v23 = v39;
      *(v20 + 24) = __p;
      *(v20 + 40) = v23;
      v39 = 0;
      __p = 0uLL;
      *(a3 + 8) = v20 + 48;
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v37.__r_.__value_.__r.__words[0] = &v40;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
    ++v6;
  }

  while (v6 != v7);
LABEL_45:
  v37.__r_.__value_.__r.__words[0] = &v43;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
}

void sub_1B562EE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 176);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = (v9 - 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void kaldi::SplitStringToVector(const std::string *a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  kaldi::SplitStringToVector(a1, a2, 1, a3);
}

void sub_1B562EE74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void kaldi::SplitTensorShapesToIntVector(const std::string *a1, const char *a2, uint64_t *a3)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  kaldi::SplitStringToVector(a1, a2, 1, &v24);
  std::vector<std::vector<int>>::clear[abi:ne200100](a3);
  v4 = v24;
  v5 = v25;
  if (v24 != v25)
  {
    while (1)
    {
      memset(&v23, 0, sizeof(v23));
      v20 = 0;
      v21 = 0;
      v22 = 0;
      kaldi::SplitStringToVector(v4, ",", 1, &v20);
      std::vector<int>::resize(&v23, 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3));
      v6 = v20;
      if (v21 != v20)
      {
        break;
      }

LABEL_24:
      std::vector<std::vector<int>>::push_back[abi:ne200100](a3, &v23);
      v18[0].__r_.__value_.__r.__words[0] = &v20;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v18);
      if (v23.__begin_)
      {
        v23.__end_ = v23.__begin_;
        operator delete(v23.__begin_);
      }

      if (++v4 == v5)
      {
        goto LABEL_27;
      }
    }

    v7 = 0;
    v8 = 0;
    while (1)
    {
      v19 = 0.0;
      v9 = (v6 + v7);
      size = *(v6 + v7 + 23);
      if ((*(v6 + v7 + 23) & 0x80000000) == 0)
      {
        break;
      }

      if (*v9->__r_.__value_.__l.__data_ == 91)
      {
        size = *(v6 + v7 + 8);
LABEL_9:
        std::string::basic_string(v18, v9, 1uLL, size - 1, v27);
        v12 = v20 + v7;
        if (*(v20 + v7 + 23) < 0)
        {
          operator delete(*v12);
        }

        v13 = *&v18[0].__r_.__value_.__l.__data_;
        *(v12 + 16) = *(&v18[0].__r_.__value_.__l + 2);
        *v12 = v13;
        v6 = v20;
        size = *(v20 + v7 + 23);
      }

      if ((size & 0x80) != 0)
      {
        v9 = (v6 + v7);
        v14 = *(v6 + v7);
        v15 = *(v6 + v7 + 8);
        v11 = 1;
        goto LABEL_16;
      }

      v11 = 0;
      v9 = (v6 + 24 * v8);
LABEL_14:
      v14 = v9;
      v15 = size;
LABEL_16:
      if (v14->__r_.__value_.__s.__data_[v15 - 1] == 93)
      {
        if (v11)
        {
          size = v9->__r_.__value_.__l.__size_;
        }

        std::string::basic_string(v18, v9, 0, size - 1, v27);
        v16 = v20 + v7;
        if (*(v20 + v7 + 23) < 0)
        {
          operator delete(*v16);
        }

        v17 = *&v18[0].__r_.__value_.__l.__data_;
        *(v16 + 16) = *(&v18[0].__r_.__value_.__l + 2);
        *v16 = v17;
        v6 = v20;
      }

      if ((kaldi::ConvertStringToReal(v6 + v7, &v19) & 1) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "invalid character in shapes definition of input", 47);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
      }

      v23.__begin_[v8++] = v19;
      v6 = v20;
      v7 += 24;
      if (v8 >= 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3))
      {
        goto LABEL_24;
      }
    }

    if (v9->__r_.__value_.__s.__data_[0] != 91)
    {
      v11 = 0;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

LABEL_27:
  v18[0].__r_.__value_.__r.__words[0] = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v18);
}

void sub_1B562F13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  v11 = *(v9 - 144);
  if (v11)
  {
    *(v9 - 136) = v11;
    operator delete(v11);
  }

  a9 = (v9 - 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t kaldi::IsToken(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = *(a1 + 23);
  }

  else
  {
    v1 = *(a1 + 8);
  }

  if (v1)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E9830];
    while (1)
    {
      v5 = *(a1 + 23) >= 0 ? a1 : *a1;
      v6 = *(v5 + v3);
      if ((v6 & 0x80000000) == 0)
      {
        break;
      }

      if (__maskrune(*(v5 + v3), 0x40000uLL))
      {
        v7 = __maskrune(v6, 0x4000uLL);
        goto LABEL_14;
      }

      if (v6 == -1)
      {
        return 0;
      }

LABEL_19:
      if (v1 == ++v3)
      {
        return 1;
      }
    }

    if ((*(v4 + 4 * v6 + 60) & 0x40000) == 0)
    {
      return 0;
    }

    v7 = *(v4 + 4 * v6 + 60) & 0x4000;
LABEL_14:
    if (v6 >= -1 && v7 != 0)
    {
      return 0;
    }

    goto LABEL_19;
  }

  return 0;
}

double kaldi::SplitStringOnFirstSpace(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  if (!v7)
  {
    goto LABEL_20;
  }

  v9 = 0;
  v10 = (v6 + v7);
  while (memchr(" \t\n\r\f\v", *(v6 + v9), 6uLL))
  {
    if (v7 == ++v9)
    {
      goto LABEL_20;
    }
  }

  if (v9 == -1)
  {
LABEL_20:
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

LABEL_39:
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

    return result;
  }

  if (v7 <= v9)
  {
LABEL_29:
    std::string::basic_string[abi:ne200100](&__dst, a1, v9);
LABEL_36:
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&__dst.__r_.__value_.__l.__data_;
    *a2 = __dst;
    goto LABEL_39;
  }

  v12 = (v6 + v9);
  v13 = v9;
LABEL_15:
  v14 = 0;
  while (*v12 != asc_1B5C36814[v14])
  {
    if (++v14 == 6)
    {
      ++v12;
      ++v13;
      if (v12 != v10)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }
  }

  if (v12 == v10)
  {
    goto LABEL_29;
  }

  v15 = &v12[-v6];
  if (&v12[-v6] == -1)
  {
    goto LABEL_29;
  }

  if (v7 <= v15)
  {
    goto LABEL_35;
  }

  while (memchr(" \t\n\r\f\v", *(v6 + v13), 6uLL))
  {
    if (v7 == ++v13)
    {
      goto LABEL_35;
    }
  }

  if (v13 == -1)
  {
LABEL_35:
    std::string::basic_string(&__dst, a1, v9, &v15[-v9], &v18);
    goto LABEL_36;
  }

  v16 = v6 - 1;
  while (v7)
  {
    if (!memchr(" \t\n\r\f\v", *(v16 + v7--), 6uLL))
    {
      goto LABEL_43;
    }
  }

  v7 = -1;
LABEL_43:
  std::string::basic_string(&__dst, a1, v9, &v15[-v9], &v18);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  std::string::basic_string(&__dst, a1, v13, v7 - v13 + 1, &v18);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  result = *&__dst.__r_.__value_.__l.__data_;
  *a3 = __dst;
  return result;
}

void kaldi::GenerateCombinationIndices(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v7 = a1[1] - *a1;
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 << 30) - 0x100000000) >> 32;
  }

  a4[1] = 0;
  a4[2] = 0;
  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  *a4 = 0;
  std::vector<unsigned int>::vector[abi:ne200100](__p, v7 >> 2);
  if (a2 >= 1)
  {
    LODWORD(v10) = 0;
    v11 = 4 * v8;
    v12 = 4 * v9;
    do
    {
      std::vector<std::vector<unsigned int>>::push_back[abi:ne200100](a4, __p);
      v13 = *a1;
      v14 = a1[1] - *a1;
      if (!v14)
      {
        break;
      }

      v15 = 0;
      v16 = v14 >> 2;
      v17 = __p[0];
      v18 = (v14 >> 2) <= 1 ? 1 : v14 >> 2;
      v19 = v11;
      while (1)
      {
        v20 = (*&v17[v19] + 1) % *(v13 + v19);
        *&v17[v19] = v20;
        if (v20)
        {
          break;
        }

        ++v15;
        v19 += v12;
        if (v18 == v15)
        {
          v15 = v18;
          break;
        }
      }

      if (v16 == v15)
      {
        v21 = __p[0];
        while (!*v21++)
        {
          if (!--v18)
          {
            goto LABEL_23;
          }
        }
      }

      v10 = (v10 + 1);
    }

    while (v10 < a2);
  }

LABEL_23:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, uint64_t *a2, unint64_t a3)
{
  v3 = a2;
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a2[1];
    if (v5 < a3)
    {
      goto LABEL_13;
    }

    v3 = *a2;
  }

  else if (v5 < a3)
  {
LABEL_13:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = v5 - a3;
  if (v5 - a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v6;
  if (v5 != a3)
  {
    memmove(__dst, v3 + a3, v6);
  }

  __dst[v6] = 0;
  return __dst;
}

void kaldi::ParseOptions::Escape(unsigned __int8 *a1@<X0>, std::string *a2@<X8>)
{
  v4 = a1[23];
  v5 = *a1;
  if (v4 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = *v6;
  if (!*v6)
  {
LABEL_16:
    if ((v4 & 0x80u) == 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = v5;
    }

    v13 = 39;
    v14 = "'\\''";
    if (strchr(v12, 39))
    {
      {
        v13 = 39;
      }

      else
      {
        v14 = "\\"";
        v13 = 34;
      }
    }

    __s[1] = 0;
    __s[0] = v13;
    std::string::basic_string[abi:ne200100]<0>(a2, __s);
    v15 = *a1;
    if ((a1[23] & 0x80u) == 0)
    {
      v15 = a1;
    }

    v16 = *v15;
    if (*v15)
    {
      v17 = v15 + 1;
      do
      {
        v18 = v14;
        if (v16 != v13)
        {
          __s[0] = v16;
          v18 = __s;
        }

        std::string::append(a2, v18);
        v19 = *v17++;
        v16 = v19;
      }

      while (v19);
    }

    __s[0] = v13;
    std::string::append(a2, __s);
    return;
  }

  v8 = MEMORY[0x1E69E9830];
  do
  {
    if (v7 < 0)
    {
      if (__maskrune(v7, 0x500uLL))
      {
        goto LABEL_10;
      }
    }

    else if ((*(v8 + 4 * v7 + 60) & 0x500) != 0)
    {
      goto LABEL_10;
    }

    v10 = 91;
    v11 = 1u;
    while (*v6 != v10)
    {
      v10 = asc_1B5C39E73[v11++];
      if (v11 == 14)
      {
        LOBYTE(v4) = a1[23];
        v5 = *a1;
        goto LABEL_16;
      }
    }

LABEL_10:
    v9 = *++v6;
    v7 = v9;
  }

  while (v9);
  if (a1[23] < 0)
  {
    v20 = *a1;
    v21 = *(a1 + 1);

    std::string::__init_copy_ctor_external(a2, v20, v21);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 2);
  }
}