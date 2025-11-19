void sub_1B5A12454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a64 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  JUMPOUT(0x1B5A1258CLL);
}

void sub_1B5A12530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    JUMPOUT(0x1B5A12598);
  }

  JUMPOUT(0x1B5A1259CLL);
}

void sub_1B5A12558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::pair<std::string,std::string>::~pair(va);
  JUMPOUT(0x1B5A12574);
}

void sub_1B5A12730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a16);
  _Unwind_Resume(a1);
}

uint64_t quasar::CustomLMBuilder::createFst(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  if (v6 == v7)
  {
    v8 = v6;
    goto LABEL_15;
  }

  v8 = v6;
  do
  {
    v9 = *(v8 + 23);
    if (v9 < 0)
    {
      if (*(v8 + 8) != 12)
      {
        goto LABEL_12;
      }

      v10 = *v8;
    }

    else
    {
      v10 = v8;
      if (v9 != 12)
      {
        goto LABEL_12;
      }
    }

    v11 = *v10;
    v12 = *(v10 + 8);
    if (v11 == 0x414C504D45547B7BLL && v12 == 2105361748)
    {
      goto LABEL_15;
    }

LABEL_12:
    v8 += 24;
  }

  while (v8 != v7);
  v8 = a2[1];
LABEL_15:
  v85 = 0;
  v86 = 0;
  v87 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v85, v6, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v6) >> 3));
  v84[0] = 0;
  v84[1] = 0;
  v83 = v84;
  if (a2[1] != v8 && !quasar::CustomLMBuilder::getTemplates(a1, &v83, a2, v8))
  {
    goto LABEL_99;
  }

  v82 = (*(*a3 + 200))(a3);
  (*(*a3 + 176))(a3);
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v14 = log(1.0 / (0xAAAAAAAAAAAAAAABLL * ((v86 - v85) >> 3)));
  v50 = quasar::QsrTextSymbolTable::Find(*(a1 + 48), "\\NT-unknown");
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v16 = v85;
  v15 = v86;
  if (v85 == v86)
  {
LABEL_86:
    v43 = (*(*a3 + 200))(a3);
    v44 = v79;
    v45 = v80;
    while (v44 != v45)
    {
      v46 = *v44;
      *v57 = 0;
      *&v57[8] = 0;
      *&v57[12] = v43;
      (*(*a3 + 208))(a3, v46, v57);
      ++v44;
    }

    (*(*a3 + 184))(a3, v43, 0.0);
    if (quasar::gLogLevel >= 4)
    {
      v71 = 0u;
      v72 = 0u;
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
      v58 = 0u;
      memset(v57, 0, sizeof(v57));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v57);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "Number of OOVs = ", 17);
      MEMORY[0x1B8C84C30](v47, 0xAAAAAAAAAAAAAAABLL * ((v77 - v76) >> 3));
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v57);
    }

    quasar::CustomLMBuilder::getOovUserData();
  }

  v17 = v14;
  v18 = LODWORD(v17) ^ 0x80000000;
  v49 = v86;
  while (2)
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
    if (((*(**(a1 + 224) + 16))(*(a1 + 224), v16, &v73) & 1) == 0)
    {
      if (quasar::gLogLevel >= 1)
      {
        v71 = 0u;
        v72 = 0u;
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
        v58 = 0u;
        memset(v57, 0, sizeof(v57));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v57);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "Failed to tokenize", 18);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(v57);
      }

      MEMORY[0x1B8C84820](a1, "Tokenizer could not tokenize");
      goto LABEL_97;
    }

    v82 = 0;
    if (v73 == v74)
    {
LABEL_85:
      *v57 = &v73;
      std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](v57);
      v16 += 24;
      if (v16 == v15)
      {
        goto LABEL_86;
      }

      continue;
    }

    break;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  std::vector<quasar::TextTokenizer::Token>::__init_with_size[abi:ne200100]<quasar::TextTokenizer::Token*,quasar::TextTokenizer::Token*>(&v54, *v73, v73[1], (v73[1] - *v73) >> 5);
  v19 = v54;
  if (v55 == v54)
  {
LABEL_84:
    std::vector<int>::push_back[abi:ne200100](&v79, &v82);
    *v57 = &v54;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v57);
    v15 = v49;
    goto LABEL_85;
  }

  v20 = 0;
  v21 = 0;
  v22 = (v55 - v54) >> 5;
  v23 = 1;
  while (1)
  {
    v24 = (v19 + 32 * v20);
    v25 = *(v24 + 23);
    if (v25 < 0)
    {
      if (**v24 != 123)
      {
        std::string::__init_copy_ctor_external(v57, *v24, *(v24 + 1));
LABEL_38:
        for (i = 0; ; i = v32)
        {
          v32 = std::string::find(v57, 32, i);
          if (v32 == -1)
          {
            break;
          }

          std::string::replace(v57, v32, 1uLL, "_");
        }

        v33 = quasar::QsrTextSymbolTable::Find(*(a1 + 48), v57);
        if (v33 == -1)
        {
          std::vector<std::string>::push_back[abi:ne200100](&v76, v57);
          v33 = v50;
        }

        v34 = (*(*a3 + 200))(a3);
        v35 = v34;
        LODWORD(v53.__r_.__value_.__l.__data_) = v33;
        HIDWORD(v53.__r_.__value_.__r.__words[0]) = v33;
        if (v23)
        {
          v36 = v18;
        }

        else
        {
          v36 = 0;
        }

        v53.__r_.__value_.__l.__size_ = __PAIR64__(v34, v36);
        (*(*a3 + 208))(a3, v82, &v53);
        if ((v57[23] & 0x80000000) != 0)
        {
          operator delete(*v57);
        }

        goto LABEL_83;
      }
    }

    else if (*v24 != 123)
    {
      v26 = *v24;
      *&v57[16] = *(v24 + 2);
      *v57 = v26;
      goto LABEL_38;
    }

    v27 = v21 + 2;
    if (v22 > v27)
    {
      v28 = (v19 + 32 * v27);
      if (*(v28 + 23) < 0)
      {
        v28 = *v28;
      }

      if (*v28 == 125)
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(123, (v19 + 32 * v21 + 32), v57);
        std::string::push_back(v57, 125);
        v53 = *v57;
        v29 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v83, &v53.__r_.__value_.__l.__data_);
        if (v84 != v29)
        {
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v52, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
          }

          else
          {
            v52 = v53;
          }

          v35 = quasar::CustomLMBuilder::replaceTemplate(a1, &v83, &v52.__r_.__value_.__l.__data_, v82, a3, &v76);
          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          v21 += 2;
          goto LABEL_80;
        }

        if (quasar::gLogLevel >= 1)
        {
          v71 = 0u;
          v72 = 0u;
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
          v58 = 0u;
          memset(v57, 0, sizeof(v57));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v57);
          v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "template list not found for used template ", 42);
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v41 = &v53;
          }

          else
          {
            v41 = v53.__r_.__value_.__r.__words[0];
          }

          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v53.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v41, size);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(v57);
        }

        goto LABEL_73;
      }
    }

    if ((v25 & 0x80000000) != 0)
    {
      break;
    }

    if (*(v24 + v25 - 1) != 125)
    {
      goto LABEL_93;
    }

    v30 = *v24;
    v53.__r_.__value_.__r.__words[2] = *(v24 + 2);
    *&v53.__r_.__value_.__l.__data_ = v30;
LABEL_50:
    v29 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v83, &v53.__r_.__value_.__l.__data_);
    if (v84 == v29)
    {
      if (quasar::gLogLevel >= 1)
      {
        v71 = 0u;
        v72 = 0u;
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
        v58 = 0u;
        memset(v57, 0, sizeof(v57));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v57);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "template list not found for used template ", 42);
        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &v53;
        }

        else
        {
          v38 = v53.__r_.__value_.__r.__words[0];
        }

        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v39 = v53.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v38, v39);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(v57);
      }

LABEL_73:
      std::operator+<char>();
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v35 = 0;
      *a1 = *v57;
      *(a1 + 16) = *&v57[16];
      goto LABEL_80;
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v51, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
    }

    else
    {
      v51 = v53;
    }

    v35 = quasar::CustomLMBuilder::replaceTemplate(a1, &v83, &v51.__r_.__value_.__l.__data_, v82, a3, &v76);
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

LABEL_80:
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (v84 == v29)
    {
      goto LABEL_96;
    }

LABEL_83:
    v23 = 0;
    v82 = v35;
    v20 = ++v21;
    v19 = v54;
    v22 = (v55 - v54) >> 5;
    if (v22 <= v21)
    {
      goto LABEL_84;
    }
  }

  if (*(*v24 + *(v24 + 1) - 1) == 125)
  {
    std::string::__init_copy_ctor_external(&v53, *v24, *(v24 + 1));
    goto LABEL_50;
  }

LABEL_93:
  if (quasar::gLogLevel >= 1)
  {
    v71 = 0u;
    v72 = 0u;
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
    v58 = 0u;
    memset(v57, 0, sizeof(v57));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "template names should be enclosed in {} and contain only one word (lowercase)", 77);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v57);
  }

  MEMORY[0x1B8C84820](a1, "template names should be enclosed in {} and contain only one word (lowercase)");
LABEL_96:
  *v57 = &v54;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v57);
LABEL_97:
  *v57 = &v73;
  std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](v57);
  *v57 = &v76;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v57);
  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

LABEL_99:
  std::__tree<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>>>::destroy(&v83, v84[0]);
  *v57 = &v85;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v57);
  return 0;
}

void sub_1B5A130F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a34);
  a34 = v39 - 232;
  std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](&a34);
  a34 = v39 - 208;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a34);
  v41 = *(v39 - 184);
  if (v41)
  {
    *(v39 - 176) = v41;
    operator delete(v41);
  }

  std::__tree<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>>>::destroy(v39 - 152, *(v39 - 144));
  a34 = v39 - 128;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

void sub_1B5A1347C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a16);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v21 - 64));
  _Unwind_Resume(a1);
}

void quasar::CustomLMBuilder::writeJson(uint64_t a1, float *a2, const void **a3)
{
  v45 = *MEMORY[0x1E69E9840];
  quasar::PTree::PTree(v43);
  v5 = *(a1 + 232);
  for (i = *(a1 + 240); v5 != i; v5 += 3)
  {
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v42, *v5, *(v5 + 1));
    }

    else
    {
      v6 = *v5;
      v42.__r_.__value_.__r.__words[2] = *(v5 + 2);
      *&v42.__r_.__value_.__l.__data_ = v6;
    }

    if (*(v5 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *(v5 + 3), *(v5 + 4));
    }

    else
    {
      __str = *(v5 + 1);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, ",");
    quasar::splitAndTrim(&__str, __p, v40);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = v40[0];
    v8 = v40[1];
    quasar::PTree::PTree(__p);
    std::string::basic_string[abi:ne200100]<0>(&v35, "big-g-fst-file-list");
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](&v44, size + 1);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v44;
    }

    else
    {
      v10 = v44.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      memmove(v10, p_str, size);
    }

    *(&v10->__r_.__value_.__l.__data_ + size) = 44;
    v12 = *(a1 + 223);
    if (v12 >= 0)
    {
      v13 = (a1 + 200);
    }

    else
    {
      v13 = *(a1 + 200);
    }

    if (v12 >= 0)
    {
      v14 = *(a1 + 223);
    }

    else
    {
      v14 = *(a1 + 208);
    }

    v15 = std::string::append(&v44, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    quasar::PTree::PTree(&v34, &v33);
    quasar::PTree::putChild(__p, &v35, &v34, 1);
    quasar::PTree::~PTree(&v34);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (v37 < 0)
    {
      operator delete(v35);
    }

    std::string::basic_string[abi:ne200100]<0>(&v35, "");
    v17 = -1431655765 * ((v8 - v7) >> 3);
    if (v17 >= 1)
    {
      v18 = (1.0 - *a2) / v17;
      do
      {
        std::to_string(&v33, v18);
        if ((v37 & 0x80u) == 0)
        {
          v19 = &v35;
        }

        else
        {
          v19 = v35;
        }

        if ((v37 & 0x80u) == 0)
        {
          v20 = v37;
        }

        else
        {
          v20 = *v36;
        }

        v21 = std::string::insert(&v33, 0, v19, v20);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v34.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v34.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = std::string::append(&v34, ", ");
        v24 = v23->__r_.__value_.__r.__words[0];
        v44.__r_.__value_.__r.__words[0] = v23->__r_.__value_.__l.__size_;
        *(v44.__r_.__value_.__r.__words + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
        v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        if (v37 < 0)
        {
          operator delete(v35);
        }

        v35 = v24;
        *v36 = v44.__r_.__value_.__r.__words[0];
        *&v36[7] = *(v44.__r_.__value_.__r.__words + 7);
        v37 = v25;
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        --v17;
      }

      while (v17);
    }

    std::string::basic_string[abi:ne200100]<0>(&v33, "big-g-fst-weight-list");
    std::to_string(&v32, *a2);
    if ((v37 & 0x80u) == 0)
    {
      v26 = &v35;
    }

    else
    {
      v26 = v35;
    }

    if ((v37 & 0x80u) == 0)
    {
      v27 = v37;
    }

    else
    {
      v27 = *v36;
    }

    v28 = std::string::insert(&v32, 0, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    quasar::PTree::PTree(&v34, &v44);
    quasar::PTree::putChild(__p, &v33, &v34, 1);
    quasar::PTree::~PTree(&v34);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    quasar::PTree::PTree(&v34);
    std::string::basic_string[abi:ne200100]<0>(&v33, "lattice-biglm-lme-faster");
    quasar::PTree::putChild(&v34, &v33, __p, 1);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    quasar::PTree::putChild(v43, &v42, &v34, 1);
    quasar::PTree::~PTree(&v34);
    if (v37 < 0)
    {
      operator delete(v35);
    }

    quasar::PTree::~PTree(__p);
    __p[0] = v40;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }
  }

  quasar::PTree::PTree(__p);
  std::string::basic_string[abi:ne200100]<0>(&v42, "version-major");
  quasar::PTree::PTree(&v34, a1 + 64);
  quasar::PTree::putChild(__p, &v42, &v34, 1);
  quasar::PTree::~PTree(&v34);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v42, "version-minor");
  quasar::PTree::PTree(&v34, a1 + 88);
  quasar::PTree::putChild(__p, &v42, &v34, 1);
  quasar::PTree::~PTree(&v34);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v34, "model-info");
  quasar::PTree::putChild(__p, &v34, a1 + 136, 1);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v34, "decoders");
  quasar::PTree::putChild(__p, &v34, v43, 1);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 112), a3, &v34);
  quasar::PTree::writeJsonToFile();
}

void sub_1B5A13AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a42);
  quasar::PTree::~PTree((v61 - 208));
  _Unwind_Resume(a1);
}

BOOL quasar::CustomLMBuilder::getTemplates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a4 + 24);
  if (a4 + 24 != *(a3 + 8))
  {
    if (*(a4 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v44, *(a4 + 24), *(a4 + 32));
    }

    else
    {
      *&v44.__r_.__value_.__l.__data_ = *v7;
      v44.__r_.__value_.__r.__words[2] = *(a4 + 40);
    }

    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v8 = v44.__r_.__value_.__r.__words[0];
      if (*v44.__r_.__value_.__l.__data_ != 123)
      {
        goto LABEL_15;
      }

      size = v44.__r_.__value_.__l.__size_;
    }

    else
    {
      if (v44.__r_.__value_.__s.__data_[0] != 123)
      {
        goto LABEL_15;
      }

      v8 = &v44;
      size = SHIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    if (v8->__r_.__value_.__s.__data_[size - 1] == 125)
    {
      v10 = 1;
      if ((*(&v44.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_15:
    if (quasar::gLogLevel >= 1)
    {
      v42 = 0u;
      v43 = 0u;
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
      v27 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Template names should be enclosed in {} and contain only one word (in lowercase)", 80);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v27);
    }

    MEMORY[0x1B8C84820](a1, "Template names should be enclosed in {} and contain only one word (in lowercase)");
    v10 = 0;
    if ((*(&v44.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_20:
      operator delete(v44.__r_.__value_.__l.__data_);
      if (v10)
      {
        goto LABEL_21;
      }

      return 0;
    }

LABEL_18:
    if (v10)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (quasar::gLogLevel >= 1)
  {
    v42 = 0u;
    v43 = 0u;
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
    v27 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "No templates provided", 21);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&v27);
  }

LABEL_21:
  while (1)
  {
    v11 = *(a3 + 8);
    v12 = v7 == v11;
    if (v7 == v11)
    {
      return v12;
    }

    v13 = *(v7 + 23);
    if (v13 < 0)
    {
      if (*(*v7 + *(v7 + 1) - 1) != 125)
      {
LABEL_64:
        if (quasar::gLogLevel >= 1)
        {
          v42 = 0u;
          v43 = 0u;
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
          v27 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Template names should be enclosed in {} and contain only one word", 65);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(&v27);
        }

        MEMORY[0x1B8C84820](a1, "Template names should be enclosed in {} and contain only one word");
        return 0;
      }

      std::string::__init_copy_ctor_external(&v44, *v7, *(v7 + 1));
    }

    else
    {
      if (*(v7 + v13 - 1) != 125)
      {
        goto LABEL_64;
      }

      v14 = *v7;
      v44.__r_.__value_.__r.__words[2] = *(v7 + 2);
      *&v44.__r_.__value_.__l.__data_ = v14;
    }

    if (a2 + 8 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a2, &v44.__r_.__value_.__l.__data_))
    {
      v7 = (v7 + 24);
      while (v7 != *(a3 + 8))
      {
        if (*(v7 + 23) < 0)
        {
          if (**v7 == 123)
          {
            break;
          }

          std::string::__init_copy_ctor_external(&v26, *v7, *(v7 + 1));
        }

        else
        {
          if (*v7 == 123)
          {
            break;
          }

          v19 = *v7;
          v26.__r_.__value_.__r.__words[2] = *(v7 + 2);
          *&v26.__r_.__value_.__l.__data_ = v19;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        v20 = (*(**(a1 + 224) + 16))(*(a1 + 224), &v26, &v23);
        if (v20)
        {
          if (v23 != v24)
          {
            v45 = &v44;
            v21 = std::__tree<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, &v44.__r_.__value_.__l.__data_);
            std::vector<quasar::TextTokenizer::TokenString>::push_back[abi:ne200100](v21 + 56, v23);
          }

          v7 = (v7 + 24);
        }

        else
        {
          if (quasar::gLogLevel >= 1)
          {
            v42 = 0u;
            v43 = 0u;
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
            v27 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Failed to tokenize", 18);
            quasar::QuasarErrorMessage::~QuasarErrorMessage(&v27);
          }

          MEMORY[0x1B8C84820](a1, "Tokenizer could not tokenize");
        }

        *&v27 = &v23;
        std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](&v27);
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
          if ((v20 & 1) == 0)
          {
LABEL_57:
            v18 = 0;
            goto LABEL_59;
          }
        }

        else if ((v20 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      v18 = 1;
    }

    else
    {
      if (quasar::gLogLevel >= 1)
      {
        v42 = 0u;
        v43 = 0u;
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
        v27 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Template list found more than once for : ", 41);
        if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v44;
        }

        else
        {
          v16 = v44.__r_.__value_.__r.__words[0];
        }

        if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v17 = v44.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v27);
      }

      std::operator+<char>();
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v18 = 0;
      *a1 = v27;
      *(a1 + 16) = v28;
    }

LABEL_59:
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
      if ((v18 & 1) == 0)
      {
        return v12;
      }
    }

    else if ((v18 & 1) == 0)
    {
      return v12;
    }
  }
}

uint64_t quasar::CustomLMBuilder::replaceTemplate(uint64_t a1, uint64_t a2, const void **a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v28 = a3;
  v9 = std::__tree<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, a3);
  v10 = *(v9 + 56);
  for (i = *(v9 + 64); v10 != i; v10 += 4)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    std::vector<quasar::TextTokenizer::Token>::__init_with_size[abi:ne200100]<quasar::TextTokenizer::Token*,quasar::TextTokenizer::Token*>(&v28, *v10, v10[1], (v10[1] - *v10) >> 5);
    v27 = a4;
    v12 = v28;
    v11 = v29;
    while (v12 != v11)
    {
      if (*(v12 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v26, *v12, v12[1]);
      }

      else
      {
        v13 = *v12;
        v26.__r_.__value_.__r.__words[2] = v12[2];
        *&v26.__r_.__value_.__l.__data_ = v13;
      }

      for (j = 0; ; j = v15)
      {
        v15 = std::string::find(&v26, 32, j);
        if (v15 == -1)
        {
          break;
        }

        std::string::replace(&v26, v15, 1uLL, "_");
      }

      v16 = quasar::QsrTextSymbolTable::Find(*(a1 + 48), &v26);
      if (v16 == -1)
      {
        v16 = quasar::QsrTextSymbolTable::Find(*(a1 + 48), "\\NT-unknown");
        std::vector<std::string>::push_back[abi:ne200100](a6, v12);
      }

      v17 = (*(*a5 + 200))(a5);
      v25[0] = v16;
      v25[1] = v16;
      v25[2] = 0;
      v25[3] = v17;
      (*(*a5 + 208))(a5, v27, v25);
      v27 = v17;
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v12 += 4;
    }

    std::vector<int>::push_back[abi:ne200100](&v31, &v27);
    v26.__r_.__value_.__r.__words[0] = &v28;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v26);
  }

  v18 = (*(*a5 + 200))(a5);
  v19 = v31;
  v20 = v32;
  if (v31 != v32)
  {
    do
    {
      v21 = *v19;
      v28 = 0;
      LODWORD(v29) = 0;
      HIDWORD(v29) = v18;
      (*(*a5 + 208))(a5, v21, &v28);
      ++v19;
    }

    while (v19 != v20);
    v19 = v31;
  }

  if (v19)
  {
    v32 = v19;
    operator delete(v19);
  }

  return v18;
}

void sub_1B5A14548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5A14AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a21);
  std::__tree<std::string>::destroy(&a26, a27);
  std::__tree<std::string>::destroy(&a29, a30);
  std::ostringstream::~ostringstream(&a32, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](&a46);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::destroy(&STACK[0x2D8], STACK[0x2E0]);
  quasar::BasicTextSanitizer::~BasicTextSanitizer((v46 - 256));
  _Unwind_Resume(a1);
}

void sub_1B5A14CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<quasar::TextTokenizer::TokenString>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<quasar::TextTokenizer::TokenString>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string const&,char const(&)[15],int,std::set<std::string> &>(uint64_t *a1, uint64_t a2, char *a3, unsigned int *a4, uint64_t a5)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v9);
  }

  v16 = 0;
  v17 = 80 * v5;
  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,char const(&)[15],int,std::set<std::string> &>(a1, 80 * v5, a2, a3, a4, a5);
  v18 = 80 * v5 + 80;
  v10 = a1[1];
  v11 = 80 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v16);
  return v15;
}

void sub_1B5A14EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,char const(&)[15],int,std::set<std::string> &>(int a1, uint64_t a2, uint64_t a3, char *__s, unsigned int *a5, uint64_t a6)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a3, *(a3 + 8));
  }

  else
  {
    v12 = *a3;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  quasar::LmeDataFactoryBase::Word::Word(a2, &v12, __p, *a5, a6);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1B5A14FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<quasar::TextTokenizer::TokenString>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<quasar::TextTokenizer::TokenString>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void fst::StateSort<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, void *a2)
{
  v4 = a2[1] - *a2;
  if ((*(*a1 + 160))(a1) == v4 >> 2)
  {
    if ((*(*a1 + 24))(a1) == -1)
    {
      return;
    }

    v5 = (*(*a1 + 64))(a1, 0xF3FFFFF0007, 0);
    v6 = (a2[1] - *a2) >> 2;
    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::vector(v50, v6);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v7 = (*(*a1 + 24))(a1);
    (*(*a1 + 176))(a1, *(*a2 + 4 * v7));
    v34 = v5;
    v43 = 0;
    (*(*a1 + 128))(a1, &v41);
    v8 = &v47;
    v9 = &v44;
LABEL_4:
    if (!v41)
    {
      if (v43 >= v42)
      {
        goto LABEL_58;
      }

      goto LABEL_9;
    }

    if (!(*(*v41 + 16))(v41))
    {
      if (v41)
      {
        v10 = (*(*v41 + 24))();
LABEL_10:
        v11 = v10;
        v12 = v10 >> 6;
        v13 = 1 << v10;
        if (((1 << v10) & *(v50[0] + v12)) != 0)
        {
          goto LABEL_26;
        }

        v14 = (*(*a1 + 32))(a1, v10);
        v8[1] = *v8;
        v40 = 0;
        (*(*a1 + 136))(a1, v11, __p);
        while (__p[0])
        {
          if ((*(*__p[0] + 24))(__p[0]))
          {
            if (__p[0])
            {
              (*(*__p[0] + 8))();
              goto LABEL_25;
            }

LABEL_23:
            if (v39)
            {
              --*v39;
            }

LABEL_25:
            v16 = v50[0];
            if ((*(v50[0] + v12) & v13) != 0)
            {
              goto LABEL_26;
            }

            v17 = v13;
            v18 = INFINITY;
            v19 = v8;
            while (2)
            {
              v20 = v9;
              v9 = v19;
              v21 = *(*a2 + 4 * v11);
              if (((1 << v21) & v16[v21 >> 6]) != 0)
              {
                goto LABEL_31;
              }

              v29 = v17;
              v18 = (*(*a1 + 32))(a1, v21);
              v20[1] = *v20;
              v40 = 0;
              (*(*a1 + 136))(a1, v21, __p);
              while (2)
              {
                if (!__p[0])
                {
                  if (v40 >= v38)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_42;
                }

                if (!(*(*__p[0] + 24))(__p[0]))
                {
                  if (__p[0])
                  {
                    v30 = (*(*__p[0] + 32))();
                    goto LABEL_43;
                  }

LABEL_42:
                  v30 = __p[1] + 16 * v40;
LABEL_43:
                  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v20, v30);
                  if (__p[0])
                  {
                    (*(*__p[0] + 40))(__p[0]);
                  }

                  else
                  {
                    ++v40;
                  }

                  continue;
                }

                break;
              }

              if (__p[0])
              {
                (*(*__p[0] + 8))();
                v17 = v29;
                goto LABEL_31;
              }

LABEL_48:
              v17 = v29;
              if (v39)
              {
                --*v39;
              }

LABEL_31:
              v22 = v21 >> 6;
              v35 = v20;
              v36 = v21;
              v23 = 1 << v21;
              v24 = v17;
              v25 = v12;
              (*(*a1 + 184))(a1, v21, v14);
              (*(*a1 + 240))(a1, v21);
              v26 = *v9;
              if (v9[1] != *v9)
              {
                v27 = 0;
                v28 = 0;
                do
                {
                  *__p = *&v26[v27];
                  HIDWORD(__p[1]) = *(*a2 + 4 * SHIDWORD(__p[1]));
                  (*(*a1 + 208))(a1, v21, __p);
                  ++v28;
                  v26 = *v9;
                  v27 += 16;
                }

                while (v28 < (v9[1] - *v9) >> 4);
              }

              v16 = v50[0];
              *(v50[0] + v25) |= v24;
              v17 = 1 << v21;
              v12 = v21 >> 6;
              v14 = v18;
              v8 = v35;
              v11 = v36;
              v19 = v35;
              if ((v16[v22] & v23) == 0)
              {
                continue;
              }

              break;
            }

LABEL_26:
            if (v41)
            {
              (*(*v41 + 32))(v41);
            }

            else
            {
              ++v43;
            }

            goto LABEL_4;
          }

          if (!__p[0])
          {
            goto LABEL_17;
          }

          v15 = (*(*__p[0] + 32))();
LABEL_18:
          std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v8, v15);
          if (__p[0])
          {
            (*(*__p[0] + 40))(__p[0]);
          }

          else
          {
            ++v40;
          }
        }

        if (v40 >= v38)
        {
          goto LABEL_23;
        }

LABEL_17:
        v15 = __p[1] + 16 * v40;
        goto LABEL_18;
      }

LABEL_9:
      v10 = v43;
      goto LABEL_10;
    }

    if (v41)
    {
      (*(*v41 + 8))();
    }

LABEL_58:
    (*(*a1 + 192))(a1, v34, 0x3FFFFFFF0007);
    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    if (v50[0])
    {
      operator delete(v50[0]);
    }
  }

  else
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v31 = fst::LogMessage::LogMessage(v50, __p);
    v32 = fst::cerr(v31);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "StateSort: bad order vector size: ", 34);
    MEMORY[0x1B8C84C30](v33, (a2[1] - *a2) >> 2);
    fst::LogMessage::~LogMessage(v50);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p[0]);
    }

    (*(*a1 + 192))(a1, 4, 4);
  }
}

void sub_1B5A15A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  fst::LogMessage::~LogMessage((v28 - 128));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t srilm::residual_adapt(srilm *this, void *a2, char **a3, srilm::NgramCountContext *a4)
{
  v6 = this;
  v162 = *MEMORY[0x1E69E9840];
  strcpy(v161, "residual-adapt");
  v53 = 0;
  v54 = v161;
  __p = 0;
  v52 = 0;
  std::vector<char *>::__init_with_size[abi:ne200100]<char * const*,char * const*>(&__p, &v54, &v55, 1uLL);
  if (v6 <= 0)
  {
    v8 = v52;
  }

  else
  {
    v7 = v6;
    v8 = v52;
    do
    {
      if (v8 >= v53)
      {
        v9 = (v8 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v10 = (v53 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v53 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(&__p, v11);
        }

        *(8 * v9) = *a2;
        v8 = (8 * v9 + 8);
        v12 = (8 * v9 - (v52 - __p));
        memcpy(v12, __p, v52 - __p);
        v13 = __p;
        __p = v12;
        v52 = v8;
        v53 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v8 = *a2;
        v8 += 8;
      }

      v52 = v8;
      ++a2;
      --v7;
    }

    while (v7);
  }

  if (v8 >= v53)
  {
    v15 = (v8 - __p) >> 3;
    if ((v15 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v16 = (v53 - __p) >> 2;
    if (v16 <= v15 + 1)
    {
      v16 = v15 + 1;
    }

    if (v53 - __p >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(&__p, v17);
    }

    *(8 * v15) = 0;
    v14 = 8 * v15 + 8;
    v18 = (8 * v15 - (v52 - __p));
    memcpy(v18, __p, v52 - __p);
    v19 = __p;
    __p = v18;
    v52 = v14;
    v53 = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v8 = 0;
    v14 = (v8 + 8);
  }

  v52 = v14;
  v50 = 0;
  v48 = 3;
  v49 = 3;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v158 = xmmword_1B5B359C8;
  v159 = unk_1B5B359D8;
  v160 = xmmword_1B5B359E8;
  v156 = xmmword_1B5B359A8;
  v157 = unk_1B5B359B8;
  v43 = 0;
  v44 = 0x3FEFF7CED916872BLL;
  __s = 0;
  v40 = 1;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v56 = 1;
  v57 = "version";
  v58 = &v50 + 4;
  v59 = "print version information and exit";
  v60 = -2;
  v61 = "debug";
  v62 = &v50;
  v63 = "debugging level for LM";
  v64 = -2;
  v65 = "adapt-order";
  v66 = &v49;
  v67 = "maximum n-gram order for which adaptation is to be performed [default is 3]";
  v68 = -2;
  v69 = "lm-order";
  v70 = &v48;
  v71 = "n-gram order of the LM to be adapted (passed via -read-lm option) [default is 3]";
  v72 = -3;
  v73 = "read-text";
  v74 = &v47;
  v75 = "text file of adaptation data. Only n-gram counts up to the order passed via -adapt-order will be generated from this file";
  v76 = 1;
  v77 = "text-has-weights";
  v78 = &v46;
  v79 = "indicates that text file passed via -read-text or -read-dev contains count weights";
  v80 = -3;
  v81 = "read-counts";
  v82 = &v45;
  v83 = "counts file of adaptation data. Only n-gram counts up to the order passed via -adapt-order will be read from this file";
  v84 = -5;
  v85 = "eta";
  v86 = &v156;
  v87 = "adaptation weight. It will be used for all n-gram orders for which no -eta(n) is provided";
  v88 = -5;
  v89 = "eta1";
  v90 = &v156 + 8;
  v91 = "adaptation weight for 1-grams";
  v92 = -5;
  v93 = "eta2";
  v94 = &v157;
  v95 = "adaptation weight for 2-grams";
  v96 = -5;
  v97 = "eta3";
  v98 = &v157 + 8;
  v99 = "adaptation weight for 3-grams";
  v100 = -5;
  v101 = "eta4";
  v102 = &v158;
  v103 = "adaptation weight for 4-grams";
  v104 = -5;
  v105 = "eta5";
  v106 = &v158 + 8;
  v107 = "adaptation weight for 5-grams";
  v108 = -5;
  v109 = "eta6";
  v110 = &v159;
  v111 = "adaptation weight for 6-grams";
  v112 = -5;
  v113 = "eta7";
  v114 = &v159 + 8;
  v115 = "adaptation weight for 7-grams";
  v116 = -5;
  v117 = "eta8";
  v118 = &v160;
  v119 = "adaptation weight for 8-grams";
  v120 = -5;
  v121 = "eta9";
  v122 = &v160 + 8;
  v123 = "adaptation weight for 9-grams";
  v124 = -3;
  v125 = "read-lm";
  v126 = &v43;
  v127 = "LM file to be adapted. This is an LM file in ARPA text or binary format";
  v128 = -3;
  v129 = "write-lm";
  p_s = &__s;
  v131 = "output adapted LM file. This is an ARPA LM in text or binary format, see -write-binary-lm [default is text format]";
  v132 = 1;
  v133 = "write-binary-lm";
  v134 = &v41;
  v135 = "indicates that the output adapted LM file passed via -write-lm will be written in binary format";
  v136 = 0;
  v137 = "dont-trust-totals";
  v138 = &v40;
  v139 = "do not trust lower-order counts for adaptation, recompute from the higher-order counts [default is to trust lower-order counts]";
  v140 = -3;
  v141 = "vocab";
  v142 = &v39;
  v143 = "vocab file";
  v144 = -3;
  v145 = "read-dev";
  v146 = &v38;
  v147 = "text file of dev data used to optimize eta. If provided, the optimized eta will be used for all orders and thus override all -eta or -eta(n) options";
  v148 = -5;
  v149 = "max-eta";
  v150 = &v44;
  v151 = "maximum possible value of eta. It's only used when -read-dev is provided to set the maximum value of optimized eta";
  v152 = 1;
  v153 = "memuse";
  v154 = &v37;
  v155 = "show memory usage";
  Opt_Parse(((v14 - __p) >> 3) - 1, __p, &v56, 25, 0);
  if (HIDWORD(v50))
  {
    printVersion(RcsId);
    v20 = 0;
    goto LABEL_68;
  }

  if ((v49 - 1) >= 9)
  {
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "adaptation order must be >= 1 and <= ", 37);
    v27 = MEMORY[0x1B8C84C10](v26, 9);
    v28 = ", use -adapt-order with a relevant value\n";
    v29 = 41;
  }

  else
  {
    v21 = v47;
    if (v47 | v45)
    {
      goto LABEL_37;
    }

    v22 = a3[1];
    if (v22 && (*(*v22 + 24))(v22))
    {
      v21 = v47;
LABEL_37:
      if (v21)
      {
        goto LABEL_48;
      }

      v23 = a3[1];
      if (v23)
      {
        v24 = (*(*v23 + 24))(v23);
        if (v46)
        {
          v25 = v24;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
LABEL_48:
          v30 = *(a3 + 167);
          if (v43)
          {
            if (v30 < 0)
            {
              v30 = a3[19];
            }

            if (v30)
            {
              v28 = "command-line (read-lm) and custom-lm config options cannot be mixed.\n";
              v27 = MEMORY[0x1E69E5300];
              v29 = 69;
              goto LABEL_67;
            }
          }

          else
          {
            if (v30 >= 0)
            {
              v31 = *(a3 + 167);
            }

            else
            {
              v31 = a3[19];
            }

            if (!v31)
            {
              v28 = "no input lm file is provided, use -read-lm option\n";
              v27 = MEMORY[0x1E69E5300];
              v29 = 50;
              goto LABEL_67;
            }

            if (v30 >= 0)
            {
              v32 = (a3 + 18);
            }

            else
            {
              v32 = a3[18];
            }

            v43 = v32;
          }

          v33 = *(a3 + 143);
          v34 = v33;
          if (v33 < 0)
          {
            v33 = a3[16];
          }

          if (v33)
          {
            if (__s)
            {
              v28 = "command-line (write-lm) and custom-lm config options cannot be mixed.\n";
              v27 = MEMORY[0x1E69E5300];
              v29 = 70;
              goto LABEL_67;
            }

            if (v34 >= 0)
            {
              v36 = (a3 + 15);
            }

            else
            {
              v36 = a3[15];
            }

            __s = v36;
          }

          if (!a3[4])
          {
            operator new();
          }

          operator new();
        }
      }

      else if (!v46)
      {
        goto LABEL_48;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "-textFileHasWeights option will be ignored as no input text option is provided (use -read-text)\n", 96);
      goto LABEL_48;
    }

    v28 = "no adaptation text or counts are provided, use -read-text and/or -read-counts option\n";
    v27 = MEMORY[0x1E69E5300];
    v29 = 85;
  }

LABEL_67:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
  v20 = 1;
LABEL_68:
  if (__p)
  {
    v52 = __p;
    operator delete(__p);
  }

  return v20;
}

void sub_1B5A17164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  File::~File(&a10);
  (*(*v43 + 8))(v43);
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::GlobalHotfixTranslatorFactory::~GlobalHotfixTranslatorFactory(quasar::GlobalHotfixTranslatorFactory *this)
{
  *this = &unk_1F2D3E0E0;
  v2 = (this + 8);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::Bitmap::~Bitmap(this);
}

{
  *this = &unk_1F2D3E0E0;
  v2 = (this + 8);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::Bitmap::~Bitmap(this);
  MEMORY[0x1B8C85350]();
}

void quasar::GlobalHotfixTranslatorFactory::GlobalHotfixTranslatorFactory(void *a1, uint64_t *a2, int a3, int a4, void *a5)
{
  *a1 = &unk_1F2D3E0E0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  if (a4)
  {
    if (*a5)
    {
      v5 = quasar::gLogLevel < 1;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      memset(v11, 0, 272);
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Cannot specify both factoryLocalModelSharing and context", 56);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(v11);
    }

    operator new();
  }

  v7 = *a2;
  v6 = a2[1];
  if ((-352407573 * ((v6 - *a2) >> 3)) >= 2)
  {
    v8 = a5[1];
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    quasar::GlobalTranslatorFactory::createTranslatorFactory(v7, a3, 1, 0);
  }

  v9 = v6 - 1560;
  v10 = a5[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  quasar::GlobalTranslatorFactory::createTranslatorFactory(v9, a3, 1, 0);
}

void sub_1B5A178C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a17);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a17);
  quasar::Bitmap::~Bitmap(v17);
  _Unwind_Resume(a1);
}

void sub_1B5A178E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](va);
  quasar::Bitmap::~Bitmap(v9);
  _Unwind_Resume(a1);
}

void sub_1B5A178E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](va);
  quasar::Bitmap::~Bitmap(v9);
  _Unwind_Resume(a1);
}

void sub_1B5A17918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (!a5)
  {
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](va);
    quasar::Bitmap::~Bitmap(v9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1B5A178F8);
}

void quasar::GlobalHotfixTranslatorFactory::createTranslator(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a1[1] == a1[2])
  {
    if (quasar::gLogLevel >= 1)
    {
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
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "No translation configurations given, cannot instantiate translator", 66);
LABEL_35:
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v30);
    }

LABEL_36:
    *a5 = 0;
    a5[1] = 0;
    return;
  }

  if (((*(*a1 + 32))(a1) & 1) == 0)
  {
    if (quasar::gLogLevel >= 1)
    {
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
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v30);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "Unable to instantiate translator. Language pair: ", 49);
      v15 = *(a2 + 23);
      if (v15 >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      if (v15 >= 0)
      {
        v17 = *(a2 + 23);
      }

      else
      {
        v17 = *(a2 + 8);
      }

      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "->", 2);
      v20 = *(a3 + 23);
      if (v20 >= 0)
      {
        v21 = a3;
      }

      else
      {
        v21 = *a3;
      }

      if (v20 >= 0)
      {
        v22 = *(a3 + 23);
      }

      else
      {
        v22 = *(a3 + 8);
      }

      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " is not supported for task: ", 28);
      v25 = *(a4 + 23);
      if (v25 >= 0)
      {
        v26 = a4;
      }

      else
      {
        v26 = *a4;
      }

      if (v25 >= 0)
      {
        v27 = *(a4 + 23);
      }

      else
      {
        v27 = *(a4 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  memset(v29, 0, sizeof(v29));
  v10 = a1[1];
  v11 = a1[2];
  if (v11 - v10 != 16)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if ((*(**(v10 + v12) + 32))(*(v10 + v12), a2, a3, a4))
      {
        (*(**(a1[1] + v12) + 16))(&v30);
        if (v30)
        {
          std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](v29, &v30);
        }

        if (*(&v30 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
        }
      }

      ++v13;
      v10 = a1[1];
      v11 = a1[2];
      v12 += 16;
    }

    while (v13 < ((v11 - v10) >> 4) - 1);
  }

  (*(**(v11 - 16) + 16))(&v28);
  if (v28)
  {
    std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](v29, &v28);
    std::allocate_shared[abi:ne200100]<quasar::HotfixTranslator,std::allocator<quasar::HotfixTranslator>,std::vector<std::shared_ptr<quasar::Translator>> &,0>();
  }

  if (quasar::gLogLevel >= 1)
  {
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
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "Unable to instantiate translator", 32);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&v30);
  }

  *a5 = 0;
  a5[1] = 0;
  if (*(&v28 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
  }

  *&v30 = v29;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_1B5A17CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, std::locale a15)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a15);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  a15.__locale_ = &a12;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

unint64_t quasar::GlobalHotfixTranslatorFactory::engineType@<X0>(_BYTE *a1@<X8>)
{
  v3 = quasar::HotfixTranslator::ENGINE_TYPE;
  result = strlen(quasar::HotfixTranslator::ENGINE_TYPE);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memmove(a1, v3, result);
  }

  a1[v5] = 0;
  return result;
}

uint64_t quasar::GlobalHotfixTranslatorFactory::isLanguagePairSupported(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) == v1)
  {
    return 0;
  }

  else
  {
    return (*(**(v1 - 16) + 32))();
  }
}

uint64_t quasar::GlobalHotfixTranslatorFactory::isCompileRequired(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5)
  {
    return 0;
  }

  v9 = v4 + 16;
  do
  {
    result = (*(**(v9 - 16) + 40))(*(v9 - 16), a2, a3, a4);
    if (result)
    {
      break;
    }

    v11 = v9 == v5;
    v9 += 16;
  }

  while (!v11);
  return result;
}

uint64_t quasar::GlobalHotfixTranslatorFactory::preload(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  for (i = *(result + 16); v4 != i; result = (*(*v9 + 48))(v9, a2, a3, a4))
  {
    v9 = *v4;
    v4 += 2;
  }

  return result;
}

void *std::__shared_ptr_emplace<quasar::HotfixTranslator>::__shared_ptr_emplace[abi:ne200100]<std::vector<std::shared_ptr<quasar::Translator>> &,std::allocator<quasar::HotfixTranslator>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D3E140;
  std::allocator<quasar::HotfixTranslator>::construct[abi:ne200100]<quasar::HotfixTranslator,std::vector<std::shared_ptr<quasar::Translator>> &>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::HotfixTranslator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D3E140;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::HotfixTranslator>::construct[abi:ne200100]<quasar::HotfixTranslator,std::vector<std::shared_ptr<quasar::Translator>> &>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  memset(v4, 0, sizeof(v4));
  std::vector<std::shared_ptr<quasar::Translator>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::Translator>*,std::shared_ptr<quasar::Translator>*>(v4, *a3, a3[1], (a3[1] - *a3) >> 4);
  quasar::HotfixTranslator::HotfixTranslator(a2, v4);
  v5 = v4;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_1B5A18110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::ShortlistDataOnDisk::ShortlistDataOnDisk(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = 0;
  *a1 = 0;
  do
  {
    v10 = a1 + v9;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v9 += 24;
  }

  while (v9 != 72);
  v11 = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  do
  {
    memset(&__p, 0, sizeof(__p));
    v27 = 0;
    v28.__begin_ = 0;
    kaldi::ReadIntegerVector<int>(a2, a3, &__p, a4, 0, &v28, &v27);
    if (__p.__begin_ != __p.__end_)
    {
      operator new[]();
    }

    v15 = v27;
    begin = v28.__begin_;
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    v12 = a1 + v11;
    v13 = a1 + v11;
    if (*(a1 + v11 + 24) == 1)
    {
      v14 = *(v12 + 8);
      if (v14)
      {
        MEMORY[0x1B8C85310](v14, 0x1000C8077774924);
      }
    }

    *(v12 + 8) = begin;
    *(v13 + 16) = v15;
    *(v13 + 24) = 0;
    v11 += 24;
  }

  while (v11 != 72);
  kaldi::Matrix<float>::Matrix(&__p);
  if (a5)
  {
    kaldi::Matrix<float>::Read(&__p, a2, a3, 0, a4);
  }

  for (i = 0; i != 48; i += 24)
  {
    memset(&v28, 0, sizeof(v28));
    v26 = 0;
    v27 = 0;
    kaldi::ReadIntegerVector<int>(a2, a3, &v28, a4, 0, &v27, &v26);
    if (v28.__begin_ != v28.__end_)
    {
      operator new[]();
    }

    v21 = v26;
    v22 = v27;
    if (v28.__begin_)
    {
      v28.__end_ = v28.__begin_;
      operator delete(v28.__begin_);
    }

    v18 = a1 + i;
    v19 = a1 + i;
    if (*(a1 + i + 96) == 1)
    {
      v20 = *(v18 + 80);
      if (v20)
      {
        MEMORY[0x1B8C85310](v20, 0x1000C8077774924);
      }
    }

    *(v18 + 80) = v22;
    *(v19 + 88) = v21;
    *(v19 + 96) = 0;
  }

  kaldi::Matrix<float>::~Matrix(&__p);
  return a1;
}

void sub_1B5A183A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  kaldi::Matrix<float>::~Matrix(&a11);
  kaldi::quasar::ShortlistDataOnDisk::ShortlistDataOnDisk(v19);
  _Unwind_Resume(a1);
}

void *kaldi::quasar::ShortlistDataOnDisk::ShortlistDataOnDisk(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, int a5)
{
  v7 = kaldi::quasar::ShortlistDataOnDisk::ShortlistDataOnDisk(a1, a2, a3, *(*a4 + 8), a5);
  v8 = *a4;
  *a4 = 0;
  v9 = *v7;
  *a1 = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return a1;
}

void *kaldi::quasar::ShortlistDataOnDisk::ShortlistDataOnDisk(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  *result = 0;
  do
  {
    v4 = &result[v3 / 8];
    v5 = a2 + v3;
    v6 = *(a2 + v3 + 8);
    v4[1] = *(a2 + v3);
    v4[2] = v6;
    *(v4 + 24) = *(a2 + v3 + 16);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    v3 += 24;
  }

  while (v3 != 72);
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = 3 * v8;
    v10 = &result[v9 + 10];
    v11 = a3 + 8 * v9;
    v12 = *(v11 + 8);
    *v10 = *v11;
    *(v10 + 8) = v12;
    *(v10 + 16) = *(v11 + 16);
    LOBYTE(v10) = v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    v7 = 1;
    v8 = 1;
  }

  while ((v10 & 1) == 0);
  return result;
}

uint64_t kaldi::quasar::ShortlistDataOnDisk::Write(uint64_t a1, void *a2, int a3)
{
  v6 = (a1 + 16);
  v7 = 72;
  do
  {
    kaldi::WriteIntegerByteArray<int>(a2, a3, 0, *v6, *(v6 - 1));
    v6 += 3;
    v7 -= 24;
  }

  while (v7);
  v8 = (a1 + 88);
  v9 = 48;
  do
  {
    result = kaldi::WriteIntegerByteArray<int>(a2, a3, 0, *v8, *(v8 - 1));
    v8 += 3;
    v9 -= 24;
  }

  while (v9);
  return result;
}

uint64_t kaldi::quasar::ShortlistDataOnDisk::GetConstrainedWordIds@<X0>(uint64_t result@<X0>, int a2@<W1>, int **a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v9 = result;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 1065353216;
  if (*(result + 88) <= (a2 + 1))
  {
    v12 = *(result + 112);
    v11 = *(result + 80);
  }

  else
  {
    v11 = *(result + 80);
    v12 = *(v11 + 4 * (a2 + 1));
  }

  v13 = v12 - *(v11 + 4 * a2);
  if (v13 >= a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = v13;
  }

  if (v14 >= 1)
  {
    v15 = 0;
    if (v13 >= a5)
    {
      v16 = a5;
    }

    else
    {
      v16 = v13;
    }

    do
    {
      v23 = *(v9[13] + 4 * (v15 + *(v9[10] + 4 * a2)));
      result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a6, &v23);
      ++v15;
    }

    while (v16 != v15);
  }

  v18 = *a3;
  for (i = a3[1]; v18 != i; ++v18)
  {
    result = kaldi::flatVec3Size<std::array<kaldi::MappableVector<int>,3ul>>((v9 + 1), a2, *v18);
    if (result >= a4)
    {
      v19 = a4;
    }

    else
    {
      v19 = result;
    }

    if (v19 >= 1)
    {
      v20 = 0;
      if (result >= a4)
      {
        v21 = a4;
      }

      else
      {
        v21 = result;
      }

      do
      {
        v22 = *(v9[7] + 4 * (v20 + *(v9[4] + 4 * (*(v9[1] + 4 * a2) + *v18))));
        result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a6, &v22);
        ++v20;
      }

      while (v21 != v20);
    }
  }

  return result;
}

uint64_t kaldi::flatVec3Size<std::array<kaldi::MappableVector<int>,3ul>>(uint64_t a1, int a2, int a3)
{
  v3 = *(*a1 + 4 * a2) + a3;
  if (*(a1 + 32) <= (v3 + 1))
  {
    v5 = *(a1 + 56);
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 4 * (v3 + 1));
  }

  return (v5 - *(v4 + 4 * v3));
}

uint64_t kaldi::quasar::operator==(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = (a1 + 16);
  v6 = 72;
  while (*v5 == *v4 && !memcmp(*(v5 - 1), *(v4 - 1), 4 * *v5))
  {
    v4 += 3;
    v5 += 3;
    v6 -= 24;
    if (!v6)
    {
      v7 = (a2 + 88);
      v8 = (a1 + 88);
      v9 = 48;
      while (*v8 == *v7 && !memcmp(*(v8 - 1), *(v7 - 1), 4 * *v8))
      {
        v7 += 3;
        v8 += 3;
        v9 -= 24;
        if (!v9)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 0;
}

void quasar::QualityEstimatorFeature::create(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8) != 3 || (**a1 == 22095 ? (v4 = *(*a1 + 2) == 83) : (v4 = 0), !v4))
    {
      if (*(a1 + 8) == 10 && **a1 == 0x6974697465706552 && *(*a1 + 8) == 28271)
      {
        goto LABEL_28;
      }

      if (*(a1 + 8) != 6)
      {
        goto LABEL_35;
      }

      v2 = *a1;
LABEL_22:
      v6 = *v2;
      v7 = *(v2 + 4);
      if (v6 == 1735288140 && v7 == 26740)
      {
        operator new();
      }

LABEL_35:
      memset(v16, 0, sizeof(v16));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "The feature type '", 18);
      v12 = *(a1 + 23);
      if (v12 >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      if (v12 >= 0)
      {
        v14 = *(a1 + 23);
      }

      else
      {
        v14 = *(a1 + 8);
      }

      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "' is not supported");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v16);
    }
  }

  else
  {
    v1 = *(a1 + 23);
    if (v1 != 3)
    {
      v2 = a1;
      if (v1 != 6)
      {
        if (v1 != 10)
        {
          goto LABEL_35;
        }

        if (*a1 != 0x6974697465706552 || *(a1 + 8) != 28271)
        {
          goto LABEL_35;
        }

LABEL_28:
        _ZNSt3__115allocate_sharedB8ne200100IN6quasar17RepetitionFeatureENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      goto LABEL_22;
    }

    if (*a1 != 22095 || *(a1 + 2) != 83)
    {
      goto LABEL_35;
    }
  }

  _ZNSt3__115allocate_sharedB8ne200100IN6quasar10OVSFeatureENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void quasar::OVSFeature::init(marisa::grimoire::trie::LoudsTrie **this, const quasar::QualityEstimatorOptions *a2)
{
  v4 = quasar::OptionValue<std::string>::value(a2 + 62);
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    v27.__r_.__value_.__r.__words[2] = *(v4 + 16);
    *&v27.__r_.__value_.__l.__data_ = v5;
  }

  v6 = quasar::OptionValue<std::string>::value(a2 + 82);
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v26.__r_.__value_.__r.__words[2] = *(v6 + 16);
    *&v26.__r_.__value_.__l.__data_ = v7;
  }

  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&v27.__r_.__value_.__s + 23))
    {
      goto LABEL_9;
    }

LABEL_19:
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "src-ovs-file not present in the config", 38);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v9);
  }

  if (!v27.__r_.__value_.__l.__size_)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&v26.__r_.__value_.__s + 23))
    {
      goto LABEL_11;
    }

LABEL_21:
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "tgt-ovs-file not present in the config", 38);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v9);
  }

  if (!v26.__r_.__value_.__l.__size_)
  {
    goto LABEL_21;
  }

LABEL_11:
  OVSFile = quasar::OVSFeature::readOVSFile(v6, &v27, this + 1);
  quasar::OVSFeature::readOVSFile(OVSFile, &v26, this + 2);
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "Registered OVS Feature", 22);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v9);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_1B5A18C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  if (*(v9 - 73) < 0)
  {
    operator delete(*(v9 - 96));
  }

  if (*(v9 - 41) < 0)
  {
    operator delete(*(v9 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t *quasar::OVSFeature::readOVSFile(uint64_t a1, uint64_t a2, marisa::grimoire::trie::LoudsTrie **a3)
{
  v52[19] = *MEMORY[0x1E69E9840];
  marisa::Keyset::Keyset(v47);
  std::ifstream::basic_ifstream(v50);
  v5 = v50[0];
  if (*&v51[*(v50[0] - 24) + 16])
  {
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
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "OVS file '", 10);
    v23 = *(a2 + 23);
    if (v23 >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = *a2;
    }

    if (v23 >= 0)
    {
      v25 = *(a2 + 23);
    }

    else
    {
      v25 = *(a2 + 8);
    }

    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "' is not found", 14);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  __p[0] = 0;
  __p[1] = 0;
  *&v31 = 0;
  v6 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v50 + *(v5 - 24)));
    v7 = std::locale::use_facet(v28, v6);
    v8 = (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(v28);
    v9 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v50, __p, v8);
    if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::operator+<char>();
    v10 = std::string::append(&v27, " ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v29 = v10->__r_.__value_.__r.__words[2];
    *&v28[0].__locale_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v29 >= 0)
    {
      locale = v28;
    }

    else
    {
      locale = v28[0].__locale_;
    }

    marisa::Keyset::push_back(v47, locale);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0].__locale_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v5 = v50[0];
  }

  if (SBYTE7(v31) < 0)
  {
    operator delete(__p[0]);
  }

  marisa::Trie::build(a3, v47, 0);
  if (quasar::gLogLevel >= 5)
  {
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
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "OVS file '", 10);
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

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "' has ", 6);
    v19 = marisa::Trie::num_keys(a3);
    v20 = MEMORY[0x1B8C84C30](v18, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " words", 6);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  v50[0] = *MEMORY[0x1E69E54C8];
  *(v50 + *(v50[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v51);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v52);
  marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(v49);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(v48);
  return marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(v47);
}

void sub_1B5A190D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

float quasar::OVSFeature::getScore(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v24[2] = *MEMORY[0x1E69E9840];
  __p = 0;
  v23 = 0uLL;
  v20 = 0;
  v21 = 0uLL;
  kaldi::JoinVectorToString(a2, " ", 1, &__p);
  kaldi::JoinVectorToString(a3, " ", 1, &v20);
  quasar::toLower(&__p, &v18);
  v5 = std::string::insert(&v18, 0, " ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v19, " ");
  v8 = v7->__r_.__value_.__r.__words[0];
  v24[0] = v7->__r_.__value_.__l.__size_;
  *(v24 + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
  v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  __p = v8;
  *&v23 = v24[0];
  *(&v23 + 7) = *(v24 + 7);
  HIBYTE(v23) = v9;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  quasar::toLower(&v20, &v18);
  v10 = std::string::insert(&v18, 0, " ");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v19, " ");
  v13 = v12->__r_.__value_.__r.__words[0];
  v24[0] = v12->__r_.__value_.__l.__size_;
  *(v24 + 7) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  v14 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

  v20 = v13;
  *&v21 = v24[0];
  *(&v21 + 7) = *(v24 + 7);
  HIBYTE(v21) = v14;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v15 = quasar::OVSFeature::containsOvs(v12, &__p, (a1 + 8));
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = quasar::OVSFeature::containsOvs(v15, &v20, (a1 + 16));
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  return (v16 ^ 1);
}

void sub_1B5A193C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

marisa::grimoire::trie::LoudsTrie *quasar::OVSFeature::containsOvs(uint64_t a1, uint64_t *a2, marisa::grimoire::trie::LoudsTrie **a3)
{
  marisa::Agent::Agent(v8);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  if (*a2)
  {
    do
    {
      marisa::Agent::set_query(v8, a2);
      v5 = marisa::Trie::common_prefix_search(a3, v8);
      if (v5)
      {
        break;
      }

      v6 = *(a2 + 1);
      a2 = (a2 + 1);
    }

    while (v6);
  }

  else
  {
    v5 = 0;
  }

  marisa::Agent::~Agent(v8);
  return v5;
}

void quasar::RepetitionFeature::init(quasar::RepetitionFeature *this, const quasar::QualityEstimatorOptions *a2)
{
  v3 = quasar::OptionValue<std::string>::value(a2 + 162);
  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *v3, *(v3 + 8));
  }

  else
  {
    v4 = *v3;
    v22.__r_.__value_.__r.__words[2] = *(v3 + 16);
    *&v22.__r_.__value_.__l.__data_ = v4;
  }

  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&v22.__r_.__value_.__s + 23))
    {
      goto LABEL_6;
    }

LABEL_12:
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
    v5 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "regex-file not present in the config", 36);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v5);
  }

  if (!v22.__r_.__value_.__l.__size_)
  {
    goto LABEL_12;
  }

LABEL_6:
  quasar::RepetitionFeature::readRegularExpressions(this, &v22);
  if (quasar::gLogLevel >= 5)
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
    v5 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "Registered Repetition Feature", 29);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v5);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1B5A1962C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  if (*(v9 - 25) < 0)
  {
    operator delete(*(v9 - 48));
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::RepetitionFeature::readRegularExpressions(uint64_t a1, uint64_t a2)
{
  v50[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v48);
  if (*&v49[*(v48[0] - 24) + 16])
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
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *&v31[0].__locale_ = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Regular expression file for repetition error detection'", 55);
    v24 = *(a2 + 23);
    if (v24 >= 0)
    {
      v25 = a2;
    }

    else
    {
      v25 = *a2;
    }

    if (v24 >= 0)
    {
      v26 = *(a2 + 23);
    }

    else
    {
      v26 = *(a2 + 8);
    }

    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "' is not found", 14);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v31);
  }

  memset(&__p, 0, sizeof(__p));
  v2 = MEMORY[0x1E69E5318];
  std::ios_base::getloc((v48 + *(v48[0] - 24)));
  v3 = std::locale::use_facet(v31, v2);
  v4 = (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(v31);
  v5 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v48, &__p, v4);
  if ((*(v5 + *(*v5 - 24) + 32) & 5) == 0)
  {
    memset(v29, 0, sizeof(v29));
    kaldi::SplitStringToVector(&__p, "\t", 1, v29);
    v6 = *(v29[0] + 23);
    if (v6 < 0)
    {
      if (*(v29[0] + 8) != 6 || (**v29[0] == 1920298867 ? (v9 = *(*v29[0] + 4) == 25955) : (v9 = 0), !v9))
      {
        if (*(v29[0] + 8) != 6)
        {
          goto LABEL_36;
        }

        v8 = *v29[0];
LABEL_18:
        v10 = *v8;
        v11 = *(v8 + 2);
        if (v10 == 1735549300 && v11 == 29797)
        {
          std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v31, v29[0] + 24, 0);
        }

LABEL_36:
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
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        *&v31[0].__locale_ = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Language '", 10);
        v19 = *(v29[0] + 23);
        if (v19 >= 0)
        {
          v20 = v29[0];
        }

        else
        {
          v20 = *v29[0];
        }

        if (v19 >= 0)
        {
          v21 = *(v29[0] + 23);
        }

        else
        {
          v21 = *(v29[0] + 8);
        }

        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "' not supported for regular expression in repetition feature", 60);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v31);
      }
    }

    else
    {
      if (v6 != 6)
      {
        goto LABEL_36;
      }

      v7 = *v29[0] == 1920298867 && *(v29[0] + 4) == 25955;
      v8 = v29[0];
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v31, v29[0] + 24, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (quasar::gLogLevel > 4)
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
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *&v31[0].__locale_ = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Repetition feature has read the regular expressions from file ", 62);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v31);
  }

  v48[0] = *MEMORY[0x1E69E54C8];
  *(v48 + *(v48[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v49);
  std::istream::~istream();
  return MEMORY[0x1B8C85200](v50);
}

void sub_1B5A19BD0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5A19C28);
}

void sub_1B5A19BE0()
{
  v1 = &v0;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v1);
  JUMPOUT(0x1B5A19C10);
}

void sub_1B5A19BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17)
{
  std::locale::~locale(&a17);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  std::ifstream::~ifstream(&v20);
  _Unwind_Resume(a1);
}

float quasar::RepetitionFeature::getScore(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kaldi::JoinVectorToString<std::string>(a2, " ", &v16);
  kaldi::JoinVectorToString<std::string>(a3, " ", &v13);
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v5 = HIBYTE(v18);
  if (v18 >= 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16;
  }

  if (v18 < 0)
  {
    v5 = v17;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 8, v6, (v6 + v5), &__p, 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if (v7)
  {
    goto LABEL_17;
  }

  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v8 = HIBYTE(v15);
  if (v15 >= 0)
  {
    v9 = &v13;
  }

  else
  {
    v9 = v13;
  }

  if (v15 < 0)
  {
    v8 = v14;
  }

  v10 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 72, v9, (v9 + v8), &__p, 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  v11 = 0.0;
  if ((v10 & 1) == 0)
  {
LABEL_17:
    v11 = 1.0;
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v16);
  }

  return v11;
}

void sub_1B5A19DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void quasar::LengthFeature::init(quasar::LengthFeature *this, const quasar::QualityEstimatorOptions *a2)
{
  v4 = quasar::OptionValue<std::string>::value(a2 + 122);
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    __str.__r_.__value_.__r.__words[2] = *(v4 + 16);
    *&__str.__r_.__value_.__l.__data_ = v5;
  }

  v6 = quasar::OptionValue<std::string>::value(a2 + 142);
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v28.__r_.__value_.__r.__words[2] = *(v6 + 16);
    *&v28.__r_.__value_.__l.__data_ = v7;
  }

  v8 = quasar::OptionValue<std::string>::value(a2 + 102);
  if (*(v8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *v8, *(v8 + 8));
  }

  else
  {
    v9 = *v8;
    v27.__r_.__value_.__r.__words[2] = *(v8 + 16);
    *&v27.__r_.__value_.__l.__data_ = v9;
  }

  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__str.__r_.__value_.__s + 23))
    {
      goto LABEL_12;
    }

LABEL_26:
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
    v10 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "min-trans-len-percent not present in the config", 47);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v10);
  }

  if (!__str.__r_.__value_.__l.__size_)
  {
    goto LABEL_26;
  }

LABEL_12:
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&v28.__r_.__value_.__s + 23))
    {
      goto LABEL_14;
    }

LABEL_28:
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
    v10 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "max-trans-len-percent not present in the config", 47);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v10);
  }

  if (!v28.__r_.__value_.__l.__size_)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&v27.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_30:
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
    v10 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "fertility-file not present in the config", 40);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v10);
  }

  if (!v27.__r_.__value_.__l.__size_)
  {
    goto LABEL_30;
  }

LABEL_16:
  *(this + 2) = std::stof(&__str, 0) / 100.0;
  *(this + 3) = std::stof(&v28, 0) / 100.0;
  quasar::LengthFeature::readFertilityFile(this, &v27);
  if (quasar::gLogLevel >= 5)
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
    v10 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Registered Length Feature", 25);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v10);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1B5A1A0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  if (*(v9 - 105) < 0)
  {
    operator delete(*(v9 - 128));
  }

  if (*(v9 - 73) < 0)
  {
    operator delete(*(v9 - 96));
  }

  if (*(v9 - 41) < 0)
  {
    operator delete(*(v9 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::LengthFeature::readFertilityFile(uint64_t a1, uint64_t a2)
{
  v47[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v45);
  v4 = v45[0];
  if (*&v46[*(v45[0] - 24) + 16])
  {
    v42 = 0u;
    v43 = 0u;
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
    v27 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Fertility file '", 16);
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

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "' is not found", 14);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v27);
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  memset(&__p, 0, sizeof(__p));
  v5 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v45 + *(v4 - 24)));
    v6 = std::locale::use_facet(&v44, v5);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v44);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v45, &__p, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    kaldi::SplitStringToVector(&__p, "\t", 1, &v24);
    if (v25 - v24 != 48)
    {
      v42 = 0u;
      v43 = 0u;
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
      v27 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "The fertility file is should contain exactly two fields <word  fertility>", 73);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v27);
    }

    v9 = std::stof(v24 + 1, 0);
    v44.__locale_ = v24;
    *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 16), &v24->__r_.__value_.__l.__data_) + 10) = v9;
    v4 = v45[0];
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (quasar::gLogLevel > 4)
  {
    v42 = 0u;
    v43 = 0u;
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
    v27 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Fertility file '", 16);
    v11 = *(a2 + 23);
    if (v11 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    if (v11 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "' has ", 6);
    v16 = MEMORY[0x1B8C84C30](v15, *(a1 + 40));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " words", 6);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v27);
  }

  *&v27 = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
  v45[0] = *MEMORY[0x1E69E54C8];
  *(v45 + *(v45[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v46);
  std::istream::~istream();
  return MEMORY[0x1B8C85200](v47);
}

void sub_1B5A1A59C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5A1A5ECLL);
}

void sub_1B5A1A5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::locale a54)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v56 = &v55;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v56);
  std::ifstream::~ifstream(&v57);
  _Unwind_Resume(a1);
}

float quasar::LengthFeature::getScore(uint64_t a1, const void ***a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = 0.0;
  v8 = 0.0;
  while (v5 != v6)
  {
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 16), v5);
    if (v9)
    {
      v10 = *(v9 + 10);
    }

    else
    {
      v10 = 1.0;
    }

    v8 = v8 + v10;
    v5 += 3;
  }

  v11 = (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  if (floorf(v8 * *(a1 + 8)) <= v11 && ceilf(v8 * *(a1 + 12)) >= v11)
  {
    return 1.0;
  }

  return v7;
}

void quasar::OVSFeature::~OVSFeature(quasar::OVSFeature *this)
{
  *this = &unk_1F2D3E190;
  v1 = (this + 8);
  marisa::Trie::~Trie((this + 16));
  marisa::Trie::~Trie(v1);
}

{
  *this = &unk_1F2D3E190;
  v1 = (this + 8);
  marisa::Trie::~Trie((this + 16));
  marisa::Trie::~Trie(v1);

  JUMPOUT(0x1B8C85350);
}

void quasar::RepetitionFeature::~RepetitionFeature(std::locale *this)
{
  quasar::RepetitionFeature::~RepetitionFeature(this);

  JUMPOUT(0x1B8C85350);
}

{
  this->__locale_ = &unk_1F2D3E1F0;
  locale = this[15].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this + 9);
  v3 = this[7].__locale_;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::locale::~locale(this + 1);
}

void quasar::LengthFeature::~LengthFeature(quasar::LengthFeature *this)
{
  *this = &unk_1F2D3E240;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 16);
}

{
  *this = &unk_1F2D3E240;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 16);

  JUMPOUT(0x1B8C85350);
}

void marisa::Keyset::~Keyset(marisa::Keyset *this)
{
  marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(this + 6);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(this + 3);

  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(this);
}

uint64_t *marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x1B8C85310](v7, 0x1050C80717B85FCLL);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x1B8C85310](v4 - 8, 0x20C8093837F09);
  }

  return a1;
}

uint64_t *marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x1B8C85310](v7, 0x1000C8077774924);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x1B8C85310](v4 - 8, 0x10C80436913F5);
  }

  return a1;
}

void *_ZNSt3__120__shared_ptr_emplaceIN6quasar10OVSFeatureENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D3E290;
  quasar::OVSFeature::OVSFeature((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<quasar::OVSFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D3E290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

quasar::OVSFeature *quasar::OVSFeature::OVSFeature(quasar::OVSFeature *this)
{
  *this = &unk_1F2D3E190;
  v2 = (this + 16);
  marisa::Trie::Trie(this + 1);
  marisa::Trie::Trie(v2);
  return this;
}

void *_ZNSt3__120__shared_ptr_emplaceIN6quasar17RepetitionFeatureENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D3E2E0;
  quasar::RepetitionFeature::RepetitionFeature((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<quasar::RepetitionFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D3E2E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

quasar::RepetitionFeature *quasar::RepetitionFeature::RepetitionFeature(quasar::RepetitionFeature *this)
{
  *this = &unk_1F2D3E1F0;
  std::regex_traits<char>::regex_traits((this + 8));
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  std::regex_traits<char>::regex_traits(this + 3);
  *(this + 16) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return this;
}

void std::__shared_ptr_emplace<quasar::LengthFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D3E330;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::RegexStep::~RegexStep(void **this)
{
  *this = &unk_1F2D3E380;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void *quasar::ReplaceStep::ReplaceStep(void *a1, __int128 *a2, quasar::PTree *a3)
{
  v4 = a2;
  v6 = quasar::RegexStep::RegexStep(a1, a2);
  *v6 = &unk_1F2D3E3A8;
  v6[4] = 0;
  v6[5] = 0;
  v6[6] = 0;
  *(v6 + 28) = 0;
  if (*(v4 + 23) < 0)
  {
    if (*(v4 + 1) == 11 && **v4 == 0x2D746C612D657270 && *(*v4 + 3) == 0x6E65672D746C612DLL)
    {
      goto LABEL_27;
    }

    if (*(v4 + 1) == 12 && **v4 == 0x746C612D74736F70 && *(*v4 + 8) == 1852139309)
    {
      goto LABEL_27;
    }

    if (*(v4 + 1) != 12)
    {
      goto LABEL_34;
    }

    v4 = *v4;
LABEL_22:
    if (*v4 != 0x6D6F632D74736F70 || *(v4 + 2) != 1701734754)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  v7 = *(v4 + 23);
  if (v7 != 11)
  {
    if (v7 != 12)
    {
      goto LABEL_34;
    }

    if (*v4 == 0x746C612D74736F70 && *(v4 + 2) == 1852139309)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if (*v4 != 0x2D746C612D657270 || *(v4 + 3) != 0x6E65672D746C612DLL)
  {
LABEL_34:
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
    v22 = 0u;
    v23 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Step name must be ", 18);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "pre-alt-gen", 11);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " or ", 4);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "post-alt-gen", 12);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " or ", 4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "post-combine", 12);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

LABEL_27:
  v12 = quasar::PTree::begin(a3);
  if (v12 != quasar::PTree::end(a3))
  {
    std::string::basic_string[abi:ne200100]<0>(v20, "regex");
    quasar::PTree::getStringOptional(v12 + 24, v20);
  }

  return a1;
}

void sub_1B5A1B3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a20);
  *v25 = &unk_1F2D3E380;
  if (*(v25 + 31) < 0)
  {
    operator delete(*(v25 + 8));
  }

  _Unwind_Resume(a1);
}

void *quasar::RegexStep::RegexStep(void *a1, __int128 *a2)
{
  *a1 = &unk_1F2D3E380;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void quasar::ReplaceStep::mergeStep(quasar::ReplaceStep *this, uint64_t **a2)
{
  std::vector<std::shared_ptr<quasar::ReplaceStep::RegexRule>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<quasar::ReplaceStep::RegexRule> const*>,std::__wrap_iter<std::shared_ptr<quasar::ReplaceStep::RegexRule> const*>>(this + 4, *(this + 5), a2[4], a2[5], (a2[5] - a2[4]) >> 4);
  if (*(a2 + 57) == 1 && (*(this + 57) != 1 || *(a2 + 56) != *(this + 56)))
  {
    if (quasar::gLogLevel >= 5)
    {
      memset(v5, 0, sizeof(v5));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "validate-brackets will be overwritten by validate-brackets = ", 61);
      MEMORY[0x1B8C84BD0](v4, *(a2 + 56));
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v5);
    }

    *(this + 28) = *(a2 + 56) | 0x100;
  }
}

uint64_t quasar::ReplaceStep::applyRule(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  v5 = *(a2 + 8);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v7 == v8 || !quasar::ReplaceStep::validateBracket(a1, a2))
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *a2, v5);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
  }

  else
  {
    v23 = *a2;
  }

  v22[0] = 0;
  v22[1] = 0;
  for (i = v22; v7 != v8; v7 += 2)
  {
    v13 = *v7;
    if (**v7 == 1)
    {
      if (*(v13 + 64) != 1)
      {
        goto LABEL_21;
      }

      v14 = v22[0];
      if (!v22[0])
      {
        goto LABEL_21;
      }

      v15 = *(v13 + 60);
      v16 = v22;
      do
      {
        if (*(v14 + 7) >= v15)
        {
          v16 = v14;
        }

        v14 = v14[*(v14 + 7) < v15];
      }

      while (v14);
      if (v16 == v22 || v15 < *(v16 + 7))
      {
LABEL_21:
        memset(&v20, 0, sizeof(v20));
        v17 = *v7;
        if (*(*v7 + 57) == 1 && (*(v17 + 56) & 1) == 0)
        {
          std::operator+<char>();
          if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v20.__r_.__value_.__l.__data_);
          }

          v20 = __str;
        }

        else
        {
          std::string::operator=(&v20, (v17 + 8));
        }

        v18 = *v7;
        if (*(*v7 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v19, *(v18 + 32), *(v18 + 40));
        }

        else
        {
          v19 = *(v18 + 32);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "\\g<0>");
        std::string::basic_string[abi:ne200100]<0>(__p, "$0");
        quasar::replaceAll(&v19, &__str, __p);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "\");
        std::string::basic_string[abi:ne200100]<0>(__p, "$");
        quasar::replaceAll(&v19, &__str, __p);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        quasar::replaceUnicodeRegex(&v23, &v20);
      }
    }

    else
    {
      quasar::replaceAll(&v23, (v13 + 8), v13 + 32);
    }
  }

  if (quasar::ReplaceStep::validateBracket(a1, &v23))
  {
    std::vector<std::string>::push_back[abi:ne200100](a3, &v23);
    v11 = -1431655765 * ((a3[1] - *a3) >> 3);
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  std::__tree<int>::destroy(&i, v22[0]);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_1B5A1B9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::__tree<int>::destroy(&a22, a23);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL quasar::ReplaceStep::validateBracket(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 57) != 1 || *(a1 + 56) != 1)
  {
    return 1;
  }

  v2 = a2[23];
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
    v2 = *(a2 + 1);
  }

  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    result = 0;
    v7 = *v3;
    v8 = v5 - 1;
    if (v7 != 93)
    {
      v8 = v5;
    }

    if (v7 == 91)
    {
      v8 = v5 + 1;
    }

    v9 = v4 - 1;
    if (v7 != 41)
    {
      v9 = v4;
    }

    if (v7 == 40)
    {
      v9 = v4 + 1;
    }

    if (*v3 <= 0x5Au)
    {
      v4 = v9;
    }

    else
    {
      v5 = v8;
    }

    if (v4 < 0 || v5 < 0)
    {
      break;
    }

    ++v3;
    if (!--v2)
    {
      return (v4 | v5) == 0;
    }
  }

  return result;
}

void *quasar::WholeStringStep::WholeStringStep(void *a1, __int128 *a2, quasar::PTree *a3, uint64_t a4)
{
  v6 = a2;
  v7 = quasar::RegexStep::RegexStep(a1, a2);
  *v7 = &unk_1F2D3E3D0;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  v19 = v7;
  *(v7 + 16) = 1065353216;
  v8 = *(v6 + 23);
  if (v8 < 0)
  {
    if (*(v6 + 1) != 18)
    {
      goto LABEL_28;
    }

    v6 = *v6;
  }

  else if (v8 != 18)
  {
    goto LABEL_28;
  }

  if (*v6 != 0x74732D656C6F6877 || *(v6 + 1) != 0x6C75722D676E6972 || *(v6 + 8) != 29541)
  {
LABEL_28:
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    *__p = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Step name must be ", 18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "whole-string-rules", 18);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  quasar::filesystem::Path::Path(__p, a4);
  quasar::filesystem::Path::parent_path(__p, v21);
  __p[0] = &unk_1F2CFAA28;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  kaldi::quasar::Vocab::OOvWord(v21, __p);
  if (quasar::filesystem::exists(__p))
  {
    kaldi::quasar::Vocab::OOvWord(v21, &v20);
    v11 = !quasar::filesystem::is_directory(&v20);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = 1;
  }

  if (SBYTE7(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (v11)
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Rule file supplied is invalid: ", 31);
    v16 = *(a4 + 23);
    if (v16 >= 0)
    {
      v17 = a4;
    }

    else
    {
      v17 = *a4;
    }

    if (v16 >= 0)
    {
      v18 = *(a4 + 23);
    }

    else
    {
      v18 = *(a4 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  v12 = quasar::PTree::begin(a3);
  if (v12 != quasar::PTree::end(a3))
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "file");
    quasar::PTree::getStringOptional(v12 + 24, &v20);
  }

  v21[0] = &unk_1F2CFAA28;
  if (v22 < 0)
  {
    operator delete(v21[1]);
  }

  return v19;
}

const void **quasar::WholeStringStep::applyRule(uint64_t a1, const void **a2, uint64_t a3)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 32), a2);
  if (result)
  {
    std::vector<std::string>::push_back[abi:ne200100](a3, (result + 5));
    return 1;
  }

  return result;
}

const void **quasar::WholeStringStep::mergeStep(const void **this, const quasar::WholeStringStep *a2)
{
  v2 = *(a2 + 6);
  if (v2)
  {
    v3 = this;
    do
    {
      this = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>((v3 + 32), v2 + 2);
      v2 = *v2;
    }

    while (v2);
  }

  return this;
}

uint64_t quasar::SplitStep::SplitStep(uint64_t a1, __int128 *a2, quasar::PTree *a3)
{
  v4 = a2;
  v6 = quasar::RegexStep::RegexStep(a1, a2);
  *v6 = &unk_1F2D3E3F8;
  v6[4] = 0;
  v7 = (v6 + 4);
  *(v6 + 60) = 0;
  *(v6 + 32) = 0;
  v6[5] = 0;
  v6[6] = 0;
  *(v6 + 56) = 0;
  v8 = *(v4 + 23);
  if (v8 < 0)
  {
    if (*(v4 + 1) != 7)
    {
      goto LABEL_63;
    }

    v4 = *v4;
  }

  else if (v8 != 7)
  {
    goto LABEL_63;
  }

  if (*v4 != 762604641 || *(v4 + 3) != 1852139309)
  {
LABEL_63:
    v43 = 0u;
    v44 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Step name must be ", 18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "alt-gen", 7);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  v10 = quasar::PTree::begin(a3);
  v11 = quasar::PTree::end(a3);
  while (v10 != v11)
  {
    if (*(v10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *v10, *(v10 + 8));
    }

    else
    {
      v12 = *v10;
      *&v29 = *(v10 + 16);
      *__p = v12;
    }

    if (SBYTE7(v29) < 0)
    {
      if (__p[1] == 5 && *__p[0] == 1768714355 && *(__p[0] + 4) == 116)
      {
LABEL_55:
        v23 = quasar::PTree::begin((v10 + 24));
        v24 = quasar::PTree::end((v10 + 24));
        while (v23 != v24)
        {
          String = quasar::PTree::getString((v23 + 24));
          std::vector<std::string>::push_back[abi:ne200100](v7, String);
          v23 += 88;
        }

        goto LABEL_59;
      }

      if (__p[1] == 20)
      {
        v16 = *__p[0] == 0x61632D74696C7073 && *(__p[0] + 1) == 0x69736E65732D6573;
        if (v16 && *(__p[0] + 4) == 1702259060)
        {
LABEL_58:
          *(a1 + 64) = quasar::PTree::getBool((v10 + 24)) | 0x100;
          goto LABEL_59;
        }
      }

      if (__p[1] == 7)
      {
        v18 = __p[0];
        goto LABEL_44;
      }
    }

    else
    {
      switch(BYTE7(v29))
      {
        case 5u:
          if (LODWORD(__p[0]) == 1768714355 && BYTE4(__p[0]) == 116)
          {
            goto LABEL_55;
          }

          break;
        case 7u:
          v18 = __p;
LABEL_44:
          v19 = *v18;
          v20 = *(v18 + 3);
          if (v19 == 762863981 && v20 == 1953259821)
          {
            *(a1 + 56) = quasar::PTree::getInt<int>(v10 + 24);
            *(a1 + 60) = 1;
          }

          break;
        case 0x14u:
          v13 = __p[0] == 0x61632D74696C7073 && __p[1] == 0x69736E65732D6573;
          if (v13 && v29 == 1702259060)
          {
            goto LABEL_58;
          }

          break;
      }
    }

LABEL_59:
    if (SBYTE7(v29) < 0)
    {
      operator delete(__p[0]);
    }

    v10 += 88;
  }

  return a1;
}

void sub_1B5A1C980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  *v14 = &unk_1F2D3E380;
  if (*(v14 + 31) < 0)
  {
    operator delete(*(v14 + 8));
  }

  _Unwind_Resume(a1);
}

void quasar::SplitStep::mergeStep(quasar::SplitStep *this, __int128 **a2)
{
  std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>((this + 32), *(this + 5), a2[4], a2[5], 0xAAAAAAAAAAAAAAABLL * ((a2[5] - a2[4]) >> 3));
  if (*(a2 + 60) == 1 && (*(this + 60) != 1 || *(a2 + 14) != *(this + 14)))
  {
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
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v6);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "max-alt will be overwritten by max-alt = ", 41);
      MEMORY[0x1B8C84C00](v4, *(a2 + 14));
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v6);
    }

    *(this + 14) = *(a2 + 14);
    *(this + 60) = 1;
  }

  if (*(a2 + 65) == 1 && (*(this + 65) != 1 || *(a2 + 64) != *(this + 64)))
  {
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
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v6);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "split-case-sensitive will be overwritten by split-case-sensitive = ", 67);
      MEMORY[0x1B8C84BD0](v5, *(a2 + 64));
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v6);
    }

    *(this + 32) = *(a2 + 64) | 0x100;
  }
}

uint64_t quasar::SplitStep::applyRule(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v7 = (a1 + 32);
  if (v8 != v9)
  {
    *&v12 = "|";
    *(&v12 + 1) = 1;
    quasar::join<std::vector<std::string>>(v7, &v12);
    if (*(a1 + 65) == 1 && (*(a1 + 64) & 1) == 0)
    {
      std::operator+<char>();
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v12;
      v15 = v13;
    }

    quasar::splitUnicodeRegex(a2, __p);
  }

  std::vector<std::string>::push_back[abi:ne200100](a3, a2);
  return -1431655765 * ((a3[1] - *a3) >> 3);
}

void sub_1B5A1CD58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  *(v18 - 40) = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v18 - 40));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::ReplaceStep::~ReplaceStep(void **this)
{
  quasar::ReplaceStep::~ReplaceStep(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D3E3A8;
  v2 = this + 4;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *this = &unk_1F2D3E380;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void quasar::WholeStringStep::~WholeStringStep(void **this)
{
  quasar::WholeStringStep::~WholeStringStep(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D3E3D0;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table((this + 4));
  *this = &unk_1F2D3E380;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void quasar::SplitStep::~SplitStep(void **this)
{
  quasar::SplitStep::~SplitStep(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D3E3F8;
  v2 = this + 4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  *this = &unk_1F2D3E380;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void *std::__shared_ptr_emplace<quasar::ReplaceStep::RegexRule>::__shared_ptr_emplace[abi:ne200100]<BOOL,std::string const&,std::string const&,std::optional<BOOL> &,std::optional<int> &,std::allocator<quasar::ReplaceStep::RegexRule>,0>(void *a1, char *a2, uint64_t a3, uint64_t a4, __int16 *a5, uint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D3E478;
  std::allocator<quasar::ReplaceStep::RegexRule>::construct[abi:ne200100]<quasar::ReplaceStep::RegexRule,BOOL,std::string const&,std::string const&,std::optional<BOOL> &,std::optional<int> &>(&v8, (a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void std::__shared_ptr_emplace<quasar::ReplaceStep::RegexRule>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D3E478;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::ReplaceStep::RegexRule>::construct[abi:ne200100]<quasar::ReplaceStep::RegexRule,BOOL,std::string const&,std::string const&,std::optional<BOOL> &,std::optional<int> &>(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, __int16 *a6, uint64_t *a7)
{
  v11 = *a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a4, *(a4 + 8));
  }

  else
  {
    v13 = *a4;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  quasar::ReplaceStep::RegexRule::RegexRule(a2, v11, &v13, &__p, *a6, *a7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1B5A1D254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::ReplaceStep::RegexRule::RegexRule(uint64_t a1, char a2, __int128 *a3, __int128 *a4, __int16 a5, uint64_t a6)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v10;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(a1 + 48) = *(a4 + 2);
    *(a1 + 32) = v11;
  }

  *(a1 + 56) = a5;
  *(a1 + 60) = a6;
  return a1;
}

void sub_1B5A1D328(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::ReplaceStep::RegexRule>::__shared_ptr_emplace[abi:ne200100]<BOOL,std::string const&,std::string const&,std::optional<BOOL>,std::optional<int>,std::allocator<quasar::ReplaceStep::RegexRule>,0>(void *a1, char *a2, uint64_t a3, uint64_t a4, __int16 *a5, uint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D3E478;
  std::allocator<quasar::ReplaceStep::RegexRule>::construct[abi:ne200100]<quasar::ReplaceStep::RegexRule,BOOL,std::string const&,std::string const&,std::optional<BOOL>,std::optional<int>>(&v8, (a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void std::allocator<quasar::ReplaceStep::RegexRule>::construct[abi:ne200100]<quasar::ReplaceStep::RegexRule,BOOL,std::string const&,std::string const&,std::optional<BOOL>,std::optional<int>>(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, __int16 *a6, uint64_t *a7)
{
  v11 = *a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a4, *(a4 + 8));
  }

  else
  {
    v13 = *a4;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  quasar::ReplaceStep::RegexRule::RegexRule(a2, v11, &v13, &__p, *a6, *a7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1B5A1D534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::shared_ptr<quasar::ReplaceStep::RegexRule>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<quasar::ReplaceStep::RegexRule> const*>,std::__wrap_iter<std::shared_ptr<quasar::ReplaceStep::RegexRule> const*>>(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__move_range(a1, a2, a1[1], &a2[2 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<quasar::ReplaceStep::RegexRule>>,std::shared_ptr<quasar::ReplaceStep::RegexRule>*,std::shared_ptr<quasar::ReplaceStep::RegexRule>*,std::shared_ptr<quasar::ReplaceStep::RegexRule>*>(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v18 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    std::__split_buffer<std::shared_ptr<quasar::FeatureExtractor>>::~__split_buffer(v30);
    return v19;
  }

  return v5;
}

uint64_t TWordBlockMaker::TWordBlockMaker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D3E4C8;
  *(a1 + 8) = a3;
  TAllocator::TAllocator((a1 + 72), 2048);
  *(a1 + 16) = a2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return a1;
}

double TWordBlockMaker::save(uint64_t a1, void *a2, _DWORD *a3)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = -1;
    v6 = *(a1 + 40);
    do
    {
      if (v5 == -1)
      {
        if (v6[3] == -1)
        {
          v7 = v6;
          do
          {
            v7 = (v7 + (*v7 & 0xFFFFFFFC));
            v5 = v7[3];
          }

          while (v5 == -1);
        }

        else
        {
          v5 = -1;
        }
      }

      if (v6[2] == -1)
      {
        v6[2] = v5;
      }

      if (v6[3] == -1)
      {
        v6[3] = v5;
      }

      else
      {
        v5 = -1;
      }

      v6 = (v6 + (*v6 & 0xFFFFFFFC));
    }

    while (v4 > (v6 - v3) >> 2);
  }

  *a2 = v3;
  *a3 = 4 * v4;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

void *TWordBlockMaker::updateDestLinks(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    v7 = result;
    do
    {
      v8 = *(v5 + 8);
      v9 = *(a2 + 64);
      do
      {
        v8 += v9 & 1;
        v10 = v9 > 1;
        v9 >>= 1;
      }

      while (v10);
      v11 = v8 + *(a2 + 72);
      if (*(a2 + 48))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 + 100;
      }

      v13 = *a4;
      if (*a4 && v12 >= *(v13 + 8))
      {
        v17 = 1;
        do
        {
          v14 = v13;
          v15 = v17;
          v13 = *(v13 + 24);
          if (!v13)
          {
            break;
          }

          ++v17;
        }

        while (v12 >= *(v13 + 8));
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      if (v15 >= v7[2])
      {
        break;
      }

      result = TAllocator::allocate((v7 + 9), 32);
      *result = a2;
      result[1] = v12;
      result[2] = v5;
      result[3] = v13;
      v16 = (v14 + 24);
      if (!v14)
      {
        v16 = a4;
      }

      *v16 = result;
      v5 = *(v5 + 24);
    }

    while (v5);
  }

  return result;
}

uint64_t TWordBlockMaker::writeSequence(uint64_t result, uint64_t *a2, int a3, int a4)
{
  v7 = result;
  v8 = *a2;
  v9 = a2[1];
  if (v9 == *a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      result = TLocaleInfo::unicodeToMultiByte(*(v7 + 8), **(*(v8 + 8 * v11) + 56), 0, 0);
      v10 += (result + 26) >> 2;
      ++v11;
      v8 = *a2;
      v9 = a2[1];
    }

    while (v11 < (v9 - *a2) >> 3);
  }

  v12 = *(v7 + 56);
  v13 = v12 + v10;
  if ((v12 + v10) > *(v7 + 48))
  {
    *(v7 + 48) = 2 * v13;
    result = malloc_type_realloc(*(v7 + 40), 8 * v13, 0x41E98402uLL);
    *(v7 + 40) = result;
    v8 = *a2;
    v9 = a2[1];
    v12 = *(v7 + 56);
  }

  v14 = 0;
  v15 = v9 - v8;
  if (v15)
  {
    v16 = 0;
    v17 = v15 >> 3;
    v18 = *(v7 + 40) + 4 * v12;
    v19 = *(*(*(v7 + 32) + 64) + 24);
    while (1)
    {
      v20 = *(v8 + 8 * v16);
      v21 = *(v20 + 48) - 1;
      v22 = v21 > 5 ? 0 : *&asc_1B5B35D0C[4 * v21];
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      *(v18 + 4) = v22;
      ++*(v7 + 64);
      if ((a3 & a4 & 1) == 0)
      {
        break;
      }

LABEL_28:
      v26 = *(v24 + 16);
      if (v26)
      {
        v27 = v26 + *(v7 + 24) - v19;
      }

      else
      {
        v27 = -1;
      }

      *(v18 + 8) = v27;
      v28 = *(v23 + 24);
      if (v28)
      {
        v29 = v28 + *(v7 + 24) - v19;
      }

      else
      {
        v29 = -1;
      }

      *(v18 + 12) = v29;
      *(v18 + 16) = 0;
      result = TLocaleInfo::unicodeToMultiByte(*(v7 + 8), **(v20 + 56), (v18 + 20), 4 * *(v7 + 48));
      v30 = result + 26;
      *v18 = v30 & 0xFFFFFFFC;
      v14 += v30 >> 2;
      v18 += v30 & 0xFFFFFFFC;
      ++v16;
      v8 = *a2;
      v17 = (a2[1] - *a2) >> 3;
      if (v16 >= v17)
      {
        v12 = *(v7 + 56);
        goto LABEL_36;
      }
    }

    if (!v16)
    {
      v22 |= a3;
      if (v17 > 1)
      {
        v22 |= 4u;
LABEL_18:
        *(v18 + 4) = v22;
        goto LABEL_19;
      }

      if (a3)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    if (v16 + 1 == v17 && (v17 > 1 || a4))
    {
      if (a4)
      {
        v22 |= 2u;
      }

      if (v17 <= 1)
      {
        v25 = v22;
      }

      else
      {
        v25 = v22 | 8;
      }

      *(v18 + 4) = v25;
    }

    goto LABEL_28;
  }

LABEL_36:
  *(v7 + 56) = v12 + v14;
  return result;
}

void TWordBlockMaker::writeAlternative(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v4 = *(a1 + 16) + 1;
    v5 = a2;
    do
    {
      if (!--v4)
      {
        break;
      }

      v5 = v5[3];
    }

    while (v5);
  }

  else
  {
    v5 = 0;
  }

  __p = 0;
  v21 = 0;
  v22 = 0;
  if (v5 != a2)
  {
    v6 = a2;
    do
    {
      std::vector<TSymbol const*>::resize(&__p, 0);
      v7 = *v6;
      v8 = v21;
      for (i = v6; *i; v7 = *i)
      {
        if (v8 >= v22)
        {
          v10 = (v8 - __p) >> 3;
          if ((v10 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v11 = (v22 - __p) >> 2;
          if (v11 <= v10 + 1)
          {
            v11 = v10 + 1;
          }

          if (v22 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<TVertex const*>>(&__p, v12);
          }

          *(8 * v10) = v7;
          v8 = (8 * v10 + 8);
          v13 = (8 * v10 - (v21 - __p));
          memcpy(v13, __p, v21 - __p);
          v14 = __p;
          __p = v13;
          v21 = v8;
          v22 = 0;
          if (v14)
          {
            operator delete(v14);
          }
        }

        else
        {
          *v8 = v7;
          v8 += 8;
        }

        v21 = v8;
        i = i[2];
      }

      v15 = v8 - 8;
      if (__p != v8 && v15 > __p)
      {
        v17 = __p + 8;
        do
        {
          v18 = *(v17 - 1);
          *(v17 - 1) = *v15;
          *v15 = v18;
          v15 -= 8;
          v19 = v17 >= v15;
          v17 += 8;
        }

        while (!v19);
      }

      TWordBlockMaker::writeSequence(a1, &__p, v6 == a2, v6[3] == v5);
      v6 = v6[3];
    }

    while (v6 != v5);
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }
}

void sub_1B5A1DD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TWordBlockMaker::add(TWordBlockMaker *this, const TGraph *a2, uint64_t a3)
{
  *(this + 3) = a3;
  *(this + 4) = a2;
  v4 = (*(a2 + 11) - *(a2 + 10)) >> 3;
  *&v38[0] = 0;
  std::vector<unsigned long>::vector[abi:ne200100](v43, v4);
  v5 = *(this + 4);
  v6 = *(v5 + 80);
  if (*(v5 + 88) == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      if ((*(v9 + 32) & 1) == 0)
      {
        v10 = TVertex::getInEdgeCount(v9);
        ++v7;
        *(v43[0] + v8) = v10;
        v5 = *(this + 4);
      }

      ++v8;
      v6 = *(v5 + 80);
    }

    while (v8 < (*(v5 + 88) - v6) >> 3);
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  std::vector<TVertex const*>::reserve(&__p, v7);
  v11 = *(*(this + 4) + 64);
  v12 = v41;
  if (v41 >= v42)
  {
    v14 = (v41 - __p) >> 3;
    if ((v14 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v15 = (v42 - __p) >> 2;
    if (v15 <= v14 + 1)
    {
      v15 = v14 + 1;
    }

    if (v42 - __p >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TVertex const*>>(&__p, v16);
    }

    v17 = (8 * v14);
    *v17 = v11;
    v13 = 8 * v14 + 8;
    v18 = v17 - (v41 - __p);
    memcpy(v18, __p, v41 - __p);
    v19 = __p;
    __p = v18;
    v41 = v13;
    v42 = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v41 = v11;
    v13 = (v12 + 8);
  }

  v41 = v13;
  std::vector<TPathLink *>::vector[abi:ne200100](v39, (*(*(this + 4) + 88) - *(*(this + 4) + 80)) >> 3);
  memset(v38, 0, sizeof(v38));
  *(v39[0] + *(*__p + 40)) = v38;
  v20 = __p;
  if (v41 != __p)
  {
    v21 = 0;
    v22 = 0;
    v23 = (v41 - __p) >> 3;
    do
    {
      v24 = *&v20[8 * v21++];
      if (v22 == v24 && v21 == v23)
      {
        TWordBlockMaker::writeAlternative(this, *(v39[0] + *(v24 + 5)));
        *(v39[0] + *(v24 + 5)) = v38;
        if (*(this + 9) > 0x1000uLL)
        {
          TAllocator::clear((this + 72));
        }
      }

      OutEdge = TVertex::getOutEdge(v24);
      if (OutEdge)
      {
LABEL_30:
        v27 = *(OutEdge + 24);
        TWordBlockMaker::updateDestLinks(this, OutEdge, *(v39[0] + *(v24 + 5)), v39[0] + *(v27 + 5));
        v28 = v27;
        if (!*(v27 + 2))
        {
          v28 = v27;
          do
          {
            v28 = *(TVertex::getOutEdge(v28) + 24);
          }

          while (!*(v28 + 2));
        }

        if (!v22 || *(v28 + 2) > *(v22 + 2))
        {
          v22 = v28;
        }

        v29 = v43[0];
        --*(v43[0] + *(v27 + 5));
        if (!v29[*(v27 + 5)])
        {
          v30 = v41;
          if (v41 >= v42)
          {
            v32 = (v41 - __p) >> 3;
            if ((v32 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v33 = (v42 - __p) >> 2;
            if (v33 <= v32 + 1)
            {
              v33 = v32 + 1;
            }

            if (v42 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v34 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v33;
            }

            if (v34)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<TVertex const*>>(&__p, v34);
            }

            v35 = (8 * v32);
            *v35 = v27;
            v31 = 8 * v32 + 8;
            v36 = v35 - (v41 - __p);
            memcpy(v36, __p, v41 - __p);
            v37 = __p;
            __p = v36;
            v41 = v31;
            v42 = 0;
            if (v37)
            {
              operator delete(v37);
            }
          }

          else
          {
            *v41 = v27;
            v31 = (v30 + 8);
          }

          v41 = v31;
        }

        while (1)
        {
          OutEdge = *(OutEdge + 8);
          if (!OutEdge)
          {
            break;
          }

          if ((*(OutEdge + 32) & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      v20 = __p;
      v23 = (v41 - __p) >> 3;
    }

    while (v21 < v23);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
    v20 = __p;
  }

  if (v20)
  {
    v41 = v20;
    operator delete(v20);
  }

  if (v43[0])
  {
    v43[1] = v43[0];
    operator delete(v43[0]);
  }
}

void sub_1B5A1E12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<TPathLink *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B5A1E2B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::getDecoderChainNames(quasar *a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  quasar::collectRecogInfoFromSysConfigHelper(a1, &v2);
}

uint64_t quasar::roundCount(uint64_t this, unsigned int a2)
{
  if (this)
  {
    if (a2)
    {
      v3 = this;
      v4 = log10(this);
      v5 = __exp10(a2 - ceil(v4));
      v6 = round(v5 * v3);
      v7 = v6 / v5;
      if (v6 / v5 > 4294967300.0)
      {
        return (fmod(v6 / v5, 4294967300.0) - (v7 / 4294967300.0));
      }

      return v7;
    }

    else
    {
      if (quasar::gLogLevel >= 1)
      {
        memset(v8, 0, sizeof(v8));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "WARNING: asking to round a value to 0 significant figures makes no sense — answer is 0.", 89);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(v8);
      }

      return 0;
    }
  }

  return this;
}

uint64_t quasar::roundCountsInPtree(quasar *this, quasar::PTree *a2)
{
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  v13 = this;
  std::deque<quasar::PTree *>::push_back(v19, &v13);
  for (i = *(&v20 + 1); *(&v20 + 1); i = *(&v20 + 1))
  {
    v3 = *(*(*(&v19[0] + 1) + ((v20 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v20 & 0x1FF));
    *&v20 = v20 + 1;
    *(&v20 + 1) = i - 1;
    if (v20 >= 0x400)
    {
      operator delete(**(&v19[0] + 1));
      *(&v19[0] + 1) += 8;
      *&v20 = v20 - 512;
    }

    v4 = quasar::PTree::begin(v3);
    v5 = quasar::PTree::end(v3);
    if (v4 != v5)
    {
      v6 = v4 + 56;
      do
      {
        DataType = quasar::PTree::getDataType((v6 - 32));
        if (DataType == 4)
        {
          v13 = (v6 - 32);
          std::deque<quasar::PTree *>::push_back(v19, &v13);
        }

        else if (DataType == 2)
        {
          v8 = quasar::PTree::getInt<unsigned int>(v6 - 32);
          v9 = quasar::roundCount(v8, 2u);
          v10 = v9;
          LODWORD(v13) = quasar::getType(v9);
          std::to_string(&v14, v10);
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 1;
          *(v6 - 32) = v13;
          std::string::operator=((v6 - 24), &v14);
          if ((v6 - 32) != &v13)
          {
            std::vector<std::pair<std::string,quasar::PTree>>::__assign_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v6, v15, v16, 0x2E8BA2E8BA2E8BA3 * ((v16 - v15) >> 3));
          }

          *(v6 + 24) = v18;
          quasar::PTree::~PTree(&v13);
        }

        v11 = v6 + 32;
        v6 += 88;
      }

      while (v11 != v5);
    }
  }

  return std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](v19);
}

void sub_1B5A1E780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::deque<quasar::PTree *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<quasar::PTree *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

quasar::ScopedTimer *quasar::ScopedTimer::ScopedTimer(quasar::ScopedTimer *this, const kaldi::Timer *a2, double *a3)
{
  *this = a2;
  *(this + 1) = kaldi::Timer::GetSeconds(5, a2);
  *(this + 2) = a3;
  return this;
}

void quasar::times2Ptree(void *a1@<X0>, quasar::PTree *a2@<X8>)
{
  quasar::PTree::PTree(a2);
  v7 = *a1;
  v5 = (a1 + 1);
  v6 = v7;
  if (v7 == v5)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 0.0;
    do
    {
      v9 = v6[7];
      Type = quasar::getType(v4, *&v9);
      std::to_string(&v18, v9);
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 1;
      quasar::PTree::putChild(a2, (v6 + 4), &Type, 0);
      quasar::PTree::~PTree(&Type);
      v10 = *(v6 + 1);
      v11 = v6;
      if (v10)
      {
        do
        {
          v12 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v12 = *(v11 + 2);
          v13 = *v12 == v11;
          v11 = v12;
        }

        while (!v13);
      }

      v8 = v8 + v6[7];
      v6 = v12;
    }

    while (v12 != v5);
  }

  v14 = std::string::basic_string[abi:ne200100]<0>(__p, "total");
  Type = quasar::getType(v14, *&v8);
  std::to_string(&v18, v8);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 1;
  quasar::PTree::putChild(a2, __p, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B5A1EAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  quasar::PTree::~PTree(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(v16);
  _Unwind_Resume(a1);
}

void *std::deque<quasar::PTree *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(a1, &v10);
}

void sub_1B5A1EFF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineSeevaStepDecoder::OnlineSeevaStepDecoder(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D3E528;
  *(v3 + 536) = 0;
  *(v3 + 552) = 0;
  *(v3 + 544) = 0;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 520) = 0;
  *(v3 + 560) = &unk_1F2D122A8;
  *(v3 + 568) = 0x203F000000;
  *(v3 + 576) = 0x200000002;
  *(v3 + 584) = 0;
  std::string::basic_string[abi:ne200100]<0>((v3 + 592), "/cpu:0");
  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 640) = 1;
  *(a1 + 680) = 0;
  *(a1 + 644) = 0;
  *(a1 + 652) = 0u;
  *(a1 + 665) = 0;
  *(a1 + 560) = &unk_1F2D12260;
  *(a1 + 688) = 0u;
  *(a1 + 704) = xmmword_1B5B09C40;
  *(a1 + 720) = 200;
  *(a1 + 724) = 0;
  *(a1 + 732) = xmmword_1B5B09C50;
  *(a1 + 748) = 2;
  *(a1 + 752) = 1;
  *(a1 + 756) = 1056964608;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 904) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0;
  *(a1 + 1032) = 1065353216;
  *(a1 + 1040) = 0;
  *(a1 + 57) = 0;
  return a1;
}

void sub_1B5A1F1C0(_Unwind_Exception *a1)
{
  if (*(v1 + 559) < 0)
  {
    operator delete(*v3);
  }

  quasar::OnlineSeevaStepDecoder::OnlineSeevaStepDecoder(v1, (v1 + 504), (v1 + 480), v2);
  quasar::Decoder::~Decoder(v1);
  _Unwind_Resume(a1);
}

void quasar::OnlineSeevaStepDecoder::~OnlineSeevaStepDecoder(quasar::OnlineSeevaStepDecoder *this)
{
  *this = &unk_1F2D3E528;
  v2 = *(this + 130);
  *(this + 130) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(this + 1000);
  if (*(this + 991) < 0)
  {
    operator delete(*(this + 121));
  }

  if (*(this + 967) < 0)
  {
    operator delete(*(this + 118));
  }

  if (*(this + 943) < 0)
  {
    operator delete(*(this + 115));
  }

  if (*(this + 911) < 0)
  {
    operator delete(*(this + 111));
  }

  v3 = *(this + 110);
  *(this + 110) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::unique_ptr<kaldi::quasar::Vocab>::reset[abi:ne200100](this + 109, 0);
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](this + 108, 0);
  if (*(this + 863) < 0)
  {
    operator delete(*(this + 105));
  }

  v4 = *(this + 102);
  if (v4)
  {
    *(this + 103) = v4;
    operator delete(v4);
  }

  v5 = *(this + 99);
  if (v5)
  {
    *(this + 100) = v5;
    operator delete(v5);
  }

  *(this + 70) = &unk_1F2D122A8;
  if (*(this + 703) < 0)
  {
    operator delete(*(this + 85));
  }

  if (*(this + 671) < 0)
  {
    operator delete(*(this + 81));
  }

  if (*(this + 639) < 0)
  {
    operator delete(*(this + 77));
  }

  if (*(this + 615) < 0)
  {
    operator delete(*(this + 74));
  }

  if (*(this + 559) < 0)
  {
    operator delete(*(this + 67));
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
  quasar::OnlineSeevaStepDecoder::~OnlineSeevaStepDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineSeevaStepDecoder::registerParams(quasar::OnlineSeevaStepDecoder *this, quasar::SystemConfig *a2)
{
  kaldi::quasar::SeevaStepInferenceConfig::Register(this + 560, a2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v4 = (this + 968);
  if (*(this + 991) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&v7.__r_.__value_.__l.__data_;
  *(this + 123) = *(&v7.__r_.__value_.__l + 2);
  std::string::basic_string[abi:ne200100]<0>(&v7, "seeva-step");
  quasar::SystemConfig::enforceMinVersion(a2, 151, 0, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "encoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "seeva inference encoder graph file");
  quasar::SystemConfig::Register<std::string>(a2, &v7.__r_.__value_.__l.__data_, this + 456, __p, 1, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "decoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "seeva inference decoder graph file");
  quasar::SystemConfig::Register<std::string>(a2, &v7.__r_.__value_.__l.__data_, this + 480, __p, 1, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "num-encoder-states");
  std::string::basic_string[abi:ne200100]<0>(__p, "number of encoder states");
  quasar::SystemConfig::Register<int>(a2, &v7.__r_.__value_.__l.__data_, this + 780, __p, 1, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "num-decoder-states");
  std::string::basic_string[abi:ne200100]<0>(__p, "number of decoder states");
  quasar::SystemConfig::Register<int>(a2, &v7.__r_.__value_.__l.__data_, this + 784, __p, 1, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "align-state-list");
  std::string::basic_string[abi:ne200100]<0>(__p, "alignment state indices in the decoder states");
  quasar::SystemConfig::Register<std::string>(a2, &v7.__r_.__value_.__l.__data_, this + 840, __p, 1, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "vocab-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "the vocab file for the model output token");
  quasar::SystemConfig::Register<std::string>(a2, &v7.__r_.__value_.__l.__data_, this + 504, __p, 1, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "vocab-is-binary");
  std::string::basic_string[abi:ne200100]<0>(__p, "vocab file is binary");
  quasar::SystemConfig::Register<BOOL>(a2, &v7.__r_.__value_.__l.__data_, this + 528, __p, 1, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "model-format-version");
  std::string::basic_string[abi:ne200100]<0>(__p, "model format version");
  quasar::SystemConfig::Register<int>(a2, &v7.__r_.__value_.__l.__data_, this + 532, __p, 1, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "transform-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "feature transform file");
  quasar::SystemConfig::Register<std::string>(a2, &v7.__r_.__value_.__l.__data_, this + 536, __p, 0, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "lm-rescore-chain");
  std::string::basic_string[abi:ne200100]<0>(__p, "the LM rescore decoder chain");
  quasar::SystemConfig::Register<std::string>(a2, &v7.__r_.__value_.__l.__data_, this + 888, __p, 0, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "use-second-rescore");
  std::string::basic_string[abi:ne200100]<0>(__p, "use the LM rescoring decoder");
  quasar::SystemConfig::Register<BOOL>(a2, &v7.__r_.__value_.__l.__data_, this + 913, __p, 0, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "remove-unk");
  std::string::basic_string[abi:ne200100]<0>(__p, "remove the unknown word during rescoring");
  quasar::SystemConfig::Register<BOOL>(a2, &v7.__r_.__value_.__l.__data_, this + 912, __p, 0, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "unk-word");
  std::string::basic_string[abi:ne200100]<0>(__p, "map the OOV word to this word");
  quasar::SystemConfig::Register<std::string>(a2, &v7.__r_.__value_.__l.__data_, this + 920, __p, 0, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "e2e-word-map-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "map the E2E word to Quasar");
  quasar::SystemConfig::Register<std::string>(a2, &v7.__r_.__value_.__l.__data_, this + 944, __p, 0, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "lm-weight");
  std::string::basic_string[abi:ne200100]<0>(__p, "lm weight for LM rescoring");
  quasar::SystemConfig::Register<float>(a2, &v7.__r_.__value_.__l.__data_, this + 992, __p, 0, 151, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  *(this + 456) = 0;
  *(this + 248) = 1045220557;
}

void sub_1B5A1FB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineSeevaStepDecoder::finishInit(const std::string *this)
{
  v2 = *MEMORY[0x1E69E9840];
  std::fstream::basic_fstream(&v1, this + 21, 8u);
  operator new();
}

void sub_1B5A206FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ifstream::~ifstream(&STACK[0x2E0], MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8C85200](&STACK[0x488]);
  std::ostringstream::~ostringstream(&a65, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](&STACK[0x230]);
  std::fstream::~fstream(&STACK[0x528]);
  _Unwind_Resume(a1);
}

void sub_1B5A20B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  kaldi::quasar::SeevaStepInferenceTensorNames::~SeevaStepInferenceTensorNames(&a9);
  kaldi::quasar::SeevaStepInferenceConfig::~SeevaStepInferenceConfig(&a56);
  v60 = *(v58 - 80);
  *(v58 - 80) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  v61 = *(v58 - 72);
  *(v58 - 72) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  MEMORY[0x1B8C85350](v57, v56);
  _Unwind_Resume(a1);
}

void quasar::OnlineSeevaStepDecoder::runImpl(uint64_t a1, uint64_t a2)
{
  kaldi::quasar::SeevaStepInference::ResetGraph(*(a1 + 880));
  v5 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v5[6];
  kaldi::quasar::SeevaBeamSearchBase::SeevaBeamSearchBase(v97, *(a1 + 880), (a1 + 560), *(a1 + 872));
  v62 = 0;
  LODWORD(v7) = 0;
  v63 = 1;
  v64 = 1;
  while (1)
  {
    kaldi::Matrix<float>::Matrix(&v94, *(a1 + 760), v6, 0, 0);
    v8 = *(a1 + 760);
    if (v8 < 1)
    {
      v9 = 0;
      v11 = 0;
    }

    else
    {
      v9 = 0;
      while (1)
      {
        IsValidFrame = kaldi::OnlineFeatureMatrix::IsValidFrame(v5, v7 + v9, 1);
        if ((IsValidFrame & 1) == 0)
        {
          break;
        }

        kaldi::OnlineFeatureMatrix::GetFrame(v5, v7 + v9, &__p);
        kaldi::MatrixBase<float>::CopyRowFromVec(&v94, &__p, v9++);
        v8 = *(a1 + 760);
        if (v9 >= v8)
        {
          goto LABEL_11;
        }
      }

      v8 = *(a1 + 760);
LABEL_11:
      v11 = IsValidFrame ^ 1;
    }

    if (v9 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9;
    }

    if (v8 >= *(a1 + 708))
    {
      v13 = *(a1 + 708);
    }

    else
    {
      v13 = v8;
    }

    v7 = (v9 + v7);
    v65 = v11;
    if (v11 && v7 < v13)
    {
      v14 = v6;
      v15 = v94;
      v16 = v96;
      v17 = kaldi::MatrixBase<float>::NumCols(&v94);
      *&v78 = 0;
      *&__p = v15 + 4 * v16 * (v9 - 1);
      *(&__p + 1) = v17;
      v6 = v14;
      if (v9 < v13)
      {
        do
        {
          kaldi::MatrixBase<float>::CopyRowFromVec(&v94, &__p, v9++);
        }

        while (v13 != v9);
      }

      v12 = v13;
    }

    if (v12 < *(a1 + 716))
    {
      if (v65)
      {
        goto LABEL_61;
      }

      goto LABEL_83;
    }

    v68 = 0;
    if (*(a1 + 864))
    {
      kaldi::SubMatrix<float>::SubMatrix(&v71, &v94, 0, v12, 0, v95);
      kaldi::CuMatrix<float>::CuMatrix<float>(&__p, &v71, 111, 0);
      quasar::Bitmap::~Bitmap(&v71);
      v73 = 0u;
      v72 = 0u;
      v71 = &unk_1F2D0EE38;
      v74 = 0;
      kaldi::nnet1::Nnet::Feedforward(*(a1 + 864), &__p, &v71, 0xFFFFFFFF, 0);
      (*(**(*(a1 + 880) + 8) + 40))(v67);
      v18 = v67[0];
      v67[0] = 0;
      v19 = v68;
      v68 = v18;
      if (v19)
      {
        (*(*v19 + 8))(v19);
        v20 = v67[0];
        v67[0] = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }

      kaldi::CuMatrix<float>::~CuMatrix(&v71);
      kaldi::CuMatrix<float>::~CuMatrix(&__p);
    }

    else if (v12 == *(a1 + 760))
    {
      (*(**(*(a1 + 880) + 8) + 48))(&__p);
      v21 = __p;
      *&__p = 0;
      v22 = v68;
      v68 = v21;
      if (v22)
      {
        (*(*v22 + 8))(v22);
        v23 = __p;
        *&__p = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }
      }
    }

    else
    {
      v24 = *(*(a1 + 880) + 8);
      kaldi::SubMatrix<float>::SubMatrix(&v71, &v94, 0, v12, 0, v95);
      kaldi::CuMatrix<float>::CuMatrix<float>(&__p, &v71, 111, 0);
      (*(*v24 + 40))(v67, v24, &__p);
      v25 = v67[0];
      v67[0] = 0;
      v26 = v68;
      v68 = v25;
      if (v26)
      {
        (*(*v26 + 8))(v26);
        v27 = v67[0];
        v67[0] = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }
      }

      kaldi::CuMatrix<float>::~CuMatrix(&__p);
      quasar::Bitmap::~Bitmap(&v71);
    }

    kaldi::quasar::SeevaStepInference::RunEncoder(*(a1 + 880), &v68, v63 & 1);
    v28 = *(a1 + 752);
    v29 = v64;
    if ((v28 & 1) == 0 && ((v64 ^ 1) & 1) == 0)
    {
      if (v7 <= *(a1 + 736))
      {
        goto LABEL_46;
      }

      kaldi::quasar::SeevaStepInference::CollectEncoderOutput(*(a1 + 880), 0, -1, &__p);
      v30 = kaldi::quasar::SeevaBeamSearchBase::Initialize(v97, &__p, 0);
      v31 = __p;
      *&__p = 0;
      if (v31)
      {
        (*(*v31 + 8))(v31);
      }

      v29 = v30 ^ 1;
      v28 = *(a1 + 752);
    }

    if (v28)
    {
      goto LABEL_56;
    }

LABEL_46:
    if (v29)
    {
LABEL_56:
      v64 = v29;
      goto LABEL_58;
    }

    if (v7 - v62 <= *(a1 + 740))
    {
      v64 = 0;
    }

    else
    {
      kaldi::quasar::SeevaStepInference::CollectEncoderOutput(*(a1 + 880), 0, -1, &v71);
      v32 = kaldi::quasar::SeevaBeamSearchBase::DecodedSteps(v97);
      v33 = kaldi::quasar::SeevaBeamSearchBase::BeamSearch(v97, &v71, 0);
      v34 = v33;
      if (quasar::gLogLevel > 4)
      {
        v35 = v33;
      }

      else
      {
        v35 = 0;
      }

      if (v35 == 1)
      {
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
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
        __p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "finished ", 9);
        v37 = kaldi::quasar::SeevaBeamSearchBase::DecodedSteps(v97);
        v38 = MEMORY[0x1B8C84C00](v36, (v37 - v32));
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " beam search steps at frame ", 28);
        MEMORY[0x1B8C84C00](v39, v7);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&__p);
      }

      v40 = v71;
      v71 = 0;
      if (v40)
      {
        (*(*v40 + 8))(v40);
      }

      v64 = v34 ^ 1;
      v62 = v7;
    }

LABEL_58:
    v41 = v68;
    v68 = 0;
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }

    v63 = 0;
    if (v65)
    {
LABEL_61:
      kaldi::quasar::SeevaStepInference::CollectEncoderOutput(*(a1 + 880), 0, -1, &v76);
      if ((kaldi::quasar::SeevaBeamSearchBase::DecodedSteps(v97) < 3) | v64 & 1)
      {
        kaldi::quasar::SeevaBeamSearchBase::Initialize(v97, &v76, 1);
      }

      v42 = kaldi::quasar::SeevaBeamSearchBase::DecodedSteps(v97);
      kaldi::quasar::SeevaBeamSearchBase::BeamSearch(v97, &v76, 1);
      if (quasar::gLogLevel >= 5)
      {
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
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
        __p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "finished the last ", 18);
        v44 = kaldi::quasar::SeevaBeamSearchBase::DecodedSteps(v97);
        v45 = MEMORY[0x1B8C84C00](v43, (v44 - v42));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " beam search steps", 18);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&__p);
      }

      CurrentBreadcrumb = kaldi::quasar::SeevaBeamSearchBase::GetCurrentBreadcrumb(v97);
      kaldi::quasar::SeevaBeamSearchBase::TraceBack(v97, CurrentBreadcrumb, &v71);
      v68 = 0;
      v69 = 0;
      v70 = 0;
      memset(v67, 0, sizeof(v67));
      if ((*(a1 + 911) & 0x8000000000000000) != 0)
      {
        if (*(a1 + 896))
        {
          goto LABEL_67;
        }
      }

      else if (*(a1 + 911))
      {
LABEL_67:
        v48 = quasar::RescoreWithLMs(*(a1 + 1040), *(a1 + 872), (a1 + 1000), (a1 + 888), (a1 + 920), *(a1 + 912), *(a1 + 913), *(a1 + 532), &v71, &v73, &v75, &v68, v67);
        if (quasar::gLogLevel >= 5)
        {
          v49 = v48;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
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
          __p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "LM-SCORE-DEBUG: select beam ", 28);
          MEMORY[0x1B8C84C00](v50, v49);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(&__p);
        }

        goto LABEL_82;
      }

      v51 = v71;
      v52 = v73;
      *&v78 = 0;
      __p = 0uLL;
      v53 = (v71[1] - *v71) >> 2;
      LODWORD(v66) = 0;
      std::vector<float>::resize(&__p, v53, &v66, v47);
      v54 = v51[1] - *v51;
      if (v54)
      {
        v55 = v54 >> 2;
        v56 = *v52;
        v57 = __p;
        if (v55 <= 1)
        {
          v55 = 1;
        }

        do
        {
          v58 = *v56++;
          *v57++ = -v58;
          --v55;
        }

        while (v55);
      }

      quasar::printOneBest(*(a1 + 872), *(a1 + 532), v51, &__p, &v68, v67);
      if (*(a1 + 1024))
      {
        v60 = v68;
        v59 = v69;
        while (v60 != v59)
        {
          v61 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 1000), &v60->__r_.__value_.__l.__data_);
          if (v61)
          {
            std::string::operator=(v60, v61[5]);
          }

          ++v60;
        }
      }

      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

LABEL_82:
      LODWORD(v66) = 1;
      std::allocate_shared[abi:ne200100]<std::vector<std::vector<quasar::Token>>,std::allocator<std::vector<std::vector<quasar::Token>>>,int,0>();
    }

LABEL_83:
    kaldi::Matrix<float>::~Matrix(&v94);
  }
}

void sub_1B5A2181C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

kaldi::quasar::SeevaStepInferenceTensorNames *kaldi::quasar::SeevaStepInferenceTensorNames::SeevaStepInferenceTensorNames(kaldi::quasar::SeevaStepInferenceTensorNames *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(this, "SeevaModel/__QNNI__source_input");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "SeevaModel/encoder/__QNNO__encoder_output");
  std::string::basic_string[abi:ne200100]<0>(this + 48, "SeevaModel/encoder/__QNNI__encoder_state_");
  std::string::basic_string[abi:ne200100]<0>(this + 72, "SeevaModel/encoder/__QNNO__encoder_state_");
  std::string::basic_string[abi:ne200100]<0>(this + 96, "SeevaModel/__QNNI__target_input");
  std::string::basic_string[abi:ne200100]<0>(this + 120, "SeevaModel/__QNNI__encoder_output");
  std::string::basic_string[abi:ne200100]<0>(this + 144, "SeevaModel/decoder/__QNNO__decoder_full_score");
  std::string::basic_string[abi:ne200100]<0>(this + 168, "SeevaModel/decoder/__QNNI__decoder_state_");
  std::string::basic_string[abi:ne200100]<0>(this + 192, "SeevaModel/decoder/__QNNO__decoder_state_");
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 216) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 43) = this + 352;
  *(this + 368) = 0;
  return this;
}

void sub_1B5A21AF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *kaldi::quasar::SeevaStepInferenceTensorNames::SeevaStepInferenceTensorNames(std::string *this, const kaldi::quasar::SeevaStepInferenceTensorNames *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v8;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    this[5].__r_.__value_.__r.__words[2] = *(a2 + 17);
    *&this[5].__r_.__value_.__l.__data_ = v9;
  }

  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = *(a2 + 9);
    this[6].__r_.__value_.__r.__words[2] = *(a2 + 20);
    *&this[6].__r_.__value_.__l.__data_ = v10;
  }

  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    this[7].__r_.__value_.__r.__words[2] = *(a2 + 23);
    *&this[7].__r_.__value_.__l.__data_ = v11;
  }

  if (*(a2 + 215) < 0)
  {
    std::string::__init_copy_ctor_external(this + 8, *(a2 + 24), *(a2 + 25));
  }

  else
  {
    v12 = *(a2 + 12);
    this[8].__r_.__value_.__r.__words[2] = *(a2 + 26);
    *&this[8].__r_.__value_.__l.__data_ = v12;
  }

  this[9].__r_.__value_.__r.__words[0] = 0;
  this[9].__r_.__value_.__l.__size_ = 0;
  this[9].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[9], *(a2 + 27), *(a2 + 28), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 28) - *(a2 + 27)) >> 3));
  this[10].__r_.__value_.__r.__words[0] = 0;
  this[10].__r_.__value_.__l.__size_ = 0;
  this[10].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[10], *(a2 + 30), *(a2 + 31), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 31) - *(a2 + 30)) >> 3));
  this[11].__r_.__value_.__r.__words[0] = 0;
  this[11].__r_.__value_.__l.__size_ = 0;
  this[11].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[11], *(a2 + 33), *(a2 + 34), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 34) - *(a2 + 33)) >> 3));
  this[12].__r_.__value_.__r.__words[0] = 0;
  this[12].__r_.__value_.__l.__size_ = 0;
  this[12].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[12], *(a2 + 36), *(a2 + 37), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 37) - *(a2 + 36)) >> 3));
  this[13].__r_.__value_.__r.__words[0] = 0;
  this[13].__r_.__value_.__l.__size_ = 0;
  this[13].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[13], *(a2 + 39), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 39)) >> 3));
  this[14].__r_.__value_.__r.__words[0] = *(a2 + 42);
  std::set<int>::set[abi:ne200100](&this[14].__r_.__value_.__l.__size_, a2 + 344);
  this[15].__r_.__value_.__s.__data_[8] = *(a2 + 368);
  return this;
}

void sub_1B5A21E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 191) < 0)
  {
    operator delete(*(v10 + 168));
  }

  if (*(v10 + 167) < 0)
  {
    operator delete(*(v10 + 144));
  }

  if (*(v10 + 143) < 0)
  {
    operator delete(*(v10 + 120));
  }

  if (*(v10 + 119) < 0)
  {
    operator delete(*(v10 + 96));
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 72));
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

double kaldi::SilencePhoneSet::SilencePhoneSet(kaldi::SilencePhoneSet *this)
{
  *this = -1;
  *(this + 1) = 1;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

uint64_t kaldi::SilencePhoneSet::SilencePhoneSet(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    memset(&v11, 0, sizeof(v11));
    if ((kaldi::SplitStringToIntegers<int>(a2, ":", 0, &v11) & 1) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Invalid silence-phones string ", 30);
      v7 = *(a2 + 23);
      if (v7 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      if (v7 >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
    }

    kaldi::SilencePhoneSet::initFromVector(a1, &v11);
    if (v11.__begin_)
    {
      v11.__end_ = v11.__begin_;
      operator delete(v11.__begin_);
    }
  }

  else
  {
    *a1 = -1;
  }

  return a1;
}

void sub_1B5A220C8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 56);
  if (v4)
  {
    *(v2 - 48) = v4;
    operator delete(v4);
  }

  kaldi::ConstIntegerSet<int>::~ConstIntegerSet(v1);
  _Unwind_Resume(a1);
}

void kaldi::SilencePhoneSet::initFromVector(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v11, "No silence phones given!");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v11);
  }

  if (*v2 == 999)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "Empty silence phones", 20);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v11);
    }

LABEL_19:
    LODWORD(v10) = -1;
    goto LABEL_20;
  }

  v5 = v2 + 4;
  v6 = *v2;
  while (v5 != v3)
  {
    v7 = *v5;
    v5 += 4;
    v8 = v6 < v7;
    v6 = v7;
    if (!v8)
    {
      v9 = v5 - 8;
      goto LABEL_10;
    }
  }

  v9 = a2[1];
LABEL_10:
  if (*v2 != 1 || v9 != v3)
  {
    kaldi::ConstIntegerSet<int>::ConstIntegerSet(&v11, a2);
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    std::vector<BOOL>::operator=(a1 + 24, &v13);
    if ((a1 + 8) != &v11)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 48), __p, v15, (v15 - __p) >> 2);
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (v13)
    {
      operator delete(v13);
    }

    goto LABEL_19;
  }

  v10 = (v3 - v2) >> 2;
LABEL_20:
  *a1 = v10;
}

uint64_t kaldi::SilencePhoneSet::SilencePhoneSet(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  kaldi::SilencePhoneSet::initFromVector(a1, a2);
  return a1;
}

BOOL kaldi::SilencePhoneSet::isSilencePhone(kaldi::SilencePhoneSet *this, int a2)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (*this == -1 && v2 == v3)
  {
    return 0;
  }

  if (v2 != v3)
  {
    return kaldi::ConstIntegerSet<int>::count(this + 8, a2) > 0;
  }

  return a2 > 0 && *this >= a2;
}

void *quasar::TranslatorCompiler::TranslatorCompiler(void *result, uint64_t *a2)
{
  *result = 0;
  result[1] = 0;
  if (*a2 != a2[1])
  {
    quasar::GlobalTranslatorFactory::createTranslatorFactory(*a2, -1, 0, 0);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  if (*a2 != a2[1])
  {
    quasar::GlobalTranslatorFactory::createTranslatorFactory(*a2, -1, 0, 0);
  }

  return result;
}

void sub_1B5A2246C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v14 = *(v12 + 8);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void quasar::TranslatorCompiler::addContext(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (quasar::gLogLevel >= 5)
  {
    memset(v29, 0, sizeof(v29));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
    v11 = *(a5 + 23);
    if (v11 >= 0)
    {
      v12 = a5;
    }

    else
    {
      v12 = *a5;
    }

    if (v11 >= 0)
    {
      v13 = *(a5 + 23);
    }

    else
    {
      v13 = *(a5 + 8);
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    v16 = *(a3 + 23);
    if (v16 >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    if (v16 >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = *(a3 + 8);
    }

    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "-", 1);
    v21 = *(a4 + 23);
    if (v21 >= 0)
    {
      v22 = a4;
    }

    else
    {
      v22 = *a4;
    }

    if (v21 >= 0)
    {
      v23 = *(a4 + 23);
    }

    else
    {
      v23 = *(a4 + 8);
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v29);
  }

  (*(*a2 + 16))(v29, a2, a3, a4, a5);
  v25 = *a1;
  if (*a1)
  {
    (*(**&v29[0] + 56))(&v28);
    (*(*v25 + 48))(v25, v28);
  }

  else
  {
    (*(**&v29[0] + 56))(&v28);
    v26 = v28;
    v28 = 0uLL;
    v27 = a1[1];
    *a1 = v26;
    if (!v27)
    {
      goto LABEL_27;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (*(&v28 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
  }

LABEL_27:
  if (*(&v29[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29[0] + 1));
  }
}

void sub_1B5A226D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5A227D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v14 = *(v12 + 8);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void quasar::decode64(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *a1, *(a1 + 8));
  }

  else
  {
    v30 = *a1;
  }

  v3 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v3 = v30.__r_.__value_.__r.__words[1];
  }

  std::string::append(&v30, -v3 & 3, 61);
  v4 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  v5 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  size = v30.__r_.__value_.__l.__size_;
  v7 = v30.__r_.__value_.__r.__words[0];
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v30;
  }

  else
  {
    v8 = v30.__r_.__value_.__r.__words[0];
  }

  v9 = 0;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v30.__r_.__value_.__l.__size_;
  }

  if (v10)
  {
    v11 = v10;
    v12 = v8;
    do
    {
      v13 = v12->__r_.__value_.__s.__data_[0];
      v12 = (v12 + 1);
      if (v13 == 61)
      {
        ++v9;
      }

      --v11;
    }

    while (v11);
    do
    {
      if (v8->__r_.__value_.__s.__data_[0] == 61)
      {
        v8->__r_.__value_.__s.__data_[0] = 65;
      }

      v8 = (v8 + 1);
      --v10;
    }

    while (v10);
    v4 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    size = v30.__r_.__value_.__l.__size_;
    v7 = v30.__r_.__value_.__r.__words[0];
    v5 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  if (v5 >= 0)
  {
    v7 = &v30;
  }

  v24 = v7;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (v5 < 0)
  {
    v4 = size;
  }

  v18 = v7 + v4;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::string::basic_string[abi:ne200100]<boost::archive::iterators::transform_width<boost::archive::iterators::binary_from_base64<boost::archive::iterators::remove_whitespace<std::__wrap_iter<char const*>>,char>,8,6,char>,0>(a2, &v24, &v18);
  v14 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v15 = v14;
  v16 = a2 + v14;
  if (v15 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v16 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
    v17 = a2->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a2, v16 - (v17 + v9), v9);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void sub_1B5A229DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v2 - 25) < 0)
  {
    operator delete(*(v2 - 48));
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::basic_string[abi:ne200100]<boost::archive::iterators::transform_width<boost::archive::iterators::binary_from_base64<boost::archive::iterators::remove_whitespace<std::__wrap_iter<char const*>>,char>,8,6,char>,0>(std::string *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a2 + 12);
  v5 = *(a2 + 26);
  v6 = *(a2 + 7);
  v7 = *a3;
  v8 = *(a3 + 12);
  v9 = *(a3 + 26);
  v10 = *(a3 + 7);
  v18 = *a2;
  v19 = 0;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = 0;
  v12 = v7;
  v13 = 0;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = 0;
  std::string::__init_with_sentinel[abi:ne200100]<boost::archive::iterators::transform_width<boost::archive::iterators::binary_from_base64<boost::archive::iterators::remove_whitespace<std::__wrap_iter<char const*>>,char>,8,6,char>,boost::archive::iterators::transform_width<boost::archive::iterators::binary_from_base64<boost::archive::iterators::remove_whitespace<std::__wrap_iter<char const*>>,char>,8,6,char>>(a1, &v18, &v12);
  return a1;
}

void std::string::__init_with_sentinel[abi:ne200100]<boost::archive::iterators::transform_width<boost::archive::iterators::binary_from_base64<boost::archive::iterators::remove_whitespace<std::__wrap_iter<char const*>>,char>,8,6,char>,boost::archive::iterators::transform_width<boost::archive::iterators::binary_from_base64<boost::archive::iterators::remove_whitespace<std::__wrap_iter<char const*>>,char>,8,6,char>>(std::string *this, uint64_t a2, void *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (*a2 != *a3)
  {
    if (*(a2 + 24))
    {
      goto LABEL_4;
    }

    do
    {
      boost::archive::iterators::transform_width<boost::archive::iterators::binary_from_base64<boost::archive::iterators::remove_whitespace<std::__wrap_iter<char const*>>,char>,8,6,char>::fill(a2);
LABEL_4:
      std::string::push_back(this, *(a2 + 25));
      *(a2 + 24) = 0;
    }

    while (*a2 != *a3);
  }
}

void sub_1B5A22B14(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

uint64_t boost::archive::iterators::transform_width<boost::archive::iterators::binary_from_base64<boost::archive::iterators::remove_whitespace<std::__wrap_iter<char const*>>,char>,8,6,char>::fill(uint64_t a1)
{
  v2 = 0;
  *(a1 + 25) = 0;
  v3 = *(a1 + 28);
  v4 = 8;
  do
  {
    if (v3)
    {
      result = *(a1 + 26);
    }

    else if (*(a1 + 32) == 1)
    {
      result = 0;
      *(a1 + 26) = 0;
      v3 = v4;
    }

    else
    {
      result = boost::iterators::transform_iterator<boost::archive::iterators::detail::to_6_bit<char>,boost::archive::iterators::remove_whitespace<std::__wrap_iter<char const*>>,boost::use_default,boost::use_default>::dereference(a1);
      *(a1 + 9) = 0;
      ++*a1;
      *(a1 + 26) = result;
      v2 = *(a1 + 25);
      v3 = 6;
    }

    if (v3 >= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v3;
    }

    v7 = (v2 << v6) | (result >> (v3 - v6)) & ~(-1 << v6);
    v2 = ((v2 << v6) | (result >> (v3 - v6)) & ~(-1 << v6));
    *(a1 + 25) = v7;
    *(a1 + 28) = v3 - v6;
    v8 = v4 > v3;
    v3 -= v6;
    v4 -= v6;
  }

  while (v8);
  *(a1 + 24) = 1;
  return result;
}

uint64_t boost::iterators::transform_iterator<boost::archive::iterators::detail::to_6_bit<char>,boost::archive::iterators::remove_whitespace<std::__wrap_iter<char const*>>,boost::use_default,boost::use_default>::dereference(_BYTE *a1)
{
  v2 = *a1;
  if ((a1[9] & 1) == 0)
  {
    v3 = MEMORY[0x1E69E9830];
    while (1)
    {
      v4 = *v2;
      if (v4 < 0)
      {
        if (!__maskrune(v4, 0x4000uLL))
        {
LABEL_8:
          a1[9] = 1;
          v2 = *a1;
          break;
        }
      }

      else if ((*(v3 + 4 * v4 + 60) & 0x4000) == 0)
      {
        goto LABEL_8;
      }

      v2 = (*a1 + 1);
      *a1 = v2;
    }
  }

  v5 = *v2;

  return boost::archive::iterators::detail::to_6_bit<char>::operator()((a1 + 16), v5);
}

uint64_t boost::archive::iterators::detail::to_6_bit<char>::operator()(uint64_t a1, int a2)
{
  if (a2 < 0 || (v2 = boost::archive::iterators::detail::to_6_bit<char>::operator()(char)const::lookup_table[a2], v2 == 255))
  {
    v4 = &unk_1F2D3E618;
    v5 = 1;
    boost::serialization::throw_exception<boost::archive::iterators::dataflow_exception>(&v4);
  }

  return v2;
}

void boost::serialization::throw_exception<boost::archive::iterators::dataflow_exception>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_1F2D3E618;
  exception[2] = *(a1 + 8);
}

void boost::archive::iterators::dataflow_exception::~dataflow_exception(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1B8C85350);
}

const char *boost::archive::iterators::dataflow_exception::what(boost::archive::iterators::dataflow_exception *this)
{
  v1 = *(this + 2);
  if (v1 > 4)
  {
    return "unknown exception code";
  }

  else
  {
    return off_1E7C1C4B8[v1];
  }
}

uint64_t quasar::AlternativesProcessorOptions::options@<X0>(quasar::AlternativesProcessorOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 16;
  v3[1] = this + 160;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 2uLL);
}

void sub_1B5A22F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void quasar::AlternativesProcessorBlock::readMapFile(uint64_t a1, uint64_t a2)
{
  v9[72] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v9);
  if (!*(&v9[4] + *(v9[0] - 24)))
  {
    quasar::PTree::PTree(v8);
    quasar::PTree::readJsonFromFile();
  }

  memset(v8, 0, sizeof(v8));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Mapping file '", 14);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "' is not found", 14);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
}

void sub_1B5A233B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void quasar::AlternativesProcessorBlock::getMetaValue(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v8 = 3 * a2;
  v9 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(*(a1 + 328) + 24 * a2, a3);
  v10 = *(a1 + 328);
  if (v10 + 8 * v8 + 8 == v9)
  {
    memset(v18, 0, sizeof(v18));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "tag [", 5);
    v14 = *(a3 + 23);
    if (v14 >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    if (v14 >= 0)
    {
      v16 = *(a3 + 23);
    }

    else
    {
      v16 = *(a3 + 8);
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "] is not recognized; panicking, cannot produce metaValue");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v18);
  }

  *&v18[0] = a3;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v10 + 24 * a2, a3);
  if (*(v11 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *(v11 + 56), *(v11 + 64));
  }

  else
  {
    v12 = *(v11 + 56);
    a4->__r_.__value_.__r.__words[2] = *(v11 + 72);
    *&a4->__r_.__value_.__l.__data_ = v12;
  }
}

void quasar::AlternativesProcessorBlock::process(void *a1, uint64_t a2, const quasar::TranslationPhraseInternal **a3)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v5 = a3[1] - *a3;
  if (v5)
  {
    v33 = 0uLL;
    v34[0].__locale_ = 0;
    std::vector<std::vector<std::string>>::vector[abi:ne200100](v41, 0xF83E0F83E0F83E1 * (v5 >> 3));
    v45.__first_ = &v33;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v6 = *a3;
    if (a3[1] == *a3)
    {
LABEL_33:
      std::vector<quasar::TranslationPhraseInternal>::push_back[abi:ne200100](&v42, v6);
      quasar::AlternativesProcessorBlock::decorateTranslation(a1, v43 - 264, v41[0]);
      v33 = 0uLL;
      v34[0].__locale_ = 0;
      v45.__begin_ = 0;
      v45.__end_ = 0;
      v45.__first_ = &v45.__begin_;
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v45, &v38->__r_.__value_.__l.__data_);
      v25 = 0uLL;
      if ((0xF83E0F83E0F83E1 * ((a3[1] - *a3) >> 3)) >= 2)
      {
        v26 = 1;
        v27 = 24;
        v28 = 264;
        do
        {
          if (&v45.__begin_ == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v45, &v38[v27 / 0x18].__r_.__value_.__l.__data_))
          {
            std::vector<quasar::TranslationPhraseInternal>::push_back[abi:ne200100](&v42, (*a3 + v28));
            quasar::AlternativesProcessorBlock::decorateTranslation(a1, v43 - 264, &v41[0][v27 / 8]);
            std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v45, &v38[v27 / 0x18].__r_.__value_.__l.__data_);
          }

          else if ((*quasar::OptionValue<BOOL>::value(a1 + 3) & 1) == 0)
          {
            std::vector<quasar::TranslationPhraseInternal>::push_back[abi:ne200100](&v33, (*a3 + v28));
            quasar::AlternativesProcessorBlock::decorateTranslation(a1, *(&v33 + 1) - 264, &v41[0][v27 / 8]);
          }

          ++v26;
          v27 += 24;
          v28 += 264;
        }

        while (v26 < 0xF83E0F83E0F83E1 * ((a3[1] - *a3) >> 3));
        v25 = v33;
      }

      std::vector<quasar::TranslationPhraseInternal>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::TranslationPhraseInternal*>,std::__wrap_iter<quasar::TranslationPhraseInternal*>>(&v42, v43, v25, *(&v25 + 1), 0xF83E0F83E0F83E1 * ((*(&v25 + 1) - v25) >> 3));
      quasar::ProcessingBlock::send(a1 + *(*a1 - 24), &v42, 0);
      std::__tree<std::string>::destroy(&v45, v45.__begin_);
      v45.__first_ = &v33;
      std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v45);
    }

    else
    {
      v7 = 0;
      v8 = &v33 + 8;
      v29 = *MEMORY[0x1E69E54E8];
      v30 = *(MEMORY[0x1E69E54E8] + 24);
      while (1)
      {
        v9 = v8;
        std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
        if (a1[45] != a1[44])
        {
          break;
        }

LABEL_19:
        v8 = v9;
        std::stringbuf::str();
        v17 = v39;
        if (v39 >= v40)
        {
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3);
          v19 = v18 + 1;
          if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v40 - v38) >> 3) > v19)
          {
            v19 = 0x5555555555555556 * ((v40 - v38) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v40 - v38) >> 3) >= 0x555555555555555)
          {
            v20 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v20 = v19;
          }

          v45.__end_cap_.__value_ = &v38;
          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v38, v20);
          }

          v21 = 8 * ((v39 - v38) >> 3);
          *(v21 + 16) = v32;
          *v21 = *__p;
          v32 = 0;
          *__p = 0uLL;
          v22 = (24 * v18 - (v39 - v38));
          memcpy(v22, v38, v39 - v38);
          v23 = v38;
          v24 = v40;
          v38 = v22;
          v39 = 24 * v18 + 24;
          v40 = 0;
          v45.__end_ = v23;
          v45.__end_cap_.__value_ = v24;
          v45.__first_ = v23;
          v45.__begin_ = v23;
          std::__split_buffer<std::string>::~__split_buffer(&v45);
          v39 = 24 * v18 + 24;
          v8 = v9;
        }

        else
        {
          *(v39 + 16) = v32;
          *v17 = *__p;
          v39 = v17 + 24;
        }

        *&v33 = v29;
        *(&v34[-2].__locale_ + *(v29 - 24)) = v30;
        *(&v33 + 1) = MEMORY[0x1E69E5548] + 16;
        if (v36 < 0)
        {
          operator delete(v35);
        }

        *(&v33 + 1) = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v34);
        std::ostream::~ostream();
        MEMORY[0x1B8C85200](v37);
        ++v7;
        v6 = *a3;
        if (v7 >= 0xF83E0F83E0F83E1 * ((a3[1] - *a3) >> 3))
        {
          goto LABEL_33;
        }
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = *(*a3 + 33 * v7 + 25);
        if (v12 == 0xF0F0F0F0F0F0F0F1 * ((*(*a3 + 33 * v7 + 26) - v13) >> 3))
        {
          break;
        }

        v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1[41] + v10, (v13 + v11));
        v10 += 24;
        if (a1[41] + v10 - 16 == v14)
        {
          break;
        }

        quasar::AlternativesProcessorBlock::getMetaValue(a1, v12, *(*a3 + 33 * v7 + 25) + v11, &v45);
        std::vector<std::string>::push_back[abi:ne200100](&v41[0][3 * v7], &v45);
        if (v12)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, " ", 1);
        }

        if (SHIBYTE(v45.__end_) >= 0)
        {
          first = &v45;
        }

        else
        {
          first = v45.__first_;
        }

        if (SHIBYTE(v45.__end_) >= 0)
        {
          end_high = HIBYTE(v45.__end_);
        }

        else
        {
          end_high = v45.__begin_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, first, end_high);
        if (SHIBYTE(v45.__end_) < 0)
        {
          operator delete(v45.__first_);
        }

        v11 += 136;
        if (++v12 >= 0xAAAAAAAAAAAAAAABLL * ((a1[45] - a1[44]) >> 3))
        {
          goto LABEL_19;
        }
      }

      quasar::ProcessingBlock::send(a1 + *(*a1 - 24), a3, 0);
      *&v33 = v29;
      *(&v34[-2].__locale_ + *(v29 - 24)) = v30;
      *(&v33 + 1) = MEMORY[0x1E69E5548] + 16;
      if (v36 < 0)
      {
        operator delete(v35);
      }

      *(&v33 + 1) = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v34);
      std::ostream::~ostream();
      MEMORY[0x1B8C85200](v37);
    }

    *&v33 = &v38;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v33);
    *&v33 = v41;
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v33);
  }

  else
  {
    quasar::ProcessingBlock::send(a1 + *(*a1 - 24), a3, 0);
  }

  *&v33 = &v42;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_1B5A23D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (a10 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a11, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va);
  a11 = v24 - 200;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  a11 = v24 - 176;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a11 = v24 - 152;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void quasar::AlternativesProcessorBlock::decorateTranslation(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 360) != *(a1 + 352))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = quasar::MetaInfo::get((a2 + 256));
      v9 = *(a1 + 352);
      quasar::PTree::PTree(v11, *a3 + v6);
      quasar::PTree::putChild(v8, v9 + v6, v11, 1);
      quasar::PTree::~PTree(v11);
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *>(v11, (*(a2 + 200) + 136), *(a2 + 208), *(a2 + 200));
      std::vector<quasar::TranslationTokenInternal>::__base_destruct_at_end[abi:ne200100](a2 + 200, v10);
      ++v7;
      v6 += 24;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 360) - *(a1 + 352)) >> 3));
  }
}

void quasar::ConfiguredProcessingBlock<quasar::AlternativesProcessorOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
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

void sub_1B5A24028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
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

void quasar::AlternativesProcessorBlock::~AlternativesProcessorBlock(quasar::AlternativesProcessorBlock *this)
{
  *this = &unk_1F2D3E680;
  v2 = (this + 376);
  *(this + 47) = &unk_1F2D3E728;
  v3 = (this + 352);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 328);
  std::vector<std::map<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F2D3E7C0;
  *(this + 47) = off_1F2D3E848;
  quasar::AlternativesProcessorOptions::~AlternativesProcessorOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  *this = &unk_1F2D3E680;
  v2 = (this + 376);
  *(this + 47) = &unk_1F2D3E728;
  v3 = (this + 352);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 328);
  std::vector<std::map<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F2D3E7C0;
  *(this + 47) = off_1F2D3E848;
  quasar::AlternativesProcessorOptions::~AlternativesProcessorOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v2);
  MEMORY[0x1B8C85350](this, 0x10F3C40C8FF1D3CLL);
}

void virtual thunk toquasar::AlternativesProcessorBlock::~AlternativesProcessorBlock(quasar::AlternativesProcessorBlock *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_1F2D3E680;
  *(v1 + 47) = &unk_1F2D3E728;
  v2 = (v1 + 352);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (v1 + 328);
  std::vector<std::map<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *v1 = &unk_1F2D3E7C0;
  *(v1 + 47) = off_1F2D3E848;
  quasar::AlternativesProcessorOptions::~AlternativesProcessorOptions((v1 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 47);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_1F2D3E680;
  *(v1 + 47) = &unk_1F2D3E728;
  v2 = (v1 + 352);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (v1 + 328);
  std::vector<std::map<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *v1 = &unk_1F2D3E7C0;
  *(v1 + 47) = off_1F2D3E848;
  quasar::AlternativesProcessorOptions::~AlternativesProcessorOptions((v1 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 47);
  MEMORY[0x1B8C85350](v1, 0x10F3C40C8FF1D3CLL);
}

void std::vector<std::map<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void quasar::AlternativesProcessorOptions::~AlternativesProcessorOptions(quasar::AlternativesProcessorOptions *this)
{
  *this = &unk_1F2D3E640;
  *(this + 20) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 296, *(this + 38));
  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  *(this + 20) = &unk_1F2D08890;
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  *(this + 2) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 136, *(this + 18));
  *(this + 2) = &unk_1F2D08890;
  v3 = *(this + 14);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

quasar::TranslationPhraseInternal *std::vector<quasar::TranslationPhraseInternal>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::TranslationPhraseInternal*>,std::__wrap_iter<quasar::TranslationPhraseInternal*>>(void *a1, uint64_t a2, uint64_t *a3, quasar::TranslationPhraseInternal *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0xF83E0F83E0F83E1 * ((v9 - v10) >> 3) >= a5)
    {
      v16 = v10 - a2;
      if (0xF83E0F83E0F83E1 * ((v10 - a2) >> 3) >= a5)
      {
        v19 = 33 * a5;
        std::vector<quasar::TranslationPhraseInternal>::__move_range(a1, a2, a1[1], a2 + 264 * a5);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          quasar::TranslationPhraseInternal::operator=(v21, v7);
          v7 += 33;
          v21 += 264;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>,quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<quasar::TranslationPhraseInternal>::__move_range(a1, v5, v10, v5 + 264 * a5);
          v18 = v5;
          do
          {
            quasar::TranslationPhraseInternal::operator=(v18, v7);
            v7 += 33;
            v18 += 264;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0xF83E0F83E0F83E1 * ((v10 - *a1) >> 3);
      if (v12 > 0xF83E0F83E0F83ELL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0xF83E0F83E0F83E1 * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x7C1F07C1F07C1FLL)
      {
        v15 = 0xF83E0F83E0F83ELL;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>>(a1, v15);
      }

      v22 = (8 * (v13 >> 3));
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = (v22 + 264 * a5);
      v24 = 264 * a5;
      do
      {
        quasar::TranslationPhraseInternal::TranslationPhraseInternal(v22, v7);
        v22 = (v22 + 264);
        v7 += 33;
        v24 -= 264;
      }

      while (v24);
      v27 = v23;
      v5 = std::vector<quasar::TranslationPhraseInternal>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<quasar::TranslationPhraseInternal>::~__split_buffer(v26);
    }
  }

  return v5;
}

uint64_t std::vector<std::map<std::string,std::string>>::__emplace_back_slow_path<std::map<std::string,std::string>>(uint64_t *a1, void *a2)
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

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(a1, v6);
  }

  v7 = 24 * v2;
  v18 = 0;
  v19 = v7;
  *v7 = *a2;
  v8 = a2 + 1;
  v9 = a2[1];
  *(&v20 + 1) = 0;
  *(24 * v2 + 8) = v9;
  v10 = 24 * v2 + 8;
  v11 = a2[2];
  *(v7 + 16) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *a2 = v8;
    *v8 = 0;
    a2[2] = 0;
  }

  else
  {
    *v7 = v10;
  }

  *&v20 = v7 + 24;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<std::string,std::string>>,std::map<std::string,std::string>*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<std::map<std::string,std::string>>::~__split_buffer(&v18);
  return v17;
}

void sub_1B5A2499C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::map<std::string,std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<std::string,std::string>>,std::map<std::string,std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::string>>,std::map<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::string>>,std::map<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::string>>,std::map<std::string,std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::string>>,std::map<std::string,std::string>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<std::map<std::string,std::string>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::map<std::string,std::string>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::map<std::string,std::string>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(i - 24, *(i - 16));
  }
}

uint64_t FstPathFinder::FstPathFinder(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (a1 + 8 != a2)
  {
    std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>((a1 + 8), *a2, (a2 + 8));
  }

  *a1 = a3;
  return a1;
}

void sub_1B5A24C08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<fst::IntervalSet<int>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<int>::destroy(v2, *v3);
  _Unwind_Resume(a1);
}

void FstPathFinder::extract_all_paths(void *a1, void *a2)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  v4 = (*(*a2 + 24))(a2);
  FstPathFinder::_extract_paths(a1, a2, v4, &__p, 0.0);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_1B5A24CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void FstPathFinder::_extract_paths(void *a1, void *a2, uint64_t a3, const void **a4, float a5)
{
  LODWORD(__p) = (*(*a2 + 32))(a2, a3);
  v60 = 2139095040;
  if (*&__p == INFINITY)
  {
    v27 = *(*(a2[1] + 64) + 8 * a3);
    v29 = *(v27 + 24);
    v28 = *(v27 + 32);
    if (v28 == v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(v27 + 24);
    }

    if (v28 != v29)
    {
      v31 = 0;
      if (((v28 - v29) >> 4) <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = (v28 - v29) >> 4;
      }

      do
      {
        v33 = (v30 + 16 * v31);
        v34 = a1[2];
        if (v34)
        {
          v35 = *v33;
          do
          {
            v36 = *(v34 + 7);
            if (SLODWORD(v35) >= v36)
            {
              if (v36 >= SLODWORD(v35))
              {
                goto LABEL_41;
              }

              ++v34;
            }

            v34 = *v34;
          }

          while (v34);
        }

        v38 = a4[1];
        v37 = a4[2];
        if (v38 >= v37)
        {
          v40 = *a4;
          v41 = v38 - *a4;
          v42 = v41 >> 2;
          v43 = (v41 >> 2) + 1;
          if (v43 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v44 = v37 - v40;
          if (v44 >> 1 > v43)
          {
            v43 = v44 >> 1;
          }

          v45 = v44 >= 0x7FFFFFFFFFFFFFFCLL;
          v46 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v45)
          {
            v46 = v43;
          }

          if (v46)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v46);
          }

          *(4 * v42) = *v33;
          v39 = 4 * v42 + 4;
          memcpy(0, v40, v41);
          v47 = *a4;
          *a4 = 0;
          a4[1] = v39;
          a4[2] = 0;
          if (v47)
          {
            operator delete(v47);
          }
        }

        else
        {
          *v38 = *v33;
          v39 = (v38 + 4);
        }

        a4[1] = v39;
LABEL_41:
        if (*a1 >= ((a1[5] - a1[4]) >> 5))
        {
          v48 = v33[2];
          v49 = INFINITY;
          if (v48 != INFINITY && a5 != INFINITY)
          {
            v49 = a5 + v48;
          }

          v52 = v48 == -INFINITY || a5 == -INFINITY;
          v10.n128_u32[0] = 2143289344;
          if (!v52)
          {
            v10.n128_f32[0] = v49;
          }

          FstPathFinder::_extract_paths(a1, a2, *(v33 + 3), a4, v10);
        }

        ++v31;
      }

      while (v31 != v32);
    }
  }

  else
  {
    (*(*a2 + 32))(a2, a3);
    v12 = NAN;
    if (a5 != -INFINITY && v11 != -INFINITY)
    {
      v13 = v11 == INFINITY || a5 == INFINITY;
      v14 = a5 + v11;
      if (v13)
      {
        v12 = INFINITY;
      }

      else
      {
        v12 = v14;
      }
    }

    v17 = a1[4];
    v15 = a1[5];
    v16 = a1 + 4;
    v18 = *a4;
    v19 = v15 - v17;
    if (v15 == v17)
    {
      v22 = a4[1];
      v23 = v22 - v18;
LABEL_59:
      v54 = 0;
      v55 = 0;
      v53 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v53, v18, v22, v23 >> 2);
      __p = 0;
      v57 = 0;
      v58 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v53, v54, (v54 - v53) >> 2);
      v59 = v12;
      std::vector<PathData>::push_back[abi:ne200100](v16, &__p);
      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v53)
      {
        v54 = v53;
        operator delete(v53);
      }

      v18 = *a4;
    }

    else
    {
      v20 = 0;
      v21 = v19 >> 5;
      v22 = a4[1];
      v23 = v22 - v18;
      v24 = 1;
      while (1)
      {
        v25 = v17 + 32 * v20;
        if (v23 == *(v25 + 8) - *v25 && !memcmp(v18, *v25, v22 - v18))
        {
          break;
        }

        v20 = v24;
        if (v21 <= v24++)
        {
          goto LABEL_59;
        }
      }
    }

    a4[1] = v18;
  }
}

void sub_1B5A25044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<PathData>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<PathData>::__emplace_back_slow_path<PathData>(a1, a2);
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<PathData>::__emplace_back_slow_path<PathData>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PathData>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v8 + 24) = *(a2 + 24);
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PathData>,PathData*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<fst::IntervalSet<int>>::~__split_buffer(&v15);
  return v14;
}