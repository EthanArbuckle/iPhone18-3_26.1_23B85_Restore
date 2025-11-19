void sub_1B525103C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::ConfidenceFeatureExtractor<std::string>::ExtractFeature(uint64_t result, const void **a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v8 = result;
  v9 = *(result + 56);
  v10 = *(result + 64);
  if (v9 != v10)
  {
    v11 = *(a2 + 23);
    if (v11 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = a2[1];
    }

    if (v11 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    while (1)
    {
      v14 = *(v9 + 23);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v9 + 8);
      }

      if (v14 == v12)
      {
        v16 = v15 >= 0 ? v9 : *v9;
        result = memcmp(v16, v13, v12);
        if (!result)
        {
          break;
        }
      }

      v9 += 24;
      if (v9 == v10)
      {
        return result;
      }
    }
  }

  if (v9 != v10)
  {
    v17 = *(v8 + 4);
    if (v17 >= 1)
    {
      v18 = 0;
      v19 = *a4;
      do
      {
        if (*(v19 + 24 * v18 + 8) != *(v19 + 24 * v18))
        {
          v20 = 0;
          do
          {
            result = std::function<float ()(int,int)>::operator()(a3, v18, v20);
            *(*(*a5 + 40 * v18) + 4 * *(*a5 + 40 * v18 + 16) * v20++ + ((0xAAAAAAAB00000000 * ((v9 - *(v8 + 56)) >> 3)) >> 30)) = v21;
            v19 = *a4;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((*(*a4 + 24 * v18 + 8) - *(*a4 + 24 * v18)) >> 3) > v20);
          v17 = *(v8 + 4);
        }

        ++v18;
      }

      while (v18 < v17);
    }
  }

  return result;
}

void kaldi::quasar::ApplySoftMax(float **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = (*a1 + 1);
  v4 = *a1 == v2 || v3 == v2;
  v5 = *a1;
  if (!v4)
  {
    v6 = *v1;
    v5 = *a1;
    v7 = *a1 + 1;
    do
    {
      v8 = *v7++;
      v9 = v8;
      if (v6 < v8)
      {
        v6 = v9;
        v5 = v3;
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  if (v1 != v2)
  {
    v10 = *v5;
    v11 = 0.0;
    v12 = *a1;
    do
    {
      v13 = expf(*v12 - v10);
      v11 = v11 + v13;
      *v12++ = v13;
    }

    while (v12 != v2);
    do
    {
      *v1 = *v1 / v11;
      ++v1;
    }

    while (v1 != v2);
  }
}

uint64_t std::function<float ()(int,int)>::operator()(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

float kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetUnigramTokenFrequency(uint64_t a1, const void **a2)
{
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 8), a2))
  {
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 8), a2);
    if (!v4)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v5 = v4 + 5;
  }

  else
  {
    v5 = (a1 + 48);
  }

  return *v5;
}

void kaldi::quasar::ReadUnigramFrequencies<std::string>(uint64_t a1, void *a2)
{
  v26 = 0;
  kaldi::Input::Input(v25, a1, &v26);
  if (v26 == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "!binary_in && Not expecting a binary file.", 44);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v18);
  }

  memset(&v24, 0, sizeof(v24));
  v2 = *MEMORY[0x1E69E54D8];
  v3 = *(MEMORY[0x1E69E54D8] + 64);
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  while (1)
  {
    v5 = kaldi::Input::Stream(v25);
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v6 = std::locale::use_facet(&v18, MEMORY[0x1E69E5318]);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v18);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, &v24, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v18, &v24, 24);
    memset(&v17, 0, sizeof(v17));
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v18, &v17, 0x20u);
    if (*(&v21[0].__locale_ + *(v18.__locale_ - 3)))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "ss.good()", 9);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v14);
    }

    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v18, __p, 0x20u);
    if (v16 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = atof(v9);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = v17;
    }

    v27 = &v14;
    v11 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v14.__r_.__value_.__l.__data_);
    v12 = v10;
    *(v11 + 10) = v12;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    v18.__locale_ = v2;
    *(&v18.__locale_ + *(v2 - 3)) = v3;
    v19 = v4;
    v20 = MEMORY[0x1E69E5548] + 16;
    if (v22 < 0)
    {
      operator delete(v21[7].__locale_);
    }

    v20 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v21);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C85200](&v23);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  kaldi::Input::~Input(v25);
}

uint64_t kaldi::quasar::LogisticRegressionModel::LogisticRegressionModel(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0u;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  kaldi::quasar::LogisticRegressionModel::Read(a1, a2);
  return a1;
}

void sub_1B52517FC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 80);
  if (v4)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  kaldi::quasar::LogisticRegressionModel::LogisticRegressionModel((v1 + 56), v2, v1);
  _Unwind_Resume(a1);
}

void kaldi::quasar::LogisticRegressionModel::Read(uint64_t a1, uint64_t a2)
{
  v42[0] = 0;
  kaldi::Input::Input(v41, a2, v42);
  if (v42[0] == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "!binary_in && Not expecting binary confidence file.", 53);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v34);
  }

  memset(&v40, 0, sizeof(v40));
  v24 = *MEMORY[0x1E69E54D8];
  v3 = *(MEMORY[0x1E69E54D8] + 64);
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  while (1)
  {
    v5 = kaldi::Input::Stream(v41);
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v6 = std::locale::use_facet(&v34, MEMORY[0x1E69E5318]);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v34);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, &v40, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v34, &v40, 24);
    v32 = 0uLL;
    v33 = 0;
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v34, &v32, 0x20u);
    v30[0] = 0;
    v30[1] = 0;
    v31 = 0;
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v34, v30, 0x20u);
    if (SHIBYTE(v33) < 0)
    {
      if (*(&v32 + 1) != 9)
      {
        goto LABEL_13;
      }

      v9 = v32;
    }

    else
    {
      if (SHIBYTE(v33) != 9)
      {
        goto LABEL_13;
      }

      v9 = &v32;
    }

    v10 = *v9;
    v11 = *(v9 + 8);
    if (v10 != 0x7065637265746E69 || v11 != 116)
    {
LABEL_13:
      std::vector<std::string>::push_back[abi:ne200100](a1 + 32, &v32);
      if (v31 >= 0)
      {
        v13 = v30;
      }

      else
      {
        v13 = v30[0];
      }

      v14 = atof(v13);
      *v25 = v14;
      std::vector<float>::push_back[abi:ne200100](a1, v25);
      goto LABEL_17;
    }

    if (v31 >= 0)
    {
      v18 = v30;
    }

    else
    {
      v18 = v30[0];
    }

    v19 = atof(v18);
    *(a1 + 24) = v19;
LABEL_17:
    if (!*(&v37[0].__locale_ + *(v34.__locale_ - 3)))
    {
      __p[0] = 0;
      __p[1] = 0;
      v29 = 0;
      v26[0] = 0;
      v26[1] = 0;
      v27 = 0;
      std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v34, __p, 0x20u);
      if (v29 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      v16 = atof(v15);
      *v25 = v16;
      std::vector<float>::push_back[abi:ne200100]((a1 + 56), v25);
      if (!*(&v37[0].__locale_ + *(v34.__locale_ - 3)))
      {
        std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v34, v26, 0x20u);
        if (SHIBYTE(v27) < 0)
        {
          v17 = v26[0];
          if (atof(v26[0]) <= 0.0)
          {
LABEL_50:
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "(atof(feat_std_str.c_str()) > 0) && Obtained a zero/negative value for standard deviation", 91);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
          }
        }

        else
        {
          if (atof(v26) <= 0.0)
          {
            goto LABEL_50;
          }

          v17 = v26;
        }

        v20 = atof(v17);
        *v25 = v20;
        std::vector<float>::push_back[abi:ne200100]((a1 + 80), v25);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26[0]);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    v34.__locale_ = v24;
    *(&v34.__locale_ + *(v24 - 3)) = v3;
    v35 = v4;
    v36 = MEMORY[0x1E69E5548] + 16;
    if (v38 < 0)
    {
      operator delete(v37[7].__locale_);
    }

    v36 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v37);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C85200](&v39);
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 3);
  if (v21 != (*(a1 + 8) - *a1) >> 2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "feature_list_.size() == weights_.size()", 39);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v34);
  }

  v22 = *(a1 + 64) - *(a1 + 56);
  if (v22 && v21 != v22 >> 2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "feature_list_.size() == feature_mean_.size()", 44);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v34);
  }

  v23 = *(a1 + 88) - *(a1 + 80);
  if (v23 && v21 != v23 >> 2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "feature_list_.size() == feature_std_.size()", 43);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v34);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  kaldi::Input::~Input(v41);
}

float kaldi::quasar::LogisticRegressionModel::GetOutput(float *a1, uint64_t a2, const void ***a3)
{
  v5 = *a3;
  v6 = a3[1];
  if (v6 != *a3)
  {
    v7 = *(a1 + 4);
    if (v6 - *a3 == *(a1 + 5) - v7)
    {
      while (std::equal_to<std::string>::operator()[abi:ne200100](v19, v5, v7))
      {
        v5 += 3;
        v7 += 3;
        if (v5 == v6)
        {
          goto LABEL_5;
        }
      }
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "feature_list == feature_list_");
LABEL_19:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

LABEL_5:
  v8 = *(a2 + 8);
  v9 = *a1;
  v10 = *(a1 + 1);
  if (v8 != (v10 - *a1) >> 2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "feats.Dim() == weights_.size()");
    goto LABEL_19;
  }

  v11 = a1[6];
  if (v10 != v9)
  {
    v12 = 0;
    v13 = *(a1 + 7);
    v14 = *(a1 + 10);
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      if (*(a1 + 8) == v13)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = *(v13 + 4 * v12);
      }

      if (*(a1 + 11) == v14)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = *(v14 + 4 * v12);
      }

      v11 = v11 + ((*(v9 + 4 * v12) * (*(*a2 + 4 * v12) - v15)) / v16);
      ++v12;
    }

    while (v8 != v12);
  }

  v17 = expf(v11);
  return v17 / (v17 + 1.0);
}

uint64_t kaldi::quasar::LogisticRegressionModel::GetOutput(float *a1, uint64_t a2, std::vector<unsigned int> *a3)
{
  v6 = kaldi::MatrixBase<float>::NumRows(a2);
  std::vector<int>::resize(a3, v6);
  result = kaldi::MatrixBase<float>::NumRows(a2);
  if (result >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *a2 + 4 * *(a2 + 16) * v8;
      v10 = kaldi::MatrixBase<float>::NumCols(a2);
      v14 = 0;
      v15 = 0;
      v12 = v9;
      v13 = v10;
      memset(v11, 0, sizeof(v11));
      *&a3->__begin_[v8] = kaldi::quasar::LogisticRegressionModel::GetOutput(a1, &v12, v11);
      v16 = v11;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
      ++v8;
      result = kaldi::MatrixBase<float>::NumRows(a2);
    }

    while (v8 < result);
  }

  return result;
}

void sub_1B52520E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::LogisticRegressionModel::GetOutput(uint64_t a1, uint64_t a2, const void ***a3, std::vector<unsigned int> *a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *(a1 + 32);
  if (v5 - *a3 != *(a1 + 40) - v6)
  {
LABEL_6:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "feature_list == feature_list_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  while (v4 != v5)
  {
    if (!std::equal_to<std::string>::operator()[abi:ne200100](v11, v4, v6))
    {
      goto LABEL_6;
    }

    v4 += 3;
    v6 += 3;
  }

  return kaldi::quasar::LogisticRegressionModel::GetOutput(a1, a2, a4);
}

uint64_t kaldi::quasar::ConfusionNetwork<std::string>::~ConfusionNetwork(uint64_t a1)
{
  v4 = (a1 + 120);
  std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 96);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](a1 + 40);
  std::__function::__value_func<std::vector<std::string> ()(std::vector<std::string>)>::~__value_func[abi:ne200100](a1 + 8);
  return a1;
}

uint64_t std::unordered_map<std::string,float>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,float> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,float> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__construct_node_hash<std::pair<std::string const,float> const&>();
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

void sub_1B52524EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B52525B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::Matrix<float>>::__emplace_back_slow_path<kaldi::Matrix<float>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Matrix<float>>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  kaldi::Matrix<float>::Matrix(40 * v2, a2);
  v15 = 40 * v2 + 40;
  v7 = a1[1];
  v8 = 40 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Matrix<float>>,kaldi::Matrix<float>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B52526EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#1},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#1}>,float ()(int,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D08068;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#1},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#1}>,float ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#2},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#2}>,float ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#3},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#3}>,float ()(int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D08178;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#3},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#3}>,float ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#4},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#4}>,float ()(int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D081F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#4},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#4}>,float ()(int,int)>::operator()(uint64_t a1, int *a2, int *a3)
{
  UnigramTokenFrequency = kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetUnigramTokenFrequency(*(a1 + 8), (*(**(a1 + 16) + 24 * *a2) + 24 * *a3));

  return logf(UnigramTokenFrequency);
}

uint64_t std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#4},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#4}>,float ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#5},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#5}>,float ()(int,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D08278;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#5},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#5}>,float ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#6},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#6}>,float ()(int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D082F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#6},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#6}>,float ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#7},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#7}>,float ()(int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D08378;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#7},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#7}>,float ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#8},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#8}>,float ()(int,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D083F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#8},std::allocator<kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(std::vector<std::vector<std::string>> const&,std::vector<float> const&,int,std::vector<kaldi::Matrix<float>> *)::{lambda(int,int)#8}>,float ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNSt3__110__function6__funcIZN5kaldi6quasar16ConfusionNetworkINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1ERKNS_6vectorINSC_ISA_NS8_ISA_EEEENS8_ISE_EEEERKNSC_IfNS8_IfEEEENS_8functionIFSE_SE_EEENSN_IFSA_SA_EEEEd0_UlSE_E_NS8_ISS_EESO_EclEOSE_@<Q0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  v3 = *a1;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  *a2 = v3;
  *(a2 + 16) = v2;
  memset(v5, 0, sizeof(v5));
  v6 = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN5kaldi6quasar16ConfusionNetworkINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1ERKNS_6vectorINSC_ISA_NS8_ISA_EEEENS8_ISE_EEEERKNSC_IfNS8_IfEEEENS_8functionIFSE_SE_EEENSN_IFSA_SA_EEEEd0_UlSE_E_NS8_ISS_EESO_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN5kaldi6quasar16ConfusionNetworkINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEC1ERKNS2_6vectorINSA_IS8_NS6_IS8_EEEENS6_ISC_EEEERKNSA_IfNS6_IfEEEENS2_8functionIFSC_SC_EEENSL_IFS8_S8_EEEEd0_UlSC_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::vector<std::string> ()(std::vector<std::string>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN5kaldi6quasar16ConfusionNetworkINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1ERKNS_6vectorINSC_ISA_NS8_ISA_EEEENS8_ISE_EEEERKNSC_IfNS8_IfEEEENS_8functionIFSE_SE_EEENSN_IFSA_SA_EEEEd_UlSA_E_NS8_ISS_EESQ_EclEOSA_(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 15) = *(a1 + 15);
  LOBYTE(v2) = *(a1 + 23);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a2 + 23) = v2;
}

uint64_t _ZNKSt3__110__function6__funcIZN5kaldi6quasar16ConfusionNetworkINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1ERKNS_6vectorINSC_ISA_NS8_ISA_EEEENS8_ISE_EEEERKNSC_IfNS8_IfEEEENS_8functionIFSE_SE_EEENSN_IFSA_SA_EEEEd_UlSA_E_NS8_ISS_EESQ_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN5kaldi6quasar16ConfusionNetworkINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEC1ERKNS2_6vectorINSA_IS8_NS6_IS8_EEEENS6_ISC_EEEERKNSA_IfNS6_IfEEEENS2_8functionIFSC_SC_EEENSL_IFS8_S8_EEEEd_UlS8_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 168;
    do
    {
      std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v4 + 136);
      v5 = *(v4 + 104);
      if (v5)
      {
        *(v4 + 112) = v5;
        operator delete(v5);
      }

      if (*(v4 + 103) < 0)
      {
        operator delete(*(v4 + 80));
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v4 + 40);
      result = std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(v4);
      v6 = v4 - 8;
      v4 -= 176;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>>::~pair(uint64_t a1)
{
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](a1 + 104);
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__init_with_size[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string>*,kaldi::quasar::ConfusionNetworkSlot<std::string>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B52535F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>,kaldi::quasar::ConfusionNetworkSlot<std::string>*,kaldi::quasar::ConfusionNetworkSlot<std::string>*,kaldi::quasar::ConfusionNetworkSlot<std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(v4, v6);
      v6 += 176;
      v4 = v11 + 176;
      v11 += 176;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>,kaldi::quasar::ConfusionNetworkSlot<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 48;
  *a1 = *a2;
  v5 = a1 + 48;
  std::unordered_map<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>::unordered_map(a1 + 8, a2 + 8);
  std::unordered_map<std::string,std::string>::unordered_map(v5, v4);
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v6 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v6;
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  std::vector<std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> *,std::allocator<std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> *>>::__init_with_size[abi:ne200100]<std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> **,std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> **>(a1 + 112, *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = *(a2 + 136);
  std::__function::__value_func<std::string ()(std::string)>::__value_func[abi:ne200100](a1 + 144, a2 + 144);
  return a1;
}

void sub_1B5253814(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__construct_node_hash<std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> const&>();
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

void sub_1B5253B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5253BBC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  kaldi::quasar::ConfusionNetworkArc<std::string>::ConfusionNetworkArc(this[1].__r_.__value_.__r.__words, a2 + 3);
  return this;
}

void sub_1B5253C34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::quasar::ConfusionNetworkArc<std::string>::ConfusionNetworkArc(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__init_with_size[abi:ne200100]<kaldi::quasar::ConfusionNetworkArcElement<std::string>*,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>((a1 + 1), a2[1], a2[2], 0xCCCCCCCCCCCCCCCDLL * ((a2[2] - a2[1]) >> 3));
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 4), a2[4], a2[5], (a2[5] - a2[4]) >> 2);
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 7), a2[7], a2[8], (a2[8] - a2[7]) >> 2);
  std::__function::__value_func<float ()(float,float)>::__value_func[abi:ne200100]((a1 + 10), (a2 + 10));
  return a1;
}

void sub_1B5253D14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 64) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v7;
    operator delete(v7);
  }

  std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__init_with_size[abi:ne200100]<kaldi::quasar::ConfusionNetworkArcElement<std::string>*,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5253DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*,kaldi::quasar::ConfusionNetworkArcElement<std::string>*,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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

      v9 = *(v6 + 3);
      *(v4[1].__r_.__value_.__r.__words + 6) = *(v6 + 30);
      v4[1].__r_.__value_.__r.__words[0] = v9;
      v6 = (v6 + 40);
      v4 = (v8 + 40);
      v14 = (v8 + 40);
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__function::__value_func<float ()(float,float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](a2 + 120);
    v3 = *(a2 + 96);
    if (v3)
    {
      *(a2 + 104) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 72);
    if (v4)
    {
      *(a2 + 80) = v4;
      operator delete(v4);
    }

    v5 = (a2 + 48);
    std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::vector<std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> *,std::allocator<std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> *>>::__init_with_size[abi:ne200100]<std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> **,std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5254160(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<std::string ()(std::string)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>,kaldi::quasar::ConfusionNetworkSlot<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>,std::reverse_iterator<kaldi::quasar::ConfusionNetworkSlot<std::string>*>,std::reverse_iterator<kaldi::quasar::ConfusionNetworkSlot<std::string>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>,std::reverse_iterator<kaldi::quasar::ConfusionNetworkSlot<std::string>*>,std::reverse_iterator<kaldi::quasar::ConfusionNetworkSlot<std::string>*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v6 - 32);
      v7 = *(v6 - 64);
      if (v7)
      {
        *(v6 - 56) = v7;
        operator delete(v7);
      }

      if (*(v6 - 65) < 0)
      {
        operator delete(*(v6 - 88));
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v6 - 128);
      std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(v6 - 168);
      v6 -= 176;
    }

    while (v6 != a5);
  }
}

void sub_1B525439C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

uint64_t *fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEpsLocalClass(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  if ((*(*a2 + 24))(a2) != -1)
  {
    *(a1 + 2) = (*(**a1 + 200))();
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::InitNumArcs(a1);
    v4 = (*(**a1 + 160))();
    if (v4 >= 1)
    {
      v5 = 0;
      do
      {
        for (i = 0; i < (*(**a1 + 40))(*a1, v5); ++i)
        {
          fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEps(a1, v5, i);
        }

        v5 = (v5 + 1);
      }

      while (v5 != v4);
    }

    fst::Connect<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a2);
  }

  return a1;
}

void sub_1B5254784(_Unwind_Exception *exception_object)
{
  v4 = v1[5];
  if (v4)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::InitNumArcs(void *a1)
{
  v2 = (*(**a1 + 160))(*a1);
  std::vector<int>::resize((a1 + 2), v2);
  std::vector<int>::resize((a1 + 5), v2);
  result = (*(**a1 + 24))();
  ++*(a1[2] + 4 * result);
  if (v2 < 1)
  {
    return result;
  }

  for (i = 0; i != v2; ++i)
  {
    (*(**a1 + 32))(v10);
    v15 = *(v10 + 1);
    v16 = v10[0];
    v14 = 2139095040;
    v13 = INFINITY;
    v5.n128_u32[0] = v10[0];
    if (*v10 != INFINITY || (v5.n128_f32[0] = v15, v15 != v13))
    {
      ++*(a1[5] + 4 * i);
    }

    v6 = *a1;
    v12 = 0;
    (*(*v6 + 136))(v6, i, v10, v5);
    while (1)
    {
      result = v10[0];
      if (!v10[0])
      {
        if (v12 >= v10[2])
        {
          goto LABEL_18;
        }

LABEL_12:
        v9 = 0;
        v8 = v10[1] + 20 * v12;
        goto LABEL_13;
      }

      v7 = (*(*v10[0] + 24))(v10[0]);
      result = v10[0];
      if (v7)
      {
        break;
      }

      if (!v10[0])
      {
        goto LABEL_12;
      }

      v8 = (*(*v10[0] + 32))();
      v9 = v10[0];
LABEL_13:
      ++*(a1[2] + 4 * *(v8 + 16));
      ++*(a1[5] + 4 * i);
      if (v9)
      {
        (*(*v9 + 40))(v9);
      }

      else
      {
        ++v12;
      }
    }

    if (v10[0])
    {
      result = (*(*v10[0] + 8))();
      continue;
    }

LABEL_18:
    if (v11)
    {
      --*v11;
    }
  }

  return result;
}

void sub_1B5254A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::GetLinearSymbolSequence<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>();
  }

  else
  {
    quasar::InverseTextNormalizer::getNumTokens((v10 + 24));
  }

  _Unwind_Resume(a1);
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEps(uint64_t a1, uint64_t a2, uint64_t a3)
{
  fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::GetArc(a1, a2, a3, &v12);
  if (v14 != a2 && v14 != *(a1 + 8))
  {
    v7 = *(*(a1 + 40) + 4 * v14);
    if (*(*(a1 + 16) + 4 * v14) != 1 || v7 < 2)
    {
      if (v7 == 1)
      {
        v9 = v12;
        v10 = v13;
        v11 = v14;
        fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEpsPattern2(a1, a2, a3, &v9);
      }
    }

    else
    {
      v9 = v12;
      v10 = v13;
      v11 = v14;
      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEpsPattern1(a1, a2, a3, &v9);
    }
  }
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::GetArc(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v11 = 0;
  (*(*v6 + 136))(v6, a2, v9);
  if (v9[0])
  {
    (*(*v9[0] + 64))(v9[0], a3);
    if (v9[0])
    {
      v7 = (*(*v9[0] + 32))(v9[0]);
      result = v9[0];
      goto LABEL_7;
    }

    a3 = v11;
  }

  else
  {
    v11 = a3;
  }

  result = 0;
  v7 = v9[1] + 20 * a3;
LABEL_7:
  *a4 = *v7;
  *(a4 + 8) = *(v7 + 8);
  *(a4 + 16) = *(v7 + 16);
  if (result)
  {
    return (*(*result + 8))(result);
  }

  if (v10)
  {
    --*v10;
  }

  return result;
}

void sub_1B5254C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::GetLinearSymbolSequence<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEpsPattern1(void *a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  v8 = a4[2].i32[0];
  v48 = 0;
  v49 = 0;
  v50 = 0;
  (*(**a1 + 296))();
  v9 = INFINITY;
  v10 = INFINITY;
  v11 = INFINITY;
  v12 = INFINITY;
  while (!(*(*v47 + 24))(v47))
  {
    v13 = (*(*v47 + 32))(v47);
    v14.__locale_ = *v13;
    v54[0] = *v13;
    v15 = *(v13 + 8);
    v54[1].__locale_ = v15;
    v16 = *(v13 + 16);
    v55 = v16;
    if (v16 != *(a1 + 2))
    {
      v17 = a4->i32[0];
      if (a4->i32[0] && LODWORD(v14.__locale_) || (v18 = v14.__locale_ >> 32, (v19 = a4->i32[1]) != 0) && v18)
      {
        v20 = vaddv_f32(v15);
        if ((v9 + v10) >= v20)
        {
          if ((v9 + v10) > v20 || (v9 >= *&v15 ? (v23 = v9 <= *&v15) : (v23 = 1), !v23))
          {
            v10 = *(&v15 + 1);
            v9 = *&v15;
          }
        }
      }

      else
      {
        v45[1] = vadd_f32(v15, a4[1]);
        if (v17)
        {
          LODWORD(v14.__locale_) = v17;
        }

        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v18;
        }

        v45[0] = __PAIR64__(v21, v14.__locale_);
        v46 = v16;
        v22 = vaddv_f32(v15);
        if ((v11 + v12) >= v22)
        {
          if ((v11 + v12) > v22 || (v11 >= *&v15 ? (v24 = v11 <= *&v15) : (v24 = 1), !v24))
          {
            v12 = *(&v15 + 1);
            v11 = *&v15;
          }
        }

        --*(a1[5] + 4 * v8);
        --*(a1[2] + 4 * v55);
        v55 = *(a1 + 2);
        (*(*v47 + 88))(v47, v54);
        std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](&v48, v45);
      }
    }

    (*(*v47 + 40))(v47);
  }

  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  (*(**a1 + 32))(v54);
  v26 = *(&v54[0].__locale_ + 1);
  locale = v54[0].__locale_;
  LODWORD(v47) = HIDWORD(locale);
  LODWORD(v27) = locale;
  LODWORD(v45[0]) = v54[0].__locale_;
  v53 = INFINITY;
  v52 = INFINITY;
  if (*&v54[0].__locale_ == INFINITY && *&v47 == v52)
  {
    goto LABEL_54;
  }

  if (!*a4)
  {
    v25.n128_f32[0] = v11 + v12;
    if ((v11 + v12) >= (*&v54[0].__locale_ + *(&v54[0].__locale_ + 1)) && ((v11 + v12) > (*&v54[0].__locale_ + *(&v54[0].__locale_ + 1)) || v11 >= *&v54[0].__locale_ && v11 > *&v54[0].__locale_))
    {
      v12 = *(&v54[0].__locale_ + 1);
      v11 = *&v54[0].__locale_;
    }

    v29 = a4[1].f32[0];
    v30 = a4[1].f32[1];
    (*(**a1 + 32))(v45, v25);
    v53 = *(v45 + 1);
    LODWORD(v47) = v45[0];
    v52 = INFINITY;
    v51 = INFINITY;
    v31.n128_u32[0] = v45[0];
    if (*v45 == INFINITY)
    {
      v31.n128_f32[0] = v53;
      if (v53 == v51)
      {
        ++*(a1[5] + 4 * a2);
      }
    }

    v32 = *a1;
    (*(**a1 + 32))(&v47, *a1, a2, v31);
    v33 = v27 + v29;
    v34 = *(&v47 + 1);
    LODWORD(v35) = v47;
    v36 = (v27 + v29) + (v26 + v30);
    if ((*&v47 + *(&v47 + 1)) >= v36 && ((*&v47 + *(&v47 + 1)) > v36 || *&v47 >= v33 && *&v47 > v33))
    {
      v34 = v26 + v30;
      v35 = v27 + v29;
    }

    v45[0] = __PAIR64__(LODWORD(v34), LODWORD(v35));
    (*(*v32 + 184))(v32, a2, v45);
    --*(a1[5] + 4 * v8);
    v37 = *a1;
    v45[0] = vneg_f32(0x7F0000007FLL);
    (*(*v37 + 184))(v37, v8, v45);
    goto LABEL_54;
  }

  if ((v9 + v10) < (*&v54[0].__locale_ + *(&v54[0].__locale_ + 1)) || (v9 + v10) <= (*&v54[0].__locale_ + *(&v54[0].__locale_ + 1)) && v9 <= *&v54[0].__locale_)
  {
LABEL_54:
    v27 = v9;
    v26 = v10;
  }

  *&v54[0].__locale_ = v11;
  *v45 = v12;
  LODWORD(v47) = 2139095040;
  v53 = INFINITY;
  if (v11 != INFINITY || (v25.n128_u32[0] = v45[0], *v45 != v53))
  {
    *&v54[0].__locale_ = v27;
    *v45 = v26;
    LODWORD(v47) = 2139095040;
    v53 = INFINITY;
    if (v27 == INFINITY && (v25.n128_u32[0] = v45[0], *v45 == v53))
    {
      --*(a1[5] + 4 * a2);
      --*(a1[2] + 4 * a4[2].i32[0]);
      a4[2].i32[0] = *(a1 + 2);
      (*(**a1 + 296))(v25);
      (*(*v54[0].__locale_ + 64))(v54[0].__locale_, a3);
      (*(*v54[0].__locale_ + 88))(v54[0].__locale_, a4);
      if (v54[0].__locale_)
      {
        (*(*v54[0].__locale_ + 8))(v54[0].__locale_);
      }
    }

    else
    {
      if ((v11 + v12) >= (v27 + v26) && ((v11 + v12) > (v27 + v26) || v11 > v27))
      {
        v12 = v26;
        v11 = v27;
      }

      v38 = v27 - v11;
      if ((v27 - v11) == -INFINITY || (v26 - v12) == -INFINITY)
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v54);
          v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "LatticeWeightTpl::Divide, NaN or invalid number produced. ", 58);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "[dividing by zero?]  Returning zero.", 36);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v54);
        }

        v39 = INFINITY;
        v38 = INFINITY;
      }

      else
      {
        if (v38 == INFINITY)
        {
          v39 = INFINITY;
        }

        else
        {
          v39 = v26 - v12;
        }

        if ((v26 - v12) == INFINITY || v38 == INFINITY)
        {
          v38 = INFINITY;
        }
      }

      v54[0].__locale_ = __PAIR64__(LODWORD(v39), LODWORD(v38));
      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::Reweight(a1, a2, a3, v54);
    }
  }

  v42 = v48;
  if (v49 != v48)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      ++*(a1[5] + 4 * a2);
      ++*(a1[2] + 4 * *&v42[v43 + 16]);
      (*(**a1 + 208))(*a1, a2, v25);
      ++v44;
      v42 = v48;
      v43 += 20;
    }

    while (v44 < 0xCCCCCCCCCCCCCCCDLL * ((v49 - v48) >> 2));
  }

  if (v42)
  {
    v49 = v42;
    operator delete(v42);
  }
}

void sub_1B5255470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  kaldi::KaldiLogMessage::~KaldiLogMessage(&a19);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEpsPattern2(void *a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  v8 = a4[2].i32[0];
  v9 = *(a1[2] + 4 * v8);
  v10 = v8;
  result = (*(**a1 + 32))(&v33);
  LODWORD(v28[0]) = HIDWORD(v33);
  LODWORD(v30[0]) = v33;
  LODWORD(v32) = 2139095040;
  v35 = INFINITY;
  if (*&v33 != INFINITY || *v28 != v35)
  {
    if (*a4)
    {
      return result;
    }

    v12 = *&v33 + a4[1].f32[0];
    v13 = *(&v33 + 1) + a4[1].f32[1];
    (*(**a1 + 32))(v30);
    LODWORD(v32) = HIDWORD(v30[0]);
    LODWORD(v28[0]) = v30[0];
    v35 = INFINITY;
    v34 = INFINITY;
    v14.n128_u32[0] = v30[0];
    if (*v30 == INFINITY)
    {
      v14.n128_u32[0] = v32;
      if (*&v32 == v34)
      {
        ++*(a1[5] + 4 * a2);
      }
    }

    v15 = *a1;
    (*(**a1 + 32))(v28, *a1, a2, v14);
    v16 = *(v28 + 1);
    v17 = *v28;
    if ((*v28 + *(v28 + 1)) >= (v12 + v13) && ((*v28 + *(v28 + 1)) > (v12 + v13) || *v28 >= v12 && *v28 > v12))
    {
      v16 = v13;
      v17 = v12;
    }

    v30[0] = __PAIR64__(LODWORD(v16), LODWORD(v17));
    (*(*v15 + 184))(v15, a2, v30);
    if (v9 == 1)
    {
      --*(a1[5] + 4 * v10);
      v26 = *a1;
      v30[0] = vneg_f32(0x7F0000007FLL);
      (*(*v26 + 184))(v26, v10, v30);
    }

    goto LABEL_33;
  }

  (*(**a1 + 296))(*a1, v10, &v32);
  while (*((*(*v32 + 32))(v32) + 16) == *(a1 + 2))
  {
    (*(*v32 + 40))(v32);
  }

  v18 = (*(*v32 + 32))(v32);
  v19 = *v18;
  v30[0] = *v18;
  v20 = *(v18 + 8);
  v30[1] = v20;
  v21 = *(v18 + 16);
  v31 = v21;
  v22 = a4->i32[0];
  if (a4->i32[0] && v19 || (v23 = HIDWORD(v19), (v24 = a4->i32[1]) != 0) && v23)
  {
    v25 = 0;
  }

  else
  {
    v28[1] = vadd_f32(v20, a4[1]);
    if (v22)
    {
      LODWORD(v19) = v22;
    }

    if (v24)
    {
      v27 = v24;
    }

    else
    {
      v27 = v23;
    }

    v28[0] = __PAIR64__(v27, v19);
    v29 = v21;
    if (v9 == 1)
    {
      --*(a1[5] + 4 * v10);
      --*(a1[2] + 4 * v21);
      v31 = *(a1 + 2);
      (*(*v32 + 88))(v32, v30);
    }

    ++*(a1[5] + 4 * a2);
    ++*(a1[2] + 4 * v21);
    (*(**a1 + 208))(*a1, a2, v28);
    v25 = 1;
  }

  result = v32;
  if (v32)
  {
    result = (*(*v32 + 8))(v32);
  }

  if (v25)
  {
LABEL_33:
    --*(a1[5] + 4 * a2);
    --*(a1[2] + 4 * v10);
    a4[2].i32[0] = *(a1 + 2);
    (*(**a1 + 296))();
    (*(*v30[0] + 64))(v30[0], a3);
    (*(*v30[0] + 88))(v30[0], a4);
    result = v30[0];
    if (v30[0])
    {
      return (*(*v30[0] + 8))(v30[0]);
    }
  }

  return result;
}

void sub_1B5255A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::Reweight(void *a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  (*(**a1 + 296))(*a1, a2, &v31);
  (*(*v31 + 64))(v31, a3);
  v7 = (*(*v31 + 32))(v31);
  v29[0] = *v7;
  v30 = v7[2].u32[0];
  v29[1] = vadd_f32(v7[1], *a4);
  (*(*v31 + 88))(v31, v29);
  (*(**a1 + 296))(*a1, v30, &v28);
  while (!(*(*v28 + 24))(v28))
  {
    v8 = (*(*v28 + 32))(v28);
    v25 = *v8;
    v9 = *(v8 + 8);
    v26 = v9;
    v27 = *(v8 + 16);
    if (v27 != *(a1 + 2))
    {
      v10 = vsub_f32(v9, *a4);
      *v11.f32 = v10;
      *&v11.u32[2] = v10;
      v12.i32[0] = vmovn_s32(vceqq_f32(v11, xmmword_1B5AE39F0)).u32[0];
      v12.i32[1] = vmovn_s32(vmvnq_s8(vceqq_f32(v11, v11))).i32[1];
      if (vmaxv_u16(v12))
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "LatticeWeightTpl::Divide, NaN or invalid number produced. ", 58);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "[dividing by zero?]  Returning zero.", 36);
          kaldi::KaldiLogMessage::~KaldiLogMessage(&v34);
        }

        v14 = INFINITY;
        v15 = INFINITY;
      }

      else
      {
        if (v10.f32[1] == INFINITY || v10.f32[0] == INFINITY)
        {
          v14 = INFINITY;
        }

        else
        {
          v14 = v10.f32[0];
        }

        if (v10.f32[0] == INFINITY)
        {
          v15 = INFINITY;
        }

        else
        {
          v15 = v10.f32[1];
        }
      }

      v26 = __PAIR64__(LODWORD(v15), LODWORD(v14));
      (*(*v28 + 88))(v28, &v25);
    }

    (*(*v28 + 40))(v28);
  }

  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  (*(**a1 + 32))(&v25);
  LODWORD(v28) = HIDWORD(v25);
  v34.i32[0] = v25;
  v33 = 2139095040;
  v32 = INFINITY;
  if (*&v25 != INFINITY || *&v28 != v32)
  {
    v17 = *a1;
    v18 = v30;
    v19 = *&v25 - a4->f32[0];
    v20 = *(&v25 + 1) - a4->f32[1];
    if (v19 == -INFINITY || v20 == -INFINITY)
    {
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "LatticeWeightTpl::Divide, NaN or invalid number produced. ", 58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "[dividing by zero?]  Returning zero.", 36);
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v34);
      }
    }

    else if (v19 != INFINITY && v20 != INFINITY)
    {
      v34.f32[0] = *&v25 - a4->f32[0];
      v34.f32[1] = v20;
LABEL_36:
      (*(*v17 + 184))(v17, v18, &v34);
      goto LABEL_37;
    }

    v34 = vneg_f32(0x7F0000007FLL);
    goto LABEL_36;
  }

LABEL_37:
  result = v31;
  if (v31)
  {
    return (*(*v31 + 8))(v31);
  }

  return result;
}

void sub_1B5255F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(a1);
}

void quasar::SpeechRequestResultData::appendDump(std::mutex *a1, const void **a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock(a1 + 3);
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[4].__m_.__opaque[40], a2);
  v9 = v8;
  if ((*(v8 + 79) & 0x8000000000000000) != 0)
  {
    if (!*(v8 + 64))
    {
      goto LABEL_12;
    }
  }

  else if (!*(v8 + 79))
  {
    goto LABEL_12;
  }

  v10 = *(a4 + 23);
  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v10 >= 0)
  {
    v12 = *(a4 + 23);
  }

  else
  {
    v12 = *(a4 + 8);
  }

  std::string::append((v8 + 56), v11, v12);
LABEL_12:
  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v13 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  std::string::append((v9 + 56), v14, v15);
  std::mutex::unlock(a1 + 3);
}

void quasar::SpeechRequestResultData::addDump(std::mutex *a1, const void **a2, double a3)
{
  std::to_string(&v5, a3);
  quasar::SpeechRequestResultData::addDump(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_1B52560D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SpeechRequestResultData::appendAA(std::mutex *a1, const void **a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock(a1 + 3);
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[4].__m_.__opaque[16], a2);
  v9 = v8;
  if ((*(v8 + 79) & 0x8000000000000000) != 0)
  {
    if (!*(v8 + 64))
    {
      goto LABEL_12;
    }
  }

  else if (!*(v8 + 79))
  {
    goto LABEL_12;
  }

  v10 = *(a4 + 23);
  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v10 >= 0)
  {
    v12 = *(a4 + 23);
  }

  else
  {
    v12 = *(a4 + 8);
  }

  std::string::append((v8 + 56), v11, v12);
LABEL_12:
  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v13 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  std::string::append((v9 + 56), v14, v15);
  std::mutex::unlock(a1 + 3);
}

void quasar::SpeechRequestResultData::addAA(std::mutex *a1, const void **a2, double *a3, char a4)
{
  std::mutex::lock(a1 + 3);
  if ((a4 & 1) != 0 || a1[4].__m_.__opaque == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&a1[4], a2))
  {
    v10 = *a3;
    *(std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[4], a2) + 56) = v10;
  }

  else
  {
    v8 = *a3;
    v9 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[4], a2);
    *(v9 + 56) = v8 + *(v9 + 56);
  }

  std::mutex::unlock(a1 + 3);
}

void quasar::SpeechRequestResultData::appendDumpAA(std::mutex *a1, const void **a2, uint64_t a3, uint64_t a4)
{
  quasar::SpeechRequestResultData::appendDump(a1, a2, a3, a4);

  quasar::SpeechRequestResultData::appendAA(a1, a2, a3, a4);
}

void quasar::SpeechRequestResultData::addDumpAA(std::mutex *a1, const void **a2, char a3, double a4)
{
  v7 = a4;
  quasar::SpeechRequestResultData::addDump(a1, a2, a4);
  quasar::SpeechRequestResultData::addAA(a1, a2, &v7, a3);
}

void quasar::SpeechRequestResultData::storeClientConfusionNetwork(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 192));
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 336);
  *(a1 + 328) = v5;
  *(a1 + 336) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::mutex::unlock((a1 + 192));
}

void quasar::SpeechRequestResultData::storeServerConfusionNetwork(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 192));
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 352);
  *(a1 + 344) = v5;
  *(a1 + 352) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::mutex::unlock((a1 + 192));
}

void quasar::SpeechRequestResultData::storePhoneticMatchResult(quasar::SpeechRequestResultData *this, const quasar::PhoneticMatchResult *a2)
{
  std::mutex::lock(this + 3);
  v4 = *(this + 21);
  v5 = *(this + 22);
  if (v4 != v5)
  {
    while (*(v4 + 12) > *(a2 + 3))
    {
      v4 += 72;
      if (v4 == v5)
      {
        v4 = *(this + 22);
        break;
      }
    }
  }

  std::vector<quasar::PhoneticMatchResult>::insert(this + 21, v4, a2);

  std::mutex::unlock(this + 3);
}

unint64_t std::vector<quasar::PhoneticMatchResult>::insert(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v12 = *a1;
    v13 = 0x8E38E38E38E38E39 * ((v6 - *a1) >> 3) + 1;
    if (v13 > 0x38E38E38E38E38ELL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v14 = a2 - v12;
    v15 = 0x8E38E38E38E38E39 * ((v7 - v12) >> 3);
    v16 = 2 * v15;
    if (2 * v15 <= v13)
    {
      v16 = 0x8E38E38E38E38E39 * ((v6 - *a1) >> 3) + 1;
    }

    if (v15 >= 0x1C71C71C71C71C7)
    {
      v17 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v17 = v16;
    }

    v23 = a1;
    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PhoneticMatchResult>>(a1, v17);
    }

    v19 = 0;
    v20 = 8 * (v14 >> 3);
    v21 = v20;
    v22 = 0;
    std::__split_buffer<quasar::PhoneticMatchResult>::emplace_back<quasar::PhoneticMatchResult const&>(&v19, a3);
    v4 = std::vector<quasar::PhoneticMatchResult>::__swap_out_circular_buffer(a1, &v19, v4);
    std::__split_buffer<quasar::PhoneticMatchResult>::~__split_buffer(&v19);
  }

  else if (a2 == v6)
  {
    std::vector<quasar::PhoneticMatchResult>::__construct_one_at_end[abi:ne200100]<quasar::PhoneticMatchResult const&>(a1, a3);
  }

  else
  {
    std::vector<quasar::PhoneticMatchResult>::__move_range(a1, a2, v6, a2 + 72);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 72;
    if (v8)
    {
      v9 = 0;
    }

    v10 = a3 + v9;
    *v4 = *(a3 + v9);
    if (v4 != a3 + v9)
    {
      std::vector<quasar::PhoneticMatchAlignmentSpan>::__assign_with_size[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*>((v4 + 16), *(v10 + 16), *(v10 + 24), 0x8E38E38E38E38E39 * ((*(v10 + 24) - *(v10 + 16)) >> 3));
    }

    std::string::operator=((v4 + 40), (v10 + 40));
    v11 = *(v10 + 67);
    *(v4 + 64) = *(v10 + 64);
    *(v4 + 67) = v11;
  }

  return v4;
}

void sub_1B5256664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::PhoneticMatchResult>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void quasar::SpeechRequestResultData::storePhoneticMatchDecoderStats(uint64_t a1, __int128 *a2, std::string::value_type a3, std::string::value_type a4, std::string::value_type a5, float a6, float a7)
{
  std::mutex::lock((a1 + 192));
  quasar::PhoneticMatchDecoderStat::PhoneticMatchDecoderStat(&__p, a2, a3, a4, a5, a6, a7);
  v14 = *(a1 + 152);
  if (v14 >= *(a1 + 160))
  {
    matched = std::vector<quasar::PhoneticMatchDecoderStat>::__emplace_back_slow_path<quasar::PhoneticMatchDecoderStat>(a1 + 144, &__p);
    v18 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a1 + 152) = matched;
    if (v18 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = *&__p.__r_.__value_.__l.__data_;
    *(v14 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v14 = v15;
    memset(&__p, 0, sizeof(__p));
    v16 = v21;
    *(v14 + 24) = v20;
    *(v14 + 32) = v16;
    *(a1 + 152) = v14 + 40;
  }

  std::mutex::unlock((a1 + 192));
}

void sub_1B5256760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 3);
  _Unwind_Resume(a1);
}

void quasar::SpeechRequestResultData::getAALogData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  std::mutex::lock((a1 + 192));
  v10 = *(a1 + 256);
  if (v10 != (a1 + 264))
  {
    do
    {
      v11 = v10[7];
      *(std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v10 + 4) + 56) = v11;
      v12 = v10[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v10[2];
          v14 = *v13 == v10;
          v10 = v13;
        }

        while (!v14);
      }

      v10 = v13;
    }

    while (v13 != (a1 + 264));
  }

  v15 = *(a1 + 280);
  if (v15 != (a1 + 288))
  {
    do
    {
      v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v15 + 4);
      std::string::operator=((v16 + 56), (v15 + 7));
      v17 = v15[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v15[2];
          v14 = *v18 == v15;
          v15 = v18;
        }

        while (!v14);
      }

      v15 = v18;
    }

    while (v18 != (a1 + 288));
  }

  v20 = *(a1 + 328);
  v19 = *(a1 + 336);
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = a4[1];
  *a4 = v20;
  a4[1] = v19;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v23 = *(a1 + 344);
  v22 = *(a1 + 352);
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = a5[1];
  *a5 = v23;
  a5[1] = v22;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::mutex::unlock((a1 + 192));
}

void quasar::SpeechRequestResultData::getDumpData(std::mutex *this@<X0>, uint64_t a2@<X8>)
{
  std::mutex::lock(this + 3);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *&this[4].__m_.__opaque[40];
  if (v4 != &this[4].__m_.__opaque[48])
  {
    do
    {
      std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(&v25, v4 + 2, (v4 + 56));
      v5 = *(a2 + 8);
      v6 = *(a2 + 16);
      if (v5 >= v6)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 4);
        v10 = v9 + 1;
        if (v9 + 1 > 0x555555555555555)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 4);
        if (2 * v11 > v10)
        {
          v10 = 2 * v11;
        }

        if (v11 >= 0x2AAAAAAAAAAAAAALL)
        {
          v12 = 0x555555555555555;
        }

        else
        {
          v12 = v10;
        }

        v28.__end_cap_.__value_ = a2;
        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a2, v12);
        }

        v13 = 48 * v9;
        v14 = *&v25.__r_.__value_.__l.__data_;
        *(v13 + 16) = *(&v25.__r_.__value_.__l + 2);
        *v13 = v14;
        memset(&v25, 0, sizeof(v25));
        v15 = __p;
        *(v13 + 40) = v27;
        *(v13 + 24) = v15;
        v27 = 0;
        __p = 0uLL;
        v16 = 48 * v9 + 48;
        v17 = *(a2 + 8) - *a2;
        v18 = 48 * v9 - v17;
        memcpy((v13 - v17), *a2, v17);
        v19 = *a2;
        *a2 = v18;
        *(a2 + 8) = v16;
        v20 = *(a2 + 16);
        *(a2 + 16) = 0;
        v28.__end_ = v19;
        v28.__end_cap_.__value_ = v20;
        v28.__first_ = v19;
        v28.__begin_ = v19;
        std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v28);
        v21 = SHIBYTE(v27);
        *(a2 + 8) = v16;
        if (v21 < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        v7 = *&v25.__r_.__value_.__l.__data_;
        *(v5 + 16) = *(&v25.__r_.__value_.__l + 2);
        *v5 = v7;
        memset(&v25, 0, sizeof(v25));
        v8 = v27;
        *(v5 + 24) = __p;
        *(v5 + 40) = v8;
        v27 = 0;
        __p = 0uLL;
        *(a2 + 8) = v5 + 48;
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      v22 = *(v4 + 1);
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
          v23 = *(v4 + 2);
          v24 = *v23 == v4;
          v4 = v23;
        }

        while (!v24);
      }

      v4 = v23;
    }

    while (v23 != &this[4].__m_.__opaque[48]);
  }

  std::mutex::unlock(this + 3);
}

void sub_1B5256B5C(_Unwind_Exception *a1, std::mutex *a2, ...)
{
  va_start(va, a2);
  std::pair<std::string,std::string>::~pair(va);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  std::mutex::unlock(a2 + 3);
  _Unwind_Resume(a1);
}

void quasar::SpeechRequestResultData::addUttInfo(uint64_t a1, __int128 *a2)
{
  std::mutex::lock((a1 + 192));
  std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100]((a1 + 360), a2);

  std::mutex::unlock((a1 + 192));
}

void quasar::SpeechRequestResultData::getUttInfos(quasar::SpeechRequestResultData *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock(this + 3);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::shared_ptr<quasar::UttInfo>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::UttInfo>*,std::shared_ptr<quasar::UttInfo>*>(a2, *(this + 45), *(this + 46), (*(this + 46) - *(this + 45)) >> 4);

  std::mutex::unlock(this + 3);
}

std::string *quasar::PhoneticMatchDecoderStat::PhoneticMatchDecoderStat(std::string *this, __int128 *a2, std::string::value_type a3, std::string::value_type a4, std::string::value_type a5, float a6, float a7)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v13;
  }

  this[1].__r_.__value_.__s.__data_[0] = a3;
  this[1].__r_.__value_.__s.__data_[1] = a4;
  this[1].__r_.__value_.__s.__data_[2] = a5;
  *(this[1].__r_.__value_.__r.__words + 1) = a6;
  *&this[1].__r_.__value_.__r.__words[1] = a7;
  return this;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
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

void sub_1B5256D64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1B5256EB4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::vector<quasar::PhoneticMatchResult>::__construct_one_at_end[abi:ne200100]<quasar::PhoneticMatchResult const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__init_with_size[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*>(v4 + 16, *(a2 + 16), *(a2 + 24), 0x8E38E38E38E38E39 * ((*(a2 + 24) - *(a2 + 16)) >> 3));
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 40) = v5;
  }

  v6 = *(a2 + 64);
  *(v4 + 67) = *(a2 + 67);
  *(v4 + 64) = v6;
  *(a1 + 8) = v4 + 72;
}

void sub_1B5256F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::PhoneticMatchResult>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 16) = 0;
      *(v8 + 16) = *(v9 + 16);
      *(v8 + 32) = *(v9 + 32);
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      v10 = *(v9 + 40);
      *(v8 + 56) = *(v9 + 56);
      *(v8 + 40) = v10;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 40) = 0;
      v11 = *(v9 + 64);
      *(v8 + 67) = *(v9 + 67);
      *(v8 + 64) = v11;
      v9 += 72;
      v8 += 72;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::PhoneticMatchResult *,quasar::PhoneticMatchResult *,quasar::PhoneticMatchResult *>(&v13, a2, v7, v6);
}

void std::__split_buffer<quasar::PhoneticMatchResult>::emplace_back<quasar::PhoneticMatchResult const&>(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x1C71C71C71C71C72 * ((v4 - *a1) >> 3);
      }

      v10 = a1[4];
      v13[4] = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PhoneticMatchResult>>(v10, v9);
    }

    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3) + 1 + ((0x8E38E38E38E38E39 * ((v5 - *a1) >> 3) + 1) >> 63);
    v7 = -9 * (v6 >> 1);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::PhoneticMatchResult *,quasar::PhoneticMatchResult *,quasar::PhoneticMatchResult *>(v13, v5, v4, v5 - 72 * (v6 >> 1));
    v4 = v8;
    a1[1] += 8 * v7;
    a1[2] = v8;
  }

  *v4 = *a2;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__init_with_size[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*>(v4 + 16, *(a2 + 16), *(a2 + 24), 0x8E38E38E38E38E39 * ((*(a2 + 24) - *(a2 + 16)) >> 3));
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v11 = *(a2 + 40);
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 40) = v11;
  }

  v12 = *(a2 + 64);
  *(v4 + 67) = *(a2 + 67);
  *(v4 + 64) = v12;
  a1[2] += 72;
}

void sub_1B5257258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::PhoneticMatchResult>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PhoneticMatchResult>,quasar::PhoneticMatchResult*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PhoneticMatchResult>,quasar::PhoneticMatchResult*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::vector<quasar::PhoneticMatchAlignmentSpan>::__init_with_size[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::PhoneticMatchAlignmentSpan>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5257394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::PhoneticMatchAlignmentSpan>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PhoneticMatchAlignmentSpan>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PhoneticMatchAlignmentSpan>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::PhoneticMatchAlignmentSpan>,quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v4, *v6, v6[1], 0x6DB6DB6DB6DB6DB7 * ((v6[1] - *v6) >> 5));
      v4[3] = 0;
      v4[4] = 0;
      v4[5] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>((v4 + 3), v6[3], v6[4], 0x6DB6DB6DB6DB6DB7 * ((v6[4] - v6[3]) >> 5));
      v4[6] = 0;
      v4[7] = 0;
      v4[8] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>((v4 + 6), v6[6], v6[7], 0x6DB6DB6DB6DB6DB7 * ((v6[7] - v6[6]) >> 5));
      v6 += 9;
      v4 = v11 + 9;
      v11 += 9;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PhoneticMatchAlignmentSpan>,quasar::PhoneticMatchAlignmentSpan*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void sub_1B5257560(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PhoneticMatchAlignmentSpan>,quasar::PhoneticMatchAlignmentSpan*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PhoneticMatchAlignmentSpan>,quasar::PhoneticMatchAlignmentSpan*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::PhoneticMatchAlignmentSpan>,std::reverse_iterator<quasar::PhoneticMatchAlignmentSpan*>,std::reverse_iterator<quasar::PhoneticMatchAlignmentSpan*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::PhoneticMatchAlignmentSpan>,std::reverse_iterator<quasar::PhoneticMatchAlignmentSpan*>,std::reverse_iterator<quasar::PhoneticMatchAlignmentSpan*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v9[5] = v5;
    v9[6] = v6;
    v8 = a3;
    do
    {
      v9[0] = (v8 - 24);
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v9);
      v9[0] = (v8 - 48);
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v9);
      v9[0] = (v8 - 72);
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v9);
      v8 -= 72;
    }

    while (v8 != a5);
  }
}

void std::vector<quasar::PhoneticMatchAlignmentSpan>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 72)
  {
    v5 = (i - 24);
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = (i - 48);
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = (i - 72);
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  *(a1 + 8) = a2;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::PhoneticMatchResult *,quasar::PhoneticMatchResult *,quasar::PhoneticMatchResult *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      *(a4 + v7 - 72) = *(a3 + v7 - 72);
      std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate((a4 + v7 - 56));
      *(v9 - 56) = *(a3 + v7 - 56);
      *(v9 - 40) = *(a3 + v7 - 40);
      *(v8 - 56) = 0;
      *(v8 - 48) = 0;
      *(v8 - 40) = 0;
      v10 = (a4 + v7 - 32);
      if (*(a4 + v7 - 9) < 0)
      {
        operator delete(*v10);
      }

      v11 = *(v8 - 32);
      *(v9 - 16) = *(v8 - 16);
      *v10 = v11;
      *(v8 - 9) = 0;
      *(v8 - 32) = 0;
      v12 = *(v8 - 8);
      *(v9 - 5) = *(v8 - 5);
      *(v9 - 8) = v12;
      v7 -= 72;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<quasar::PhoneticMatchAlignmentSpan>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<quasar::PhoneticMatchAlignmentSpan>::__assign_with_size[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*>(uint64_t *a1, quasar::Token **a2, quasar::Token **a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate(a1);
    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
      {
        v10 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::PhoneticMatchAlignmentSpan>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan *,quasar::PhoneticMatchAlignmentSpan *,quasar::PhoneticMatchAlignmentSpan *>(&v14, a2, a3, v8);
    std::vector<quasar::PhoneticMatchAlignmentSpan>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan *,quasar::PhoneticMatchAlignmentSpan *,quasar::PhoneticMatchAlignmentSpan *>(&v13, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::PhoneticMatchAlignmentSpan>,quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*>(a1, (a2 + v11), a3, a1[1]);
  }
}

quasar::Token **std::__copy_impl::operator()[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan *,quasar::PhoneticMatchAlignmentSpan *,quasar::PhoneticMatchAlignmentSpan *>(int a1, quasar::Token **a2, quasar::Token **a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a4, *v5, v5[1], 0x6DB6DB6DB6DB6DB7 * ((v5[1] - *v5) >> 5));
        std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a4 + 24, v5[3], v5[4], 0x6DB6DB6DB6DB6DB7 * ((v5[4] - v5[3]) >> 5));
        std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a4 + 48, v5[6], v5[7], 0x6DB6DB6DB6DB6DB7 * ((v5[7] - v5[6]) >> 5));
      }

      v5 += 9;
      a4 += 72;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PhoneticMatchResult>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::PhoneticMatchResult *,quasar::PhoneticMatchResult *,quasar::PhoneticMatchResult *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate((a4 + 16));
      *(a4 + 16) = *(v5 + 16);
      *(a4 + 32) = *(v5 + 32);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      if (*(a4 + 63) < 0)
      {
        operator delete(*(a4 + 40));
      }

      v7 = *(v5 + 40);
      *(a4 + 56) = *(v5 + 56);
      *(a4 + 40) = v7;
      *(v5 + 63) = 0;
      *(v5 + 40) = 0;
      v8 = *(v5 + 64);
      *(a4 + 67) = *(v5 + 67);
      *(a4 + 64) = v8;
      v5 += 72;
      a4 += 72;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PhoneticMatchResult>,quasar::PhoneticMatchResult*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v7 + 16);
      *(a4 + 32) = *(v7 + 32);
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      v8 = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 40) = v8;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 40) = 0;
      v9 = *(v7 + 64);
      *(a4 + 67) = *(v7 + 67);
      *(a4 + 64) = v9;
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<quasar::PhoneticMatchResult>::destroy[abi:ne200100](a1, v5);
      v5 += 72;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PhoneticMatchResult>,quasar::PhoneticMatchResult*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PhoneticMatchResult>,quasar::PhoneticMatchResult*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PhoneticMatchResult>,quasar::PhoneticMatchResult*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PhoneticMatchResult>,quasar::PhoneticMatchResult*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 72;
      std::allocator<quasar::PhoneticMatchResult>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<quasar::PhoneticMatchResult>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::PhoneticMatchResult>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::PhoneticMatchResult>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    std::allocator<quasar::PhoneticMatchResult>::destroy[abi:ne200100](v4, i - 72);
  }
}

uint64_t std::vector<quasar::PhoneticMatchDecoderStat>::__emplace_back_slow_path<quasar::PhoneticMatchDecoderStat>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PhoneticMatchDecoderStat>>(a1, v6);
  }

  v7 = 40 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 3);
  *(v7 + 32) = *(a2 + 8);
  *(v7 + 24) = v9;
  *&v18 = 40 * v2 + 40;
  v10 = *(a1 + 8);
  v11 = 40 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PhoneticMatchDecoderStat>,quasar::PhoneticMatchDecoderStat*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(&v16);
  return v15;
}

void sub_1B5257E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PhoneticMatchDecoderStat>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PhoneticMatchDecoderStat>,quasar::PhoneticMatchDecoderStat*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
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
      v8 = *(v6 + 3);
      *(a4 + 32) = *(v6 + 8);
      *(a4 + 24) = v8;
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PhoneticMatchDecoderStat>,quasar::PhoneticMatchDecoderStat*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PhoneticMatchDecoderStat>,quasar::PhoneticMatchDecoderStat*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::PhoneticMatchDecoderStat>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<std::shared_ptr<quasar::UttInfo>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::UttInfo>*,std::shared_ptr<quasar::UttInfo>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B52580A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<quasar::UttInfo>>,std::shared_ptr<quasar::UttInfo>*,std::shared_ptr<quasar::UttInfo>*,std::shared_ptr<quasar::UttInfo>*>(uint64_t a1, void *a2, void *a3, void *a4)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<quasar::UttInfo>>,std::shared_ptr<quasar::UttInfo>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<quasar::UttInfo>>,std::shared_ptr<quasar::UttInfo>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void quasar::PhonetisaurusP2WP::PhonetisaurusP2WP(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a2[1];
  v17[0] = *a2;
  v17[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a3[1];
  v16[0] = *a3;
  v16[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v15, ".");
  std::string::basic_string[abi:ne200100]<0>(&__p, " ");
  quasar::PhonetisaurusG2P::PhonetisaurusG2P(a1, v17, v16, a4, a5, a6, a7);
}

void sub_1B52582A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  v26 = *(v24 - 56);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PhonetisaurusP2WP::normalizeToken(uint64_t a1@<X1>, std::string *a2@<X8>)
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
}

void quasar::PhonetisaurusP2WP::convertPhonemePronsToAllProns()
{
  memset(v0, 0, sizeof(v0));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v0);
}

void quasar::PhonetisaurusP2WP::doG2P(int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  quasar::PhonetisaurusG2P::doG2P(a1, a2, a3);
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    do
    {
      *v4 = 2;
      std::string::basic_string[abi:ne200100]<0>(v9, "~w10");
      std::string::basic_string[abi:ne200100]<0>(__p, "}");
      v6 = (v4 + 2);
      quasar::replaceAll(v6, v9, __p);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      if (v10 < 0)
      {
        operator delete(v9[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v9, "~w11");
      std::string::basic_string[abi:ne200100]<0>(__p, "_");
      quasar::replaceAll(v6, v9, __p);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      if (v10 < 0)
      {
        operator delete(v9[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v9, "~w13");
      std::string::basic_string[abi:ne200100]<0>(__p, " ");
      quasar::replaceAll(v6, v9, __p);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      if (v10 < 0)
      {
        operator delete(v9[0]);
      }

      v4 = (v6 + 32);
    }

    while (v4 != v5);
  }
}

void quasar::PhonetisaurusP2WP::batchDoG2P()
{
  memset(v0, 0, sizeof(v0));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v0);
}

void quasar::PhonetisaurusP2WP::~PhonetisaurusP2WP(std::locale *this)
{
  quasar::PhonetisaurusG2P::~PhonetisaurusG2P(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::PhonetisaurusG2P::~PhonetisaurusG2P(std::locale *this)
{
  this->__locale_ = &unk_1F2D3A4C0;
  if (SHIBYTE(this[53].__locale_) < 0)
  {
    operator delete(this[51].__locale_);
  }

  locale = this[48].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  v3 = this[46].__locale_;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  quasar::QuasarG2PBase::~QuasarG2PBase(this);
}

void sub_1B5258AC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c57_ZTSNSt3__110shared_ptrIN6quasar20RecogAudioBufferBaseEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c57_ZTSNSt3__110shared_ptrIN6quasar20RecogAudioBufferBaseEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

void _ZNSt3__110__function6__funcIZZ71___EARSpeechRecognitionAudioBuffer_addAudio2SampleData_withCompletion__EUb_E3__0NS_9allocatorIS2_EEFvbEED0Ev(uint64_t a1)
{

  JUMPOUT(0x1B8C85350);
}

uint64_t _ZNKSt3__110__function6__funcIZZ71___EARSpeechRecognitionAudioBuffer_addAudio2SampleData_withCompletion__EUb_E3__0NS_9allocatorIS2_EEFvbEE7__cloneEPNS0_6__baseIS5_EE(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2D08648;
  result = MEMORY[0x1B8C868A0](*(a1 + 8));
  a2[1] = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZ71___EARSpeechRecognitionAudioBuffer_addAudio2SampleData_withCompletion__EUb_E3__0NS_9allocatorIS2_EEFvbEE18destroy_deallocateEv(id *a1)
{

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZZ71___EARSpeechRecognitionAudioBuffer_addAudio2SampleData_withCompletion__EUb_E3__0NS_9allocatorIS2_EEFvbEEclEOb(uint64_t a1, unsigned __int8 *a2)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(result + 16))(result, *a2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZ71___EARSpeechRecognitionAudioBuffer_addAudio2SampleData_withCompletion__EUb_E3__0NS_9allocatorIS2_EEFvbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ71___EARSpeechRecognitionAudioBuffer_addAudio2SampleData_withCompletion__EUb_E3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(BOOL)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
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

  return result;
}

void sub_1B5259850(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::shared_ptr<quasar::SyncSpeechRecognizer>::operator=[abi:ne200100]<quasar::SyncSpeechRecognizer,std::default_delete<quasar::SyncSpeechRecognizer>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<quasar::SyncSpeechRecognizer>::shared_ptr[abi:ne200100]<quasar::SyncSpeechRecognizer,std::default_delete<quasar::SyncSpeechRecognizer>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_1B5259D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v39 - 65) < 0)
  {
    operator delete(*(v39 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_1B5259FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v38 - 65) < 0)
  {
    operator delete(*(v38 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_1B525A4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  a19 = v34 - 144;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a19);
  a19 = v34 - 120;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a19);

  _Unwind_Resume(a1);
}

void sub_1B525A7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, char a14)
{
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a12);
  a12 = &a14;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void sub_1B525A96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  a12 = &a14;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void sub_1B525AAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, char a14)
{
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a12);
  a12 = &a14;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t *std::shared_ptr<quasar::SyncSpeechRecognizer>::shared_ptr[abi:ne200100]<quasar::SyncSpeechRecognizer,std::default_delete<quasar::SyncSpeechRecognizer>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<quasar::SyncSpeechRecognizer  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::SyncSpeechRecognizer  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::SyncSpeechRecognizer  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void quasar::TextEmbedder::createTextEmbedder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    if (!a3)
    {
      operator new();
    }

    memset(v5, 0, sizeof(v5));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Unrecognized EuclidEncoderType:", 31);
    MEMORY[0x1B8C84C00](v4, a3);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v5);
  }

  operator new();
}

void quasar::TextEmbedder::TextEmbedder(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = &unk_1F2D08738;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = -1;
  *(a1 + 128) = -1;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>((a1 + 200), " ");
  *(a1 + 224) = 0;
  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = *(a3 + 8);
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v6 + 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    memmove(p_p, v8, v6);
  }

  *(&p_p->__r_.__value_.__l.__data_ + v6) = 46;
  quasar::SystemConfig::setPrefix(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::TextEmbedder::registerParams(a1, a2);
  quasar::SystemConfig::readPtree(a2, a3);
}

void sub_1B525AF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 223) < 0)
  {
    operator delete(*(v14 + 200));
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v14 + 160);
  if (*(v14 + 159) < 0)
  {
    operator delete(*v16);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v15);
  if (*(v14 + 71) < 0)
  {
    operator delete(*(v14 + 48));
  }

  if (*(v14 + 47) < 0)
  {
    operator delete(*(v14 + 24));
  }

  v18 = *(v14 + 16);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void quasar::TextEmbedder::registerParams(quasar::TextEmbedder *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Euclid model file");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 24, __p, 1, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "string-id-mapping-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "String to Id mapping file");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 48, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "byte-input");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, the model can take each value of byte from string as input. Otherwise, a string-id-mapping-file is required.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 72, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-input-length");
  std::string::basic_string[abi:ne200100]<0>(__p, "The length limit on the input substr. (Default = -1; enabled if >= 0)");
  quasar::SystemConfig::Register<int>(a2, v6, this + 120, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "accepted-chars-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Json array file with characters that Euclid model supports");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 136, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "blank-string");
  std::string::basic_string[abi:ne200100]<0>(__p, "For grapheme model only: At the end of preprocessing, empty text is replaced by this string (default is  ).");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 200, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "pad-block-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "If > 0, pad the string to the closest multiple of padSize.");
  quasar::SystemConfig::Register<int>(a2, v6, this + 224, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "pad-id");
  std::string::basic_string[abi:ne200100]<0>(__p, "The padding token ID used for padding.(Default = 0)");
  quasar::SystemConfig::Register<int>(a2, v6, this + 228, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B525B39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::TextEmbedder::init(quasar::TextEmbedder *this, quasar::SystemConfig *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  ModelLoaderPtr = quasar::SystemConfig::getModelLoaderPtr(a2);
  v4 = *ModelLoaderPtr;
  v5 = ModelLoaderPtr[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = 0;
  v16 = 0;
  LOBYTE(__p[0]) = 0;
  BYTE8(v18) = 0;
  quasar::ModelLoader::readNeuralNetwork(v4, this + 3, 1, 0, 0, &v15, __p, v14);
  v6 = v14[0];
  v14[0] = 0uLL;
  v7 = *(this + 2);
  *(this + 8) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    if (*(&v14[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14[0] + 1));
    }
  }

  if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (!*(this + 1))
  {
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
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    *__p = 0u;
    v18 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Failed to load Euclid model: ", 29);
    v11 = *(this + 47);
    if (v11 >= 0)
    {
      v12 = this + 24;
    }

    else
    {
      v12 = *(this + 3);
    }

    if (v11 >= 0)
    {
      v13 = *(this + 47);
    }

    else
    {
      v13 = *(this + 4);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  v8 = *(this + 71);
  if (v8 < 0)
  {
    if (*(this + 7))
    {
      goto LABEL_17;
    }
  }

  else if (*(this + 71))
  {
    goto LABEL_17;
  }

  if ((*(this + 72) & 1) == 0)
  {
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
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    *__p = 0u;
    v18 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Need string-id-mapping-file if model doesn't support byte inpute(byte-input = false)", 84);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

LABEL_17:
  if ((v8 & 0x80000000) != 0)
  {
    v9 = *(this + 7);
  }

  else
  {
    v9 = *(this + 71);
  }

  if (v9)
  {
    if (*(this + 72))
    {
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
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      *__p = 0u;
      v18 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "string-id-mapping-file and byte-input can not be enabled at the same time", 73);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }
  }

  else if (*(this + 72))
  {
    goto LABEL_29;
  }

  if ((v8 & 0x80000000) != 0)
  {
    if (!*(this + 7))
    {
      goto LABEL_29;
    }

LABEL_28:
    quasar::PTree::PTree(__p);
    quasar::PTree::readJsonFromFile();
  }

  if (*(this + 71))
  {
    goto LABEL_28;
  }

LABEL_29:
  if ((*(this + 159) & 0x8000000000000000) != 0)
  {
    if (!*(this + 18))
    {
      goto LABEL_35;
    }
  }

  else if (!*(this + 159))
  {
    goto LABEL_35;
  }

  if (*(this + 72) == 1)
  {
    quasar::PTree::PTree(v14);
    quasar::PTree::readJsonFromFile();
  }

LABEL_35:
  *(this + 31) = (*(**(this + 1) + 40))(*(this + 1));
  *(this + 32) = (*(**(this + 1) + 48))(*(this + 1));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1B525B904(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B525B99CLL);
}

void sub_1B525B918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a31 == 1 && a30 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

void sub_1B525B948(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B525B958(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&a28);
  JUMPOUT(0x1B525B97CLL);
}

void quasar::TextEmbedder::computeTextEmbeddingVector(_DWORD *a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2[1] - *a2) >> 2;
  v7 = a1[56];
  if (v7 >= 1 && v6 >= 1)
  {
    v6 = (v7 + v6 - 1) / v7 * v7;
  }

  v9 = a1[32];
  v10 = v9 < 1 || v6 <= v9;
  if (v10 && (v9 = v6, v6 <= 0))
  {

    kaldi::CuVector<float>::Resize(a3, 0, 0);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v24 = &unk_1F2D3AC18;
    kaldi::CuVector<float>::Resize(&v24, v9, 0);
    v12 = *a2;
    v13 = (a2[1] - *a2) >> 2;
    if (v9 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v9;
    }

    if (v14 >= 1)
    {
      v15 = 0;
      v16 = v25;
      do
      {
        *(v16 + 4 * v15) = *(v12 + 4 * v15);
        ++v15;
      }

      while (v14 != v15);
    }

    if (v9 > v13)
    {
      v17 = 0;
      v18 = (v9 + ~v13);
      *v11.i32 = a1[57];
      v19 = vdupq_n_s64(v18);
      v20 = (v18 + 4) & 0x1FFFFFFFCLL;
      v21 = (v25 + 4 * v13 + 8);
      do
      {
        v22 = vdupq_n_s64(v17);
        v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1B5AE0060)));
        if (vuzp1_s16(v23, v11).u8[0])
        {
          *(v21 - 2) = v11.i32[0];
        }

        if (vuzp1_s16(v23, v11).i8[2])
        {
          *(v21 - 1) = v11.i32[0];
        }

        if (vuzp1_s16(v11, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1B5AE0050)))).i32[1])
        {
          *v21 = v11.i32[0];
          v21[1] = v11.i32[0];
        }

        v17 += 4;
        v21 += 4;
      }

      while (v20 != v17);
    }

    quasar::TextEmbedder::computeTextEmbeddingVector(a1, &v24, a3);
    kaldi::CuVector<float>::~CuVector(&v24);
  }
}

void quasar::TextEmbedder::computeTextEmbeddingVector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuVector<float>::Resize(a3, 0, 0);
  v6 = *(a2 + 16);
  if (v6)
  {
    v14 = 0u;
    v13 = 0u;
    v12 = &unk_1F2D0EE38;
    v15 = 0;
    v10 = 0u;
    v9 = 0u;
    v8 = &unk_1F2D0EE38;
    v11 = 0;
    kaldi::CuMatrix<float>::Resize(&v12, 1, v6, 0, 0);
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(&v12, a2);
    quasar::TextEmbedder::computeTextEmbeddingMatrix(a1, &v12, &v8);
    if (SHIDWORD(v9) >= 1)
    {
      v7[1] = v9;
      v7[0] = &unk_1F2CFCA48;
      v7[2] = DWORD2(v9);
      v7[3] = *(&v10 + 1);
      kaldi::CuVector<float>::operator=(a3, v7);
    }

    kaldi::CuMatrix<float>::~CuMatrix(&v8);
    kaldi::CuMatrix<float>::~CuMatrix(&v12);
  }
}

void sub_1B525BCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void quasar::TextEmbedder::computeTextEmbeddingVector(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    (*(*a1 + 24))(__p);
    quasar::TextEmbedder::computeTextEmbeddingVector(a1, __p, a3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {

    kaldi::CuVector<float>::Resize(a3, 0, 0);
  }
}

void sub_1B525BDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::TextEmbedder::computeTextEmbeddingMatrix(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  if (*(a2 + 20))
  {
    v3 = *(a2 + 16) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    kaldi::CuMatrix<float>::Resize(a3, 0, 0, 0, 0);
  }

  else
  {
    (*(**(a1 + 8) + 96))();
  }
}

void quasar::GraphemeTextEmbedder::preprocessInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *MEMORY[0x1E69E9840];
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

  operator new();
}

void sub_1B525C0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&a21);
  _Unwind_Resume(a1);
}

void std::basic_string<char32_t>::reserve(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __requested_capacity)
{
  if (__requested_capacity >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v3 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v3 = 4;
  }

  if (v3 < __requested_capacity)
  {
    v4 = __requested_capacity | 1;
    if ((__requested_capacity | 1) == 5)
    {
      v4 = 6;
    }

    if (__requested_capacity <= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = v4;
    }

    std::basic_string<char32_t>::__shrink_or_extend(this, v5);
  }
}

void std::basic_string<char32_t>::push_back(std::basic_string<char32_t> *this, std::basic_string<char32_t>::value_type __c)
{
  v3 = this;
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&this->__r_.__value_.__s + 23) != 4)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
      *(&this->__r_.__value_.__s + 23) = (*(&this->__r_.__value_.__s + 23) + 1) & 0x7F;
      goto LABEL_8;
    }

    v4 = 4;
    goto LABEL_5;
  }

  size = this->__r_.__value_.__l.__size_;
  v4 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (size == v4)
  {
LABEL_5:
    std::basic_string<char32_t>::__grow_by(this, v4, 1uLL, v4, v4, 0, 0);
    size = v4;
  }

  v3->__r_.__value_.__l.__size_ = size + 1;
  v3 = v3->__r_.__value_.__r.__words[0];
LABEL_8:
  v6 = (v3 + 4 * size);
  *v6 = __c;
  v6[1] = 0;
}

std::basic_string<char32_t> *__cdecl std::basic_string<char32_t>::operator=(std::basic_string<char32_t> *this, const std::basic_string<char32_t> *__str)
{
  if (this != __str)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      size = __str->__r_.__value_.__l.__size_;
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      }

      else
      {
        __str = __str->__r_.__value_.__r.__words[0];
        v4 = size;
      }

      return std::basic_string<char32_t>::__assign_no_alias<false>(this, __str, v4);
    }

    else if ((*(&__str->__r_.__value_.__s + 23) & 0x80) != 0)
    {
      return std::basic_string<char32_t>::__assign_no_alias<true>(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v2 = *&__str->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v2;
    }
  }

  return this;
}

void quasar::GraphemeTextEmbedder::returnVectorOfInts(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *(a2 + 23);
  v5 = a2[1];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(a2 + 23);
  }

  if (v5)
  {
    v8 = 0;
    v9 = v4 >> 63;
    do
    {
      if (*(a1 + 72) == 1)
      {
        if (v9)
        {
          v10 = *a2;
        }

        else
        {
          v10 = a2;
        }

        v11 = *(v10 + v8);
        v13 = *(a3 + 8);
        v12 = *(a3 + 16);
        if (v13 >= v12)
        {
          v18 = *a3;
          v19 = v13 - *a3;
          v20 = v19 >> 2;
          v21 = (v19 >> 2) + 1;
          if (v21 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v22 = v12 - v18;
          if (v22 >> 1 > v21)
          {
            v21 = v22 >> 1;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v23 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a3, v23);
          }

          *(4 * v20) = v11;
          v14 = 4 * v20 + 4;
          memcpy(0, v18, v19);
          v24 = *a3;
          *a3 = 0;
          *(a3 + 8) = v14;
          *(a3 + 16) = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v13 = v11;
          v14 = (v13 + 1);
        }

        *(a3 + 8) = v14;
      }

      else if (*(a1 + 104))
      {
        if (v9)
        {
          v15 = *a2;
        }

        else
        {
          v15 = a2;
        }

        v16 = *(v15 + v8);
        v27 = 1;
        LOWORD(__p[0]) = v16;
        if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 80), __p))
        {
          v28 = __p;
          v17 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), __p);
          std::vector<int>::push_back[abi:ne200100](a3, v17 + 10);
        }

        if (v27 < 0)
        {
          operator delete(__p[0]);
        }
      }

      ++v8;
      v25 = *(a2 + 23);
      v9 = v25 >> 63;
      if ((v25 & 0x80000000) != 0)
      {
        v25 = a2[1];
      }
    }

    while (v25 > v8);
  }
}

void sub_1B525C450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PhonemeTextEmbedder::init(quasar::PhonemeTextEmbedder *this, quasar::SystemConfig *a2)
{
  quasar::TextEmbedder::init(this, a2);
  v3 = *(this + 71);
  if (v3 < 0)
  {
    v3 = *(this + 7);
  }

  if (!v3)
  {
    memset(v4, 0, sizeof(v4));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Missing string-id-mapping-file for PhonemeTextEmbedder");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v4);
  }
}

void quasar::PhonemeTextEmbedder::preprocessInput(uint64_t a1, const std::string *a2, uint64_t a3)
{
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

  memset(&v12, 0, sizeof(v12));
  kaldi::SplitStringToVector(a2, " ", 1, &v12);
  v5 = *(a1 + 120);
  if ((v5 & 0x80000000) == 0)
  {
    begin = v12.__begin_;
    if (0xAAAAAAAAAAAAAAABLL * ((v12.__end_ - v12.__begin_) >> 3) > v5)
    {
      if (v12.__end_ == v12.__begin_)
      {
        v11 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        do
        {
          if (v9 >= *(a1 + 120))
          {
            break;
          }

          if (*(a1 + 104))
          {
            v10 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 80), &begin[v7].__r_.__value_.__l.__data_);
            begin = v12.__begin_;
            if (v10)
            {
              std::string::operator=(&v12.__begin_[v9++], &v12.__begin_[v7]);
              begin = v12.__begin_;
            }
          }

          ++v8;
          ++v7;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v12.__end_ - begin) >> 3) > v8);
        v11 = v9;
      }

      std::vector<std::string>::resize(&v12, v11);
    }
  }

  kaldi::JoinVectorToString(&v12, " ", 1, a3);
  v13 = &v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_1B525C684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void quasar::PhonemeTextEmbedder::returnVectorOfInts(uint64_t a1@<X0>, const std::string *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  kaldi::SplitStringToVector(a2, " ", 1, &v10);
  v5 = v10;
  if (v11 != v10)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(a1 + 104))
      {
        v8 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 80), (v5 + v6));
        v5 = v10;
        if (v8)
        {
          v13 = v10 + v6;
          v9 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), (v10 + v6));
          std::vector<int>::push_back[abi:ne200100](a3, v9 + 10);
          v5 = v10;
        }
      }

      ++v7;
      v6 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v11 - v5) >> 3) > v7);
  }

  v14 = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
}

void sub_1B525C7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void quasar::GraphemeTextEmbedder::~GraphemeTextEmbedder(void **this)
{
  quasar::TextEmbedder::~TextEmbedder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::PhonemeTextEmbedder::~PhonemeTextEmbedder(void **this)
{
  quasar::TextEmbedder::~TextEmbedder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::TextEmbedder::~TextEmbedder(void **this)
{
  *this = &unk_1F2D08738;
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((this + 20));
  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((this + 10));
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::basic_string<char32_t>::__shrink_or_extend(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __target_capacity)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v6 = this->__r_.__value_.__r.__words[2];
    v4 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v5 = HIBYTE(v6);
  }

  else
  {
    v4 = 4;
    LOBYTE(v5) = *(&this->__r_.__value_.__s + 23);
  }

  v7 = __target_capacity < 5;
  if (__target_capacity >= 5)
  {
    if (v4 < __target_capacity)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __target_capacity + 1);
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __target_capacity + 1);
  }

  v8 = this->__r_.__value_.__r.__words[0];
  if ((v5 & 0x80) != 0)
  {
    v5 = this->__r_.__value_.__l.__size_;
    v7 = 1;
  }

  else
  {
    v5 = v5;
  }

  v9 = __CFADD__(v5, 1);
  v10 = v5 + 1;
  if (!v9)
  {
    memmove(this, v8, 4 * v10);
  }

  if (v7)
  {
    operator delete(v8);
  }

  *(&this->__r_.__value_.__s + 23) = size & 0x7F;
}

void sub_1B525CA64(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

std::basic_string<char32_t> *std::basic_string<char32_t>::__assign_no_alias<true>(std::basic_string<char32_t> *__dst, const std::basic_string<char32_t>::value_type *__src, std::basic_string<char32_t>::size_type __n_add)
{
  v5 = __n_add > 4;
  v6 = __n_add - 4;
  if (v5)
  {
    std::basic_string<char32_t>::__grow_by_and_replace(__dst, 4uLL, v6, *(&__dst->__r_.__value_.__s + 23) & 0x7F, 0, *(&__dst->__r_.__value_.__s + 23) & 0x7F, __n_add, __src);
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __n_add;
    if (__n_add)
    {
      memmove(__dst, __src, 4 * __n_add);
    }

    __dst->__r_.__value_.__s.__data_[__n_add] = 0;
  }

  return __dst;
}

std::basic_string<char32_t> *std::basic_string<char32_t>::__assign_no_alias<false>(std::basic_string<char32_t> *this, const std::basic_string<char32_t>::value_type *__src, std::basic_string<char32_t>::size_type __n_add)
{
  v5 = this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __n_add)
  {
    std::basic_string<char32_t>::__grow_by_and_replace(this, v5 - 1, __n_add - v5 + 1, this->__r_.__value_.__l.__size_, 0, this->__r_.__value_.__l.__size_, __n_add, __src);
  }

  else
  {
    v6 = this->__r_.__value_.__r.__words[0];
    this->__r_.__value_.__l.__size_ = __n_add;
    if (__n_add)
    {
      memmove(v6, __src, 4 * __n_add);
    }

    *(v6 + __n_add) = 0;
  }

  return this;
}

uint64_t quasar::OptionValueBase::enforceMinVersion(uint64_t this, const quasar::SystemConfig *a2)
{
  v2 = (this + 32);
  if (*(this + 55) < 0)
  {
    if (!*(this + 40))
    {
      return this;
    }

    v3 = *v2;
  }

  else
  {
    v3 = (this + 32);
    if (!*(this + 55))
    {
      return this;
    }
  }

  if (*v3 != 60)
  {
    return quasar::SystemConfig::enforceMinVersion(a2, *(this + 80), 0, v2);
  }

  return this;
}

void quasar::OptionValueBase::setContextProvider(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 96);
  *(a1 + 88) = v3;
  *(a1 + 96) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void quasar::OptionsBase::update(void (***a1)(void **__return_ptr), uint64_t a2, uint64_t a3)
{
  (**a1)(&__p);
  v5 = __p;
  v6 = v8;
  if (__p != v8)
  {
    do
    {
      (*(**v5 + 8))(*v5, a2, a3);
      ++v5;
    }

    while (v5 != v6);
    v5 = __p;
  }

  if (v5)
  {
    v8 = v5;
    operator delete(v5);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "overrides");
  quasar::PTree::getChildOptional(a2, &__p);
}

void sub_1B525CDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OptionsBase::debugLog(void (***a1)(void **__return_ptr, void), uint64_t a2)
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v5, v6);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v18);
  }

  (**a1)(&v16, a1);
  v7 = v16;
  v8 = v17;
  if (v16 != v17)
  {
    v9 = quasar::gLogLevel;
    do
    {
      if (v9 >= 5)
      {
        v10 = *v7;
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
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "    ", 4);
        (*(*v10 + 16))(__p, v10);
        if ((v15 & 0x80u) == 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if ((v15 & 0x80u) == 0)
        {
          v13 = v15;
        }

        else
        {
          v13 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v18);
        v9 = quasar::gLogLevel;
      }

      ++v7;
    }

    while (v7 != v8);
    v7 = v16;
  }

  if (v7)
  {
    v17 = v7;
    operator delete(v7);
  }
}

void quasar::OptionsBase::enforceMinVersion(quasar::OptionsBase *this, const quasar::SystemConfig *a2)
{
  (**this)(&ConfigFileVersion);
  v4 = ConfigFileVersion;
  v5 = v7;
  if (ConfigFileVersion != v7)
  {
    do
    {
      (***v4)(*v4, a2);
      ++v4;
    }

    while (v4 != v5);
    v4 = ConfigFileVersion;
  }

  if (v4)
  {
    v7 = v4;
    operator delete(v4);
  }

  if (*(a2 + 388))
  {
    ConfigFileVersion = quasar::SystemConfig::getConfigFileVersion(a2);
    *(this + 2) = kaldi::quasar::Vocab::VocabSize(&ConfigFileVersion);
  }
}

void sub_1B525D0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::ProcessingConnection::ProcessingConnection(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v6;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    *(a1 + 48) = *(a4 + 2);
    *(a1 + 32) = v7;
  }

  return a1;
}

void sub_1B525D19C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingBlock::~ProcessingBlock(char **this)
{
  *this = &unk_1F2D08820;
  v2 = (this + 4);
  std::vector<quasar::ProcessingConnection>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::string>::destroy((this + 1), this[2]);
}

uint64_t quasar::ProcessingBlock::connectOutput(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = *a2;
  if (v5 + 16 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(*a2 + 8, (a2 + 8)))
  {
    memset(v9, 0, sizeof(v9));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Multiple connections to receiving block input name: ", 52);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8, v4);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v9);
  }

  std::vector<quasar::ProcessingConnection>::push_back[abi:ne200100]((a1 + 32), a2);
  v6 = *a2 + 8;

  return std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v6, v4);
}

uint64_t std::vector<quasar::ProcessingConnection>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::ProcessingConnection>::__emplace_back_slow_path<quasar::ProcessingConnection const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::ProcessingConnection>::__construct_one_at_end[abi:ne200100]<quasar::ProcessingConnection const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void quasar::ProcessingBlock::connectOutput(quasar::ProcessingBlock *this, quasar::ProcessingBlock *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "in");
  std::string::basic_string[abi:ne200100]<0>(v4, "out");
  quasar::ProcessingConnection::ProcessingConnection(v8, a2, v6, v4);
  quasar::ProcessingBlock::connectOutput(this, v8);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B525D400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22)
{
  fst::FstHeader::~FstHeader(&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void quasar::ProcessingBlock::disconnectOutput(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v2 = a1 + 32;
  if (v3 != v4)
  {
    v5 = 0;
    v6 = *a2;
    v7 = *(a2 + 31);
    if (v7 >= 0)
    {
      v8 = *(a2 + 31);
    }

    else
    {
      v8 = a2[2];
    }

    if (v7 >= 0)
    {
      v9 = a2 + 1;
    }

    else
    {
      v9 = a2[1];
    }

    v10 = *(a2 + 55);
    v11 = v10 < 0;
    if (v10 >= 0)
    {
      v12 = *(a2 + 55);
    }

    else
    {
      v12 = a2[5];
    }

    v15 = a2[4];
    v13 = a2 + 4;
    v14 = v15;
    if (v11)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    while (1)
    {
      v17 = *(v3 + v5);
      if (v17 == v6)
      {
        v18 = v3 + v5;
        v19 = *(v3 + v5 + 31);
        v20 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v3 + v5 + 16);
        }

        if (v19 == v8)
        {
          v23 = *(v18 + 8);
          v21 = v18 + 8;
          v22 = v23;
          v24 = (v20 >= 0 ? v21 : v22);
          if (!memcmp(v24, v9, v8))
          {
            v25 = v3 + v5;
            v26 = *(v3 + v5 + 55);
            v27 = v26;
            if ((v26 & 0x80u) != 0)
            {
              v26 = *(v3 + v5 + 40);
            }

            if (v26 == v12)
            {
              v30 = *(v25 + 32);
              v28 = v25 + 32;
              v29 = v30;
              v31 = (v27 >= 0 ? v28 : v29);
              if (!memcmp(v31, v16, v12))
              {
                break;
              }
            }
          }
        }
      }

      v5 += 56;
      if (v3 + v5 == v4)
      {
        return;
      }
    }

    std::__tree<std::string>::__erase_unique<std::string>((v17 + 8), (v3 + v5 + 8));
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::ProcessingConnection *,quasar::ProcessingConnection *,quasar::ProcessingConnection *>(&v36, v3 + v5 + 56, *(a1 + 40), v3 + v5);
    v33 = v32;
    v34 = *(a1 + 40);
    if (v34 != v32)
    {
      do
      {
        v34 -= 56;
        std::allocator<quasar::ProcessingConnection>::destroy[abi:ne200100](v2, v34);
      }

      while (v34 != v33);
    }

    *(a1 + 40) = v33;
  }
}

void quasar::ProcessingBlock::disconnectOutput(quasar::ProcessingBlock *this, quasar::ProcessingBlock *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "in");
  std::string::basic_string[abi:ne200100]<0>(v4, "out");
  quasar::ProcessingConnection::ProcessingConnection(v8, a2, v6, v4);
  quasar::ProcessingBlock::disconnectOutput(this, v8);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8[1]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B525D678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22)
{
  fst::FstHeader::~FstHeader(&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::ProcessingBlock::send(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v6 = result;
  v7 = *(result + 32);
  v8 = *(result + 40);
  if (v7 == v8)
  {
    goto LABEL_19;
  }

  v10 = 0;
  v11 = v7 + 32;
  do
  {
    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = *(v11 + 23);
    }

    else
    {
      v13 = *(v11 + 8);
    }

    v14 = *(a2 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a2 + 8);
    }

    if (v13 == v14)
    {
      v16 = v12 >= 0 ? v11 : *v11;
      v17 = v15 >= 0 ? a2 : *a2;
      result = memcmp(v16, v17, v13);
      if (!result)
      {
        v18 = *(v11 - 32);
        quasar::ProcessingBlock::ensureInitialized(v18);
        result = (*(*v18 + 80))(v18, v11 - 24, a3);
        v10 = 1;
      }
    }

    v19 = v11 + 24;
    v11 += 56;
  }

  while (v19 != v8);
  if ((v10 & 1) == 0)
  {
LABEL_19:
    if ((a4 & 1) == 0)
    {
      memset(v29, 0, sizeof(v29));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "output port ", 12);
      v21 = (*(*v6 + 16))(v6);
      v22 = strlen(v21);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ":", 1);
      v25 = *(a2 + 23);
      if (v25 >= 0)
      {
        v26 = a2;
      }

      else
      {
        v26 = *a2;
      }

      if (v25 >= 0)
      {
        v27 = *(a2 + 23);
      }

      else
      {
        v27 = *(a2 + 8);
      }

      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v28, " not connected");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v29);
    }
  }

  return result;
}

uint64_t quasar::ProcessingBlock::receive(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  quasar::ProcessingBlock::ensureInitialized(a1);
  v6 = *(*a1 + 80);

  return v6(a1, a2, a3);
}

void quasar::ProcessingBlock::send(uint64_t a1, uint64_t a2, char a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "out");
  quasar::ProcessingBlock::send(a1, __p, a2, a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B525D990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *quasar::ProcessingBlock::ensureInitialized(_BYTE *this)
{
  if (this[56] == 1)
  {
    v1 = this;
    v2 = (*(*this + 88))(this);
    if (v2)
    {
      v3 = v2;
      v4 = (*(*v1 + 16))(v1);
      std::string::basic_string[abi:ne200100]<0>(&v7, v4);
      v5 = std::string::append(&v7, " Config:");
      v6 = *&v5->__r_.__value_.__l.__data_;
      v9 = v5->__r_.__value_.__r.__words[2];
      *__p = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      (*(*v3 + 8))(v3, __p);
      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v7.__r_.__value_.__l.__data_);
      }
    }

    this = (*(*v1 + 72))(v1);
    v1[56] = 0;
  }

  return this;
}

void sub_1B525DAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
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

void quasar::ProcessingBlock::receive(_BYTE *a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "in");
  quasar::ProcessingBlock::ensureInitialized(a1);
  (*(*a1 + 80))(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B525DB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void (***quasar::ProcessingBlock::updateConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **__return_ptr)
{
  result = (*(*a1 + 88))(a1);
  if (result)
  {
    quasar::OptionsBase::update(result, a3, a4);
  }

  return result;
}

void quasar::MultiInputProcessingBlock::process(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 16))(&v15);
  v6 = v15;
  v7 = v16;
  v8 = 1;
  if (v15 != v16)
  {
    do
    {
      v9 = *v6;
      quasar::ProcessingInput::setValue(*v6, a2, a3);
      v8 &= *(v9 + 24);
      ++v6;
    }

    while (v6 != v7);
    v6 = v15;
  }

  if (v6)
  {
    v16 = v6;
    operator delete(v6);
  }

  if (v8)
  {
    (*(*a1 + 8))(a1);
    (*(*a1 + 16))(&v13, a1);
    v10 = v13;
    v11 = v14;
    if (v13 != v14)
    {
      do
      {
        v12 = *v10++;
        std::vector<quasar::TranslationPhraseInternal>::__vdeallocate((v12 + 32));
        *(v12 + 32) = 0;
        *(v12 + 40) = 0;
        *(v12 + 48) = 0;
        v16 = 0;
        v17 = 0;
        v15 = 0;
        v18 = &v15;
        std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v18);
        *(v12 + 24) = 0;
      }

      while (v10 != v11);
      v10 = v13;
    }

    if (v10)
    {
      v14 = v10;
      operator delete(v10);
    }
  }
}

void sub_1B525DDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingInput::setValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a1 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  if (v5 == v6)
  {
    v10 = v4 >= 0 ? a2 : *a2;
    v11 = v7 >= 0 ? a1 : *a1;
    if (!memcmp(v10, v11, v5))
    {
      if (*(a1 + 24) == 1 && quasar::gLogLevel >= 1)
      {
        memset(v17, 0, sizeof(v17));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Input '", 7);
        v13 = *(a2 + 23);
        if (v13 >= 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = *a2;
        }

        if (v13 >= 0)
        {
          v15 = *(a2 + 23);
        }

        else
        {
          v15 = *(a2 + 8);
        }

        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "' set multiple times!", 21);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(v17);
      }

      if (a1 + 32 != a3)
      {
        std::vector<quasar::TranslationPhraseInternal>::__assign_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>((a1 + 32), *a3, *(a3 + 8), 0xF83E0F83E0F83E1 * ((*(a3 + 8) - *a3) >> 3));
      }

      *(a1 + 24) = 1;
    }
  }
}

void quasar::MultiInputProcessingBlock::checkInputsSet(quasar::MultiInputProcessingBlock *this)
{
  memset(v39, 0, 24);
  (*(*this + 16))(&v36);
  v2 = v36;
  v3 = v37;
  if (v36 == v37)
  {
    v10 = 1;
    if (v36)
    {
LABEL_10:
      v37 = v2;
      operator delete(v2);
    }
  }

  else
  {
    v4 = 1;
    v5 = 1;
    do
    {
      v6 = v5;
      v7 = v4;
      v8 = *v2;
      v9 = *(*v2 + 24);
      if ((v9 & 1) == 0)
      {
        std::vector<std::string>::push_back[abi:ne200100](v39, *v2);
      }

      v4 &= v9;
      v5 &= v9 ^ 1;
      std::vector<quasar::TranslationPhraseInternal>::__vdeallocate(v8 + 4);
      v8[4] = 0;
      v8[5] = 0;
      v8[6] = 0;
      *&v20 = 0;
      v19 = 0uLL;
      v18[0] = &v19;
      std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](v18);
      *(v8 + 24) = 0;
      ++v2;
    }

    while (v2 != v3);
    v2 = v36;
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    if (v36)
    {
      goto LABEL_10;
    }
  }

  if ((v10 & 1) == 0)
  {
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
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "Missing input(s) for ", 21);
    v12 = (*(*(this + *(*this - 24)) + 16))(this + *(*this - 24));
    v13 = strlen(v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ": ", 2);
    v18[0] = ", ";
    v18[1] = 2;
    quasar::join<std::vector<std::string>>(v39, v18);
    if ((v38 & 0x80u) == 0)
    {
      v16 = &v36;
    }

    else
    {
      v16 = v36;
    }

    if ((v38 & 0x80u) == 0)
    {
      v17 = v38;
    }

    else
    {
      v17 = v37;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
    if (v38 < 0)
    {
      operator delete(v36);
    }

    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v19);
  }

  *&v19 = v39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
}

void sub_1B525E1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  a11 = (v11 - 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t quasar::MultiInputProcessingBlock::checkInputsConnected(uint64_t a1, uint64_t a2)
{
  v55[0] = 0;
  v55[1] = 0;
  v54 = v55;
  (*(*a1 + 16))(&v52);
  v4 = v52;
  v5 = v53;
  if (v52 == v53)
  {
    v6 = 0;
    if (v52)
    {
LABEL_21:
      v53 = v4;
      operator delete(v4);
    }
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v54, *v4);
      if (a1 + 16 + *(*a1 - 24) == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 8 + *(*a1 - 24), v7))
      {
        if (quasar::gLogLevel >= 1)
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
          v35 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
          v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "Block '", 7);
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

          v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "' - required input not connected: '", 35);
          v14 = *(v7 + 23);
          if (v14 >= 0)
          {
            v15 = v7;
          }

          else
          {
            v15 = *v7;
          }

          if (v14 >= 0)
          {
            v16 = *(v7 + 23);
          }

          else
          {
            v16 = v7[1];
          }

          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "'", 1);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(&v35);
        }

        v6 = (v6 + 1);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v52;
    if (v52)
    {
      goto LABEL_21;
    }
  }

  v18 = a1 + *(*a1 - 24);
  v19 = *(v18 + 8);
  v20 = (v18 + 16);
  if (v19 != (v18 + 16))
  {
    do
    {
      if (v55 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v54, v19 + 4))
      {
        if (quasar::gLogLevel >= 1)
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
          v35 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "Block '", 7);
          v22 = *(a2 + 23);
          if (v22 >= 0)
          {
            v23 = a2;
          }

          else
          {
            v23 = *a2;
          }

          if (v22 >= 0)
          {
            v24 = *(a2 + 23);
          }

          else
          {
            v24 = *(a2 + 8);
          }

          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "' - nonexistent input connected: '", 34);
          v27 = *(v19 + 55);
          if (v27 >= 0)
          {
            v28 = (v19 + 4);
          }

          else
          {
            v28 = v19[4];
          }

          if (v27 >= 0)
          {
            v29 = *(v19 + 55);
          }

          else
          {
            v29 = v19[5];
          }

          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "'", 1);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(&v35);
        }

        v6 = (v6 + 1);
      }

      v31 = v19[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v19[2];
          v33 = *v32 == v19;
          v19 = v32;
        }

        while (!v33);
      }

      v19 = v32;
    }

    while (v32 != v20);
  }

  std::__tree<std::string>::destroy(&v54, v55[0]);
  return v6;
}

void std::vector<quasar::TranslationPhraseInternal>::__assign_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(uint64_t *a1, uint64_t *a2, quasar::TranslationPhraseInternal *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xF83E0F83E0F83E1 * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<quasar::TranslationPhraseInternal>::__vdeallocate(a1);
    if (a4 <= 0xF83E0F83E0F83ELL)
    {
      v9 = 0x1F07C1F07C1F07C2 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0xF83E0F83E0F83E1 * ((a1[2] - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
      {
        v10 = 0xF83E0F83E0F83ELL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::TranslationPhraseInternal>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xF83E0F83E0F83E1 * ((v11 - v8) >> 3) >= a4)
  {
    while (v6 != a3)
    {
      quasar::TranslationPhraseInternal::operator=(v8, v6);
      v6 += 33;
      v8 += 264;
    }

    std::vector<quasar::TranslationPhraseInternal>::__base_destruct_at_end[abi:ne200100](a1, v8);
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        quasar::TranslationPhraseInternal::operator=(v8, v14);
        v14 += 33;
        v8 += 264;
        v13 -= 264;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>,quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(a1, &v12[v6], a3, v11);
  }
}

void std::vector<quasar::TranslationPhraseInternal>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<quasar::TranslationPhraseInternal>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t quasar::TranslationPhraseInternal::operator=(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  if (a1 != a2)
  {
    std::vector<quasar::TranslationToken>::__assign_with_size[abi:ne200100]<quasar::TranslationToken*,quasar::TranslationToken*>(a1 + 16, a2[2], a2[3], 0x8E38E38E38E38E39 * ((a2[3] - a2[2]) >> 3));
  }

  std::string::operator=((a1 + 40), (a2 + 5));
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 64), (a2 + 8));
  std::__optional_storage_base<std::vector<quasar::AlternativeSelectionSpan>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<quasar::AlternativeSelectionSpan>,false> const&>(a1 + 96, (a2 + 12));
  v5 = *(a2 + 8);
  *(a1 + 143) = *(a2 + 143);
  *(a1 + 128) = v5;
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 152), a2[19], a2[20], (a2[20] - a2[19]) >> 2);
    std::vector<quasar::TranslationPhrase::SegmentInfo>::__assign_with_size[abi:ne200100]<quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*>((a1 + 176), a2[22], a2[23], (a2[23] - a2[22]) >> 6);
    std::vector<quasar::TranslationTokenInternal>::__assign_with_size[abi:ne200100]<quasar::TranslationTokenInternal*,quasar::TranslationTokenInternal*>(a1 + 200, a2[25], a2[26], 0xF0F0F0F0F0F0F0F1 * ((a2[26] - a2[25]) >> 3));
  }

  *(a1 + 224) = a2[28];
  std::string::operator=((a1 + 232), (a2 + 29));
  quasar::MetaInfo::operator=(a1 + 256, (a2 + 32));
  return a1;
}

void std::vector<quasar::TranslationToken>::__assign_with_size[abi:ne200100]<quasar::TranslationToken*,quasar::TranslationToken*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<quasar::TranslationToken>::__vdeallocate(a1);
    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
      {
        v10 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::TranslationToken>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::TranslationToken *,quasar::TranslationToken *,quasar::TranslationToken *>(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 72;
        std::allocator<quasar::TranslationToken>::destroy[abi:ne200100](a1, v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::TranslationToken *,quasar::TranslationToken *,quasar::TranslationToken *>(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationToken>,quasar::TranslationToken*,quasar::TranslationToken*,quasar::TranslationToken*>(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void std::vector<quasar::TranslationToken>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 72;
        std::allocator<quasar::TranslationToken>::destroy[abi:ne200100](a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<quasar::TranslationToken *,quasar::TranslationToken *,quasar::TranslationToken *>(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str != a3)
  {
    do
    {
      std::string::operator=(this, v5);
      LOWORD(this[1].__r_.__value_.__l.__data_) = v5[1].__r_.__value_.__l.__data_;
      if (this != v5)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&this[1].__r_.__value_.__l.__size_, v5[1].__r_.__value_.__l.__size_, v5[1].__r_.__value_.__r.__words[2], (v5[1].__r_.__value_.__r.__words[2] - v5[1].__r_.__value_.__l.__size_) >> 2);
      }

      size = v5[2].__r_.__value_.__l.__size_;
      LODWORD(this[2].__r_.__value_.__r.__words[2]) = v5[2].__r_.__value_.__r.__words[2];
      this[2].__r_.__value_.__l.__size_ = size;
      v5 += 3;
      this += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (this[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(this, a2);
    }
  }

  else if (this[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void std::__optional_storage_base<std::vector<quasar::AlternativeSelectionSpan>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<quasar::AlternativeSelectionSpan>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a2) >> 3);
      v5 = *a2;

      std::vector<quasar::AlternativeSelectionSpan>::__assign_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan*,quasar::AlternativeSelectionSpan*>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = a1;
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v6);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<quasar::AlternativeSelectionSpan>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan*,quasar::AlternativeSelectionSpan*>(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 24) = 1;
  }
}

void std::vector<quasar::AlternativeSelectionSpan>::__assign_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan*,quasar::AlternativeSelectionSpan*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<quasar::AlternativeSelectionSpan>::__vdeallocate(a1);
    if (a4 <= 0x666666666666666)
    {
      v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
      {
        v10 = 0x666666666666666;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::AlternativeSelectionSpan>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::AlternativeSelectionSpan *,quasar::AlternativeSelectionSpan *,quasar::AlternativeSelectionSpan *>(&v17, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v15 = v14 - 40;
        v18 = (v14 - 24);
        std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v18);
        v14 = v15;
      }

      while (v15 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::AlternativeSelectionSpan *,quasar::AlternativeSelectionSpan *,quasar::AlternativeSelectionSpan *>(&v16, a2, a2 + v11, v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan>,quasar::AlternativeSelectionSpan*,quasar::AlternativeSelectionSpan*,quasar::AlternativeSelectionSpan*>(a1, a2 + v11, a3, *(a1 + 8));
  }
}

void std::vector<quasar::AlternativeSelectionSpan>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 40;
        v6 = (v3 - 24);
        std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v6);
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<quasar::AlternativeSelectionSpan *,quasar::AlternativeSelectionSpan *,quasar::AlternativeSelectionSpan *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (v5 != a4)
      {
        std::vector<quasar::AlternativeSelectionSpan::Alternative>::__assign_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative*,quasar::AlternativeSelectionSpan::Alternative*>((a4 + 16), *(v5 + 16), *(v5 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 24) - *(v5 + 16)) >> 3));
      }

      v5 += 40;
      a4 += 40;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<quasar::AlternativeSelectionSpan::Alternative>::__assign_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative*,quasar::AlternativeSelectionSpan::Alternative*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<quasar::AlternativeSelectionSpan::Alternative>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::AlternativeSelectionSpan::Alternative>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative *,quasar::AlternativeSelectionSpan::Alternative *,quasar::AlternativeSelectionSpan::Alternative *>(&v17, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v15 = *(v14 - 16);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        v14 -= 24;
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative *,quasar::AlternativeSelectionSpan::Alternative *,quasar::AlternativeSelectionSpan::Alternative *>(&v16, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>,quasar::AlternativeSelectionSpan::Alternative*,quasar::AlternativeSelectionSpan::Alternative*,quasar::AlternativeSelectionSpan::Alternative*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<quasar::AlternativeSelectionSpan::Alternative>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<quasar::AlternativeSelectionSpan::Alternative>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative *,quasar::AlternativeSelectionSpan::Alternative *,quasar::AlternativeSelectionSpan::Alternative *>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      a4[2] = v5[2];
      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<quasar::TranslationPhrase::SegmentInfo>::__assign_with_size[abi:ne200100]<quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 6)
  {
    std::vector<quasar::TranslationPhrase::SegmentInfo>::__vdeallocate(a1);
    if (!(a4 >> 58))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 5;
      if (v9 >> 5 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFC0)
      {
        v11 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<quasar::TranslationPhrase::SegmentInfo>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 6)
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::TranslationPhrase::SegmentInfo *,quasar::TranslationPhrase::SegmentInfo *,quasar::TranslationPhrase::SegmentInfo *>(&v17, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v15 -= 8;
        std::allocator<quasar::TranslationPhrase::SegmentInfo>::destroy[abi:ne200100](a1, v15);
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::TranslationPhrase::SegmentInfo *,quasar::TranslationPhrase::SegmentInfo *,quasar::TranslationPhrase::SegmentInfo *>(&v16, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationPhrase::SegmentInfo>,quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void std::vector<quasar::TranslationPhrase::SegmentInfo>::__vdeallocate(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 8;
        std::allocator<quasar::TranslationPhrase::SegmentInfo>::destroy[abi:ne200100](a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<quasar::TranslationPhrase::SegmentInfo *,quasar::TranslationPhrase::SegmentInfo *,quasar::TranslationPhrase::SegmentInfo *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *(a4 + 7) = *(v5 + 7);
      *a4 = v7;
      if (v5 != a4)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a4 + 16), v5[2], v5[3], (v5[3] - v5[2]) >> 2);
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a4 + 40), v5[5], v5[6], (v5[6] - v5[5]) >> 2);
      }

      v5 += 8;
      a4 += 64;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<quasar::TranslationTokenInternal>::__assign_with_size[abi:ne200100]<quasar::TranslationTokenInternal*,quasar::TranslationTokenInternal*>(uint64_t a1, uint64_t a2, quasar::TranslationTokenInternal *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<quasar::TranslationTokenInternal>::__vdeallocate(a1);
    if (a4 <= 0x1E1E1E1E1E1E1E1)
    {
      v9 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
      {
        v10 = 0x1E1E1E1E1E1E1E1;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::TranslationTokenInternal>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xF0F0F0F0F0F0F0F1 * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *>(&v14, a2, a3, v8);
    std::vector<quasar::TranslationTokenInternal>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *>(&v13, a2, a2 + v11, v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal*,quasar::TranslationTokenInternal*,quasar::TranslationTokenInternal*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

void std::vector<quasar::TranslationTokenInternal>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<quasar::TranslationTokenInternal>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    std::string::operator=((a4 + v7), (a2 + v7));
    *(a4 + v7 + 24) = *(a2 + v7 + 24);
    if (a4 == a2)
    {
      v11 = *(v9 + 56);
      *(v8 + 64) = *(v9 + 64);
      *(v8 + 56) = v11;
      std::string::operator=((v8 + 72), (v9 + 72));
      *(v8 + 96) = *(v9 + 96);
    }

    else
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v8 + 32), *(v9 + 32), *(v9 + 40), (*(v9 + 40) - *(v9 + 32)) >> 2);
      v10 = *(v9 + 56);
      *(v8 + 64) = *(v9 + 64);
      *(v8 + 56) = v10;
      std::string::operator=((v8 + 72), (v9 + 72));
      *(v8 + 96) = *(v9 + 96);
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v8 + 104), *(v9 + 104), *(v9 + 112), (*(v9 + 112) - *(v9 + 104)) >> 2);
    }

    *(v8 + 128) = *(v9 + 128);
    v7 += 136;
  }

  while (v9 + 136 != v6);
  return v6;
}

void std::vector<quasar::ProcessingConnection>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<quasar::ProcessingConnection>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<quasar::ProcessingConnection>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void std::vector<quasar::ProcessingConnection>::__construct_one_at_end[abi:ne200100]<quasar::ProcessingConnection const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = (v4 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v7 = *(a2 + 32);
    *(v4 + 48) = *(a2 + 48);
    *(v4 + 32) = v7;
  }

  *(a1 + 8) = v4 + 56;
}

void sub_1B525F7AC(_Unwind_Exception *exception_object)
{
  if (*(v3 + 31) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::ProcessingConnection>::__emplace_back_slow_path<quasar::ProcessingConnection const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::ProcessingConnection>>(a1, v6);
  }

  v7 = 56 * v2;
  v18 = 0;
  v19 = 56 * v2;
  v20 = (56 * v2);
  v8 = 56 * v2;
  *v8 = *a2;
  v9 = (v8 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v10 = *(a2 + 8);
    v9->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v9->__r_.__value_.__l.__data_ = v10;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v11 = *(a2 + 32);
    *(v7 + 48) = *(a2 + 48);
    *(v7 + 32) = v11;
  }

  *&v20 = v20 + 56;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::ProcessingConnection>,quasar::ProcessingConnection*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<quasar::ProcessingConnection>::~__split_buffer(&v18);
  return v17;
}

void sub_1B525F958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v5 + 31) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<quasar::ProcessingConnection>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::ProcessingConnection>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::ProcessingConnection>,quasar::ProcessingConnection*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 8) = v8;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      v9 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 32) = v9;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<quasar::ProcessingConnection>::destroy[abi:ne200100](a1, v5);
      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::ProcessingConnection>,quasar::ProcessingConnection*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::ProcessingConnection>,quasar::ProcessingConnection*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::ProcessingConnection>,quasar::ProcessingConnection*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::ProcessingConnection>,quasar::ProcessingConnection*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 56;
      std::allocator<quasar::ProcessingConnection>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<quasar::ProcessingConnection>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::ProcessingConnection>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::ProcessingConnection>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<quasar::ProcessingConnection>::destroy[abi:ne200100](v4, i - 56);
  }
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::ProcessingConnection *,quasar::ProcessingConnection *,quasar::ProcessingConnection *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
      }

      v7 = *(v5 + 8);
      *(a4 + 24) = *(v5 + 24);
      *(a4 + 8) = v7;
      *(v5 + 31) = 0;
      *(v5 + 8) = 0;
      if (*(a4 + 55) < 0)
      {
        operator delete(*(a4 + 32));
      }

      v8 = *(v5 + 32);
      *(a4 + 48) = *(v5 + 48);
      *(a4 + 32) = v8;
      *(v5 + 55) = 0;
      *(v5 + 32) = 0;
      v5 += 56;
      a4 += 56;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1B525FD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  MEMORY[0x1B8C85350](v4, v5);
  _Unwind_Resume(a1);
}

uint64_t *quasar::tennessee::InsertOrDie<std::map<wchar_t,wchar_t>>(uint64_t a1, _DWORD *a2, int *a3)
{
  v4 = *a3;
  LODWORD(v8[0]) = *a2;
  DWORD1(v8[0]) = v4;
  result = std::__tree<std::__value_type<wchar_t,wchar_t>,std::__map_value_compare<wchar_t,std::__value_type<wchar_t,wchar_t>,std::less<wchar_t>,true>,std::allocator<std::__value_type<wchar_t,wchar_t>>>::__emplace_unique_key_args<wchar_t,std::pair<wchar_t const,wchar_t> const&>(a1, v8);
  if ((v6 & 1) == 0)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "duplicate key ", 14);
    MEMORY[0x1B8C84C00](v7, *a2);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
  }

  return result;
}

uint64_t *std::unique_ptr<std::map<wchar_t,wchar_t>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<int>::destroy(v2, *(v2 + 8));
    MEMORY[0x1B8C85350](v2, 0x1020C4062D53EE8);
  }

  return a1;
}

void sub_1B5260094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    quasar::tennessee::LoadIterableCollation<std::string_view>();
  }

  std::unique_ptr<std::map<wchar_t,wchar_t>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1B52601CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  MEMORY[0x1B8C85350](v5, v4);
  _Unwind_Resume(a1);
}

uint64_t quasar::tennessee::ParseSingleUTF8CharacterAndAdvanceIterator(unsigned __int8 **this, const char **a2)
{
  v2 = *this;
  v3 = **this;
  v4 = **this;
  if (v3 < 0)
  {
    if (v4 < 0xE0)
    {
      if (v4 < 0xC2)
      {
        goto LABEL_17;
      }

      v9 = v4 & 0x1F;
      v8 = 1;
    }

    else
    {
      if (v4 > 0xEF)
      {
        if (v4 > 0xF4)
        {
          goto LABEL_17;
        }

        v10 = v4 - 240;
        v11 = v2[1];
        if (((byte_1B5AE9DC0[v11 >> 4] >> v10) & 1) == 0)
        {
          goto LABEL_17;
        }

        v7 = v2[2] ^ 0x80;
        if (v7 > 0x3F)
        {
          goto LABEL_17;
        }

        LODWORD(v6) = v11 & 0x3F | (v10 << 6);
        v8 = 3;
      }

      else
      {
        v6 = v3 & 0xF;
        if (((a00000000000000[v6] >> (v2[1] >> 5)) & 1) == 0)
        {
          goto LABEL_17;
        }

        v7 = v2[1] & 0x3F;
        v8 = 2;
      }

      v9 = v7 | (v6 << 6);
    }

    v12 = v2[v8] ^ 0x80;
    if (v12 <= 0x3F)
    {
      v4 = v12 | (v9 << 6);
      v5 = v8 + 1;
      goto LABEL_16;
    }

LABEL_17:
    memset(v14, 0, sizeof(v14));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "Encounted invalid encoded UTF-8 character.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v14);
  }

  v5 = 1;
LABEL_16:
  *this = &v2[v5];
  return v4;
}

uint64_t std::__function::__func<unsigned char (*)(char const*&),std::allocator<unsigned char (*)(char const*&)>,unsigned char ()(char const*&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D08918;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<unsigned char (*)(char const*&),std::allocator<unsigned char (*)(char const*&)>,unsigned char ()(char const*&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t quasar::tennessee::IterableCollation<std::string_view,unsigned char>::IterableCollation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2D089C8;
  *(a1 + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  std::__function::__value_func<unsigned char ()(char const*&)>::__value_func[abi:ne200100](a1 + 24, a3);
  v5 = *(a1 + 8);
  std::__function::__value_func<unsigned char ()(char const*&)>::__value_func[abi:ne200100](v9, a3);
  *(a1 + 56) = &unk_1F2D08A28;
  *(a1 + 64) = v5;
  std::__function::__value_func<unsigned char ()(char const*&)>::__value_func[abi:ne200100](a1 + 72, v9);
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100](v9);
  v6 = *(a1 + 8);
  std::__function::__value_func<unsigned char ()(char const*&)>::__value_func[abi:ne200100](v8, a3);
  *(a1 + 104) = &unk_1F2D08A78;
  *(a1 + 112) = v6;
  std::__function::__value_func<unsigned char ()(char const*&)>::__value_func[abi:ne200100](a1 + 120, v8);
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100](v8);
  return a1;
}

void sub_1B5260588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100](va);
  *v4 = v3;
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100](v2 + 72);
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100](v2 + 24);
  v6 = *(v2 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void *quasar::tennessee::IterableCollation<std::string_view,unsigned char>::ComparatorImpl<false>::~ComparatorImpl(void *a1)
{
  *a1 = &unk_1F2D08A28;
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void *quasar::tennessee::IterableCollation<std::string_view,unsigned char>::~IterableCollation(void *a1)
{
  *a1 = &unk_1F2D089C8;
  a1[13] = &unk_1F2D08A78;
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 15));
  a1[7] = &unk_1F2D08A28;
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 9));
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void quasar::tennessee::IterableCollation<std::string_view,unsigned char>::~IterableCollation(void *a1)
{
  *a1 = &unk_1F2D089C8;
  a1[13] = &unk_1F2D08A78;
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 15));
  a1[7] = &unk_1F2D08A28;
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 9));
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__function::__value_func<unsigned char ()(char const*&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void quasar::tennessee::IterableCollation<std::string_view,unsigned char>::ComparatorImpl<false>::~ComparatorImpl(void *a1)
{
  *a1 = &unk_1F2D08A28;
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::tennessee::IterableCollation<std::string_view,unsigned char>::ComparatorImpl<false>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v12 = *a3;
  v13 = v4;
  do
  {
    v5 = *(a1 + 40);
    if (!v5 || (v6 = (*(*v5 + 48))(v5, &v13), (v7 = *(a1 + 40)) == 0))
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v8 = (*(*v7 + 48))(v7, &v12);
    v9 = *(a1 + 8);
    if (v9)
    {
      LODWORD(v6) = (*(*v9 + 16))(v9, v6);
      LODWORD(v8) = (*(**(a1 + 8) + 16))(*(a1 + 8), v8);
    }
  }

  while (v6 == v8 && v8 != 0);
  if (v6 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6 > v8;
  }
}

void *quasar::tennessee::IterableCollation<std::string_view,unsigned char>::ComparatorImpl<true>::~ComparatorImpl(void *a1)
{
  *a1 = &unk_1F2D08A78;
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void quasar::tennessee::IterableCollation<std::string_view,unsigned char>::ComparatorImpl<true>::~ComparatorImpl(void *a1)
{
  *a1 = &unk_1F2D08A78;
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::tennessee::IterableCollation<std::string_view,unsigned char>::ComparatorImpl<true>::operator()(uint64_t a1, uint64_t *a2, _BYTE **a3)
{
  v3 = *a2;
  v13 = *a3;
  v14 = v3;
  if (!*v13)
  {
    memset(v12, 0, sizeof(v12));
    quasar::QuasarExceptionMessage::QuasarExceptionMessage(v12);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v12);
  }

  while (1)
  {
    v5 = *(a1 + 40);
    if (!v5 || (v6 = (*(*v5 + 48))(v5, &v14), (v7 = *(a1 + 40)) == 0))
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v8 = (*(*v7 + 48))(v7, &v13);
    v9 = *(a1 + 8);
    if (v9)
    {
      LODWORD(v6) = (*(*v9 + 16))(v9, v6);
      LODWORD(v8) = (*(**(a1 + 8) + 16))(*(a1 + 8), v8);
    }

    if (v6 != v8 || v8 == 0)
    {
      break;
    }

    if (!*v13)
    {
      LODWORD(v8) = v6;
      break;
    }
  }

  if (v6 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6 > v8;
  }
}

void sub_1B5260CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  MEMORY[0x1B8C85350](v5, v4);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<unsigned char ()(char const*&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::__tree<std::__value_type<wchar_t,wchar_t>,std::__map_value_compare<wchar_t,std::__value_type<wchar_t,wchar_t>,std::less<wchar_t>,true>,std::allocator<std::__value_type<wchar_t,wchar_t>>>::__emplace_unique_key_args<wchar_t,std::pair<wchar_t const,wchar_t> const&>(uint64_t a1, int *a2)
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

void *quasar::tennessee::StlContainerMapping<std::map<wchar_t,wchar_t>,(quasar::tennessee::StlContainerMapping_DefaultBehavior)2>::StlContainerMapping(void *result, uint64_t *a2)
{
  *result = &unk_1F2D08AB8;
  v2 = *a2;
  *a2 = 0;
  result[1] = v2;
  if (!*(v2 + 16))
  {
    memset(v3, 0, sizeof(v3));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v3);
  }

  return result;
}

void *quasar::tennessee::StlContainerMapping<std::map<wchar_t,wchar_t>,(quasar::tennessee::StlContainerMapping_DefaultBehavior)2>::~StlContainerMapping(void *a1)
{
  *a1 = &unk_1F2D08AB8;
  std::unique_ptr<std::map<wchar_t,wchar_t>>::~unique_ptr[abi:ne200100](a1 + 1);
  return a1;
}

void quasar::tennessee::StlContainerMapping<std::map<wchar_t,wchar_t>,(quasar::tennessee::StlContainerMapping_DefaultBehavior)2>::~StlContainerMapping(void *a1)
{
  *a1 = &unk_1F2D08AB8;
  std::unique_ptr<std::map<wchar_t,wchar_t>>::~unique_ptr[abi:ne200100](a1 + 1);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::tennessee::StlContainerMapping<std::map<wchar_t,wchar_t>,(quasar::tennessee::StlContainerMapping_DefaultBehavior)2>::operator()(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  v2 = *(a1 + 8);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 28) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 28) < a2));
    }

    while (v4);
    if (v6 != v3)
    {
      v7 = *(v6 + 28);
      v8 = (v6 + 32);
      v9 = v7 <= a2;
      v10 = &v12;
      if (v9)
      {
        v10 = v8;
      }

      return *v10;
    }
  }

  return a2;
}

uint64_t *std::shared_ptr<quasar::tennessee::Mapping<wchar_t,wchar_t>>::shared_ptr[abi:ne200100]<quasar::tennessee::StlContainerMapping<std::map<wchar_t,wchar_t>,(quasar::tennessee::StlContainerMapping_DefaultBehavior)2>,std::default_delete<quasar::tennessee::StlContainerMapping<std::map<wchar_t,wchar_t>,(quasar::tennessee::StlContainerMapping_DefaultBehavior)2>>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<quasar::tennessee::StlContainerMapping<std::map<wchar_t,wchar_t>,(quasar::tennessee::StlContainerMapping_DefaultBehavior)2> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::tennessee::StlContainerMapping<std::map<wchar_t,wchar_t>,(quasar::tennessee::StlContainerMapping_DefaultBehavior)2> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::tennessee::StlContainerMapping<std::map<wchar_t,wchar_t>,(quasar::tennessee::StlContainerMapping_DefaultBehavior)2> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<wchar_t (*)(char const*&),std::allocator<wchar_t (*)(char const*&)>,wchar_t ()(char const*&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D08B68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<wchar_t (*)(char const*&),std::allocator<wchar_t (*)(char const*&)>,wchar_t ()(char const*&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t quasar::tennessee::IterableCollation<std::string_view,wchar_t>::IterableCollation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2D08C18;
  *(a1 + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  std::__function::__value_func<wchar_t ()(char const*&)>::__value_func[abi:ne200100](a1 + 24, a3);
  v5 = *(a1 + 8);
  std::__function::__value_func<wchar_t ()(char const*&)>::__value_func[abi:ne200100](v9, a3);
  *(a1 + 56) = &unk_1F2D08C68;
  *(a1 + 64) = v5;
  std::__function::__value_func<wchar_t ()(char const*&)>::__value_func[abi:ne200100](a1 + 72, v9);
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100](v9);
  v6 = *(a1 + 8);
  std::__function::__value_func<wchar_t ()(char const*&)>::__value_func[abi:ne200100](v8, a3);
  *(a1 + 104) = &unk_1F2D08CA8;
  *(a1 + 112) = v6;
  std::__function::__value_func<wchar_t ()(char const*&)>::__value_func[abi:ne200100](a1 + 120, v8);
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100](v8);
  return a1;
}

void sub_1B5261374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100](va);
  *v4 = v3;
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100](v2 + 72);
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100](v2 + 24);
  v6 = *(v2 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void *quasar::tennessee::IterableCollation<std::string_view,wchar_t>::ComparatorImpl<false>::~ComparatorImpl(void *a1)
{
  *a1 = &unk_1F2D08C68;
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void *quasar::tennessee::IterableCollation<std::string_view,wchar_t>::~IterableCollation(void *a1)
{
  *a1 = &unk_1F2D08C18;
  a1[13] = &unk_1F2D08CA8;
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 15));
  a1[7] = &unk_1F2D08C68;
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 9));
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void quasar::tennessee::IterableCollation<std::string_view,wchar_t>::~IterableCollation(void *a1)
{
  *a1 = &unk_1F2D08C18;
  a1[13] = &unk_1F2D08CA8;
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 15));
  a1[7] = &unk_1F2D08C68;
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 9));
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__function::__value_func<wchar_t ()(char const*&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void quasar::tennessee::IterableCollation<std::string_view,wchar_t>::ComparatorImpl<false>::~ComparatorImpl(void *a1)
{
  *a1 = &unk_1F2D08C68;
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::tennessee::IterableCollation<std::string_view,wchar_t>::ComparatorImpl<false>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v12 = *a3;
  v13 = v4;
  do
  {
    v5 = *(a1 + 40);
    if (!v5 || (v6 = (*(*v5 + 48))(v5, &v13), (v7 = *(a1 + 40)) == 0))
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v8 = (*(*v7 + 48))(v7, &v12);
    v9 = *(a1 + 8);
    if (v9)
    {
      LODWORD(v6) = (*(*v9 + 16))(v9, v6);
      LODWORD(v8) = (*(**(a1 + 8) + 16))(*(a1 + 8), v8);
    }
  }

  while (v6 == v8 && v8 != 0);
  if (v6 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6 > v8;
  }
}

void *quasar::tennessee::IterableCollation<std::string_view,wchar_t>::ComparatorImpl<true>::~ComparatorImpl(void *a1)
{
  *a1 = &unk_1F2D08CA8;
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void quasar::tennessee::IterableCollation<std::string_view,wchar_t>::ComparatorImpl<true>::~ComparatorImpl(void *a1)
{
  *a1 = &unk_1F2D08CA8;
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::tennessee::IterableCollation<std::string_view,wchar_t>::ComparatorImpl<true>::operator()(uint64_t a1, uint64_t *a2, _BYTE **a3)
{
  v3 = *a2;
  v13 = *a3;
  v14 = v3;
  if (!*v13)
  {
    memset(v12, 0, sizeof(v12));
    quasar::QuasarExceptionMessage::QuasarExceptionMessage(v12);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v12);
  }

  while (1)
  {
    v5 = *(a1 + 40);
    if (!v5 || (v6 = (*(*v5 + 48))(v5, &v14), (v7 = *(a1 + 40)) == 0))
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v8 = (*(*v7 + 48))(v7, &v13);
    v9 = *(a1 + 8);
    if (v9)
    {
      LODWORD(v6) = (*(*v9 + 16))(v9, v6);
      LODWORD(v8) = (*(**(a1 + 8) + 16))(*(a1 + 8), v8);
    }

    if (v6 != v8 || v8 == 0)
    {
      break;
    }

    if (!*v13)
    {
      LODWORD(v8) = v6;
      break;
    }
  }

  if (v6 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6 > v8;
  }
}

void sub_1B5261AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  MEMORY[0x1B8C85350](v5, v4);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<wchar_t ()(char const*&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_1B5261F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C85350](v16, v15);
  _Unwind_Resume(a1);
}

void sub_1B5263040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  a58 = &a37;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a58);
  a58 = &a40;
  std::vector<std::vector<std::vector<unsigned long>>>::__destroy_vector::operator()[abi:ne200100](&a58);
  a58 = &a43;
  std::vector<std::vector<std::vector<std::vector<quasar::Token>>>>::__destroy_vector::operator()[abi:ne200100](&a58);

  _Unwind_Resume(a1);
}

void **std::vector<std::vector<std::vector<std::vector<quasar::Token>>>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::vector<std::vector<quasar::Token>>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void **std::vector<std::vector<std::vector<unsigned long>>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::vector<std::pair<int,int>>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<int>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void std::vector<std::vector<std::vector<std::vector<quasar::Token>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::vector<std::vector<unsigned long>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void **std::__split_buffer<std::vector<std::vector<std::vector<quasar::Token>>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<std::vector<quasar::Token>>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<std::vector<quasar::Token>>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5263C10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser::ArpaFileParser(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = &unk_1F2D08CE8;
  v3 = *a2;
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 8) = v3;
  *(a1 + 32) = a3;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  return result;
}

void quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser::~ArpaFileParser(quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser *this)
{
  *this = &unk_1F2D08CE8;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }
}

uint64_t quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser::LineReference(quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "line ", 5);
  v3 = MEMORY[0x1B8C84C00](v2, *(this + 10));
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " [", 2);
  v7 = *(this + 6);
  v6 = this + 48;
  v5 = v7;
  v8 = v6[23];
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = v6[23];
  }

  else
  {
    v10 = *(v6 + 1);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v9, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "]", 1);
  std::stringbuf::str();
  v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v17);
}

void sub_1B5263E7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

BOOL quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser::ShouldWarn(quasar::lm::arpa2fst::kaldi_fork::ArpaFileParser *this)
{
  v1 = *(this + 11);
  if (v1 == -1)
  {
    return 0;
  }

  *(this + 11) = v1 + 1;
  return v1 < *(this + 6);
}

uint64_t std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t QuasarC_setLogLevel(uint64_t result)
{
  quasar::gLogLevel = result;
  if (result == 5)
  {
    v1 = 1;
  }

  else
  {
    v1 = 5;
  }

  if (result == 4)
  {
    v1 = 0;
  }

  if (result < 4)
  {
    v1 = -1;
  }

  kaldi::g_kaldi_verbose_level = v1;
  return result;
}

uint64_t QuasarCSystemConfig_new()
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2D08D38;
  v2[3] = v2;
  v0 = CapiHelpers_new<QuasarCSystemConfig,quasar::SystemConfig>(v2);
  std::__function::__value_func<quasar::SystemConfig * ()(void)>::~__value_func[abi:ne200100](v2);
  return v0;
}

void sub_1B526404C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<quasar::SystemConfig * ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CapiHelpers_new<QuasarCSystemConfig,quasar::SystemConfig>(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1);
}

uint64_t QuasarCSystemConfig_delete(uint64_t result)
{
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t QuasarCSystemConfig_readJsonFile(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5[0] = &unk_1F2D08DC8;
  v5[1] = &v4;
  v5[3] = v5;
  v2 = CapiHelpers_execute<QuasarCSystemConfig,quasar::SystemConfig,int>(a1, v5);
  std::__function::__value_func<int ()(quasar::SystemConfig *)>::~__value_func[abi:ne200100](v5);
  return v2;
}

void sub_1B5264280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<int ()(quasar::SystemConfig *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void QuasarCSystemConfigInfoCacheReset(quasar::SystemConfig::SystemConfigInfoCache *a1)
{
  v2 = quasar::SystemConfig::SystemConfigInfoCache::SingletonInstance(a1);

  quasar::SystemConfig::SystemConfigInfoCache::reset(v2, a1);
}

uint64_t QuasarC_needsSpaceBetween(char *__s, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v7, __s);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v3 = quasar::needsSpaceBetween(v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return v3;
}

void sub_1B5264484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t quasar::needsSpaceBetween(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    v3 = *(a2 + 23);
    if ((v3 & 0x80u) != 0)
    {
      v3 = *(a2 + 8);
    }

    if (v3)
    {
      operator new();
    }
  }

  return 0;
}

void sub_1B526479C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  quasar::QuasarErrorMessage::~QuasarErrorMessage(va);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1B52647C0(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1B52647C8);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<QuasarCSystemConfig * CapiHelpers_new<QuasarCSystemConfig,quasar::SystemConfig>(std::function<quasar::SystemConfig * ()(void)>)::$_0,std::allocator<QuasarCSystemConfig * CapiHelpers_new<QuasarCSystemConfig,quasar::SystemConfig>(std::function<quasar::SystemConfig * ()(void)>)::$_0>,quasar::SystemConfig* ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<quasar::SystemConfig * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::function<int ()(quasar::SystemConfig *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<QuasarCSystemConfig_readJsonFile::$_0,std::allocator<QuasarCSystemConfig_readJsonFile::$_0>,int ()(quasar::SystemConfig *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D08DC8;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<QuasarCSystemConfig_readJsonFile::$_0,std::allocator<QuasarCSystemConfig_readJsonFile::$_0>,int ()(quasar::SystemConfig *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  std::string::basic_string[abi:ne200100]<0>(v8, **(a1 + 8));
  memset(v7, 0, sizeof(v7));
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  JsonFile = quasar::SystemConfig::readJsonFile(v2, v8, v7, v5, 0, 0);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v5);
  v10 = v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  return JsonFile > 1;
}

void sub_1B5264B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  *(v10 - 24) = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v10 - 24));
  if (*(v10 - 25) < 0)
  {
    operator delete(*(v10 - 48));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<QuasarCSystemConfig_readJsonFile::$_0,std::allocator<QuasarCSystemConfig_readJsonFile::$_0>,int ()(quasar::SystemConfig *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<int ()(quasar::SystemConfig *)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL quasar::result_handler::VoiceEditingRecoveryHandler::isMaybeCompleteCommandPackageExecutionIntentionSame(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  if (*(*a2 + 368) != 1)
  {
    return 0;
  }

  v4 = *a3;
  if (*(*a3 + 368) != 1)
  {
    return 0;
  }

  v5 = *(v3 + 336);
  if (*(v3 + 344) == v5)
  {
    return 0;
  }

  v6 = *(v4 + 336);
  if (*(v4 + 344) == v6)
  {
    return 0;
  }

  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = *(v6 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v6 + 8);
  }

  if (v8 != v9)
  {
    return 0;
  }

  v11 = v7 >= 0 ? v5 : *v5;
  v12 = v10 >= 0 ? v6 : *v6;
  if (memcmp(v11, v12, v8))
  {
    return 0;
  }

  v13 = *(v5 + 47);
  if (v13 < 0)
  {
    v14 = *(v5 + 24);
    v13 = *(v5 + 32);
  }

  else
  {
    v14 = (v5 + 24);
  }

  quasar::utf8::utf8ToUtf16(v14, v13, v25);
  v15 = *(v6 + 47);
  if (v15 < 0)
  {
    v16 = *(v6 + 24);
    v15 = *(v6 + 32);
  }

  else
  {
    v16 = (v6 + 24);
  }

  quasar::utf8::utf8ToUtf16(v16, v15, v24);
  v17 = quasar::caseAndDiacriticInsensitiveEquals();
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(v24);
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(v25);
  if (!v17)
  {
    return 0;
  }

  v18 = *(v5 + 71);
  if (v18 < 0)
  {
    v19 = *(v5 + 48);
    v18 = *(v5 + 56);
  }

  else
  {
    v19 = (v5 + 48);
  }

  quasar::utf8::utf8ToUtf16(v19, v18, v25);
  v22 = *(v6 + 71);
  if (v22 < 0)
  {
    v23 = *(v6 + 48);
    v22 = *(v6 + 56);
  }

  else
  {
    v23 = (v6 + 48);
  }

  quasar::utf8::utf8ToUtf16(v23, v22, v24);
  v20 = quasar::caseAndDiacriticInsensitiveEquals();
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(v24);
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(v25);
  return v20;
}