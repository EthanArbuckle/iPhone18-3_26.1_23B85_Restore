void sub_1B5306884(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

quasar::SimpleTokenizerOptions *quasar::SimpleTokenizerOptions::SimpleTokenizerOptions(quasar::SimpleTokenizerOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D051C8;
  std::string::basic_string[abi:ne200100]<0>(&v5, "tokenizer-file");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "tokenizer regular expression replacement (sed / perl -p style)");
  quasar::OptionValue<std::string>::OptionValue(this + 16, &v5, &v4, &__p, 125);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B5306968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5306B38(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

void sub_1B5306D00(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

quasar::InputHammerOptions *quasar::InputHammerOptions::InputHammerOptions(quasar::InputHammerOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D41088;
  std::string::basic_string[abi:ne200100]<0>(&v6, "filter-list-file");
  std::string::basic_string[abi:ne200100]<0>(&v5, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "filter list file");
  quasar::OptionValue<std::string>::OptionValue(this + 16, &v6, &v5, &__p, 133);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "source-locale");
  std::string::basic_string[abi:ne200100]<0>(&v5, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "source locale");
  quasar::OptionValue<std::string>::OptionValue(this + 176, &v6, &v5, &__p, 133);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "source-token");
  std::string::basic_string[abi:ne200100]<0>(&v5, "source tag for multilingual model");
  v2 = quasar::OptionValue<std::string>::value(this + 22);
  quasar::OptionValue<std::string>::OptionValue(this + 336, &v6, v2, &v5, 133);
  *(this + 58) = this + 176;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "reset-meta-info");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v5, "reset metaInfo json");
  quasar::OptionValue<BOOL>::OptionValue(this + 496, &v6, &__p, &v5, 133);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B5306F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  quasar::OptionValue<std::string>::~OptionValue(v27 + 336);
  quasar::OptionValue<std::string>::~OptionValue(v28);
  quasar::OptionValue<std::string>::~OptionValue(v27 + 16);
  _Unwind_Resume(a1);
}

void sub_1B53071CC(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

quasar::RomanizerOptions *quasar::RomanizerOptions::RomanizerOptions(quasar::RomanizerOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D1ED00;
  std::string::basic_string[abi:ne200100]<0>(&v5, "romanizer");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "romanizer");
  quasar::OptionValue<std::string>::OptionValue(this + 16, &v5, &v4, &__p, 133);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "pron-guide-model-file");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "pron guide model file");
  quasar::OptionValue<std::string>::OptionValue(this + 176, &v5, &v4, &__p, 133);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "pron-guide-preprocessing");
  __p.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&v4, "pron guide preprocessing (splitting into characters and <space> insertion)");
  quasar::OptionValue<BOOL>::OptionValue(this + 336, &v5, &__p, &v4, 133);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "strip-token");
  __p.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&v4, "strip tokenizer artefacts on romanizer input");
  quasar::OptionValue<BOOL>::OptionValue(this + 480, &v5, &__p, &v4, 133);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "enable-memory-map");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v4, "memory map pronunciator model");
  quasar::OptionValue<BOOL>::OptionValue(this + 624, &v5, &__p, &v4, 198);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "share-pron-guide-model");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v4, "share model instance with other identical blocks");
  quasar::OptionValue<BOOL>::OptionValue(this + 768, &v5, &__p, &v4, 198);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "dynamic-switch-key");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "dynamic weight switching key for espresso model");
  quasar::OptionValue<std::string>::OptionValue(this + 912, &v5, &v4, &__p, 267);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B5307518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  quasar::OptionValue<BOOL>::~OptionValue(v21 + 768);
  quasar::OptionValue<BOOL>::~OptionValue(v21 + 624);
  quasar::OptionValue<BOOL>::~OptionValue(v21 + 480);
  quasar::OptionValue<BOOL>::~OptionValue(v21 + 336);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 176);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 16);
  _Unwind_Resume(a1);
}

void sub_1B53075D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  JUMPOUT(0x1B53075ACLL);
}

void sub_1B530760C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  JUMPOUT(0x1B53075B4);
}

void sub_1B5307644(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  JUMPOUT(0x1B53075BCLL);
}

void sub_1B530767C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  JUMPOUT(0x1B53075C4);
}

void sub_1B53076CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  JUMPOUT(0x1B53075CCLL);
}

void sub_1B5307894(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

quasar::SentencePieceOptions *quasar::SentencePieceOptions::SentencePieceOptions(quasar::SentencePieceOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D07C48;
  std::string::basic_string[abi:ne200100]<0>(&v5, "sentence-piece-file");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "sentence piece model file");
  quasar::OptionValue<std::string>::OptionValue(this + 16, &v5, &v4, &__p, 135);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "reset-meta-info");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v4, "reset metaInfo json");
  quasar::OptionValue<BOOL>::OptionValue(this + 176, &v5, &__p, &v4, 135);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "action");
  std::string::basic_string[abi:ne200100]<0>(&v4, "encode");
  std::string::basic_string[abi:ne200100]<0>(&__p, "action to perform (encode/decode/decode-api)");
  quasar::OptionValue<std::string>::OptionValue(this + 320, &v5, &v4, &__p, 135);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "confidence-threshold");
  __p.__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v4, "confidence threshold");
  quasar::OptionValue<double>::OptionValue(this + 480, &v5, &__p, &v4, 153);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B5307AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  quasar::OptionValue<std::string>::~OptionValue(v21 + 320);
  quasar::OptionValue<BOOL>::~OptionValue(v21 + 176);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 16);
  _Unwind_Resume(a1);
}

void sub_1B5307B4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  JUMPOUT(0x1B5307B3CLL);
}

void sub_1B5307B84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  JUMPOUT(0x1B5307B44);
}

quasar::QualityEstimatorBlock *quasar::QualityEstimatorBlock::QualityEstimatorBlock(quasar::QualityEstimatorBlock *this)
{
  *(this + 207) = &unk_1F2D08820;
  *(this + 209) = 0;
  *(this + 211) = 0;
  *(this + 210) = 0;
  *(this + 208) = this + 1672;
  *(this + 213) = 0;
  *(this + 212) = 0;
  *(this + 1712) = 1;
  v2 = off_1F2D111F8;
  v3 = off_1F2D111F0;
  *this = off_1F2D111F0;
  *(this + *(v3 - 3)) = v2;
  quasar::QualityEstimatorOptions::QualityEstimatorOptions((this + 8));
  v4 = off_1F2D11208;
  v5 = off_1F2D11200;
  *(this + 183) = off_1F2D11200;
  *(this + *(v5 - 3) + 1464) = v4;
  *this = &unk_1F2D11088;
  *(this + 207) = &unk_1F2D11188;
  *(this + 183) = &unk_1F2D110E8;
  std::string::basic_string[abi:ne200100]<0>(__p, "source");
  if (SHIBYTE(v13) < 0)
  {
    std::string::__init_copy_ctor_external((this + 1472), __p[0], __p[1]);
    v6 = SHIBYTE(v13);
    *(this + 1496) = 0;
    *(this + 188) = 0;
    *(this + 190) = 0;
    *(this + 189) = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(this + 92) = *__p;
    *(this + 186) = v13;
    *(this + 1496) = 0;
    *(this + 188) = 0;
    *(this + 190) = 0;
    *(this + 189) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v10, "nbest");
  v7 = (this + 1528);
  if (SHIBYTE(v11) < 0)
  {
    std::string::__init_copy_ctor_external(v7, v10[0], v10[1]);
    v8 = SHIBYTE(v11);
    *(this + 1552) = 0;
    *(this + 195) = 0;
    *(this + 197) = 0;
    *(this + 196) = 0;
    if (v8 < 0)
    {
      operator delete(v10[0]);
    }
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *v10;
    *(this + 193) = v11;
    *(this + 1552) = 0;
    *(this + 195) = 0;
    *(this + 197) = 0;
    *(this + 196) = 0;
  }

  *(this + 206) = 0;
  *(this + 102) = 0u;
  *(this + 101) = 0u;
  *(this + 100) = 0u;
  *(this + 99) = 0u;
  return this;
}

void sub_1B5307F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  quasar::ProcessingInput::~ProcessingInput(v22);
  quasar::ConfiguredProcessingBlock<quasar::QualityEstimatorOptions>::~ConfiguredProcessingBlock(v20, (v23 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v21);
  _Unwind_Resume(a1);
}

uint64_t quasar::ConfiguredProcessingBlock<quasar::QualityEstimatorOptions>::~ConfiguredProcessingBlock(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[1];
  *(a1 + 8) = &unk_1F2D11048;
  *(a1 + 1304) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 1440, *(a1 + 1448));
  if (*(a1 + 1431) < 0)
  {
    operator delete(*(a1 + 1408));
  }

  *(a1 + 1304) = &unk_1F2D08890;
  v4 = *(a1 + 1400);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(a1 + 1383) < 0)
  {
    operator delete(*(a1 + 1360));
  }

  if (*(a1 + 1359) < 0)
  {
    operator delete(*(a1 + 1336));
  }

  if (*(a1 + 1335) < 0)
  {
    operator delete(*(a1 + 1312));
  }

  *(a1 + 1144) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 1280, *(a1 + 1288));
  if (*(a1 + 1271) < 0)
  {
    operator delete(*(a1 + 1248));
  }

  *(a1 + 1144) = &unk_1F2D08890;
  v5 = *(a1 + 1240);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(a1 + 1223) < 0)
  {
    operator delete(*(a1 + 1200));
  }

  if (*(a1 + 1199) < 0)
  {
    operator delete(*(a1 + 1176));
  }

  if (*(a1 + 1175) < 0)
  {
    operator delete(*(a1 + 1152));
  }

  *(a1 + 984) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 1120, *(a1 + 1128));
  if (*(a1 + 1111) < 0)
  {
    operator delete(*(a1 + 1088));
  }

  *(a1 + 984) = &unk_1F2D08890;
  v6 = *(a1 + 1080);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(a1 + 1063) < 0)
  {
    operator delete(*(a1 + 1040));
  }

  if (*(a1 + 1039) < 0)
  {
    operator delete(*(a1 + 1016));
  }

  if (*(a1 + 1015) < 0)
  {
    operator delete(*(a1 + 992));
  }

  *(a1 + 824) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 960, *(a1 + 968));
  if (*(a1 + 951) < 0)
  {
    operator delete(*(a1 + 928));
  }

  *(a1 + 824) = &unk_1F2D08890;
  v7 = *(a1 + 920);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(a1 + 903) < 0)
  {
    operator delete(*(a1 + 880));
  }

  if (*(a1 + 879) < 0)
  {
    operator delete(*(a1 + 856));
  }

  if (*(a1 + 855) < 0)
  {
    operator delete(*(a1 + 832));
  }

  *(a1 + 664) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 800, *(a1 + 808));
  if (*(a1 + 791) < 0)
  {
    operator delete(*(a1 + 768));
  }

  *(a1 + 664) = &unk_1F2D08890;
  v8 = *(a1 + 760);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(a1 + 743) < 0)
  {
    operator delete(*(a1 + 720));
  }

  if (*(a1 + 719) < 0)
  {
    operator delete(*(a1 + 696));
  }

  if (*(a1 + 695) < 0)
  {
    operator delete(*(a1 + 672));
  }

  *(a1 + 504) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 640, *(a1 + 648));
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  *(a1 + 504) = &unk_1F2D08890;
  v9 = *(a1 + 600);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(a1 + 583) < 0)
  {
    operator delete(*(a1 + 560));
  }

  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  *(a1 + 344) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 480, *(a1 + 488));
  if (*(a1 + 471) < 0)
  {
    operator delete(*(a1 + 448));
  }

  *(a1 + 344) = &unk_1F2D08890;
  v10 = *(a1 + 440);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  *(a1 + 184) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 320, *(a1 + 328));
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  *(a1 + 184) = &unk_1F2D08890;
  v11 = *(a1 + 280);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  *(a1 + 24) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 160, *(a1 + 168));
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  *(a1 + 24) = &unk_1F2D08890;
  v12 = *(a1 + 120);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

quasar::QualityEstimatorOptions *quasar::QualityEstimatorOptions::QualityEstimatorOptions(quasar::QualityEstimatorOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D11048;
  std::string::basic_string[abi:ne200100]<0>(&v5, "src-locale");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "the source locale");
  quasar::OptionValue<std::string>::OptionValue(this + 16, &v5, &v4, &__p, 137);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "tgt-locale");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "the target locale");
  quasar::OptionValue<std::string>::OptionValue(this + 176, &v5, &v4, &__p, 137);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "features");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "list of features");
  quasar::OptionValue<std::string>::OptionValue(this + 336, &v5, &v4, &__p, 137);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "src-ovs-file");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "the source OVS file");
  quasar::OptionValue<std::string>::OptionValue(this + 496, &v5, &v4, &__p, 137);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "tgt-ovs-file");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "the target OVS file");
  quasar::OptionValue<std::string>::OptionValue(this + 656, &v5, &v4, &__p, 137);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "fertility-file");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "the fertility file");
  quasar::OptionValue<std::string>::OptionValue(this + 816, &v5, &v4, &__p, 137);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "min-trans-len-percent");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "the minimum translation length (in percent of expected length)");
  quasar::OptionValue<std::string>::OptionValue(this + 976, &v5, &v4, &__p, 137);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "max-trans-len-percent");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "the maximum translation length (in percent of expected length)");
  quasar::OptionValue<std::string>::OptionValue(this + 1136, &v5, &v4, &__p, 137);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "regex-file");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "the regular expression file");
  quasar::OptionValue<std::string>::OptionValue(this + 1296, &v5, &v4, &__p, 137);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B5308A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  quasar::OptionValue<std::string>::~OptionValue(v21 + 1136);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 976);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 816);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 656);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 496);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 336);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 176);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 16);
  _Unwind_Resume(a1);
}

void sub_1B5308B00(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  JUMPOUT(0x1B5308AC8);
}

void sub_1B5308B50(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  JUMPOUT(0x1B5308AD0);
}

void sub_1B5308BA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  JUMPOUT(0x1B5308AD8);
}

void sub_1B5308BF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  JUMPOUT(0x1B5308AE0);
}

void sub_1B5308C40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  JUMPOUT(0x1B5308AE8);
}

void sub_1B5308C90(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  JUMPOUT(0x1B5308AF0);
}

void sub_1B5308CE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  JUMPOUT(0x1B5308AF8);
}

quasar::PDecForceAlignBlock *quasar::PDecForceAlignBlock::PDecForceAlignBlock(quasar::PDecForceAlignBlock *this)
{
  *(this + 311) = &unk_1F2D08820;
  *(this + 313) = 0;
  *(this + 315) = 0;
  *(this + 314) = 0;
  *(this + 312) = this + 2504;
  *(this + 317) = 0;
  *(this + 316) = 0;
  *(this + 2544) = 1;
  v2 = off_1F2CFFD50;
  v3 = off_1F2CFFD48;
  *this = off_1F2CFFD48;
  *(this + *(v3 - 3)) = v2;
  quasar::PDecForceAlignOptions::PDecForceAlignOptions((this + 8));
  v4 = off_1F2CFFD60;
  v5 = off_1F2CFFD58;
  *(this + 287) = off_1F2CFFD58;
  *(this + *(v5 - 3) + 2296) = v4;
  *this = &unk_1F2CFFBE0;
  *(this + 311) = &unk_1F2CFFCE0;
  *(this + 287) = &unk_1F2CFFC40;
  std::string::basic_string[abi:ne200100]<0>(__p, "source");
  if (SHIBYTE(v13) < 0)
  {
    std::string::__init_copy_ctor_external(this + 96, __p[0], __p[1]);
    v6 = SHIBYTE(v13);
    *(this + 2328) = 0;
    *(this + 292) = 0;
    *(this + 294) = 0;
    *(this + 293) = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(this + 144) = *__p;
    *(this + 290) = v13;
    *(this + 2328) = 0;
    *(this + 292) = 0;
    *(this + 294) = 0;
    *(this + 293) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v10, "target");
  v7 = (this + 2360);
  if (SHIBYTE(v11) < 0)
  {
    std::string::__init_copy_ctor_external(v7, v10[0], v10[1]);
    v8 = SHIBYTE(v11);
    *(this + 2384) = 0;
    *(this + 299) = 0;
    *(this + 301) = 0;
    *(this + 300) = 0;
    if (v8 < 0)
    {
      operator delete(v10[0]);
    }
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *v10;
    *(this + 297) = v11;
    *(this + 2384) = 0;
    *(this + 299) = 0;
    *(this + 301) = 0;
    *(this + 300) = 0;
  }

  *(this + 608) = 0;
  *(this + 151) = 0u;
  *(this + 2440) = 0;
  *(this + 2444) = 0x400000003;
  *(this + 2456) = 0u;
  *(this + 2472) = 0u;
  return this;
}

void sub_1B53090A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  quasar::ProcessingInput::~ProcessingInput(v22);
  quasar::ConfiguredProcessingBlock<quasar::PDecForceAlignOptions>::~ConfiguredProcessingBlock(v20, (v23 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v21);
  _Unwind_Resume(a1);
}

uint64_t *quasar::ConfiguredProcessingBlock<quasar::PDecForceAlignOptions>::~ConfiguredProcessingBlock(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[1];
  quasar::PDecForceAlignOptions::~PDecForceAlignOptions((a1 + 1));
  return a1;
}

quasar::PDecForceAlignOptions *quasar::PDecForceAlignOptions::PDecForceAlignOptions(quasar::PDecForceAlignOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2CFFBA0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "model-file");
  std::string::basic_string[abi:ne200100]<0>(&v5, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "mt model file name");
  quasar::OptionValue<std::string>::OptionValue(this + 16, &v6, &v5, &__p, 162);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "model-type");
  std::string::basic_string[abi:ne200100]<0>(&v5, "kaldi");
  std::string::basic_string[abi:ne200100]<0>(&__p, "translation model type (kaldi/espresso)");
  quasar::OptionValue<std::string>::OptionValue(this + 176, &v6, &v5, &__p, 226);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "enable-memory-map");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v5, "use memory map");
  quasar::OptionValue<BOOL>::OptionValue(this + 336, &v6, &__p, &v5, 162);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "nbest");
  LODWORD(__p.__r_.__value_.__l.__data_) = 1;
  std::string::basic_string[abi:ne200100]<0>(&v5, "maximum entries in target nbest list to process");
  quasar::OptionValue<int>::OptionValue(this + 480, &v6, &__p, &v5, 162);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "shortlist-lang-pair");
  std::string::basic_string[abi:ne200100]<0>(&v5, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "language pair used for shortlist");
  quasar::OptionValue<std::string>::OptionValue(this + 624, &v6, &v5, &__p, 228);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "shortlist-cond-n");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v5, "top n in condition table used for shortlist");
  quasar::OptionValue<int>::OptionValue(this + 784, &v6, &__p, &v5, 228);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "shortlist-freq-n");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v5, "top n in freq words used for shortlist");
  quasar::OptionValue<int>::OptionValue(this + 928, &v6, &__p, &v5, 228);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "source-token");
  std::string::basic_string[abi:ne200100]<0>(&v5, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "source tag for multilingual model");
  quasar::OptionValue<std::string>::OptionValue(this + 1072, &v6, &v5, &__p, 162);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "target-token");
  std::string::basic_string[abi:ne200100]<0>(&v5, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "target tag for multilingual model");
  quasar::OptionValue<std::string>::OptionValue(this + 1232, &v6, &v5, &__p, 162);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "dynamic-switch-key");
  std::string::basic_string[abi:ne200100]<0>(&v5, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "dynamic weight switching key for espresso model");
  quasar::OptionValue<std::string>::OptionValue(this + 1392, &v6, &v5, &__p, 267);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "source-model-tag");
  std::string::basic_string[abi:ne200100]<0>(&v5, "source tag for multilingual model switching");
  v2 = quasar::OptionValue<std::string>::value(this + 134);
  quasar::OptionValue<std::string>::OptionValue(this + 1552, &v6, v2, &v5, 162);
  *(this + 210) = this + 1072;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "share-translation-model");
  __p.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&v5, "share translation model");
  quasar::OptionValue<BOOL>::OptionValue(this + 1712, &v6, &__p, &v5, 194);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "use-sentencepiece-ids");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v5, "use sentencepiece ids directly, drop dictionaries");
  quasar::OptionValue<BOOL>::OptionValue(this + 1856, &v6, &__p, &v5, 242);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "include-eos");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v5, "include the score for the EOS symbol");
  quasar::OptionValue<BOOL>::OptionValue(this + 2000, &v6, &__p, &v5, 233);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "score-only");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v5, "force decode only, without alignment");
  quasar::OptionValue<BOOL>::OptionValue(this + 2144, &v6, &__p, &v5, 233);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B530982C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  quasar::OptionValue<BOOL>::~OptionValue(v24 + 2000);
  quasar::OptionValue<BOOL>::~OptionValue(v24 + 1856);
  quasar::OptionValue<BOOL>::~OptionValue(v24 + 1712);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 1552);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 1392);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 1232);
  quasar::OptionValue<std::string>::~OptionValue(v25);
  quasar::OptionValue<int>::~OptionValue(v24 + 928);
  quasar::OptionValue<int>::~OptionValue(v24 + 784);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 624);
  quasar::OptionValue<int>::~OptionValue(v24 + 480);
  quasar::OptionValue<BOOL>::~OptionValue(v24 + 336);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 176);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 16);
  _Unwind_Resume(a1);
}

void sub_1B5309910(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B53098A8);
}

void sub_1B5309948(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B53098B0);
}

void sub_1B5309980(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B53098B8);
}

void sub_1B5309DE4(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

quasar::FilterBlockOptions *quasar::FilterBlockOptions::FilterBlockOptions(quasar::FilterBlockOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2CFCB58;
  std::string::basic_string[abi:ne200100]<0>(&v6, "locale-validation");
  v4.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "check source locale is compatible with metainfo locale");
  quasar::OptionValue<BOOL>::OptionValue(this + 16, &v6, &v4, &__p, 219);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "source-locale");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  std::string::basic_string[abi:ne200100]<0>(&v4, "source locale");
  quasar::OptionValue<std::string>::OptionValue(this + 160, &v6, &__p, &v4, 163);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "nbest");
  LODWORD(v4.__r_.__value_.__l.__data_) = -1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "maximum nbest list size (default: don't limit nbest size)");
  quasar::OptionValue<int>::OptionValue(this + 328, &v6, &v4, &__p, 163);
  *(this + 40) = &unk_1F2D0BAE8;
  *(this + 41) = &unk_1F2D0BB28;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "annotation-based-filtering");
  v4.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "filter based on annotation in the metainfo");
  v2 = quasar::OptionValue<BOOL>::OptionValue(this + 480, &v6, &v4, &__p, 173);
  *(this + 59) = &unk_1F2D0B998;
  *v2 = &unk_1F2D0B9D8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "structured-prediction-filtering");
  v4.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "Filter out all incomplete structured prediction spans");
  quasar::OptionValue<BOOL>::OptionValue(this + 624, &v6, &v4, &__p, 264);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B530A0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  quasar::OverridableOptionValue<BOOL>::~OverridableOptionValue(v26);
  quasar::OptionValue<int>::~OptionValue(v25);
  quasar::OptionValue<std::string>::~OptionValue(v24 + 160);
  quasar::OptionValue<BOOL>::~OptionValue(v24 + 16);
  _Unwind_Resume(a1);
}

void sub_1B530A158(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B530A140);
}

void sub_1B530A190(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  JUMPOUT(0x1B530A148);
}

void sub_1B530A1E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B530A150);
}

std::string *quasar::SelectBlock::SelectBlock(std::string *this)
{
  this[27].__r_.__value_.__r.__words[2] = &unk_1F2D08820;
  this[28].__r_.__value_.__l.__size_ = 0;
  this[29].__r_.__value_.__r.__words[0] = 0;
  this[28].__r_.__value_.__r.__words[2] = 0;
  this[28].__r_.__value_.__r.__words[0] = &this[28].__r_.__value_.__l.__size_;
  this[29].__r_.__value_.__r.__words[2] = 0;
  this[29].__r_.__value_.__l.__size_ = 0;
  this[30].__r_.__value_.__s.__data_[0] = 1;
  v2 = off_1F2CFAD18;
  v3 = off_1F2CFAD10;
  this->__r_.__value_.__r.__words[0] = off_1F2CFAD10;
  *(this->__r_.__value_.__r.__words + *(v3 - 3)) = v2;
  quasar::SelectBlockOptions::SelectBlockOptions(&this->__r_.__value_.__r.__words[1]);
  v4 = off_1F2CFAD28;
  v5 = off_1F2CFAD20;
  this[22].__r_.__value_.__r.__words[2] = off_1F2CFAD20;
  *(&this[22].__r_.__value_.__r.__words[2] + *(v5 - 3)) = v4;
  this->__r_.__value_.__r.__words[0] = &unk_1F2CFABB0;
  this[27].__r_.__value_.__r.__words[2] = &unk_1F2CFACA8;
  this[22].__r_.__value_.__r.__words[2] = &unk_1F2CFAC08;
  std::string::basic_string[abi:ne200100]<0>(__p, "control");
  if (SHIBYTE(v13) < 0)
  {
    std::string::__init_copy_ctor_external(this + 23, __p[0], __p[1]);
    v6 = SHIBYTE(v13);
    this[24].__r_.__value_.__s.__data_[0] = 0;
    this[24].__r_.__value_.__l.__size_ = 0;
    this[25].__r_.__value_.__r.__words[0] = 0;
    this[24].__r_.__value_.__r.__words[2] = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&this[23].__r_.__value_.__l.__data_ = *__p;
    this[23].__r_.__value_.__r.__words[2] = v13;
    this[24].__r_.__value_.__s.__data_[0] = 0;
    this[24].__r_.__value_.__l.__size_ = 0;
    this[25].__r_.__value_.__r.__words[0] = 0;
    this[24].__r_.__value_.__r.__words[2] = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v10, "value");
  v7 = (this + 608);
  if (SHIBYTE(v11) < 0)
  {
    std::string::__init_copy_ctor_external(v7, v10[0], v10[1]);
    v8 = SHIBYTE(v11);
    this[26].__r_.__value_.__s.__data_[8] = 0;
    this[26].__r_.__value_.__r.__words[2] = 0;
    this[27].__r_.__value_.__l.__size_ = 0;
    this[27].__r_.__value_.__r.__words[0] = 0;
    if (v8 < 0)
    {
      operator delete(v10[0]);
    }
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *v10;
    this[26].__r_.__value_.__r.__words[0] = v11;
    this[26].__r_.__value_.__s.__data_[8] = 0;
    this[26].__r_.__value_.__r.__words[2] = 0;
    this[27].__r_.__value_.__l.__size_ = 0;
    this[27].__r_.__value_.__r.__words[0] = 0;
  }

  return this;
}

void sub_1B530A570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  quasar::ProcessingInput::~ProcessingInput(v22);
  quasar::ConfiguredProcessingBlock<quasar::SelectBlockOptions>::~ConfiguredProcessingBlock(v20, (v23 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v21);
  _Unwind_Resume(a1);
}

uint64_t *quasar::ConfiguredProcessingBlock<quasar::SelectBlockOptions>::~ConfiguredProcessingBlock(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[1];
  quasar::SelectBlockOptions::~SelectBlockOptions((a1 + 1));
  return a1;
}

quasar::SelectBlockOptions *quasar::SelectBlockOptions::SelectBlockOptions(quasar::SelectBlockOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2CFAB70;
  std::string::basic_string[abi:ne200100]<0>(v3, "match-key");
  std::string::basic_string[abi:ne200100]<0>(&v5, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "metadata key to match on");
  quasar::OptionValue<std::string>::OptionValue(this + 16, v3, &v5, &__p, 165);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "match-pattern");
  quasar::PTree::PTree(v3);
  std::string::basic_string[abi:ne200100]<0>(&__p, "metadata value match pattern");
  quasar::OptionValue<quasar::PTree>::OptionValue(this + 176, &v5, v3, &__p, 165);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::PTree::~PTree(v3);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v3, "match-wildcard");
  std::string::basic_string[abi:ne200100]<0>(&v5, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "wildcard string for match-pattern, that can match any subtree");
  quasar::OptionValue<std::string>::OptionValue(this + 376, v3, &v5, &__p, 165);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3[0].__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B530A82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  quasar::OptionValue<quasar::PTree>::~OptionValue(v25 + 176);
  quasar::OptionValue<std::string>::~OptionValue(v25 + 16);
  _Unwind_Resume(a1);
}

void sub_1B530A8D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 17) < 0)
  {
    operator delete(*(v25 - 40));
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  JUMPOUT(0x1B530A8D0);
}

void sub_1B530AAA8(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

quasar::CaseMapOptions *quasar::CaseMapOptions::CaseMapOptions(quasar::CaseMapOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D39908;
  std::string::basic_string[abi:ne200100]<0>(&v5, "locale");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "locale for case mapping (if not set use locale independent mapping)");
  quasar::OptionValue<std::string>::OptionValue(this + 16, &v5, &v4, &__p, 167);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "capitalize-camel-case");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v4, "Capitalize camel-case first tokens");
  quasar::OptionValue<BOOL>::OptionValue(this + 176, &v5, &__p, &v4, 180);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "exception-file");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "Path to file with additional exceptions that should not be capitalized");
  quasar::OptionValue<std::string>::OptionValue(this + 320, &v5, &v4, &__p, 180);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B530AC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  quasar::OptionValue<BOOL>::~OptionValue(v21 + 176);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 16);
  _Unwind_Resume(a1);
}

void sub_1B530ACFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  JUMPOUT(0x1B530ACF4);
}

void sub_1B530AEEC(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

quasar::GenderVerifierOptions *quasar::GenderVerifierOptions::GenderVerifierOptions(quasar::GenderVerifierOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D3D710;
  std::string::basic_string[abi:ne200100]<0>(&v5, "inflections-file");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "inflection list for gendered words.");
  quasar::OptionValue<std::string>::OptionValue(this + 16, &v5, &v4, &__p, 235);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "locale");
  std::string::basic_string[abi:ne200100]<0>(&v4, "es_ES");
  std::string::basic_string[abi:ne200100]<0>(&__p, "locale to use for tokenization.");
  quasar::OptionValue<std::string>::OptionValue(this + 176, &v5, &v4, &__p, 235);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B530B048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  quasar::OptionValue<std::string>::~OptionValue(v21 + 16);
  _Unwind_Resume(a1);
}

quasar::PlaceholderBlock *quasar::PlaceholderBlock::PlaceholderBlock(quasar::PlaceholderBlock *this)
{
  *(this + 94) = &unk_1F2D08820;
  *(this + 96) = 0;
  *(this + 98) = 0;
  *(this + 97) = 0;
  *(this + 95) = this + 768;
  *(this + 100) = 0;
  *(this + 99) = 0;
  *(this + 808) = 1;
  v2 = off_1F2D3C990;
  v3 = off_1F2D3C988;
  *this = off_1F2D3C988;
  *(this + *(v3 - 3)) = v2;
  quasar::PlaceholderOptions::PlaceholderOptions((this + 8));
  v4 = off_1F2D3C9A0;
  v5 = off_1F2D3C998;
  *(this + 79) = off_1F2D3C998;
  *(this + *(v5 - 3) + 632) = v4;
  *this = &unk_1F2D3C820;
  *(this + 94) = &unk_1F2D3C920;
  *(this + 79) = &unk_1F2D3C880;
  std::string::basic_string[abi:ne200100]<0>(__p, "in");
  if (SHIBYTE(v13) < 0)
  {
    std::string::__init_copy_ctor_external((this + 640), __p[0], __p[1]);
    v6 = SHIBYTE(v13);
    *(this + 664) = 0;
    *(this + 84) = 0;
    *(this + 86) = 0;
    *(this + 85) = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(this + 40) = *__p;
    *(this + 82) = v13;
    *(this + 664) = 0;
    *(this + 84) = 0;
    *(this + 86) = 0;
    *(this + 85) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v10, "tokens");
  v7 = (this + 696);
  if (SHIBYTE(v11) < 0)
  {
    std::string::__init_copy_ctor_external(v7, v10[0], v10[1]);
    v8 = SHIBYTE(v11);
    *(this + 720) = 0;
    *(this + 91) = 0;
    *(this + 93) = 0;
    *(this + 92) = 0;
    if (v8 < 0)
    {
      operator delete(v10[0]);
    }
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *v10;
    *(this + 89) = v11;
    *(this + 720) = 0;
    *(this + 91) = 0;
    *(this + 93) = 0;
    *(this + 92) = 0;
  }

  return this;
}

void sub_1B530B43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  quasar::ProcessingInput::~ProcessingInput(v22);
  quasar::ConfiguredProcessingBlock<quasar::PlaceholderOptions>::~ConfiguredProcessingBlock(v20, (v23 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v21);
  _Unwind_Resume(a1);
}

uint64_t *quasar::ConfiguredProcessingBlock<quasar::PlaceholderOptions>::~ConfiguredProcessingBlock(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[1];
  quasar::PlaceholderOptions::~PlaceholderOptions((a1 + 1));
  return a1;
}

quasar::PlaceholderOptions *quasar::PlaceholderOptions::PlaceholderOptions(quasar::PlaceholderOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D3C7E0;
  std::string::basic_string[abi:ne200100]<0>(&v5, "enable");
  v3.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "output placeholders in the target");
  quasar::OptionValue<BOOL>::OptionValue(this + 16, &v5, &v3, &__p, 246);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "placeholder-tag");
  std::string::basic_string[abi:ne200100]<0>(&__p, "<-->");
  std::string::basic_string[abi:ne200100]<0>(&v3, "placeholder tag");
  quasar::OptionValue<std::string>::OptionValue(this + 160, &v5, &__p, &v3, 246);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "placeholder-size");
  std::string::basic_string[abi:ne200100]<0>(&__p, "0");
  std::string::basic_string[abi:ne200100]<0>(&v3, "placeholder size in the UI");
  quasar::OptionValue<std::string>::OptionValue(this + 320, &v5, &__p, &v3, 246);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "max-placeholders");
  LODWORD(v3.__r_.__value_.__l.__data_) = 1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "limit on the number of placeholders");
  quasar::OptionValue<int>::OptionValue(this + 480, &v5, &v3, &__p, 246);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B530B750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  quasar::OptionValue<std::string>::~OptionValue(v21 + 320);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 160);
  quasar::OptionValue<BOOL>::~OptionValue(v21 + 16);
  _Unwind_Resume(a1);
}

void sub_1B530B7F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  JUMPOUT(0x1B530B7E4);
}

void sub_1B530B844(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  JUMPOUT(0x1B530B7ECLL);
}

void quasar::PlaceholderOptions::~PlaceholderOptions(quasar::PlaceholderOptions *this)
{
  *this = &unk_1F2D3C7E0;
  *(this + 60) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 600, *(this + 76));
  *(this + 60) = &unk_1F2D08890;
  v2 = *(this + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 559) < 0)
  {
    operator delete(*(this + 67));
  }

  if (*(this + 535) < 0)
  {
    operator delete(*(this + 64));
  }

  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  *(this + 40) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 456, *(this + 58));
  if (*(this + 447) < 0)
  {
    operator delete(*(this + 53));
  }

  *(this + 40) = &unk_1F2D08890;
  v3 = *(this + 52);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 399) < 0)
  {
    operator delete(*(this + 47));
  }

  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  *(this + 20) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 296, *(this + 38));
  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  *(this + 20) = &unk_1F2D08890;
  v4 = *(this + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
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
  v5 = *(this + 14);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
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

void sub_1B530BC58(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

quasar::DumpBlockOptions *quasar::DumpBlockOptions::DumpBlockOptions(quasar::DumpBlockOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D114A8;
  std::string::basic_string[abi:ne200100]<0>(&v5, "separator");
  std::string::basic_string[abi:ne200100]<0>(&v4, "|||");
  std::string::basic_string[abi:ne200100]<0>(&__p, "string for separating nbest entries");
  quasar::OptionValue<std::string>::OptionValue(this + 16, &v5, &v4, &__p, 240);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "use-meta-info");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v4, "should meta info be dumped");
  quasar::OptionValue<BOOL>::OptionValue(this + 176, &v5, &__p, &v4, 240);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "meta-separator");
  std::string::basic_string[abi:ne200100]<0>(&v4, "|||");
  std::string::basic_string[abi:ne200100]<0>(&__p, "string for separating output string from meta data");
  quasar::OptionValue<std::string>::OptionValue(this + 320, &v5, &v4, &__p, 240);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "nbest");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v4, "limit dumping to this many entries from nbest list (0 = do not limit)");
  quasar::OptionValue<int>::OptionValue(this + 480, &v5, &__p, &v4, 240);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B530BE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  quasar::OptionValue<std::string>::~OptionValue(v21 + 320);
  quasar::OptionValue<BOOL>::~OptionValue(v21 + 176);
  quasar::OptionValue<std::string>::~OptionValue(v21 + 16);
  _Unwind_Resume(a1);
}

void sub_1B530BF10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  JUMPOUT(0x1B530BF00);
}

void sub_1B530BF48(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  JUMPOUT(0x1B530BF08);
}

quasar::StructuredPredictionBlock *quasar::StructuredPredictionBlock::StructuredPredictionBlock(quasar::StructuredPredictionBlock *this)
{
  *(this + 330) = &unk_1F2D08820;
  *(this + 332) = 0;
  *(this + 334) = 0;
  *(this + 333) = 0;
  *(this + 331) = this + 2656;
  *(this + 336) = 0;
  *(this + 335) = 0;
  *(this + 2696) = 1;
  v2 = off_1F2D274E0;
  v3 = off_1F2D274D8;
  *this = off_1F2D274D8;
  *(this + *(v3 - 3)) = v2;
  quasar::StructuredPredictionOptions::StructuredPredictionOptions((this + 8));
  v4 = off_1F2D274F0;
  v5 = off_1F2D274E8;
  *(this + 292) = off_1F2D274E8;
  *(this + *(v5 - 3) + 2336) = v4;
  *this = &unk_1F2D27370;
  *(this + 330) = &unk_1F2D27470;
  *(this + 292) = &unk_1F2D273D0;
  std::string::basic_string[abi:ne200100]<0>(&v21, "source");
  if (SHIBYTE(v22) < 0)
  {
    std::string::__init_copy_ctor_external((this + 2344), v21, *(&v21 + 1));
    v6 = SHIBYTE(v22);
    *(this + 2368) = 0;
    *(this + 297) = 0;
    *(this + 299) = 0;
    *(this + 298) = 0;
    if (v6 < 0)
    {
      operator delete(v21);
    }
  }

  else
  {
    *(this + 2344) = v21;
    *(this + 295) = v22;
    *(this + 2368) = 0;
    *(this + 297) = 0;
    *(this + 299) = 0;
    *(this + 298) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "in");
  if (SHIBYTE(v20) < 0)
  {
    std::string::__init_copy_ctor_external(this + 100, __p[0], __p[1]);
    v7 = SHIBYTE(v20);
    *(this + 2424) = 0;
    *(this + 304) = 0;
    *(this + 306) = 0;
    *(this + 305) = 0;
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(this + 150) = *__p;
    *(this + 302) = v20;
    *(this + 2424) = 0;
    *(this + 304) = 0;
    *(this + 306) = 0;
    *(this + 305) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v17, "source_spm");
  if (SHIBYTE(v18) < 0)
  {
    std::string::__init_copy_ctor_external((this + 2456), v17[0], v17[1]);
    v8 = SHIBYTE(v18);
    *(this + 2480) = 0;
    *(this + 311) = 0;
    *(this + 313) = 0;
    *(this + 312) = 0;
    if (v8 < 0)
    {
      operator delete(v17[0]);
    }
  }

  else
  {
    *(this + 2456) = *v17;
    *(this + 309) = v18;
    *(this + 2480) = 0;
    *(this + 311) = 0;
    *(this + 313) = 0;
    *(this + 312) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v15, "target_spm");
  if (SHIBYTE(v16) < 0)
  {
    std::string::__init_copy_ctor_external((this + 2512), v15[0], v15[1]);
    v9 = SHIBYTE(v16);
    *(this + 2536) = 0;
    *(this + 318) = 0;
    *(this + 320) = 0;
    *(this + 319) = 0;
    if (v9 < 0)
    {
      operator delete(v15[0]);
    }
  }

  else
  {
    *(this + 157) = *v15;
    *(this + 316) = v16;
    *(this + 2536) = 0;
    *(this + 318) = 0;
    *(this + 320) = 0;
    *(this + 319) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "source_tokens");
  v10 = (this + 2568);
  if (SHIBYTE(v14) < 0)
  {
    std::string::__init_copy_ctor_external(v10, v13[0], v13[1]);
    v11 = SHIBYTE(v14);
    *(this + 2592) = 0;
    *(this + 325) = 0;
    *(this + 327) = 0;
    *(this + 326) = 0;
    if (v11 < 0)
    {
      operator delete(v13[0]);
    }
  }

  else
  {
    *&v10->__r_.__value_.__l.__data_ = *v13;
    *(this + 323) = v14;
    *(this + 2592) = 0;
    *(this + 325) = 0;
    *(this + 327) = 0;
    *(this + 326) = 0;
  }

  *(this + 164) = 0u;
  return this;
}

void sub_1B530C434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::ProcessingInput::~ProcessingInput(v38);
  quasar::ProcessingInput::~ProcessingInput(v37);
  quasar::ProcessingInput::~ProcessingInput(v36);
  quasar::ProcessingInput::~ProcessingInput(v35);
  quasar::ConfiguredProcessingBlock<quasar::StructuredPredictionOptions>::~ConfiguredProcessingBlock(v33, (v39 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v34);
  _Unwind_Resume(a1);
}

uint64_t *quasar::ConfiguredProcessingBlock<quasar::StructuredPredictionOptions>::~ConfiguredProcessingBlock(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[1];
  quasar::StructuredPredictionOptions::~StructuredPredictionOptions((a1 + 1));
  return a1;
}

quasar::StructuredPredictionOptions *quasar::StructuredPredictionOptions::StructuredPredictionOptions(quasar::StructuredPredictionOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D27330;
  std::string::basic_string[abi:ne200100]<0>(&v6, "struct-begin-tag");
  std::string::basic_string[abi:ne200100]<0>(&v5, "<STRUCT_MALE_BEG>");
  std::string::basic_string[abi:ne200100]<0>(&__p, "beginning of structured prediction in primary order");
  quasar::OptionValue<std::string>::OptionValue(this + 16, &v6, &v5, &__p, 249);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "struct-reverse-begin-tag");
  std::string::basic_string[abi:ne200100]<0>(&v5, "<STRUCT_FEMALE_BEG>");
  std::string::basic_string[abi:ne200100]<0>(&__p, "beginning of structured prediction in reverse order");
  quasar::OptionValue<std::string>::OptionValue(this + 176, &v6, &v5, &__p, 249);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "struct-mid-tag");
  std::string::basic_string[abi:ne200100]<0>(&v5, "<STRUCT_MID>");
  std::string::basic_string[abi:ne200100]<0>(&__p, "middle of structured prediction");
  quasar::OptionValue<std::string>::OptionValue(this + 336, &v6, &v5, &__p, 249);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "struct-end-tag");
  std::string::basic_string[abi:ne200100]<0>(&v5, "<STRUCT_END>");
  std::string::basic_string[abi:ne200100]<0>(&__p, "end of structured prediction");
  quasar::OptionValue<std::string>::OptionValue(this + 496, &v6, &v5, &__p, 249);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "struct-first-field");
  std::string::basic_string[abi:ne200100]<0>(&v5, "MALE");
  std::string::basic_string[abi:ne200100]<0>(&__p, "first field label");
  quasar::OptionValue<std::string>::OptionValue(this + 656, &v6, &v5, &__p, 249);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "struct-second-field");
  std::string::basic_string[abi:ne200100]<0>(&v5, "FEMALE");
  std::string::basic_string[abi:ne200100]<0>(&__p, "second field label");
  quasar::OptionValue<std::string>::OptionValue(this + 816, &v6, &v5, &__p, 249);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "struct-default-field");
  std::string::basic_string[abi:ne200100]<0>(&v5, "MALE");
  std::string::basic_string[abi:ne200100]<0>(&__p, "default field label");
  quasar::OptionValue<std::string>::OptionValue(this + 976, &v6, &v5, &__p, 249);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "struct-meta-key-name");
  std::string::basic_string[abi:ne200100]<0>(&v5, "gender");
  std::string::basic_string[abi:ne200100]<0>(&__p, "string used for the meta info keys");
  quasar::OptionValue<std::string>::OptionValue(this + 1136, &v6, &v5, &__p, 249);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "use-tokenized-source");
  __p.__r_.__value_.__s.__data_[0] = 0;
  quasar::OptionValue<BOOL>::OptionValue(this + 1296, &v6, &__p, &v5, 249);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "max-source-length");
  LODWORD(__p.__r_.__value_.__l.__data_) = -1;
  std::string::basic_string[abi:ne200100]<0>(&v5, "disable structured prediction if source is longer than value (-1 to disable)");
  quasar::OptionValue<int>::OptionValue(this + 1440, &v6, &__p, &v5, 249);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "max-selections");
  LODWORD(__p.__r_.__value_.__l.__data_) = 3;
  std::string::basic_string[abi:ne200100]<0>(&v5, "disable structured prediction if number of selections (= aligned source tokens) higher than value (-1 to disable)");
  quasar::OptionValue<int>::OptionValue(this + 1584, &v6, &__p, &v5, 249);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "disable-structured-prediction");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v5, "disable structured prediction, only best is produced");
  v2 = quasar::OptionValue<BOOL>::OptionValue(this + 1736, &v6, &__p, &v5, 257);
  *(this + 216) = &unk_1F2D0B998;
  *v2 = &unk_1F2D0B9D8;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "defaults-list-file");
  std::string::basic_string[abi:ne200100]<0>(&v5, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "file path for the file with defaults list");
  quasar::OptionValue<std::string>::OptionValue(this + 1880, &v6, &v5, &__p, 260);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "produce-gender-structs-to-spm-source-tokens-alignments");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v5, "Update meta info with alignments between gender structs and SPM source tokens");
  quasar::OptionValue<BOOL>::OptionValue(this + 2040, &v6, &__p, &v5, 265);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "max-source-alignment-length");
  LODWORD(__p.__r_.__value_.__l.__data_) = 1023;
  std::string::basic_string[abi:ne200100]<0>(&v5, "maximum source positions to consider when aligning structure tags");
  quasar::OptionValue<int>::OptionValue(this + 2184, &v6, &__p, &v5, 274);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B530CCC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  quasar::OptionValue<BOOL>::~OptionValue(v27 + 2040);
  quasar::OptionValue<std::string>::~OptionValue(v27 + 1880);
  quasar::OverridableOptionValue<BOOL>::~OverridableOptionValue(v28);
  quasar::OptionValue<int>::~OptionValue(v27 + 1584);
  quasar::OptionValue<int>::~OptionValue(v27 + 1440);
  quasar::OptionValue<BOOL>::~OptionValue(v27 + 1296);
  quasar::OptionValue<std::string>::~OptionValue(v27 + 1136);
  quasar::OptionValue<std::string>::~OptionValue(v27 + 976);
  quasar::OptionValue<std::string>::~OptionValue(v27 + 816);
  quasar::OptionValue<std::string>::~OptionValue(v27 + 656);
  quasar::OptionValue<std::string>::~OptionValue(v27 + 496);
  quasar::OptionValue<std::string>::~OptionValue(v27 + 336);
  quasar::OptionValue<std::string>::~OptionValue(v27 + 176);
  quasar::OptionValue<std::string>::~OptionValue(v27 + 16);
  _Unwind_Resume(a1);
}

void sub_1B530CDF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B530CD94);
}

void sub_1B530CE2C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B530CD9CLL);
}

void sub_1B530CE64(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B530CDA4);
}

void sub_1B530CE9C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x1B530CDACLL);
}

void sub_1B530CED4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  JUMPOUT(0x1B530CDB4);
}

void sub_1B530CF24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  JUMPOUT(0x1B530CDBCLL);
}

void sub_1B530CF74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  JUMPOUT(0x1B530CDC4);
}

void sub_1B530CFC4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  JUMPOUT(0x1B530CDCCLL);
}

void sub_1B530D014(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  JUMPOUT(0x1B530CDD4);
}

void sub_1B530D064(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  JUMPOUT(0x1B530CDDCLL);
}

void sub_1B530D0B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  JUMPOUT(0x1B530CDE4);
}

void sub_1B530D104(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  JUMPOUT(0x1B530CDECLL);
}

void quasar::StructuredPredictionOptions::~StructuredPredictionOptions(quasar::StructuredPredictionOptions *this)
{
  *this = &unk_1F2D27330;
  *(this + 273) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 2304, *(this + 289));
  *(this + 273) = &unk_1F2D08890;
  v2 = *(this + 285);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 2263) < 0)
  {
    operator delete(*(this + 280));
  }

  if (*(this + 2239) < 0)
  {
    operator delete(*(this + 277));
  }

  if (*(this + 2215) < 0)
  {
    operator delete(*(this + 274));
  }

  *(this + 255) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 2160, *(this + 271));
  *(this + 255) = &unk_1F2D08890;
  v3 = *(this + 267);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 2119) < 0)
  {
    operator delete(*(this + 262));
  }

  if (*(this + 2095) < 0)
  {
    operator delete(*(this + 259));
  }

  if (*(this + 2071) < 0)
  {
    operator delete(*(this + 256));
  }

  *(this + 235) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 2016, *(this + 253));
  if (*(this + 2007) < 0)
  {
    operator delete(*(this + 248));
  }

  *(this + 235) = &unk_1F2D08890;
  v4 = *(this + 247);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 1959) < 0)
  {
    operator delete(*(this + 242));
  }

  if (*(this + 1935) < 0)
  {
    operator delete(*(this + 239));
  }

  if (*(this + 1911) < 0)
  {
    operator delete(*(this + 236));
  }

  *(this + 217) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 1856, *(this + 233));
  *(this + 217) = &unk_1F2D08890;
  v5 = *(this + 229);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 1815) < 0)
  {
    operator delete(*(this + 224));
  }

  if (*(this + 1791) < 0)
  {
    operator delete(*(this + 221));
  }

  if (*(this + 1767) < 0)
  {
    operator delete(*(this + 218));
  }

  *(this + 198) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 1704, *(this + 214));
  *(this + 198) = &unk_1F2D08890;
  v6 = *(this + 210);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(this + 1663) < 0)
  {
    operator delete(*(this + 205));
  }

  if (*(this + 1639) < 0)
  {
    operator delete(*(this + 202));
  }

  if (*(this + 1615) < 0)
  {
    operator delete(*(this + 199));
  }

  *(this + 180) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 1560, *(this + 196));
  *(this + 180) = &unk_1F2D08890;
  v7 = *(this + 192);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(this + 1519) < 0)
  {
    operator delete(*(this + 187));
  }

  if (*(this + 1495) < 0)
  {
    operator delete(*(this + 184));
  }

  if (*(this + 1471) < 0)
  {
    operator delete(*(this + 181));
  }

  *(this + 162) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 1416, *(this + 178));
  *(this + 162) = &unk_1F2D08890;
  v8 = *(this + 174);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(this + 1375) < 0)
  {
    operator delete(*(this + 169));
  }

  if (*(this + 1351) < 0)
  {
    operator delete(*(this + 166));
  }

  if (*(this + 1327) < 0)
  {
    operator delete(*(this + 163));
  }

  *(this + 142) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1272, *(this + 160));
  if (*(this + 1263) < 0)
  {
    operator delete(*(this + 155));
  }

  *(this + 142) = &unk_1F2D08890;
  v9 = *(this + 154);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(this + 1215) < 0)
  {
    operator delete(*(this + 149));
  }

  if (*(this + 1191) < 0)
  {
    operator delete(*(this + 146));
  }

  if (*(this + 1167) < 0)
  {
    operator delete(*(this + 143));
  }

  *(this + 122) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1112, *(this + 140));
  if (*(this + 1103) < 0)
  {
    operator delete(*(this + 135));
  }

  *(this + 122) = &unk_1F2D08890;
  v10 = *(this + 134);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*(this + 1055) < 0)
  {
    operator delete(*(this + 129));
  }

  if (*(this + 1031) < 0)
  {
    operator delete(*(this + 126));
  }

  if (*(this + 1007) < 0)
  {
    operator delete(*(this + 123));
  }

  *(this + 102) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 952, *(this + 120));
  if (*(this + 943) < 0)
  {
    operator delete(*(this + 115));
  }

  *(this + 102) = &unk_1F2D08890;
  v11 = *(this + 114);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (*(this + 895) < 0)
  {
    operator delete(*(this + 109));
  }

  if (*(this + 871) < 0)
  {
    operator delete(*(this + 106));
  }

  if (*(this + 847) < 0)
  {
    operator delete(*(this + 103));
  }

  *(this + 82) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 792, *(this + 100));
  if (*(this + 783) < 0)
  {
    operator delete(*(this + 95));
  }

  *(this + 82) = &unk_1F2D08890;
  v12 = *(this + 94);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(this + 735) < 0)
  {
    operator delete(*(this + 89));
  }

  if (*(this + 711) < 0)
  {
    operator delete(*(this + 86));
  }

  if (*(this + 687) < 0)
  {
    operator delete(*(this + 83));
  }

  *(this + 62) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 632, *(this + 80));
  if (*(this + 623) < 0)
  {
    operator delete(*(this + 75));
  }

  *(this + 62) = &unk_1F2D08890;
  v13 = *(this + 74);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (*(this + 575) < 0)
  {
    operator delete(*(this + 69));
  }

  if (*(this + 551) < 0)
  {
    operator delete(*(this + 66));
  }

  if (*(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  *(this + 42) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 472, *(this + 60));
  if (*(this + 463) < 0)
  {
    operator delete(*(this + 55));
  }

  *(this + 42) = &unk_1F2D08890;
  v14 = *(this + 54);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (*(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  if (*(this + 391) < 0)
  {
    operator delete(*(this + 46));
  }

  if (*(this + 367) < 0)
  {
    operator delete(*(this + 43));
  }

  *(this + 22) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 312, *(this + 40));
  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  *(this + 22) = &unk_1F2D08890;
  v15 = *(this + 34);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  *(this + 2) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 152, *(this + 20));
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  *(this + 2) = &unk_1F2D08890;
  v16 = *(this + 14);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
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

void sub_1B530DB6C(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

quasar::LinkAlternativesOptions *quasar::LinkAlternativesOptions::LinkAlternativesOptions(quasar::LinkAlternativesOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D30028;
  std::string::basic_string[abi:ne200100]<0>(&v6, "filter-unreachable-phrases");
  v5 = 1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "Filter translation phrases that are not reachable from the first phrase");
  quasar::OptionValue<BOOL>::OptionValue(this + 16, &v6, &v5, &__p, 262);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "enable-alternatives");
  v5 = 1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "Request link alternatives block to construct alternatives graph using input information");
  v2 = quasar::OptionValue<BOOL>::OptionValue(this + 168, &v6, &v5, &__p, 263);
  *(this + 20) = &unk_1F2D0B998;
  *v2 = &unk_1F2D0B9D8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B530DCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  quasar::OptionValue<BOOL>::~OptionValue(v22 + 16);
  _Unwind_Resume(a1);
}

void sub_1B530DEC4(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

quasar::ProfanityFilterOptions *quasar::ProfanityFilterOptions::ProfanityFilterOptions(quasar::ProfanityFilterOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D14E00;
  std::string::basic_string[abi:ne200100]<0>(&v10, "enable-filter");
  v8.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "switch to enable/disable the ProfanityFilterBlock");
  v2 = quasar::OptionValue<BOOL>::OptionValue(this + 24, &v10, &v8, &__p, 275);
  *(this + 2) = &unk_1F2D0B998;
  *v2 = &unk_1F2D0B9D8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, "locale");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  std::string::basic_string[abi:ne200100]<0>(&v8, "locale for profanity filter");
  quasar::OptionValue<std::string>::OptionValue(this + 168, &v10, &__p, &v8, 275);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, "profanity-filter-config-file");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  std::string::basic_string[abi:ne200100]<0>(&v8, "Path to config file for profanity filter");
  quasar::OptionValue<std::string>::OptionValue(this + 328, &v10, &__p, &v8, 275);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v3 = std::string::basic_string[abi:ne200100]<0>(&v10, "special-language-list");
  v4 = quasar::SharedProfanityFilter::SPECIAL_LANGUAGE_LIST_DEFAULT(v3);
  v5 = *v4;
  v6 = quasar::SharedProfanityFilter::SPECIAL_LANGUAGE_LIST_DEFAULT(v4);
  std::vector<std::string>::vector[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,0>(&__p, v5, v6 + 8);
  std::string::basic_string[abi:ne200100]<0>(&v8, "override special language list for profanity filter");
  quasar::OptionValue<std::vector<std::string>>::OptionValue(this + 488, &v10, &__p, &v8, 275);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v8.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B530E14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  quasar::OptionValue<std::string>::~OptionValue(v28 + 328);
  quasar::OptionValue<std::string>::~OptionValue(v28 + 168);
  quasar::OverridableOptionValue<BOOL>::~OverridableOptionValue(v27);
  _Unwind_Resume(a1);
}

void *std::vector<std::string>::vector[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  std::vector<std::string>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1, a2, a3, v4);
  return a1;
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B530E374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string*>(uint64_t a1, void *a2, void *a3, std::string *this)
{
  v4 = this;
  v14 = this;
  v15 = this;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(v4, v6[4], v6[5]);
      }

      else
      {
        v7 = *(v6 + 2);
        v4->__r_.__value_.__r.__words[2] = v6[6];
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v8 = v6[1];
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
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v4 = ++v15;
      v6 = v9;
    }

    while (v9 != a3);
  }

  v13 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  return v4;
}

void sub_1B530E618(_Unwind_Exception *a1)
{
  quasar::ProcessingBlock::~ProcessingBlock(v3);
  MEMORY[0x1B8C85350](v1, v2);
  _Unwind_Resume(a1);
}

quasar::TokenizerOptions *quasar::TokenizerOptions::TokenizerOptions(quasar::TokenizerOptions *this)
{
  *(this + 2) = 0;
  *this = &unk_1F2D3BD98;
  std::string::basic_string[abi:ne200100]<0>(&v5, "output-tokens");
  v3.__r_.__value_.__s.__data_[0] = 1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "control if tokenization affects the translation tokens or just meta info.");
  quasar::OptionValue<BOOL>::OptionValue(this + 16, &v5, &v3, &__p, 169);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "locale");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  std::string::basic_string[abi:ne200100]<0>(&v3, "locale for tokenization (if not set use locale independent mapping)");
  quasar::OptionValue<std::string>::OptionValue(this + 160, &v5, &__p, &v3, 169);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1B530E75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  quasar::OptionValue<BOOL>::~OptionValue(v21 + 16);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<quasar::ContextProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0BB88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::ContextProvider>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a2 + 8);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1B530E978(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::map<std::string,quasar::ProcessingBlock::ValueType>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,quasar::ProcessingBlock::ValueType>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__tree_node<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,quasar::ProcessingBlock::ValueType>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__tree_node<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,quasar::ProcessingBlock::ValueType> const&>(v5, (v5 + 1), v4 + 4);
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

uint64_t std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,quasar::ProcessingBlock::ValueType> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::__construct_node<std::pair<std::string const,quasar::ProcessingBlock::ValueType> const&>();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,quasar::ProcessingBlock::ValueType>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,quasar::ProcessingBlock::ValueType>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(&this[1], *(a2 + 3), *(a2 + 4), 0xF83E0F83E0F83E1 * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void sub_1B530EC4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,quasar::ProcessingBlock::ValueType>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,quasar::ProcessingBlock::ValueType>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__shared_ptr_emplace<quasar::ProcessingSink>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0BBD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__split_buffer<std::unique_ptr<quasar::ProcessingBlock>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<quasar::ProcessingBlock>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<quasar::ProcessingBlock>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
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

void std::__shared_ptr_emplace<quasar::ProcessingSource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0BC28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::map<std::string,std::shared_ptr<quasar::ProcessingBlock>>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>> const&>(a1, v4, a2);
      a2 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::unique_ptr<quasar::ProcessingBlock>>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>>>::__construct_node<std::pair<std::string,std::unique_ptr<quasar::ProcessingBlock>>>();
  }

  return v2;
}

uint64_t std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>>::pair[abi:ne200100]<std::string,std::unique_ptr<quasar::ProcessingBlock>,0>(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  std::shared_ptr<quasar::ProcessingBlock>::shared_ptr[abi:ne200100]<quasar::ProcessingBlock,std::default_delete<quasar::ProcessingBlock>,0>((a1 + 24), a2 + 3);
  return a1;
}

void sub_1B530F184(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::shared_ptr<quasar::ProcessingBlock>::shared_ptr[abi:ne200100]<quasar::ProcessingBlock,std::default_delete<quasar::ProcessingBlock>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<quasar::ProcessingBlock  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::ProcessingBlock  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::ProcessingBlock  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

int *quasar::RescoringDeliberationDecoder::runImpl(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(*a3 + 448);
  v68 = *(*a3 + 440);
  v69 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::RescoringDeliberationDecoder::ResultData::ResultData(v70, &v68);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  v9 = *a3;
  v10 = *(*a3 + 368);
  if (!v10)
  {
    quasar::Decoder::calculateNBest(a2, a3, *(*a4 + 16));
    quasar::RescoringDeliberationDecoder::ResultData::recordEvent(v70, "CALCULATE_N_BEST", 157);
    v9 = *a3;
    v10 = *(*a3 + 368);
  }

  if (v10[1] == *v10)
  {
    quasar::RescoringDeliberationDecoder::ResultData::recordEvent(v70, "INPUT_N_BEST_IS_EMPTY", 166);
    v14 = quasar::RescoringDeliberationDecoder::ResultData::finalize(v70, 0);
    goto LABEL_60;
  }

  v11 = *(v9 + 408);
  memset(&v67, 0, sizeof(v67));
  v65 = 0;
  v66 = 0;
  v64 = 0uLL;
  v12 = a2[1];
  *&v43 = *a2;
  *(&v43 + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    v9 = *a3;
  }

  quasar::ptt::PronunciationRecognizer::RequestContext::RequestContext(&v62, &v43, *(v9 + 592), *(a2[27] + 24), a2[27] + 32, *(v9 + 488));
  if (*(&v43 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43 + 1));
  }

  v13 = *(*a3 + 368);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  LOBYTE(v43) = 0;
  BYTE8(v44) = 0;
  v14 = quasar::RescoringDeliberationDecoder::expandResultChoicesAndBuildInputForRescoring(a1, v13, &v62, &v66, &v64, __p, &v43);
  if (BYTE8(v44) == 1)
  {
    v71 = &v43;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v71);
  }

  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v64 == *(&v64 + 1))
  {
    if (quasar::gLogLevel >= 6)
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
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "No phonetic alternatives generated.", 35);
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v43);
    }

    quasar::RescoringDeliberationDecoder::ResultData::recordEvent(v70, "PHONETIC_ALTERNATIVES_NONE_GENERATED", 196);
    v16 = quasar::RescoringDeliberationDecoder::ResultData::finalize(v70, 0);
    goto LABEL_26;
  }

  quasar::RescoringDeliberationDecoder::ResultData::recordEvent(v70, "PHONETIC_ALTERNATIVES_GENERATED", 200);
  if (!quasar::rescoring::Rescorer::rescoreHypotheses(*(a1 + 456), v14, &v67))
  {
    if (quasar::gLogLevel >= 2)
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
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Rescoring failed during RescoringDeliberationDecoder.", 53);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v43);
    }

    quasar::RescoringDeliberationDecoder::ResultData::recordEvent(v70, "RESCORING_FAILED", 210);
    v16 = quasar::RescoringDeliberationDecoder::ResultData::finalize(v70, 0);
LABEL_26:
    v14 = v16;
    v15 = 0;
    goto LABEL_27;
  }

  quasar::RescoringDeliberationDecoder::ResultData::recordEvent(v70, "RESCORING_SUCCEEDED", 206);
  v15 = 1;
LABEL_27:
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  if (v15)
  {
    if (v67.__begin_ == v67.__end_)
    {
      begin = v67.__begin_;
    }

    else
    {
      v17 = v67.__begin_ + 1;
      begin = v67.__begin_;
      if (v67.__begin_ + 1 != v67.__end_)
      {
        v19 = *v67.__begin_;
        begin = v67.__begin_;
        v20 = v67.__begin_ + 1;
        do
        {
          v21 = *v20++;
          v22 = v21;
          if (v21 < v19)
          {
            v19 = v22;
            begin = v17;
          }

          v17 = v20;
        }

        while (v20 != v67.__end_);
      }
    }

    if ((*(a1 + 584) & 1) == 0)
    {
      for (i = v64; i != *(&v64 + 1); i += 3)
      {
        if (*i != i[1])
        {
          quasar::PhonesetMapping::getIpaPhoneSequence((a2 + 76), *i + 48);
        }
      }
    }

    v23 = begin - v67.__begin_;
    v24 = v23 - v66;
    if (v23 >= v66)
    {
      quasar::RescoringDeliberationDecoder::ResultData::recordRescoringResult(v70, *v10, (v64 + 24 * v24));
      std::vector<std::vector<quasar::Token>>::insert(v10, *v10, (v64 + 24 * v24));
      v31 = *v11;
      *&v43 = **v11 + -1000.0;
      std::vector<double>::insert(v11, v31, &v43);
      if (*(a1 + 584) == 1)
      {
        v32 = (*v10)->__r_.__value_.__r.__words[0];
        if (v32 != (*v10)->__r_.__value_.__l.__size_)
        {
          quasar::PhonesetMapping::getIpaPhoneSequence((a2 + 76), v32 + 48);
        }
      }

      else
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<quasar::Token> *,std::vector<quasar::Token> *,std::vector<quasar::Token> *>(&v43, v64 + 24 * v24 + 24, *(&v64 + 1), v64 + 24 * v24);
        v34 = v33;
        v35 = *(&v64 + 1);
        while (v35 != v34)
        {
          v35 -= 24;
          *&v43 = v35;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v43);
        }

        *(&v64 + 1) = v34;
      }

      quasar::RescoringDeliberationDecoder::ResultData::recordEvent(v70, "BEST_HYPOTHESIS_IN_PHONETIC_N_BEST", 266);
    }

    else
    {
      quasar::RescoringDeliberationDecoder::ResultData::recordRescoringResult(v70, *v10, &(*v10)[v23]);
      v25 = *v10;
      v26 = &(*v10)[v23];
      v27 = *&(*v10)->__r_.__value_.__l.__data_;
      *&v25->__r_.__value_.__l.__data_ = *v26;
      *v26 = v27;
      v28 = v25->__r_.__value_.__r.__words[2];
      v25->__r_.__value_.__r.__words[2] = *(v26 + 16);
      *(v26 + 16) = v28;
      v29 = *v11;
      *&v27 = **v11;
      *v29 = *&(*v11)[8 * v23];
      *&v29[8 * v23] = v27;
      quasar::RescoringDeliberationDecoder::ResultData::recordEvent(v70, "BEST_HYPOTHESIS_IN_ORIGINAL_N_BEST", 249);
    }

    if ((*(a1 + 584) & 1) == 0)
    {
      std::vector<std::vector<quasar::Token>>::reserve(v10, 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 3) - 0x5555555555555555 * ((*(&v64 + 1) - v64) >> 3));
      std::vector<std::pair<int,int>>::reserve(v11, 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 3));
      std::vector<std::vector<quasar::Token>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<quasar::Token>*>,std::__wrap_iter<std::vector<quasar::Token>*>>(v10, v10[1], v64, *(&v64 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v64 + 1) - v64) >> 3));
      v36 = v11[1];
      *&v43 = *(v36 - 1) + 1000.0;
      std::vector<double>::insert(v11, v36, 0xAAAAAAAAAAAAAAABLL * ((*(&v64 + 1) - v64) >> 3), &v43);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 3) != (v11[1] - *v11) >> 3)
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
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "There should be an equal number of result choices (", 51);
      v39 = MEMORY[0x1B8C84C30](v38, 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 3));
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ") ", 2);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "as there are result costs (", 27);
      v42 = MEMORY[0x1B8C84C30](v41, (v11[1] - *v11) >> 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ").", 2);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v43);
    }

    v14 = quasar::RescoringDeliberationDecoder::ResultData::finalize(v70, 0);
  }

  *&v43 = &v64;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v43);
  if (v67.__begin_)
  {
    v67.__end_ = v67.__begin_;
    operator delete(v67.__begin_);
  }

LABEL_60:
  quasar::RescoringDeliberationDecoder::ResultData::~ResultData(v70);
  return v14;
}

void sub_1B530FA2C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a12 == 1)
  {
    *(v48 - 96) = &a9;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v48 - 96));
  }

  if (a48 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B530FA8CLL);
}

void sub_1B530FA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x1B530FAB8);
  }

  JUMPOUT(0x1B530FA94);
}

void sub_1B530FA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::__shared_weak_count *a47)
{
  if (a47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a47);
  }

  JUMPOUT(0x1B530FAB8);
}

void sub_1B530FA9C()
{
  v1 = *(v0 - 176);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1B530FAE0);
}

void sub_1B530FAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46)
{
  a46 = (v46 - 240);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a46);
  v48 = *(v46 - 208);
  if (v48)
  {
    *(v46 - 200) = v48;
    operator delete(v48);
  }

  quasar::RescoringDeliberationDecoder::ResultData::~ResultData((v46 - 168));
  _Unwind_Resume(a1);
}

uint64_t quasar::RescoringDeliberationDecoder::ResultData::recordEvent(uint64_t this, const char *a2, uint64_t a3)
{
  if (*(this + 8))
  {
    v5 = this;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v19);
    v6 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, a2, v6);
    if ((a3 & 0x8000000000000000) == 0)
    {
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, ":", 1);
      MEMORY[0x1B8C84C20](v7, a3);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, ":", 1);
    v9 = kaldi::Timer::GetSeconds(5, v8) - *(v5 + 24);
    if (v9 != 0.0)
    {
      v10 = log10(fabs(v9));
      __exp10(3.0 - ceil(v10));
    }

    std::ostream::operator<<();
    v11 = *(v5 + 8);
    std::string::basic_string[abi:ne200100]<0>(v17, "rescoringDeliberationEvents");
    std::stringbuf::str();
    std::string::basic_string[abi:ne200100]<0>(__p, ",");
    quasar::SpeechRequestResultData::appendDumpAA(v11, v17, &v15, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    v19[0] = *MEMORY[0x1E69E54D8];
    v12 = *(MEMORY[0x1E69E54D8] + 72);
    *(v19 + *(v19[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v20 = v12;
    v21 = MEMORY[0x1E69E5548] + 16;
    if (v23 < 0)
    {
      operator delete(v22[7].__locale_);
    }

    v21 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v22);
    std::iostream::~basic_iostream();
    return MEMORY[0x1B8C85200](&v24);
  }

  return this;
}

void sub_1B530FD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a27, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](&a43);
  _Unwind_Resume(a1);
}

uint64_t quasar::RescoringDeliberationDecoder::ResultData::finalize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == 1)
  {
    v26 = 0u;
    v27 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "finalize() called twice on ResultData within single request life cycle.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "rescoringDeliberationFinalizeDuration");
    v6 = kaldi::Timer::GetSeconds(5, v5) - *(a1 + 24);
    if (v6 == 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v7 = log10(fabs(v6));
      v8 = __exp10(3.0 - ceil(v7));
      *&v8 = round(v6 * v8) / v8;
      v9 = *&v8;
    }

    quasar::SpeechRequestResultData::addDumpAA(v4, __p, 1, v9);
    if (SBYTE7(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 64) = 1;
  return a2;
}

void sub_1B530FF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *quasar::RescoringDeliberationDecoder::expandResultChoicesAndBuildInputForRescoring(uint64_t a1, uint64_t **a2, uint64_t a3, unint64_t *a4, __int128 *a5, __int128 *a6, uint64_t a7)
{
  v64 = *MEMORY[0x1E69E9840];
  flatbuffers_2_0_6::FlatBufferBuilder::Clear((a1 + 464));
  v56[0] = 0;
  v57 = 0;
  quasar::rescoring::MultiSourceNBestListBuilder::MultiSourceNBestListBuilder(&v58, a1 + 464, a6, v56);
  if (v57 == 1)
  {
    std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::~__value_func[abi:ne200100](v56);
  }

  v14 = a2[1];
  v15 = *a2;
  if (*a2 == v14 || (v16 = *v15, v17 = v15[1], *v15 == v17))
  {
    v18 = quasar::rescoring::MultiSourceNBestListBuilder::finalizeAndReturnNBestList(&v58, 0);
  }

  else
  {
    if (*(a7 + 24) == 1)
    {
      i = 0;
      v36 = 0;
      v37 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&i, *a7, *(a7 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a7 + 8) - *a7) >> 3));
    }

    else
    {
      v19 = v15 + 3;
      if (v15 + 3 != v14)
      {
        do
        {
          if (quasar::ptt::ExtractPronunciation(std::vector<std::vector<quasar::Token>> const&,quasar::ptt::ExtractPronunciationStrategy)::{lambda(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)#1}::operator()(__p, v19, v15))
          {
            v15 = v19;
          }

          v19 += 3;
        }

        while (v19 != v14);
        v16 = *v15;
        v17 = v15[1];
      }

      v36 = 0;
      v37 = 0;
      for (i = 0; v16 != v17; v16 = (v16 + 224))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, " ");
        quasar::splitAndTrimNoEmpty(v16 + 2, __p, &i);
        if (SBYTE7(v39) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v20 = *a2;
    for (j = **a2; ; j += 224)
    {
      if (j == (*a2)[1])
      {
        v23 = 0;
        goto LABEL_24;
      }

      v22 = *(j + 168);
      if (v22 != 3)
      {
        break;
      }
    }

    if (v22 == 4)
    {
      v32 = j;
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
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Token ", 6);
      v34 = quasar::operator<<(v33, v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " does not have a valid LME type set. Did something go wrong during data deserialization? Was the serialized data generated with an older version of the decoder?", 160);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v23 = 1;
LABEL_24:
    v24 = *(a1 + 580);
    if (v24)
    {
      if (v24 < 1 || 0xAAAAAAAAAAAAAAABLL * (a2[1] - v20) <= v24)
      {
        quasar::rescoring::MultiSourceNBestListBuilder::addResultChoices(&v58, a2, 0);
      }

      else
      {
        quasar::rescoring::MultiSourceNBestListBuilder::addResultChoices<std::__wrap_iter<std::vector<quasar::Token> const*>>(&v58, v20, &v20[3 * v24], 0);
      }
    }

    if (a4)
    {
      v25 = *(a1 + 580);
      if ((v25 & 0x80000000) != 0)
      {
        v25 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
      }

      else if (0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2) < v25)
      {
        v25 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
      }

      *a4 = v25;
    }

    if ((v23 & *(a1 + 576) & 1) == 0)
    {
      v26 = *(a1 + 568);
      if (v26)
      {
        if (quasar::gLogLevel >= 6)
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
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Generating phonetic alternatives using ", 39);
          v28 = quasar::lm::operator<<<std::string>(v27, &i);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ".", 1);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
          v26 = *(a1 + 568);
        }

        quasar::ptt::PronunciationRecognizer::run(v26, &i, a3, __p);
        quasar::rescoring::MultiSourceNBestListBuilder::addResultChoices(&v58, __p, 1);
        if (a5)
        {
          v29 = *a5;
          *a5 = *__p;
          *__p = v29;
          v30 = *(a5 + 2);
          *(a5 + 2) = v39;
          *&v39 = v30;
        }

        v55 = __p;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v55);
      }
    }

    v18 = quasar::rescoring::MultiSourceNBestListBuilder::finalizeAndReturnNBestList(&v58, 0);
    __p[0] = &i;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v59 == 1)
  {
    std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::~__value_func[abi:ne200100](&v58.__r_.__value_.__l.__size_);
  }

  return v18;
}

void sub_1B53103EC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B531044CLL);
}

void quasar::RescoringDeliberationDecoder::ResultData::recordRescoringResult(uint64_t a1, std::wstring *a2, std::wstring *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "rescoringDeliberationResultOriginalTranscript");
    quasar::formatResultTokensSimple(a2, 0);
    quasar::SpeechRequestResultData::addDumpAA(v3, v15, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    v7 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v15, "rescoringDeliberationResultModifiedTranscript");
    quasar::formatResultTokensSimple(a3, 0);
    quasar::SpeechRequestResultData::addDumpAA(v7, v15, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    v8 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v15, "rescoringDeliberationResultDuration");
    v10 = kaldi::Timer::GetSeconds(5, v9) - *(a1 + 24);
    if (v10 == 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v11 = log10(fabs(v10));
      v12 = __exp10(3.0 - ceil(v11));
      *&v12 = round(v10 * v12) / v12;
      v13 = *&v12;
    }

    quasar::SpeechRequestResultData::addDumpAA(v8, v15, 1, v13);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }
}

void sub_1B53105C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void *std::vector<std::vector<quasar::Token>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

char *std::vector<double>::insert(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 3)
  {
    v15 = v8 - __src;
    if (a3 <= (v8 - __src) >> 3)
    {
      v18 = a1[1];
      v17 = a3;
    }

    else
    {
      v16 = 0;
      v17 = v15 >> 3;
      v18 = &v8[8 * (a3 - (v15 >> 3))];
      v19 = *a4;
      v20 = (8 * a3 - v15 - 8) >> 3;
      v21 = vdupq_n_s64(v20);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v16), xmmword_1B5AE0060)));
        if (v22.i8[0])
        {
          *&v8[8 * v16] = v19;
        }

        if (v22.i8[4])
        {
          *&v8[8 * v16 + 8] = v19;
        }

        v16 += 2;
      }

      while (((v20 + 2) & 0x3FFFFFFFFFFFFFFELL) != v16);
      a1[1] = v18;
      if (v8 == __src)
      {
        return __src;
      }
    }

    v23 = &__src[8 * a3];
    v24 = &v18[-8 * a3];
    v25 = v18;
    if (v24 < v8)
    {
      v25 = v18;
      do
      {
        v26 = *v24;
        v24 += 8;
        *v25 = v26;
        v25 += 8;
      }

      while (v24 < v8);
    }

    a1[1] = v25;
    if (v18 != v23)
    {
      memmove(&__src[8 * a3], __src, v18 - v23);
    }

    if (__src <= v5)
    {
      if (a1[1] <= v5)
      {
        v27 = 0;
      }

      else
      {
        v27 = a3;
      }

      v5 += 8 * v27;
    }

    v28 = 0;
    v29 = *v5;
    v30 = vdupq_n_s64(v17 - 1);
    v31 = __src + 8;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v28), xmmword_1B5AE0060)));
      if (v32.i8[0])
      {
        *(v31 - 1) = v29;
      }

      if (v32.i8[4])
      {
        *v31 = v29;
      }

      v28 += 2;
      v31 += 2;
    }

    while (((v17 + 1) & 0xFFFFFFFFFFFFFFFELL) != v28);
    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 3);
  if (v11 >> 61)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 >> 2 > v11)
  {
    v11 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v14);
  }

  v34 = 0;
  v33 = 8 * (v12 >> 3);
  v35 = *a4;
  v36 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v37 = v36 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
  v38 = vdupq_n_s64(v36);
  v39 = (v33 + 8);
  do
  {
    v40 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(vdupq_n_s64(v34), xmmword_1B5AE0060)));
    if (v40.i8[0])
    {
      *(v39 - 1) = v35;
    }

    if (v40.i8[4])
    {
      *v39 = v35;
    }

    v34 += 2;
    v39 += 2;
  }

  while (v37 != v34);
  memcpy((v33 + 8 * a3), __src, a1[1] - __src);
  v41 = *a1;
  v42 = v33 + 8 * a3 + a1[1] - __src;
  a1[1] = __src;
  v43 = (__src - v41);
  v44 = (v33 - (__src - v41));
  memcpy(v44, v41, v43);
  v45 = *a1;
  *a1 = v44;
  a1[1] = v42;
  a1[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  return v33;
}

void quasar::RescoringDeliberationDecoder::registerParams(quasar::RescoringDeliberationDecoder *this, quasar::SystemConfig *a2)
{
  quasar::SystemConfig::getPrefix(a2, &v4);
  __p = v4;
  memset(&v4, 0, sizeof(v4));
  v6 = 1;
  quasar::rescoring::RescorerConfig::RescorerConfig(v7, a2, &__p, 0, *(this + 449));
  operator new();
}

void sub_1B5310F4C()
{
  if (SLOBYTE(STACK[0x747]) < 0)
  {
    JUMPOUT(0x1B5310F30);
  }

  JUMPOUT(0x1B5310F34);
}

void sub_1B5310F60(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, void *__p, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, ...)
{
  va_start(va, a14);
  quasar::rescoring::RescorerConfig::~RescorerConfig(&STACK[0x730]);
  MEMORY[0x1B8C85350](v14, 0x10F2C4003D4831CLL);
  quasar::rescoring::RescorerConfig::~RescorerConfig(va);
  if (a14 == 1 && a13 < 0)
  {
    operator delete(__p);
  }

  if (a7 < 0)
  {
    JUMPOUT(0x1B5310F30);
  }

  JUMPOUT(0x1B5310F34);
}

void quasar::RescoringDeliberationDecoder::~RescoringDeliberationDecoder(quasar::ptt::PronunciationRecognizer **this)
{
  *this = &unk_1F2D0BCD8;
  std::unique_ptr<quasar::ptt::PronunciationRecognizer>::reset[abi:ne200100](this + 71, 0);
  flatbuffers_2_0_6::FlatBufferBuilder::~FlatBufferBuilder((this + 58));
  std::unique_ptr<quasar::rescoring::Rescorer>::reset[abi:ne200100](this + 57, 0);

  quasar::Decoder::~Decoder(this);
}

{
  *this = &unk_1F2D0BCD8;
  std::unique_ptr<quasar::ptt::PronunciationRecognizer>::reset[abi:ne200100](this + 71, 0);
  flatbuffers_2_0_6::FlatBufferBuilder::~FlatBufferBuilder((this + 58));
  std::unique_ptr<quasar::rescoring::Rescorer>::reset[abi:ne200100](this + 57, 0);
  quasar::Decoder::~Decoder(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::RescoringDeliberationDecoder::ResultData::ResultData(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a1 = &unk_1F2D0BDB0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = 1;
  kaldi::Timer::Reset((a1 + 24), a2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void sub_1B531113C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::RescoringDeliberationDecoder::ResultData::~ResultData(quasar::RescoringDeliberationDecoder::ResultData *this)
{
  quasar::RescoringDeliberationDecoder::ResultData::~ResultData(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D0BDB0;
  if ((*(this + 64) & 1) == 0 && quasar::gLogLevel >= 1)
  {
    memset(v4, 0, sizeof(v4));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "ResultData destructor ran, but object was not finalized. ", 57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Was an exception thrown?", 24);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v4);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void quasar::rescoring::RescorerConfig::~RescorerConfig(quasar::rescoring::RescorerConfig *this)
{
  std::__tree<int>::destroy(this + 1736, *(this + 218));
  v2 = *(this + 216);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 214);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  quasar::SystemConfig::~SystemConfig((this + 144));
  if (*(this + 128) == 1)
  {
    *(this + 12) = &unk_1F2CFAA28;
    if (*(this + 127) < 0)
    {
      operator delete(*(this + 13));
    }
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void flatbuffers_2_0_6::FlatBufferBuilder::Clear(flatbuffers_2_0_6::FlatBufferBuilder *this)
{
  *(this + 18) = 0;
  *(this + 38) = 0;
  v1 = *(this + 6);
  if (v1)
  {
    v2 = v1 + *(this + 4);
  }

  else
  {
    v2 = 0;
    *(this + 4) = 0;
  }

  *(this + 10) = 0;
  *(this + 7) = v2;
  *(this + 8) = v1;
  *(this + 39) = 0;
  *(this + 10) = 1;
  v3 = *(this + 12);
  if (v3)
  {
    std::__tree<int>::destroy(*(this + 12), *(v3 + 8));
    *v3 = v3 + 8;
    *(v3 + 16) = 0;
    *(v3 + 8) = 0;
  }
}

uint64_t quasar::rescoring::MultiSourceNBestListBuilder::addResultChoices<std::__wrap_iter<std::vector<quasar::Token> const*>>(uint64_t a1, void *a2, void *a3, int a4)
{
  v5 = 0;
  v110 = *MEMORY[0x1E69E9840];
  __src = 0;
  v96 = 0;
  v97 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  memset(&v91, 0, sizeof(v91));
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v90 = (*(a1 + 80) - *(a1 + 72)) >> 2;
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(&v101, "%1%-%2%");
      v98 = (a1 + 48);
      v99 = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string const>;
      v100 = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>;
      v7 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(&v101, &v98);
      v98 = &v90;
      v99 = boost::io::detail::call_put_head<char,std::char_traits<char>,unsigned long const>;
      v100 = boost::io::detail::call_put_last<char,std::char_traits<char>,unsigned long const>;
      v8 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v7, &v98);
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(v8, &v89);
      if (BYTE8(v108) == 1)
      {
        std::locale::~locale(v109);
        BYTE8(v108) = 0;
      }

      boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v107);
      if (SBYTE7(v106) < 0)
      {
        operator delete(__p[0]);
      }

      if (*(&v102 + 1))
      {
        operator delete(*(&v102 + 1));
      }

      v98 = &v101;
      std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](&v98);
      v91.__end_ = v91.__begin_;
      std::vector<int>::reserve(&v91, 0x6DB6DB6DB6DB6DB7 * ((v6[1] - *v6) >> 5));
      v96 = __src;
      v9 = v6[1];
      if (*v6 == v9)
      {
        v38 = 0uLL;
      }

      else
      {
        v10 = *v6 + 168;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v86 = v12;
          v87 = v11;
          v85 = *(v10 + 36);
          v13 = *a1;
          v14 = *(v10 - 145);
          if (v14 >= 0)
          {
            v15 = (v10 - 168);
          }

          else
          {
            v15 = *(v10 - 168);
          }

          if (v14 >= 0)
          {
            v16 = *(v10 - 145);
          }

          else
          {
            v16 = *(v10 - 160);
          }

          String = flatbuffers_2_0_6::FlatBufferBuilder::CreateString(*a1, v15, v16);
          v18 = *(v10 - 97);
          if (v18 >= 0)
          {
            v19 = (v10 - 120);
          }

          else
          {
            v19 = *(v10 - 120);
          }

          if (v18 >= 0)
          {
            v20 = *(v10 - 97);
          }

          else
          {
            v20 = *(v10 - 112);
          }

          v21 = flatbuffers_2_0_6::FlatBufferBuilder::CreateString(*a1, v19, v20);
          if (*v10 == 4)
          {
            v108 = 0u;
            memset(v109, 0, sizeof(v109));
            v106 = 0u;
            memset(v107, 0, sizeof(v107));
            v104 = 0u;
            *__p = 0u;
            v102 = 0u;
            v103 = 0u;
            v101 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v101);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v101, "Provided LME type is invalid. Could it be that the input data was generated using an older version of the decoder?", 114);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v101);
          }

          v22 = v21;
          v23 = *(v10 - 144);
          if (*v10 == 3)
          {
            v24 = 1;
          }

          else
          {
            v24 = 2;
          }

          *(v13 + 78) = 1;
          v25 = *(v13 + 10);
          flatbuffers_2_0_6::FlatBufferBuilder::AddElement<int>(v13, 8, v23, 0);
          flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v13, 6, v22);
          flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v13, 4, String);
          flatbuffers_2_0_6::FlatBufferBuilder::AddElement<signed char>(v13, 10, v24, 0);
          v26 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(v13, v25);
          v27 = v96;
          if (v96 >= v97)
          {
            v29 = __src;
            v30 = v96 - __src;
            v31 = (v96 - __src) >> 2;
            v32 = v31 + 1;
            if ((v31 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v33 = v97 - __src;
            if ((v97 - __src) >> 1 > v32)
            {
              v32 = v33 >> 1;
            }

            v34 = v33 >= 0x7FFFFFFFFFFFFFFCLL;
            v35 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v34)
            {
              v35 = v32;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v35);
            }

            *(4 * v31) = v26;
            v28 = 4 * v31 + 4;
            memcpy(0, v29, v30);
            v36 = __src;
            __src = 0;
            v96 = v28;
            v97 = 0;
            if (v36)
            {
              operator delete(v36);
            }
          }

          else
          {
            *v96 = v26;
            v28 = (v27 + 4);
          }

          v12 = vaddq_f64(v86, vcvt_hight_f64_f32(v85));
          v11 = vaddq_f64(v87, vcvtq_f64_f32(*v85.f32));
          v96 = v28;
          v37 = v10 + 56;
          v10 += 224;
        }

        while (v37 != v9);
        v38 = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
      }

      v88 = v38;
      if (*(a1 + 40))
      {
        v93 = v92;
        v39 = *(a1 + 32);
        if (!v39)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v39 + 48))(&v101);
        v41 = *(&v101 + 1);
        for (i = v101; i != v41; i += 224)
        {
          v42 = *a1;
          v43 = *(i + 23);
          if (v43 >= 0)
          {
            v44 = i;
          }

          else
          {
            v44 = *i;
          }

          if (v43 >= 0)
          {
            v45 = *(i + 23);
          }

          else
          {
            v45 = *(i + 8);
          }

          v46 = flatbuffers_2_0_6::FlatBufferBuilder::CreateString(*a1, v44, v45);
          *(v42 + 78) = 1;
          v47 = *(v42 + 10);
          if (*(v42 + 88) == 1)
          {
            v48 = flatbuffers_2_0_6::FlatBufferBuilder::PushElement<unsigned int>(v42, 0);
            flatbuffers_2_0_6::FlatBufferBuilder::TrackField(v42, 8, v48);
          }

          flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v42, 6, 0);
          flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v42, 4, v46);
          flatbuffers_2_0_6::FlatBufferBuilder::AddElement<signed char>(v42, 10, 0, 0);
          v49 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(v42, v47);
          v50 = v93;
          if (v93 >= v94)
          {
            v52 = v92;
            v53 = v93 - v92;
            v54 = (v93 - v92) >> 2;
            v55 = v54 + 1;
            if ((v54 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v56 = v94 - v92;
            if ((v94 - v92) >> 1 > v55)
            {
              v55 = v56 >> 1;
            }

            v34 = v56 >= 0x7FFFFFFFFFFFFFFCLL;
            v57 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v34)
            {
              v57 = v55;
            }

            if (v57)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v92, v57);
            }

            *(4 * v54) = v49;
            v51 = 4 * v54 + 4;
            memcpy(0, v52, v53);
            v58 = v92;
            v92 = 0;
            v93 = v51;
            v94 = 0;
            if (v58)
            {
              operator delete(v58);
            }
          }

          else
          {
            *v93 = v49;
            v51 = (v50 + 4);
          }

          v93 = v51;
        }

        v98 = &v101;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v98);
      }

      v59 = *a1;
      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = &v89;
      }

      else
      {
        v60 = v89.__r_.__value_.__r.__words[0];
      }

      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v89.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v89.__r_.__value_.__l.__size_;
      }

      v62 = flatbuffers_2_0_6::FlatBufferBuilder::CreateString(*a1, v60, size);
      if (v96 == __src)
      {
        v63 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::NBestListToken>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::NBestListToken>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::NBestListToken>> const&)::t;
      }

      else
      {
        v63 = __src;
      }

      v64 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(*a1, v63, (v96 - __src) >> 2);
      if (v93 == v92)
      {
        v65 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::NBestListToken>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::NBestListToken>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::NBestListToken>> const&)::t;
      }

      else
      {
        v65 = v92;
      }

      v66 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(*a1, v65, (v93 - v92) >> 2);
      *(v59 + 78) = 1;
      v67 = *(v59 + 10);
      flatbuffers_2_0_6::FlatBufferBuilder::AddElement<float>(v59, 18, v88.f32[3], 0.0);
      flatbuffers_2_0_6::FlatBufferBuilder::AddElement<float>(v59, 16, v88.f32[2], 0.0);
      flatbuffers_2_0_6::FlatBufferBuilder::AddElement<float>(v59, 14, v88.f32[1], 0.0);
      flatbuffers_2_0_6::FlatBufferBuilder::AddElement<float>(v59, 12, v88.f32[0], 0.0);
      flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v59, 10, v66);
      flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v59, 8, v64);
      flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v59, 6, v62);
      flatbuffers_2_0_6::FlatBufferBuilder::AddElement<int>(v59, 4, a4, 0);
      v68 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(v59, v67);
      v70 = *(a1 + 80);
      v69 = *(a1 + 88);
      if (v70 >= v69)
      {
        v72 = *(a1 + 72);
        v73 = v70 - v72;
        v74 = (v70 - v72) >> 2;
        v75 = v74 + 1;
        if ((v74 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v76 = v69 - v72;
        if (v76 >> 1 > v75)
        {
          v75 = v76 >> 1;
        }

        v34 = v76 >= 0x7FFFFFFFFFFFFFFCLL;
        v77 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v34)
        {
          v77 = v75;
        }

        if (v77)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1 + 72, v77);
        }

        v78 = v74;
        v79 = (4 * v74);
        v80 = &v79[-v78];
        *v79 = v68;
        v71 = v79 + 1;
        memcpy(v80, v72, v73);
        v81 = *(a1 + 72);
        *(a1 + 72) = v80;
        *(a1 + 80) = v71;
        *(a1 + 88) = 0;
        if (v81)
        {
          operator delete(v81);
        }
      }

      else
      {
        *v70 = v68;
        v71 = v70 + 4;
      }

      *(a1 + 80) = v71;
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      v6 += 3;
    }

    while (v6 != a3);
    if (v91.__begin_)
    {
      v91.__end_ = v91.__begin_;
      operator delete(v91.__begin_);
    }

    v5 = v92;
  }

  if (v5)
  {
    v93 = v5;
    operator delete(v5);
  }

  if (__src)
  {
    v96 = __src;
    operator delete(__src);
  }

  return a1;
}

void sub_1B5311BA4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5311C18);
}

void sub_1B5311BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::lm::operator<<<std::string>(void *a1, uint64_t *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = *(v4 + 23);
      if (v6 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = *v4;
      }

      if (v6 >= 0)
      {
        v8 = *(v4 + 23);
      }

      else
      {
        v8 = *(v4 + 8);
      }

      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v7, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
      v4 += 24;
    }

    while (v4 != v5);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  return a1;
}

std::string *quasar::rescoring::MultiSourceNBestListBuilder::MultiSourceNBestListBuilder(std::string *a1, std::string::size_type a2, __int128 *a3, uint64_t a4)
{
  a1->__r_.__value_.__r.__words[0] = a2;
  v6 = a1 + 2;
  std::__optional_copy_base<std::function<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>,false>::__optional_copy_base[abi:ne200100](&a1->__r_.__value_.__s.__data_[8], a4);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    v6->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  a1[3].__r_.__value_.__r.__words[0] = 0;
  a1[3].__r_.__value_.__l.__size_ = 0;
  a1[3].__r_.__value_.__r.__words[2] = 0;
  return a1;
}

void sub_1B5311D34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::~__value_func[abi:ne200100](v1 + 8);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<std::function<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::__value_func[abi:ne200100](a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_1B5311D9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::~__value_func[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL quasar::ptt::ExtractPronunciation(std::vector<std::vector<quasar::Token>> const&,quasar::ptt::ExtractPronunciationStrategy)::{lambda(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)#1}::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v24[0] = &unk_1F2D0BDE0;
  v25 = v24;
  v5 = *a2;
  v6 = a2[1];
  v7 = 0.0;
  v8 = 0.0;
  while (v5 != v6)
  {
    if (!v25)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v8 = v8 + (*(*v25 + 48))(v25, v5);
    v5 += 224;
  }

  std::__function::__value_func<float ()(quasar::Token const&)>::~__value_func[abi:ne200100](v24);
  v22[0] = &unk_1F2D0BE70;
  v23 = v22;
  v9 = *a3;
  v10 = a3[1];
  if (*a3 != v10)
  {
    v7 = 0.0;
    do
    {
      if (!v23)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v7 = v7 + (*(*v23 + 48))(v23, v9);
      v9 += 224;
    }

    while (v9 != v10);
  }

  std::__function::__value_func<float ()(quasar::Token const&)>::~__value_func[abi:ne200100](v22);
  if (v8 < v7)
  {
    return 1;
  }

  if (v8 > v7)
  {
    return 0;
  }

  v20[0] = &unk_1F2D0BEF0;
  v21 = v20;
  v13 = *a2;
  v12 = a2[1];
  v14 = 0.0;
  v15 = 0.0;
  while (v13 != v12)
  {
    if (!v21)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v15 = v15 + (*(*v21 + 48))(v21, v13);
    v13 += 224;
  }

  std::__function::__value_func<float ()(quasar::Token const&)>::~__value_func[abi:ne200100](v20);
  v18[0] = &unk_1F2D0BF70;
  v19 = v18;
  v17 = *a3;
  v16 = a3[1];
  if (v17 != v16)
  {
    v14 = 0.0;
    do
    {
      if (!v19)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v14 = v14 + (*(*v19 + 48))(v19, v17);
      v17 += 224;
    }

    while (v17 != v16);
  }

  std::__function::__value_func<float ()(quasar::Token const&)>::~__value_func[abi:ne200100](v18);
  return v15 < v14;
}

void sub_1B5312170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<float ()(quasar::Token const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<quasar::ptt::ExtractPronunciation(std::vector<std::vector<quasar::Token>> const&,quasar::ptt::ExtractPronunciationStrategy)::{lambda(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)#1}::operator() const(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)::{lambda(quasar::Token const&)#1},std::allocator<quasar::ptt::ExtractPronunciation(std::vector<std::vector<quasar::Token>> const&,quasar::ptt::ExtractPronunciationStrategy)::{lambda(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)#1}::operator() const(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)::{lambda(quasar::Token const&)#1}>,float ()(quasar::Token const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<float ()(quasar::Token const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<quasar::ptt::ExtractPronunciation(std::vector<std::vector<quasar::Token>> const&,quasar::ptt::ExtractPronunciationStrategy)::{lambda(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)#1}::operator() const(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)::{lambda(quasar::Token const&)#2},std::allocator<quasar::ptt::ExtractPronunciation(std::vector<std::vector<quasar::Token>> const&,quasar::ptt::ExtractPronunciationStrategy)::{lambda(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)#1}::operator() const(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)::{lambda(quasar::Token const&)#2}>,float ()(quasar::Token const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::ptt::ExtractPronunciation(std::vector<std::vector<quasar::Token>> const&,quasar::ptt::ExtractPronunciationStrategy)::{lambda(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)#1}::operator() const(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)::{lambda(quasar::Token const&)#3},std::allocator<quasar::ptt::ExtractPronunciation(std::vector<std::vector<quasar::Token>> const&,quasar::ptt::ExtractPronunciationStrategy)::{lambda(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)#1}::operator() const(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)::{lambda(quasar::Token const&)#3}>,float ()(quasar::Token const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::ptt::ExtractPronunciation(std::vector<std::vector<quasar::Token>> const&,quasar::ptt::ExtractPronunciationStrategy)::{lambda(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)#1}::operator() const(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)::{lambda(quasar::Token const&)#4},std::allocator<quasar::ptt::ExtractPronunciation(std::vector<std::vector<quasar::Token>> const&,quasar::ptt::ExtractPronunciationStrategy)::{lambda(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)#1}::operator() const(std::vector<quasar::Token> const&,std::vector<quasar::Token> const&)::{lambda(quasar::Token const&)#4}>,float ()(quasar::Token const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(uint64_t a1)
{
  boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(a1);

  JUMPOUT(0x1B8C85350);
}

double boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::seekoff@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a1[6];
  if (v5 && a1[8] < v5)
  {
    a1[8] = v5;
  }

  if ((a4 & 8) != 0)
  {
    v6 = a1[3];
    if (v6)
    {
      if (a3 != 2)
      {
        if (a3 == 1)
        {
          if ((a4 & 0x10) == 0)
          {
            goto LABEL_23;
          }
        }

        else if (!a3)
        {
          v7 = 2;
LABEL_22:
          a2 = a2 - v6 + a1[v7];
LABEL_23:
          if (a1[2] > (v6 + a2) || (v6 + a2) > a1[8])
          {
            goto LABEL_25;
          }

          v11 = v6 + a2;
          a1[3] = v11;
          if ((a4 & 0x10) == 0 || !v5)
          {
LABEL_31:
            v8 = a2;
            goto LABEL_26;
          }

          LODWORD(v11) = v11 - v5;
LABEL_30:
          a1[6] = v5 + v11;
          goto LABEL_31;
        }

LABEL_25:
        v8 = -1;
        goto LABEL_26;
      }

      v7 = 8;
      goto LABEL_22;
    }
  }

  v8 = -1;
  if ((a4 & 0x10) != 0 && v5)
  {
    if (!a3)
    {
      v10 = a1[5];
      v9 = v10 - v5;
      goto LABEL_16;
    }

    if (a3 == 2)
    {
      v9 = a1[8] - v5;
      v10 = a1[5];
LABEL_16:
      v11 = v9 + a2;
      if (v10 > v5 + v11)
      {
        goto LABEL_25;
      }

      a2 = v11;
      if (v5 + v11 > a1[8])
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }
  }

LABEL_26:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v8;
  return result;
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::underflow(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (v1 < *(a1 + 32))
    {
      return *v1;
    }

    if ((*(a1 + 76) & 8) != 0)
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        v4 = *(a1 + 64);
        if (v1 < v3 || v1 < v4)
        {
          if (v4 < v3)
          {
            *(a1 + 64) = v3;
            v4 = v3;
          }

          *(a1 + 32) = v4;
          return *v1;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::pbackfail(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 && *(a1 + 16) < v2)
  {
    if (a2 == -1 || (*(a1 + 76) & 0x10) != 0)
    {
      v3 = (v2 - 1);
      *(a1 + 24) = v3;
      if (a2 == -1)
      {
        return 0;
      }

      goto LABEL_10;
    }

    v4 = *(v2 - 1);
    v3 = (v2 - 1);
    if (v4 == a2)
    {
      *(a1 + 24) = v3;
LABEL_10:
      *v3 = a2;
      return a2;
    }
  }

  return 0xFFFFFFFFLL;
}

void boost::throw_exception<boost::io::bad_format_string>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::bad_format_string>::wrapexcept(exception, a1);
}

uint64_t boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>::~format_item(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    std::locale::~locale((a1 + 96));
    *(a1 + 88) = 0;
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

double boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>::reset(uint64_t a1, char a2)
{
  *a1 = -1;
  *(a1 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 112) = 0;
  std::string::resize((a1 + 8), 0, 0);
  std::string::resize((a1 + 32), 0, 0);
  *(a1 + 56) = xmmword_1B5AECAC0;
  *(a1 + 72) = a2;
  *(a1 + 84) = 0;
  *&result = 4098;
  *(a1 + 76) = 4098;
  return result;
}

void boost::optional_detail::optional_base<std::locale>::assign(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v3 = (a1 + 8);
      v4 = (a2 + 8);

      std::locale::operator=(v3, v4);
    }

    else
    {
      std::locale::~locale((a1 + 8));
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    std::locale::locale((a1 + 8), (a2 + 8));
    *a1 = 1;
  }
}

uint64_t boost::io::detail::maybe_throw_exception(uint64_t this, uint64_t a2, uint64_t a3)
{
  if (this)
  {
    v3[0] = &unk_1F2D0C178;
    v3[1] = a2;
    v3[2] = a3;
    boost::throw_exception<boost::io::bad_format_string>(v3);
  }

  return this;
}

char *boost::io::detail::str2int<int,std::__wrap_iter<char const*>,std::ctype<char>>(char **a1, char **a2, _DWORD *a3, void *a4)
{
  *a3 = 0;
  for (i = *a1; i != *a2; ++i)
  {
    v8 = *i;
    if (v8 < 0)
    {
      break;
    }

    if ((*(a4[2] + 4 * v8) & 0x400) == 0)
    {
      break;
    }

    *a3 = (*(*a4 + 72))(a4) + 10 * *a3 - 48;
  }

  return i;
}

char *boost::io::detail::str2int<long,std::__wrap_iter<char const*>,std::ctype<char>>(char **a1, char **a2, void *a3, void *a4)
{
  *a3 = 0;
  for (i = *a1; i != *a2; ++i)
  {
    v8 = *i;
    if (v8 < 0)
    {
      break;
    }

    if ((*(a4[2] + 4 * v8) & 0x400) == 0)
    {
      break;
    }

    *a3 = 10 * *a3 + (*(*a4 + 72))(a4) - 48;
  }

  return i;
}

__n128 boost::wrapexcept<boost::io::bad_format_string>::wrapexcept(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &unk_1F2CFD548;
  a1->n128_u64[1] = &unk_1F2D0C178;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &unk_1F2D0C100;
  a1->n128_u64[1] = &unk_1F2D0C130;
  a1[2].n128_u64[0] = &unk_1F2D0C158;
  a1[2].n128_u64[1] = 0;
  return result;
}

uint64_t boost::wrapexcept<boost::io::bad_format_string>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));
  return a1;
}

void sub_1B5312E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::io::bad_format_string>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::bad_format_string>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::io::bad_format_string>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::io::bad_format_string>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));

  std::exception::~exception(a1);
}

{
  *(a1 + 24) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::exception::~exception(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::io::bad_format_string>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x1B8C85350);
}

void boost::io::bad_format_string::~bad_format_string(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t boost::wrapexcept<boost::io::bad_format_string>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFD548;
  *(a1 + 8) = &unk_1F2D0C178;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = &unk_1F2CFD578;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &unk_1F2D0C100;
  *(a1 + 8) = &unk_1F2D0C130;
  *(a1 + 32) = &unk_1F2D0C158;
  return a1;
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__append(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  v6 = a1[2];
  if (0xEEEEEEEEEEEEEEEFLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v7 + 120 * a2;
      v14 = 120 * a2;
      do
      {
        *(v7 + v12) = *a3;
        v15 = (v7 + v12 + 8);
        if (*(a3 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(v15, *(a3 + 8), *(a3 + 16));
        }

        else
        {
          v16 = *(a3 + 8);
          *(v7 + v12 + 24) = *(a3 + 24);
          *&v15->__r_.__value_.__l.__data_ = v16;
        }

        v17 = v7 + v12;
        if (*(a3 + 55) < 0)
        {
          std::string::__init_copy_ctor_external((v17 + 32), *(a3 + 32), *(a3 + 40));
        }

        else
        {
          v18 = *(a3 + 32);
          *(v17 + 48) = *(a3 + 48);
          *(v17 + 32) = v18;
        }

        v19 = v7 + v12;
        v20 = *(a3 + 56);
        *(v19 + 72) = *(a3 + 72);
        *(v19 + 56) = v20;
        *(v19 + 88) = 0;
        if (*(a3 + 88) == 1)
        {
          std::locale::locale((v19 + 96), (a3 + 96));
          *(v19 + 88) = 1;
        }

        v21 = *(a3 + 104);
        *(v19 + 112) = *(a3 + 112);
        *(v19 + 104) = v21;
        v12 += 120;
      }

      while (v14 != v12);
    }

    else
    {
      v13 = a1[1];
    }

    a1[1] = v13;
  }

  else
  {
    v8 = 0xEEEEEEEEEEEEEEEFLL * ((v7 - *a1) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0x222222222222222)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xEEEEEEEEEEEEEEEFLL * ((v6 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x111111111111111)
    {
      v11 = 0x222222222222222;
    }

    else
    {
      v11 = v9;
    }

    v29 = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>(a1, v11);
    }

    v26 = 0;
    v27 = 120 * v8;
    v28 = 120 * v8;
    std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__construct_at_end(&v26, a2, a3);
    v22 = a1[1];
    v23 = v27 + *a1 - v22;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>(a1, *a1, v22, v23);
    v24 = *a1;
    *a1 = v23;
    v25 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v24;
    *(&v28 + 1) = v25;
    v26 = v24;
    v27 = v24;
    std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~__split_buffer(&v26);
  }
}

void sub_1B5313478(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__construct_at_end(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a2)
  {
    v6 = 0;
    v7 = v4 + 120 * a2;
    v8 = 120 * a2;
    do
    {
      *(v4 + v6) = *a3;
      v9 = (v4 + v6 + 8);
      if (*(a3 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *(a3 + 8), *(a3 + 16));
      }

      else
      {
        v10 = *(a3 + 8);
        *(v4 + v6 + 24) = *(a3 + 24);
        *&v9->__r_.__value_.__l.__data_ = v10;
      }

      v11 = v4 + v6;
      if (*(a3 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((v11 + 32), *(a3 + 32), *(a3 + 40));
      }

      else
      {
        v12 = *(a3 + 32);
        *(v11 + 48) = *(a3 + 48);
        *(v11 + 32) = v12;
      }

      v13 = v4 + v6;
      v14 = *(a3 + 56);
      *(v13 + 72) = *(a3 + 72);
      *(v13 + 56) = v14;
      *(v13 + 88) = 0;
      if (*(a3 + 88) == 1)
      {
        std::locale::locale((v13 + 96), (a3 + 96));
        *(v13 + 88) = 1;
      }

      v15 = *(a3 + 104);
      *(v13 + 112) = *(a3 + 112);
      *(v13 + 104) = v15;
      v6 += 120;
    }

    while (v8 != v6);
  }

  else
  {
    v7 = *(a1 + 16);
  }

  *(a1 + 16) = v7;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::construct[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>(a1, a4, v7);
      v7 += 120;
      a4 = v12 + 120;
      v12 += 120;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>::destroy[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,0>(a1, v5);
      v5 += 120;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

std::locale *std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::construct[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v5 = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 8) = v5;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  v6 = *(a3 + 32);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 32) = v6;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = 0;
  v7 = *(a3 + 56);
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 56) = v7;
  *(a2 + 88) = 0;
  if (*(a3 + 88) == 1)
  {
    result = std::locale::locale((a2 + 96), (a3 + 96));
    *(a2 + 88) = 1;
  }

  v9 = *(a3 + 104);
  *(a2 + 112) = *(a3 + 112);
  *(a2 + 104) = v9;
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 120;
      std::allocator_traits<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>::destroy[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 120;
    std::allocator_traits<std::allocator<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>>::destroy[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,0>(v5, v4 - 120);
  }
}

uint64_t *boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::clear(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (!a1[4] || (v6 = *(v3 + v4), (v6 & 0x80000000) != 0) || ((*(a1[3] + ((v6 >> 3) & 0x1FFFFFF8)) >> v6) & 1) == 0)
      {
        std::string::resize((v3 + v4 + 8), 0, 0);
        v3 = *a1;
        v2 = a1[1];
      }

      ++v5;
      v4 += 120;
    }

    while (v5 < 0xEEEEEEEEEEEEEEEFLL * ((v2 - v3) >> 3));
  }

  *(a1 + 13) = 0;
  *(a1 + 60) = 0;
  if (a1[4])
  {
    v7 = *(a1 + 14);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = a1[3];
      do
      {
        if (((*(v9 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {
          break;
        }

        *(a1 + 13) = ++v8;
      }

      while (v7 != v8);
    }
  }

  return a1;
}

void boost::throw_exception<boost::io::too_many_args>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::too_many_args>::wrapexcept(exception, a1);
}

__n128 boost::wrapexcept<boost::io::too_many_args>::wrapexcept(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &unk_1F2CFD548;
  a1->n128_u64[1] = &unk_1F2D0C278;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &unk_1F2D0C200;
  a1->n128_u64[1] = &unk_1F2D0C230;
  a1[2].n128_u64[0] = &unk_1F2D0C258;
  a1[2].n128_u64[1] = 0;
  return result;
}

uint64_t boost::wrapexcept<boost::io::too_many_args>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));
  return a1;
}

void sub_1B5313C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::io::too_many_args>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::too_many_args>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::io::too_many_args>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::io::too_many_args>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));

  std::exception::~exception(a1);
}

{
  *(a1 + 24) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::exception::~exception(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::io::too_many_args>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x1B8C85350);
}

void boost::io::too_many_args::~too_many_args(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t boost::wrapexcept<boost::io::too_many_args>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFD548;
  *(a1 + 8) = &unk_1F2D0C278;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = &unk_1F2CFD578;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &unk_1F2D0C200;
  *(a1 + 8) = &unk_1F2D0C230;
  *(a1 + 32) = &unk_1F2D0C258;
  return a1;
}

uint64_t boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(uint64_t a1)
{
  v2 = std::ostream::~ostream();
  boost::detail::shared_count::~shared_count((v2 + 16));
  MEMORY[0x1B8C85200](a1 + 24);
  return a1;
}

void boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(uint64_t a1)
{
  v2 = std::ostream::~ostream();
  boost::detail::shared_count::~shared_count((v2 + 16));
  MEMORY[0x1B8C85200](a1 + 24);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toboost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::ostream::~ostream();
  boost::detail::shared_count::~shared_count(v1 + 2);

  JUMPOUT(0x1B8C85200);
}

{
  v1 = (a1 + *(*a1 - 24));
  std::ostream::~ostream();
  boost::detail::shared_count::~shared_count(v1 + 2);
  MEMORY[0x1B8C85200](v1 + 3);

  JUMPOUT(0x1B8C85350);
}

uint64_t boost::detail::sp_counted_impl_pd<boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>> *,boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::No_Op>::get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 24;
  }

  else
  {
    return 0;
  }
}

void boost::throw_exception<boost::io::too_few_args>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::too_few_args>::wrapexcept(exception, a1);
}

__n128 boost::wrapexcept<boost::io::too_few_args>::wrapexcept(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &unk_1F2CFD548;
  a1->n128_u64[1] = &unk_1F2D0C500;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &unk_1F2D0C488;
  a1->n128_u64[1] = &unk_1F2D0C4B8;
  a1[2].n128_u64[0] = &unk_1F2D0C4E0;
  a1[2].n128_u64[1] = 0;
  return result;
}

uint64_t boost::wrapexcept<boost::io::too_few_args>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));
  return a1;
}

void sub_1B5314618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::io::too_few_args>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::too_few_args>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::io::too_few_args>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::io::too_few_args>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));

  std::exception::~exception(a1);
}

{
  *(a1 + 24) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::exception::~exception(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::io::too_few_args>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x1B8C85350);
}

void boost::io::too_few_args::~too_few_args(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t boost::wrapexcept<boost::io::too_few_args>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFD548;
  *(a1 + 8) = &unk_1F2D0C500;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = &unk_1F2CFD578;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &unk_1F2D0C488;
  *(a1 + 8) = &unk_1F2D0C4B8;
  *(a1 + 32) = &unk_1F2D0C4E0;
  return a1;
}

uint64_t boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::~basic_format(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    std::locale::~locale((a1 + 192));
    *(a1 + 184) = 0;
  }

  boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(a1 + 96);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    operator delete(v2);
  }

  v4 = a1;
  std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(flatbuffers_2_0_6::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  flatbuffers_2_0_6::FlatBufferBuilder::StartVector(a1, a3, 4uLL);
  if (a3)
  {
    v6 = a2 - 4;
    v7 = a3;
    do
    {
      v8 = v7 - 1;
      v9 = flatbuffers_2_0_6::FlatBufferBuilder::ReferTo(a1, *(v6 + 4 * v7));
      flatbuffers_2_0_6::FlatBufferBuilder::PushElement<unsigned int>(a1, v9);
      v7 = v8;
    }

    while (v8);
  }

  *(a1 + 78) = 0;

  return flatbuffers_2_0_6::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

void quasar::rescoring::MultiSourceNBestListBuilder::~MultiSourceNBestListBuilder(quasar::rescoring::MultiSourceNBestListBuilder *this)
{
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

  if (*(this + 40) == 1)
  {
    std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::~__value_func[abi:ne200100](this + 8);
  }
}

quasar::rescoring::Rescorer *std::unique_ptr<quasar::rescoring::Rescorer>::reset[abi:ne200100](quasar::rescoring::Rescorer **a1, quasar::rescoring::Rescorer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::rescoring::Rescorer::~Rescorer(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void quasar::rescoring::Rescorer::~Rescorer(quasar::rescoring::Rescorer *this)
{
  quasar::BasicTextSanitizer::~BasicTextSanitizer((this + 1888));
  v2 = *(this + 235);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 233);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__tree<std::string>::destroy(this + 1832, *(this + 230));
  v4 = *(this + 228);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 226);
  *(this + 226) = 0;
  if (v5)
  {
    v9 = (v5 + 80);
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v9);
    v6 = *(v5 + 72);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(v5 + 56);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (*(v5 + 31) < 0)
    {
      operator delete(*(v5 + 8));
    }

    MEMORY[0x1B8C85350](v5, 0x1072C40140BB7A5);
  }

  v8 = *(this + 225);
  *(this + 225) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>>>::destroy(this + 1776, *(this + 223));
  quasar::rescoring::RescorerConfig::~RescorerConfig(this);
}

void std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<quasar::rescoring::AdapterModel>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<quasar::rescoring::AdapterModel>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<quasar::rescoring::AdapterModel>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

quasar::ptt::PronunciationRecognizer *std::unique_ptr<quasar::ptt::PronunciationRecognizer>::reset[abi:ne200100](quasar::ptt::PronunciationRecognizer **a1, quasar::ptt::PronunciationRecognizer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::ptt::PronunciationRecognizer::~PronunciationRecognizer(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void quasar::ptt::PronunciationRecognizer::~PronunciationRecognizer(quasar::ptt::PronunciationRecognizer *this)
{
  v2 = *(this + 252);
  *(this + 252) = 0;
  if (v2)
  {
    (*(*v2 + 152))(v2);
  }

  if (*(this + 2015) < 0)
  {
    operator delete(*(this + 249));
  }

  v3 = *(this + 248);
  *(this + 248) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 247);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 245);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 241);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(this + 1919) < 0)
  {
    operator delete(*(this + 237));
  }

  if (*(this + 1895) < 0)
  {
    operator delete(*(this + 234));
  }

  if (*(this + 1871) < 0)
  {
    operator delete(*(this + 231));
  }

  if (*(this + 1847) < 0)
  {
    operator delete(*(this + 228));
  }

  v7 = *(this + 227);
  *(this + 227) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 215) = &unk_1F2CFAA28;
  if (*(this + 1751) < 0)
  {
    operator delete(*(this + 216));
  }

  *(this + 211) = &unk_1F2CFAA28;
  if (*(this + 1719) < 0)
  {
    operator delete(*(this + 212));
  }

  *(this + 207) = &unk_1F2CFAA28;
  if (*(this + 1687) < 0)
  {
    operator delete(*(this + 208));
  }

  *(this + 203) = &unk_1F2CFAA28;
  if (*(this + 1655) < 0)
  {
    operator delete(*(this + 204));
  }

  *(this + 199) = &unk_1F2CFAA28;
  if (*(this + 1623) < 0)
  {
    operator delete(*(this + 200));
  }

  v8 = *(this + 198);
  *(this + 198) = 0;
  if (v8)
  {
    v9 = std::__function::__value_func<void ()(unsigned long,std::string const&,std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>> const&)>::~__value_func[abi:ne200100](v8);
    MEMORY[0x1B8C85350](v9, 0x1020C40A5B76CDFLL);
  }

  if (*(this + 1583) < 0)
  {
    operator delete(*(this + 195));
  }

  quasar::SystemConfig::~SystemConfig(this);
}

uint64_t std::__function::__value_func<void ()(unsigned long,std::string const&,std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::vector<std::vector<quasar::Token>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<quasar::Token>*>,std::__wrap_iter<std::vector<quasar::Token>*>>(void *a1, void *a2, quasar::Token **a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        std::vector<std::vector<quasar::Token>>::__move_range(a1, a2, a1[1], &a2[3 * a5]);
        v17 = &a3[v18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*,std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<std::vector<quasar::Token>>::__move_range(a1, v5, v10, &v5[3 * a5]);
        v17 = (a3 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(&v27, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
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

    v30 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v15);
    }

    v27 = 0;
    v28 = 8 * (v13 >> 3);
    v29 = v28;
    std::__split_buffer<std::vector<quasar::Token>>::__construct_at_end_with_size<std::__wrap_iter<std::vector<quasar::Token>*>>(&v27, a3, a5);
    v19 = v28;
    memcpy(v29, v5, a1[1] - v5);
    v20 = *a1;
    v21 = v28;
    *&v29 = v29 + a1[1] - v5;
    a1[1] = v5;
    v22 = v5 - v20;
    v23 = (v21 - (v5 - v20));
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    v25 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v24;
    *(&v29 + 1) = v25;
    v27 = v24;
    v28 = v24;
    std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(&v27);
    return v19;
  }

  return v5;
}

uint64_t std::__split_buffer<std::vector<quasar::Token>>::__construct_at_end_with_size<std::__wrap_iter<std::vector<quasar::Token>*>>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = &v4[3 * a3];
    v7 = 24 * a3;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v4, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
      v4 += 3;
      a2 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

void quasar::NearestNeighborSearch::NearestNeighborSearch(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F2D0EE38;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = &unk_1F2D3AC18;
  *(a1 + 88) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = *(a3 + 8);
  }

  v7 = &v9;
  std::string::basic_string[abi:ne200100](&v9, v6 + 1);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v9.__r_.__value_.__r.__words[0];
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

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 46;
  quasar::SystemConfig::setPrefix(a2, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  quasar::NearestNeighborSearch::registerParams(a1, a2);
  quasar::SystemConfig::readPtree(a2, a3);
}

void sub_1B5315768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  v46 = *(v42 + 296);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (*(v42 + 279) < 0)
  {
    operator delete(*(v42 + 256));
  }

  if (*(v42 + 255) < 0)
  {
    operator delete(*(v42 + 232));
  }

  if (*(v42 + 231) < 0)
  {
    operator delete(*(v42 + 208));
  }

  if (*(v42 + 207) < 0)
  {
    operator delete(*(v42 + 184));
  }

  if (*(v42 + 183) < 0)
  {
    operator delete(*(v42 + 160));
  }

  if (*(v42 + 159) < 0)
  {
    operator delete(*v44);
  }

  v47 = *(v42 + 120);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  kaldi::CuVector<float>::~CuVector(v43);
  v48 = *(v42 + 72);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  v49 = *(v42 + 56);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v42);
  _Unwind_Resume(a1);
}

void quasar::NearestNeighborSearch::registerParams(quasar::NearestNeighborSearch *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "embedding-matrix-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Euclid embedding kaldi matrix");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 136, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "vocab-syms-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Vocab symbol table text file");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 160, __p, 1, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lexicon-syms-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "lexicon symbol table text file");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 184, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "unigram-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Unigram kaldi vector file. A negative log unigram vector with values for each vocab");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 208, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "unigram-weight");
  std::string::basic_string[abi:ne200100]<0>(__p, "Unigram weight for calculation combined score with Euclid distance. A value between [0~1)");
  quasar::SystemConfig::Register<float>(a2, v6, this + 128, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "distance-threshold");
  std::string::basic_string[abi:ne200100]<0>(__p, "If > 0, only return nearest neighbors <= distance-threshold. Else, disable this threshold");
  quasar::SystemConfig::Register<float>(a2, v6, this + 280, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "quantized-embedding-matrix-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Euclid embedding kaldi matrix");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 232, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "embedding-matrix-shape-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Kaldi vector of Euclid embedding matrix shape. Required when using quantized-embedding-matrix-file");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 256, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5315C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::NearestNeighborSearch::init(int32x2_t *this)
{
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v45 = &unk_1F2D3AC18;
  v2 = this[34].i8[7];
  if ((*&v2 & 0x8000000000000000) != 0)
  {
    v2 = this[33];
  }

  v49 = 0;
  if (v2)
  {
    kaldi::Input::Input(&v28, &this[32], &v49);
    v3 = kaldi::Input::Stream(&v28);
    kaldi::CuVector<float>::Read(&v45, v3, v49);
    kaldi::Input::~Input(&v28);
  }

  v4 = this[19].i8[7];
  if ((*&v4 & 0x8000000000000000) != 0)
  {
    v4 = this[18];
  }

  if (v4)
  {
    kaldi::Input::Input(&v23, &this[17], &v49);
    if (!v23)
    {
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
      v28 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v28);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "Error opening file: ", 20);
      v18 = this[19].i8[7];
      if (v18 >= 0)
      {
        v19 = this + 17;
      }

      else
      {
        v19 = this[17];
      }

      if (v18 >= 0)
      {
        v20 = this[19].u8[7];
      }

      else
      {
        v20 = this[18];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v28);
    }

    v5 = kaldi::Input::Stream(&v23);
    kaldi::CuMatrix<float>::Read(this, v5, v49, 0);
    kaldi::Input::~Input(&v23);
  }

  if ((this[31].i8[7] & 0x8000000000000000) != 0)
  {
    if (!*&this[30])
    {
      goto LABEL_28;
    }
  }

  else if (!this[31].i8[7])
  {
    goto LABEL_28;
  }

  v6 = this[34].i8[7];
  if ((*&v6 & 0x8000000000000000) != 0)
  {
    v6 = this[33];
  }

  if (!*&v6)
  {
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
    v28 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "embedding-matrix-shape-file is required for quantized-embedding-matrix-file", 75);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v28);
  }

  kaldi::Input::Input(&v27, &this[29], &v49);
  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(&v28, *v46, v46[1]);
  v7 = kaldi::Input::Stream(&v27);
  kaldi::VectorwiseQuantizedMatrix<signed char>::Read(&v28, v7, v49, 0);
  kaldi::CuMatrix<float>::Resize(this, v28, DWORD1(v28), 0, 0);
  if (this[2].i32[1] >= 1)
  {
    v8 = 0;
    LODWORD(v9) = this[2].i32[0];
    do
    {
      v10 = *&this[1] + 4 * this[3].i32[0] * v8;
      v11 = this[4];
      v23 = &unk_1F2CFCA48;
      v24 = v10;
      v26 = v11;
      v25 = v9;
      kaldi::VectorwiseQuantizedMatrix<signed char>::Row(&v28, v8, &v21);
      v9 = this[2].u32[0];
      if (v9 >= 1)
      {
        v12 = 0;
        v13 = v21;
        v14 = v24;
        do
        {
          *(v14 + 4 * v12) = v22 * *(v13 + v12);
          ++v12;
        }

        while (v9 != v12);
      }

      ++v8;
    }

    while (v8 < this[2].i32[1]);
  }

  v15 = *(&v29 + 1);
  *(&v29 + 1) = 0;
  if (v15)
  {
    MEMORY[0x1B8C85350](v15, 0x1000C4077774924);
  }

  v16 = *(&v28 + 1);
  *(&v28 + 1) = 0;
  if (v16)
  {
    MEMORY[0x1B8C85350](v16, 0x1000C4052888210);
  }

  kaldi::Input::~Input(&v27);
LABEL_28:
  quasar::SymbolMap::ReadFstText<std::shared_ptr<fst::SymbolTable>>(&this[20], &v28);
}

void sub_1B5316384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::Input::~Input(va);
  kaldi::CuVector<float>::~CuVector((v6 - 88));
  _Unwind_Resume(a1);
}

void sub_1B53163E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  kaldi::Input::~Input(va2);
  kaldi::CuVector<float>::~CuVector(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  kaldi::CuVector<float>::~CuVector((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1B5316410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  kaldi::VectorwiseQuantizedMatrix<signed char>::~VectorwiseQuantizedMatrix(va);
  JUMPOUT(0x1B531641CLL);
}

void quasar::NearestNeighborSearch::findNearestNeighbors(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (a3 >= 1 && *(a2 + 48) == 1)
  {
    v9 = a4[1];
    v10 = *(a2 + 20);
    if (*a4 == v9 || 0xAAAAAAAAAAAAAAABLL * ((v9 - *a4) >> 3) == v10)
    {
      std::vector<std::vector<quasar::EuclidNeighbor>>::resize(a6, v10);
      if ((*(a2 + 48) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      quasar::computeL2Dist(a1, a1 + 80, a2, &v104);
      if (SHIDWORD(__n[0]) >= 1)
      {
        v11 = 0;
        v88 = vdupq_n_s64(4uLL);
        while (1)
        {
          memset(&v103, 0, sizeof(v103));
          v99 = &unk_1F2CFCA48;
          v100 = *(&v104 + 1) + 4 * LODWORD(__n[1]) * v11;
          v102 = v106;
          v101 = LODWORD(__n[0]);
          v12 = *&a5;
          if ((a5 & 0x100000000) == 0)
          {
            v12 = *(a1 + 280);
          }

          if (v12 <= 0.0)
          {
            std::vector<int>::resize(&v103, SLODWORD(__n[0]));
            if (v103.__end_ != v103.__begin_)
            {
              v29 = 0;
              if ((v103.__end_ - v103.__begin_) <= 1)
              {
                v30 = 1;
              }

              else
              {
                v30 = v103.__end_ - v103.__begin_;
              }

              v13 = vdupq_n_s64(v30 - 1);
              v31 = v103.__begin_ + 2;
              v32 = xmmword_1B5AE0060;
              v33 = xmmword_1B5AE0050;
              do
              {
                v34 = vmovn_s64(vcgeq_u64(v13, v32));
                if (vuzp1_s16(v34, *v13.i8).u8[0])
                {
                  *(v31 - 2) = v29;
                }

                if (vuzp1_s16(v34, *&v13).i8[2])
                {
                  *(v31 - 1) = v29 + 1;
                }

                if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v33))).i32[1])
                {
                  *v31 = v29 + 2;
                  v31[1] = v29 + 3;
                }

                v29 += 4;
                v33 = vaddq_s64(v33, v88);
                v32 = vaddq_s64(v32, v88);
                v31 += 4;
              }

              while (((v30 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v29);
            }
          }

          else
          {
            std::vector<int>::reserve(&v103, SLODWORD(__n[0]));
            v14 = __n[0];
            if (LODWORD(__n[0]))
            {
              v15 = 0;
              v16 = 0;
              do
              {
                if (*(v100 + (v15 >> 30)) <= v12)
                {
                  end = v103.__end_;
                  if (v103.__end_ >= v103.__end_cap_.__value_)
                  {
                    begin = v103.__begin_;
                    v20 = v103.__end_ - v103.__begin_;
                    v21 = v103.__end_ - v103.__begin_;
                    v22 = v21 + 1;
                    if ((v21 + 1) >> 62)
                    {
                      std::vector<int>::__throw_length_error[abi:ne200100]();
                    }

                    v23 = v103.__end_cap_.__value_ - v103.__begin_;
                    if ((v103.__end_cap_.__value_ - v103.__begin_) >> 1 > v22)
                    {
                      v22 = v23 >> 1;
                    }

                    v24 = v23 >= 0x7FFFFFFFFFFFFFFCLL;
                    v25 = 0x3FFFFFFFFFFFFFFFLL;
                    if (!v24)
                    {
                      v25 = v22;
                    }

                    if (v25)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v103, v25);
                    }

                    v26 = (4 * v21);
                    v27 = &v26[-(v103.__end_ - v103.__begin_)];
                    *v26 = v16;
                    v18 = v26 + 1;
                    memcpy(v27, begin, v20);
                    v28 = v103.__begin_;
                    v103.__begin_ = v27;
                    v103.__end_ = v18;
                    v103.__end_cap_.__value_ = 0;
                    if (v28)
                    {
                      operator delete(v28);
                    }
                  }

                  else
                  {
                    *v103.__end_ = v16;
                    v18 = end + 1;
                  }

                  v103.__end_ = v18;
                  v14 = __n[0];
                }

                ++v16;
                v15 += 0x100000000;
              }

              while (v16 < v14);
            }
          }

          if (*(a1 + 112))
          {
            v13.i32[0] = 1.0;
            kaldi::CuVectorBase<float>::AddVec(*v13.i64, 1.0);
          }

          v96 = 0;
          v97 = 0;
          v98 = 0;
          SortSize = quasar::NearestNeighborSearch::getSortSize(a1, a3, a4, v11, &v96);
          v37 = v103.__begin_;
          v36 = v103.__end_;
          if (v103.__end_ - v103.__begin_ >= SortSize)
          {
            v38 = SortSize;
          }

          else
          {
            v38 = v103.__end_ - v103.__begin_;
          }

          *&v94[0] = &v99;
          if (v38 << 32)
          {
            v39 = v38;
            v40 = v38 - 2;
            if (v38 >= 2)
            {
              v41 = &v103.__begin_[v40 >> 1];
              v42 = ~(v40 >> 1);
              do
              {
                SortSize = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::NearestNeighborSearch::findNearestNeighbors(std::optional<kaldi::CuMatrix<float>> &,int,std::vector<std::string> const&,std::optional<float>)::$_0 &,std::__wrap_iter<int *>>(v37, v94, v38, v41--);
                v24 = __CFADD__(v42++, 1);
              }

              while (!v24);
            }

            v43 = &v37[v38];
            if (v43 != v36)
            {
              v44 = &v37[v38];
              do
              {
                v45 = *v44;
                v46 = *v37;
                if (*(v100 + 4 * v45) < *(v100 + 4 * v46))
                {
                  *v44 = v46;
                  *v37 = v45;
                  SortSize = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::NearestNeighborSearch::findNearestNeighbors(std::optional<kaldi::CuMatrix<float>> &,int,std::vector<std::string> const&,std::optional<float>)::$_0 &,std::__wrap_iter<int *>>(v37, v94, v38, v37);
                }

                ++v44;
              }

              while (v44 != v36);
            }

            if (v38 >= 2)
            {
              do
              {
                v47 = 0;
                v48 = *v37;
                v49 = *&v94[0];
                v50 = v37;
                do
                {
                  v51 = v50;
                  v50 += v47 + 1;
                  v52 = 2 * v47;
                  v47 = (2 * v47) | 1;
                  v53 = v52 + 2;
                  if (v53 < v39 && *(*(v49 + 8) + 4 * *v50) < *(*(v49 + 8) + 4 * v50[1]))
                  {
                    ++v50;
                    v47 = v53;
                  }

                  *v51 = *v50;
                }

                while (v47 <= ((v39 - 2) >> 1));
                if (v50 == --v43)
                {
                  *v50 = v48;
                }

                else
                {
                  *v50 = *v43;
                  *v43 = v48;
                  v54 = (v50 - v37 + 4) >> 2;
                  v55 = v54 < 2;
                  v56 = v54 - 2;
                  if (!v55)
                  {
                    v57 = v56 >> 1;
                    v58 = &v37[v57];
                    v59 = *v58;
                    v60 = *v50;
                    v61 = *(v49 + 8);
                    v62 = *(v61 + 4 * v60);
                    if (*(v61 + 4 * v59) < v62)
                    {
                      do
                      {
                        v63 = v58;
                        *v50 = v59;
                        if (!v57)
                        {
                          break;
                        }

                        v57 = (v57 - 1) >> 1;
                        v58 = &v37[v57];
                        v59 = *v58;
                        v50 = v63;
                      }

                      while (*(v61 + 4 * v59) < v62);
                      *v63 = v60;
                    }
                  }
                }

                v55 = v39-- <= 2;
              }

              while (!v55);
            }
          }

          memset(v94, 0, sizeof(v94));
          v95 = 1065353216;
          if (v38 >= 1)
          {
            break;
          }

LABEL_117:
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v94);
          if (SHIBYTE(v98) < 0)
          {
            operator delete(v96);
          }

          if (v103.__begin_)
          {
            v103.__end_ = v103.__begin_;
            operator delete(v103.__begin_);
          }

          if (++v11 >= SHIDWORD(__n[0]))
          {
            goto LABEL_122;
          }
        }

        v64 = 0;
        v65 = v38 & 0x7FFFFFFF;
        while (1)
        {
          if (a3 <= ((*(*a6 + 24 * v11 + 8) - *(*a6 + 24 * v11)) >> 5))
          {
            goto LABEL_117;
          }

          v66 = v103.__begin_[v64];
          v92[0] = 0;
          v92[1] = 0;
          v93 = 0;
          v67 = quasar::QsrText::SingletonInstance(SortSize);
          (*(**(a1 + 48) + 88))(&__p);
          quasar::QsrText::decodeQsrText(v67, &__p, v92);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          quasar::NearestNeighborSearch::postProcessString(a1, v92, &v91);
          v68 = HIBYTE(v98);
          if (v98 < 0)
          {
            v68 = v97;
          }

          if (!v68)
          {
LABEL_101:
            SortSize = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v94, &v91.__r_.__value_.__l.__data_);
            if (!SortSize)
            {
              v77 = *a6;
              v78 = *(*(&v104 + 1) + 4 * LODWORD(__n[1]) * v11 + 4 * v66);
              if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&__p, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
              }

              else
              {
                __p = v91;
              }

              v79 = v77 + 24 * v11;
              v90 = __PAIR64__(v78, v66);
              v80 = *(v79 + 8);
              if (v80 >= *(v79 + 16))
              {
                v82 = std::vector<quasar::EuclidNeighbor>::__emplace_back_slow_path<quasar::EuclidNeighbor>(v77 + 24 * v11, &__p);
              }

              else
              {
                v81 = *&__p.__r_.__value_.__l.__data_;
                *(v80 + 16) = *(&__p.__r_.__value_.__l + 2);
                *v80 = v81;
                memset(&__p, 0, sizeof(__p));
                *(v80 + 24) = v90;
                v82 = v80 + 32;
              }

              *(v79 + 8) = v82;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              SortSize = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v94, &v91.__r_.__value_.__l.__data_);
              v83 = *(a1 + 112);
              if (v83)
              {
                v84 = *(*a6 + 24 * v11 + 8);
                *(v84 - 4) = *(v84 - 4) - *(*(v83 + 8) + 4 * v66);
              }
            }

            goto LABEL_112;
          }

          if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v69 = &v91;
          }

          else
          {
            v69 = v91.__r_.__value_.__r.__words[0];
          }

          if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v91.__r_.__value_.__l.__size_;
          }

          quasar::utf8::convertToLowerCaseOrEmpty(v69, size, &__p);
          if (v98 >= 0)
          {
            v71 = HIBYTE(v98);
          }

          else
          {
            v71 = v97;
          }

          v72 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v73 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v72 = __p.__r_.__value_.__l.__size_;
          }

          if (v71 == v72)
          {
            if (v98 >= 0)
            {
              v74 = &v96;
            }

            else
            {
              v74 = v96;
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            SortSize = memcmp(v74, p_p, v71);
            v76 = SortSize == 0;
            if ((v73 & 0x80000000) == 0)
            {
LABEL_97:
              if (!v76)
              {
                goto LABEL_101;
              }

              goto LABEL_112;
            }
          }

          else
          {
            v76 = 0;
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_97;
            }
          }

          operator delete(__p.__r_.__value_.__l.__data_);
          if (!v76)
          {
            goto LABEL_101;
          }

LABEL_112:
          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v93) < 0)
          {
            operator delete(v92[0]);
          }

          if (v65 == ++v64)
          {
            goto LABEL_117;
          }
        }
      }

LABEL_122:
      kaldi::CuMatrix<float>::~CuMatrix(&v104);
    }

    else if (quasar::gLogLevel >= 1)
    {
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
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
      *__n = 0u;
      v106 = 0u;
      v104 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v104);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v104, "queryMatrix and excludeQueryStrings size mismatched", 51);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v104);
    }
  }
}

void sub_1B5316CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a59);
  std::vector<std::vector<quasar::EuclidNeighbor>>::__destroy_vector::operator()[abi:ne200100](&a59);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<quasar::EuclidNeighbor>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<quasar::EuclidNeighbor>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    *(a1 + 8) = v7;
  }
}

uint64_t quasar::computeL2Dist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int32x2_t *a4@<X8>)
{
  kaldi::CuMatrix<float>::CuMatrix(a4, *(a3 + 20), *(a1 + 20), 0, 0, 0);
  kaldi::CuMatrixBase<float>::CopyRowsFromVec(a4, a2);
  kaldi::CuMatrixBase<float>::AddMatMat(a4, a3, 111, a1, 112);
  kaldi::CuMatrix<float>::CuMatrix(v10, a3, 111);
  kaldi::CuMatrixBase<float>::MulElements(v10, v10);
  v9[0] = &unk_1F2D3AC18;
  memset(&v9[1], 0, 24);
  kaldi::CuVector<float>::Resize(v9, v11, 0);
  kaldi::CuVectorBase<float>::AddColSumMat(v9, v10);
  kaldi::CuMatrixBase<float>::AddVecToCols(a4, v9, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::ApplyPowAbs(a4, 0, 0.5);
  kaldi::CuVector<float>::~CuVector(v9);
  return kaldi::CuMatrix<float>::~CuMatrix(v10);
}

void sub_1B5316F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(v5);
  _Unwind_Resume(a1);
}

uint64_t quasar::NearestNeighborSearch::getSortSize(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  v9 = a2;
  MEMORY[0x1B8C84820](a5, "");
  if (*a3 == a3[1])
  {
    goto LABEL_10;
  }

  v10 = *a3 + 24 * a4;
  v11 = *(v10 + 23);
  if (v11 < 0)
  {
    if (!*(v10 + 8))
    {
      goto LABEL_10;
    }

    v10 = *v10;
    v11 = *(*a3 + 24 * a4 + 8);
  }

  else if (!*(v10 + 23))
  {
    goto LABEL_10;
  }

  quasar::utf8::convertToLowerCaseOrEmpty(v10, v11, &v13);
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = v13;
  ++v9;
LABEL_10:
  if (*(a1 + 288))
  {
    return v9 + 10;
  }

  else
  {
    return v9;
  }
}

void quasar::NearestNeighborSearch::postProcessString(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
  }

  v6 = *(a1 + 288);
  if (v6)
  {
    memset(v11, 0, sizeof(v11));
    if (!quasar::QuasarTextProcImpl::run(v6, a2, v11))
    {
      v7 = *(a3 + 23);
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(a3 + 8);
      }

      if (v7)
      {
        v8[0] = "";
        v8[1] = 0;
        quasar::join<std::vector<std::string>>(v11, v8);
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        *a3 = v9;
        *(a3 + 16) = v10;
      }
    }

    *&v9 = v11;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  }
}

void sub_1B5317138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, char a14)
{
  a11 = &a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(a1);
}

void quasar::NearestNeighborSearch::findNearestNeighbors(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a3 >= 1 && *(a2 + 32) == 1)
  {
    kaldi::CuMatrix<float>::CuMatrix(v13, 1, *(a2 + 16), 0, 0, 0);
    v14 = 1;
    if ((*(a2 + 32) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    kaldi::CuMatrixBase<float>::CopyRowsFromVec(v13, a2);
    quasar::NearestNeighborSearch::findNearestNeighbors(a1, v13, a3, a4, a5, v12);
    if (v12[0] != a6 && v12[0] != v12[1])
    {
      std::vector<quasar::EuclidNeighbor>::__assign_with_size[abi:ne200100]<quasar::EuclidNeighbor*,quasar::EuclidNeighbor*>(a6, *v12[0], *(v12[0] + 8), (*(v12[0] + 8) - *v12[0]) >> 5);
    }

    v15 = v12;
    std::vector<std::vector<quasar::EuclidNeighbor>>::__destroy_vector::operator()[abi:ne200100](&v15);
    if (v14 == 1)
    {
      kaldi::CuMatrix<float>::~CuMatrix(v13);
    }
  }
}

void sub_1B5317284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v19 - 72) = &a10;
  std::vector<std::vector<quasar::EuclidNeighbor>>::__destroy_vector::operator()[abi:ne200100]((v19 - 72));
  if (a19 == 1)
  {
    kaldi::CuMatrix<float>::~CuMatrix(&a13);
  }

  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void quasar::NearestNeighborSearch::lookupEmbedding(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    goto LABEL_19;
  }

  if (a3 == 1)
  {
    if (!*(a1 + 64))
    {
      goto LABEL_19;
    }

    if (v6 < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *a2, *(a2 + 8));
    }

    else
    {
      v16 = *a2;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, " ");
    std::string::basic_string[abi:ne200100]<0>(v18, ".");
    quasar::replaceAll(&v16, __p, v18);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = (*(**(a1 + 64) + 96))(*(a1 + 64), &v16);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (a3)
    {
      goto LABEL_19;
    }

    v8 = (*(**(a1 + 48) + 96))(*(a1 + 48));
  }

  if (v8 != -1)
  {
    v9 = *(a1 + 16);
    v17 = 0;
    v16.__r_.__value_.__r.__words[0] = &unk_1F2D3AC18;
    *&v16.__r_.__value_.__r.__words[1] = 0uLL;
    kaldi::CuVector<float>::Resize(&v16, v9, 0);
    v10 = *(a1 + 16);
    v11 = *(a1 + 32);
    __p[1] = (*(a1 + 8) + 4 * *(a1 + 24) * v8);
    v14 = 0;
    __p[0] = &unk_1F2CFCA48;
    v13 = v10;
    v15 = v11;
    kaldi::CuVector<float>::operator=(&v16, __p);
    kaldi::CuVector<float>::CuVector(a4, &v16);
    *(a4 + 32) = 1;
    kaldi::CuVector<float>::~CuVector(&v16);
    return;
  }

LABEL_19:
  *a4 = 0;
  *(a4 + 32) = 0;
}

void sub_1B53174D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::computeL2Dist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int32x2_t *a3@<X8>)
{
  kaldi::CuMatrix<float>::CuMatrix(v8, a1, 111);
  kaldi::CuMatrixBase<float>::MulElements(v8, v8);
  v7[0] = &unk_1F2D3AC18;
  memset(&v7[1], 0, 24);
  kaldi::CuVector<float>::Resize(v7, v9, 0);
  kaldi::CuVectorBase<float>::AddColSumMat(v7, v8);
  quasar::computeL2Dist(a1, v7, a2, a3);
  kaldi::CuVector<float>::~CuVector(v7);
  return kaldi::CuMatrix<float>::~CuMatrix(v8);
}

void sub_1B53175F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

float quasar::computeL2Dist(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = -1.0;
  if (v2 == *(a2 + 16))
  {
    v6 = kaldi::CuMatrix<float>::CuMatrix(v12, 1, v2, 0, 0, 0);
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(v6, a1);
    kaldi::CuMatrix<float>::CuMatrix(v11, 1, *(a2 + 16), 0, 0, 0);
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(v11, a2);
    quasar::computeL2Dist(v12, v11, v8);
    if (v10 >= 1 && v9 >= 1)
    {
      v3 = *v8[1].i32[0];
    }

    kaldi::CuMatrix<float>::~CuMatrix(v8);
    kaldi::CuMatrix<float>::~CuMatrix(v11);
    kaldi::CuMatrix<float>::~CuMatrix(v12);
  }

  return v3;
}

void sub_1B53176F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(v7 - 80);
  _Unwind_Resume(a1);
}

uint64_t kaldi::VectorwiseQuantizedMatrix<signed char>::~VectorwiseQuantizedMatrix(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    MEMORY[0x1B8C85350](v2, 0x1000C4077774924);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    MEMORY[0x1B8C85350](v3, 0x1000C4052888210);
  }

  return a1;
}

void *std::__shared_ptr_emplace<quasar::QuasarTextProcImpl>::__shared_ptr_emplace[abi:ne200100]<char const*&,quasar::SystemConfig &,std::string &,std::allocator<quasar::QuasarTextProcImpl>,0>(void *a1, char **a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D05FE0;
  std::allocator<quasar::QuasarTextProcImpl>::construct[abi:ne200100]<quasar::QuasarTextProcImpl,char const*&,quasar::SystemConfig &,std::string &>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void std::allocator<quasar::QuasarTextProcImpl>::construct[abi:ne200100]<quasar::QuasarTextProcImpl,char const*&,quasar::SystemConfig &,std::string &>(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a3);
  quasar::QuasarTextProcImpl::QuasarTextProcImpl(a2, __p, a4, a5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B53178EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<kaldi::CuVector<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0C528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::vector<std::vector<quasar::EuclidNeighbor>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::vector<quasar::EuclidNeighbor>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<quasar::EuclidNeighbor>>::~__split_buffer(v18);
  }
}

void **std::__split_buffer<std::vector<quasar::EuclidNeighbor>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<quasar::EuclidNeighbor>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<quasar::EuclidNeighbor>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,quasar::NearestNeighborSearch::findNearestNeighbors(std::optional<kaldi::CuMatrix<float>> &,int,std::vector<std::string> const&,std::optional<float>)::$_0 &,std::__wrap_iter<int *>>(uint64_t result, uint64_t *a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) | 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      v10 = *a2;
      if (v9 >= a3)
      {
        v11 = *(v10 + 8);
      }

      else
      {
        v11 = *(v10 + 8);
        if (*(v11 + 4 * *v8) < *(v11 + 4 * v8[1]))
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *v8;
      v13 = *a4;
      v14 = *(v11 + 4 * v13);
      if (*(v11 + 4 * v12) >= v14)
      {
        do
        {
          *a4 = v12;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v15 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 4 * v7);
          v16 = v15 + 2;
          if (v16 < a3 && *(v11 + 4 * *v8) < *(v11 + 4 * v8[1]))
          {
            ++v8;
            v7 = v16;
          }

          v12 = *v8;
        }

        while (*(v11 + 4 * v12) >= v14);
        *a4 = v13;
      }
    }
  }

  return result;
}

uint64_t std::vector<quasar::EuclidNeighbor>::__emplace_back_slow_path<quasar::EuclidNeighbor>(uint64_t a1, __int128 *a2)
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
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::EuclidNeighbor>,quasar::EuclidNeighbor*>(a1, *a1, v10, v11);
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

void sub_1B5317DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::EuclidNeighbor>,quasar::EuclidNeighbor*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::EuclidNeighbor>,quasar::EuclidNeighbor*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::EuclidNeighbor>,quasar::EuclidNeighbor*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::vector<quasar::EuclidNeighbor>::__assign_with_size[abi:ne200100]<quasar::EuclidNeighbor*,quasar::EuclidNeighbor*>(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<std::pair<std::string,float>>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<quasar::EuclidNeighbor>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v8) >> 5)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8, v6);
        v8[1].__r_.__value_.__r.__words[0] = v6[1].__r_.__value_.__r.__words[0];
        v6 = (v6 + 32);
        v8 = (v8 + 32);
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      v14 = v12[-1].__r_.__value_.__s.__data_[15];
      v12 = (v12 - 32);
      if (v14 < 0)
      {
        operator delete(v12->__r_.__value_.__l.__data_);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v13 = (__str + v12 - v8);
    if (v12 != v8)
    {
      do
      {
        std::string::operator=(v8, v6);
        v8[1].__r_.__value_.__r.__words[0] = v6[1].__r_.__value_.__r.__words[0];
        v6 = (v6 + 32);
        v8 = (v8 + 32);
      }

      while (v6 != v13);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::EuclidNeighbor>,quasar::EuclidNeighbor*,quasar::EuclidNeighbor*,quasar::EuclidNeighbor*>(a1, v13, a3, v12);
  }
}

void std::vector<quasar::EuclidNeighbor>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::EuclidNeighbor>,quasar::EuclidNeighbor*,quasar::EuclidNeighbor*,quasar::EuclidNeighbor*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::EuclidNeighbor>,quasar::EuclidNeighbor*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t quasar::hatTextEncode(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
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

  for (; v4; --v4)
  {
    v5 = *v3;
    if ((v5 - 1) <= 0x1F)
    {
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "^", 1);
      v7 = v6;
      v8 = *v6;
      v9 = v6 + *(*v6 - 24);
      if (*(v9 + 36) == -1)
      {
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v10 = std::locale::use_facet(&v21, MEMORY[0x1E69E5318]);
        v11 = (v10->__vftable[2].~facet_0)(v10, 32);
        std::locale::~locale(&v21);
        *(v9 + 36) = v11;
        v8 = *v7;
      }

      *(v9 + 36) = 48;
      *(v7 + *(v8 - 24) + 24) = 2;
      *(v7 + *(v8 - 24) + 8) = *(v7 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
      MEMORY[0x1B8C84C00](v7, *v3);
      goto LABEL_18;
    }

    if (v5 == 127)
    {
      v12 = "^7F";
    }

    else
    {
      if (v5 != 94)
      {
        LOBYTE(v21.__locale_) = *v3;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &v21, 1);
        goto LABEL_18;
      }

      v12 = "^5E";
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v12, 3);
LABEL_18:
    ++v3;
  }

  std::stringbuf::str();
  v15[0] = *MEMORY[0x1E69E54D8];
  v13 = *(MEMORY[0x1E69E54D8] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v16 = v13;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v20);
}

void sub_1B531849C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::hatTextDecode(uint64_t a1, int a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v52);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      if (*(a1 + 23) >= 0)
      {
        v5 = a1;
      }

      else
      {
        v5 = *a1;
      }

      if (*(v5 + i) == 94)
      {
        if (i > v3 - 3)
        {
          if (a2)
          {
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            *__endptr = 0u;
            v36 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__endptr);
            v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__endptr, "Illegal occurrence of ^ in ", 27);
            v26 = *(a1 + 23);
            if (v26 >= 0)
            {
              v27 = a1;
            }

            else
            {
              v27 = *a1;
            }

            if (v26 >= 0)
            {
              v28 = *(a1 + 23);
            }

            else
            {
              v28 = *(a1 + 8);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__endptr);
          }

          if (quasar::gLogLevel >= 4)
          {
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            *__endptr = 0u;
            v36 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__endptr);
            v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__endptr, "Illegal occurrence of ^ in ", 27);
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

            v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
            v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ". ", 2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "We're gonna let this fly because strict_caret is set to false", 61);
            quasar::QuasarInfoMessage::~QuasarInfoMessage(__endptr);
          }

LABEL_42:
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, "^", 1);
          continue;
        }

        v12 = v5 + i;
        if (*(v12 + 1) < 0)
        {
          goto LABEL_33;
        }

        v13 = i + 2;
        v14 = *(v12 + 1);
        if ((*(MEMORY[0x1E69E9830] + 4 * *(v12 + 1) + 60) & 0x10000) != 0)
        {
          v15 = *(v5 + v13);
          if ((v15 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x10000) != 0)
          {
            __str[0] = *(v12 + 1);
            __str[1] = *(v5 + v13);
            __str[2] = 0;
            __endptr[0] = 0;
            v16 = strtol(__str, __endptr, 16);
            if (__endptr[0] != __str && (v16 == 127 || v16 - 1 <= 0x1F))
            {
              v58[0] = v16;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, v58, 1);
              i += 2;
              continue;
            }

            v14 = *(v12 + 1);
          }
        }

        if (v14 != 53 || (*(v5 + v13) | 0x20) != 0x65)
        {
LABEL_33:
          if (a2)
          {
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            *__endptr = 0u;
            v36 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__endptr);
            v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__endptr, "Illegal occurrence of ^ in ", 27);
            v30 = *(a1 + 23);
            if (v30 >= 0)
            {
              v31 = a1;
            }

            else
            {
              v31 = *a1;
            }

            if (v30 >= 0)
            {
              v32 = *(a1 + 23);
            }

            else
            {
              v32 = *(a1 + 8);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__endptr);
          }

          if (quasar::gLogLevel >= 4)
          {
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            *__endptr = 0u;
            v36 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__endptr);
            v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__endptr, "Illegal occurrence of ^ in ", 27);
            v18 = *(a1 + 23);
            if (v18 >= 0)
            {
              v19 = a1;
            }

            else
            {
              v19 = *a1;
            }

            if (v18 >= 0)
            {
              v20 = *(a1 + 23);
            }

            else
            {
              v20 = *(a1 + 8);
            }

            v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
            v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ". ", 2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "We're gonna let this fly because strict_caret is set to false", 61);
            quasar::QuasarInfoMessage::~QuasarInfoMessage(__endptr);
          }

          goto LABEL_42;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, "^", 1);
        i += 2;
      }

      else
      {
        LOBYTE(__endptr[0]) = *(v5 + i);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, __endptr, 1);
      }
    }
  }

  std::stringbuf::str();
  v52[0] = *MEMORY[0x1E69E54D8];
  v23 = *(MEMORY[0x1E69E54D8] + 72);
  *(v52 + *(v52[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v53 = v23;
  v54 = MEMORY[0x1E69E5548] + 16;
  if (v56 < 0)
  {
    operator delete(v55[7].__locale_);
  }

  v54 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v55);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v57);
}