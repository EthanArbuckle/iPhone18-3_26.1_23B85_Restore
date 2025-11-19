uint64_t _GLOBAL__sub_I_OrdinalFilter_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [10],void>(&marrs::mrr::mr::assetSubDirectoryPath, "ruleBased");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::assetSubDirectoryPath, &dword_2227A9000);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2227AA9A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size - v7 + v6, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v13 = this;
    if ((v8 & 0x80) != 0)
    {
      v13 = this->__r_.__value_.__r.__words[0];
    }

    v14 = v13 + size;
    memmove(v13 + size, __src, v6);
    v14[v6] = 0;
    v15 = v6 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v6);
    if ((v18 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v12 = v18;
    }

    else
    {
      v12 = __p[1];
    }

    std::string::append(this, v11, v12);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_2227AAB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [10],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2227AAB6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_CbRPredictorPlugin_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(LOGISTIC_PARAMS, "sys_comb_logistic_regression_params");
  v0 = MEMORY[0x277D82640];
  __cxa_atexit(MEMORY[0x277D82640], LOGISTIC_PARAMS, &dword_2227A9000);
  std::string::basic_string[abi:ne200100]<0>(SYS_COMB_WEIGHT_1, "sys_comb_weight_1");
  __cxa_atexit(v0, SYS_COMB_WEIGHT_1, &dword_2227A9000);
  std::string::basic_string[abi:ne200100]<0>(&SYS_COMB_WEIGHT_2, "sys_comb_weight_2");

  return __cxa_atexit(v0, &SYS_COMB_WEIGHT_2, &dword_2227A9000);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t _GLOBAL__sub_I_ModelBasedMR_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::configFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::configFileName, &dword_2227A9000);
  qword_280AC2B80 = 0;
  unk_280AC2B88 = 0;
  marrs::mrr::mr::ModelBasedMR::assetSubDirectoryPath = 0;
  std::string::append[abi:ne200100]<char const*,0>(&marrs::mrr::mr::ModelBasedMR::assetSubDirectoryPath, "modelBased", "");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::ModelBasedMR::assetSubDirectoryPath, &dword_2227A9000);
  qword_280AC2B98 = 0;
  unk_280AC2BA0 = 0;
  marrs::mrr::mr::ModelBasedMR::modelFolderName = 0;
  std::string::append[abi:ne200100]<char const*,0>(&marrs::mrr::mr::ModelBasedMR::modelFolderName, "converted_model.mlmodelc", "");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::ModelBasedMR::modelFolderName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&marrs::mrr::mr::ModelBasedMR::modelName, "model.espresso.net");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::ModelBasedMR::modelName, &dword_2227A9000);
}

void sub_2227AAE28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2227AAE88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_MentionKeywordFilter_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
}

uint64_t _GLOBAL__sub_I_ProtocolFilter_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
}

uint64_t _GLOBAL__sub_I_MRMatchingResult_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(marrs::mrr::mr::MRMatchingResult::entityDataSourceKey, "dataSource");
  v0 = MEMORY[0x277D82640];

  return __cxa_atexit(v0, marrs::mrr::mr::MRMatchingResult::entityDataSourceKey, &dword_2227A9000);
}

uint64_t _GLOBAL__sub_I_GazeBasedFilter_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
}

void _GLOBAL__sub_I_MultimodalReferenceResolution_mm()
{
  v0 = objc_autoreleasePoolPush();
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::md::configFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::md::configFileName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::configFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::configFileName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);

  objc_autoreleasePoolPop(v0);
}

uint64_t _GLOBAL__sub_I_UtteranceKeywordFilter_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
  qword_280AC2AA8 = 0;
  unk_280AC2AB0 = 0;
  marrs::mrr::mr::keywordFilename = 0;
  std::string::append[abi:ne200100]<char const*,0>(&marrs::mrr::mr::keywordFilename, "keywords.json", "");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::keywordFilename, &dword_2227A9000);
}

void sub_2227AB19C(_Unwind_Exception *exception_object)
{
  if (byte_280AC2AB7 < 0)
  {
    operator delete(marrs::mrr::mr::keywordFilename);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_RuleBasedMR_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::configFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::configFileName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [7],void>(&marrs::mrr::mr::RuleBasedMR::ordinalFilterAssetPath, "verbal");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::RuleBasedMR::ordinalFilterAssetPath, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [13],void>(&marrs::mrr::mr::RuleBasedMR::verbKeywordsAssetPath, "verbKeywords");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::RuleBasedMR::verbKeywordsAssetPath, &dword_2227A9000);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [7],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2227AB2E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [13],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2227AB344(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_MentionDetectorOverrides_cpp()
{
  marrs::mrr::md::MentionDetectorOverrides::OVERRIDES_FILE_NAME = 0;
  *algn_280AC2C28 = 0;
  qword_280AC2C30 = 0;
  std::string::append[abi:ne200100]<char const*,0>(&marrs::mrr::md::MentionDetectorOverrides::OVERRIDES_FILE_NAME, "overrides.json", "");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::md::MentionDetectorOverrides::OVERRIDES_FILE_NAME, &dword_2227A9000);
}

void sub_2227AB3CC(_Unwind_Exception *exception_object)
{
  if (SHIBYTE(qword_280AC2C30) < 0)
  {
    operator delete(marrs::mrr::md::MentionDetectorOverrides::OVERRIDES_FILE_NAME);
  }

  _Unwind_Resume(exception_object);
}

void _GLOBAL__sub_I_QueryRewrite_mm()
{
  v0 = objc_autoreleasePoolPush();
  std::string::basic_string[abi:ne200100]<0>(LOGISTIC_PARAMS, "sys_comb_logistic_regression_params");
  v1 = MEMORY[0x277D82640];
  __cxa_atexit(MEMORY[0x277D82640], LOGISTIC_PARAMS, &dword_2227A9000);
  std::string::basic_string[abi:ne200100]<0>(SYS_COMB_WEIGHT_1, "sys_comb_weight_1");
  __cxa_atexit(v1, SYS_COMB_WEIGHT_1, &dword_2227A9000);
  std::string::basic_string[abi:ne200100]<0>(SYS_COMB_WEIGHT_2, "sys_comb_weight_2");
  __cxa_atexit(v1, SYS_COMB_WEIGHT_2, &dword_2227A9000);

  objc_autoreleasePoolPop(v0);
}

uint64_t _GLOBAL__sub_I_SpanTypeFilter_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
}

uint64_t _GLOBAL__sub_I_MRRVisualAndScreenMentionDetector_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::md::configFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::md::configFileName, &dword_2227A9000);
  std::string::basic_string[abi:ne200100]<0>(&marrs::mrr::md::MRRVisualAndScreenMentionDetector::WORD_PIECE_SUFFIX_SYMBOL, "##");
  __cxa_atexit(MEMORY[0x277D82640], &marrs::mrr::md::MRRVisualAndScreenMentionDetector::WORD_PIECE_SUFFIX_SYMBOL, &dword_2227A9000);
  qword_280AC2BF8 = 0;
  unk_280AC2C00 = 0;
  marrs::mrr::md::MRRVisualAndScreenMentionDetector::MODEL_FOLDER_NAME = 0;
  std::string::append[abi:ne200100]<char const*,0>(&marrs::mrr::md::MRRVisualAndScreenMentionDetector::MODEL_FOLDER_NAME, "classifier_model.mlmodelc", "");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::md::MRRVisualAndScreenMentionDetector::MODEL_FOLDER_NAME, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&marrs::mrr::md::MRRVisualAndScreenMentionDetector::MODEL_FILE_NAME, "model.espresso.net");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::md::MRRVisualAndScreenMentionDetector::MODEL_FILE_NAME, &dword_2227A9000);
}

void sub_2227AB634(_Unwind_Exception *exception_object)
{
  if (byte_280AC2C07 < 0)
  {
    operator delete(marrs::mrr::md::MRRVisualAndScreenMentionDetector::MODEL_FOLDER_NAME);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_MROrchestrator_cpp()
{
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::configFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::configFileName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&marrs::mrr::mr::filterConfigFileName, "config.json");
  __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::filterConfigFileName, &dword_2227A9000);
  std::__fs::filesystem::path::path[abi:ne200100]<char [7],void>(&marrs::mrr::mr::MROrchestrator::modelMRAssetPath, "visual");

  return __cxa_atexit(std::__fs::filesystem::path::~path[abi:ne200100], &marrs::mrr::mr::MROrchestrator::modelMRAssetPath, &dword_2227A9000);
}

void _GLOBAL__sub_I_MRREntity_cpp()
{
  v12 = *MEMORY[0x277D85DE8];
  memcpy(v11, &unk_2784B52F8, 0x1E0uLL);
  std::map<marrs::mrr::mr::EntityType,char const*>::map[abi:ne200100](&marrs::mrr::mr::MRREntity::EntityTypeStr, v11, 30);
  __cxa_atexit(std::map<marrs::mrr::mr::EntityType,char const*>::~map[abi:ne200100], &marrs::mrr::mr::MRREntity::EntityTypeStr, &dword_2227A9000);
  memcpy(v11, &unk_2784B54D8, sizeof(v11));
  std::map<marrs::mrr::mr::EntityType,char const*>::map[abi:ne200100](&marrs::mrr::mr::MRREntity::MatchingSpanLabelStr, v11, 31);
  __cxa_atexit(std::map<marrs::mrr::mr::EntityType,char const*>::~map[abi:ne200100], &marrs::mrr::mr::MRREntity::MatchingSpanLabelStr, &dword_2227A9000);
  v0 = 0;
  v1 = 0;
  qword_280AC2B10 = 0;
  qword_280AC2B08 = 0;
  v2 = &qword_280AC2B08;
  marrs::mrr::mr::MRREntity::EntitySourceToStrMap = &qword_280AC2B08;
  while (1)
  {
    if (v2 == &qword_280AC2B08)
    {
      v4 = &qword_280AC2B08;
    }

    else
    {
      v3 = v0;
      if (v0)
      {
        do
        {
          v4 = v3;
          v3 = v3[1];
        }

        while (v3);
      }

      else
      {
        v5 = &qword_280AC2B08;
        do
        {
          v4 = v5[2];
          v6 = *v4 == v5;
          v5 = v4;
        }

        while (v6);
      }

      v7 = xmmword_2784B56C8[v1];
      if (*(v4 + 8) >= v7)
      {
        if (v0)
        {
          v8 = &qword_280AC2B08;
          while (1)
          {
            while (1)
            {
              v9 = v0;
              v10 = *(v0 + 32);
              if (v7 >= v10)
              {
                break;
              }

              v0 = *v9;
              v8 = v9;
              if (!*v9)
              {
                goto LABEL_14;
              }
            }

            if (v10 >= v7)
            {
              break;
            }

            v8 = v9 + 1;
            v0 = v9[1];
            if (!v0)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          v8 = &qword_280AC2B08;
        }

        goto LABEL_13;
      }
    }

    if (v0)
    {
      v8 = v4 + 1;
    }

    else
    {
      v8 = &qword_280AC2B08;
    }

LABEL_13:
    if (!*v8)
    {
LABEL_14:
      operator new();
    }

    if (++v1 == 6)
    {
      __cxa_atexit(std::map<marrs::mrr::mr::EntitySource,char const*>::~map[abi:ne200100], &marrs::mrr::mr::MRREntity::EntitySourceToStrMap, &dword_2227A9000);
      std::string::basic_string[abi:ne200100]<0>(v11, "book");
      v11[6] = 26;
      std::string::basic_string[abi:ne200100]<0>(&v11[8], "album");
      v11[14] = 9;
      std::string::basic_string[abi:ne200100]<0>(&v11[16], "landmark");
      v11[22] = 2;
      std::string::basic_string[abi:ne200100]<0>(&v11[24], "dogs");
      v11[30] = 27;
      std::string::basic_string[abi:ne200100]<0>(&v11[32], "cats");
      v11[38] = 27;
      std::string::basic_string[abi:ne200100]<0>(&v11[40], "nature");
      v11[46] = 27;
      std::string::basic_string[abi:ne200100]<0>(&v11[48], "packagedProducts");
      v11[54] = 28;
      std::string::basic_string[abi:ne200100]<0>(&v11[56], "art");
      v11[62] = 29;
      qword_280AC2AE0 = 0;
      qword_280AC2AD8 = 0;
      marrs::mrr::mr::MRREntity::SearchObjectTypeToEntityTypeMap = &qword_280AC2AD8;
      operator new();
    }

    v2 = marrs::mrr::mr::MRREntity::EntitySourceToStrMap;
    v0 = qword_280AC2B08;
  }
}

void sub_2227ABCA8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v11 = *(v9 - 9);
    v9 -= 4;
    if (v11 < 0)
    {
      operator delete(*v9);
    }

    if (v9 == &a9)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void *std::map<marrs::mrr::mr::EntityType,char const*>::map[abi:ne200100](void *result, int *a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = result + 1;
    while (1)
    {
      v6 = result + 1;
      if (v5 == result + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = result + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (*(v6 + 8) < *v3)
      {
LABEL_9:
        v11 = v4 ? v6 + 1 : result + 1;
      }

      else
      {
        v11 = result + 1;
        if (v4)
        {
          v11 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v4;
              v13 = *(v4 + 32);
              if (v10 >= v13)
              {
                break;
              }

              v4 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            if (v13 >= v10)
            {
              break;
            }

            v11 = v12 + 1;
            v4 = v12[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_13:
        operator new();
      }

      v3 += 4;
      if (v3 == &a2[4 * a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

BOOL std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void _GLOBAL__sub_I_MRREntityNLUGraphParsingUtil_mm()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = siri::ontology::oname::graph::ontology_init::common_EmailAddress(v0);
  v26[0] = *(v1 + 9);
  v2 = siri::ontology::oname::graph::ontology_init::common_PhoneNumber(v1);
  v26[1] = *(v2 + 9);
  v3 = siri::ontology::oname::graph::ontology_init::common_Uri(v2);
  v26[2] = *(v3 + 9);
  v4 = siri::ontology::oname::graph::ontology_init::common_LocalisedString(v3);
  v26[3] = *(v4 + 9);
  v5 = siri::ontology::oname::graph::ontology_init::common_Group(v4);
  v26[4] = *(v5 + 9);
  v6 = siri::ontology::oname::graph::ontology_init::common_Person(v5);
  v26[5] = *(v6 + 9);
  v7 = siri::ontology::oname::graph::ontology_init::common_MediaItem(v6);
  v26[6] = *(v7 + 9);
  v8 = siri::ontology::oname::graph::ontology_init::common_SearchObject(v7);
  v26[7] = *(v8 + 9);
  v9 = siri::ontology::oname::graph::ontology_init::common_UserEntity(v8);
  v26[8] = *(v9 + 9);
  v10 = siri::ontology::oname::graph::ontology_init::common_App(v9);
  v26[9] = *(v10 + 9);
  v11 = siri::ontology::oname::graph::ontology_init::common_Window(v10);
  v26[10] = *(v11 + 9);
  v12 = siri::ontology::oname::graph::ontology_init::common_Setting(v11);
  v13 = 0;
  v14 = 0;
  v26[11] = *(v12 + 36);
  qword_280AC2CC0 = 0;
  qword_280AC2CB8 = 0;
  v15 = &qword_280AC2CB8;
  marrs::mrr::mr::directValueEntityTypes = &qword_280AC2CB8;
  while (1)
  {
    if (v15 == &qword_280AC2CB8)
    {
      v17 = &qword_280AC2CB8;
    }

    else
    {
      v16 = v13;
      if (v13)
      {
        do
        {
          v17 = v16;
          v16 = v16[1];
        }

        while (v16);
      }

      else
      {
        v18 = &qword_280AC2CB8;
        do
        {
          v17 = v18[2];
          v19 = *v17 == v18;
          v18 = v17;
        }

        while (v19);
      }

      v20 = v26[v14];
      if (*(v17 + 7) >= v20)
      {
        if (v13)
        {
          v21 = &qword_280AC2CB8;
          while (1)
          {
            while (1)
            {
              v22 = v13;
              v23 = *(v13 + 28);
              if (v20 >= v23)
              {
                break;
              }

              v13 = *v22;
              v21 = v22;
              if (!*v22)
              {
                goto LABEL_14;
              }
            }

            if (v23 >= v20)
            {
              break;
            }

            v21 = v22 + 1;
            v13 = v22[1];
            if (!v13)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          v21 = &qword_280AC2CB8;
        }

        goto LABEL_13;
      }
    }

    v21 = v13 ? v17 + 1 : &qword_280AC2CB8;
LABEL_13:
    if (!*v21)
    {
LABEL_14:
      operator new();
    }

    if (++v14 == 12)
    {
      break;
    }

    v15 = marrs::mrr::mr::directValueEntityTypes;
    v13 = qword_280AC2CB8;
  }

  __cxa_atexit(std::set<int>::~set[abi:ne200100], &marrs::mrr::mr::directValueEntityTypes, &dword_2227A9000);
  std::string::basic_string[abi:ne200100](&marrs::mrr::mr::homeKitEntityTypeString, [*MEMORY[0x277D5F528] UTF8String], objc_msgSend(*MEMORY[0x277D5F528], "lengthOfBytesUsingEncoding:", 4));
  v24 = MEMORY[0x277D82640];
  __cxa_atexit(MEMORY[0x277D82640], &marrs::mrr::mr::homeKitEntityTypeString, &dword_2227A9000);
  std::string::basic_string[abi:ne200100](&marrs::mrr::mr::homeAutomationRoomString, [*MEMORY[0x277D5F578] UTF8String], objc_msgSend(*MEMORY[0x277D5F578], "lengthOfBytesUsingEncoding:", 4));
  __cxa_atexit(v24, &marrs::mrr::mr::homeAutomationRoomString, &dword_2227A9000);
  std::string::basic_string[abi:ne200100](&marrs::mrr::mr::homeAutomationAccessoryNameString, [*MEMORY[0x277D5F570] UTF8String], objc_msgSend(*MEMORY[0x277D5F570], "lengthOfBytesUsingEncoding:", 4));
  __cxa_atexit(v24, &marrs::mrr::mr::homeAutomationAccessoryNameString, &dword_2227A9000);
  std::string::basic_string[abi:ne200100](&marrs::mrr::mr::homeAutomationServiceNameString, [*MEMORY[0x277D5F580] UTF8String], objc_msgSend(*MEMORY[0x277D5F580], "lengthOfBytesUsingEncoding:", 4));
  __cxa_atexit(v24, &marrs::mrr::mr::homeAutomationServiceNameString, &dword_2227A9000);
  v25 = *MEMORY[0x277D85DE8];

  objc_autoreleasePoolPop(v0);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void std::__tree<std::__value_type<marrs::mrr::mr::EntityType,float>,std::__map_value_compare<marrs::mrr::mr::EntityType,std::__value_type<marrs::mrr::mr::EntityType,float>,std::less<marrs::mrr::mr::EntityType>,true>,std::allocator<std::__value_type<marrs::mrr::mr::EntityType,float>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<marrs::mrr::mr::EntityType,float>,std::__map_value_compare<marrs::mrr::mr::EntityType,std::__value_type<marrs::mrr::mr::EntityType,float>,std::less<marrs::mrr::mr::EntityType>,true>,std::allocator<std::__value_type<marrs::mrr::mr::EntityType,float>>>::destroy(*a1);
    std::__tree<std::__value_type<marrs::mrr::mr::EntityType,float>,std::__map_value_compare<marrs::mrr::mr::EntityType,std::__value_type<marrs::mrr::mr::EntityType,float>,std::less<marrs::mrr::mr::EntityType>,true>,std::allocator<std::__value_type<marrs::mrr::mr::EntityType,float>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t std::__fs::filesystem::path::~path[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

id QRLoggerForCategory(int a1)
{
  if (QRLoggerForCategory::onceToken != -1)
  {
    dispatch_once(&QRLoggerForCategory::onceToken, &__block_literal_global_480);
  }

  v2 = QRLoggerForCategory::logObjects[a1];

  return v2;
}

id MRRLoggerForCategory(int a1)
{
  if (MRRLoggerForCategory::onceToken != -1)
  {
    dispatch_once(&MRRLoggerForCategory::onceToken, &__block_literal_global_1347);
  }

  v2 = MRRLoggerForCategory::logObjects[a1];

  return v2;
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x223DC2090](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

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

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    ++v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_2227ACB10(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2227ACAD0);
  }

  __cxa_rethrow();
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2)
{
  a1[21] = 0;
  v4 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v5 = *(MEMORY[0x277D82820] + 16);
  v6 = *(MEMORY[0x277D82820] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82898] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[15] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, 8);
  return a1;
}

void sub_2227ACCF0(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x223DC2270](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x223DC2220](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2227ACDC4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t RepetitionPredictorBase::readConfig(uint64_t a1, const void **a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v56.__loc_ = 0;
  v56.__vftable = &unk_2835DF150;
  v55.__sb_.__extbufnext_ = 0;
  std::ios_base::init(&v56, v55.__sb_.__extbuf_min_);
  v58 = -1;
  v57 = 0;
  MEMORY[0x223DC2070](v55.__sb_.__extbuf_min_);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  std::string::basic_string[abi:ne200100](&v35, v3 + 1);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v35;
  }

  else
  {
    v4 = v35.__r_.__value_.__r.__words[0];
  }

  if (v3)
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    memmove(v4, v5, v3);
  }

  *(&v4->__r_.__value_.__l.__data_ + v3) = 47;
  v6 = std::string::append(&v35, "uic.config");
  v8 = *&v6->__r_.__value_.__l.__data_;
  __s.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&__s.__r_.__value_.__l.__data_ = v8;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  std::fstream::open(&v55, &__s, v7);
  if (!*(&v55.__sb_.__st_._mbstateL + 9))
  {
    std::fstream::close(&v55);
    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "#Model failed to load config");
    std::string::basic_string[abi:ne200100]<0>(&buf, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(exception, &v35, &buf, "/Library/Caches/com.apple.xbs/Sources/Marrs/QueryRewrite.subproj/QueryRewrite/Common/Predictor/src/RepetitionPredictorBase.cpp", 20);
  }

  memset(&v43, 0, sizeof(v43));
  v9 = (&buf_4 + 4);
  v10 = &v48;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  memset(&__str, 0, sizeof(__str));
  v11 = &v35.__r_.__value_.__s.__data_[16];
  v34 = *MEMORY[0x277D82820];
  v33 = *(MEMORY[0x277D82820] + 24);
  while (1)
  {
    std::ios_base::getloc((&v55 + *(v55.__sb_.__extbuf_ - 3)));
    v12 = std::locale::use_facet(&v35, MEMORY[0x277D82680]);
    v13 = (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v35);
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v55, &v43, v13);
    if ((v55.__sb_.__extbuf_min_[*(v55.__sb_.__extbuf_ - 3) + 8] & 5) != 0)
    {
      break;
    }

    MEMORY[0x223DC2220](&v39);
    v45 = 0x4000;
    std::locale::locale(&v46, &v39);
    buf = v45;
    std::locale::locale(v9, &v46);
    boost::algorithm::trim_right_if<std::string,boost::algorithm::detail::is_classifiedF>(&v43, &buf);
    std::locale::~locale(v9);
    LODWORD(v47) = v45;
    std::locale::locale(v10, &v46);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v43;
    }

    else
    {
      v14 = v43.__r_.__value_.__r.__words[0];
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v43.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v43.__r_.__value_.__l.__size_;
    }

    LODWORD(v35.__r_.__value_.__l.__data_) = v47;
    std::locale::locale(&v35.__r_.__value_.__r.__words[1], v10);
    if (size)
    {
      v16 = v10;
      v17 = v9;
      v18 = v11;
      v19 = (v14 + size);
      v20 = v14;
      while (1)
      {
        v21 = v20->__r_.__value_.__s.__data_[0];
        v22 = std::locale::use_facet(&v35.__r_.__value_.__r.__words[1], MEMORY[0x277D82680]);
        if ((v21 & 0x80) != 0 || (*(&v22[1].~facet + v21) & v35.__r_.__value_.__l.__data_) == 0)
        {
          break;
        }

        v20 = (v20 + 1);
        if (!--size)
        {
          v20 = v19;
          break;
        }
      }

      v11 = v18;
      v9 = v17;
      v10 = v16;
    }

    else
    {
      v20 = v14;
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v43;
    }

    else
    {
      v23 = v43.__r_.__value_.__r.__words[0];
    }

    std::string::erase(&v43, v14 - v23, v20 - v14);
    std::locale::~locale(&v35.__r_.__value_.__r.__words[1]);
    std::locale::~locale(v10);
    std::locale::~locale(&v46);
    std::locale::~locale(&v39);
    v24 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v43.__r_.__value_.__l.__size_;
    }

    if (v24)
    {
      std::istringstream::basic_istringstream[abi:ne200100](&v35, &v43);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v35, v41);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v35, &__str);
      if ((*(&v36[1].__locale_ + *(v35.__r_.__value_.__r.__words[0] - 24)) & 5) == 0)
      {
        v25 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1 + 160, &v47, v41);
        if (!v25)
        {
          operator new();
        }

        std::string::operator=((v25 + 56), &__str);
        v26 = QRLoggerForCategory(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = v41;
          if (v42 < 0)
          {
            v27 = v41[0];
          }

          p_str = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          buf = 136315650;
          buf_4 = "readConfig";
          v51 = 2080;
          v52 = v27;
          v53 = 2080;
          v54 = p_str;
          _os_log_impl(&dword_2227A9000, v26, OS_LOG_TYPE_INFO, "%s #Model config: %s : %s", &buf, 0x20u);
        }
      }

      v35.__r_.__value_.__r.__words[0] = v34;
      *(v35.__r_.__value_.__r.__words + *(v34 - 24)) = v33;
      v35.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
      if (v37 < 0)
      {
        operator delete(v36[7].__locale_);
      }

      v35.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v36);
      std::istream::~istream();
      MEMORY[0x223DC2270](&v38);
    }
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((&v55 + *(v55.__sb_.__extbuf_ - 3)), *&v55.__sb_.__extbuf_min_[*(v55.__sb_.__extbuf_ - 3) + 8] | 4);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  MEMORY[0x223DC2080](v55.__sb_.__extbuf_min_);
  std::iostream::~basic_iostream();
  result = MEMORY[0x223DC2270](&v56);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2227AD618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::locale a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a26 < 0)
  {
    operator delete(a21);
    if ((v73 & 1) == 0)
    {
LABEL_8:
      if (a72 < 0)
      {
        operator delete(a68);
      }

      std::fstream::~fstream(&STACK[0x220]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v73)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v72);
  goto LABEL_8;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void std::fstream::open(std::fstream *this, const std::string *__s, std::ios_base::openmode __mode)
{
  if ((__s->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v4 = __s->__r_.__value_.__r.__words[0];
  }

  v5 = std::filebuf::open();
  v6 = (this + *(this->__sb_.__extbuf_ - 3));
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6->__rdstate_ | 4;
  }

  std::ios_base::clear(v6, v7);
}

void boost::algorithm::trim_right_if<std::string,boost::algorithm::detail::is_classifiedF>(std::string *a1, const std::locale *a2)
{
  v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  if (v3 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v6 = &v4[size];
  locale = a2->__locale_;
  std::locale::locale(&v15, a2 + 1);
  v16 = locale;
  std::locale::locale(&v17, &v15);
  v7 = MEMORY[0x277D82680];
  while (size)
  {
    v8 = size;
    v9 = v4[size - 1];
    v10 = std::locale::use_facet(&v17, v7);
    if ((v9 & 0x80) != 0)
    {
      v4 = v6;
      break;
    }

    --v6;
    v11 = *(&v10[1].~facet + v9);
    size = v8 - 1;
    if ((v11 & v16) == 0)
    {
      v4 += v8;
      break;
    }
  }

  std::locale::~locale(&v17);
  v12 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v12 & 0x80u) == 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = a1->__r_.__value_.__l.__size_;
  }

  std::string::erase(a1, v4 - v13, &v13[v12] - v4);
  std::locale::~locale(&v15);
}

std::string *std::__fs::filesystem::operator/[abi:ne200100](std::string *this, uint64_t a2, std::__fs::filesystem::path *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    *this = *a2;
  }

  if (std::__fs::filesystem::path::__root_directory(a3).__size_)
  {
    return std::string::operator=(this, &a3->__pn_);
  }

  if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

  v6 = SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__pn_.__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a3->__pn_.__r_.__value_.__l.__size_;
  }

  return std::string::append(this, v7, size);
}

void sub_2227ADA74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_2227ADAD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x223DC2090](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

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

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_2227ADD34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x2227ADCF4);
  }

  __cxa_rethrow();
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t std::map<std::string,std::string>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v16.__end_cap_.__value_ = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v5);
  }

  begin = (24 * v2);
  v16.__first_ = 0;
  v16.__begin_ = (24 * v2);
  value = 0;
  v16.__end_ = (24 * v2);
  v16.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v16.__begin_;
    end = v16.__end_;
    value = v16.__end_cap_.__value_;
  }

  else
  {
    v8 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v8;
    end = (24 * v2);
  }

  v10 = end + 1;
  v11 = *(a1 + 8) - *a1;
  v12 = begin - v11;
  memcpy(begin - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = value;
  v16.__end_ = v13;
  v16.__end_cap_.__value_ = v14;
  v16.__first_ = v13;
  v16.__begin_ = v13;
  std::__split_buffer<std::string>::~__split_buffer(&v16);
  return v10;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

void *std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

BOOL SymbolMapper::set(int8x8_t *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[5];
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

  v10 = *(*&a1[4] + 8 * v9);
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

  result = std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void RepetitionPredictorBase::loadCostMatrix(int8x8_t *a1, const void **a2)
{
  v148 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "cost_matrix_file");
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&a1[20], &__p);
  if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
  {
    operator delete(__p.__sb_.__extbuf_);
  }

  if (&a1[21] == v4)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "#Model No cost matrix file specified");
    std::string::basic_string[abi:ne200100]<0>(v125, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(exception, &__p, v125, "/Library/Caches/com.apple.xbs/Sources/Marrs/QueryRewrite.subproj/QueryRewrite/Common/Predictor/src/RepetitionPredictorBase.cpp", 62);
  }

  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  std::string::basic_string[abi:ne200100](&__p, v5 + 1);
  if (SHIBYTE(__p.__sb_.__extbufend_) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__sb_.__extbuf_;
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

    memmove(p_p, v7, v5);
  }

  *&p_p[v5] = 47;
  std::string::basic_string[abi:ne200100]<0>(v125, "cost_matrix_file");
  v8 = std::map<std::string,std::string>::at(&a1[20], &v125[0].__locale_);
  v9 = *(v8 + 23);
  if (v9 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = *v8;
  }

  if (v9 >= 0)
  {
    v11 = *(v8 + 23);
  }

  else
  {
    v11 = *(v8 + 8);
  }

  v12 = std::string::append(&__p, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  __s.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&__s.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v126) < 0)
  {
    operator delete(v125[0].__locale_);
  }

  if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
  {
    operator delete(__p.__sb_.__extbuf_);
  }

  *v141 = 0u;
  *v142 = 0u;
  v143 = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(&v139, "");
  v145.__loc_ = 0;
  __p.__sb_.__extbuf_ = &unk_2835DF128;
  v145.__vftable = &unk_2835DF150;
  __p.__sb_.__extbufnext_ = 0;
  std::ios_base::init(&v145, __p.__sb_.__extbuf_min_);
  v147 = -1;
  v146 = 0;
  MEMORY[0x223DC2070](__p.__sb_.__extbuf_min_);
  if (a1[4])
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::__deallocate_node(*&a1[3]);
    a1[3] = 0;
    v15 = a1[2];
    if (v15)
    {
      v16 = 0;
      do
      {
        *(*&a1[1] + 8 * v16++) = 0;
      }

      while (*&v15 != v16);
    }

    a1[4] = 0;
  }

  if (a1[18])
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(*&a1[17]);
    a1[17] = 0;
    v17 = a1[16];
    if (v17)
    {
      v18 = 0;
      do
      {
        *(*&a1[15] + 8 * v18++) = 0;
      }

      while (*&v17 != v18);
    }

    a1[18] = 0;
  }

  std::fstream::open(&__p, &__s, v14);
  if (!*(&__p.__sb_.__st_._mbstateL + 9))
  {
    if (!std::filebuf::close())
    {
      std::ios_base::clear((&__p + *(__p.__sb_.__extbuf_ - 3)), *&__p.__sb_.__extbuf_min_[*(__p.__sb_.__extbuf_ - 3) + 8] | 4);
    }

    goto LABEL_204;
  }

  v19 = 0;
  memset(&v138, 0, sizeof(v138));
  v136[1] = 0;
  v136[0] = 0;
  v137 = 0;
  v134[1] = 0;
  v134[0] = 0;
  v135 = 0;
  v132[0] = 0;
  v132[1] = 0;
  v133 = 0;
  v131 = 0;
  v20 = *(MEMORY[0x277D82820] + 24);
  v115 = v20;
  v116 = *MEMORY[0x277D82820];
  v118 = a1;
LABEL_37:
  std::ios_base::getloc((&__p + *(__p.__sb_.__extbuf_ - 3)));
  v21 = std::locale::use_facet(v125, MEMORY[0x277D82680]);
  v22 = (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(v125);
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &v138, v22);
  if ((__p.__sb_.__extbuf_min_[*(__p.__sb_.__extbuf_ - 3) + 8] & 5) == 0)
  {
    std::istringstream::basic_istringstream[abi:ne200100](v125, &v138);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v125, v136);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v125, v136);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v125, v134);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v125, v132);
    v23 = MEMORY[0x223DC20B0](v125, &v131);
    if ((*(v23 + *(*v23 - 24) + 32) & 5) != 0)
    {
      goto LABEL_97;
    }

    if (!std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(&a1[15], v134))
    {
      SymbolMapper::set(a1 + 11, v134);
      v19 = (v19 + 1);
    }

    if (!std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(&a1[15], v132))
    {
      SymbolMapper::set(a1 + 11, v132);
      v19 = (v19 + 1);
    }

    v24 = v131;
    v25 = SymbolMapper::mapPhone(&a1[11], v134);
    std::to_string(&v123, v25);
    v26 = std::string::append(&v123, ",");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v124.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v124.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = SymbolMapper::mapPhone(&a1[11], v132);
    std::to_string(&v122, v28);
    v29 = v19;
    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v122;
    }

    else
    {
      v30 = v122.__r_.__value_.__r.__words[0];
    }

    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v122.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v122.__r_.__value_.__l.__size_;
    }

    v32 = std::string::append(&v124, v30, size);
    *v120 = *v32;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v33 = std::__string_hash<char>::operator()[abi:ne200100](v120);
    v34 = v33;
    v35 = v141[1];
    if (!v141[1])
    {
      goto LABEL_65;
    }

    v36 = vcnt_s8(v141[1]);
    v36.i16[0] = vaddlv_u8(v36);
    v37 = v36.u32[0];
    if (v36.u32[0] > 1uLL)
    {
      v38 = v33;
      if (v33 >= v141[1])
      {
        v38 = v33 % v141[1];
      }
    }

    else
    {
      v38 = (v141[1] - 1) & v33;
    }

    v39 = *(v141[0] + v38);
    if (!v39 || (v40 = *v39) == 0)
    {
LABEL_65:
      operator new();
    }

    while (1)
    {
      v41 = v40[1];
      if (v41 == v34)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v40 + 2, v120))
        {
          v59 = v120[23];
          *(v40 + 10) = v24;
          if (v59 < 0)
          {
            operator delete(*v120);
          }

          if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v122.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v123.__r_.__value_.__l.__data_);
          }

          v42 = std::__string_hash<char>::operator()[abi:ne200100](v134);
          v43 = v118[7];
          if (v43)
          {
            v44 = v42;
            v45 = vcnt_s8(v43);
            v45.i16[0] = vaddlv_u8(v45);
            v46 = v45.u32[0];
            if (v45.u32[0] > 1uLL)
            {
              v47 = v42;
              v48 = v118;
              if (v42 >= *&v43)
              {
                v47 = v42 % *&v43;
              }
            }

            else
            {
              v47 = (*&v43 - 1) & v42;
              v48 = v118;
            }

            v49 = *(*&v48[6] + 8 * v47);
            if (v49)
            {
              v50 = *v49;
              if (*v49)
              {
                do
                {
                  v51 = v50[1];
                  if (v51 == v44)
                  {
                    if (std::equal_to<std::string>::operator()[abi:ne200100](v50 + 2, v134))
                    {
                      goto LABEL_96;
                    }
                  }

                  else
                  {
                    if (v46 > 1)
                    {
                      if (v51 >= *&v43)
                      {
                        v51 %= *&v43;
                      }
                    }

                    else
                    {
                      v51 &= *&v43 - 1;
                    }

                    if (v51 != v47)
                    {
                      break;
                    }
                  }

                  v50 = *v50;
                }

                while (v50);
              }
            }
          }

          memset(v120, 0, sizeof(v120));
          v121 = 1065353216;
          v124.__r_.__value_.__r.__words[0] = v134;
          v52 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v118[6], v134);
          v53 = v52;
          if (v52[8])
          {
            std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(v52[7]);
            v53[7] = 0;
            v54 = v53[6];
            if (v54)
            {
              for (i = 0; i != v54; ++i)
              {
                *(v53[5] + 8 * i) = 0;
              }
            }

            v53[8] = 0;
          }

          *v120 = 0;
          v56 = v53[5];
          v53[5] = 0;
          if (v56)
          {
            operator delete(v56);
          }

          v53[6] = 0;
          v53[7] = 0;
          v53[8] = 0;
          *(v53 + 18) = 1065353216;
          std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(0);
LABEL_96:
          v57 = v131;
          *v120 = v134;
          a1 = v118;
          v58 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v118[6], v134);
          v19 = v29;
          *v120 = v132;
          *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v58 + 5, v132) + 10) = v57;
LABEL_97:
          v125[0].__locale_ = v116;
          *(&v125[0].__locale_ + *(v116 - 3)) = v115;
          *&v126 = MEMORY[0x277D82878] + 16;
          if (v129 < 0)
          {
            operator delete(v128);
          }

          *&v126 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&v126 + 1);
          std::istream::~istream();
          MEMORY[0x223DC2270](&v130);
          goto LABEL_37;
        }
      }

      else
      {
        if (v37 > 1)
        {
          if (v41 >= v35)
          {
            v41 %= v35;
          }
        }

        else
        {
          v41 &= v35 - 1;
        }

        if (v41 != v38)
        {
          goto LABEL_65;
        }
      }

      v40 = *v40;
      if (!v40)
      {
        goto LABEL_65;
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v125, "<eps>");
  std::string::operator=(&a1[11], v125);
  v60 = std::__string_hash<char>::operator()[abi:ne200100](v125);
  v61 = a1[16];
  if (!*&v61)
  {
    goto LABEL_120;
  }

  v62 = v60;
  v63 = vcnt_s8(v61);
  v63.i16[0] = vaddlv_u8(v63);
  v64 = v63.u32[0];
  if (v63.u32[0] > 1uLL)
  {
    v65 = v60;
    if (v60 >= *&v61)
    {
      v65 = v60 % *&v61;
    }
  }

  else
  {
    v65 = (*&v61 - 1) & v60;
  }

  v66 = *(*&a1[15] + 8 * v65);
  if (!v66 || (v67 = *v66) == 0)
  {
LABEL_120:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  while (1)
  {
    v68 = v67[1];
    if (v68 == v62)
    {
      break;
    }

    if (v64 > 1)
    {
      if (v68 >= *&v61)
      {
        v68 %= *&v61;
      }
    }

    else
    {
      v68 &= *&v61 - 1;
    }

    if (v68 != v65)
    {
      goto LABEL_120;
    }

LABEL_119:
    v67 = *v67;
    if (!v67)
    {
      goto LABEL_120;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v67 + 2, v125))
  {
    goto LABEL_119;
  }

  a1[14].i32[0] = *(v67 + 10);
  if (SBYTE7(v126) < 0)
  {
    operator delete(v125[0].__locale_);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((&__p + *(__p.__sb_.__extbuf_ - 3)), *&__p.__sb_.__extbuf_min_[*(__p.__sb_.__extbuf_ - 3) + 8] | 4);
  }

  v117 = a1[18];
  if (v117.i32[0] >= 1)
  {
    v69 = 0;
    do
    {
      *&v125[0].__locale_ = 0u;
      v126 = 0u;
      v127 = 1065353216;
      LODWORD(v124.__r_.__value_.__l.__data_) = v69;
      *v120 = &v124;
      v70 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v118[1], v69);
      v71 = v70;
      if (v70[6])
      {
        v72 = v70[5];
        if (v72)
        {
          do
          {
            v73 = *v72;
            operator delete(v72);
            v72 = v73;
          }

          while (v73);
        }

        v71[5] = 0;
        v74 = v71[4];
        if (v74)
        {
          for (j = 0; j != v74; ++j)
          {
            *(v71[3] + 8 * j) = 0;
          }
        }

        v71[6] = 0;
      }

      locale = v125[0].__locale_;
      v125[0].__locale_ = 0;
      v77 = v71[3];
      v71[3] = locale;
      if (v77)
      {
        operator delete(v77);
      }

      v78 = v125[1].__locale_;
      v79 = v126;
      v71[5] = v126;
      v71[4] = v78;
      v125[1].__locale_ = 0;
      v80 = *(&v126 + 1);
      v71[6] = *(&v126 + 1);
      *(v71 + 14) = v127;
      if (v80)
      {
        v81 = *(v79 + 8);
        if ((v78 & (v78 - 1)) != 0)
        {
          if (v81 >= v78)
          {
            v81 %= v78;
          }
        }

        else
        {
          v81 &= v78 - 1;
        }

        *(v71[3] + 8 * v81) = v71 + 5;
        v126 = 0uLL;
      }

      std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::~__hash_table(v125);
      ++v69;
    }

    while (v69 != v117.i32[0]);
    v82 = 0;
    do
    {
      v83 = 0;
      do
      {
        std::to_string(&v124, v82);
        v84 = std::string::append(&v124, ",");
        v85 = *&v84->__r_.__value_.__l.__data_;
        *&v120[16] = *(&v84->__r_.__value_.__l + 2);
        *v120 = v85;
        v84->__r_.__value_.__l.__size_ = 0;
        v84->__r_.__value_.__r.__words[2] = 0;
        v84->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v123, v83);
        if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v86 = &v123;
        }

        else
        {
          v86 = v123.__r_.__value_.__r.__words[0];
        }

        if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v87 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v87 = v123.__r_.__value_.__l.__size_;
        }

        v88 = std::string::append(v120, v86, v87);
        *&v125[0].__locale_ = *&v88->__r_.__value_.__l.__data_;
        *&v126 = *(&v88->__r_.__value_.__l + 2);
        v88->__r_.__value_.__l.__size_ = 0;
        v88->__r_.__value_.__r.__words[2] = 0;
        v88->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
        }

        if ((v120[23] & 0x80000000) != 0)
        {
          operator delete(*v120);
        }

        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        v89 = std::__string_hash<char>::operator()[abi:ne200100](v125);
        v90 = v141[1];
        if (v141[1])
        {
          v91 = v89;
          v92 = vcnt_s8(v141[1]);
          v92.i16[0] = vaddlv_u8(v92);
          v93 = v92.u32[0];
          if (v92.u32[0] > 1uLL)
          {
            v94 = v89;
            if (v89 >= v141[1])
            {
              v94 = v89 % v141[1];
            }
          }

          else
          {
            v94 = (v141[1] - 1) & v89;
          }

          v95 = *(v141[0] + v94);
          if (v95)
          {
            v96 = *v95;
            if (*v95)
            {
              do
              {
                v97 = v96[1];
                if (v91 == v97)
                {
                  if (std::equal_to<std::string>::operator()[abi:ne200100](v96 + 2, v125))
                  {
                    v98 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(v141, v125);
                    if (!v98)
                    {
                      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                    }

                    v99 = *(v98 + 10);
                    LODWORD(v124.__r_.__value_.__l.__data_) = v82;
                    *v120 = &v124;
                    v100 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v118[1], v82);
                    v101 = v100[4];
                    if (!*&v101)
                    {
                      goto LABEL_191;
                    }

                    v102 = vcnt_s8(v101);
                    v102.i16[0] = vaddlv_u8(v102);
                    if (v102.u32[0] > 1uLL)
                    {
                      v103 = v83;
                      if (*&v101 <= v83)
                      {
                        v103 = v83 % v101.i32[0];
                      }
                    }

                    else
                    {
                      v103 = (*&v101 + 0x7FFFFFFFLL) & v83;
                    }

                    v104 = *(v100[3] + 8 * v103);
                    if (!v104 || (v105 = *v104) == 0)
                    {
LABEL_191:
                      operator new();
                    }

                    while (1)
                    {
                      v106 = v105[1];
                      if (v106 == v83)
                      {
                        if (v83 == *(v105 + 4))
                        {
                          *(v105 + 5) = v99;
                          goto LABEL_192;
                        }
                      }

                      else
                      {
                        if (v102.u32[0] > 1uLL)
                        {
                          if (v106 >= *&v101)
                          {
                            v106 %= *&v101;
                          }
                        }

                        else
                        {
                          v106 &= *&v101 - 1;
                        }

                        if (v106 != v103)
                        {
                          goto LABEL_191;
                        }
                      }

                      v105 = *v105;
                      if (!v105)
                      {
                        goto LABEL_191;
                      }
                    }
                  }
                }

                else
                {
                  if (v93 > 1)
                  {
                    if (v97 >= v90)
                    {
                      v97 %= v90;
                    }
                  }

                  else
                  {
                    v97 &= v90 - 1;
                  }

                  if (v97 != v94)
                  {
                    break;
                  }
                }

                v96 = *v96;
              }

              while (v96);
            }
          }
        }

LABEL_192:
        if (SBYTE7(v126) < 0)
        {
          operator delete(v125[0].__locale_);
        }

        ++v83;
      }

      while (v83 != (v117.i32[0] & 0x7FFFFFFF));
      ++v82;
    }

    while (v82 != v117.i32[0]);
  }

  if (SHIBYTE(v133) < 0)
  {
    operator delete(v132[0]);
  }

  if (SHIBYTE(v135) < 0)
  {
    operator delete(v134[0]);
  }

  if (SHIBYTE(v137) < 0)
  {
    operator delete(v136[0]);
  }

  a1 = v118;
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

LABEL_204:
  MEMORY[0x223DC2080](__p.__sb_.__extbuf_min_);
  std::iostream::~basic_iostream();
  MEMORY[0x223DC2270](&v145);
  if (v140 < 0)
  {
    operator delete(v139);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(v142[0]);
  v107 = v141[0];
  v141[0] = 0;
  if (v107)
  {
    operator delete(v107);
  }

  if (!*&a1[4] || !*&a1[18])
  {
    v113 = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "#Model Failed to load confMatrix file");
    std::string::basic_string[abi:ne200100]<0>(v125, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(v113, &__p, v125, "/Library/Caches/com.apple.xbs/Sources/Marrs/QueryRewrite.subproj/QueryRewrite/Common/Predictor/src/RepetitionPredictorBase.cpp", 68);
  }

  v108 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
  {
    v109 = a1[18];
    LODWORD(__p.__sb_.__extbuf_) = 136315394;
    *(&__p.__sb_.__extbuf_ + 4) = "loadCostMatrix";
    WORD2(__p.__sb_.__extbufnext_) = 2048;
    *(&__p.__sb_.__extbufnext_ + 6) = v109;
    _os_log_impl(&dword_2227A9000, v108, OS_LOG_TYPE_INFO, "%s #Model symbol map size: %zu", &__p, 0x16u);
  }

  v110 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
  {
    v111 = a1[4];
    LODWORD(__p.__sb_.__extbuf_) = 136315394;
    *(&__p.__sb_.__extbuf_ + 4) = "loadCostMatrix";
    WORD2(__p.__sb_.__extbufnext_) = 2048;
    *(&__p.__sb_.__extbufnext_ + 6) = v111;
    _os_log_impl(&dword_2227A9000, v110, OS_LOG_TYPE_INFO, "%s #Model cost_matrix size: %lu", &__p, 0x16u);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v112 = *MEMORY[0x277D85DE8];
}

void sub_2227AFB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
    if ((v43 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v42);
  goto LABEL_8;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
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

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t SymbolMapper::mapPhone(uint64_t a1, void *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 32), a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return *(v2 + 10);
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__rehash<true>(uint64_t a1, size_t __n)
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
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
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
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2227B09CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t marrs::mrr::mr::ModelBasedMR::ModelBasedMR(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v153 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2835DF560;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  *a1 = &unk_2835DF538;
  v106 = (a1 + 32);
  v109 = a1;
  std::__fs::filesystem::operator/[abi:ne200100](&v130, a2, &marrs::mrr::mr::configFileName);
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v152, v130.__r_.__value_.__l.__data_, v130.__r_.__value_.__l.__size_);
  }

  else
  {
    v152 = v130;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = SHIBYTE(v152.__r_.__value_.__r.__words[2]);
  v8 = v152.__r_.__value_.__r.__words[0];
  v9 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v7 >= 0)
  {
    v10 = &v152;
  }

  else
  {
    v10 = v8;
  }

  v113 = [v6 stringWithCString:v10 encoding:v9];
  v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithJSON:v113];
  memset(&__p, 0, sizeof(__p));
  memset(v134, 0, sizeof(v134));
  memset(&v141, 0, sizeof(v141));
  memset(v138, 0, sizeof(v138));
  memset(v136, 0, sizeof(v136));
  v116 = v11;
  v12 = [v11 objectForKey:@"version"];
  v13 = v12;
  std::string::basic_string[abi:ne200100]<0>(&__str, [v12 UTF8String]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = __str;
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;

  v111 = [v116 objectForKey:@"mrType"];
  v133 = [v111 isEqual:@"rule"] ^ 1;
  v14 = [v116 objectForKeyedSubscript:@"ruleConfig"];
  v15 = v14 == 0;

  if (!v15)
  {
    v16 = [v116 objectForKeyedSubscript:@"ruleConfig"];
    v17 = [v16 objectForKey:@"entityKeyWordPath"];
    v18 = v17;
    std::string::basic_string[abi:ne200100]<0>(&__str, [v17 UTF8String]);
    v19 = [v16 objectForKey:@"labelEmbeddingPath"];
    v20 = v19;
    std::string::basic_string[abi:ne200100]<0>(&v145, [v19 UTF8String]);
    v21 = [v16 objectForKeyedSubscript:@"cosineSimilarityThreshold"];
    [v21 floatValue];
    LODWORD(v146) = v22;
    v23 = [v16 objectForKeyedSubscript:@"scoreRelativeThreshold"];
    [v23 floatValue];
    HIDWORD(v146) = v24;
    v25 = [v16 objectForKey:@"owlEmbeddingsTaskId"];
    v26 = v25;
    std::string::basic_string[abi:ne200100]<0>(&v147, [v25 UTF8String]);

    std::string::operator=(v134, &__str);
    std::string::operator=(&v134[1], &v145);
    v135 = v146;
    std::string::operator=(v136, &v147);
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v27 = [v116 objectForKeyedSubscript:@"modelConfig"];
  v28 = v27 == 0;

  if (!v28)
  {
    v29 = [v116 objectForKeyedSubscript:@"modelConfig"];
    memset(v126, 0, 24);
    v30 = [v29 objectForKey:@"categoryEmbeddingFileName"];
    v31 = v30 == 0;

    if (v31)
    {
      MEMORY[0x223DC1FB0](v126, "embedded_cats_192.json");
    }

    else
    {
      v32 = [v29 objectForKey:@"categoryEmbeddingFileName"];
      v33 = v32;
      std::string::basic_string[abi:ne200100]<0>(&__str, [v32 UTF8String]);
      if ((v126[23] & 0x80000000) != 0)
      {
        operator delete(*v126);
      }

      *v126 = __str;
      *(&__str.__r_.__value_.__s + 23) = 0;
      __str.__r_.__value_.__s.__data_[0] = 0;
    }

    v34 = [v29 objectForKey:@"owlEmbeddingDim"];
    v35 = v34 == 0;

    if (v35)
    {
      v37 = 192;
    }

    else
    {
      v36 = [v29 objectForKeyedSubscript:@"owlEmbeddingDim"];
      v37 = [v36 longValue];
    }

    v38 = [v29 objectForKey:@"scoreAbsoluteThreshold"];
    v39 = v38 == 0;

    if (v39)
    {
      [v29 objectForKeyedSubscript:@"scoreRelativeThreshold"];
    }

    else
    {
      [v29 objectForKeyedSubscript:@"scoreAbsoluteThreshold"];
    }
    v40 = ;
    [v40 floatValue];
    v42 = v41;

    v43 = [v29 objectForKey:@"useVisibleText"];
    LOBYTE(v40) = v43 == 0;

    if (v40)
    {
      goto LABEL_36;
    }

    v44 = [v29 objectForKey:@"useVisibleText"];
    v45 = v44;
    std::string::basic_string[abi:ne200100]<0>(&__str, [v44 UTF8String]);

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v46 = __str.__r_.__value_.__l.__size_ == 4 && *__str.__r_.__value_.__l.__data_ == 1702195796;
      operator delete(__str.__r_.__value_.__l.__data_);
      goto LABEL_41;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) != 4)
    {
LABEL_36:
      v46 = 0;
    }

    else
    {
      v46 = LODWORD(__str.__r_.__value_.__l.__data_) == 1702195796;
    }

LABEL_41:
    memset(&v131, 0, sizeof(v131));
    v47 = [v29 objectForKey:@"visTextMatchFileName"];
    v48 = v47 == 0;

    if (v48)
    {
      MEMORY[0x223DC1FB0](&v131, "");
    }

    else
    {
      v49 = [v29 objectForKey:@"visTextMatchFileName"];
      v50 = v49;
      std::string::basic_string[abi:ne200100]<0>(&__str, [v49 UTF8String]);
      if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v131.__r_.__value_.__l.__data_);
      }

      v131 = __str;
      *(&__str.__r_.__value_.__s + 23) = 0;
      __str.__r_.__value_.__s.__data_[0] = 0;
    }

    v51 = [v29 objectForKey:@"withinEntityScoreMargin"];
    v52 = v51 == 0;

    if (v52)
    {
      v55 = 0;
    }

    else
    {
      v53 = [v29 objectForKeyedSubscript:@"withinEntityScoreMargin"];
      [v53 floatValue];
      v55 = v54;
    }

    v56 = [v29 objectForKey:@"boltTaskId"];
    v57 = v56;
    std::string::basic_string[abi:ne200100]<0>(&__str, [v56 UTF8String]);
    LODWORD(v145.__r_.__value_.__l.__data_) = v42;
    v58 = [v29 objectForKey:@"owlEmbeddingsTaskId"];
    v59 = v58;
    std::string::basic_string[abi:ne200100]<0>(&v145.__r_.__value_.__s.__data_[8], [v58 UTF8String]);
    if ((v126[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v147, *v126, *&v126[8]);
    }

    else
    {
      v147 = *v126;
    }

    v148 = v37;
    v149 = v46;
    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v150, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
    }

    else
    {
      v150 = v131;
    }

    v151 = v55;

    std::string::operator=(&v136[1], &__str);
    data = v145.__r_.__value_.__l.__data_;
    std::string::operator=(v138, &v145.__r_.__value_.__r.__words[1]);
    std::string::operator=(&v138[1], &v147);
    v139 = v148;
    v140 = v149;
    std::string::operator=(&v141, &v150);
    v142 = v151;
    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v150.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__size_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v131.__r_.__value_.__l.__data_);
    }

    if ((v126[23] & 0x80000000) != 0)
    {
      operator delete(*v126);
    }
  }

  *v106 = v136[1];
  *&v136[1].__r_.__value_.__l.__data_ = 0uLL;
  *(v109 + 56) = data;
  *(v109 + 64) = v138[0];
  memset(v138, 0, 24);
  *(v109 + 88) = *&v138[1].__r_.__value_.__l.__data_;
  v136[1].__r_.__value_.__r.__words[2] = 0;
  v138[1].__r_.__value_.__r.__words[0] = 0;
  *(v109 + 120) = v140;
  v60 = v138[1].__r_.__value_.__r.__words[2];
  v61 = v139;
  *&v138[1].__r_.__value_.__r.__words[1] = 0uLL;
  *(v109 + 104) = v60;
  *(v109 + 112) = v61;
  v62 = *&v141.__r_.__value_.__l.__data_;
  *(v109 + 144) = *(&v141.__r_.__value_.__l + 2);
  *(v109 + 128) = v62;
  memset(&v141, 0, sizeof(v141));
  *(v109 + 152) = v142;
  MRConfig::~MRConfig(&__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  *(v109 + 216) = 0;
  *(v109 + 208) = v109 + 216;
  *(v109 + 168) = 0;
  *(v109 + 160) = v109 + 168;
  v103 = (v109 + 160);
  *(v109 + 192) = 0;
  *(v109 + 176) = 0;
  *(v109 + 184) = v109 + 192;
  v104 = (v109 + 184);
  *(v109 + 200) = 0;
  v107 = (v109 + 208);
  *(v109 + 224) = 0;
  std::__fs::filesystem::operator/[abi:ne200100](&__str, a2, &marrs::mrr::mr::ModelBasedMR::assetSubDirectoryPath);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, &__str, &marrs::mrr::mr::ModelBasedMR::modelFolderName);
  std::__fs::filesystem::operator/[abi:ne200100](&v131, &__p, &marrs::mrr::mr::ModelBasedMR::modelName);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v126, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
  }

  else
  {
    *v126 = v131;
  }

  std::__fs::filesystem::operator/[abi:ne200100](&__p, a2, &marrs::mrr::mr::ModelBasedMR::assetSubDirectoryPath);
  std::__fs::filesystem::operator/[abi:ne200100](&v152, &__p, &marrs::mrr::mr::ModelBasedMR::modelFolderName);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v152.__r_.__value_.__l.__data_, v152.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v152;
  }

  marrs::inference_engine::EspressoModule::EspressoModule(v109 + 232, v126, 32);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  if ((v126[23] & 0x80000000) != 0)
  {
    operator delete(*v126);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  *(v109 + 280) = 0;
  *(v109 + 288) = 0;
  *(v109 + 272) = v109 + 280;
  std::__fs::filesystem::operator/[abi:ne200100](&__str, a2, &marrs::mrr::mr::configFileName);
  std::ifstream::basic_ifstream(&__p);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&v125, *(&v134[0].__r_.__value_.__r.__words[1] + *(__p.__r_.__value_.__r.__words[0] - 24)));
  v63 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
  {
    v64 = &v125;
    if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v64 = v125.__r_.__value_.__r.__words[0];
    }

    LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
    *(__str.__r_.__value_.__r.__words + 4) = v64;
    _os_log_impl(&dword_2227A9000, v63, OS_LOG_TYPE_INFO, "Loaded MR Config - %s", &__str, 0xCu);
  }

  if (*(v109 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&v124, *(v109 + 88), *(v109 + 96));
  }

  else
  {
    v124 = *(v109 + 88);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, *a2, *(a2 + 8));
  }

  else
  {
    v123 = *a2;
  }

  std::__fs::filesystem::operator/[abi:ne200100](v126, &v123, &marrs::mrr::mr::ModelBasedMR::assetSubDirectoryPath);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v131, &v124);
  std::__fs::filesystem::operator/[abi:ne200100](&__str, v126, &v131);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v122, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v122 = __str;
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if ((v126[23] & 0x80000000) != 0)
  {
    operator delete(*v126);
  }

  if (*(v109 + 151) < 0)
  {
    std::string::__init_copy_ctor_external(&v121, *(v109 + 128), *(v109 + 136));
  }

  else
  {
    v121 = *(v109 + 128);
  }

  std::__fs::filesystem::operator/[abi:ne200100](v126, &v123, &marrs::mrr::mr::ModelBasedMR::assetSubDirectoryPath);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v131, &v121);
  std::__fs::filesystem::operator/[abi:ne200100](&__str, v126, &v131);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v120, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v120 = __str;
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if ((v126[23] & 0x80000000) != 0)
  {
    operator delete(*v126);
  }

  v65 = MEMORY[0x277CCACA8];
  v66 = SHIBYTE(v122.__r_.__value_.__r.__words[2]);
  v67 = v122.__r_.__value_.__r.__words[0];
  v68 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v66 >= 0)
  {
    v69 = &v122;
  }

  else
  {
    v69 = v67;
  }

  v108 = [v65 stringWithCString:v69 encoding:v68];
  v105 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v105 fileExistsAtPath:v108] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x223DC1F20](exception, &__str);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v114 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithJSON:v108];
  v70 = [v114 allKeys];
  *&v152.__r_.__value_.__r.__words[1] = 0uLL;
  v152.__r_.__value_.__r.__words[0] = &v152.__r_.__value_.__l.__size_;
  memset(v126, 0, sizeof(v126));
  v127 = 0u;
  v128 = 0u;
  obj = v70;
  v71 = [obj countByEnumeratingWithState:v126 objects:&__str count:16];
  if (v71)
  {
    v112 = **&v126[16];
    do
    {
      for (i = 0; i != v71; ++i)
      {
        if (**&v126[16] != v112)
        {
          objc_enumerationMutation(obj);
        }

        v73 = *(*&v126[8] + 8 * i);
        v74 = [v114 objectForKey:v73];
        if ([v74 count])
        {
          [v74 objectAtIndex:0];
          [objc_claimAutoreleasedReturnValue() floatValue];
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(1uLL);
        }

        v75 = v73;
        std::string::basic_string[abi:ne200100]<0>(&v130, [v73 UTF8String]);
        v76 = *std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::__find_equal<std::string>(&v152, &v129, &v130);
        if (!v76)
        {
          operator new();
        }

        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v76 + 56), 0, 0, 0);
        if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v130.__r_.__value_.__l.__data_);
        }
      }

      v71 = [obj countByEnumeratingWithState:v126 objects:&__str count:16];
    }

    while (v71);
  }

  v119[0] = 0;
  v119[1] = 0;
  v118 = v119;
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<float>>,std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *> *,long>>(&v118, v152.__r_.__value_.__l.__data_, &v152.__r_.__value_.__l.__size_);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v152.__r_.__value_.__l.__size_);

  if ((v109 + 272) != &v118)
  {
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<float>>,std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *> *,long>>((v109 + 272), v118, v119);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v119[0]);
  if (*(v109 + 120))
  {
    v77 = MEMORY[0x277CCACA8];
    v78 = SHIBYTE(v120.__r_.__value_.__r.__words[2]);
    v79 = v120.__r_.__value_.__r.__words[0];
    v80 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v78 >= 0)
    {
      v81 = &v120;
    }

    else
    {
      v81 = v79;
    }

    v82 = [v77 stringWithCString:v81 encoding:v80];
    v115 = v82;
    v117 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v117 fileExistsAtPath:v82] & 1) == 0)
    {
      v102 = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      MEMORY[0x223DC1F20](v102, v126);
      __cxa_throw(v102, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v83 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithJSON:v82];
    v84 = v83;
    v85 = [v83 objectForKey:@"start"];
    v86 = 0;
    *&v126[8] = 0uLL;
    *v126 = &v126[8];
    while (v86 < [v85 count])
    {
      v87 = [v85 objectAtIndexedSubscript:v86];
      v88 = v87;
      std::string::basic_string[abi:ne200100]<0>(&v131, [v87 UTF8String]);

      std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v126, &v131);
      v83 = v84;
      if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v131.__r_.__value_.__l.__data_);
      }

      ++v86;
    }

    v89 = [v83 objectForKey:@"end"];
    v90 = 0;
    *&v131.__r_.__value_.__r.__words[1] = 0uLL;
    v131.__r_.__value_.__r.__words[0] = &v131.__r_.__value_.__l.__size_;
    while (v90 < [v89 count])
    {
      v91 = [v89 objectAtIndexedSubscript:v90];
      v92 = v91;
      std::string::basic_string[abi:ne200100]<0>(&v152, [v91 UTF8String]);

      std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v131, &v152);
      v83 = v84;
      if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v152.__r_.__value_.__l.__data_);
      }

      ++v90;
    }

    v93 = [v83 objectForKey:@"stopwords"];
    v94 = 0;
    *&v152.__r_.__value_.__r.__words[1] = 0uLL;
    v152.__r_.__value_.__r.__words[0] = &v152.__r_.__value_.__l.__size_;
    while (v94 < [v93 count])
    {
      v95 = [v93 objectAtIndexedSubscript:v94];
      v96 = v95;
      std::string::basic_string[abi:ne200100]<0>(&v130, [v95 UTF8String]);

      std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v152, &v130);
      if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v130.__r_.__value_.__l.__data_);
      }

      ++v94;
    }

    *&__str.__r_.__value_.__r.__words[1] = 0uLL;
    __str.__r_.__value_.__r.__words[0] = &__str.__r_.__value_.__l.__size_;
    *&v145.__r_.__value_.__r.__words[1] = 0uLL;
    v145.__r_.__value_.__r.__words[0] = &v145.__r_.__value_.__l.__size_;
    *&v147.__r_.__value_.__l.__data_ = 0uLL;
    v146 = &v147;
    std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(&__str, *v126, &v126[8]);
    std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(&v145, v131.__r_.__value_.__l.__data_, &v131.__r_.__value_.__l.__size_);
    std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(&v146, v152.__r_.__value_.__l.__data_, &v152.__r_.__value_.__l.__size_);
    std::__tree<std::string>::destroy(v152.__r_.__value_.__l.__size_);

    std::__tree<std::string>::destroy(v131.__r_.__value_.__l.__size_);
    std::__tree<std::string>::destroy(*&v126[8]);

    if (v103 != &__str)
    {
      std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v103, __str.__r_.__value_.__l.__data_, &__str.__r_.__value_.__l.__size_);
    }

    if (v104 != &v145)
    {
      std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v104, v145.__r_.__value_.__l.__data_, &v145.__r_.__value_.__l.__size_);
    }

    if (v107 != &v146)
    {
      std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v107, v146, &v147);
    }

    std::__tree<std::string>::destroy(v147.__r_.__value_.__l.__data_);
    std::__tree<std::string>::destroy(v145.__r_.__value_.__l.__size_);
    std::__tree<std::string>::destroy(__str.__r_.__value_.__l.__size_);
    v97 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      v98 = *(v109 + 176);
      LODWORD(__str.__r_.__value_.__l.__data_) = 134217984;
      *(__str.__r_.__value_.__r.__words + 4) = v98;
      _os_log_impl(&dword_2227A9000, v97, OS_LOG_TYPE_INFO, "start words used size = %lu", &__str, 0xCu);
    }
  }

  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x223DC2080](&__p.__r_.__value_.__r.__words[2]);
  std::istream::~istream();
  MEMORY[0x223DC2270](&v143);
  v99 = *MEMORY[0x277D85DE8];
  return v109;
}

void sub_2227B2094(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, char **a11, char **a12, char **a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
    if ((v75 & 1) == 0)
    {
LABEL_6:

      if (a2 == 2)
      {
        exception_ptr = __cxa_get_exception_ptr(a1);
        MEMORY[0x223DC1F30](&a73, exception_ptr);
        __cxa_begin_catch(a1);
        v79 = MRRLoggerForCategory(2);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          LODWORD(STACK[0x420]) = 136315138;
          STACK[0x424] = "Error parsing visible text matching keywrods json";
          _os_log_impl(&dword_2227A9000, v79, OS_LOG_TYPE_ERROR, "ConfigLoadingError - %s", &STACK[0x420], 0xCu);
        }

        exception = __cxa_allocate_exception(0x30uLL);
        std::string::basic_string[abi:ne200100]<0>(&STACK[0x420], "Error parsing visible text matching keywrods json");
        std::string::basic_string[abi:ne200100]<0>(&__p, "MultimodalReferenceResolution");
        ConfigLoadingError::ConfigLoadingError(exception, &STACK[0x420], &__p, "/Library/Caches/com.apple.xbs/Sources/Marrs/MultimodalReferenceResolution.subproj/MultimodalReferenceResolution/MentionResolver/ModelBasedMR/ModelBasedMR.cpp", 64);
      }

      if (a2 == 1)
      {
        __cxa_get_exception_ptr(a1);
        a73 = (MEMORY[0x277D82920] + 16);
        __cxa_begin_catch(a1);
        v81 = MRRLoggerForCategory(2);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          LODWORD(STACK[0x420]) = 136315138;
          STACK[0x424] = "Unknown exception thrown during loading of visible text matching keywords";
          _os_log_impl(&dword_2227A9000, v81, OS_LOG_TYPE_ERROR, "ConfigLoadingError - %s", &STACK[0x420], 0xCu);
        }

        v82 = __cxa_allocate_exception(0x30uLL);
        std::string::basic_string[abi:ne200100]<0>(&STACK[0x420], "Unknown exception thrown during loading of visible text matching keywords");
        std::string::basic_string[abi:ne200100]<0>(&__p, "MultimodalReferenceResolution");
        ConfigLoadingError::ConfigLoadingError(v82, &STACK[0x420], &__p, "/Library/Caches/com.apple.xbs/Sources/Marrs/MultimodalReferenceResolution.subproj/MultimodalReferenceResolution/MentionResolver/ModelBasedMR/ModelBasedMR.cpp", 67);
      }

      if (a36 < 0)
      {
        operator delete(a31);
      }

      if (a43 < 0)
      {
        operator delete(a38);
      }

      if (a50 < 0)
      {
        operator delete(a45);
      }

      if (a57 < 0)
      {
        operator delete(a52);
      }

      if (a64 < 0)
      {
        operator delete(a59);
      }

      if (a70 < 0)
      {
        operator delete(a65);
      }

      std::ifstream::~ifstream(&a74);
      MEMORY[0x223DC2270](&STACK[0x388]);
      std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*a10);
      marrs::inference_engine::EspressoModule::~EspressoModule((a21 + 24));
      std::__tree<std::string>::destroy(*a12);
      std::__tree<std::string>::destroy(*a11);
      std::__tree<std::string>::destroy(*a13);
      MRModelConfig::~MRModelConfig(a20);
      *a23 = a14;
      if (*(a23 + 31) < 0)
      {
        operator delete(*a15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v75)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v74);
  goto LABEL_6;
}

void sub_2227B2868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, char **a11, char **a12, char **a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a73 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
    if ((v76 & 1) == 0)
    {
LABEL_8:
      std::exception::~exception(&a74);
      __cxa_end_catch();
      if (a36 < 0)
      {
        operator delete(a31);
      }

      if (a43 < 0)
      {
        operator delete(a38);
      }

      if (a50 < 0)
      {
        operator delete(a45);
      }

      if (a57 < 0)
      {
        operator delete(a52);
      }

      if (a64 < 0)
      {
        operator delete(a59);
      }

      if (a70 < 0)
      {
        operator delete(a65);
      }

      std::ifstream::~ifstream(&a75);
      MEMORY[0x223DC2270](&STACK[0x388]);
      std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*a10);
      marrs::inference_engine::EspressoModule::~EspressoModule((a21 + 24));
      std::__tree<std::string>::destroy(*a12);
      std::__tree<std::string>::destroy(*a11);
      std::__tree<std::string>::destroy(*a13);
      MRModelConfig::~MRModelConfig(a20);
      *a23 = a14;
      if (*(a23 + 31) < 0)
      {
        operator delete(*a15);
      }

      JUMPOUT(0x2227B2DA8);
    }
  }

  else if (!v76)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v75);
  goto LABEL_8;
}

void sub_2227B2948(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](&a68);
  if (a67 < 0)
  {
    operator delete(__p);
  }

  if (v68)
  {
    operator delete(v68);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*(v70 - 136));
  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    MEMORY[0x223DC1F30](&a28, exception_ptr);
    __cxa_begin_catch(a1);
    v74 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *(v70 - 144) = 136315138;
      STACK[0x4A4] = "Error parsing category embeddings json";
      _os_log_impl(&dword_2227A9000, v74, OS_LOG_TYPE_ERROR, "ConfigLoadingError - %s", (v70 - 144), 0xCu);
    }

    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>((v70 - 144), "Error parsing category embeddings json");
    std::string::basic_string[abi:ne200100]<0>(&__p, "MultimodalReferenceResolution");
    ConfigLoadingError::ConfigLoadingError(exception, v70 - 144, &__p, "/Library/Caches/com.apple.xbs/Sources/Marrs/MultimodalReferenceResolution.subproj/MultimodalReferenceResolution/MentionResolver/ModelBasedMR/ModelBasedMR.cpp", 50);
  }

  JUMPOUT(0x2227B2ADCLL);
}

void sub_2227B2988()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x2227B29BCLL);
}

void sub_2227B2BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, char **a11, char **a12, char **a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::exception a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a74 < 0)
  {
    operator delete(__p);
  }

  if (*(v77 - 121) < 0)
  {
    operator delete(*(v77 - 144));
    if ((v76 & 1) == 0)
    {
LABEL_8:
      std::exception::~exception(&a28);
      __cxa_end_catch();
      if (a36 < 0)
      {
        operator delete(a31);
      }

      if (a43 < 0)
      {
        operator delete(a38);
      }

      if (a50 < 0)
      {
        operator delete(a45);
      }

      if (a57 < 0)
      {
        operator delete(a52);
      }

      if (a64 < 0)
      {
        operator delete(a59);
      }

      if (a70 < 0)
      {
        operator delete(a65);
      }

      std::ifstream::~ifstream(&a75);
      MEMORY[0x223DC2270](&STACK[0x388]);
      std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*a10);
      marrs::inference_engine::EspressoModule::~EspressoModule((a21 + 24));
      std::__tree<std::string>::destroy(*a12);
      std::__tree<std::string>::destroy(*a11);
      std::__tree<std::string>::destroy(*a13);
      MRModelConfig::~MRModelConfig(a20);
      *a23 = a14;
      if (*(a23 + 31) < 0)
      {
        operator delete(*a15);
      }

      JUMPOUT(0x2227B2DA8);
    }
  }

  else if (!v76)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v75);
  goto LABEL_8;
}

void sub_2227B2D94(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t marrs::inference_engine::EspressoModule::EspressoModule(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 == 16)
  {
    v5 = 65552;
  }

  else
  {
    v5 = 65568;
  }

  *(a1 + 32) = v5;
  context = espresso_create_context();
  *a1 = context;
  if (!context)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x223DC1F10](exception, "Could not deserialise espresso context.");
    goto LABEL_12;
  }

  plan = espresso_create_plan();
  *(a1 + 8) = plan;
  if (!plan)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x223DC1F10](exception, "Could not create espresso plan.");
LABEL_12:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;
  }

  v9 = *(a1 + 32);
  v10 = espresso_plan_add_network();
  if (v10)
  {
    v13 = v10;
    v14 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v15 = std::string::append(&v22, " with error code");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v21, v13);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v21;
    }

    else
    {
      v17 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v23, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25 = v19->__r_.__value_.__r.__words[2];
    v24 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x223DC1F20](v14, &v24);
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_2227B2F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v26 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v27);
  goto LABEL_12;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin::~CorrectionsRepetitionPredictorPlugin(marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin *this)
{
  *this = &unk_2835DEE00;
  *(this + 26) = &unk_2835DEE30;
  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  if (*(this + 311) < 0)
  {
    operator delete(*(this + 36));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 240);
  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  RepetitionPredictorBase::~RepetitionPredictorBase(this);
}

{
  marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin::~CorrectionsRepetitionPredictorPlugin(this);

  JUMPOUT(0x223DC2360);
}

void non-virtual thunk tomarrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin::~CorrectionsRepetitionPredictorPlugin(marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin *this)
{
  marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin::~CorrectionsRepetitionPredictorPlugin((this - 208));

  JUMPOUT(0x223DC2360);
}

{
  marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin::~CorrectionsRepetitionPredictorPlugin((this - 208));
}

void RepetitionPredictorBase::~RepetitionPredictorBase(RepetitionPredictorBase *this)
{
  *this = &unk_2835DEEA8;
  v7 = (this + 184);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(this + 21));
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(*(this + 17));
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  v3 = *(this + 8);
  if (v3)
  {
    do
    {
      v4 = *v3;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,float>>,0>((v3 + 2));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::__deallocate_node(*(this + 3));
  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    operator delete(v6);
  }
}

{
  RepetitionPredictorBase::~RepetitionPredictorBase(this);

  JUMPOUT(0x223DC2360);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,float>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,float>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void MRConfig::~MRConfig(void **this)
{
  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,float>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::~__hash_table((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x223DC2070](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_2227B3A54(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x223DC2270](v1);
  _Unwind_Resume(a1);
}

void std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(std::string *this, void *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  while (a2 && (a2[3] != a2[4] || (*(*a2 + 72))(a2) != -1))
  {
    v4 = a2[3];
    if (v4 == a2[4])
    {
      v5 = (*(*a2 + 72))(a2);
    }

    else
    {
      v5 = *v4;
    }

    std::string::push_back(this, v5);
    v6 = a2[3];
    if (v6 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v6 + 1;
    }
  }
}

void sub_2227B3B88(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_2227B3FFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void marrs::mrr::mr::MROrchestrator::~MROrchestrator(void **this)
{
  marrs::mrr::mr::MROrchestrator::~MROrchestrator(this);

  JUMPOUT(0x223DC2360);
}

{
  *this = &unk_2835DF4E8;
  if (*(this + 1391) < 0)
  {
    operator delete(this[171]);
  }

  marrs::mrr::mr::RuleBasedMR::~RuleBasedMR(this + 38);
  marrs::mrr::mr::ModelBasedMR::~ModelBasedMR((this + 1));
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<MDMentionOverride>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<MDMentionOverride>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MDMentionOverride>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<MDMentionOverride>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MDMentionOverride>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MDMentionOverride>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MDMentionOverride>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<MDMentionOverride>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void marrs::mrr::mr::RuleBasedMR::~RuleBasedMR(void **this)
{
  *this = &unk_2835DF5C0;
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this + 113);
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this + 93);
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this + 73);
  this[50] = &unk_2835DF620;
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(this[71]);
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this + 50);
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this + 30);
  this[4] = &unk_2835DF648;
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(this[28]);
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(this[25]);
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this + 4);
  *this = &unk_2835DF560;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  marrs::mrr::mr::RuleBasedMR::~RuleBasedMR(this);

  JUMPOUT(0x223DC2360);
}

void marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(void **this)
{
  *this = &unk_2835DF5E8;
  morphun::util::ULocale::~ULocale((this + 4));
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(a1[1]);
    std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100]((a1 + 4));

    operator delete(a1);
  }
}

void std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](uint64_t a1)
{
  std::__tree<std::string>::destroy(*(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,0>((a1 + 4));

    operator delete(a1);
  }
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_2227B46D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<marrs::mrr::mr::VerbalPatternEntry>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 48)
  {
    std::__tree<std::string>::destroy(*(i - 16));
    std::__tree<std::string>::destroy(*(i - 40));
  }

  *(a1 + 8) = a2;
}

void std::vector<marrs::mrr::mr::VerbalPatternEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<marrs::mrr::mr::VerbalPatternEntry>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<marrs::mrr::mr::VerbalPatternEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void marrs::mrr::mr::ModelBasedMR::~ModelBasedMR(marrs::mrr::mr::ModelBasedMR *this)
{
  *this = &unk_2835DF538;
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*(this + 35));
  marrs::inference_engine::EspressoModule::~EspressoModule((this + 232));
  std::__tree<std::string>::destroy(*(this + 27));
  std::__tree<std::string>::destroy(*(this + 24));
  std::__tree<std::string>::destroy(*(this + 21));
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  *this = &unk_2835DF560;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  marrs::mrr::mr::ModelBasedMR::~ModelBasedMR(this);

  JUMPOUT(0x223DC2360);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void marrs::inference_engine::EspressoModule::~EspressoModule(marrs::inference_engine::EspressoModule *this)
{
  v2 = *(this + 1);
  espresso_plan_destroy();
  v3 = *this;
  espresso_context_destroy();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void marrs::mrr::md::MRRVisualAndScreenMentionDetector::~MRRVisualAndScreenMentionDetector(marrs::mrr::md::MRRVisualAndScreenMentionDetector *this)
{
  *this = &unk_2835DF470;
  std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::destroy(*(this + 18));
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    marrs::inference_engine::EspressoModule::~EspressoModule(v2);
    MEMORY[0x223DC2360]();
  }

  *this = &unk_2835DF4C0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  marrs::mrr::md::MRRVisualAndScreenMentionDetector::~MRRVisualAndScreenMentionDetector(this);

  JUMPOUT(0x223DC2360);
}

uint64_t **std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<float>>,std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *> *,long>>(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    v16 = result;
    v17 = v9;
    v18 = v9;
    if (v9)
    {
      v17 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v9);
      if (a2 != a3)
      {
        v10 = a2;
        do
        {
          std::string::operator=((v9 + 4), (v10 + 4));
          if (v9 != v10)
          {
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v9 + 7, v10[7], v10[8], (v10[8] - v10[7]) >> 2);
          }

          v11 = *v8;
          v12 = v5 + 1;
          v13 = v5 + 1;
          if (*v8)
          {
            do
            {
              while (1)
              {
                v12 = v11;
                if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v18 + 4, v11 + 4))
                {
                  break;
                }

                v11 = *v12;
                v13 = v12;
                if (!*v12)
                {
                  goto LABEL_16;
                }
              }

              v11 = v12[1];
            }

            while (v11);
            v13 = v12 + 1;
          }

LABEL_16:
          std::__tree<std::string>::__insert_node_at(v5, v12, v13, v18);
          v9 = v17;
          v18 = v17;
          if (v17)
          {
            v17 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v17);
          }

          v14 = v10[1];
          if (v14)
          {
            do
            {
              a2 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              a2 = v10[2];
              v15 = *a2 == v10;
              v10 = a2;
            }

            while (!v15);
          }

          if (!v9)
          {
            break;
          }

          v10 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v16);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

void sub_2227B50F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227B5190(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::string>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_13:
    std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__construct_node<std::string const&>();
  }

  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      v7 = v2[4];
      v5 = v2 + 4;
      v6 = v7;
      v8 = (*(v5 + 23) >= 0 ? v5 : v6);
      if ((strcasecmp(v3, v8) & 0x80000000) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_13;
      }
    }

    result = strcasecmp(v8, v3);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_13;
    }
  }
}

void sub_2227B535C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](0, v2);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = v17;
          leaf_high = std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__find_leaf_high(v5, &v14, (v17 + 4));
          std::__tree<std::string>::__insert_node_at(v5, v14, leaf_high, v10);
          v8 = v16;
          v17 = v16;
          if (v16)
          {
            v16 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
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

    result = std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v15);
  }

  if (a2 != a3)
  {
    std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__construct_node<std::string const&>();
  }

  return result;
}

void sub_2227B5514(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__find_leaf_high(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    do
    {
      while (1)
      {
        v5 = v4;
        v9 = v4[4];
        v7 = v4 + 4;
        v8 = v9;
        v10 = (*(v7 + 23) >= 0 ? v7 : v8);
        if ((strcasecmp(v6, v10) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_14;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_14:
  *a2 = v5;
  return result;
}

void *marrs::mrr::mr::OrdinalFilter::OrdinalFilter(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = a3;
  v215 = *MEMORY[0x277D85DE8];
  v5 = marrs::mrr::mr::MRFilterInterface::MRFilterInterface(a1, a3);
  *v5 = &unk_2835DF648;
  v5[21] = 0;
  v137 = v5 + 21;
  v5[20] = v5 + 21;
  v5[24] = 0;
  v5[25] = 0;
  v5[22] = 0;
  v5[23] = v5 + 24;
  v143 = v5;
  v138 = v5 + 24;
  v135 = v5 + 20;
  std::__fs::filesystem::operator/[abi:ne200100](__sz, a2, &marrs::mrr::mr::filterConfigFileName);
  if (SHIBYTE(__sz[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v214, __sz[0].__r_.__value_.__l.__data_, __sz[0].__r_.__value_.__l.__size_);
  }

  else
  {
    *v214 = __sz[0];
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = v214[23];
  v8 = *v214;
  v9 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v7 >= 0)
  {
    v10 = v214;
  }

  else
  {
    v10 = v8;
  }

  v11 = [v6 stringWithCString:v10 encoding:v9];
  v12 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithJSON:v11];
  memset(&v169, 0, sizeof(v169));
  v13 = [v12 objectForKey:@"version"];
  v14 = v13;
  std::string::basic_string[abi:ne200100]<0>(&__str, [v13 UTF8String]);
  v167 = __str;
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;

  v15 = [v12 objectForKey:@"mrType"];
  v168 = [v15 isEqual:@"rule"] ^ 1;
  if ((v168 & 1) == 0)
  {
    v16 = [v12 objectForKeyedSubscript:@"ruleConfig"];
    v17 = v16 == 0;

    if (!v17)
    {
      v18 = [v12 objectForKeyedSubscript:@"ruleConfig"];
      v19 = [v18 objectForKey:@"ordinalAssetPath"];
      v20 = v19;
      std::string::basic_string[abi:ne200100]<0>(&__str, [v19 UTF8String]);

      std::string::operator=(&v169, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  if ((v214[23] & 0x80000000) != 0)
  {
    operator delete(*v214);
  }

  if (SHIBYTE(__sz[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__sz[0].__r_.__value_.__l.__data_);
  }

  v21 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    std::__fs::filesystem::operator/[abi:ne200100](v214, a2, &marrs::mrr::mr::assetSubDirectoryPath);
    if ((v214[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&__str, *v214, *&v214[8]);
    }

    else
    {
      __str = *v214;
    }

    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    LODWORD(__sz[0].__r_.__value_.__l.__data_) = 136315394;
    *(__sz[0].__r_.__value_.__r.__words + 4) = v3;
    WORD2(__sz[0].__r_.__value_.__r.__words[1]) = 2080;
    *(&__sz[0].__r_.__value_.__r.__words[1] + 6) = p_str;
    _os_log_impl(&dword_2227A9000, v21, OS_LOG_TYPE_DEBUG, "[Verbal MR] Initializing Verbal rule based mention resolver for locale - %s, from path - %s", __sz, 0x16u);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if ((v214[23] & 0x80000000) != 0)
    {
      operator delete(*v214);
    }
  }

  std::__fs::filesystem::operator/[abi:ne200100](v214, a2, &marrs::mrr::mr::filterConfigFileName);
  std::ifstream::basic_ifstream(&__str);
  if ((v214[23] & 0x80000000) != 0)
  {
    operator delete(*v214);
  }

  std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&v166, *(&__str + *(__str.__r_.__value_.__r.__words[0] - 24) + 40));
  v23 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = &v166;
    if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v166.__r_.__value_.__r.__words[0];
    }

    *v214 = 136315138;
    *&v214[4] = v24;
    _os_log_impl(&dword_2227A9000, v23, OS_LOG_TYPE_DEBUG, "[Verbal MR] Loaded MR Config - %s", v214, 0xCu);
  }

  v25 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = &v167;
    if ((v167.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = v167.__r_.__value_.__r.__words[0];
    }

    if ((v169.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v169;
    }

    else
    {
      v27 = v169.__r_.__value_.__r.__words[0];
    }

    *v214 = 67109634;
    *&v214[4] = v168;
    *&v214[8] = 2080;
    *&v214[10] = v26;
    *&v214[18] = 2080;
    *&v214[20] = v27;
    _os_log_impl(&dword_2227A9000, v25, OS_LOG_TYPE_DEBUG, "[Verbal MR] Verbal MR Config Parameters - mrType: %u,version: %s, ordinalAssetPath: %s", v214, 0x1Cu);
  }

  std::__fs::filesystem::operator/[abi:ne200100](__sz, a2, &marrs::mrr::mr::assetSubDirectoryPath);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, &v169);
  std::__fs::filesystem::operator/[abi:ne200100](v214, __sz, &__p);
  if ((v214[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v165, *v214, *&v214[8]);
    if ((v214[23] & 0x80000000) != 0)
    {
      operator delete(*v214);
    }
  }

  else
  {
    v165 = *v214;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__sz[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__sz[0].__r_.__value_.__l.__data_);
  }

  v28 = MEMORY[0x277CCACA8];
  v29 = SHIBYTE(v165.__r_.__value_.__r.__words[2]);
  v30 = v165.__r_.__value_.__r.__words[0];
  v31 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v29 >= 0)
  {
    v32 = &v165;
  }

  else
  {
    v32 = v30;
  }

  v145 = [v28 stringWithCString:v32 encoding:v31];
  v141 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v141 fileExistsAtPath:v145] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x223DC1F20](exception, v214);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v33 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithJSON:v145];
  v159 = &v160;
  v160 = 0;
  v163 = 0;
  v164 = 0;
  v161 = 0;
  v162 = &v163;
  v196[1] = 0;
  v196[0] = 0;
  v195 = v196;
  v194[1] = 0;
  v194[0] = 0;
  v193 = v194;
  v34 = v33;
  v140 = v33;
  v144 = [v33 objectForKey:@"ordinalKeywords"];
  v142 = [v34 objectForKey:@"ordinalPatternTemplateMap"];
  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  obj = v144;
  v146 = [obj countByEnumeratingWithState:&v189 objects:v214 count:16];
  if (v146)
  {
    v148 = *v190;
    do
    {
      for (i = 0; i != v146; ++i)
      {
        if (*v190 != v148)
        {
          objc_enumerationMutation(obj);
        }

        v151 = *(*(&v189 + 1) + 8 * i);
        v35 = [obj objectForKey:?];
        memset(v182, 0, 24);
        v185 = 0u;
        v186 = 0u;
        v187 = 0u;
        v188 = 0u;
        v155 = v35;
        v36 = [v155 countByEnumeratingWithState:&v185 objects:__sz count:16];
        if (v36)
        {
          v37 = *v186;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v186 != v37)
              {
                objc_enumerationMutation(v155);
              }

              v39 = *(*(&v185 + 1) + 8 * j);
              v40 = [v39 objectForKey:@"synonyms"];
              v41 = 0;
              *(&v176 + 1) = 0;
              *&v177 = 0;
              *&v176 = &v176 + 8;
              while ([v40 count] > v41)
              {
                v42 = [v40 objectAtIndexedSubscript:v41];
                v43 = v42;
                std::string::basic_string[abi:ne200100]<0>(&__p, [v42 UTF8String]);

                std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v176, &__p.__r_.__value_.__l.__data_);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                ++v41;
              }

              v44 = [v39 objectForKey:@"semantic"];
              v45 = v44;
              std::string::basic_string[abi:ne200100]<0>(&v170, [v44 UTF8String]);

              if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&__p, v170.__r_.__value_.__l.__data_, v170.__r_.__value_.__l.__size_);
              }

              else
              {
                __p = v170;
              }

              std::set<std::string>::set[abi:ne200100](v211, &v176);
              v46 = [v39 objectForKey:@"index"];
              [v46 floatValue];
              v212 = v47;

              v48 = v182[1];
              if (v182[1] >= v182[2])
              {
                v50 = 0x6DB6DB6DB6DB6DB7 * ((v182[1] - v182[0]) >> 3);
                v51 = v50 + 1;
                if ((v50 + 1) > 0x492492492492492)
                {
                  std::vector<std::string>::__throw_length_error[abi:ne200100]();
                }

                if (0xDB6DB6DB6DB6DB6ELL * ((v182[2] - v182[0]) >> 3) > v51)
                {
                  v51 = 0xDB6DB6DB6DB6DB6ELL * ((v182[2] - v182[0]) >> 3);
                }

                if ((0x6DB6DB6DB6DB6DB7 * ((v182[2] - v182[0]) >> 3)) >= 0x249249249249249)
                {
                  v52 = 0x492492492492492;
                }

                else
                {
                  v52 = v51;
                }

                v209 = v182;
                if (v52)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalKeywordEntry>>(v52);
                }

                v54 = 8 * ((v182[1] - v182[0]) >> 3);
                v207[0] = 0;
                v207[1] = v54;
                v208 = v54;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external((8 * ((v182[1] - v182[0]) >> 3)), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                }

                else
                {
                  v55 = *&__p.__r_.__value_.__l.__data_;
                  *(8 * ((v182[1] - v182[0]) >> 3) + 0x10) = *(&__p.__r_.__value_.__l + 2);
                  *v54 = v55;
                }

                std::set<std::string>::set[abi:ne200100]((v54 + 24), v211);
                *(56 * v50 + 0x30) = v212;
                *&v208 = v208 + 56;
                v56 = v182[1];
                v57 = v182[0];
                v58 = (v207[1] + v182[0] - v182[1]);
                if (v182[0] != v182[1])
                {
                  v59 = 0;
                  do
                  {
                    v60 = v58 + v59;
                    v61 = (v57 + v59);
                    v62 = *(&v57->__r_.__value_.__l.__data_ + v59);
                    *(v60 + 2) = *(&v57->__r_.__value_.__l + v59 + 16);
                    *v60 = v62;
                    v61[1] = 0;
                    v61[2] = 0;
                    *v61 = 0;
                    *(v60 + 3) = *(&v57[1].__r_.__value_.__l.__data_ + v59);
                    v63 = (&v57[1].__r_.__value_.__l.__size_ + v59);
                    v64 = *v63;
                    *(&v58[1].__r_.__value_.__l.__size_ + v59) = *v63;
                    v65 = &v58[1].__r_.__value_.__l.__size_ + v59;
                    v66 = v57[1].__r_.__value_.__r.__words[v59 / 8 + 2];
                    *(v60 + 5) = v66;
                    if (v66)
                    {
                      *(v64 + 16) = v65;
                      v61[3] = v63;
                      *v63 = 0;
                      v57[1].__r_.__value_.__r.__words[v59 / 8 + 2] = 0;
                    }

                    else
                    {
                      *(v60 + 3) = v65;
                    }

                    *(&v58[2].__r_.__value_.__l.__data_ + v59) = *(&v57[2].__r_.__value_.__l.__data_ + v59);
                    v59 += 56;
                  }

                  while ((v57 + v59) != v56);
                  do
                  {
                    std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](v57);
                    v57 = (v57 + 56);
                  }

                  while (v57 != v56);
                }

                v67 = v182[0];
                v68 = v182[2];
                v182[0] = v58;
                v157 = v208;
                *&v182[1] = v208;
                *&v208 = v67;
                *(&v208 + 1) = v68;
                v207[1] = v67;
                v207[0] = v67;
                std::__split_buffer<marrs::mrr::mr::VerbalKeywordEntry>::~__split_buffer(v207);
                v53 = v157;
              }

              else
              {
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(v182[1], __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                }

                else
                {
                  v49 = *&__p.__r_.__value_.__l.__data_;
                  v182[1]->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
                  *&v48->__r_.__value_.__l.__data_ = v49;
                }

                std::set<std::string>::set[abi:ne200100](v48[1].__r_.__value_.__r.__words, v211);
                LODWORD(v48[2].__r_.__value_.__l.__data_) = v212;
                v53 = (v48 + 56);
              }

              v182[1] = v53;
              std::__tree<std::string>::destroy(v211[1]);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v170.__r_.__value_.__l.__data_);
              }

              std::__tree<std::string>::destroy(*(&v176 + 1));
            }

            v36 = [v155 countByEnumeratingWithState:&v185 objects:__sz count:16];
          }

          while (v36);
        }

        v69 = v151;
        std::string::basic_string[abi:ne200100]<0>(v207, [v151 UTF8String]);
        v70 = v196[0];
        if (!v196[0])
        {
LABEL_107:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v71 = v70;
            if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v207, &v70[1].__r_.__value_.__l.__size_))
            {
              break;
            }

            v70 = *v71;
            if (!*v71)
            {
              goto LABEL_107;
            }
          }

          if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v71 + 4, v207))
          {
            break;
          }

          v70 = v71[1];
          if (!v70)
          {
            goto LABEL_107;
          }
        }

        if (v71 + 7 != v182)
        {
          std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*>(v71 + 7, v182[0], v182[1], 0x6DB6DB6DB6DB6DB7 * ((v182[1] - v182[0]) >> 3));
        }

        if (SBYTE7(v208) < 0)
        {
          operator delete(v207[0]);
        }

        __p.__r_.__value_.__r.__words[0] = v182;
        std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__destroy_vector::operator()[abi:ne200100](&__p);
      }

      v146 = [obj countByEnumeratingWithState:&v189 objects:v214 count:16];
    }

    while (v146);
  }

  v183 = 0u;
  v184 = 0u;
  memset(v182, 0, sizeof(v182));
  v149 = v142;
  v139 = [v149 countByEnumeratingWithState:v182 objects:&__p count:16];
  if (v139)
  {
    data = v182[2]->__r_.__value_.__l.__data_;
    do
    {
      for (k = 0; k != v139; ++k)
      {
        if (v182[2]->__r_.__value_.__l.__data_ != data)
        {
          objc_enumerationMutation(v149);
        }

        v152 = *(&v182[1]->__r_.__value_.__l.__data_ + k);
        v72 = [v149 objectForKey:?];
        v180 = 0;
        v181 = 0uLL;
        v176 = 0u;
        v177 = 0u;
        v178 = 0u;
        v179 = 0u;
        v156 = v72;
        v73 = [v156 countByEnumeratingWithState:&v176 objects:v207 count:16];
        if (v73)
        {
          v74 = *v177;
          do
          {
            for (m = 0; m != v73; ++m)
            {
              if (*v177 != v74)
              {
                objc_enumerationMutation(v156);
              }

              v76 = *(*(&v176 + 1) + 8 * m);
              v77 = [v76 objectForKey:@"patterns"];
              v78 = 0;
              v175[0] = 0;
              v175[1] = 0;
              v174 = v175;
              while ([v77 count] > v78)
              {
                v79 = [v77 objectAtIndexedSubscript:v78];
                v80 = v79;
                std::string::basic_string[abi:ne200100]<0>(&v170, [v79 UTF8String]);

                std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v174, &v170.__r_.__value_.__l.__data_);
                if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v170.__r_.__value_.__l.__data_);
                }

                ++v78;
              }

              v81 = [v76 objectForKey:@"entity_types"];
              v82 = 0;
              v173[0] = 0;
              v173[1] = 0;
              v172 = v173;
              while ([v81 count] > v82)
              {
                v83 = [v81 objectAtIndexedSubscript:v82];
                v84 = v83;
                std::string::basic_string[abi:ne200100]<0>(&v170, [v83 UTF8String]);

                std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v172, &v170.__r_.__value_.__l.__data_);
                if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v170.__r_.__value_.__l.__data_);
                }

                ++v82;
              }

              std::set<std::string>::set[abi:ne200100](&v170, &v172);
              std::set<std::string>::set[abi:ne200100](v171, &v174);
              v85 = v181;
              if (v181 >= *(&v181 + 1))
              {
                v87 = 0xAAAAAAAAAAAAAAABLL * ((v181 - v180) >> 4) + 1;
                if (v87 > 0x555555555555555)
                {
                  std::vector<std::string>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((*(&v181 + 1) - v180) >> 4) > v87)
                {
                  v87 = 0x5555555555555556 * ((*(&v181 + 1) - v180) >> 4);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((*(&v181 + 1) - v180) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                {
                  v88 = 0x555555555555555;
                }

                else
                {
                  v88 = v87;
                }

                v200 = &v180;
                if (v88)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalPatternEntry>>(v88);
                }

                v89 = (16 * ((v181 - v180) >> 4));
                __s = 0;
                v198 = v89;
                v199 = v89;
                std::set<std::string>::set[abi:ne200100](v89, &v170);
                std::set<std::string>::set[abi:ne200100](v89 + 3, v171);
                *&v199 = v199 + 48;
                v91 = v180;
                v90 = v181;
                v201[0] = &v180;
                v201[1] = &v203;
                v201[2] = &v204;
                v92 = v180;
                v93 = v180 + v198 - v181;
                v204 = v93;
                v203 = v93;
                v94 = v93;
                if (v180 == v181)
                {
                  v202 = 1;
                }

                else
                {
                  do
                  {
                    *v94 = *v92;
                    v95 = v92 + 1;
                    v96 = v92[1];
                    v94[1] = v96;
                    v97 = v94 + 1;
                    v98 = v92[2];
                    v94[2] = v98;
                    if (v98)
                    {
                      *(v96 + 16) = v97;
                      *v92 = v95;
                      *v95 = 0;
                      v92[2] = 0;
                    }

                    else
                    {
                      *v94 = v97;
                    }

                    v94[3] = v92[3];
                    v99 = v92 + 4;
                    v100 = v92[4];
                    v94[4] = v100;
                    v101 = v94 + 4;
                    v102 = v92[5];
                    v94[5] = v102;
                    if (v102)
                    {
                      *(v100 + 16) = v101;
                      v92[3] = v99;
                      *v99 = 0;
                      v92[5] = 0;
                    }

                    else
                    {
                      v94[3] = v101;
                    }

                    v92 += 6;
                    v94 = (v204 + 48);
                    v204 += 48;
                  }

                  while (v92 != v90);
                  v202 = 1;
                  do
                  {
                    std::__tree<std::string>::destroy(*(v91 + 32));
                    std::__tree<std::string>::destroy(*(v91 + 8));
                    v91 += 48;
                  }

                  while (v91 != v90);
                }

                std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<marrs::mrr::mr::VerbalPatternEntry>,marrs::mrr::mr::VerbalPatternEntry*>>::~__exception_guard_exceptions[abi:ne200100](v201);
                v103 = v180;
                v104 = *(&v181 + 1);
                v180 = v93;
                v158 = v199;
                v181 = v199;
                *&v199 = v103;
                *(&v199 + 1) = v104;
                v198 = v103;
                __s = v103;
                std::__split_buffer<marrs::mrr::mr::VerbalPatternEntry>::~__split_buffer(&__s);
                v86 = v158;
              }

              else
              {
                std::set<std::string>::set[abi:ne200100](v181, &v170);
                std::set<std::string>::set[abi:ne200100]((v85 + 24), v171);
                v86 = v85 + 48;
              }

              *&v181 = v86;
              std::__tree<std::string>::destroy(v171[1]);
              std::__tree<std::string>::destroy(v170.__r_.__value_.__l.__size_);
              std::__tree<std::string>::destroy(v173[0]);

              std::__tree<std::string>::destroy(v175[0]);
            }

            v73 = [v156 countByEnumeratingWithState:&v176 objects:v207 count:16];
          }

          while (v73);
        }

        v105 = v152;
        std::string::basic_string[abi:ne200100]<0>(&__s, [v152 UTF8String]);
        v106 = v194[0];
        if (!v194[0])
        {
LABEL_165:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v107 = v106;
            if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(&__s, v106 + 4))
            {
              break;
            }

            v106 = *v107;
            if (!*v107)
            {
              goto LABEL_165;
            }
          }

          if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v107 + 4, &__s))
          {
            break;
          }

          v106 = v107[1];
          if (!v106)
          {
            goto LABEL_165;
          }
        }

        if (v107 + 7 != &v180)
        {
          std::vector<marrs::mrr::mr::VerbalPatternEntry>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::VerbalPatternEntry*,marrs::mrr::mr::VerbalPatternEntry*>(v107 + 7, v180, v181, 0xAAAAAAAAAAAAAAABLL * ((v181 - v180) >> 4));
        }

        if (SBYTE7(v199) < 0)
        {
          operator delete(__s);
        }

        v170.__r_.__value_.__r.__words[0] = &v180;
        std::vector<marrs::mrr::mr::VerbalPatternEntry>::__destroy_vector::operator()[abi:ne200100](&v170);
      }

      v139 = [v149 countByEnumeratingWithState:v182 objects:&__p count:16];
    }

    while (v139);
  }

  v108 = v195;
  if (v161)
  {
    v109 = v159;
    v159 = &v160;
    v160[2] = 0;
    v160 = 0;
    v161 = 0;
    if (v109[1])
    {
      v110 = v109[1];
    }

    else
    {
      v110 = v109;
    }

    v170.__r_.__value_.__r.__words[0] = &v159;
    v170.__r_.__value_.__l.__size_ = v110;
    v170.__r_.__value_.__r.__words[2] = v110;
    if (!v110 || (v170.__r_.__value_.__l.__size_ = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v110), v108 == v196))
    {
      v116 = v108;
    }

    else
    {
      do
      {
        std::string::operator=((v110 + 32), (v108 + 4));
        if (v110 != v108)
        {
          std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*>((v110 + 56), v108[7], v108[8], 0x6DB6DB6DB6DB6DB7 * ((v108[8] - v108[7]) >> 3));
        }

        v111 = v170.__r_.__value_.__r.__words[2];
        v112 = v160;
        v113 = &v160;
        v114 = &v160;
        if (v160)
        {
          do
          {
            while (1)
            {
              v114 = v112;
              if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v111 + 4, v112 + 4))
              {
                break;
              }

              v112 = *v114;
              v113 = v114;
              if (!*v114)
              {
                goto LABEL_186;
              }
            }

            v112 = v114[1];
          }

          while (v112);
          v113 = v114 + 1;
        }

LABEL_186:
        *v111 = 0;
        v111[1] = 0;
        v111[2] = v114;
        *v113 = v111;
        if (*v159)
        {
          v159 = *v159;
          v111 = *v113;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v160, v111);
        ++v161;
        v170.__r_.__value_.__r.__words[2] = v170.__r_.__value_.__l.__size_;
        if (v170.__r_.__value_.__l.__size_)
        {
          v170.__r_.__value_.__l.__size_ = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v170.__r_.__value_.__l.__size_);
        }

        v115 = v108[1];
        if (v115)
        {
          do
          {
            v116 = v115;
            v115 = *v115;
          }

          while (v115);
        }

        else
        {
          do
          {
            v116 = v108[2];
            v117 = *v116 == v108;
            v108 = v116;
          }

          while (!v117);
        }

        v110 = v170.__r_.__value_.__r.__words[2];
        if (v170.__r_.__value_.__r.__words[2])
        {
          v117 = v116 == v196;
        }

        else
        {
          v117 = 1;
        }

        v108 = v116;
      }

      while (!v117);
    }

    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v170);
    v108 = v116;
  }

  if (v108 != v196)
  {
    operator new();
  }

  v118 = v193;
  if (v164)
  {
    v119 = v162;
    v162 = &v163;
    v163[2] = 0;
    v163 = 0;
    v164 = 0;
    if (v119[1])
    {
      v120 = v119[1];
    }

    else
    {
      v120 = v119;
    }

    v170.__r_.__value_.__r.__words[0] = &v162;
    v170.__r_.__value_.__l.__size_ = v120;
    v170.__r_.__value_.__r.__words[2] = v120;
    if (!v120 || (v170.__r_.__value_.__l.__size_ = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v120), v118 == v194))
    {
      v126 = v118;
    }

    else
    {
      do
      {
        std::string::operator=((v120 + 32), (v118 + 4));
        if (v120 != v118)
        {
          std::vector<marrs::mrr::mr::VerbalPatternEntry>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::VerbalPatternEntry*,marrs::mrr::mr::VerbalPatternEntry*>((v120 + 56), v118[7], v118[8], 0xAAAAAAAAAAAAAAABLL * ((v118[8] - v118[7]) >> 4));
        }

        v121 = v170.__r_.__value_.__r.__words[2];
        v122 = v163;
        v123 = &v163;
        v124 = &v163;
        if (v163)
        {
          do
          {
            while (1)
            {
              v124 = v122;
              if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v121 + 4, v122 + 4))
              {
                break;
              }

              v122 = *v124;
              v123 = v124;
              if (!*v124)
              {
                goto LABEL_219;
              }
            }

            v122 = v124[1];
          }

          while (v122);
          v123 = v124 + 1;
        }

LABEL_219:
        *v121 = 0;
        v121[1] = 0;
        v121[2] = v124;
        *v123 = v121;
        if (*v162)
        {
          v162 = *v162;
          v121 = *v123;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v163, v121);
        ++v164;
        v170.__r_.__value_.__r.__words[2] = v170.__r_.__value_.__l.__size_;
        if (v170.__r_.__value_.__l.__size_)
        {
          v170.__r_.__value_.__l.__size_ = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v170.__r_.__value_.__l.__size_);
        }

        v125 = v118[1];
        if (v125)
        {
          do
          {
            v126 = v125;
            v125 = *v125;
          }

          while (v125);
        }

        else
        {
          do
          {
            v126 = v118[2];
            v117 = *v126 == v118;
            v118 = v126;
          }

          while (!v117);
        }

        v120 = v170.__r_.__value_.__r.__words[2];
        if (v170.__r_.__value_.__r.__words[2])
        {
          v127 = v126 == v194;
        }

        else
        {
          v127 = 1;
        }

        v118 = v126;
      }

      while (!v127);
    }

    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v170);
    v118 = v126;
  }

  if (v118 != v194)
  {
    operator new();
  }

  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(v194[0]);
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(v196[0]);

  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(v143[21]);
  v128 = v160;
  v143[20] = v159;
  v143[21] = v128;
  v129 = v161;
  v143[22] = v161;
  if (v129)
  {
    v128[2] = v137;
    v159 = &v160;
    v160 = 0;
    v161 = 0;
  }

  else
  {
    *v136 = v137;
  }

  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(v143[24]);
  v130 = v163;
  v143[23] = v162;
  v143[24] = v130;
  v131 = v164;
  v143[25] = v164;
  if (v131)
  {
    v130[2] = v138;
    v130 = 0;
    v162 = &v163;
    v163 = 0;
    v164 = 0;
  }

  else
  {
    v143[23] = v138;
  }

  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(v130);
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(v160);
  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v165.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v166.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
  *(__str.__r_.__value_.__r.__words + *(__str.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x223DC2080](&__str.__r_.__value_.__r.__words[2]);
  std::istream::~istream();
  MEMORY[0x223DC2270](&v206);
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v169.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v167.__r_.__value_.__l.__data_);
  }

  v133 = *MEMORY[0x277D85DE8];
  return v143;
}

void sub_2227B7744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, VerbalMaps *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  VerbalMaps::~VerbalMaps(a9);
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(a16);
  _Unwind_Resume(a1);
}

void sub_2227B7768(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t marrs::mrr::mr::MRFilterInterface::MRFilterInterface(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2835DF5E8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v3;
  }

  morphun::util::ULocale::ULocale();
  return a1;
}

void sub_2227B7864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 + 31) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_2227B7934(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](0, v2);
  _Unwind_Resume(a1);
}

void *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, const void **a2)
{
  result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!*result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void *std::set<std::string>::set[abi:ne200100](void *a1, const void ***a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      v6 = a1[1];
      v7 = v3;
      if (*a1 == v3)
      {
        goto LABEL_8;
      }

      v8 = a1[1];
      v9 = v3;
      if (v6)
      {
        do
        {
          v7 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v7 = v9[2];
          v10 = *v7 == v9;
          v9 = v7;
        }

        while (v10);
      }

      if (std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v7 + 4, v5 + 4))
      {
LABEL_8:
        if (!v6)
        {
          v15 = v3;
LABEL_14:
          std::__tree<std::string>::__construct_node<std::string const&>();
        }

        v15 = v7;
        v11 = v7 + 1;
      }

      else
      {
        v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v15, v5 + 4);
      }

      if (!*v11)
      {
        goto LABEL_14;
      }

      v12 = v5[1];
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
          v13 = v5[2];
          v10 = *v13 == v5;
          v5 = v13;
        }

        while (!v10);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRHypothesis>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<marrs::mrr::mr::VerbalKeywordEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*>(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 56;
          std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](v10);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x492492492492492)
    {
      v12 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x249249249249249)
      {
        v14 = 0x492492492492492;
      }

      else
      {
        v14 = v13;
      }

      std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__vallocate[abi:ne200100](a1, v14);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v15 = a1[1] - v9;
  if (0x6DB6DB6DB6DB6DB7 * (v15 >> 3) >= a4)
  {
    v16 = std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry *,marrs::mrr::mr::VerbalKeywordEntry *,marrs::mrr::mr::VerbalKeywordEntry *>(__str, a3, v9);
    for (i = a1[1]; i != v16; std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](i))
    {
      i -= 56;
    }

    a1[1] = v16;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry *,marrs::mrr::mr::VerbalKeywordEntry *,marrs::mrr::mr::VerbalKeywordEntry *>(__str, (__str + v15), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalKeywordEntry>,marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*>(a1, __str + v15, a3, a1[1]);
  }
}

void std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalKeywordEntry>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalKeywordEntry>,marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a4 + v7), *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      std::set<std::string>::set[abi:ne200100]((a4 + v7 + 24), (a2 + v7 + 24));
      *(a4 + v7 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2227B7EB8(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 56;
    std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalPatternEntry>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<marrs::mrr::mr::VerbalPatternEntry>,marrs::mrr::mr::VerbalPatternEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 48)
    {
      std::__tree<std::string>::destroy(*(v4 - 16));
      std::__tree<std::string>::destroy(*(v4 - 40));
    }
  }

  return a1;
}

uint64_t std::__split_buffer<marrs::mrr::mr::VerbalPatternEntry>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__tree<std::string>::destroy(*(i - 16));
    std::__tree<std::string>::destroy(*(i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<marrs::mrr::mr::VerbalPatternEntry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalPatternEntry>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::vector<marrs::mrr::mr::VerbalPatternEntry>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::VerbalPatternEntry*,marrs::mrr::mr::VerbalPatternEntry*>(uint64_t *a1, uint64_t a2, uint64_t **a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 4) < a4)
  {
    if (v9)
    {
      std::vector<marrs::mrr::mr::VerbalPatternEntry>::__base_destruct_at_end[abi:ne200100](a1, *a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
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

      std::vector<marrs::mrr::mr::VerbalPatternEntry>::__vallocate[abi:ne200100](a1, v12);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v13 >> 4) >= a4)
  {
    v14 = std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::VerbalPatternEntry *,marrs::mrr::mr::VerbalPatternEntry *,marrs::mrr::mr::VerbalPatternEntry *>(a2, a3, v9);

    std::vector<marrs::mrr::mr::VerbalPatternEntry>::__base_destruct_at_end[abi:ne200100](a1, v14);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::VerbalPatternEntry *,marrs::mrr::mr::VerbalPatternEntry *,marrs::mrr::mr::VerbalPatternEntry *>(a2, (a2 + v13), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalPatternEntry>,marrs::mrr::mr::VerbalPatternEntry*,marrs::mrr::mr::VerbalPatternEntry*,marrs::mrr::mr::VerbalPatternEntry*>(a1, (a2 + v13), a3, a1[1]);
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalPatternEntry>,marrs::mrr::mr::VerbalPatternEntry*,marrs::mrr::mr::VerbalPatternEntry*,marrs::mrr::mr::VerbalPatternEntry*>(uint64_t a1, const void ***a2, const void ***a3, void *a4)
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
      std::set<std::string>::set[abi:ne200100](v4, v6);
      std::set<std::string>::set[abi:ne200100](v4 + 3, v6 + 3);
      v6 += 6;
      v4 = v11 + 6;
      v11 += 6;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<marrs::mrr::mr::VerbalPatternEntry>,marrs::mrr::mr::VerbalPatternEntry*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__init_with_size[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227B8348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::allocator<marrs::mrr::mr::VerbalKeywordEntry>::destroy[abi:ne200100](v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = v17;
          leaf_high = std::__tree<std::string>::__find_leaf_high(v5, &v14, v17 + 4);
          std::__tree<std::string>::__insert_node_at(v5, v14, leaf_high, v10);
          v8 = v16;
          v17 = v16;
          if (v16)
          {
            v16 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
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

    result = std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v15);
  }

  if (a2 != a3)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void sub_2227B8550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::string>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v5 = v4;
        v11 = v4[4];
        v9 = v4 + 4;
        v10 = v11;
        v12 = *(v9 + 23);
        v13 = v12 >= 0 ? *(v9 + 23) : v9[1];
        v14 = v12 >= 0 ? v9 : v10;
        v15 = (v13 >= v7 ? v7 : v13);
        v16 = memcmp(v8, v14, v15);
        v17 = v7 < v13;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (!v17)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_25;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_25:
  *a2 = v5;
  return result;
}

uint64_t sub_2227B86DC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_22282FEF4();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x277D84F90];
  sub_2227C07C8(0, v10, 0);
  v11 = v23;
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = a3 + v19;
  v18 = (v6 + 32);
  v13 = *(v6 + 72);
  while (1)
  {
    v21(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_2227C07C8(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*v18)(v11 + v19 + v15 * v13, v9, v20);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2227B8898()
{
  v0 = sub_2228300E4();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  sub_222830174();
  sub_2227B8970(v8, v9, &v11);
  (*(v3 + 8))(v8, v0);
  return v11;
}

void sub_2227B8970(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v77 = a3;
  v78 = a2;
  v4 = sub_222830034();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v69 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = &v61 - v9;
  v10 = sub_222830064();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v10);
  v65 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B748, &qword_2228320A8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B750, &qword_2228320B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v61 - v23;
  __swift_storeEnumTagSinglePayload(&v61 - v23, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v4);
  v25 = sub_2228300B4();
  sub_2227BA108(v22);
  sub_2227BA108(v24);
  v26 = sub_2227BDAF8(v25);

  v27 = *(v26 + 16);
  if (v27)
  {
    v62 = v5;
    v63 = v4;
    v64 = a1;
    v28 = *(v13 + 48);
    v76 = *(v14 + 80);
    v29 = (v76 + 32) & ~v76;
    v61 = v26;
    v30 = v26 + v29;
    v70 = *(v78 + 16);
    v71 = v70 + 1;
    v31 = *(v14 + 72);
    v75 = xmmword_222832090;
    v32 = v13;
    v73 = v17;
    v74 = v13;
    v72 = v29;
    while (1)
    {
      sub_2227BA170(v30, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B758, &qword_2228320B8);
      v33 = swift_allocObject();
      *(v33 + 16) = v75;
      v34 = v33 + v29;
      v35 = *(v32 + 48);
      v36 = sub_222830014();
      (*(*(v36 - 8) + 32))(v34, v17, v36);
      v37 = sub_2228300E4();
      v38 = *(v37 - 8);
      v39 = *(v38 + 16);
      v79 = v37;
      v39(v34 + v35, &v17[v28]);
      v40 = v78;

      if (!swift_isUniquelyReferenced_nonNull_native() || (v41 = *(v40 + 24) >> 1, v42 = v40, v41 <= v70))
      {
        if (*(v40 + 16) > v71)
        {
          v43 = *(v40 + 16);
        }

        sub_2227BF9E8();
        v42 = v44;
        v41 = *(v44 + 24) >> 1;
      }

      if (v41 <= *(v42 + 16))
      {
        break;
      }

      v45 = v27;
      v46 = v72;
      v32 = v74;
      swift_arrayInitWithCopy();

      ++*(v42 + 16);
      v17 = v73;
      sub_2227B8970(&v73[v28], v42, v77);
      v29 = v46;

      (*(v38 + 8))(&v17[v28], v79);
      v30 += v31;
      v27 = v45 - 1;
      if (v45 == 1)
      {

        v47 = v78;
        v4 = v63;
        v5 = v62;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v47 = v78;
LABEL_12:
    v48 = v65;
    sub_2228300D4();
    v49 = v68;
    sub_222830044();
    (*(v66 + 8))(v48, v67);
    v50 = v69;
    sub_222830024();
    sub_2227BA1E0();
    LOBYTE(v48) = sub_222830284();
    v51 = *(v5 + 8);
    v51(v50, v4);
    v51(v49, v4);
    if ((v48 & 1) == 0)
    {
      v52 = sub_2228300A4();
      if (v53)
      {
        v54 = v52;
        v55 = v53;
        v56 = HIBYTE(v53) & 0xF;
        if ((v53 & 0x2000000000000000) == 0)
        {
          v56 = v52 & 0xFFFFFFFFFFFFLL;
        }

        if (v56)
        {

          v57 = v77;
          sub_2227B9EF8();
          v58 = *(*v57 + 16);
          sub_2227B9F44(v58);
          v59 = *v57;
          *(v59 + 16) = v58 + 1;
          v60 = (v59 + 24 * v58);
          v60[4] = v54;
          v60[5] = v55;
          v60[6] = v47;
          *v57 = v59;
        }

        else
        {
        }
      }
    }
  }
}

void sub_2227B8F74()
{
  OUTLINED_FUNCTION_4();
  v1 = v0;
  v38 = sub_2228300E4();
  v2 = OUTLINED_FUNCTION_0(v38);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_222830154();
  v11 = *(v10 + 16);
  if (v11)
  {
    v34 = v10;
    v35 = v1;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v14 = *(v12 + 64);
    OUTLINED_FUNCTION_3();
    v17 = v15 + v16;
    v36 = *(v12 + 56);
    v37 = v18;
    v19 = (v12 - 8);
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      v21 = v12;
      v37(v9, v17, v38);
      v22 = sub_222830084();
      (*v19)(v9, v38);
      v23 = *(v22 + 16);
      v24 = *(v20 + 16);
      if (__OFADD__(v24, v23))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v24 + v23 > *(v20 + 24) >> 1)
      {
        sub_2227BFAB4();
        v20 = v25;
      }

      if (*(v22 + 16))
      {
        v26 = (*(v20 + 24) >> 1) - *(v20 + 16);
        v27 = *(sub_22282FEF4() - 8);
        if (v26 < v23)
        {
          goto LABEL_19;
        }

        v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v29 = *(v27 + 72);
        swift_arrayInitWithCopy();

        v12 = v21;
        if (v23)
        {
          v30 = *(v20 + 16);
          v31 = __OFADD__(v30, v23);
          v32 = v30 + v23;
          if (v31)
          {
            goto LABEL_20;
          }

          *(v20 + 16) = v32;
        }
      }

      else
      {

        if (v23)
        {
          goto LABEL_18;
        }
      }

      v17 += v36;
      if (!--v11)
      {

        v1 = v35;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
LABEL_16:
    MEMORY[0x28223BE20](v33);
    *(&v34 - 2) = v1;
    sub_2227B86DC(sub_2227B9F84, (&v34 - 4), v20);

    OUTLINED_FUNCTION_2();
  }
}

uint64_t sub_2227B9204@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v11[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B740, &qword_2228320A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = sub_22282FED4();
  v11[2] = v8;
  v11[3] = v7;
  v11[1] = sub_22282FE74();
  sub_22282FEE4();
  sub_22282FE84();
  v9 = sub_22282FE94();
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  sub_22282FE64();
  sub_22282FEA4();
  return sub_22282FEB4();
}

void sub_2227B9378()
{
  OUTLINED_FUNCTION_4();
  v1 = v0;
  v3 = v2;
  v4 = sub_22282FEF4();
  v5 = OUTLINED_FUNCTION_0(v4);
  v66 = v6;
  v67 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v68 = v10 - v9;
  v64 = sub_2228300E4();
  v11 = OUTLINED_FUNCTION_0(v64);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = *(sub_222830154() + 16);
  v59 = v3;
  v60 = v1;
  if (!v19)
  {

    v28 = MEMORY[0x277D84F90];
LABEL_16:
    v39 = *(v28 + 16);
    if (!v39)
    {
LABEL_31:

      OUTLINED_FUNCTION_2();
      return;
    }

    v40 = *(v66 + 16);
    v41 = *(v66 + 80);
    OUTLINED_FUNCTION_3();
    v43 = v28 + v42;
    v63 = *(v44 + 56);
    v65 = v45;
    v46 = (v44 - 8);
    v47 = MEMORY[0x277D84F90];
    while (1)
    {
      v65(v68, v43, v67);
      if (sub_22282FE74() == v3 && v48 == v1)
      {
        break;
      }

      v50 = sub_222830514();

      if (v50)
      {
        goto LABEL_25;
      }

      (*v46)(v68, v67);
LABEL_30:
      v43 += v63;
      if (!--v39)
      {
        goto LABEL_31;
      }
    }

LABEL_25:
    v51 = sub_22282FED4();
    v53 = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = *(v47 + 16);
      sub_2227BFB74();
      v47 = v57;
    }

    v54 = *(v47 + 16);
    if (v54 >= *(v47 + 24) >> 1)
    {
      sub_2227BFB74();
      v47 = v58;
    }

    (*v46)(v68, v67);
    *(v47 + 16) = v54 + 1;
    v55 = v47 + 16 * v54;
    *(v55 + 32) = v51;
    *(v55 + 40) = v53;
    v3 = v59;
    v1 = v60;
    goto LABEL_30;
  }

  v21 = *(v13 + 16);
  v20 = v13 + 16;
  v22 = *(v20 + 64);
  OUTLINED_FUNCTION_3();
  v25 = v23 + v24;
  v61 = *(v20 + 56);
  v62 = v26;
  v27 = (v20 - 8);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    v29 = v20;
    v62(v18, v25, v64);
    v30 = sub_222830084();
    (*v27)(v18, v64);
    v31 = *(v30 + 16);
    v32 = *(v28 + 16);
    if (__OFADD__(v32, v31))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v32 + v31 > *(v28 + 24) >> 1)
    {
      sub_2227BFAB4();
      v28 = v33;
    }

    if (*(v30 + 16))
    {
      if ((*(v28 + 24) >> 1) - *(v28 + 16) < v31)
      {
        goto LABEL_34;
      }

      v34 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v35 = *(v66 + 72);
      swift_arrayInitWithCopy();

      v20 = v29;
      if (v31)
      {
        v36 = *(v28 + 16);
        v37 = __OFADD__(v36, v31);
        v38 = v36 + v31;
        if (v37)
        {
          goto LABEL_35;
        }

        *(v28 + 16) = v38;
      }
    }

    else
    {

      v20 = v29;
      if (v31)
      {
        goto LABEL_33;
      }
    }

    v25 += v61;
    if (!--v19)
    {

      v1 = v60;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_2227B979C()
{
  OUTLINED_FUNCTION_4();
  v0 = sub_2228300E4();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = *(sub_222830154() + 16);
  if (v9)
  {
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v12;
    v13 = *(v11 + 64);
    OUTLINED_FUNCTION_3();
    v16 = v14 + v15;
    v17 = *(v11 + 56);
    do
    {
      v10(v8, v16, v0);
      sub_222830094();
      sub_2228300A4();
      if (v18)
      {

        sub_222830094();

        sub_2228300C4();
      }

      (*(v11 - 8))(v8, v0);
      v16 += v17;
      --v9;
    }

    while (v9);

    OUTLINED_FUNCTION_2();
  }

  else
  {
    OUTLINED_FUNCTION_2();
  }
}

void sub_2227B990C()
{
  OUTLINED_FUNCTION_4();
  v58 = v1;
  v59 = v2;
  v3 = sub_222830064();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v62 = v10 - v9;
  v11 = sub_222830014();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v61 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v54 - v19;
  v21 = sub_2228300E4();
  v22 = OUTLINED_FUNCTION_0(v21);
  v66 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v29 = sub_222830194();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_222830184();
  v60 = v0;
  v33 = sub_222830154();
  v34 = sub_2227B9CA4(1, v33);
  v38 = (v37 >> 1) - v36;
  v65 = v32;
  v63 = v3;
  v56 = v20;
  if (v37 >> 1 == v36)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if ((v37 >> 1) <= v36)
    {
      __break(1u);
      return;
    }

    v54[1] = v34;
    v55 = v11;
    v57 = v6;
    v64 = v14;
    v39 = v66 + 16;
    v66 = *(v66 + 16);
    v40 = *(v39 + 56);
    v41 = v35 + v36 * v40;
    do
    {
      (v66)(v28, v41, v21);
      sub_2227B9D3C();
      (*(v39 - 8))(v28, v21);
      v41 += v40;
      --v38;
    }

    while (v38);
    swift_unknownObjectRelease();
    v11 = v55;
    v14 = v64;
    v6 = v57;
  }

  v42 = *(sub_222830144() + 16);
  if (v42)
  {
    v44 = *(v14 + 16);
    v43 = v14 + 16;
    v45 = *(v43 + 64);
    OUTLINED_FUNCTION_3();
    v55 = v46;
    v48 = v46 + v47;
    v59 = *(v43 + 56);
    v60 = v49;
    v57 = v6 + 1;
    v58 = (v43 - 8);
    v50 = v56;
    v64 = v43;
    v51 = v61;
    do
    {
      v60(v50, v48, v11);
      v52 = v62;
      sub_22282FFE4();
      v66 = sub_222830004();
      sub_22282FFF4();
      sub_22282FFD4();
      v53 = *v58;
      (*v58)(v50, v11);
      sub_222830104();
      (*v57)(v52, v63);
      v53(v51, v11);
      v48 += v59;
      --v42;
    }

    while (v42);
  }

  OUTLINED_FUNCTION_2();
}

uint64_t sub_2227B9CA4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2227BA0BC(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_2227BA014(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_2227B9D3C()
{
  OUTLINED_FUNCTION_4();
  v0 = sub_222830064();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_2228300E4();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  sub_222830074();
  if (v18)
  {
    sub_2228300A4();
    if (v19)
    {

      sub_222830134();
    }

    else
    {
      sub_2228300D4();
      sub_222830114();
      (*(v3 + 8))(v8, v0);
    }
  }

  else
  {
    sub_222830124();
  }

  sub_222830084();
  sub_222830094();
  (*(v12 + 8))(v17, v9);
  OUTLINED_FUNCTION_2();
}

void sub_2227B9EF8()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_2227BF8E8();
    *v0 = v4;
  }
}

void sub_2227B9F44(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_2227BF8E8();
    *v1 = v2;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2227BA014(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(sub_2228300E4() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2227BA0BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2227BA108(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B750, &qword_2228320B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2227BA170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B748, &qword_2228320A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2227BA1E0()
{
  result = qword_27D01B760;
  if (!qword_27D01B760)
  {
    sub_222830034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01B760);
  }

  return result;
}

uint64_t sub_2227BA298(__int128 *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B768, &qword_2228320C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v112 - v7;
  v9 = *(a1 + 1);
  v127 = *(a1 + 2);
  v128 = v9;
  v10 = *a1;
  v11 = *(a1 + 3);
  v125 = *(a1 + 4);
  v126 = v11;
  v12 = a1[1];
  v123 = *a1;
  *v124 = v12;
  *&v124[9] = *(a1 + 25);
  v115 = v10;

  sub_2227BAB74(&v127, v129, &qword_27D01B770, &qword_2228320D0);
  sub_2227BAB74(&v125, v129, &qword_27D01B770, &qword_2228320D0);
  sub_2227BAB74(&v128, v129, &qword_27D01B778, &qword_2228320D8);
  sub_2227BAB74(&v126, v129, &qword_27D01B780, &qword_2228320E0);
  v116 = a2;
  v117 = sub_2227C0DBC(a2);
  if (v13)
  {
    v14 = v13;
    LODWORD(v113) = *(a1 + 40);
    v15 = sub_2227C1DB8();
    v16 = *(v15 + 16);
    v112[1] = v15;
    if (v16)
    {
      v17 = v15;
      v114 = sub_22282FE24();
      v18 = (v17 + 48);
      v118 = MEMORY[0x277D84F90];
      do
      {
        v20 = *(v18 - 2);
        v19 = *(v18 - 1);
        v21 = *v18;
        *&v129[0] = v117;
        *(&v129[0] + 1) = v14;
        v121 = v20;
        v122 = v19;
        v22 = OUTLINED_FUNCTION_3_0();
        __swift_storeEnumTagSinglePayload(v22, v23, v24, v114);
        sub_2227BAC14();

        OUTLINED_FUNCTION_0_0();
        sub_222830434();
        OUTLINED_FUNCTION_4_0();
        v26 = v25;
        sub_2227BAC68(v8, &qword_27D01B768, &qword_2228320C8);
        if ((v26 & 1) != 0 || (v129 ^ v2) < 0x4000)
        {
        }

        else
        {
          v27 = sub_2227C11B8(v20, v19, v21);

          v28 = OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_5();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v32 = v118;
          }

          else
          {
            OUTLINED_FUNCTION_1_0(&v132);
            v32 = isUniquelyReferenced_nonNull_native;
          }

          v34 = *(v32 + 16);
          v33 = *(v32 + 24);
          if (v34 >= v33 >> 1)
          {
            OUTLINED_FUNCTION_6(v33);
            sub_2227BFC64();
            v32 = isUniquelyReferenced_nonNull_native;
          }

          *(v32 + 16) = v34 + 1;
          OUTLINED_FUNCTION_2_0(isUniquelyReferenced_nonNull_native, v30, v31, v32);
          v37 = v35 + v34 * v36;
          *(v37 + 32) = v27;
          *(v37 + 40) = v28;
          *(v37 + 48) = v129;
          *(v37 + 56) = v2;
          *(v37 + 64) = 1;
          *(v37 + 65) = v113;
        }

        v18 += 3;
        --v16;
      }

      while (v16);
    }

    else
    {
      v118 = MEMORY[0x277D84F90];
    }

    v43 = v127;
    v44 = *(v127 + 16);
    v114 = v14;
    if (v44)
    {
      v45 = sub_22282FE24();
      v46 = (v43 + 40);
      do
      {
        v47 = *(v46 - 1);
        v48 = *v46;
        *&v129[0] = v117;
        *(&v129[0] + 1) = v14;
        v121 = v47;
        v122 = v48;
        v49 = OUTLINED_FUNCTION_3_0();
        __swift_storeEnumTagSinglePayload(v49, v50, v51, v45);
        sub_2227BAC14();

        OUTLINED_FUNCTION_0_0();
        sub_222830434();
        OUTLINED_FUNCTION_4_0();
        v53 = v52;
        sub_2227BAC68(v8, &qword_27D01B768, &qword_2228320C8);

        if ((v53 & 1) == 0 && (v129 ^ v2) >= 0x4000)
        {

          v54 = OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_5();
          v55 = swift_isUniquelyReferenced_nonNull_native();
          if (v55)
          {
            v58 = v118;
          }

          else
          {
            OUTLINED_FUNCTION_1_0(&v132);
            v58 = v55;
          }

          v60 = *(v58 + 16);
          v59 = *(v58 + 24);
          if (v60 >= v59 >> 1)
          {
            OUTLINED_FUNCTION_6(v59);
            sub_2227BFC64();
            v58 = v55;
          }

          *(v58 + 16) = v60 + 1;
          OUTLINED_FUNCTION_2_0(v55, v56, v57, v58);
          v63 = v61 + v60 * v62;
          *(v63 + 32) = v115;
          *(v63 + 40) = v54;
          *(v63 + 48) = v129;
          *(v63 + 56) = v2;
          *(v63 + 64) = 2;
          *(v63 + 65) = v113;
          v14 = v114;
        }

        v46 += 2;
        --v44;
      }

      while (v44);
    }

    v64 = sub_2227C1E10();
    v65 = *(v64 + 16);
    v113 = v64;
    if (v65)
    {
      v66 = v64;
      v67 = sub_22282FE24();
      v2 = v66 + 40;
      v115 = v67;
      do
      {
        v68 = *(v2 - 8);
        v69 = *v2;
        *&v129[0] = v117;
        *(&v129[0] + 1) = v14;
        v121 = v68;
        v122 = v69;
        v70 = OUTLINED_FUNCTION_3_0();
        __swift_storeEnumTagSinglePayload(v70, v71, v72, v67);
        sub_2227BAC14();

        OUTLINED_FUNCTION_0_0();
        v73 = sub_222830434();
        v75 = v74;
        v77 = v76;
        sub_2227BAC68(v8, &qword_27D01B768, &qword_2228320C8);

        if ((v77 & 1) == 0 && (v73 ^ v75) >= 0x4000)
        {
          v78 = v123;
          v79 = v124[24];
          v80 = OUTLINED_FUNCTION_7();

          OUTLINED_FUNCTION_5();
          v81 = swift_isUniquelyReferenced_nonNull_native();
          if (v81)
          {
            v84 = v118;
          }

          else
          {
            OUTLINED_FUNCTION_1_0(&v132);
            v84 = v81;
          }

          v86 = *(v84 + 16);
          v85 = *(v84 + 24);
          if (v86 >= v85 >> 1)
          {
            OUTLINED_FUNCTION_6(v85);
            sub_2227BFC64();
            v84 = v81;
          }

          *(v84 + 16) = v86 + 1;
          OUTLINED_FUNCTION_2_0(v81, v82, v83, v84);
          v89 = v87 + v86 * v88;
          *(v89 + 32) = v78;
          *(v89 + 40) = v80;
          *(v89 + 48) = v73;
          *(v89 + 56) = v75;
          *(v89 + 64) = 3;
          *(v89 + 65) = v79;
          v14 = v114;
          v67 = v115;
        }

        v2 += 16;
        --v65;
      }

      while (v65);
    }

    v90 = *&v124[16];
    v91 = *(*&v124[16] + 16);
    if (v91)
    {
      v115 = sub_22282FE24();

      v92 = (v90 + 40);
      v113 = v90;
      do
      {
        v93 = *(v92 - 1);
        v94 = *v92;
        v121 = v117;
        v122 = v14;
        v119 = v93;
        v120 = v94;
        v95 = OUTLINED_FUNCTION_3_0();
        __swift_storeEnumTagSinglePayload(v95, v96, v97, v115);
        sub_2227BAC14();

        OUTLINED_FUNCTION_0_0();
        sub_222830434();
        OUTLINED_FUNCTION_4_0();
        v99 = v98;
        sub_2227BAC68(v8, &qword_27D01B768, &qword_2228320C8);
        if ((v99 & 1) != 0 || (&v121 ^ v2) < 0x4000)
        {
        }

        else
        {
          v100 = v124[24];
          v129[0] = v123;
          v129[1] = *v124;
          v130 = v90;
          v131 = v124[24];
          v101 = sub_2227C18B8(v93, v94, v129);

          if (v101)
          {
            v114 = OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_5();
            v102 = swift_isUniquelyReferenced_nonNull_native();
            if (v102)
            {
              v105 = v118;
            }

            else
            {
              OUTLINED_FUNCTION_1_0(&v132);
              v105 = v102;
            }

            v107 = *(v105 + 16);
            v106 = *(v105 + 24);
            if (v107 >= v106 >> 1)
            {
              OUTLINED_FUNCTION_6(v106);
              sub_2227BFC64();
              v105 = v102;
            }

            *(v105 + 16) = v107 + 1;
            OUTLINED_FUNCTION_2_0(v102, v103, v104, v105);
            v110 = v108 + v107 * v109;
            v111 = v114;
            *(v110 + 32) = v101;
            *(v110 + 40) = v111;
            *(v110 + 48) = &v121;
            *(v110 + 56) = v2;
            *(v110 + 64) = 0;
            *(v110 + 65) = v100;
            v90 = v113;
          }
        }

        v92 += 2;
        --v91;
      }

      while (v91);
    }

    return OUTLINED_FUNCTION_5();
  }

  else
  {
    if (qword_27D01B728 != -1)
    {
      swift_once();
    }

    v38 = sub_222830274();
    __swift_project_value_buffer(v38, qword_27D01BC00);
    v39 = sub_222830254();
    v40 = sub_2228303A4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2227A9000, v39, v40, "Could not extract utterance from tokenChain, unable to generate matches", v41, 2u);
      MEMORY[0x223DC2B60](v41, -1, -1);
    }

    sub_2227BAC68(&v128, &qword_27D01B778, &qword_2228320D8);
    sub_2227BAC68(&v127, &qword_27D01B770, &qword_2228320D0);
    sub_2227BAC68(&v126, &qword_27D01B780, &qword_2228320E0);
    sub_2227BAC68(&v125, &qword_27D01B770, &qword_2228320D0);
    return MEMORY[0x277D84F90];
  }
}