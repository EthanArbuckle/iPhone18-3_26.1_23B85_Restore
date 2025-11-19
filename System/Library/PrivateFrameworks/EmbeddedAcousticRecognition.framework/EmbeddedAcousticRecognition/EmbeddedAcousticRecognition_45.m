void sub_1B537FBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, char a15)
{
  a9 = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  a12 = &a15;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEEncoderNetConfig::Read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v4 = kaldi::Input::Input(v5, a3, v6);
  kaldi::Input::Stream(v4);
  kaldi::quasar::CreateComputeEngineConfig(a2);
}

void sub_1B5380440(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  kaldi::Input::~Input((v1 - 104));
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEEncoderNet::CEEncoderNet(kaldi::quasar::CEEncoderNetConfig *a1, uint64_t a2)
{
  v4 = kaldi::quasar::CEEncoderNetConfig::CEEncoderNetConfig(a1);
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = __p;
  std::string::basic_string[abi:ne200100](__p, v5 + 7);
  if (v9 < 0)
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

  strcpy(v6 + v5, ".config");
  kaldi::quasar::CEEncoderNetConfig::Read(a1, a2, __p);
}

void sub_1B53805F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __p = v15 + 1;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v17 = *v15;
  *v15 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  kaldi::quasar::CEEncoderNetConfig::~CEEncoderNetConfig(v14);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEEncoderNet::Reset(kaldi::quasar::CEEncoderNet *this)
{
  memset(v3, 0, sizeof(v3));
  v1 = *(this + 19);
  memset(v2, 0, sizeof(v2));
  (*(*v1 + 128))(v1, v3, this + 96, v2, this + 160);
  v4 = v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2[0] = v3;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](v2);
}

void sub_1B53806FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v14 - 40));
  a10 = &a13;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEEncoderNet::~CEEncoderNet(kaldi::quasar::CEEncoderNet *this)
{
  v4 = (this + 160);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = (this + 96);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void kaldi::quasar::CEEncoderNet::Encode(uint64_t a1, std::string::size_type *a2, uint64_t *a3)
{
  if ((*(**a2 + 176))() != *(a1 + 128))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v27, "in->GetNumDims() == cfg_.input_shape_template.ndim");
    goto LABEL_26;
  }

  if ((*(**a2 + 184))(*a2, *(a1 + 124)) != *(a1 + 132))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v27, "in->GetDimSize(cfg_.input_shape_template.col_index) == InputDim()");
LABEL_26:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v27);
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v6 = *(a1 + 48);
  if (*(a1 + 56) == v6)
  {
    v13 = *a2;
LABEL_16:
    p_size = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v27, a1, v13);
    goto LABEL_19;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = v6 + v7;
    v11 = *(*(a1 + 160) + 8 * v9);
    if (v8 >= v29)
    {
      v8 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v27, v10, *(*(a1 + 160) + 8 * v9));
    }

    else
    {
      if (*(v10 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *(v6 + v7), *(v6 + v7 + 8));
      }

      else
      {
        v12 = *v10;
        v8->__r_.__value_.__r.__words[2] = *(v10 + 16);
        *&v8->__r_.__value_.__l.__data_ = v12;
      }

      v8[1].__r_.__value_.__r.__words[0] = v11;
      v8 = (v8 + 32);
    }

    v28 = v8;
    ++v9;
    v6 = *(a1 + 48);
    v7 += 24;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - v6) >> 3) > v9);
  v13 = *a2;
  if (v8 >= v29)
  {
    goto LABEL_16;
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a1, *(a1 + 8));
  }

  else
  {
    v14 = *a1;
    v8->__r_.__value_.__r.__words[2] = *(a1 + 16);
    *&v8->__r_.__value_.__l.__data_ = v14;
  }

  v8[1].__r_.__value_.__r.__words[0] = v13;
  p_size = &v8[1].__r_.__value_.__l.__size_;
  v28 = &v8[1].__r_.__value_.__s.__data_[8];
LABEL_19:
  v28 = p_size;
  memset(v26, 0, sizeof(v26));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v26, *(a1 + 72), *(a1 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  std::vector<std::string>::push_back[abi:ne200100](v26, (a1 + 24));
  v24 = 0uLL;
  v25 = 0;
  v16 = *(a1 + 152);
  memset(v23, 0, sizeof(v23));
  (*(*v16 + 136))(v16, &v27, v26, v23, &v24);
  v30 = v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
  v17 = *(&v24 + 1);
  v18 = *(*(&v24 + 1) - 8);
  *(*(&v24 + 1) - 8) = 0;
  v19 = *a3;
  *a3 = v18;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    v17 = *(&v24 + 1);
  }

  v22 = *(v17 - 8);
  v21 = (v17 - 8);
  v20 = v22;
  *v21 = 0;
  if (v22)
  {
    (*(*v20 + 8))(v20);
  }

  *(&v24 + 1) = v21;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate((a1 + 160));
  *(a1 + 160) = v24;
  *(a1 + 176) = v25;
  v25 = 0;
  v24 = 0uLL;
  v23[0] = &v24;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](v23);
  *&v24 = v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
  v26[0] = &v27;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v26);
}

void kaldi::quasar::CEDecoderNetConfig::Read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v4 = kaldi::Input::Input(v5, a3, v6);
  kaldi::Input::Stream(v4);
  kaldi::quasar::CreateComputeEngineConfig(a2);
}

void sub_1B5381704(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  kaldi::Input::~Input((v1 - 104));
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEDecoderNet::CEDecoderNet(kaldi::quasar::CEDecoderNetConfig *a1, uint64_t a2)
{
  v4 = kaldi::quasar::CEDecoderNetConfig::CEDecoderNetConfig(a1);
  *(v4 + 39) = 0;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v5 + 7);
  if (v9 < 0)
  {
    p_p = __p;
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

  strcpy(p_p + v5, ".config");
  kaldi::quasar::CEDecoderNetConfig::Read(a1, a2, &__p);
}

void sub_1B5381964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __p = v15 + 37;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v18 = v15[36];
  v15[36] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *v16;
  *v16 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  kaldi::quasar::CEDecoderNetConfig::~CEDecoderNetConfig(v15);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEDecoderNet::Reset(kaldi::quasar::CEDecoderNet *this)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v2 = *(this + 35);
  kaldi::quasar::InputShapeTemplate::Get((this + 240), 1, *(this + 63), &__p);
  (*(*v2 + 64))(&p_p, v2, &__p);
  v3 = v18;
  if (v18 >= v19)
  {
    v5 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v17, this, &p_p);
    v6 = p_p;
    v18 = v5;
    p_p = 0;
    if (v6)
    {
      (*(*v6 + 1))(v6);
    }
  }

  else
  {
    if (*(this + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v18, *this, *(this + 1));
    }

    else
    {
      v4 = *this;
      v18->__r_.__value_.__r.__words[2] = *(this + 2);
      *&v3->__r_.__value_.__l.__data_ = v4;
    }

    v3[1].__r_.__value_.__r.__words[0] = p_p;
    v18 = (v3 + 32);
    p_p = 0;
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  v7 = *(this + 35);
  v13 = 0;
  v15 = 0;
  v16 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v13, &__p, 1uLL);
  (*(*v7 + 24))(&p_p, v7, &__p, 0);
  v8 = v18;
  if (v18 >= v19)
  {
    v10 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v17, this + 3, &p_p);
    v11 = p_p;
    v18 = v10;
    p_p = 0;
    if (v11)
    {
      (*(*v11 + 1))(v11);
    }
  }

  else
  {
    if (*(this + 71) < 0)
    {
      std::string::__init_copy_ctor_external(v18, *(this + 6), *(this + 7));
    }

    else
    {
      v9 = *(this + 3);
      v18->__r_.__value_.__r.__words[2] = *(this + 8);
      *&v8->__r_.__value_.__l.__data_ = v9;
    }

    v8[1].__r_.__value_.__r.__words[0] = p_p;
    v18 = (v8 + 32);
    p_p = 0;
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  v12 = *(this + 35);
  __p = 0;
  v15 = 0;
  v16 = 0;
  (*(*v12 + 128))(v12, &v17, this + 216, &__p, this + 296);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  (*(**(this + 36) + 96))(*(this + 36), 1, 0);
  __p = &v17;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B5381CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14)
{
  v16 = *(v14 - 24);
  *(v14 - 24) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEDecoderNet::~CEDecoderNet(kaldi::quasar::CEDecoderNet *this)
{
  v4 = (this + 296);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 36);
  *(this + 36) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 35);
  *(this + 35) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  kaldi::quasar::CEDecoderNetConfig::~CEDecoderNetConfig(this);
}

uint64_t kaldi::quasar::CEDecoderNet::Decode(__int128 *a1, std::string::size_type *a2, std::string::size_type *a3, std::string::size_type *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v12 = *(a1 + 21);
  if (*(a1 + 22) == v12)
  {
    v21 = *a2;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = v12 + v15;
      v19 = *(*(a1 + 37) + 8 * v17);
      if (v16 >= v59)
      {
        v16 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v57, v18, *(*(a1 + 37) + 8 * v17));
      }

      else
      {
        if (*(v18 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v16, *(v12 + v15), *(v12 + v15 + 8));
        }

        else
        {
          v20 = *v18;
          v16->__r_.__value_.__r.__words[2] = *(v18 + 16);
          *&v16->__r_.__value_.__l.__data_ = v20;
        }

        v16[1].__r_.__value_.__r.__words[0] = v19;
        v16 = (v16 + 32);
      }

      v58 = v16;
      ++v17;
      v12 = *(a1 + 21);
      v15 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 22) - v12) >> 3) > v17);
    v21 = *a2;
    if (v16 < v59)
    {
      v7 = a5;
      if (*(a1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v16, *a1, *(a1 + 1));
      }

      else
      {
        v22 = *a1;
        v16->__r_.__value_.__r.__words[2] = *(a1 + 2);
        *&v16->__r_.__value_.__l.__data_ = v22;
      }

      v6 = a6;
      v16[1].__r_.__value_.__r.__words[0] = v21;
      v23 = (v16 + 32);
      v58 = v23;
      v8 = a4;
      goto LABEL_18;
    }

    v7 = a5;
    v6 = a6;
    v8 = a4;
  }

  v23 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v57, a1, v21);
LABEL_18:
  v58 = v23;
  v24 = *a3;
  if (v23 >= v59)
  {
    v26 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v57, (a1 + 24), v24);
  }

  else
  {
    if (*(a1 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v23, *(a1 + 3), *(a1 + 4));
    }

    else
    {
      v25 = *(a1 + 24);
      v23->__r_.__value_.__r.__words[2] = *(a1 + 5);
      *&v23->__r_.__value_.__l.__data_ = v25;
    }

    v23[1].__r_.__value_.__r.__words[0] = v24;
    v26 = (v23 + 32);
    v58 = &v23[1].__r_.__value_.__s.__data_[8];
  }

  v58 = v26;
  v27 = *v8;
  if (v26 >= v59)
  {
    v29 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v57, a1 + 3, *v8);
  }

  else
  {
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(v26, *(a1 + 6), *(a1 + 7));
    }

    else
    {
      v28 = a1[3];
      v26->__r_.__value_.__r.__words[2] = *(a1 + 8);
      *&v26->__r_.__value_.__l.__data_ = v28;
    }

    v26[1].__r_.__value_.__r.__words[0] = v27;
    v29 = (v26 + 32);
    v58 = &v26[1].__r_.__value_.__s.__data_[8];
  }

  v58 = v29;
  v30 = *(a1 + 95);
  if (v30 < 0)
  {
    if (!*(a1 + 10))
    {
      goto LABEL_41;
    }
  }

  else if (!*(a1 + 95))
  {
    goto LABEL_41;
  }

  v31 = *(a1 + 36);
  if (v29 >= v59)
  {
    p_size = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v57, (a1 + 72), *(a1 + 36));
  }

  else
  {
    if ((v30 & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v29, *(a1 + 9), *(a1 + 10));
    }

    else
    {
      v32 = *(a1 + 72);
      v29->__r_.__value_.__r.__words[2] = *(a1 + 11);
      *&v29->__r_.__value_.__l.__data_ = v32;
    }

    v29[1].__r_.__value_.__r.__words[0] = v31;
    p_size = &v29[1].__r_.__value_.__l.__size_;
    v58 = &v29[1].__r_.__value_.__s.__data_[8];
  }

  v58 = p_size;
LABEL_41:
  memset(v56, 0, sizeof(v56));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v56, *(a1 + 24), *(a1 + 25), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 25) - *(a1 + 24)) >> 3));
  std::vector<std::string>::push_back[abi:ne200100](v56, a1 + 6);
  std::vector<std::string>::push_back[abi:ne200100](v56, (a1 + 120));
  if ((*(a1 + 167) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 19))
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (*(a1 + 167))
  {
LABEL_45:
    std::vector<std::string>::push_back[abi:ne200100](v56, a1 + 9);
  }

LABEL_46:
  v54 = 0uLL;
  v55 = 0;
  v34 = *(a1 + 35);
  __p = 0;
  v52 = 0;
  v53 = 0;
  (*(*v34 + 136))(v34, &v57, v56, &__p, &v54);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if ((*(a1 + 167) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 19))
    {
      goto LABEL_53;
    }
  }

  else if (!*(a1 + 167))
  {
    goto LABEL_53;
  }

  __p = 0;
  v52 = 0;
  v53 = 0;
  (*(**(*(&v54 + 1) - 8) + 48))(*(*(&v54 + 1) - 8), &__p);
  v36 = *(&v54 + 1) - 8;
  v35 = *(*(&v54 + 1) - 8);
  *(*(&v54 + 1) - 8) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  *(&v54 + 1) = v36;
  v37 = *__p;
  v52 = __p;
  operator delete(__p);
  if (!v37)
  {
    v48 = 0;
    goto LABEL_63;
  }

LABEL_53:
  v38 = *(&v54 + 1);
  v39 = *(*(&v54 + 1) - 8);
  *(*(&v54 + 1) - 8) = 0;
  v40 = *v6;
  *v6 = v39;
  if (v40)
  {
    (*(*v40 + 8))(v40);
    v38 = *(&v54 + 1);
  }

  v42 = v38 - 8;
  v41 = *(v38 - 8);
  *(v38 - 8) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  *(&v54 + 1) = v38 - 8;
  v43 = *(v38 - 16);
  *(v38 - 16) = 0;
  v44 = *v7;
  *v7 = v43;
  if (v44)
  {
    (*(*v44 + 8))(v44);
    v42 = *(&v54 + 1);
  }

  v47 = *(v42 - 8);
  v46 = (v42 - 8);
  v45 = v47;
  *v46 = 0;
  if (v47)
  {
    (*(*v45 + 8))(v45);
  }

  *(&v54 + 1) = v46;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(a1 + 37);
  *(a1 + 296) = v54;
  *(a1 + 39) = v55;
  v55 = 0;
  v54 = 0uLL;
  v48 = 1;
LABEL_63:
  __p = &v54;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
  *&v54 = v56;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v54);
  v56[0] = &v57;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v56);
  return v48;
}

void sub_1B5382378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  a16 = &a19;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void sub_1B5382484(_Unwind_Exception *a1)
{
  kaldi::quasar::CEEncoderNet::~CEEncoderNet(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CESplitEncoderDecoderNet::~CESplitEncoderDecoderNet(kaldi::quasar::CESplitEncoderDecoderNet *this)
{
  *this = &unk_1F2D0ED78;
  v2 = *(this + 64);
  *(this + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  kaldi::quasar::CEDecoderNet::~CEDecoderNet((this + 192));
  kaldi::quasar::CEEncoderNet::~CEEncoderNet((this + 8));

  quasar::Bitmap::~Bitmap(this);
}

{
  kaldi::quasar::CESplitEncoderDecoderNet::~CESplitEncoderDecoderNet(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::quasar::CESplitEncoderDecoderNet::Encode(uint64_t a1, std::string::size_type *a2)
{
  v12 = 0;
  kaldi::quasar::CEEncoderNet::Encode(a1 + 8, a2, &v12);
  v3 = *(a1 + 512);
  if (v3)
  {
    __p = 0;
    v10 = 0;
    v11 = 0;
    v8 = v3;
    std::vector<TVertex *>::push_back[abi:ne200100](&__p, &v8);
    v4 = v12;
    v8 = v12;
    std::vector<TVertex *>::push_back[abi:ne200100](&__p, &v8);
    (*(**(a1 + 160) + 104))(&v8);
    v5 = v8;
    v8 = 0;
    v6 = *(a1 + 512);
    *(a1 + 512) = v5;
    if (v6)
    {
      (*(*v6 + 8))(v6);
      v7 = v8;
      v8 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }

    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    *(a1 + 512) = v12;
  }
}

void sub_1B53826C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  v14 = *(v12 - 24);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::CESplitEncoderDecoderNet::Encode(uint64_t a1, uint64_t a2)
{
  kaldi::quasar::InputShapeTemplate::Get((a1 + 128), *(a2 + 20), *(a2 + 16), __p);
  v6 = 0;
  kaldi::quasar::CreateBufferFromMatrix(a1 + 160, a2, __p, &v6, &v7);
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  kaldi::quasar::CESplitEncoderDecoderNet::Encode(a1, &v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B53827F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::CESplitEncoderDecoderNet::Encode(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 160);
  kaldi::quasar::InputShapeTemplate::Get((a1 + 128), 1, *(a2 + 16), __p);
  (*(*v4 + 64))(&v7, v4, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  (*(*v7 + 88))(v7, *(a2 + 8), *(a2 + 16), 0);
  kaldi::quasar::CESplitEncoderDecoderNet::Encode(a1, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1B5382954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::CESplitEncoderDecoderNet::Decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(**(a1 + 472) + 24))(v16);
  (*(**(a1 + 472) + 24))(&v15);
  v13 = 0;
  v14 = 0;
  if (*(a1 + 512))
  {
    v8 = kaldi::quasar::CEDecoderNet::Decode((a1 + 192), (a1 + 512), v16, &v15, &v14, &v13);
    if (v8)
    {
      (*(*v14 + 56))(v14, a4);
      v9 = v13;
      (*(*v13 + 56))(v13, a5);
LABEL_5:
      (*(*v9 + 8))(v9);
      goto LABEL_7;
    }

    v9 = v13;
    if (v13)
    {
      goto LABEL_5;
    }
  }

  v8 = 0;
LABEL_7:
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v10 = v15;
  v15 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = v16[0];
  v16[0] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return v8;
}

void sub_1B5382BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::CESplitEncoderDecoderNet::Decode(uint64_t a1, uint64_t a2, uint64_t *a3, int32x2_t *a4, int32x2_t *a5)
{
  (*(**(a1 + 472) + 24))(v21);
  (*(**(a1 + 472) + 24))(&v20);
  v18 = 0;
  v19 = 0;
  if (!*(a1 + 512))
  {
    v9 = 0;
    goto LABEL_8;
  }

  v9 = kaldi::quasar::CEDecoderNet::Decode((a1 + 192), (a1 + 512), v21, &v20, &v19, &v18);
  if ((v9 & 1) == 0)
  {
    v14 = v18;
    if (!v18)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = v19;
  v12 = *a3;
  v11 = a3[1];
  v13 = (*(*a1 + 88))(a1);
  kaldi::quasar::CopyBufferToMatrix(v10, (v11 - v12) >> 2, v13, a4);
  v14 = v18;
  kaldi::quasar::CopyBufferToMatrix(v18, (a3[1] - *a3) >> 2, 0xFFFFFFFFLL, a5);
  if (v14)
  {
LABEL_7:
    (*(*v14 + 8))(v14);
  }

LABEL_8:
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v15 = v20;
  v20 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = v21[0];
  v21[0] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  return v9;
}

void sub_1B5382E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::CESplitEncoderDecoderNet::Decode(uint64_t a1, std::string::size_type *a2, uint64_t *a3)
{
  (*(**a2 + 176))();
  (*(**a2 + 184))(*a2, 0);
  v6 = *(a1 + 472);
  v10 = 0;
  v12 = 0;
  v13 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v10, &__p, 1uLL);
  (*(*v6 + 24))(&v14, v6, &__p, 0);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  __p = 0;
  if (*(a1 + 512))
  {
    v7 = kaldi::quasar::CEDecoderNet::Decode((a1 + 192), (a1 + 512), &v14, a2, a3, &__p);
    if (__p)
    {
      (*(*__p + 8))(__p);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v14;
  v14 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return v7;
}

void sub_1B538303C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    kaldi::quasar::CEInferenceNet::Feedforward();
  }

  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::CESplitEncoderDecoderNet::Decode(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 472);
  v10 = a2;
  v12 = 0;
  v13 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v10, &__p, 1uLL);
  (*(*v5 + 24))(&v14, v5, &__p, 0);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  __p = 0;
  v6 = kaldi::quasar::CESplitEncoderDecoderNet::Decode(a1, &v14, &__p);
  v7 = __p;
  if (v6)
  {
    (*(*__p + 56))(__p, a3);
  }

  else if (!__p)
  {
    goto LABEL_7;
  }

  (*(*v7 + 8))(v7);
LABEL_7:
  v8 = v14;
  v14 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return v6;
}

{
  v5 = *(a1 + 472);
  v10 = a2;
  v12 = 0;
  v13 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v10, &__p, 1uLL);
  (*(*v5 + 24))(&v14, v5, &__p, 0);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  __p = 0;
  v6 = kaldi::quasar::CESplitEncoderDecoderNet::Decode(a1, &v14, &__p);
  v7 = __p;
  if (v6)
  {
    (*(*__p + 40))(__p, a3);
  }

  else if (!__p)
  {
    goto LABEL_7;
  }

  (*(*v7 + 8))(v7);
LABEL_7:
  v8 = v14;
  v14 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return v6;
}

void sub_1B53831EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B538339C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::CESplitEncoderDecoderNet::Reset(kaldi::quasar::CESplitEncoderDecoderNet *this)
{
  kaldi::quasar::CEEncoderNet::Reset((this + 8));
  kaldi::quasar::CEDecoderNet::Reset((this + 192));
  result = *(this + 64);
  *(this + 64) = 0;
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

void kaldi::quasar::CEStatelessEncoderNetConfig::Read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v4 = kaldi::Input::Input(v5, a3, v6);
  kaldi::Input::Stream(v4);
  kaldi::quasar::CreateComputeEngineConfig(a2);
}

void sub_1B5383D6C(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  kaldi::Input::~Input((v1 - 104));
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEStatelessEncoderNet::CEStatelessEncoderNet(kaldi::quasar::CEStatelessEncoderNetConfig *a1, uint64_t a2)
{
  *(kaldi::quasar::CEStatelessEncoderNetConfig::CEStatelessEncoderNetConfig(a1) + 22) = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  v5 = __p;
  std::string::basic_string[abi:ne200100](__p, v4 + 7);
  if (v8 < 0)
  {
    v5 = __p[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, ".config");
  kaldi::quasar::CEStatelessEncoderNetConfig::Read(a1, a2, __p);
}

void sub_1B5383F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 22);
  *(v14 + 22) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  kaldi::quasar::CEStatelessEncoderNetConfig::~CEStatelessEncoderNetConfig(v14);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEStatelessEncoderNet::~CEStatelessEncoderNet(kaldi::quasar::CEStatelessEncoderNet *this)
{
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 96);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void kaldi::quasar::CEStatelessEncoderNet::Encode(uint64_t a1, void *a2, std::string::size_type *a3, std::string::size_type *a4, uint64_t a5, uint64_t *a6)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - *(a1 + 72)) >> 3) != (a2[1] - *a2) >> 3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v37);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v37, "input_states.size() == cfg_.input_states.size()");
    goto LABEL_39;
  }

  if ((*(**a3 + 176))() != *(a1 + 152))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v37);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v37, "input_feats->GetNumDims() == cfg_.input_shape_template.ndim");
    goto LABEL_39;
  }

  if ((*(**a3 + 184))(*a3, *(a1 + 148)) != *(a1 + 156))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v37);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v37, "input_feats->GetDimSize(cfg_.input_shape_template.col_index) == InputDim()");
LABEL_39:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v37);
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v12 = *(a1 + 72);
  if (*(a1 + 80) == v12)
  {
    v19 = *a3;
LABEL_17:
    v21 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf&>(&v37, a1, v19);
    goto LABEL_20;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  do
  {
    v16 = v12 + v13;
    v17 = *(*a2 + 8 * v15);
    if (v14 >= v39)
    {
      v14 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf&>(&v37, v16, *(*a2 + 8 * v15));
    }

    else
    {
      if (*(v16 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v14, *(v12 + v13), *(v12 + v13 + 8));
      }

      else
      {
        v18 = *v16;
        v14->__r_.__value_.__r.__words[2] = *(v16 + 16);
        *&v14->__r_.__value_.__l.__data_ = v18;
      }

      v14[1].__r_.__value_.__r.__words[0] = v17;
      v14 = (v14 + 32);
    }

    v38 = v14;
    ++v15;
    v12 = *(a1 + 72);
    v13 += 24;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v12) >> 3) > v15);
  v19 = *a3;
  if (v14 >= v39)
  {
    goto LABEL_17;
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v14, *a1, *(a1 + 8));
  }

  else
  {
    v20 = *a1;
    v14->__r_.__value_.__r.__words[2] = *(a1 + 16);
    *&v14->__r_.__value_.__l.__data_ = v20;
  }

  v14[1].__r_.__value_.__r.__words[0] = v19;
  v21 = (v14 + 32);
  v38 = &v14[1].__r_.__value_.__s.__data_[8];
LABEL_20:
  v38 = v21;
  v22 = *(a1 + 47);
  if (v22 < 0)
  {
    if (!*(a1 + 32))
    {
      goto LABEL_31;
    }
  }

  else if (!*(a1 + 47))
  {
    goto LABEL_31;
  }

  v23 = *a4;
  if (v21 >= v39)
  {
    p_size = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf&>(&v37, (a1 + 24), v23);
  }

  else
  {
    if ((v22 & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v21, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v24 = *(a1 + 24);
      v21->__r_.__value_.__r.__words[2] = *(a1 + 40);
      *&v21->__r_.__value_.__l.__data_ = v24;
    }

    v21[1].__r_.__value_.__r.__words[0] = v23;
    p_size = &v21[1].__r_.__value_.__l.__size_;
    v38 = &v21[1].__r_.__value_.__s.__data_[8];
  }

  v38 = p_size;
LABEL_31:
  memset(v36, 0, sizeof(v36));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v36, *(a1 + 96), *(a1 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 3));
  std::vector<std::string>::push_back[abi:ne200100](v36, (a1 + 48));
  v34 = 0uLL;
  v35 = 0;
  v26 = *(a1 + 176);
  memset(v33, 0, sizeof(v33));
  (*(*v26 + 136))(v26, &v37, v36, v33, &v34);
  v40 = v33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);
  v27 = *(&v34 + 1);
  v28 = *(*(&v34 + 1) - 8);
  *(*(&v34 + 1) - 8) = 0;
  v29 = *a6;
  *a6 = v28;
  if (v29)
  {
    (*(*v29 + 8))(v29);
    v27 = *(&v34 + 1);
  }

  v32 = *(v27 - 8);
  v31 = (v27 - 8);
  v30 = v32;
  *v31 = 0;
  if (v32)
  {
    (*(*v30 + 8))(v30);
  }

  *(&v34 + 1) = v31;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(a5);
  *a5 = v34;
  *(a5 + 16) = v35;
  v35 = 0;
  v34 = 0uLL;
  v33[0] = &v34;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](v33);
  *&v34 = v36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v34);
  v36[0] = &v37;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v36);
}

void kaldi::quasar::CEStatelessEncoderNet::Encode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  kaldi::quasar::InputShapeTemplate::Get((a1 + 144), *(a3 + 20), *(a3 + 16), v18);
  v16 = 0;
  kaldi::quasar::CreateBufferFromMatrix(a1 + 176, a3, v18, &v16, &v17);
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  (*(**(a1 + 176) + 56))(&v15);
  (*(*v15 + 96))(v15, a4, 0);
  kaldi::quasar::CEStatelessEncoderNet::Encode(a1, a2, &v17, &v15, a5, a6);
  v13 = v15;
  v15 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v17;
  v17 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }
}

void sub_1B53846CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::CEStatelessEncoderNet::InitialStates(kaldi::quasar::CEStatelessEncoderNet *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = this + 120;
  if (*(this + 16) != *(this + 15))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    kaldi::quasar::InputShapeTemplate::Get((this + 144), *(this + 41), *(this + 39), __p);
    (*(**(this + 22) + 64))(v10);
    v5 = v13;
    if (v13 >= v14)
    {
      v7 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v12, this, v10);
      v8 = v10[0];
      v13 = v7;
      v10[0] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }

    else
    {
      if (*(this + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v13, *this, *(this + 1));
      }

      else
      {
        v6 = *this;
        v13->__r_.__value_.__r.__words[2] = *(this + 2);
        *&v5->__r_.__value_.__l.__data_ = v6;
      }

      v5[1].__r_.__value_.__r.__words[0] = v10[0];
      v13 = (v5 + 32);
    }

    v9 = *(this + 22);
    memset(v10, 0, sizeof(v10));
    (*(*v9 + 128))(v9, &v12, v3, v10, a2);
    v15 = v10;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    __p[0] = &v12;
    std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](__p);
  }
}

void sub_1B53848EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *__p, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEStatelessDecoderNetConfig::Read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v4 = kaldi::Input::Input(v5, a3, v6);
  kaldi::Input::Stream(v4);
  kaldi::quasar::CreateComputeEngineConfig(a2);
}

void sub_1B538579C()
{
  *(v0 - 176) = v0 - 152;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v0 - 176);
  if (v2 < 0)
  {
    operator delete(v1);
  }

  JUMPOUT(0x1B53857CCLL);
}

void sub_1B53857C8(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  kaldi::Input::~Input((v1 - 104));
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEStatelessDecoderNet::CEStatelessDecoderNet(kaldi::quasar::CEStatelessDecoderNetConfig *a1, uint64_t a2)
{
  *(kaldi::quasar::CEStatelessDecoderNetConfig::CEStatelessDecoderNetConfig(a1) + 42) = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  v5 = __p;
  std::string::basic_string[abi:ne200100](__p, v4 + 7);
  if (v8 < 0)
  {
    v5 = __p[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, ".config");
  kaldi::quasar::CEStatelessDecoderNetConfig::Read(a1, a2, __p);
}

void sub_1B5385958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 42);
  *(v14 + 42) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  kaldi::quasar::CEStatelessDecoderNetConfig::~CEStatelessDecoderNetConfig(v14);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEStatelessDecoderNet::~CEStatelessDecoderNet(kaldi::quasar::CEStatelessDecoderNet *this)
{
  v2 = *(this + 42);
  *(this + 42) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  kaldi::quasar::CEStatelessDecoderNetConfig::~CEStatelessDecoderNetConfig(this);
}

uint64_t kaldi::quasar::CEStatelessDecoderNet::CroppedAttentionState(kaldi::quasar::CEStatelessDecoderNet *this, const kaldi::quasar::ComputeEngineBufferItf *a2, int a3, int a4)
{
  v8 = kaldi::Matrix<float>::Matrix(v13);
  (*(*a2 + 24))(a2, v13, v8);
  v9 = kaldi::MatrixBase<float>::NumCols(v13) - (a4 + a3);
  if (v9 <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "num_cols > 0", 12);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v10 = kaldi::MatrixBase<float>::NumRows(v13);
  kaldi::SubMatrix<float>::SubMatrix(v12, v13, 0, v10, a3, v9);
  (*(**(this + 42) + 48))(*(this + 42), v12);
  quasar::Bitmap::~Bitmap(v12);
  return kaldi::Matrix<float>::~Matrix(v13);
}

void kaldi::quasar::CEStatelessDecoderNet::LeftPadLastAxis(uint64_t a1, void *a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = (*(**a2 + 176))();
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 0;
    do
    {
      __p = (*(**a2 + 184))(*a2, v8);
      std::vector<long long>::push_back[abi:ne200100](&v18, &__p);
      ++v8;
    }

    while (v7 != v8);
  }

  __p = a3;
  std::vector<long long>::push_back[abi:ne200100](&v18, &__p);
  (*(**(a1 + 336) + 64))(&v17);
  v9 = *a2;
  v21[0] = v17;
  v21[1] = v9;
  v15 = 0;
  v16 = 0;
  __p = 0;
  std::vector<kaldi::quasar::ComputeEngineBufferItf *>::__init_with_size[abi:ne200100]<kaldi::quasar::ComputeEngineBufferItf * const*,kaldi::quasar::ComputeEngineBufferItf * const*>(&__p, v21, &v22, 2uLL);
  (*(**(a1 + 336) + 104))(v21);
  v10 = v21[0];
  v21[0] = 0;
  v11 = *a2;
  *a2 = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = v21[0];
    v21[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  v13 = v17;
  v17 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_1B5385DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::CEStatelessDecoderNet::Decode(uint64_t a1, void *a2, std::string::size_type *a3, std::string::size_type *a4, std::string::size_type *a5, std::string::size_type *a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v9 = (a2[1] - *a2) >> 3;
  if (v9 != 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 128) - *(a1 + 120)) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v119);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v119, "input_states.size() == cfg_.input_states.size()");
    goto LABEL_123;
  }

  if (v9 != 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - *(a1 + 144)) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v119);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v119, "input_states.size() == cfg_.output_states.size()");
    goto LABEL_123;
  }

  v11 = a3;
  if (!*a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v119);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v119, "input_feats != nullptr");
    goto LABEL_123;
  }

  if ((*(**a3 + 176))(*a3) != *(a1 + 304))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v119);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v119, "input_feats->GetNumDims() == cfg_.input_shape_template.ndim");
    goto LABEL_123;
  }

  if ((*(**v11 + 184))(*v11, *(a1 + 296)) <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v119);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v119, "input_feats->GetDimSize(cfg_.input_shape_template.row_index) > 0");
    goto LABEL_123;
  }

  if ((*(**v11 + 184))(*v11, *(a1 + 300)) != *(a1 + 308))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v119);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v119, "input_feats->GetDimSize(cfg_.input_shape_template.col_index) == InputDim()");
LABEL_123:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v119);
  }

  v104 = a7;
  v105 = a8;
  if (!*(a1 + 216))
  {
    goto LABEL_16;
  }

  v17 = *(a1 + 120);
  if (*(a1 + 128) == v17)
  {
    goto LABEL_16;
  }

  v18 = v11;
  v19 = 0;
  v20 = 0;
  v21 = 0x7FFFFFFFLL;
  do
  {
    if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 192), (v17 + v19)))
    {
      FirstNonZeroColumn = kaldi::quasar::ComputeEngineBufferItf::GetFirstNonZeroColumn(*(*a2 + 8 * v20), 0.00097656);
      if (v21 >= FirstNonZeroColumn)
      {
        v21 = FirstNonZeroColumn;
      }

      else
      {
        v21 = v21;
      }
    }

    ++v20;
    v17 = *(a1 + 120);
    v19 += 24;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 128) - v17) >> 3) > v20);
  v11 = v18;
  if (v21 == 0x7FFFFFFF)
  {
LABEL_16:
    v21 = 0;
  }

  v107 = a4;
  v108 = a5;
  v106 = v11;
  v23 = (*(**v11 + 184))(*v11, 0);
  __src = 0;
  v117 = 0;
  v118 = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v24 = *(a1 + 120);
  if (*(a1 + 128) != v24)
  {
    v25 = v23;
    v26 = 0;
    v27 = 0;
    v109 = v23;
    while (1)
    {
      v28 = (v24 + v26);
      v29 = *(*a2 + 8 * v27);
      if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 192), (v24 + v26)) || ((v30 = (*(*v29 + 184))(v29, 1) - v25, v30 <= 0) ? (v31 = v21 == 0) : (v31 = 0), v31))
      {
        v35 = v114;
        if (v114 >= v115)
        {
          v37 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf const&>(&v113, (v24 + v26), v29);
LABEL_45:
          v50 = v37;
          goto LABEL_46;
        }

        v36 = v24 + v26;
        if ((*(v24 + v26 + 23) & 0x80000000) == 0)
        {
LABEL_42:
          v49 = *v28;
          v35->__r_.__value_.__r.__words[2] = *(v28 + 2);
          *&v35->__r_.__value_.__l.__data_ = v49;
          goto LABEL_43;
        }
      }

      else
      {
        kaldi::quasar::CEStatelessDecoderNet::CroppedAttentionState(&v111, a1, v29, v21, v30 & ~(v30 >> 31));
        v32 = v117;
        if (v117 >= v118)
        {
          v38 = __src;
          v39 = v117 - __src;
          v40 = (v117 - __src) >> 3;
          v41 = v40 + 1;
          if ((v40 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v42 = v118 - __src;
          if ((v118 - __src) >> 2 > v41)
          {
            v41 = v42 >> 2;
          }

          v43 = v42 >= 0x7FFFFFFFFFFFFFF8;
          v44 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v43)
          {
            v44 = v41;
          }

          p_src = &__src;
          if (v44)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&__src, v44);
          }

          v45 = v111;
          *&v111 = 0;
          *(8 * v40) = v45;
          v34 = 8 * v40 + 8;
          memcpy(0, v38, v39);
          v46 = __src;
          v47 = v118;
          __src = 0;
          v117 = v34;
          v118 = 0;
          v119 = v46;
          v121 = v46;
          v122 = v47;
          v120 = v46;
          std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(&v119);
          v25 = v109;
        }

        else
        {
          v33 = v111;
          *&v111 = 0;
          *v117 = v33;
          v34 = (v32 + 8);
        }

        v117 = v34;
        v48 = v111;
        *&v111 = 0;
        if (v48)
        {
          (*(*v48 + 8))(v48);
          v34 = v117;
        }

        v29 = *(v34 - 8);
        v35 = v114;
        if (v114 >= v115)
        {
          v37 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf&>(&v113, (v24 + v26), v29);
          goto LABEL_45;
        }

        v36 = v24 + v26;
        if ((*(v24 + v26 + 23) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }
      }

      std::string::__init_copy_ctor_external(v114, *v36, *(v36 + 8));
LABEL_43:
      v35[1].__r_.__value_.__r.__words[0] = v29;
      v50 = (v35 + 32);
LABEL_46:
      v114 = v50;
      ++v27;
      v24 = *(a1 + 120);
      v26 += 24;
      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 128) - v24) >> 3) <= v27)
      {
        goto LABEL_50;
      }
    }
  }

  v50 = 0;
LABEL_50:
  if (v21)
  {
    v51 = *(a1 + 336);
    v52 = *v106;
    v53 = (*(**v106 + 184))(*v106, 0);
    v55 = v107;
    v54 = v108;
    (*(*v51 + 120))(&v111, v51, v52, v21, v53);
    v56 = v117;
    if (v117 >= v118)
    {
      v61 = __src;
      v62 = v117 - __src;
      v63 = (v117 - __src) >> 3;
      v64 = v63 + 1;
      if ((v63 + 1) >> 61)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v65 = v118 - __src;
      if ((v118 - __src) >> 2 > v64)
      {
        v64 = v65 >> 2;
      }

      v43 = v65 >= 0x7FFFFFFFFFFFFFF8;
      v66 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v43)
      {
        v66 = v64;
      }

      p_src = &__src;
      if (v66)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&__src, v66);
      }

      v68 = (8 * v63);
      v69 = v111;
      *&v111 = 0;
      v70 = &v68[-((v117 - __src) >> 3)];
      *v68 = v69;
      v58 = (v68 + 1);
      memcpy(v70, v61, v62);
      v71 = __src;
      v72 = v118;
      __src = v70;
      v117 = v58;
      v118 = 0;
      v119 = v71;
      v121 = v71;
      v122 = v72;
      v120 = v71;
      std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(&v119);
    }

    else
    {
      v57 = v111;
      *&v111 = 0;
      *v117 = v57;
      v58 = v56 + 8;
    }

    v117 = v58;
    v73 = v111;
    *&v111 = 0;
    if (v73)
    {
      (*(*v73 + 8))(v73);
      v58 = v117;
    }

    v74 = *(v58 - 1);
    v75 = v114;
    if (v114 < v115)
    {
      if (*(a1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v114, *a1, *(a1 + 8));
      }

      else
      {
        v76 = *a1;
        v114->__r_.__value_.__r.__words[2] = *(a1 + 16);
        *&v75->__r_.__value_.__l.__data_ = v76;
      }

      v75[1].__r_.__value_.__r.__words[0] = v74;
      v77 = (v75 + 32);
      goto LABEL_76;
    }

    v67 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf&>(&v113, a1, *(v58 - 1));
  }

  else
  {
    v55 = v107;
    v59 = *v106;
    v54 = v108;
    if (v50 < v115)
    {
      if (*(a1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v50, *a1, *(a1 + 8));
      }

      else
      {
        v60 = *a1;
        v50->__r_.__value_.__r.__words[2] = *(a1 + 16);
        *&v50->__r_.__value_.__l.__data_ = v60;
      }

      v50[1].__r_.__value_.__r.__words[0] = v59;
      v77 = (v50 + 32);
      goto LABEL_76;
    }

    v67 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf&>(&v113, a1, *v106);
  }

  v77 = v67;
LABEL_76:
  v114 = v77;
  v78 = *v55;
  if (v77 >= v115)
  {
    v80 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf&>(&v113, (a1 + 24), *v55);
  }

  else
  {
    if (*(a1 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v77, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v79 = *(a1 + 24);
      v77->__r_.__value_.__r.__words[2] = *(a1 + 40);
      *&v77->__r_.__value_.__l.__data_ = v79;
    }

    v77[1].__r_.__value_.__r.__words[0] = v78;
    v80 = (v77 + 32);
  }

  v114 = v80;
  v81 = *v54;
  if (v80 >= v115)
  {
    v83 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf&>(&v113, (a1 + 48), *v54);
  }

  else
  {
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(v80, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      v82 = *(a1 + 48);
      v80->__r_.__value_.__r.__words[2] = *(a1 + 64);
      *&v80->__r_.__value_.__l.__data_ = v82;
    }

    v80[1].__r_.__value_.__r.__words[0] = v81;
    v83 = (v80 + 32);
  }

  v114 = v83;
  v84 = *(a1 + 295);
  if (v84 < 0)
  {
    if (!*(a1 + 280))
    {
      goto LABEL_99;
    }
  }

  else if (!*(a1 + 295))
  {
    goto LABEL_99;
  }

  v85 = *a6;
  if (v83 >= v115)
  {
    v87 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf&>(&v113, (a1 + 272), *a6);
  }

  else
  {
    if ((v84 & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v83, *(a1 + 272), *(a1 + 280));
    }

    else
    {
      v86 = *(a1 + 272);
      v83->__r_.__value_.__r.__words[2] = *(a1 + 288);
      *&v83->__r_.__value_.__l.__data_ = v86;
    }

    v83[1].__r_.__value_.__r.__words[0] = v85;
    v87 = (v83 + 32);
  }

  v114 = v87;
LABEL_99:
  v119 = 0;
  v120 = 0;
  v121 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v119, *(a1 + 144), *(a1 + 152), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - *(a1 + 144)) >> 3));
  std::vector<std::string>::push_back[abi:ne200100](&v119, (a1 + 72));
  std::vector<std::string>::push_back[abi:ne200100](&v119, (a1 + 96));
  v111 = 0uLL;
  v112 = 0;
  v88 = *(a1 + 336);
  memset(v110, 0, sizeof(v110));
  (*(*v88 + 136))(v88, &v113, &v119, v110, &v111);
  v124 = v110;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v124);
  v89 = *(*(&v111 + 1) - 8);
  *(*(&v111 + 1) - 8) = 0;
  v90 = *a9;
  *a9 = v89;
  if (v90)
  {
    (*(*v90 + 8))(v90);
  }

  if (v21)
  {
    kaldi::quasar::CEStatelessDecoderNet::LeftPadLastAxis(a1, a9, v21);
  }

  v91 = *(&v111 + 1);
  v93 = *(&v111 + 1) - 8;
  v92 = *(*(&v111 + 1) - 8);
  *(*(&v111 + 1) - 8) = 0;
  if (v92)
  {
    (*(*v92 + 8))(v92);
  }

  *(&v111 + 1) = v93;
  v94 = *(v91 - 16);
  *(v91 - 16) = 0;
  v95 = *v105;
  *v105 = v94;
  if (v95)
  {
    (*(*v95 + 8))(v95);
    v93 = *(&v111 + 1);
  }

  v98 = *(v93 - 8);
  v97 = (v93 - 8);
  v96 = v98;
  *v97 = 0;
  if (v98)
  {
    (*(*v96 + 8))(v96);
  }

  *(&v111 + 1) = v97;
  if (v21)
  {
    if (*(a1 + 216))
    {
      v99 = *(a1 + 120);
      if (*(a1 + 128) != v99)
      {
        v100 = 0;
        v101 = 0;
        v102 = 0;
        do
        {
          if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 192), (v99 + v100)))
          {
            kaldi::quasar::CEStatelessDecoderNet::LeftPadLastAxis(a1, (v111 + v101), v21);
          }

          ++v102;
          v99 = *(a1 + 120);
          v101 += 8;
          v100 += 24;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 128) - v99) >> 3) > v102);
      }
    }
  }

  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(v104);
  *v104 = v111;
  *(v104 + 16) = v112;
  v112 = 0;
  v111 = 0uLL;
  v110[0] = &v111;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](v110);
  *&v111 = &v119;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v111);
  v119 = &v113;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v119);
  v119 = &__src;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v119);
}

void sub_1B5386958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void ***a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, char a26)
{
  a19 = &a23;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a19);
  a23 = &a26;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::CEStatelessDecoderNet::Decode(uint64_t a1, void *a2, std::string::size_type *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(**(a1 + 336) + 24))(&v25);
  (*(**(a1 + 336) + 24))(&v24);
  v15 = *(a1 + 336);
  memset(__p, 0, sizeof(__p));
  (*(*v15 + 56))(&v23);
  (*(*v23 + 96))(v23, a6, 0);
  v21 = 0;
  __p[0] = 0;
  kaldi::quasar::CEStatelessDecoderNet::Decode(a1, a2, a3, &v25, &v24, &v23, a7, __p, &v21);
  v16 = __p[0];
  (*(*__p[0] + 56))(__p[0], a8);
  v17 = v21;
  (*(*v21 + 56))(v21, a9);
  (*(*v17 + 8))(v17);
  (*(*v16 + 8))(v16);
  v18 = v23;
  v23 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = v24;
  v24 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  result = v25;
  v25 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1B5386D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::CEStatelessDecoderNet::InitialStates(kaldi::quasar::CEStatelessDecoderNet *this@<X0>, void *a2@<X8>)
{
  v36[1] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = this + 168;
  if (*(this + 22) != *(this + 21))
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    kaldi::quasar::InputShapeTemplate::Get((this + 296), 1, *(this + 77), v31);
    (*(**(this + 42) + 64))(&__p);
    v5 = v33;
    if (v33 >= v34)
    {
      v7 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v32, this, &__p);
      v8 = __p;
      v33 = v7;
      __p = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }

    else
    {
      if (*(this + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v33, *this, *(this + 1));
      }

      else
      {
        v6 = *this;
        v33->__r_.__value_.__r.__words[2] = *(this + 2);
        *&v5->__r_.__value_.__l.__data_ = v6;
      }

      v5[1].__r_.__value_.__r.__words[0] = __p;
      v33 = (v5 + 32);
    }

    v9 = *(this + 42);
    LODWORD(v27) = 0;
    v29 = 0;
    v30 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v27, &v27 + 4, 1uLL);
    (*(*v9 + 24))(&v35, v9, &__p, 0);
    v10 = v33;
    if (v33 >= v34)
    {
      v12 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v32, this + 3, &v35);
      v13 = v35.i64[0];
      v33 = v12;
      v35.i64[0] = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    else
    {
      if (*(this + 71) < 0)
      {
        std::string::__init_copy_ctor_external(v33, *(this + 6), *(this + 7));
      }

      else
      {
        v11 = *(this + 3);
        v33->__r_.__value_.__r.__words[2] = *(this + 8);
        *&v10->__r_.__value_.__l.__data_ = v11;
      }

      v10[1].__r_.__value_.__r.__words[0] = v35.i64[0];
      v33 = (v10 + 32);
      v35.i64[0] = 0;
    }

    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    v14 = *(this + 42);
    LODWORD(v27) = 0;
    v29 = 0;
    v30 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v27, &v27 + 4, 1uLL);
    (*(*v14 + 24))(&v35, v14, &__p, 0);
    v15 = v33;
    if (v33 >= v34)
    {
      v17 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v32, (this + 24), &v35);
      v18 = v35.i64[0];
      v33 = v17;
      v35.i64[0] = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    else
    {
      if (*(this + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v33, *(this + 3), *(this + 4));
      }

      else
      {
        v16 = *(this + 24);
        v33->__r_.__value_.__r.__words[2] = *(this + 5);
        *&v15->__r_.__value_.__l.__data_ = v16;
      }

      v15[1].__r_.__value_.__r.__words[0] = v35.i64[0];
      v33 = (v15 + 32);
      v35.i64[0] = 0;
    }

    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    v19 = *(this + 26);
    if (v19)
    {
      v26 = vdupq_n_s64(1uLL);
      do
      {
        v20 = *(this + 42);
        v35 = v26;
        v29 = 0;
        v30 = 0;
        __p = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v35, v36, 2uLL);
        (*(*v20 + 64))(&v27, v20, &__p);
        v21 = v33;
        if (v33 >= v34)
        {
          v23 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v32, v19 + 1, &v27);
          v24 = v27;
          v33 = v23;
          v27 = 0;
          if (v24)
          {
            (*(*v24 + 8))(v24);
          }
        }

        else
        {
          if (*(v19 + 39) < 0)
          {
            std::string::__init_copy_ctor_external(v33, *(v19 + 2), *(v19 + 3));
          }

          else
          {
            v22 = v19[1];
            v33->__r_.__value_.__r.__words[2] = *(v19 + 4);
            *&v21->__r_.__value_.__l.__data_ = v22;
          }

          v21[1].__r_.__value_.__r.__words[0] = v27;
          v33 = (v21 + 32);
          v27 = 0;
        }

        if (__p)
        {
          v29 = __p;
          operator delete(__p);
        }

        v19 = *v19;
      }

      while (v19);
    }

    v25 = *(this + 42);
    __p = 0;
    v29 = 0;
    v30 = 0;
    (*(*v25 + 128))(v25, &v32, v3, &__p, a2);
    v35.i64[0] = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
    if (v31[0])
    {
      v31[1] = v31[0];
      operator delete(v31[0]);
    }

    v31[0] = &v32;
    std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](v31);
  }
}

void sub_1B53872F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(v19 - 80);
  *(v19 - 80) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  a15 = &a18;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::CEStatelessDecoderNet::CopyCellOutputs(void *a1, void *a2, uint64_t *a3)
{
  v3 = a2[1] - *a2;
  v4 = a1[15];
  v5 = a1[16];
  if (v3 >> 3 != 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "src_states.size() == cfg_.input_states.size()");
    goto LABEL_18;
  }

  if (v3 >> 3 != 0xAAAAAAAAAAAAAAABLL * ((a1[19] - a1[18]) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "src_states.size() == cfg_.output_states.size()");
    goto LABEL_18;
  }

  if (v3 != a3[1] - *a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "src_states.size() == dst_states.size()");
LABEL_18:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  v8 = 0;
  if (a1[32] && v5 != v4)
  {
    v10 = 0;
    v11 = 0;
    v8 = 0;
    do
    {
      if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1 + 29, (v4 + v10)))
      {
        (*(**(*a2 + 8 * v11) + 16))(v17);
        v12 = *a3;
        v13 = v17[0];
        v17[0] = 0;
        v14 = *(v12 + 8 * v11);
        *(v12 + 8 * v11) = v13;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        v15 = v17[0];
        v17[0] = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

        v8 = 1;
      }

      ++v11;
      v4 = a1[15];
      v10 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[16] - v4) >> 3) > v11);
  }

  return v8 & 1;
}

kaldi::quasar::CEEncoderDecoderNetConfig *kaldi::quasar::CEEncoderDecoderNetConfig::CEEncoderDecoderNetConfig(kaldi::quasar::CEEncoderDecoderNetConfig *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(this, "encoder_input");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "decoder_parent_ids");
  std::string::basic_string[abi:ne200100]<0>(this + 48, "decoder_input");
  std::string::basic_string[abi:ne200100]<0>(this + 72, "");
  std::string::basic_string[abi:ne200100]<0>(this + 96, "");
  std::string::basic_string[abi:ne200100]<0>(this + 120, "decoder_output");
  std::string::basic_string[abi:ne200100]<0>(this + 144, "decoder_attention");
  std::string::basic_string[abi:ne200100]<0>(this + 168, "encode");
  std::string::basic_string[abi:ne200100]<0>(this + 192, "reset");
  kaldi::quasar::InputShapeTemplate::InputShapeTemplate((this + 216));
  *(this + 228) = xmmword_1B5AE1340;
  *(this + 244) = 0xFFFFFFFF00000001;
  *(this + 63) = 8;
  *(this + 32) = 0;
  return this;
}

void sub_1B5387724(_Unwind_Exception *exception_object)
{
  if (*(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
  }

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

void kaldi::quasar::CEEncoderDecoderNetConfig::~CEEncoderDecoderNetConfig(kaldi::quasar::CEEncoderDecoderNetConfig *this)
{
  v2 = *(this + 32);
  *(this + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
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

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

kaldi::quasar::CEEncoderNetConfig *kaldi::quasar::CEEncoderNetConfig::CEEncoderNetConfig(kaldi::quasar::CEEncoderNetConfig *this)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = std::string::basic_string[abi:ne200100]<0>(this, "inputs");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "outputs");
  std::string::basic_string[abi:ne200100]<0>(__p, "input_states");
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(this + 48, __p, &v6, 1uLL);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "output_states");
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(this + 72, __p, &v6, 1uLL);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "initial_states");
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(this + 96, __p, &v6, 1uLL);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  kaldi::quasar::InputShapeTemplate::InputShapeTemplate((this + 120));
  *(this + 132) = -1;
  *(this + 35) = 1;
  *(this + 18) = 0;
  return this;
}

void sub_1B5387A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = v15;
  __p = v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v14 + 47) < 0)
  {
    operator delete(*(v14 + 24));
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::CEEncoderNetConfig::~CEEncoderNetConfig(kaldi::quasar::CEEncoderNetConfig *this)
{
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 96);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

kaldi::quasar::CEDecoderNetConfig *kaldi::quasar::CEDecoderNetConfig::CEDecoderNetConfig(kaldi::quasar::CEDecoderNetConfig *this)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = std::string::basic_string[abi:ne200100]<0>(this, "feats");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "parents");
  std::string::basic_string[abi:ne200100]<0>(this + 48, "inputs");
  std::string::basic_string[abi:ne200100]<0>(this + 72, "");
  std::string::basic_string[abi:ne200100]<0>(this + 96, "outputs");
  std::string::basic_string[abi:ne200100]<0>(this + 120, "attentions");
  std::string::basic_string[abi:ne200100]<0>(this + 144, "");
  std::string::basic_string[abi:ne200100]<0>(__p, "input_states");
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(this + 168, __p, &v6, 1uLL);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "output_states");
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(this + 192, __p, &v6, 1uLL);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "initial_states");
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(this + 216, __p, &v6, 1uLL);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  kaldi::quasar::InputShapeTemplate::InputShapeTemplate((this + 240));
  *(this + 252) = xmmword_1B5AFC400;
  *(this + 67) = -1;
  *(this + 34) = 0;
  return this;
}

void sub_1B5387D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = v15;
  __p = v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v14 + 167) < 0)
  {
    operator delete(*(v14 + 144));
  }

  if (*(v14 + 143) < 0)
  {
    operator delete(*(v14 + 120));
  }

  if (*(v14 + 119) < 0)
  {
    operator delete(*(v14 + 96));
  }

  if (*(v14 + 95) < 0)
  {
    operator delete(*(v14 + 72));
  }

  if (*(v14 + 71) < 0)
  {
    operator delete(*(v14 + 48));
  }

  if (*(v14 + 47) < 0)
  {
    operator delete(*(v14 + 24));
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::CEDecoderNetConfig::~CEDecoderNetConfig(kaldi::quasar::CEDecoderNetConfig *this)
{
  v2 = *(this + 34);
  *(this + 34) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 216);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 192);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
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

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

kaldi::quasar::CEStatelessEncoderNetConfig *kaldi::quasar::CEStatelessEncoderNetConfig::CEStatelessEncoderNetConfig(kaldi::quasar::CEStatelessEncoderNetConfig *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(this, "input_feats");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "");
  std::string::basic_string[abi:ne200100]<0>(this + 48, "output_feats");
  *(this + 72) = 0u;
  *(this + 17) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 88) = 0u;
  kaldi::quasar::InputShapeTemplate::InputShapeTemplate((this + 144));
  *(this + 156) = -1;
  *(this + 41) = 1;
  *(this + 21) = 0;
  return this;
}

void sub_1B538803C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = (v10 + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 96);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
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

  _Unwind_Resume(a1);
}

void kaldi::quasar::CEStatelessEncoderNetConfig::~CEStatelessEncoderNetConfig(kaldi::quasar::CEStatelessEncoderNetConfig *this)
{
  v2 = *(this + 21);
  *(this + 21) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 96);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

kaldi::quasar::CEStatelessDecoderNetConfig *kaldi::quasar::CEStatelessDecoderNetConfig::CEStatelessDecoderNetConfig(kaldi::quasar::CEStatelessDecoderNetConfig *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(this, "input_feats");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "input_parents");
  std::string::basic_string[abi:ne200100]<0>(this + 48, "input_labels");
  std::string::basic_string[abi:ne200100]<0>(this + 72, "output_loglikes");
  std::string::basic_string[abi:ne200100]<0>(this + 96, "output_alignments");
  *(this + 120) = 0u;
  *(this + 168) = 0u;
  *(this + 27) = 0;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 56) = 1065353216;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 66) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(this + 272, "");
  kaldi::quasar::InputShapeTemplate::InputShapeTemplate((this + 296));
  *(this + 308) = xmmword_1B5AFC400;
  *(this + 81) = -1;
  *(this + 41) = 0;
  return this;
}

void sub_1B5388268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 295) < 0)
  {
    operator delete(v12[19]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v11);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v12 + 9));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v12 + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
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

  _Unwind_Resume(a1);
}

void kaldi::quasar::CEStatelessDecoderNetConfig::~CEStatelessDecoderNetConfig(kaldi::quasar::CEStatelessDecoderNetConfig *this)
{
  v2 = *(this + 41);
  *(this + 41) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 232);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 192);
  v3 = (this + 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
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

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::string::value_type *std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(uint64_t a1, __int128 *a2, std::string::size_type *a3)
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

  v26 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>(a1, v9);
  }

  v10 = (32 * v3);
  v22 = 0;
  v23 = v10;
  v11 = 0;
  v24 = v10;
  v25 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
    v13 = v23;
    v14 = v24;
    v11 = v25;
  }

  else
  {
    v12 = *a2;
    v10->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v10->__r_.__value_.__l.__data_ = v12;
    v13 = v10;
    v14 = v10;
  }

  v15 = *a3;
  *a3 = 0;
  v10[1].__r_.__value_.__r.__words[0] = v15;
  v16 = &v14[1].__r_.__value_.__s.__data_[8];
  v17 = *(a1 + 8) - *a1;
  v18 = v13 - v17;
  memcpy(v13 - v17, *a1, v17);
  v19 = *a1;
  *a1 = v18;
  *(a1 + 8) = v16;
  v20 = *(a1 + 16);
  *(a1 + 16) = v11;
  v24 = v19;
  v25 = v20;
  v22 = v19;
  v23 = v19;
  std::__split_buffer<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(&v22);
  return v16;
}

void sub_1B5388558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 32;
    std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::destroy[abi:ne200100](v4, i - 32);
  }
}

uint64_t std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf&>(uint64_t a1, __int128 *a2, std::string::size_type a3)
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

  v23 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>(a1, v9);
  }

  v10 = (32 * v3);
  v20 = 0;
  v21 = v10;
  v22 = v10;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
    v12 = v21;
    v13 = v22;
  }

  else
  {
    v11 = *a2;
    v10->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v10->__r_.__value_.__l.__data_ = v11;
    v12 = v10;
    v13 = v10;
  }

  v10[1].__r_.__value_.__r.__words[0] = a3;
  *&v22 = v13 + 32;
  v14 = *(a1 + 8);
  v15 = v12 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = *(a1 + 16);
  v19 = v22;
  *(a1 + 8) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v20);
  return v19;
}

void sub_1B5388758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string::value_type *std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(uint64_t a1, __int128 *a2, std::string::size_type *a3)
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

  v26 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>(a1, v9);
  }

  v10 = (32 * v3);
  v22 = 0;
  v23 = v10;
  v11 = 0;
  v24 = v10;
  v25 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
    v13 = v23;
    v14 = v24;
    v11 = v25;
  }

  else
  {
    v12 = *a2;
    v10->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v10->__r_.__value_.__l.__data_ = v12;
    v13 = v10;
    v14 = v10;
  }

  v15 = *a3;
  *a3 = 0;
  v10[1].__r_.__value_.__r.__words[0] = v15;
  v16 = &v14[1].__r_.__value_.__s.__data_[8];
  v17 = *(a1 + 8) - *a1;
  v18 = v13 - v17;
  memcpy(v13 - v17, *a1, v17);
  v19 = *a1;
  *a1 = v18;
  *(a1 + 8) = v16;
  v20 = *(a1 + 16);
  *(a1 + 16) = v11;
  v24 = v19;
  v25 = v20;
  v22 = v19;
  v23 = v19;
  std::__split_buffer<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(&v22);
  return v16;
}

void sub_1B5388894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf const&>(uint64_t a1, __int128 *a2, std::string::size_type a3)
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

  v23 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>(a1, v9);
  }

  v10 = (32 * v3);
  v20 = 0;
  v21 = v10;
  v22 = v10;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
    v12 = v21;
    v13 = v22;
  }

  else
  {
    v11 = *a2;
    v10->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v10->__r_.__value_.__l.__data_ = v11;
    v12 = v10;
    v13 = v10;
  }

  v10[1].__r_.__value_.__r.__words[0] = a3;
  *&v22 = v13 + 32;
  v14 = *(a1 + 8);
  v15 = v12 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = *(a1 + 16);
  v19 = v22;
  *(a1 + 8) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v20);
  return v19;
}

void sub_1B53889D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_3_1()
{
  result = *v0;
  *v0 = 0;
  return result;
}

uint64_t kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(uint64_t a1, int a2, int a3)
{
  kaldi::QuantizedMatrixBase<signed char>::QuantizedMatrixBase(a1, a2, a3);
  memptr = 0;
  v6 = malloc_type_posix_memalign(&memptr, 0x20uLL, a3 * a2, 0x100004077774924uLL);
  v7 = memptr;
  if (v6)
  {
    v7 = 0;
  }

  memptr = v7;
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  if (v8)
  {
    (*(a1 + 24))();
  }

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
  return a1;
}

void kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(uint64_t a1, uint64_t a2)
{
  kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::MatrixBase<float>::NumCols(a2);
  v4 = kaldi::MatrixBase<float>::NumRows(a2);
  v5 = kaldi::MatrixBase<float>::NumCols(a2);
  if (v4)
  {
    v6 = 0;
    v7 = -INFINITY;
    v8 = INFINITY;
    do
    {
      if (v5)
      {
        v9 = 0;
        for (i = 0; i != v5; ++i)
        {
          v11 = *a2 + 4 * *(a2 + 16) * v6;
          v12 = *(v11 + (v9 >> 30));
          if (v12 < v8)
          {
            v8 = *(v11 + (v9 >> 30));
          }

          if (v7 < v12)
          {
            v7 = *(v11 + (v9 >> 30));
          }

          v9 += 0x100000000;
        }
      }

      ++v6;
    }

    while (v6 != v4);
  }

  else
  {
    v8 = INFINITY;
    v7 = -INFINITY;
  }

  if ((*(a1 + 4) * 16129.0) > 2147500000.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "Too many rows*cols for 8-bit Matrix");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  v13 = fabsf(v7);
  v14 = fabsf(v8);
  if (v13 >= v14)
  {
    v14 = v13;
  }

  *(a1 + 8) = 1123942400;
  *(a1 + 12) = 127.0 / v14;
  v15 = kaldi::QuantizedMatrixBase<signed char>::MutableData(a1);
  kaldi::ComputeQuantizedData<signed char>(v15, a2, *(a1 + 12));

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
}

uint64_t kaldi::QuantizedMatrix<signed char>::QuantizedMatrix<short>(uint64_t a1, int *a2)
{
  kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1, *a2, a2[1]);
  kaldi::Matrix<float>::Matrix<short>(v5, a2);
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(a1, v5);
  kaldi::Matrix<float>::~Matrix(v5);
  return a1;
}

void sub_1B5388C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::QuantizedMatrix<short>::QuantizedMatrix(uint64_t a1, int a2, int a3)
{
  kaldi::QuantizedMatrixBase<short>::QuantizedMatrixBase(a1, a2, a3);
  memptr = 0;
  v6 = malloc_type_posix_memalign(&memptr, 0x20uLL, 2 * a3 * a2, 0x1000040BDFB0063uLL);
  v7 = memptr;
  if (v6)
  {
    v7 = 0;
  }

  memptr = v7;
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  if (v8)
  {
    (*(a1 + 24))();
  }

  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
  return a1;
}

void kaldi::QuantizedMatrixBase<short>::CopyFromMat(uint64_t a1, uint64_t a2)
{
  kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::MatrixBase<float>::NumCols(a2);
  v4 = kaldi::MatrixBase<float>::NumRows(a2);
  v5 = kaldi::MatrixBase<float>::NumCols(a2);
  if (v4)
  {
    v6 = 0;
    v7 = -INFINITY;
    v8 = INFINITY;
    do
    {
      if (v5)
      {
        v9 = 0;
        for (i = 0; i != v5; ++i)
        {
          v11 = *a2 + 4 * *(a2 + 16) * v6;
          v12 = *(v11 + (v9 >> 30));
          if (v12 < v8)
          {
            v8 = *(v11 + (v9 >> 30));
          }

          if (v7 < v12)
          {
            v7 = *(v11 + (v9 >> 30));
          }

          v9 += 0x100000000;
        }
      }

      ++v6;
    }

    while (v6 != v4);
  }

  else
  {
    v8 = INFINITY;
    v7 = -INFINITY;
  }

  v13 = fabsf(v7);
  v14 = fabsf(v8);
  if (v13 >= v14)
  {
    v14 = v13;
  }

  v15 = 2147500000.0 / (v5 * v4);
  if (v15 > 32767.0)
  {
    v15 = 32767.0;
  }

  *(a1 + 8) = v15;
  *(a1 + 12) = v15 / v14;
  v16 = kaldi::QuantizedMatrixBase<short>::MutableData(a1);
  kaldi::ComputeQuantizedData<short>(v16, a2, *(a1 + 12));

  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
}

uint64_t kaldi::QuantizedMatrix<short>::QuantizedMatrix<signed char>(uint64_t a1, int *a2)
{
  kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1, *a2, a2[1]);
  kaldi::Matrix<float>::Matrix<signed char>(v5, a2);
  kaldi::QuantizedMatrixBase<short>::CopyFromMat(a1, v5);
  kaldi::Matrix<float>::~Matrix(v5);
  return a1;
}

void sub_1B5388EF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    BNNSFilterDestroy(v2);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(a1 + 24))();
  }

  return a1;
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::AddMatMat(uint64_t a1, uint64_t a2, void **a3, float a4)
{
  v23 = 0;
  v24 = kaldi::kaldi_memalign_free;
  v26 = 0;
  v25 = 0;
  v27 = 0;
  kaldi::QuantizedMatrixBase<signed char>::PrepareMatMat(a1, a2, &v23);
  v7 = kaldi::MatrixBase<float>::NumRows(a3);
  v8 = kaldi::MatrixBase<float>::NumCols(a3);
  v9 = 1.0 / (*(a1 + 12) * *&v25);
  if (a4 == 0.0)
  {
    v10 = *(a1 + 40);
    v11 = v23;
    v12 = *(a1 + 4);
    v13 = *a3;
    v14 = fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::Start(a3);
    BNNSFilterApplyBatch(v10, v7, v11, v12, v13, v14);
    kaldi::MatrixBase<float>::Scale(a3, v9);
  }

  else
  {
    kaldi::Matrix<float>::Matrix(v22, v7, v8, 0, 0);
    v15 = *(a1 + 40);
    v16 = kaldi::MatrixBase<float>::NumRows(v22);
    v17 = v23;
    v18 = *(a1 + 4);
    v19 = *v22;
    v20 = fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::Start(v22);
    BNNSFilterApplyBatch(v15, v16, v17, v18, v19, v20);
    kaldi::MatrixBase<float>::AddMat(a3, v22, 111, v9, a4);
    kaldi::Matrix<float>::~Matrix(v22);
  }

  result = v23;
  v23 = 0;
  if (result)
  {
    return v24();
  }

  return result;
}

void sub_1B53890D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(void))
{
  if (a14)
  {
    a15();
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::PrepareMatMat(float *a1, uint64_t a2, uint64_t a3)
{
  v6 = kaldi::MatrixBase<float>::AbsMax(a2);
  if (v6 == 0.0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = v6;
  }

  v8 = kaldi::MatrixBase<float>::NumRows(a2);
  v9 = kaldi::MatrixBase<float>::NumCols(a2);
  v10 = a1[2];
  v11 = 2147500000.0 / (v10 * v9);
  v12 = v10 / v7;
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x20uLL, v9 * v8, 0x100004077774924uLL))
  {
    v14 = 0;
  }

  else
  {
    v14 = memptr;
  }

  memptr = v14;
  v15 = *a3;
  *a3 = v14;
  if (v15)
  {
    (*(a3 + 8))(v15);
    v14 = *a3;
  }

  result = kaldi::ComputeQuantizedData<signed char>(v14, a2, v13);
  *(a3 + 16) = v13;
  v17 = *a1;
  v18 = *(a1 + 4);
  if (!v18)
  {
    v18 = *(a1 + 2);
  }

  v19 = *(a1 + 1);
  if (*(a3 + 20) != LODWORD(v17) || *(a3 + 24) != v19 || *(a3 + 32) != v18)
  {
    *(a3 + 20) = v17;
    *(a3 + 24) = v19;
    *(a3 + 32) = v18;
  }

  return result;
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(unsigned int *a1, char **a2)
{
  kaldi::Matrix<float>::Matrix(v5, *a1, a1[1], 0, 0);
  kaldi::MatrixBase<float>::CopyRowsFromVec(v5, a2);
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(a1, v5);
  return kaldi::Matrix<float>::~Matrix(v5);
}

void sub_1B53892A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(int *a1, void *a2, int a3)
{
  *(a1 + 1) = a2[1];
  if (a3 == 111)
  {
    v5 = kaldi::QuantizedMatrixBase<signed char>::MutableData(a1);
    if (a2[4])
    {
      v6 = a2[4];
    }

    else
    {
      v6 = a2[2];
    }

    memmove(v5, v6, *a1 * a1[1]);
  }

  else
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = kaldi::QuantizedMatrixBase<signed char>::MutableData(a1);
    v10 = a2[4];
    if (!v10)
    {
      v10 = a2[2];
    }

    v11 = *a1;
    if (*a1 >= 1)
    {
      v12 = 0;
      LODWORD(v13) = a1[1];
      do
      {
        if (v13 >= 1)
        {
          v14 = 0;
          v15 = v10;
          do
          {
            *(v9 + v14++) = *v15;
            v13 = a1[1];
            v15 += v8;
          }

          while (v14 < v13);
          v11 = *a1;
        }

        ++v12;
        v9 += v7;
        ++v10;
      }

      while (v12 < v11);
    }
  }

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::MutableData(uint64_t a1)
{
  if (*(a1 + 32))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Attempt to write into immutable matrix");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return *(a1 + 16);
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::Data(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result)
  {
    return *(a1 + 16);
  }

  return result;
}

void kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(int *a1)
{
  v2 = *(a1 + 5);
  if (v2)
  {
    BNNSFilterDestroy(v2);
    *(a1 + 5) = 0;
  }

  v3 = *(a1 + 4);
  if (v3 || *(a1 + 2))
  {
    v5 = *a1;
    v4 = a1[1];
    v18[2] = 0;
    v19[0] = v4;
    v19[1] = 0x3F80000000020008;
    v19[2] = 0;
    v18[0] = v5;
    v18[1] = 65568;
    if (!v3)
    {
      v3 = *(a1 + 2);
    }

    v16[0] = 1;
    v17 = 0u;
    v16[1] = 1;
    v6[0] = v4;
    v6[1] = v5;
    v6[2] = v3;
    v7 = 131080;
    v8 = 1065353216;
    v9 = 0;
    v10 = 0;
    v11 = xmmword_1B5AFC470;
    v12 = unk_1B5AFC480;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    *(a1 + 5) = MEMORY[0x1B8C83EE0](v19, v18, v6, v16);
  }
}

double kaldi::QuantizedMatrixBase<signed char>::Sum(int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0.0;
  }

  v2 = 0;
  v3 = a1[1];
  result = 0.0;
  do
  {
    if (v3)
    {
      v5 = 0;
      for (i = 0; i != v3; ++i)
      {
        v7 = *(a1 + 4);
        if (!v7)
        {
          v7 = *(a1 + 2);
        }

        *&result = *&result + (*(v7 + v3 * v2 + (v5 >> 32)) / *(a1 + 3));
        v5 += 0x100000000;
      }
    }

    ++v2;
  }

  while (v2 != v1);
  return result;
}

float kaldi::QuantizedMatrixBase<signed char>::Row@<S0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(a1 + 16);
  }

  return kaldi::QuantizedSubVector<signed char>::QuantizedSubVector(a3, v5 + *(a1 + 4) * a2, *(a1 + 4), *(a1 + 12));
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::Range@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v8) = a3;
  LODWORD(v9) = a2;
  result = kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a6, a3, a5);
  *(a6 + 8) = *(a1 + 8);
  if (v8)
  {
    v13 = 0;
    v8 = v8;
    v9 = v9;
    do
    {
      v14 = kaldi::QuantizedMatrixBase<signed char>::MutableData(a6);
      v15 = *(a1 + 32);
      if (!v15)
      {
        v15 = *(a1 + 16);
      }

      result = memcpy((v14 + v13), (v15 + v9 * *(a1 + 4) + a4), a5);
      ++v9;
      v13 += a5;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t kaldi::ComputeQuantizedData<signed char>(uint64_t a1, uint64_t a2, float a3)
{
  v6 = kaldi::MatrixBase<float>::NumRows(a2);
  result = kaldi::MatrixBase<float>::NumCols(a2);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (result)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          *(a1 + v10++) = llroundf(*(*a2 + 4 * *(a2 + 16) * i + (v9 >> 30)) * a3);
          v9 += 0x100000000;
        }

        while (result != v10);
      }

      a1 += result;
    }
  }

  return result;
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::QuantizedMatrixBase(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = kaldi::kaldi_memalign_free;
  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
  return a1;
}

void sub_1B538975C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(v1 + 24))();
  }

  _Unwind_Resume(exception_object);
}

int *kaldi::QuantizedMatrixBase<signed char>::QuantizedMatrixBase(int *a1, int *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = 0;
  v5 = *(a2 + 4);
  *(a1 + 3) = kaldi::kaldi_memalign_free;
  *(a1 + 4) = v5;
  *(a1 + 5) = 0;
  if (*(a2 + 2))
  {
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x20uLL, v4 * v3, 0x100004077774924uLL))
    {
      v7 = 0;
    }

    else
    {
      v7 = memptr;
    }

    memptr = v7;
    v8 = *(a1 + 2);
    *(a1 + 2) = v7;
    if (v8)
    {
      (*(a1 + 3))(v8);
      v7 = *(a1 + 2);
    }

    memcpy(v7, *(a2 + 2), a1[1] * *a1);
  }

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
  return a1;
}

void sub_1B5389854(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(v1 + 24))();
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    BNNSFilterDestroy(v2);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(a1 + 24))();
  }

  return a1;
}

uint64_t kaldi::QuantizedMatrixBase<short>::AddMatMat(uint64_t a1, uint64_t a2, void **a3, float a4)
{
  v23 = 0;
  v24 = kaldi::kaldi_memalign_free;
  v26 = 0;
  v25 = 0;
  v27 = 0;
  kaldi::QuantizedMatrixBase<short>::PrepareMatMat(a1, a2, &v23);
  v7 = kaldi::MatrixBase<float>::NumRows(a3);
  v8 = kaldi::MatrixBase<float>::NumCols(a3);
  v9 = 1.0 / (*(a1 + 12) * *&v25);
  if (a4 == 0.0)
  {
    v10 = *(a1 + 40);
    v11 = v23;
    v12 = *(a1 + 4);
    v13 = *a3;
    v14 = fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::Start(a3);
    BNNSFilterApplyBatch(v10, v7, v11, v12, v13, v14);
    kaldi::MatrixBase<float>::Scale(a3, v9);
  }

  else
  {
    kaldi::Matrix<float>::Matrix(v22, v7, v8, 0, 0);
    v15 = *(a1 + 40);
    v16 = kaldi::MatrixBase<float>::NumRows(v22);
    v17 = v23;
    v18 = *(a1 + 4);
    v19 = *v22;
    v20 = fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::Start(v22);
    BNNSFilterApplyBatch(v15, v16, v17, v18, v19, v20);
    kaldi::MatrixBase<float>::AddMat(a3, v22, 111, v9, a4);
    kaldi::Matrix<float>::~Matrix(v22);
  }

  result = v23;
  v23 = 0;
  if (result)
  {
    return v24();
  }

  return result;
}

void sub_1B5389A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(void))
{
  if (a14)
  {
    a15();
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrixBase<short>::PrepareMatMat(float *a1, uint64_t a2, uint64_t a3)
{
  v6 = kaldi::MatrixBase<float>::AbsMax(a2);
  if (v6 == 0.0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = v6;
  }

  v8 = kaldi::MatrixBase<float>::NumRows(a2);
  v9 = kaldi::MatrixBase<float>::NumCols(a2);
  v10 = a1[2];
  v11 = 2147500000.0 / (v10 * v9);
  v12 = v10 / v7;
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x20uLL, 2 * v9 * v8, 0x1000040BDFB0063uLL))
  {
    v14 = 0;
  }

  else
  {
    v14 = memptr;
  }

  memptr = v14;
  v15 = *a3;
  *a3 = v14;
  if (v15)
  {
    (*(a3 + 8))(v15);
    v14 = *a3;
  }

  result = kaldi::ComputeQuantizedData<short>(v14, a2, v13);
  *(a3 + 16) = v13;
  v17 = *a1;
  v18 = *(a1 + 4);
  if (!v18)
  {
    v18 = *(a1 + 2);
  }

  v19 = *(a1 + 1);
  if (*(a3 + 20) != LODWORD(v17) || *(a3 + 24) != v19 || *(a3 + 32) != v18)
  {
    *(a3 + 20) = v17;
    *(a3 + 24) = v19;
    *(a3 + 32) = v18;
  }

  return result;
}

uint64_t kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(unsigned int *a1, char **a2)
{
  kaldi::Matrix<float>::Matrix(v5, *a1, a1[1], 0, 0);
  kaldi::MatrixBase<float>::CopyRowsFromVec(v5, a2);
  kaldi::QuantizedMatrixBase<short>::CopyFromMat(a1, v5);
  return kaldi::Matrix<float>::~Matrix(v5);
}

void sub_1B5389C0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::QuantizedMatrixBase<short>::CopyFromMat(int *a1, void *a2, int a3)
{
  *(a1 + 1) = a2[1];
  if (a3 == 111)
  {
    v5 = kaldi::QuantizedMatrixBase<short>::MutableData(a1);
    if (a2[4])
    {
      v6 = a2[4];
    }

    else
    {
      v6 = a2[2];
    }

    memmove(v5, v6, 2 * *a1 * a1[1]);
  }

  else
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = kaldi::QuantizedMatrixBase<short>::MutableData(a1);
    v10 = a2[4];
    if (!v10)
    {
      v10 = a2[2];
    }

    v11 = *a1;
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = a1[1];
      do
      {
        v14 = v13;
        v15 = v10;
        v16 = v9;
        if (v13 >= 1)
        {
          do
          {
            *v16++ = *v15;
            v15 += v8;
            --v14;
          }

          while (v14);
        }

        ++v12;
        v9 += 2 * v7;
        ++v10;
      }

      while (v12 != v11);
    }
  }

  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
}

uint64_t kaldi::QuantizedMatrixBase<short>::MutableData(uint64_t a1)
{
  if (*(a1 + 32))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Attempt to write into immutable matrix");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return *(a1 + 16);
}

void kaldi::QuantizedMatrixBase<short>::UpdateFilter(int *a1)
{
  v2 = *(a1 + 5);
  if (v2)
  {
    BNNSFilterDestroy(v2);
    *(a1 + 5) = 0;
  }

  v3 = *(a1 + 4);
  if (v3 || *(a1 + 2))
  {
    v5 = *a1;
    v4 = a1[1];
    v18[2] = 0;
    v19[0] = v4;
    v19[1] = 0x3F80000000020010;
    v19[2] = 0;
    v18[0] = v5;
    v18[1] = 65568;
    if (!v3)
    {
      v3 = *(a1 + 2);
    }

    v16[0] = 1;
    v17 = 0u;
    v16[1] = 1;
    v6[0] = v4;
    v6[1] = v5;
    v6[2] = v3;
    v7 = 131088;
    v8 = 1065353216;
    v9 = 0;
    v10 = 0;
    v11 = xmmword_1B5AFC470;
    v12 = unk_1B5AFC480;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    *(a1 + 5) = MEMORY[0x1B8C83EE0](v19, v18, v6, v16);
  }
}

double kaldi::QuantizedMatrixBase<short>::Sum(int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0.0;
  }

  v2 = 0;
  v3 = a1[1];
  result = 0.0;
  do
  {
    if (v3)
    {
      v5 = 0;
      for (i = 0; i != v3; ++i)
      {
        v7 = *(a1 + 4);
        if (!v7)
        {
          v7 = *(a1 + 2);
        }

        *&result = *&result + (*(v7 + 2 * v3 * v2 + (v5 >> 31)) / *(a1 + 3));
        v5 += 0x100000000;
      }
    }

    ++v2;
  }

  while (v2 != v1);
  return result;
}

float kaldi::QuantizedMatrixBase<short>::Row@<S0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(a1 + 16);
  }

  return kaldi::QuantizedSubVector<signed char>::QuantizedSubVector(a3, v5 + 2 * *(a1 + 4) * a2, *(a1 + 4), *(a1 + 12));
}

uint64_t kaldi::QuantizedMatrixBase<short>::Range@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v8) = a3;
  LODWORD(v9) = a2;
  result = kaldi::QuantizedMatrix<short>::QuantizedMatrix(a6, a3, a5);
  *(a6 + 8) = *(a1 + 8);
  if (v8)
  {
    v13 = 0;
    v8 = v8;
    v9 = v9;
    v14 = 2 * a5;
    do
    {
      v15 = kaldi::QuantizedMatrixBase<short>::MutableData(a6);
      v16 = *(a1 + 32);
      if (!v16)
      {
        v16 = *(a1 + 16);
      }

      result = memcpy((v15 + v13), (v16 + 2 * v9 * *(a1 + 4) + 2 * a4), v14);
      ++v9;
      v13 += v14;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t kaldi::ComputeQuantizedData<short>(uint64_t a1, uint64_t a2, float a3)
{
  v6 = kaldi::MatrixBase<float>::NumRows(a2);
  result = kaldi::MatrixBase<float>::NumCols(a2);
  if (v6)
  {
    v8 = 0;
    v9 = *a2;
    v10 = *(a2 + 16);
    do
    {
      if (result)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          *(a1 + 2 * v12++) = llroundf(*(v9 + 4 * v10 * v8 + (v11 >> 30)) * a3);
          v11 += 0x100000000;
        }

        while (result != v12);
      }

      ++v8;
      a1 += 2 * result;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t kaldi::QuantizedMatrixBase<short>::QuantizedMatrixBase(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = kaldi::kaldi_memalign_free;
  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
  return a1;
}

void sub_1B538A0B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(v1 + 24))();
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrixBase<short>::QuantizedMatrixBase(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 4) = v4;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = 0;
  v5 = *(a2 + 4);
  *(a1 + 24) = kaldi::kaldi_memalign_free;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
  if (*(a2 + 2))
  {
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x20uLL, 2 * v4 * v3, 0x1000040BDFB0063uLL))
    {
      v7 = 0;
    }

    else
    {
      v7 = memptr;
    }

    memptr = v7;
    v8 = *(a1 + 16);
    *(a1 + 16) = v7;
    if (v8)
    {
      (*(a1 + 24))(v8);
      v7 = *(a1 + 16);
    }

    memcpy(v7, *(a2 + 2), 2 * *(a1 + 4) * *a1);
  }

  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
  return a1;
}

void sub_1B538A1B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(v1 + 24))();
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(uint64_t a1, int *a2)
{
  v4 = kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1, *a2, a2[1]);
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v4, a2, 111);
  return a1;
}

uint64_t kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(uint64_t a1, uint64_t a2)
{
  v4 = kaldi::MatrixBase<float>::NumRows(a2);
  v5 = kaldi::MatrixBase<float>::NumCols(a2);
  v6 = kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1, v4, v5);
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v6, a2);
  return a1;
}

{
  v4 = kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1, *(a2 + 20), *(a2 + 16));
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v4, a2 + 8);
  return a1;
}

void kaldi::QuantizedMatrix<signed char>::Read(float *a1, void *a2, int a3, uint64_t a4)
{
  kaldi::ReadBasicType<float>(a2, a3, a1 + 3);
  a1[2] = 127.0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kaldi::ReadIntegerVector<signed char>(a2, a3, &v12, a4, a1 + 4, 0, 0);
  if (*(a1 + 4))
  {
    v8 = *(a1 + 2);
    *(a1 + 2) = 0;
    if (v8)
    {
      (*(a1 + 3))();
    }
  }

  else
  {
    if (v13 - v12 != *(a1 + 1) * *a1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(memptr);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(memptr, "Quantized matrix improperly serialized", 38);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(memptr);
    }

    memptr[0] = 0;
    if (malloc_type_posix_memalign(memptr, 0x20uLL, v13 - v12, 0x100004077774924uLL))
    {
      v9 = 0;
    }

    else
    {
      v9 = memptr[0];
    }

    memptr[0] = v9;
    v10 = *(a1 + 2);
    *(a1 + 2) = v9;
    if (v10)
    {
      (*(a1 + 3))(v10);
      v9 = *(a1 + 2);
    }

    memcpy(v9, v12, v13 - v12);
  }

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_1B538A404(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  if (v3)
  {
    *(v1 - 64) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::ReadIntegerVector<signed char>(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v26[34] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 0;
  }

  if (a2)
  {
    v12 = std::istream::peek();
    if (v12 != 1)
    {
      v16 = v12;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "ReadIntegerVector: expected to see type of size ", 48);
      v18 = MEMORY[0x1B8C84C30](v17, 1);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", saw instead ", 14);
      v20 = MEMORY[0x1B8C84C00](v19, v16);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", at file position ", 19);
      std::istream::tellg();
      MEMORY[0x1B8C84C60](v21);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
    }

    std::istream::get();
    std::istream::read();
    if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
    {
      if (a7)
      {
        *a7 = 0;
      }

      if (a4 && a6)
      {
        std::istream::tellg();
        *a6 = a4 + v26[16];
        std::istream::seekg();
        *(a3 + 8) = *a3;
        std::vector<signed char>::shrink_to_fit(a3);
      }

      else if (*(a3 + 8) != *a3)
      {
        *(a3 + 8) = *a3;
      }

      goto LABEL_23;
    }

LABEL_24:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "ReadIntegerVector: read failure at file position ", 49);
    std::istream::tellg();
    MEMORY[0x1B8C84C60](v15);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
  }

  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  if (std::istream::peek() != 91)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "ReadIntegerVector: expected to see [, saw ", 42);
    v23 = std::istream::peek();
    v24 = MEMORY[0x1B8C84C00](v22, v23);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", at file position ", 19);
    std::istream::tellg();
    MEMORY[0x1B8C84C60](v25);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
  }

  std::istream::get();
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  v13 = std::istream::peek();
  if (v13 == 93)
  {
    std::istream::get();
    std::vector<signed char>::__assign_with_size[abi:ne200100]<signed char *,signed char *>(a3, 0, 0, 0);
    if (a7)
    {
      *a7 = *(a3 + 8) - *a3;
    }
  }

  else
  {
    LOWORD(v26[0]) = 0;
    v14 = MEMORY[0x1B8C84B00](a1, v26);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(v14);
    if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
    {
      operator new();
    }
  }

  if (v13 != 93)
  {
    goto LABEL_24;
  }

LABEL_23:
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    goto LABEL_24;
  }
}

void sub_1B538A8F4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrix<signed char>::Write(int *a1, void *a2, int a3, int a4)
{
  kaldi::WriteBasicType<float>(a2, a3);
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 4);
  if (!v10)
  {
    v10 = *(a1 + 2);
  }

  return kaldi::WriteIntegerByteArray<signed char>(a2, a3, a4, v9 * v8, v10);
}

uint64_t kaldi::QuantizedMatrix<short>::QuantizedMatrix(uint64_t a1, int *a2)
{
  v4 = kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1, *a2, a2[1]);
  kaldi::QuantizedMatrixBase<short>::CopyFromMat(v4, a2, 111);
  return a1;
}

uint64_t kaldi::QuantizedMatrix<short>::QuantizedMatrix(uint64_t a1, uint64_t a2)
{
  v4 = kaldi::MatrixBase<float>::NumRows(a2);
  v5 = kaldi::MatrixBase<float>::NumCols(a2);
  v6 = kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1, v4, v5);
  kaldi::QuantizedMatrixBase<short>::CopyFromMat(v6, a2);
  return a1;
}

{
  v4 = kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1, *(a2 + 20), *(a2 + 16));
  kaldi::QuantizedMatrixBase<short>::CopyFromMat(v4, a2 + 8);
  return a1;
}

void kaldi::QuantizedMatrix<short>::Read(float *a1, void *a2, int a3, uint64_t a4)
{
  kaldi::ReadBasicType<float>(a2, a3, a1 + 3);
  kaldi::ReadBasicType<float>(a2, a3, a1 + 2);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kaldi::ReadIntegerVector<short>(a2, a3, &v12, a4, a1 + 4, 0, 0);
  if (*(a1 + 4))
  {
    v8 = *(a1 + 2);
    *(a1 + 2) = 0;
    if (v8)
    {
      (*(a1 + 3))();
    }
  }

  else
  {
    if (*(a1 + 1) * *a1 != (v13 - v12) >> 1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(memptr);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(memptr, "Quantized matrix improperly serialized", 38);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(memptr);
    }

    memptr[0] = 0;
    if (malloc_type_posix_memalign(memptr, 0x20uLL, v13 - v12, 0x1000040BDFB0063uLL))
    {
      v9 = 0;
    }

    else
    {
      v9 = memptr[0];
    }

    memptr[0] = v9;
    v10 = *(a1 + 2);
    *(a1 + 2) = v9;
    if (v10)
    {
      (*(a1 + 3))(v10);
      v9 = *(a1 + 2);
    }

    memcpy(v9, v12, v13 - v12);
  }

  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_1B538ABDC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  if (v3)
  {
    *(v1 - 64) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::ReadIntegerVector<short>(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t *a7)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 0;
  }

  if (a2)
  {
    v13 = std::istream::peek();
    if (v13 != 2)
    {
      v29 = v13;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v44);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "ReadIntegerVector: expected to see type of size ", 48);
      v31 = MEMORY[0x1B8C84C30](v30, 2);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ", saw instead ", 14);
      v33 = MEMORY[0x1B8C84C00](v32, v29);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ", at file position ", 19);
      std::istream::tellg();
      MEMORY[0x1B8C84C60](v34, v43);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
    }

    std::istream::get();
    v42 = 0;
    std::istream::read();
    if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
    {
      v14 = v42;
      v15 = v42;
      if (a7)
      {
        *a7 = v42;
      }

      if (a4 && (a5 ? (v16 = v14 < 0) : (v16 = 0), !v16 ? (v17 = 0) : (v17 = 1), a6 || v17))
      {
        if (v17)
        {
          std::istream::tellg();
          *a5 = a4 + v45;
        }

        else if (a6)
        {
          std::istream::tellg();
          *a6 = a4 + v45;
        }

        std::istream::seekg();
        *(a3 + 8) = *a3;
        std::vector<short>::shrink_to_fit(a3);
      }

      else
      {
        std::vector<unsigned short>::resize(a3, v15);
        if (v42 >= 1)
        {
          std::istream::read();
        }
      }

      goto LABEL_50;
    }

LABEL_53:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v44);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "ReadIntegerVector: read failure at file position ", 49);
    std::istream::tellg();
    MEMORY[0x1B8C84C60](v28, v43);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
  }

  __src = 0;
  v40 = 0;
  v41 = 0;
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  if (std::istream::peek() != 91)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v44);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "ReadIntegerVector: expected to see [, saw ", 42);
    v36 = std::istream::peek();
    v37 = MEMORY[0x1B8C84C00](v35, v36);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", at file position ", 19);
    std::istream::tellg();
    MEMORY[0x1B8C84C60](v38, v43);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
  }

  std::istream::get();
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  while (1)
  {
    v18 = std::istream::peek();
    if (v18 == 93)
    {
      break;
    }

    LOWORD(v44[0]) = 0;
    v19 = MEMORY[0x1B8C84B00](a1, v44);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(v19);
    if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
    {
      goto LABEL_41;
    }

    v20 = v40;
    if (v40 >= v41)
    {
      v22 = __src;
      v23 = v40 - __src;
      v24 = (v40 - __src) >> 1;
      if (v24 <= -2)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      if (v41 - __src <= v24 + 1)
      {
        v25 = v24 + 1;
      }

      else
      {
        v25 = v41 - __src;
      }

      if (v41 - __src >= 0x7FFFFFFFFFFFFFFELL)
      {
        v26 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(&__src, v26);
      }

      *(2 * v24) = v44[0];
      v21 = (2 * v24 + 2);
      memcpy(0, v22, v23);
      v27 = __src;
      __src = 0;
      v40 = v21;
      v41 = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v40 = v44[0];
      v21 = v20 + 2;
    }

    v40 = v21;
  }

  std::istream::get();
  if (&__src != a3)
  {
    std::vector<short>::__assign_with_size[abi:ne200100]<short *,short *>(a3, __src, v40, (v40 - __src) >> 1);
  }

  if (a7)
  {
    *a7 = (*(a3 + 8) - *a3) >> 1;
  }

LABEL_41:
  if (__src)
  {
    v40 = __src;
    operator delete(__src);
  }

  if (v18 != 93)
  {
    goto LABEL_53;
  }

LABEL_50:
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    goto LABEL_53;
  }
}

void sub_1B538B0C4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B538B0FCLL);
}

void sub_1B538B0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrix<short>::Write(int *a1, void *a2, int a3, int a4)
{
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteBasicType<float>(a2, a3);
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 4);
  if (!v10)
  {
    v10 = *(a1 + 2);
  }

  return kaldi::WriteIntegerByteArray<short>(a2, a3, a4, v9 * v8, v10);
}

double kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_1B538B2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(uint64_t result, void *a2)
{
  *result = *a2;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  v2 = a2[2];
  if (!v2)
  {
    operator new[]();
  }

  *(result + 16) = v2;
  v3 = a2[4];
  if (!v3)
  {
    operator new[]();
  }

  *(result + 32) = v3;
  return result;
}

void sub_1B538B400(_Unwind_Exception *a1)
{
  v4 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v4)
  {
    MEMORY[0x1B8C85350](v4, 0x1000C4077774924);
  }

  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::VectorwiseQuantizedMatrix<signed char>::Read(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = kaldi::Matrix<float>::Matrix(v17, 1, *a1, 0, 0);
  kaldi::Matrix<float>::Read(v8, a2, a3, 0, a4);
  if (v18 != 1)
  {
    *(a1 + 2) = 0;
    operator new[]();
  }

  v9 = v17[0];
  v10 = *(a1 + 1);
  *(a1 + 1) = 0;
  *(a1 + 2) = v9;
  if (v10)
  {
    MEMORY[0x1B8C85350](v10, 0x1000C4052888210);
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  kaldi::ReadIntegerVector<signed char>(a2, a3, &v14, a4, a1 + 4, 0, 0);
  if (!*(a1 + 4))
  {
    if (v15 - v14 == a1[1] * *a1)
    {
      operator new[]();
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Quantized matrix improperly serialized", 38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  v11 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v11)
  {
    MEMORY[0x1B8C85350](v11, 0x1000C4077774924);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return kaldi::Matrix<float>::~Matrix(v17);
}

void sub_1B538B640(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  kaldi::Matrix<float>::~Matrix(v1 - 88);
  _Unwind_Resume(a1);
}

void kaldi::VectorwiseQuantizedMatrix<signed char>::Write(int *a1, void *a2, int a3)
{
  v6 = *(a1 + 2);
  if (!v6)
  {
    v6 = *(a1 + 1);
  }

  kaldi::SubMatrix<float>::SubMatrix(v8, v6, 1, *a1, *a1);
  kaldi::MatrixBase<float>::Write(v8, a2, a3, a3);
  v7 = *(a1 + 4);
  if (!v7)
  {
    v7 = *(a1 + 3);
  }

  kaldi::WriteIntegerByteArray<signed char>(a2, a3, a3, a1[1] * *a1, v7);
  quasar::Bitmap::~Bitmap(v8);
}

float kaldi::VectorwiseQuantizedMatrix<signed char>::Row@<S0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(a1 + 24);
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(a1 + 8);
  }

  return kaldi::QuantizedSubVector<signed char>::QuantizedSubVector(a3, v5 + *(a1 + 4) * a2, *(a1 + 4), *(v6 + 4 * a2));
}

uint64_t kaldi::VectorwiseQuantizedMatrix<signed char>::AddMatMat(uint64_t a1, uint64_t a2, int *a3, float a4)
{
  v8 = kaldi::MatrixBase<float>::NumCols(a3);
  kaldi::Matrix<float>::Matrix(v19, a3, 112);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = *v19;
      v11 = v20;
      v12 = kaldi::MatrixBase<float>::NumCols(v19);
      v17 = 0;
      v18 = 0;
      v15 = v10 + 4 * v11 * i;
      v16 = v12;
      kaldi::VectorwiseQuantizedMatrix<signed char>::Row(a1, i, v14);
      kaldi::QuantizedVectorBase<signed char>::AddMatVec(v14, a2, &v15, a4);
    }
  }

  kaldi::MatrixBase<float>::CopyFromMat<float>(a3, v19, 112);
  return kaldi::Matrix<float>::~Matrix(v19);
}

void sub_1B538B840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::VectorwiseQuantizedMatrix<short>::VectorwiseQuantizedMatrix(uint64_t result, void *a2)
{
  *result = *a2;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  v2 = a2[2];
  if (!v2)
  {
    operator new[]();
  }

  *(result + 16) = v2;
  v3 = a2[4];
  if (!v3)
  {
    operator new[]();
  }

  *(result + 32) = v3;
  return result;
}

void sub_1B538B984(_Unwind_Exception *a1)
{
  v4 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v4)
  {
    MEMORY[0x1B8C85350](v4, 0x1000C40BDFB0063);
  }

  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::VectorwiseQuantizedMatrix<short>::Read(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = kaldi::Matrix<float>::Matrix(v17, 1, *a1, 0, 0);
  kaldi::Matrix<float>::Read(v8, a2, a3, 0, a4);
  if (v18 != 1)
  {
    *(a1 + 2) = 0;
    operator new[]();
  }

  v9 = v17[0];
  v10 = *(a1 + 1);
  *(a1 + 1) = 0;
  *(a1 + 2) = v9;
  if (v10)
  {
    MEMORY[0x1B8C85350](v10, 0x1000C4052888210);
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  kaldi::ReadIntegerVector<short>(a2, a3, &v14, a4, a1 + 4, 0, 0);
  if (!*(a1 + 4))
  {
    if ((v15 - v14) >> 1 == a1[1] * *a1)
    {
      operator new[]();
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Quantized matrix improperly serialized", 38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  v11 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v11)
  {
    MEMORY[0x1B8C85350](v11, 0x1000C40BDFB0063);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return kaldi::Matrix<float>::~Matrix(v17);
}

void sub_1B538BBD0(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  kaldi::Matrix<float>::~Matrix(v1 - 88);
  _Unwind_Resume(a1);
}

void kaldi::VectorwiseQuantizedMatrix<short>::Write(int *a1, void *a2, int a3)
{
  v6 = *(a1 + 2);
  if (!v6)
  {
    v6 = *(a1 + 1);
  }

  kaldi::SubMatrix<float>::SubMatrix(v8, v6, 1, *a1, *a1);
  kaldi::MatrixBase<float>::Write(v8, a2, a3, a3);
  v7 = *(a1 + 4);
  if (!v7)
  {
    v7 = *(a1 + 3);
  }

  kaldi::WriteIntegerByteArray<short>(a2, a3, a3, a1[1] * *a1, v7);
  quasar::Bitmap::~Bitmap(v8);
}

float kaldi::VectorwiseQuantizedMatrix<short>::Row@<S0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(a1 + 24);
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(a1 + 8);
  }

  return kaldi::QuantizedSubVector<signed char>::QuantizedSubVector(a3, v5 + 2 * *(a1 + 4) * a2, *(a1 + 4), *(v6 + 4 * a2));
}

uint64_t kaldi::VectorwiseQuantizedMatrix<short>::AddMatMat(uint64_t a1, uint64_t a2, int *a3, float a4)
{
  v8 = kaldi::MatrixBase<float>::NumCols(a3);
  kaldi::Matrix<float>::Matrix(v19, a3, 112);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = *v19;
      v11 = v20;
      v12 = kaldi::MatrixBase<float>::NumCols(v19);
      v17 = 0;
      v18 = 0;
      v15 = v10 + 4 * v11 * i;
      v16 = v12;
      kaldi::VectorwiseQuantizedMatrix<short>::Row(a1, i, v14);
      kaldi::QuantizedVectorBase<short>::AddMatVec(v14, a2, &v15, a4);
    }
  }

  kaldi::MatrixBase<float>::CopyFromMat<float>(a3, v19, 112);
  return kaldi::Matrix<float>::~Matrix(v19);
}

void sub_1B538BDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void std::vector<signed char>::shrink_to_fit(char **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = (v1 - *a1);
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      operator new();
    }

    if (v4 < v3)
    {
      v6 = (v1 - *a1);
      v7 = a1[1];
      v8 = &v4[v2 - v7];
      memcpy(v8, v2, v7 - v2);
      *a1 = v8;
      a1[1] = v6;
      a1[2] = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

void std::vector<signed char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *std::vector<signed char>::__assign_with_size[abi:ne200100]<signed char *,signed char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::rescoring::FeatureType>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
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

uint64_t kaldi::WriteIntegerByteArray<signed char>(void *a1, int a2, int a3, uint64_t a4, char *a5)
{
  if (a2)
  {
    v16 = 1;
    std::ostream::write();
    if (a3)
    {
      v9 = -a4;
    }

    else
    {
      v9 = a4;
    }

    v15 = v9;
    result = std::ostream::write();
    if (a4)
    {
      if (a3 && !fst::AlignOutput(a1))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "Could not align output");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
      }

      result = std::ostream::write();
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[ ", 2);
    for (; a4; --a4)
    {
      v11 = *a5++;
      v12 = MEMORY[0x1B8C84C40](a1, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
    }

    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteIntegerType.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void std::vector<short>::shrink_to_fit(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(a1, v4 >> 1);
    }

    v6 = 0;
    if (v3 >> 1)
    {
      v7 = 2 * (v4 >> 1);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *std::vector<short>::__assign_with_size[abi:ne200100]<short *,short *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<short>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
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

uint64_t kaldi::WriteIntegerByteArray<short>(void *a1, int a2, int a3, uint64_t a4, __int16 *a5)
{
  if (a2)
  {
    v16 = 2;
    std::ostream::write();
    if (a3)
    {
      v9 = -a4;
    }

    else
    {
      v9 = a4;
    }

    v15 = v9;
    result = std::ostream::write();
    if (a4)
    {
      if (a3 && !fst::AlignOutput(a1))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "Could not align output");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
      }

      result = std::ostream::write();
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[ ", 2);
    for (; a4; --a4)
    {
      v11 = *a5++;
      v12 = MEMORY[0x1B8C84C40](a1, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
    }

    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteIntegerType.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void kaldi::CuMatrixBase<float>::CopyFromMat<double>(uint64_t a1, int *a2, int a3)
{
  kaldi::CuMatrix<double>::CuMatrix<double>(&v5, a2, 111, 0);
  if (v7)
  {
    kaldi::MatrixBase<float>::CopyFromMat<double>(a1 + 8, &v6, a3);
  }

  v5 = &unk_1F2D0EE68;
  if (v6)
  {
    if ((v8 & 1) == 0)
    {
      free(v6);
    }
  }
}

uint64_t kaldi::CuMatrix<double>::~CuMatrix(uint64_t a1)
{
  *a1 = &unk_1F2D0EE68;
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2 && (*(a1 + 40) & 1) == 0)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return a1;
}

void kaldi::CuMatrix<double>::Resize(int32x2_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!(a3 * a2))
  {
    a1[2] = 0;
    return;
  }

  v7 = a4;
  if (a5)
  {
    v10 = a1[3].i32[0] != a3;
  }

  else
  {
    v10 = 0;
  }

  if (a4 == 3)
  {
    if (a1[2].i32[1] == a2 && ((a1[2].i32[0] == a3) & ~v10) != 0)
    {
      return;
    }

    v7 = 0;
  }

  v11 = a1[3].i32[0];
  if (v11 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a1[3].i32[1] / v11;
  }

  if (v11 < a3)
  {
    goto LABEL_17;
  }

  if (v12 < a2)
  {
    LOBYTE(v10) = 1;
  }

  if (v10)
  {
LABEL_17:
    if (v7 == 2)
    {
      v21 = vmin_s32(a1[2], __PAIR64__(a2, a3));
      kaldi::Matrix<double>::Matrix(&v24, a2, a3, 0, a5);
      kaldi::SubMatrix<double>::SubMatrix(v23, &v24, 0, v21.i32[1], 0, v21.i32[0]);
      v13 = a1[1];
      v14 = a1[4];
      v15 = a1[3];
      v22[1] = v21;
      v22[2] = v15;
      v22[3] = v14;
      v22[0] = v13;
      kaldi::MatrixBase<double>::CopyFromMat<double>(v23, v22, 111);
      quasar::Bitmap::~Bitmap(v23);
    }

    else
    {
      v17 = a1 + 1;
      v16 = a1[1];
      if (v16)
      {
        if ((a1[5].i8[0] & 1) == 0)
        {
          free(v16);
        }
      }

      *v17 = 0;
      a1[2] = 0;
      a1[3] = 0;
      kaldi::Matrix<double>::Matrix(&v24, a2, a3, v7, a5);
    }

    v18 = v24;
    v24 = a1[1];
    a1[1] = v18;
    v19 = v25;
    v25 = *a1[2].i8;
    *a1[2].i8 = v19;
    v18.i8[0] = v26;
    v26 = a1[5].i8[0];
    a1[5].i8[0] = v18.i8[0];
    kaldi::Matrix<float>::~Matrix(&v24);
  }

  else
  {
    a1[2].i32[0] = a3;
    a1[2].i32[1] = a2;
    if (!v7)
    {
      v20 = &a1[1];

      kaldi::MatrixBase<double>::SetZero(v20);
    }
  }
}

void sub_1B538C998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  quasar::Bitmap::~Bitmap(va);
  kaldi::Matrix<float>::~Matrix(va1);
  _Unwind_Resume(a1);
}

int32x2_t *kaldi::CuMatrix<double>::CuMatrix<double>(int32x2_t *a1, int *a2, int a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a4;
  *a1 = &unk_1F2D0EE68;
  a1[5].i8[0] = 0;
  if (a3 == 111)
  {
    v7 = kaldi::MatrixBase<float>::NumRows(a2);
    v8 = kaldi::MatrixBase<float>::NumCols(a2);
  }

  else
  {
    v7 = kaldi::MatrixBase<float>::NumCols(a2);
    v8 = kaldi::MatrixBase<float>::NumRows(a2);
  }

  kaldi::CuMatrix<double>::Resize(a1, v7, v8, 1, 0);
  kaldi::MatrixBase<double>::CopyFromMat<double>(&a1[1], a2, a3);
  return a1;
}

void *kaldi::VectorBase<float>::CopyRowsFromMat(void **a1, uint64_t a2)
{
  return kaldi::VectorBase<float>::CopyRowsFromMat(a1, a2 + 8);
}

{
  kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::MatrixBase<float>::NumRows(a2);
  v4 = *a1;
  v5 = kaldi::MatrixBase<float>::NumCols(a2);
  v6 = kaldi::MatrixBase<float>::NumRows(a2);
  v7 = fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::Start(a2);
  result = kaldi::MatrixBase<float>::NumCols(a2);
  if (v7 == result)
  {
    v9 = *a2;

    return memcpy(v4, v9, 4 * v6 * v5);
  }

  else if (v6 >= 1)
  {
    v10 = 0;
    v11 = 4 * v5;
    do
    {
      result = memcpy(v4, (*a2 + 4 * *(a2 + 16) * v10++), v11);
      v4 += v11;
    }

    while (v6 != v10);
  }

  return result;
}

uint64_t kaldi::CuMatrix<float>::Swap(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = *(result + 8);
  *(result + 8) = v2;
  LODWORD(v2) = *(a2 + 2);
  *(a2 + 2) = *(result + 16);
  *(result + 16) = v2;
  LODWORD(v2) = *(a2 + 3);
  *(a2 + 3) = *(result + 20);
  *(result + 20) = v2;
  LODWORD(v2) = *(a2 + 4);
  *(a2 + 4) = *(result + 24);
  *(result + 24) = v2;
  LODWORD(v2) = *(a2 + 5);
  *(a2 + 5) = *(result + 28);
  *(result + 28) = v2;
  LOBYTE(v2) = *(a2 + 32);
  *(a2 + 32) = *(result + 40);
  *(result + 40) = v2;
  return result;
}

void kaldi::QuantizedMatrixBase<signed char>::AddMat()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::QuantizedMatrixBase<short>::AddMat()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void *kaldi::operator<<<float>(void *a1, uint64_t a2)
{
  kaldi::Matrix<float>::Matrix(v5, *(a2 + 20), *(a2 + 16), 0, 0);
  kaldi::MatrixBase<float>::CopyFromMat<float>(v5, (a2 + 8), 111);
  kaldi::MatrixBase<float>::Write(v5, a1, 0, 0);
  kaldi::Matrix<float>::~Matrix(v5);
  return a1;
}

void sub_1B538CCC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::CuMatrix<float>::CuMatrix(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F2D0EE38;
  *(a1 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  if (a3 == 111)
  {
    v7 = *(a2 + 16);
    v6 = *(a2 + 20);
    v8 = *(a2 + 24) == v7;
  }

  else
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 20);
    v8 = 0;
  }

  kaldi::CuMatrix<float>::Resize(a1, v6, v7, 1, v8);
  if (*(a2 + 20))
  {
    kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 8), (a2 + 8), a3);
  }

  return a1;
}

{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F2D0EE38;
  *(a1 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  if (a3 == 111)
  {
    v7 = *(a2 + 16);
    v6 = *(a2 + 20);
  }

  else
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 20);
  }

  kaldi::CuMatrix<float>::Resize(a1, v6, v7, 1, 0);
  if (*(a2 + 20))
  {
    kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 8), (a2 + 8), a3);
  }

  return a1;
}

int32x2_t *kaldi::CuMatrix<float>::operator=(int32x2_t *a1, int32x2_t *a2)
{
  if (!*&a1[4])
  {
    a1[4] = a2[4];
  }

  kaldi::CuMatrix<float>::Resize(a1, a2[2].u32[1], a2[2].u32[0], 1, 0);
  if (a2[2].i32[1])
  {
    kaldi::MatrixBase<float>::CopyFromMat<float>(&a1[1], &a2[1], 111);
  }

  return a1;
}

void kaldi::CuMatrix<float>::Transpose(uint64_t a1)
{
  if (*(a1 + 20))
  {
    kaldi::CuMatrix<float>::CuMatrix(&v7, a1, 112);
    v2 = *(a1 + 8);
    *(a1 + 8) = v8;
    v3 = v9;
    v9 = *(a1 + 16);
    *(a1 + 16) = v3;
    v4 = v10;
    v10 = *(a1 + 32);
    *(a1 + 32) = v4;
    v5 = v11;
    v6 = *(a1 + 40);
    v11 = v6;
    *(a1 + 40) = v5;
    v7 = &unk_1F2D0EE38;
    v8 = v2;
    if (v2)
    {
      if ((v6 & 1) == 0)
      {
        free(v2);
      }
    }
  }
}

uint64_t kaldi::CuMatrix<float>::Swap(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = *(result + 8);
  *(result + 8) = v2;
  LODWORD(v2) = *(a2 + 16);
  *(a2 + 16) = *(result + 16);
  *(result + 16) = v2;
  LODWORD(v2) = *(a2 + 20);
  *(a2 + 20) = *(result + 20);
  *(result + 20) = v2;
  LODWORD(v2) = *(a2 + 24);
  *(a2 + 24) = *(result + 24);
  *(result + 24) = v2;
  LODWORD(v2) = *(a2 + 28);
  *(a2 + 28) = *(result + 28);
  *(result + 28) = v2;
  v3 = *(a2 + 32);
  *(a2 + 32) = *(result + 32);
  *(result + 32) = v3;
  LOBYTE(v3) = *(a2 + 40);
  *(a2 + 40) = *(result + 40);
  *(result + 40) = v3;
  return result;
}

void kaldi::CuMatrix<float>::~CuMatrix(uint64_t a1)
{
  *a1 = &unk_1F2D0EE38;
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2 && (*(a1 + 40) & 1) == 0)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::CuMatrix<double>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  kaldi::Matrix<double>::Matrix(&v12, *(a1 + 20), *(a1 + 16), 1, *(a1 + 24) == *(a1 + 16));
  kaldi::Matrix<double>::Read(&v12, a2, a3, 0, a4);
  v8 = *(a1 + 8);
  if (v8 && (*(a1 + 40) & 1) == 0)
  {
    free(v8);
  }

  *(a1 + 8) = v12;
  v9 = v13;
  v12 = 0;
  v13 = 0uLL;
  *(a1 + 16) = v9;
  v10 = v14;
  v14 = *(a1 + 40);
  *(a1 + 40) = v10;
  return kaldi::Matrix<float>::~Matrix(&v12);
}

void sub_1B538D108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::CuMatrix<double>::~CuMatrix(uint64_t a1)
{
  *a1 = &unk_1F2D0EE68;
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2 && (*(a1 + 40) & 1) == 0)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;

  JUMPOUT(0x1B8C85350);
}

void *kaldi::CuArray<int>::CopyToVec(int *a1, std::vector<unsigned int> *this)
{
  begin = this->__begin_;
  v5 = (this->__end_ - this->__begin_) >> 2;
  v6 = *a1;
  if (v6 != v5)
  {
    std::vector<int>::resize(this, v6);
    begin = this->__begin_;
    LODWORD(v5) = *a1;
  }

  v7 = *(a1 + 1);

  return memcpy(begin, v7, 4 * v5);
}

uint64_t kaldi::CuMatrixBase<float>::SetStride(uint64_t result, signed int a2)
{
  v2 = *(result + 24);
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      v13 = result;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
      v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "New stride (", 12);
      v4 = MEMORY[0x1B8C84C00](v3, a2);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ") must not be smaller than", 26);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " the current stride (", 21);
      v7 = MEMORY[0x1B8C84C00](v6, *(v13 + 24));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, ").");
      goto LABEL_8;
    }

    if (a2 % v2)
    {
      v14 = result;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "New stride (", 12);
      v9 = MEMORY[0x1B8C84C00](v8, a2);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") must be a multiple of ", 24);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "current stride (", 16);
      v12 = MEMORY[0x1B8C84C00](v11, *(v14 + 24));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, ").");
LABEL_8:
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
    }

    *(result + 20) = (*(result + 20) - 1) / (a2 / v2) + 1;
    *(result + 24) = a2;
  }

  return result;
}

uint64_t kaldi::CuMatrixBase<float>::DiffRelu(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 20);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 16);
    v6 = *(a3 + 8);
    v7 = *(a2 + 8);
    v8 = *(result + 8);
    v9 = 4 * *(result + 24);
    v10 = 4 * *(a3 + 24);
    v11 = 4 * *(a2 + 24);
    do
    {
      if (v5 >= 1)
      {
        result = 0;
        do
        {
          v12 = 0;
          if (*(v7 + result) > 0.0)
          {
            v12 = *(v6 + result);
          }

          *(v8 + result) = v12;
          result += 4;
        }

        while (4 * v5 != result);
      }

      ++v4;
      v8 += v9;
      v6 += v10;
      v7 += v11;
    }

    while (v4 != v3);
  }

  return result;
}

void kaldi::CuMatrixBase<float>::DiffXent(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  kaldi::CuVector<float>::Resize(a3, *a2, 0);
  v6 = *(a1 + 20);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(a2 + 1);
    v9 = *(a1 + 8);
    v10 = *(a3 + 8);
    v11 = 4 * *(a1 + 24);
    do
    {
      v12 = *(v8 + 4 * v7);
      v13 = *(v9 + 4 * v12);
      if (v13 < 1.0e-20)
      {
        *(v9 + 4 * v12) = 507307272;
        v13 = 1.0e-20;
      }

      *(v10 + 4 * v7) = logf(v13);
      *(v9 + 4 * v12) = *(v9 + 4 * v12) + -1.0;
      ++v7;
      v9 += v11;
    }

    while (v6 != v7);
  }
}

void kaldi::CuMatrixBase<float>::ApplyMaxNorm(uint64_t a1, int a2)
{
  kaldi::CuMatrix<float>::CuMatrix(&v10, a1, 111);
  kaldi::MatrixBase<float>::MulElements(&v11, a1 + 8);
  if (a2)
  {
    v4 = *(a1 + 20);
    v8 = 0;
    v9 = 0;
    v6 = &unk_1F2D3AC18;
    v7 = 0;
    kaldi::CuVector<float>::Resize(&v6, v4, 0);
    v9 = *(a1 + 32);
    kaldi::CuVectorBase<float>::AddColSumMat(&v6, &v10);
    kaldi::CuVectorBase<float>::ApplyPow(&v6, 0.5);
    kaldi::CuVectorBase<float>::Scale();
    kaldi::CuVectorBase<float>::ApplyFloor(&v6, 1.0);
    kaldi::CuVectorBase<float>::InvertElements(&v6);
    kaldi::MatrixBase<float>::MulRowsVec(a1 + 8, &v7);
  }

  else
  {
    v5 = *(a1 + 16);
    v8 = 0;
    v9 = 0;
    v6 = &unk_1F2D3AC18;
    v7 = 0;
    kaldi::CuVector<float>::Resize(&v6, v5, 0);
    v9 = *(a1 + 32);
    kaldi::CuVectorBase<float>::AddRowSumMat(&v6, &v10);
    kaldi::CuVectorBase<float>::ApplyPow(&v6, 0.5);
    kaldi::CuVectorBase<float>::Scale();
    kaldi::CuVectorBase<float>::ApplyFloor(&v6, 1.0);
    kaldi::CuVectorBase<float>::InvertElements(&v6);
    kaldi::MatrixBase<float>::MulColsVec(a1 + 8, &v7);
  }

  kaldi::CuVector<float>::~CuVector(&v6);
  v10 = &unk_1F2D0EE38;
  if (v11)
  {
    if ((v12 & 1) == 0)
    {
      free(v11);
    }
  }
}

void sub_1B538D770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::CuMatrixBase<float>::FindRowMaxId(uint64_t a1, int *a2)
{
  kaldi::CuArray<int>::Resize(a2, *(a1 + 20), 0);
  if (*a2 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 1);
    do
    {
      *(v5 + 4 * v4++) = -1;
    }

    while (v4 < *a2);
  }

  v6 = *(a1 + 20);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 16);
    v9 = *(a1 + 8);
    v10 = *(a2 + 1);
    do
    {
      if (v8 < 1)
      {
        v13 = -1;
      }

      else
      {
        v11 = 0;
        v13 = -1;
        v14 = -1.0e21;
        do
        {
          v12 = v9 + 4 * *(a1 + 24) * v7;
          if (v14 < *(v12 + 4 * v11))
          {
            v14 = *(v12 + 4 * v11);
            v13 = v11;
          }

          ++v11;
        }

        while (v8 != v11);
      }

      *(v10 + 4 * v7++) = v13;
    }

    while (v7 != v6);
  }
}

void kaldi::CuArray<int>::Resize(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  if (a3 == 3)
  {
    v3 = *a1 >= a2;
  }

  if (*(a1 + 4) >= a2)
  {
    *a1 = a2;
    if (!a2 || v3)
    {
      return;
    }

    v8 = *(a1 + 8);
    v9 = 4 * a2;
    goto LABEL_13;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6)
  {
    free(v6);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  if (a2)
  {
    v8 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
    *(a1 + 8) = v8;
    if (!v8)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Memory allocation failed when initializing CuVector ", 52);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "with dimension ", 15);
      v12 = MEMORY[0x1B8C84C00](v11, a2);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " object size in bytes: ", 23);
      MEMORY[0x1B8C84C30](v13, 4);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
    }

    *a1 = a2;
    *(a1 + 4) = a2;
    if (!v3)
    {
      v9 = 4 * a2;
LABEL_13:

      bzero(v8, v9);
    }
  }
}

uint64_t *kaldi::CuMatrixBase<float>::AddVecToCols(uint64_t a1, uint64_t a2, float a3, float a4)
{
  if (*(a2 + 16) != *(a1 + 20))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Non matching dimensions: Rows:", 30);
    v9 = MEMORY[0x1B8C84C00](v8, *(a1 + 20));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " VectorDim:", 11);
    MEMORY[0x1B8C84C00](v10, *(a2 + 16));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  if (a4 != 1.0)
  {
    kaldi::MatrixBase<float>::Scale(a1 + 8, a4);
  }

  return kaldi::MatrixBase<float>::AddVecToCols<float>((a1 + 8), (a2 + 8), a3);
}

uint64_t kaldi::CuMatrixBase<float>::AddVecVec(uint64_t a1, double a2, float a3)
{
  if (a3 != 1.0)
  {
    kaldi::MatrixBase<float>::Scale(a1 + 8, a3);
  }

  return kaldi::MatrixBase<float>::AddVecVec<float>();
}

uint64_t kaldi::CuMatrixBase<float>::AddMatMatMasked(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a3 == 112 && a5 == 112)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "matrix A and B can not be transposed at the same time, not implemented yet");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  v5 = a1 + 8;
  v6 = a2 + 8;
  v7 = a4 + 8;

  return kaldi::MatrixBase<float>::AddMatMat(v5, v6, a3, v7, a5);
}

float kaldi::CuMatrixBase<float>::Sum(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v7[1] = 0;
  v7[2] = 0;
  v7[0] = &unk_1F2D3AC18;
  v7[3] = v3;
  kaldi::CuVector<float>::Resize(v7, v2, 0);
  kaldi::CuVectorBase<float>::AddRowSumMat(v7, a1);
  v4 = kaldi::CuVectorBase<float>::Sum(v7);
  v5 = *&v4;
  kaldi::CuVector<float>::~CuVector(v7);
  return v5;
}

void kaldi::CuMatrixBase<float>::SetRandn(uint64_t a1)
{
  if (*(a1 + 20))
  {
    kaldi::MatrixBase<float>::SetRandn(a1 + 8);
  }
}

uint64_t kaldi::CuMatrixBase<float>::Write(uint64_t a1, void *a2, int a3, int a4)
{
  kaldi::Matrix<float>::Matrix(v9, *(a1 + 20), *(a1 + 16), 1, 0);
  kaldi::MatrixBase<float>::CopyFromMat<float>(v9, (a1 + 8), 111);
  kaldi::MatrixBase<float>::Write(v9, a2, a3, a4);
  return kaldi::Matrix<float>::~Matrix(v9);
}

void sub_1B538DD70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::CuMatrixBase<float>::AddUniqueElements(uint64_t result, unsigned int *a2, float a3)
{
  v3 = *a2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 8);
    v6 = *(result + 24);
    v7 = (*(a2 + 1) + 8);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v7 += 3;
      v10 = v9;
      if (v8 >= 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = v4;
      }

      *(v5 + 4 * v6 * v11 + 4 * (v8 >> 32)) = (v10 * a3) + *(v5 + 4 * v6 * v11 + 4 * (v8 >> 32));
      ++v4;
    }

    while (v3 != v4);
  }

  return result;
}

void kaldi::CuMatrixBase<float>::EqualElementColMask(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  kaldi::CuMatrix<float>::Resize(a3, *(a1 + 20), *(a2 + 16), 0, 0);
  v6 = *(a1 + 20);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 16);
    v9 = *(a2 + 8);
    do
    {
      if (v8 >= 1)
      {
        v10 = 0;
        v11 = *&a3[1] + 4 * a3[3].i32[0] * v7;
        v12 = *(a1 + 8) + 4 * *(a1 + 24) * v7;
        do
        {
          if (*(v12 + 4 * v10) == *(v9 + 4 * v10))
          {
            v13 = 1.0;
          }

          else
          {
            v13 = 0.0;
          }

          *(v11 + 4 * v10++) = v13;
        }

        while (v8 != v10);
      }

      ++v7;
    }

    while (v7 != v6);
  }
}

void kaldi::CuMatrixBase<float>::EqualElementMask(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  kaldi::CuMatrix<float>::Resize(a3, *(a2 + 20), *(a2 + 16), 0, 0);
  v6 = *(a1 + 20);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a1 + 16);
    v10 = *(a2 + 8);
    v11 = 4 * *(a2 + 24);
    do
    {
      if (v9 >= 1)
      {
        v12 = 0;
        v13 = *&a3[1] + v7 * a3[3].i32[0];
        v14 = *(a1 + 8) + v7 * *(a1 + 24);
        do
        {
          if (*(v14 + 4 * v12) == *(v10 + 4 * v12))
          {
            v15 = 1.0;
          }

          else
          {
            v15 = 0.0;
          }

          *(v13 + 4 * v12++) = v15;
        }

        while (v9 != v12);
      }

      ++v8;
      v7 += 4;
      v10 += v11;
    }

    while (v8 != v6);
  }
}

void kaldi::CuMatrixBase<float>::DataUnowned()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Function not implemented for this class");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::CuMatrixBase<double>::DataUnowned()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Function not implemented for this class");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void quasar::stringToFst(uint64_t a1, uint64_t a2)
{
  fst::SymbolTableTextOptions::SymbolTableTextOptions(&v3);
  fst::SymbolTable::ReadText(a2);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  operator new();
}

void sub_1B538E164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(v16);
  MEMORY[0x1B8C85350](v17, 0x1060C40D58F381ALL);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::StringCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator()<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  v5 = fst::StringCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::ConvertStringToLabels(a1, a2, &__p);
  if (v5)
  {
    v7 = 0;
    fst::StringCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compile(a1, &__p, a3, &v7);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1B538E25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::LatticeFasterDecoder::registerParams(quasar::LatticeFasterDecoder *this, const void **a2)
{
  quasar::OnlinePhoneDecoderConfig::Register(this + 496, a2);
  std::string::basic_string[abi:ne200100]<0>(v7, "word-syms-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "word symbol table text format filename");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 616, __p, 0, 14, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "fst-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "HCLG FST filename");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 456, __p, 0, 14, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  MEMORY[0x1B8C84820](this + 616, "");
  return MEMORY[0x1B8C84820](this + 456, "");
}

void sub_1B538E3A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlinePhoneDecoderConfig::Register(uint64_t a1, uint64_t a2)
{
  kaldi::LatticeFasterDecoderConfig::Register(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "update-interval");
  std::string::basic_string[abi:ne200100]<0>(__p, "Beam update interval in frames");
  (*(*a2 + 8))(a2, v6, a1 + 72, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "beam-update");
  std::string::basic_string[abi:ne200100]<0>(__p, "Beam update rate");
  (*(*a2 + 24))(a2, v6, a1 + 76, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-beam-update");
  std::string::basic_string[abi:ne200100]<0>(__p, "Max beam update rate");
  (*(*a2 + 24))(a2, v6, a1 + 80, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "inter-utt-sil");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum # of silence frames to trigger new utterance");
  (*(*a2 + 8))(a2, v6, a1 + 60, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-utt-sil");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum # of silence frames to trigger end of speech while no speech presented");
  (*(*a2 + 8))(a2, v6, a1 + 68, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-utt-length");
  std::string::basic_string[abi:ne200100]<0>(__p, "If the utterance becomes longer than this number of frames, shorter silence is acceptable as an utterance separator");
  (*(*a2 + 8))(a2, v6, a1 + 64, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "det-max-mem");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum approximate memory usage in determinization (real usage might be many times this)");
  (*(*a2 + 8))(a2, v6, a1 + 84, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "det-max-loop");
  std::string::basic_string[abi:ne200100]<0>(__p, "Option used to detect a particular type of determinization failure, typically due to invalid input (e.g., negative-cost loops)");
  (*(*a2 + 8))(a2, v6, a1 + 88, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B538E7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1B538E900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void quasar::LatticeFasterDecoder::runImpl(uint64_t a1, uint64_t a2, void ****a3)
{
  quasar::SymbolTableList::clear((*a3)[61]);
  v6 = (*a3)[61];
  v7 = *(a1 + 648);
  v21 = *(a1 + 640);
  v22 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::SymbolTableList::addSymbolTable(v6, &v21, 0, -1);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v14 = a2;
  if (**a3 != (*a3)[1])
  {
    fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
  }

  std::vector<std::string>::clear[abi:ne200100](*a3);
  v8 = *a3;
  v9 = (*a3)[3];
  v10 = (*a3)[4];
  while (v10 != v9)
  {
    v10 -= 3;
    v15 = v10;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v15);
  }

  v8[4] = v9;
  v11 = *(a1 + 480);
  quasar::PTree::begin(*(v14 + 32));
  kaldi::LatticeFasterOnlineDecoder::LatticeFasterOnlineDecoder(&v15, v11, (a1 + 496));
  *(v17 + 12) = *(a1 + 572);
  v12 = *(a1 + 544);
  v16[9] = *(a1 + 528);
  v16[10] = v12;
  v17[0] = *(a1 + 560);
  v13 = *(a1 + 512);
  v16[7] = *(a1 + 496);
  v16[8] = v13;
  v19 = 1;
  v18 = v16;
  v20 = 0;
    ;
  }

  fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst();
}

void sub_1B538F430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&__p);
  __p = &STACK[0x288];
  std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a50);
  _Unwind_Resume(a1);
}

uint64_t std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__emplace_back_slow_path<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    v3[1] = v4;
    ++*(v4 + 56);
    *v3 = &unk_1F2D04A58;
    result = (v3 + 2);
  }

  a1[1] = result;
  return result;
}

{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__emplace_back_slow_path<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> const&>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    v3[1] = v4;
    ++*(v4 + 56);
    *v3 = &unk_1F2D04A58;
    result = (v3 + 2);
  }

  a1[1] = result;
  return result;
}

uint64_t fst::Union<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 112))(a1);
  v5 = (*(*a2 + 112))(a2);
  if (!fst::CompatSymbols(v4, v5, 1) || (v6 = (*(*a1 + 120))(a1), v7 = (*(*a2 + 120))(a2), !fst::CompatSymbols(v6, v7, 1)))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v20 = fst::LogMessage::LogMessage(&v34, &__p);
    v21 = fst::cerr(v20);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Union: input/output symbol tables of 1st argument ", 50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "do not match input/output symbol tables of 2nd argument", 55);
    fst::LogMessage::~LogMessage(&v34);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }

    return (*(*a1 + 192))(a1, 4, 4);
  }

  v8 = (*(*a1 + 160))(a1);
  v9 = (*(*a1 + 64))(a1, 0x2000000000, 1);
  v10 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  result = (*(*a2 + 24))(a2);
  if (result == -1)
  {
    if ((v11 & 4) != 0)
    {
      v25 = *(*a1 + 192);

      return v25(a1, 4, 4);
    }

    return result;
  }

  v13 = result;
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v14 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a2);
    if (v9)
    {
      v15 = v8;
    }

    else
    {
      v15 = v8 + 1;
    }

    (*(*a1 + 248))(a1, (v15 + v14));
  }

  v36 = 0;
  (*(*a2 + 128))(a2, &v34);
LABEL_10:
  if (!v34)
  {
    if (v36 >= v35)
    {
      goto LABEL_40;
    }

    goto LABEL_14;
  }

  if (!(*(*v34 + 16))(v34))
  {
LABEL_14:
    v16 = (*(*a1 + 200))(a1);
    if (v34)
    {
      v17 = (*(*v34 + 24))(v34);
    }

    else
    {
      v17 = v36;
    }

    (*(*a2 + 32))(a2, v17);
    (*(*a1 + 184))(a1, v16);
    v18 = (*(*a2 + 40))(a2, v17);
    (*(*a1 + 256))(a1, v16, v18);
    v33 = 0;
    (*(*a2 + 136))(a2, v17, &__p);
    while (__p)
    {
      if ((*(*__p + 24))(__p))
      {
        if (__p)
        {
          (*(*__p + 8))();
          goto LABEL_31;
        }

LABEL_29:
        if (v32)
        {
          --*v32;
        }

LABEL_31:
        if (v34)
        {
          (*(*v34 + 32))(v34);
        }

        else
        {
          ++v36;
        }

        goto LABEL_10;
      }

      if (!__p)
      {
        goto LABEL_23;
      }

      v19 = (*(*__p + 32))();
LABEL_24:
      v28 = *v19;
      HIDWORD(v28) += v8;
      (*(*a1 + 208))(a1, v16, &v28);
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
      goto LABEL_29;
    }

LABEL_23:
    v19 = (v30 + 16 * v33);
    goto LABEL_24;
  }

  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

LABEL_40:
  v23 = (*(*a1 + 24))(a1);
  if (v23 == -1)
  {
    (*(*a1 + 176))(a1, v13);
    return (*(*a1 + 192))(a1, v11, 0x3FFFFFFF0004);
  }

  else
  {
    v24 = v23;
    if (v9)
    {
      __p = 0;
      LODWORD(v30) = 0;
      HIDWORD(v30) = v13 + v8;
      (*(*a1 + 208))(a1, v23, &__p);
    }

    else
    {
      v26 = (*(*a1 + 200))(a1);
      (*(*a1 + 176))(a1, v26);
      __p = 0;
      LODWORD(v30) = 0;
      HIDWORD(v30) = v24;
      (*(*a1 + 208))(a1, v26, &__p);
      __p = 0;
      LODWORD(v30) = 0;
      HIDWORD(v30) = v13 + v8;
      (*(*a1 + 208))(a1, v26, &__p);
    }

    v27 = fst::UnionProperties(v10, v11, 0);
    return (*(*a1 + 192))(a1, v27, 0x3FFFFFFF0007);
  }
}

void sub_1B538FFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OnlinePhoneDecoder::DecodeMe<kaldi::DecodableInterface>(kaldi::LatticeFasterOnlineDecoder *this, kaldi::DecodableInterface *a2)
{
  v4 = *(this + 102);
  if (v4 == 4 || v4 == 1)
  {
    kaldi::LatticeFasterOnlineDecoder::InitDecoding(this);
  }

  v25 = 1;
  kaldi::Timer::Reset(v24, a2);
  v26 = 0;
  Seconds = kaldi::Timer::GetSeconds(5, v6);
  v8 = v24[0];
  v9 = (this + 412);
  v10 = (*(*a2 + 8))(a2, (*(this + 103) - 1));
  if ((v10 & 1) == 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = Seconds - v8;
    do
    {
      if (v12 >= *(this + 90))
      {
        break;
      }

      if (v12)
      {
        HIDWORD(v14) = 85899344 - 1030792151 * v9->i32[0];
        LODWORD(v14) = HIDWORD(v14);
        if ((v14 >> 3) <= 0x147AE14 && quasar::gLogLevel >= 6)
        {
          memset(v23, 0, sizeof(v23));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v23);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Beam: ", 6);
          v16 = std::ostream::operator<<();
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "; Speed: ", 9);
          v19 = kaldi::Timer::GetSeconds(5, v18);
          v20 = MEMORY[0x1B8C84BE0](v17, (v19 - v24[0] - v13) * 1000.0 / v11);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " xRT", 4);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(v23);
        }
      }

      kaldi::LatticeFasterOnlineDecoder::ProcessEmitting(this, a2);
      kaldi::LatticeFasterOnlineDecoder::ProcessNonemitting(this);
      v21 = *v9;
      *v9 = vadd_s32(*v9, 0x100000001);
      ++v12;
      v11 += 10;
    }

    while (!(*(*a2 + 8))(a2, v21.u32[0]));
  }

  if ((*(*a2 + 8))(a2, v9->u32[0]))
  {
    kaldi::LatticeFasterOnlineDecoder::FinalizeDecoding(this);
    result = 1;
  }

  else
  {
    result = 2;
  }

  *(this + 102) = result;
  return result;
}

void sub_1B53904C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::locale a11)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a11);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a9);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst((v11 - 64));
  _Unwind_Resume(a1);
}

void quasar::LatticeFasterDecoder::~LatticeFasterDecoder(quasar::LatticeFasterDecoder *this)
{
  *this = &unk_1F2D0EEE8;
  v2 = *(this + 81);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 639) < 0)
  {
    operator delete(*(this + 77));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 592, *(this + 75));
  v3 = *(this + 61);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

  quasar::Decoder::~Decoder(this);
}

{
  *this = &unk_1F2D0EEE8;
  v2 = *(this + 81);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 639) < 0)
  {
    operator delete(*(this + 77));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 592, *(this + 75));
  v3 = *(this + 61);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

  quasar::Decoder::~Decoder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlinePhoneDecoder::~OnlinePhoneDecoder(quasar::OnlinePhoneDecoder *this)
{
  v2 = *(this + 1);
  if (v2 != -1)
  {
    v3 = *(this + 3);
    do
    {
      v4 = (v3 + 16 * v2);
      v4[1] = 0;
      v2 = *v4;
    }

    while (v2 != -1);
  }

  v5 = *this;
  *this = 0;
  *(this + 1) = -1;
  kaldi::LatticeFasterOnlineDecoder::DeleteElems(this, v5);

  kaldi::LatticeFasterOnlineDecoder::~LatticeFasterOnlineDecoder(this);
}

uint64_t fst::StringCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::ConvertStringToLabels(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  if (*a1 == 3)
  {

    return fst::UTF8StringToLabels<int>(a2, a3);
  }

  else
  {
    if (*a1 != 2)
    {
      operator new[]();
    }

    v5 = *(a2 + 23);
    v6 = *(a2 + 8);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = *(a2 + 23);
    }

    if (v6)
    {
      v7 = 0;
      v8 = v5 >> 63;
      do
      {
        if (v8)
        {
          v9 = *a2;
        }

        else
        {
          v9 = a2;
        }

        LODWORD(v12) = *(v9 + v7);
        std::vector<int>::push_back[abi:ne200100](a3, &v12);
        ++v7;
        v10 = *(a2 + 23);
        v8 = v10 >> 63;
        if ((v10 & 0x80000000) != 0)
        {
          v10 = *(a2 + 8);
        }
      }

      while (v7 < v10);
    }

    return 1;
  }
}

void sub_1B5390938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StringCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Compile(uint64_t a1, void *a2, uint64_t a3, float *a4)
{
  (*(*a3 + 224))(a3);
  while (1)
  {
    v7 = (*(*a3 + 160))(a3);
    v8 = a2[1];
    if (v7 > ((v8 - *a2) >> 2))
    {
      break;
    }

    (*(*a3 + 200))(a3);
  }

  if (v8 != *a2)
  {
    v9 = 0;
    do
    {
      v10 = v9 + 1;
      (*(*a3 + 208))(a3);
      v9 = v10;
    }

    while (v10 < (a2[1] - *a2) >> 2);
  }

  (*(*a3 + 176))(a3, 0);
  return (*(*a3 + 184))(a3, (a2[1] - *a2) >> 2, *a4);
}

uint64_t fst::UTF8StringToLabels<int>(uint64_t *a1, const void **a2)
{
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
    v4 = a1[1];
  }

  if (!v4)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    ++v7;
    v8 = *(v3 + v6);
    v9 = v8;
    v33 = v8;
    if (v8 < 0)
    {
      break;
    }

    v10 = &v33;
LABEL_21:
    std::vector<int>::push_back[abi:ne200100](a2, v10);
    v6 = v7;
    if (v4 <= v7)
    {
      return 1;
    }
  }

  if ((v8 & 0xC0) == 0x80)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v24 = fst::LogMessage::LogMessage(&v30, __p);
    v25 = fst::cerr(v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "UTF8StringToLabels: continuation byte as lead byte", 50);
    v23 = &v30;
    goto LABEL_26;
  }

  v11 = vand_s8(vcgt_u16(vdup_n_s16(v8), 0xF700EF00DF00BFLL), 0x8000400020001);
  v11.i32[0] = vaddv_s16(v11) & 0xF;
  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.i32[0];
  if (v9 > 0xFB)
  {
    v13 = v12.i32[0] + 1;
  }

  v14 = v9 & ~(-1 << (6 - v13));
  v30 = v14;
  if (!v13)
  {
LABEL_20:
    v10 = &v30;
    goto LABEL_21;
  }

  v15 = v4 - v7;
  v16 = v3 + v7;
  do
  {
    if (!v15)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      v19 = fst::LogMessage::LogMessage(&v29, __p);
      v20 = fst::cerr(v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "UTF8StringToLabels: truncated utf-8 byte sequence", 49);
      goto LABEL_25;
    }

    v17 = v14;
    if ((*v16 & 0xC0) != 0x80)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      v21 = fst::LogMessage::LogMessage(&v29, __p);
      v22 = fst::cerr(v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "UTF8StringToLabels: missing/invalid continuation byte", 53);
      goto LABEL_25;
    }

    v14 = *v16 & 0x3F | (v14 << 6);
    v30 = *v16 & 0x3F | (v17 << 6);
    --v15;
    ++v16;
    ++v7;
    --v13;
  }

  while (v13);
  if (((v17 << 6) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v26 = fst::LogMessage::LogMessage(&v29, __p);
  v27 = fst::cerr(v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "UTF8StringToLabels: Invalid character found: ", 45);
  MEMORY[0x1B8C84C00](v28, v33);
LABEL_25:
  v23 = &v29;
LABEL_26:
  fst::LogMessage::~LogMessage(v23);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B5390D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StringCompiler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::ConvertSymbolToLabel(uint64_t a1, char *__str, _DWORD *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = (*(*v6 + 104))(v6, __str);
    if (v7 == -1 && (v7 = *(a1 + 16), v7 == -1) || v7 < 0 && (*(a1 + 20) & 1) == 0)
    {
      if (FLAGS_v >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
        v8 = fst::LogMessage::LogMessage(&__endptr, __p);
        v9 = fst::cerr(v8);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "StringCompiler::ConvertSymbolToLabel: Symbol ", 46);
        v11 = strlen(__str);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, __str, v11);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " is not mapped to any integer label, symbol table = ", 53);
        v14 = (*(**(a1 + 8) + 48))(*(a1 + 8));
        v15 = *(v14 + 23);
        if (v15 >= 0)
        {
          v16 = v14;
        }

        else
        {
          v16 = *v14;
        }

        if (v15 >= 0)
        {
          v17 = *(v14 + 23);
        }

        else
        {
          v17 = *(v14 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
        p_endptr = &__endptr;
        goto LABEL_19;
      }

      return 0;
    }
  }

  else
  {
    __endptr = 0;
    v7 = strtoll(__str, &__endptr, 10);
    if (__endptr < &__str[strlen(__str)] || (*(a1 + 20) & 1) == 0 && v7 < 0)
    {
      if (FLAGS_v >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
        v19 = fst::LogMessage::LogMessage(&v26, __p);
        v20 = fst::cerr(v19);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "StringCompiler::ConvertSymbolToLabel: Bad label integer ", 56);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "= ", 3);
        v23 = strlen(__str);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, __str, v23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "", 1);
        p_endptr = &v26;
LABEL_19:
        fst::LogMessage::~LogMessage(p_endptr);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      return 0;
    }
  }

  *a3 = v7;
  return 1;
}

void sub_1B5390FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::QsrTextSymbolTable>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<fst::SymbolTable> &,quasar::TextEncoding,std::allocator<quasar::QsrTextSymbolTable>,0>(void *a1, uint64_t *a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFD0D0;
  std::allocator<quasar::QsrTextSymbolTable>::construct[abi:ne200100]<quasar::QsrTextSymbolTable,std::shared_ptr<fst::SymbolTable> &,quasar::TextEncoding>(&v5, (a1 + 3), a2, a3);
  return a1;
}

double std::allocator<quasar::QsrTextSymbolTable>::construct[abi:ne200100]<quasar::QsrTextSymbolTable,std::shared_ptr<fst::SymbolTable> &,quasar::TextEncoding>(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4)
{
  v5 = *a3;
  v4 = a3[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a4;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 96) = v5;
    *(a2 + 104) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a2 + 112) = v6;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v8 = *a4;
    result = 0.0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 96) = v5;
    *(a2 + 104) = 0;
    *(a2 + 112) = v8;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
  }

  return result;
}

uint64_t std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__emplace_back_slow_path<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(void *a1, uint64_t a2)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>(a1, v6);
  }

  v9 = (16 * v5);
  v15 = 0;
  v16 = v9;
  *(&v17 + 1) = 0;
  v10 = *(a2 + 8);
  v9[1] = v10;
  ++*(v10 + 56);
  *v9 = &unk_1F2D04A58;
  *&v17 = 16 * v5 + 16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>*>(a1, v3, v4, 0);
  v11 = *a1;
  *a1 = 0;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~__split_buffer(&v15);
  return v14;
}

void sub_1B539128C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>*>(uint64_t a1, void (***a2)(void), void (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = (a4 + 8);
    v7 = a2;
    do
    {
      v8 = v7[1];
      *v6 = v8;
      ++*(v8 + 14);
      *(v6 - 1) = &unk_1F2D04A58;
      v7 += 2;
      a4 += 16;
      v6 += 2;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v9 = a2;
      v10 = a2;
      do
      {
        v11 = *v10;
        v10 += 2;
        (*v11)(v5);
        v9 += 2;
        v5 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 16);
    *(a1 + 16) = i - 16;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0EFC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::TextProc::GetOrthography(__int128 **a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v5 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v8 = *(v5 + 23);
      if (v8 < 0)
      {
        if (*(v5 + 1))
        {
LABEL_6:
          if ((*(v5 + 44) & 1) != 0 || a2)
          {
            if (v8 >= 0)
            {
              v10 = *(v5 + 23);
            }

            else
            {
              v10 = *(v5 + 1);
            }

            std::string::basic_string[abi:ne200100](&v16, v10 + 1);
            if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v11 = &v16;
            }

            else
            {
              v11 = v16.__r_.__value_.__r.__words[0];
            }

            if (v10)
            {
              if (*(v5 + 23) >= 0)
              {
                v12 = v5;
              }

              else
              {
                v12 = *v5;
              }

              memmove(v11, v12, v10);
            }

            *(&v11->__r_.__value_.__l.__data_ + v10) = 32;
          }

          else if ((v8 & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v16, *v5, *(v5 + 1));
          }

          else
          {
            v9 = *v5;
            v16.__r_.__value_.__r.__words[2] = *(v5 + 2);
            *&v16.__r_.__value_.__l.__data_ = v9;
          }

          if (*(v5 + 45) == 1)
          {
            std::operator+<char>();
          }

          else if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v16;
          }

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

          std::string::append(a3, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__r_.__value_.__l.__data_);
          }

          v4 = a1[1];
        }
      }

      else if (*(v5 + 23))
      {
        goto LABEL_6;
      }

      v5 += 14;
    }

    while (v5 != v4);
  }
}

void sub_1B5391620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void quasar::TextProc::GetTokenizedPhraseChoiceList(uint64_t **a1@<X0>, unsigned int a2@<W1>, char a3@<W2>, void *a4@<X8>)
{
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v6 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::pair[abi:ne200100]<std::vector<std::vector<unsigned int>>&,std::vector<std::vector<std::vector<quasar::Token>>>&,0>(a4, &v80, &v77);
  }

  else
  {
    v74 = 0;
    v75 = 0;
    v76 = 0;
    do
    {
      v10 = v6[1];
      if (*v6 == v10)
      {
        if (v6 == *a1)
        {
          std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::pair[abi:ne200100]<std::vector<std::vector<unsigned int>>&,std::vector<std::vector<std::vector<quasar::Token>>>&,0>(a4, &v80, &v77);
          goto LABEL_104;
        }
      }

      else
      {
        v11 = *(v10 - 192);
        std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v74, v6);
        if (a2 <= v11)
        {
          a2 = v11;
        }

        v5 = a1[1];
      }

      v6 += 3;
    }

    while (v6 != v5);
    memset(v73, 0, sizeof(v73));
    std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v73, v74, v75, 0xAAAAAAAAAAAAAAABLL * (v75 - v74));
    v13 = v74;
    v12 = v75;
    if (v74 == v75)
    {
      goto LABEL_98;
    }

    v14 = v74;
    do
    {
      *(*v14 + 7) = 0;
      *(v14[1] - 48) = a2;
      v14 += 3;
    }

    while (v14 != v12);
    if (v13 == v12)
    {
LABEL_98:
      v71 = 0;
      v72 = 0;
      v70 = &v71;
LABEL_99:
      std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::pair[abi:ne200100]<std::vector<std::vector<unsigned int>>&,std::vector<std::vector<std::vector<quasar::Token>>>&,0>(a4, &v80, &v77);
    }

    else
    {
      v15 = v13;
      do
      {
        v16 = *v15;
        v17 = v15[1];
        if (*v15 != v17)
        {
          v18 = 0;
          while (1)
          {
            v19 = v16[7];
            if (v18 > v19)
            {
              break;
            }

            v18 = v16[8];
            if (v19 > v18)
            {
              break;
            }

            v16 += 56;
            if (v16 == v17)
            {
              goto LABEL_19;
            }
          }

          std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::pair[abi:ne200100]<std::vector<std::vector<unsigned int>>&,std::vector<std::vector<std::vector<quasar::Token>>>&,0>(a4, &v80, &v77);
          goto LABEL_103;
        }

LABEL_19:
        v15 += 3;
      }

      while (v15 != v12);
      v71 = 0;
      v72 = 0;
      v70 = &v71;
      if (v13 == v12)
      {
        goto LABEL_99;
      }

      do
      {
        v68 = 0;
        v69 = 0;
        v67 = &v68;
        for (i = *v13; i != v13[1]; i += 56)
        {
          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(&v67, i + 8);
        }

        if (v13 == v74)
        {
          std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v70, v67, &v68);
        }

        else
        {
          v65 = 0;
          v66 = 0;
          v64 = &v65;
          v21 = v67;
          if (v67 == &v68)
          {
            v31 = &v65;
          }

          else
          {
            do
            {
              v22 = v71;
              if (v71)
              {
                v23 = *(v21 + 7);
                v24 = &v71;
                do
                {
                  v25 = *(v22 + 7);
                  v26 = v25 >= v23;
                  v27 = v25 < v23;
                  if (v26)
                  {
                    v24 = v22;
                  }

                  v22 = v22[v27];
                }

                while (v22);
                if (v24 != &v71 && v23 >= *(v24 + 7))
                {
                  std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(&v64, v21 + 7);
                }
              }

              v28 = v21[1];
              if (v28)
              {
                do
                {
                  v29 = v28;
                  v28 = *v28;
                }

                while (v28);
              }

              else
              {
                do
                {
                  v29 = v21[2];
                  v30 = *v29 == v21;
                  v21 = v29;
                }

                while (!v30);
              }

              v21 = v29;
            }

            while (v29 != &v68);
            v31 = v64;
          }

          std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v70, v31, &v65);
          std::__tree<int>::destroy(&v64, v65);
        }

        std::__tree<int>::destroy(&v67, v68);
        v13 += 3;
      }

      while (v13 != v75);
      if (!v72)
      {
        goto LABEL_99;
      }

      std::vector<std::vector<int>>::resize(&v80, 0xAAAAAAAAAAAAAAABLL * (v13 - v74));
      v32 = v72;
      std::vector<std::vector<std::vector<quasar::Token>>>::resize(&v77, v72);
      v67 = 0;
      v68 = 0;
      v69 = 0;
      std::vector<std::set<std::string>>::resize(&v67, v32);
      v56 = a4;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      std::vector<std::map<std::string,unsigned int>>::resize(&v64, v32);
      v33 = v74;
      if (v75 != v74)
      {
        v34 = 0;
        do
        {
          memset(&v63, 0, sizeof(v63));
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v36 = &v33[3 * v34];
          v35 = *v36;
          if (v36[1] != *v36)
          {
            v37 = 0;
            v38 = 0;
            do
            {
              v39 = &v35[224 * v37];
              v40 = *(v39 + 8);
              std::operator+<char>();
              if (v39[44])
              {
                v41 = " ";
              }

              else
              {
                v41 = "";
              }

              v42 = std::string::append(&v57, v41);
              v43 = *&v42->__r_.__value_.__l.__data_;
              v59 = v42->__r_.__value_.__r.__words[2];
              *__p = v43;
              v42->__r_.__value_.__l.__size_ = 0;
              v42->__r_.__value_.__r.__words[2] = 0;
              v42->__r_.__value_.__r.__words[0] = 0;
              if (v59 >= 0)
              {
                v44 = __p;
              }

              else
              {
                v44 = __p[0];
              }

              if (v59 >= 0)
              {
                v45 = HIBYTE(v59);
              }

              else
              {
                v45 = __p[1];
              }

              std::string::append(&v63, v44, v45);
              if (SHIBYTE(v59) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v57.__r_.__value_.__l.__data_);
              }

              std::vector<quasar::Token>::push_back[abi:ne200100](&v60, (v73[0][3 * v34] + 224 * v37++));
              v35 = v74[3 * v34];
              v46 = 0x6DB6DB6DB6DB6DB7 * ((v74[3 * v34 + 1] - v35) >> 5);
              v47 = v46 == v37 || *&v35[224 * v37 + 32] != v40;
              v48 = v71;
              if (v71)
              {
                v49 = &v71;
                do
                {
                  v50 = *(v48 + 7);
                  v26 = v50 >= v40;
                  v51 = v50 < v40;
                  if (v26)
                  {
                    v49 = v48;
                  }

                  v48 = v48[v51];
                }

                while (v48);
                if (v49 != &v71 && v40 >= *(v49 + 7) && v47)
                {
                  LODWORD(__p[0]) = 0;
                  if (0xAAAAAAAAAAAAAAABLL * (v68 - v67) <= v38)
                  {
                    std::vector<int>::__throw_out_of_range[abi:ne200100]();
                  }

                  v52 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v67[3 * v38], &v63.__r_.__value_.__l.__data_);
                  if (0xAAAAAAAAAAAAAAABLL * (v68 - v67) <= v38)
                  {
                    std::vector<int>::__throw_out_of_range[abi:ne200100]();
                  }

                  if (&v67[3 * v38 + 1] == v52)
                  {
                    if (0xAAAAAAAAAAAAAAABLL * ((v78 - v77) >> 3) <= v38 || (std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v77[3 * v38], &v60), 0xAAAAAAAAAAAAAAABLL * ((v78 - v77) >> 3) <= v38))
                    {
                      std::vector<int>::__throw_out_of_range[abi:ne200100]();
                    }

                    v53 = -1 - 1431655765 * ((v77[3 * v38 + 1] - v77[3 * v38]) >> 3);
                    LODWORD(__p[0]) = v53;
                    if (0xAAAAAAAAAAAAAAABLL * (v65 - v64) <= v38)
                    {
LABEL_106:
                      std::vector<int>::__throw_out_of_range[abi:ne200100]();
                    }

                    v57.__r_.__value_.__r.__words[0] = &v63;
                    *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v64[3 * v38], &v63.__r_.__value_.__l.__data_) + 56) = v53;
                    if (0xAAAAAAAAAAAAAAABLL * (v68 - v67) <= v38)
                    {
                      std::vector<int>::__throw_out_of_range[abi:ne200100]();
                    }

                    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v67[3 * v38], &v63.__r_.__value_.__l.__data_);
                  }

                  else
                  {
                    if (0xAAAAAAAAAAAAAAABLL * (v65 - v64) <= v38)
                    {
                      goto LABEL_106;
                    }

                    v57.__r_.__value_.__r.__words[0] = &v63;
                    LODWORD(__p[0]) = *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v64[3 * v38], &v63.__r_.__value_.__l.__data_) + 56);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v81 - v80) >> 3) <= v34)
                  {
                    std::vector<int>::__throw_out_of_range[abi:ne200100]();
                  }

                  std::vector<int>::push_back[abi:ne200100]((v80 + 24 * v34), __p);
                  MEMORY[0x1B8C84820](&v63, "");
                  v55 = v60;
                    ;
                  }

                  v61 = v55;
                  ++v38;
                  v35 = v74[3 * v34];
                  v46 = 0x6DB6DB6DB6DB6DB7 * ((v74[3 * v34 + 1] - v35) >> 5);
                }
              }
            }

            while (v46 > v37);
          }

          __p[0] = &v60;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__p);
          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          ++v34;
          v33 = v74;
        }

        while (0xAAAAAAAAAAAAAAABLL * (v75 - v74) > v34);
      }

      if (a3)
      {
        quasar::TextProc::RepairConfidence(&v77);
      }

      std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::pair[abi:ne200100]<std::vector<std::vector<unsigned int>>&,std::vector<std::vector<std::vector<quasar::Token>>>&,0>(v56, &v80, &v77);
      v63.__r_.__value_.__r.__words[0] = &v64;
      std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&v63);
      v64 = &v67;
      std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&v64);
    }

    std::__tree<int>::destroy(&v70, v71);
LABEL_103:
    v70 = v73;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v70);
LABEL_104:
    v73[0] = &v74;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v73);
  }

  v74 = &v77;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&v74);
  v77 = &v80;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v77);
}

void sub_1B5391E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, char **__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t *a39, void *a40, uint64_t a41, uint64_t a42)
{
  __p = &a33;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a33 = &a36;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&a33);
  std::__tree<int>::destroy(&a39, a40);
  a39 = &a42;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a39);
  a42 = v42 - 168;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a42);
  *(v42 - 168) = v42 - 144;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100]((v42 - 168));
  *(v42 - 144) = v42 - 120;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100]((v42 - 144));
  _Unwind_Resume(a1);
}

void std::vector<std::vector<std::vector<quasar::Token>>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<std::vector<quasar::Token>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    *(a1 + 8) = v7;
  }
}

void std::vector<std::set<std::string>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::set<std::string>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      do
      {
        v8 = v3 - 24;
        std::__tree<std::string>::destroy(v3 - 24, *(v3 - 16));
        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<std::map<std::string,unsigned int>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::map<std::string,unsigned int>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      do
      {
        v8 = v3 - 24;
        std::__tree<std::string>::destroy(v3 - 24, *(v3 - 16));
        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void quasar::TextProc::RepairConfidence(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 == *a1)
  {
    return;
  }

  v3 = 0;
  do
  {
    v4 = v2 + 24 * v3;
    v5 = *v4;
    if (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 8) - *v4) >> 3) < 2)
    {
      goto LABEL_55;
    }

    v6 = *v5;
    v7 = v5[1];
    v37 = v3;
    v8 = 0;
    if (*v5 != v7)
    {
      do
      {
        v8 = (*(v6 + 40) + v8);
        v6 += 224;
      }

      while (v6 != v7);
    }

    v9 = 0;
    v10 = 1;
    v11 = *v4;
    do
    {
      v12 = &v11[3 * v10];
      v13 = v12[1];
      if (*v12 == v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        v15 = *v12;
        do
        {
          v14 = (*(v15 + 40) + v14);
          v15 += 224;
        }

        while (v15 != v13);
      }

      v16 = 0x6DB6DB6DB6DB6DB7 * ((v13 - *v12) >> 5) * v8;
      v17 = 0x6DB6DB6DB6DB6DB7 * ((v5[1] - *v5) >> 5) * v14;
      if (v17)
      {
        v18 = v16 < v17;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        v19 = quasar::gLogLevel;
        if ((v9 & 1) == 0)
        {
          if (quasar::gLogLevel < 5 || (v58 = 0u, v59 = 0u, v56 = 0u, v57 = 0u, v54 = 0u, v55 = 0u, v52 = 0u, v53 = 0u, v50 = 0u, v51 = 0u, v49 = 0u, v47 = 0u, v48 = 0u, v45 = 0u, v46 = 0u, v43 = 0u, v44 = 0u, kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43), v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Changed confidence for slot=", 28), MEMORY[0x1B8C84C00](v25, v37), quasar::QuasarDebugMessage::~QuasarDebugMessage(&v43), quasar::gLogLevel < 5))
          {
LABEL_39:
            v29 = *v12;
            v30 = v12[1];
            while (v29 != v30)
            {
              *(v29 + 40) = (v16 * *(v29 + 40) / v17);
              v29 += 224;
            }

            if (quasar::gLogLevel <= 4)
            {
              v9 = 1;
            }

            else
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
              v49 = 0u;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
              v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "phrase=", 7);
              v32 = MEMORY[0x1B8C84C00](v31, v10);
              v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " new: ", 6);
              v38 = ",";
              v39 = 1;
              quasar::join<std::vector<quasar::Token>>(v12, &v38);
              if ((v42 & 0x80u) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              if ((v42 & 0x80u) == 0)
              {
                v35 = v42;
              }

              else
              {
                v35 = v41;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, p_p, v35);
              if (v42 < 0)
              {
                operator delete(__p);
              }

              quasar::QuasarDebugMessage::~QuasarDebugMessage(&v43);
              v9 = 1;
            }

            goto LABEL_53;
          }

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
          v49 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "1best: ", 7);
          v38 = ",";
          v39 = 1;
          quasar::join<std::vector<quasar::Token>>(v5, &v38);
          if ((v42 & 0x80u) == 0)
          {
            v27 = &__p;
          }

          else
          {
            v27 = __p;
          }

          if ((v42 & 0x80u) == 0)
          {
            v28 = v42;
          }

          else
          {
            v28 = v41;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
          if (v42 < 0)
          {
            operator delete(__p);
          }

          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v43);
          v19 = quasar::gLogLevel;
        }

        if (v19 >= 5)
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
          v49 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
          v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "phrase=", 7);
          v21 = MEMORY[0x1B8C84C00](v20, v10);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " orig: ", 7);
          v38 = ",";
          v39 = 1;
          quasar::join<std::vector<quasar::Token>>(v12, &v38);
          if ((v42 & 0x80u) == 0)
          {
            v23 = &__p;
          }

          else
          {
            v23 = __p;
          }

          if ((v42 & 0x80u) == 0)
          {
            v24 = v42;
          }

          else
          {
            v24 = v41;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
          if (v42 < 0)
          {
            operator delete(__p);
          }

          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v43);
        }

        goto LABEL_39;
      }

LABEL_53:
      ++v10;
      v11 = *v4;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 8) - *v4) >> 3) > v10);
    v3 = v37;
    v2 = *a1;
    v1 = a1[1];
LABEL_55:
    ++v3;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((v1 - v2) >> 3) > v3);
}

uint64_t quasar::join<std::vector<quasar::Token>>(uint64_t *a1, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  quasar::joinToStream<std::vector<quasar::Token>>(&v7, a1, a2);
  std::stringbuf::str();
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v11);
}

void sub_1B5392844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](v2 + 128);
  _Unwind_Resume(a1);
}

void quasar::TextProc::GranularizedTokenPhraseChoiceList(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v105 = *MEMORY[0x1E69E9840];
  if (a1[3] == a1[4] || (v4 = *a1, v5 = a1[1], *a1 == v5))
  {

    std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::pair[abi:ne200100](a2, a1);
  }

  else
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    std::vector<std::vector<int>>::resize(a2, 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3));
    v6 = v2[3];
    v72 = a2;
    if (v2[4] != v6)
    {
      i = 0;
      v70 = v2;
      while (1)
      {
        v8 = (v6 + 24 * i);
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v9 = *v2;
        v10 = v2[1];
        do
        {
          __p[0] = 0;
          __p[1] = 0;
          *&v89 = 0;
          std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
          std::vector<int>::push_back[abi:ne200100](&v77, __p[0] + i);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          v9 += 3;
        }

        while (v9 != v10);
        if (*v77)
        {
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          *v99 = 0u;
          v100 = 0u;
          *v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          *v94 = 0u;
          *v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unsupported n-best index configuration", 38);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
        }

        v12 = *v8;
        v11 = v8[1];
        if (0xAAAAAAAAAAAAAAABLL * ((v11 - *v8) >> 3) > 1)
        {
          break;
        }

        std::vector<std::vector<std::vector<quasar::Token>>>::push_back[abi:ne200100](a2 + 24, v8);
        v13 = v77;
        if (v78 != v77)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          do
          {
            if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) <= v16)
            {
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            std::vector<int>::push_back[abi:ne200100]((*a2 + v14), &v13[v15]);
            ++v16;
            v13 = v77;
            v15 += 4;
            v14 += 24;
          }

          while (v16 < (v78 - v77) >> 2);
LABEL_107:
          v13 = v77;
        }

        v2 = v70;
        if (v13)
        {
          v78 = v13;
          operator delete(v13);
        }

        ++i;
        v6 = v70[3];
        if (i >= 0xAAAAAAAAAAAAAAABLL * ((v70[4] - v6) >> 3))
        {
          goto LABEL_111;
        }
      }

      v75 = v8;
      v71 = i;
      v18 = *(a2 + 24);
      v17 = *(a2 + 32);
      v19 = *v12;
      v20 = *(v12 + 8);
      if (*v12 == v20)
      {
        v22 = v12;
      }

      else
      {
        do
        {
          quasar::Token::Token(__p, v19);
          v85 = 0;
          v86 = 0;
          v87 = 0;
          std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token const*,quasar::Token const*>(&v85, __p, &v102, 1uLL);
          v81 = 0uLL;
          *&v82 = 0;
          std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*>(&v81, &v85, __p, 1uLL);
          v84 = &v85;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v84);
          if (SBYTE7(v100) < 0)
          {
            operator delete(v99[0]);
          }

          if (SBYTE7(v98) < 0)
          {
            operator delete(v97[0]);
          }

          v84 = &v95 + 1;
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v84);
          if (SBYTE7(v95) < 0)
          {
            operator delete(v94[0]);
          }

          v84 = &v92 + 1;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v84);
          if (SBYTE7(v92) < 0)
          {
            operator delete(v91[0]);
          }

          if (SBYTE7(v89) < 0)
          {
            operator delete(__p[0]);
          }

          std::vector<std::vector<std::vector<quasar::Token>>>::push_back[abi:ne200100](a2 + 24, &v81);
          v21 = *a2;
          if (*(a2 + 8) == *a2)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          LODWORD(__p[0]) = 0;
          std::vector<int>::push_back[abi:ne200100](v21, __p);
          __p[0] = &v81;
          std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](__p);
          v19 = (v19 + 224);
        }

        while (v19 != v20);
        v22 = *v75;
        v11 = v75[1];
      }

      v74 = v17 - v18;
      v23 = (v22 + 24);
      if (v11 != v22 + 24)
      {
        do
        {
          v81 = 0u;
          v82 = 0u;
          v83 = 1065353216;
          v24 = *v23;
          if (v23[1] != *v23)
          {
            v25 = 0;
            do
            {
              if (!v25 || (v26 = *v12, v27 = *(v12 + 8), *v12 == v27))
              {
                v28 = 0;
              }

              else
              {
                v28 = 0;
                v29 = 0;
                v30 = *(v24 + 224 * v25 + 28);
                v31 = -1;
                do
                {
                  v32 = *(v26 + 7);
                  if (v30 <= v32)
                  {
                    v33 = *(v26 + 7);
                  }

                  else
                  {
                    v33 = *(v24 + 224 * v25 + 28);
                  }

                  if (v32 >= v30)
                  {
                    v34 = *(v24 + 224 * v25 + 28);
                  }

                  else
                  {
                    v34 = *(v26 + 7);
                  }

                  v35 = v33 - v34;
                  if (v35 >= v31)
                  {
                    v36 = v28;
                  }

                  else
                  {
                    v36 = v29;
                  }

                  if (v35 >= v31)
                  {
                    v35 = v31;
                  }

                  if (v32)
                  {
                    v28 = v36;
                    v31 = v35;
                  }

                  ++v29;
                  v26 = (v26 + 224);
                }

                while (v26 != v27);
              }

              v80 = v28;
              v37 = v28 - 0x5555555555555555 * (v74 >> 3);
              v38 = *(a2 + 24);
              if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - v38) >> 3) <= v37)
              {
                std::vector<int>::__throw_out_of_range[abi:ne200100]();
              }

              v39 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(&v81, &v80);
              v40 = (v24 + 224 * v25);
              if (v39)
              {
                std::vector<quasar::Token>::push_back[abi:ne200100](*(v38 + 24 * v37 + 8) - 24, v40);
              }

              else
              {
                quasar::Token::Token(__p, v40);
                v85 = 0;
                v86 = 0;
                v87 = 0;
                std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token const*,quasar::Token const*>(&v85, __p, &v102, 1uLL);
                std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100]((v38 + 24 * v37), &v85);
                v84 = &v85;
                std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v84);
                if (SBYTE7(v100) < 0)
                {
                  operator delete(v99[0]);
                }

                if (SBYTE7(v98) < 0)
                {
                  operator delete(v97[0]);
                }

                v84 = &v95 + 1;
                std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v84);
                if (SBYTE7(v95) < 0)
                {
                  operator delete(v94[0]);
                }

                v84 = &v92 + 1;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v84);
                if (SBYTE7(v92) < 0)
                {
                  operator delete(v91[0]);
                }

                if (SBYTE7(v89) < 0)
                {
                  operator delete(__p[0]);
                }

                std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v81, &v80);
              }

              ++v25;
              v24 = *v23;
            }

            while (v25 < 0x6DB6DB6DB6DB6DB7 * ((v23[1] - *v23) >> 5));
          }

          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v81);
          v23 += 3;
        }

        while (v23 != v75[1]);
      }

      v41 = v74 + *(a2 + 24);
      for (i = v71; v41 != *(a2 + 32); v41 += 24)
      {
        v42 = *v41;
        v81 = 0uLL;
        *&v82 = 0;
        std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v81, v42);
        v43 = *v41;
        v44 = *(v41 + 8) - *v41;
        if (*(a2 + 8) - *a2 < v44)
        {
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          *v99 = 0u;
          v100 = 0u;
          *v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          *v94 = 0u;
          *v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "n-best output size is wrong", 27);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
        }

        if (0xAAAAAAAAAAAAAAABLL * (v44 >> 3) >= 2)
        {
          v45 = 1;
          v73 = v41;
          do
          {
            v46 = &v43[3 * v45];
            v47 = v81;
            if (v81 != *(&v81 + 1))
            {
              v48 = *v46;
              v49 = v46[1];
              v50 = 0x6DB6DB6DB6DB6DB7 * ((v49 - *v46) >> 5);
              if (v50 <= 1)
              {
                v50 = 1;
              }

              v76 = v50;
              v51 = v81;
              while (1)
              {
                v52 = *v51;
                if (v51[1] - *v51 == v49 - v48)
                {
                  v53 = v48;
                  v54 = v76;
                  if (v49 == v48)
                  {
LABEL_96:
                    a2 = v72;
                    v41 = v73;
                    goto LABEL_98;
                  }

                  while (1)
                  {
                    v55 = *(v52 + 23);
                    if (v55 >= 0)
                    {
                      v56 = *(v52 + 23);
                    }

                    else
                    {
                      v56 = *(v52 + 8);
                    }

                    v57 = *(v53 + 23);
                    v58 = v57;
                    if ((v57 & 0x80u) != 0)
                    {
                      v57 = *(v53 + 8);
                    }

                    if (v56 != v57)
                    {
                      break;
                    }

                    v59 = v55 >= 0 ? v52 : *v52;
                    v60 = v58 >= 0 ? v53 : *v53;
                    if (memcmp(v59, v60, v56))
                    {
                      break;
                    }

                    v53 += 224;
                    v52 += 224;
                    if (!--v54)
                    {
                      goto LABEL_96;
                    }
                  }
                }

                v51 += 3;
                if (v51 == *(&v47 + 1))
                {
                  a2 = v72;
                  v41 = v73;
                  v61 = *v72;
                  v62 = v72[1];
                  goto LABEL_101;
                }
              }
            }

            v51 = v81;
LABEL_98:
            v61 = *a2;
            v62 = *(a2 + 8);
            if (v51 == *(&v47 + 1))
            {
LABEL_101:
              if (0xAAAAAAAAAAAAAAABLL * (v62 - v61) <= v45)
              {
LABEL_126:
                std::vector<int>::__throw_out_of_range[abi:ne200100]();
              }

              LODWORD(__p[0]) = -1431655765 * ((*(&v47 + 1) - v47) >> 3);
              std::vector<int>::push_back[abi:ne200100](&v61[3 * v45], __p);
              std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v81, v46);
            }

            else
            {
              if (0xAAAAAAAAAAAAAAABLL * (v62 - v61) <= v45)
              {
                goto LABEL_126;
              }

              LODWORD(__p[0]) = 0;
              std::vector<int>::push_back[abi:ne200100](&v61[3 * v45], __p);
            }

            ++v45;
            v43 = *v41;
          }

          while (v45 < 0xAAAAAAAAAAAAAAABLL * ((*(v41 + 8) - *v41) >> 3));
        }

        i = v71;
        if (v41 != &v81)
        {
          std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v41, v81, *(&v81 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v81 + 1) - v81) >> 3));
        }

        __p[0] = &v81;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](__p);
      }

      goto LABEL_107;
    }

LABEL_111:
    __p[0] = 0;
    __p[1] = 0;
    *&v89 = 0;
    std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>(__p, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    std::vector<std::vector<int>>::clear[abi:ne200100](a2);
    v64 = __p[0];
    v63 = __p[1];
    if (__p[0] != __p[1])
    {
      v65 = 0;
      v66 = __p[0];
      do
      {
        v68 = *v66;
        v67 = v66[1];
        v66 += 3;
        v69 = (v67 - v68) >> 2;
        if (v65 <= v69)
        {
          v65 = v69;
        }
      }

      while (v66 != __p[1]);
      while (v64 != v63)
      {
        if (v65 == (v64[1] - *v64) >> 2)
        {
          std::vector<std::vector<unsigned int>>::push_back[abi:ne200100](a2, v64);
        }

        v64 += 3;
      }
    }

    quasar::TextProc::RepairConfidence((a2 + 24));
    *&v81 = __p;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v81);
  }
}