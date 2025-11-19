void quasar::RightContext::~RightContext(quasar::RightContext *this)
{
  std::mutex::~mutex((this + 24));
  v2 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
}

atomic_ullong **std::shared_future<quasar::Location>::operator=(atomic_ullong **a1, atomic_ullong **a2)
{
  if (*a2)
  {
    atomic_fetch_add_explicit(*a2 + 1, 1uLL, memory_order_relaxed);
  }

  v4 = *a1;
  if (*a1 && !atomic_fetch_add(v4 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v4 + 16))(v4);
  }

  *a1 = *a2;
  return a1;
}

uint64_t quasar::RunAsyncParams::setExtraLmList(uint64_t a1, uint64_t **a2)
{
  v3 = (a1 + 272);
  if (v3 != a2)
  {
    std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::__assign_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::LmHandle>*,std::shared_ptr<kaldi::quasar::LmHandle>*>(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  return a1;
}

uint64_t quasar::RunAsyncParams::setScoreNbestExtraLmList(uint64_t a1, uint64_t **a2)
{
  v3 = (a1 + 296);
  if (v3 != a2)
  {
    std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::__assign_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::LmHandle>*,std::shared_ptr<kaldi::quasar::LmHandle>*>(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  return a1;
}

uint64_t quasar::RunAsyncParams::setSpeakerCode(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 328);
  *(a1 + 320) = v4;
  *(a1 + 328) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t quasar::RunAsyncParams::setMuxIds(uint64_t a1, void *a2)
{
  v4 = a1 + 352;
  std::__tree<std::string>::destroy(a1 + 344, *(a1 + 352));
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = v4;
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    while ((*(v6 + 55) & 0x8000000000000000) == 0)
    {
      if (*(v6 + 55))
      {
        goto LABEL_4;
      }

LABEL_5:
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

      v6 = v9;
      if (v9 == v5)
      {
        return a1;
      }
    }

    if (!v6[5])
    {
      goto LABEL_5;
    }

LABEL_4:
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 344, v6 + 4);
    goto LABEL_5;
  }

  return a1;
}

uint64_t quasar::RunAsyncParams::getLmeDataStreams(quasar::RunAsyncParams *this)
{
  if (*(this + 104))
  {
    return *(this + 104);
  }

  else
  {
    return this + 784;
  }
}

const char *quasar::fingerprintDetectionResultString(int a1)
{
  v1 = "Unchecked";
  if (a1 == 2)
  {
    v1 = "Detected";
  }

  if (a1 == 1)
  {
    return "Not Detected";
  }

  else
  {
    return v1;
  }
}

void *quasar::operator<<(void *a1, double *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "LatnnMitigatorResult(", 21);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "processed=", 10);
  v6 = MEMORY[0x1B8C84BD0](v5, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", threshold=", 12);
  v8 = MEMORY[0x1B8C84BE0](v7, a2[4]);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", score=", 8);
  v10 = MEMORY[0x1B8C84BE0](v9, a2[5]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", calibrationScale=", 19);
  v11 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", calibrationOffset=", 20);
  v12 = std::ostream::operator<<();
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", version=", 10);
  v16 = *(a2 + 1);
  v15 = (a2 + 1);
  v14 = v16;
  v17 = v15[23];
  if (v17 >= 0)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  if (v17 >= 0)
  {
    v19 = v15[23];
  }

  else
  {
    v19 = *(v15 + 1);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v18, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ")", 1);
  return a1;
}

void quasar::RunAsyncParams::~RunAsyncParams(quasar::RunAsyncParams *this)
{
  std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy(this + 808, *(this + 102));
  v2 = *(this + 98);
  if (v2)
  {
    *(this + 99) = v2;
    operator delete(v2);
  }

  if (*(this + 783) < 0)
  {
    operator delete(*(this + 95));
  }

  if (*(this + 759) < 0)
  {
    operator delete(*(this + 92));
  }

  v3 = *(this + 89);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 703) < 0)
  {
    operator delete(*(this + 85));
  }

  if (*(this + 679) < 0)
  {
    operator delete(*(this + 82));
  }

  if (*(this + 655) < 0)
  {
    operator delete(*(this + 79));
  }

  std::mutex::~mutex((this + 560));
  v7 = (this + 536);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 535) < 0)
  {
    operator delete(*(this + 64));
  }

  std::mutex::~mutex((this + 440));
  v7 = (this + 416);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 392);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 368, *(this + 47));
  std::__tree<std::string>::destroy(this + 344, *(this + 44));
  v4 = *(this + 41);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v7 = (this + 296);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 272);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v5 = *(this + 2);
  if (v5 && !atomic_fetch_add(v5 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v5 + 16))(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void quasar::LeftContext::~LeftContext(quasar::LeftContext *this)
{
  std::mutex::~mutex((this + 72));
  v2 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this, *(this + 1));
}

uint64_t **std::__tree<std::__value_type<std::string,std::shared_ptr<void>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<void>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<void>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::shared_ptr<void>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<void>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::__value_type<std::string,std::shared_ptr<void>>::operator=[abi:ne200100]((v8 + 4), (v9 + 4));
          leaf_high = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::shared_ptr<void>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<void>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<void>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<void>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<void>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<void>>>>::__emplace_multi<std::pair<std::string const,std::shared_ptr<void>> const&>();
  }

  return result;
}

std::string *std::__value_type<std::string,std::shared_ptr<void>>::operator=[abi:ne200100](std::string *a1, const std::string *a2)
{
  std::string::operator=(a1, a2);
  data = a2[1].__r_.__value_.__l.__data_;
  size = a2[1].__r_.__value_.__l.__size_;
  if (size)
  {
    atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[1].__r_.__value_.__l.__size_;
  a1[1].__r_.__value_.__r.__words[0] = data;
  a1[1].__r_.__value_.__l.__size_ = size;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<void>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<void>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<void>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_1B56AD0B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<void>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<void>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::__assign_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::LmHandle>*,std::shared_ptr<kaldi::quasar::LmHandle>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::quasar::LmHandle>>,std::shared_ptr<kaldi::quasar::LmHandle>*,std::shared_ptr<kaldi::quasar::LmHandle>*,std::shared_ptr<kaldi::quasar::LmHandle>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

uint64_t *kaldi::nnet1::Nnet::QuantizeComponents<kaldi::nnet1::Quantizable8BitComponentItf>(const void ***this)
{
  for (i = *this; i != this[1]; ++i)
  {
    if (*i)
    {
      if (v3)
      {
        v4 = v3;
        v5 = kaldi::nnet1::Quantizable8BitComponentItf::CopyQuantized(v3);
        if (v5)
        {
          v6 = v5;
          kaldi::nnet1::Component::Delete(v7, 1);
          *i = v6;
        }
      }
    }
  }

  return kaldi::nnet1::Nnet::CheckDimensions(this);
}

uint64_t *kaldi::nnet1::Nnet::CheckDimensions(uint64_t *this)
{
  v2 = *this;
  v1 = this[1];
  if ((v1 - *this) >= 9)
  {
    v3 = this;
    v4 = 0;
    while (1)
    {
      v5 = (v2 + 8 * v4);
      this = *v5;
      v6 = v5[1];
      v7 = *(*v5 + 3);
      v8 = *(v6 + 2);
      if (v7 != v8)
      {
        break;
      }

      if (v4)
      {
        this = (*(*this + 24))(this);
        switch(this)
        {
          case 0x10C:
            goto LABEL_30;
          case 0x10E:
            goto LABEL_28;
          case 0x10F:
            goto LABEL_29;
        }

        v2 = *v3;
        v1 = v3[1];
      }

      v9 = v4 + 2;
      ++v4;
      if (v9 >= (v1 - v2) >> 3)
      {
        if (((v1 - v2) >> 3) <= 1)
        {
          return this;
        }

        this = (*(**(v1 - 8) + 24))(*(v1 - 8));
        switch(this)
        {
          case 0x10F:
LABEL_29:
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v29, "The compressed word vec component can only be the first component");
            break;
          case 0x10E:
LABEL_28:
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v29, "The word multivec component can only be the first component");
            break;
          case 0x10C:
LABEL_30:
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v29, "The word vec component can only be the first component");
            break;
          default:
            return this;
        }

LABEL_31:
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v29);
      }
    }

    v26 = v4;
    v24 = v8;
    v25 = v7;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Dimension mismatch between output/input of components ", 54);
    v11 = (*(**(*v3 + 8 * v26) + 24))(*(*v3 + 8 * v26));
    kaldi::nnet1::Component::TypeToMarker(v11, &v28);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v28;
    }

    else
    {
      v12 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, size);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " and ", 5);
    v16 = *(*v3 + 8 * v26 + 8);
    v17 = (*(*v16 + 24))(v16);
    kaldi::nnet1::Component::TypeToMarker(v17, &v27);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v27;
    }

    else
    {
      v18 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = v27.__r_.__value_.__l.__size_;
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v18, v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", ", 2);
    v22 = MEMORY[0x1B8C84C00](v21, v25);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " <--> ", 6);
    MEMORY[0x1B8C84C00](v23, v24);
    std::string::~string(&v27);
    std::string::~string(&v28);
    goto LABEL_31;
  }

  return this;
}

void sub_1B56AD5F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(&a23);
}

uint64_t *kaldi::nnet1::Nnet::QuantizeComponents<kaldi::nnet1::Quantizable16BitComponentItf>(const void ***this)
{
  for (i = *this; i != this[1]; ++i)
  {
    if (*i)
    {
      if (v3)
      {
        v4 = v3;
        v5 = kaldi::nnet1::Quantizable16BitComponentItf::CopyQuantized(v3);
        if (v5)
        {
          v6 = v5;
          kaldi::nnet1::Component::Delete(v7, 1);
          *i = v6;
        }
      }
    }
  }

  return kaldi::nnet1::Nnet::CheckDimensions(this);
}

void kaldi::nnet1::Nnet::Nnet(kaldi::nnet1::Nnet *this, const kaldi::nnet1::Nnet *a2)
{
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  operator new();
}

void sub_1B56AD96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 120);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 72);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 + 48);
  if (v12)
  {
    *(v10 + 56) = v12;
    operator delete(v12);
  }

  v13 = *(v10 + 24);
  if (v13)
  {
    *(v10 + 32) = v13;
    operator delete(v13);
  }

  v14 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::Nnet::Read(kaldi::nnet1::Nnet *a1, uint64_t a2)
{
  v14 = 0;
  v4 = kaldi::Input::Input(v13, a2, &v14);
  v5 = kaldi::Input::Stream(v4);
  kaldi::nnet1::Nnet::Read(a1, v5, v14);
  kaldi::Input::Close(v13);
  if (((*(a1 + 1) - *a1) & 0x7FFFFFFF8) == 0 && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "The network '", 13);
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "' is empty.", 11);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v12);
  }

  kaldi::Input::~Input(v13);
}

void *kaldi::nnet1::Nnet::SetGradientNormalization(void *result, uint64_t a2, int a3, int a4, float a5)
{
  v7 = result;
  if (a3)
  {
    v8 = result[3];
    if (v8 != result[4])
    {
      do
      {
        v9 = *v8;
        v10 = **v8;
        if (v11)
        {
          result = kaldi::nnet1::ParallelComponent::SetGradientNormalization(v11, a2, 1, a5);
        }

        else
        {
          result = (*(*&v9[*(v10 - 24)] + 240))(&v9[*(v10 - 24)], a2, a5);
        }

        ++v8;
      }

      while (v8 != v7[4]);
    }
  }

  else
  {
    if (a4)
    {
      v12 = -2;
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 + ((result[1] - *result) >> 3);
    if (v13 >= 0)
    {
      v14 = 0;
      v15 = (v13 + 1);
      do
      {
        result = *(*v7 + 8 * v14);
        if (result)
        {
          if (result)
          {
            result = (*(*result + 240))(result, a2, a5);
          }
        }

        ++v14;
      }

      while (v15 != v14);
    }
  }

  return result;
}

void kaldi::nnet1::Nnet::SetFreezeComponents(uint64_t a1, int **a2)
{
  std::vector<BOOL>::resize(a1 + 168, (*(a1 + 8) - *a1) >> 3, 0);
  v4 = *(a1 + 176);
  if (v4 >= 1)
  {
    v9.__locale_ = *(a1 + 168);
    v10 = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v9, v4);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "Freezing specified components (1-based):", 40);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v9);
  }

  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v7 = kaldi::g_kaldi_verbose_level;
    do
    {
      v8 = *v5 - 1;
      *(*(a1 + 168) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      if ((v7 & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v9);
        MEMORY[0x1B8C84C00](&v9, (*a2)[v8]);
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v9);
        v7 = kaldi::g_kaldi_verbose_level;
      }

      ++v5;
    }

    while (v5 != v6);
  }
}

kaldi::nnet1::Nnet *kaldi::nnet1::Nnet::operator=(kaldi::nnet1::Nnet *this, uint64_t *a2)
{
  if (a2 != this)
  {
    kaldi::nnet1::Nnet::Destroy(this);
    v4 = *a2;
    if (((a2[1] - *a2) >> 3) < 1)
    {
      *(this + 1) = *this;
    }

    else
    {
      v5 = 0;
      do
      {
        v7 = (*(**(v4 + 8 * v5) + 16))(*(v4 + 8 * v5));
        std::vector<TVertex *>::push_back[abi:ne200100](this, &v7);
        ++v5;
        v4 = *a2;
      }

      while (v5 < ((a2[1] - *a2) >> 3));
    }

    kaldi::nnet1::Nnet::SetTrainOptions(this, a2[18], 1);
    kaldi::nnet1::Nnet::ResetInternalBuffers(this);
    kaldi::nnet1::Nnet::ResetRecurrentFlag(this);
  }

  return this;
}

uint64_t kaldi::nnet1::Nnet::Destroy(kaldi::nnet1::Nnet *this)
{
  v2 = *this;
  if (((*(this + 1) - *this) >> 3) >= 1)
  {
    v3 = 0;
    do
    {
      kaldi::nnet1::Component::Delete(*(v2 + 8 * v3++), 1);
      v2 = *this;
    }

    while (v3 < ((*(this + 1) - *this) >> 3));
  }

  v4 = *(this + 44);
  for (i = *(this + 45); v4 != i; ++v4)
  {
    if (*v4)
    {
      kaldi::CuWorkspace::~CuWorkspace(*v4);
      MEMORY[0x1B8C85350]();
    }
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(this, 0);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(this + 72, 0);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(this + 120, 0);
  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(this + 44, 0);
  result = *(this + 20);
  if (result)
  {
    result = (*(*result + 8))(result);
    *(this + 20) = 0;
  }

  return result;
}

void kaldi::nnet1::Nnet::~Nnet(kaldi::nnet1::Nnet *this)
{
  kaldi::nnet1::Nnet::Destroy(this);
  v2 = *(this + 18);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 44);
  if (v3)
  {
    *(this + 45) = v3;
    operator delete(v3);
  }

  v4 = *(this + 40);
  if (v4)
  {
    free(v4);
  }

  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  v5 = *(this + 35);
  if (v5)
  {
    *(this + 36) = v5;
    operator delete(v5);
  }

  v10 = (this + 256);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v10);
  kaldi::CuVector<float>::~CuVector(this + 28);
  kaldi::CuVector<float>::~CuVector(this + 24);
  v6 = *(this + 21);
  if (v6)
  {
    operator delete(v6);
  }

  v10 = (this + 120);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 96);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 72);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }

  v9 = *this;
  if (*this)
  {
    *(this + 1) = v9;
    operator delete(v9);
  }
}

uint64_t kaldi::nnet1::Nnet::ResetHistoryStateIfExists(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 48);
  if (v4 != *(result + 56))
  {
    v8 = result;
    do
    {
      v9 = *v4++;
      result = (*(*v9 + 24))(v9, a2, a3, a4);
    }

    while (v4 != *(v8 + 56));
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::ResetHistoryStateIfExists(uint64_t this)
{
  v1 = *(this + 48);
  if (v1 != *(this + 56))
  {
    v2 = this;
    do
    {
      v3 = *v1++;
      this = (*(*v3 + 32))(v3);
    }

    while (v1 != *(v2 + 56));
  }

  return this;
}

uint64_t kaldi::nnet1::Nnet::HistoryStateSize(kaldi::nnet1::Nnet *this)
{
  v1 = *(this + 6);
  if (v1 == *(this + 7))
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v4 = *v1++;
    v3 = (*(*v4 + 16))(v4) + v3;
  }

  while (v1 != *(this + 7));
  return v3;
}

uint64_t kaldi::nnet1::Nnet::GetHistoryState(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  v4 = *(result + 48);
  if (v4 != v3)
  {
    if (v3 - v4 == 8)
    {
      v7 = *(**v4 + 40);

      return v7();
    }

    else
    {
      v8 = result;
      LODWORD(v9) = 0;
      do
      {
        v11 = *v4++;
        v9 = (*(*v11 + 16))(v11) + v9;
      }

      while (v4 != *(v8 + 56));
      kaldi::CuMatrix<float>::Resize(a2, v10, v9, 1, 0);
      v20 = 0u;
      v19 = 0u;
      v18 = &unk_1F2D0EE38;
      v21 = 0;
      v12 = *(v8 + 48);
      if (v12 != *(v8 + 56))
      {
        v13 = 0;
        do
        {
          (*(**v12 + 40))(*v12, &v18, a3);
          v14 = *(a2 + 8) + 4 * v13;
          v15 = *(a2 + 28) - v13;
          v16 = *(a2 + 32);
          LODWORD(v17[2]) = DWORD2(v19);
          *(&v17[2] + 4) = *(a2 + 20);
          HIDWORD(v17[3]) = v15;
          v17[4] = v16;
          v17[0] = &unk_1F2CFA908;
          v17[1] = v14;
          kaldi::CuMatrixBase<float>::CopyFromMat<float>(v17, &v18, 111);
          v17[0] = &unk_1F2CFA908;
          memset(&v17[1], 0, 32);
          quasar::Bitmap::~Bitmap(v17);
          v13 += DWORD2(v19);
          ++v12;
        }

        while (v12 != *(v8 + 56));
      }

      return kaldi::CuMatrix<float>::~CuMatrix(&v18);
    }
  }

  return result;
}

void sub_1B56AE50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::Nnet::GetHistoryState(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result[6];
  v4 = result[7];
  v6 = v4 - v5;
  if (v6)
  {
    if (v6 == 1)
    {
      v10 = *(**v5 + 48);

      return v10();
    }

    else
    {
      v11 = result;
      if (v5 == v4)
      {
        v12 = 0;
      }

      else
      {
        LODWORD(v12) = 0;
        do
        {
          v13 = *v5++;
          v12 = (*(*v13 + 16))(v13) + v12;
        }

        while (v5 != v11[7]);
      }

      kaldi::CuVector<float>::Resize(a2, v12, 1);
      v18[1] = 0;
      v19 = 0;
      v20 = 0;
      v18[0] = &unk_1F2D3AC18;
      v14 = v11[6];
      if (v14 != v11[7])
      {
        v15 = 0;
        do
        {
          (*(**v14 + 48))(*v14, v18, a3, a4);
          v16 = *(a2 + 8) + 4 * v15;
          v17[0] = &unk_1F2CFCA48;
          v17[1] = v16;
          v17[2] = v19;
          v17[3] = *(a2 + 24);
          kaldi::CuVectorBase<float>::CopyFromVec(v17, v18);
          v15 += v19;
          ++v14;
        }

        while (v14 != v11[7]);
      }

      return kaldi::CuVector<float>::~CuVector(v18);
    }
  }

  return result;
}

void sub_1B56AE730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Nnet::SetHistoryState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = v3 - v4;
  if (v5)
  {
    if (v5 == 1)
    {
      v8 = *(**v4 + 56);

      v8();
    }

    else
    {
      if (v4 == v3)
      {
        v10 = 0;
      }

      else
      {
        LODWORD(v10) = 0;
        do
        {
          v11 = *v4++;
          v10 = (*(*v11 + 16))(v11) + v10;
          v3 = *(a1 + 56);
        }

        while (v4 != v3);
      }

      if (*(a2 + 16) != v10)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "the network has history size ", 29);
        v20 = MEMORY[0x1B8C84C00](v19, v10);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " , but the input history data has dimension ", 44);
        MEMORY[0x1B8C84C00](v21, *(a2 + 16));
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
      }

      v12 = *(a1 + 48);
      if (v12 != v3)
      {
        v13 = 0;
        do
        {
          v14 = (*(**v12 + 16))();
          v15 = *v12;
          v16 = *(a2 + 8) + 4 * v13;
          v17 = *(a2 + 28) - v13;
          v18 = *(a2 + 32);
          LODWORD(v22[2]) = v14;
          *(&v22[2] + 4) = *(a2 + 20);
          HIDWORD(v22[3]) = v17;
          v22[4] = v18;
          v22[0] = &unk_1F2CFA908;
          v22[1] = v16;
          (*(*v15 + 56))(v15, v22, a3);
          v13 += v14;
          v22[0] = &unk_1F2CFA908;
          memset(&v22[1], 0, 32);
          quasar::Bitmap::~Bitmap(v22);
          ++v12;
        }

        while (v12 != *(a1 + 56));
      }
    }
  }
}

void sub_1B56AE99C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Nnet::SetHistoryState(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(result + 48);
  v4 = *(result + 56);
  v6 = v4 - v5;
  if (v6)
  {
    if (v6 == 1)
    {
      v10 = *(**v5 + 64);

      return v10();
    }

    else
    {
      v11 = result;
      if (v5 == v4)
      {
        v12 = 0;
      }

      else
      {
        LODWORD(v12) = 0;
        do
        {
          v13 = *v5++;
          result = (*(*v13 + 16))(v13);
          v12 = (result + v12);
          v4 = *(v11 + 56);
        }

        while (v5 != v4);
      }

      if (*(a2 + 16) != v12)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "the network has history size ", 29);
        v20 = MEMORY[0x1B8C84C00](v19, v12);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " , but the input history data has dimension ", 44);
        MEMORY[0x1B8C84C00](v21, *(a2 + 16));
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
      }

      v14 = *(v11 + 48);
      if (v14 != v4)
      {
        v15 = 0;
        do
        {
          v16 = (*(**v14 + 16))();
          v17 = *v14++;
          v18 = *(a2 + 8) + 4 * v15;
          v15 += v16;
          v22[0] = &unk_1F2CFCA48;
          v22[1] = v18;
          v22[2] = v16;
          v22[3] = *(a2 + 24);
          result = (*(*v17 + 64))(v17, v22, a3, a4);
        }

        while (v14 != *(v11 + 56));
      }
    }
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::SetInternalBoundary(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (v3 != *(result + 32))
  {
    v6 = result;
    do
    {
      v7 = *v3++;
      result = (*(*v7 + 96))(v7, a2, a3);
    }

    while (v3 != *(v6 + 32));
  }

  return result;
}

uint64_t kaldi::nnet1::ParallelComponent::SetGradientNormalization(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  v4 = *(result + 184);
  if (v4 != *(result + 192))
  {
    v8 = result;
    do
    {
      result = kaldi::nnet1::Nnet::SetGradientNormalization(v4, a2, a3, 0, a4);
      v4 += 376;
    }

    while (v4 != *(v8 + 192));
  }

  return result;
}

int32x2_t *kaldi::nnet1::Nnet::Backpropagate(int32x2_t *result, int32x2_t *a2, int32x2_t *a3, uint64_t a4)
{
  v7 = *result;
  v6 = result[1];
  v8 = *&v6 - *result;
  v9 = v8 >> 3;
  if ((v8 >> 3))
  {
    v11 = result;
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = a2;
    }

    v13 = v12[4];
    v14 = a4;
    v15 = (*&result[9] + 24 * a4);
    v16 = *v15;
    v17 = v15[1];
    if (*v15 != v17)
    {
      v18 = 0;
      v19 = v17 - v16 - 48;
      v20 = vdupq_n_s64(v19 / 0x30);
      v21 = (v16 + 80);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(vdupq_n_s64(v18), xmmword_1B5AE0060)));
        if (v22.i8[0])
        {
          v21[-6] = v13;
        }

        if (v22.i8[4])
        {
          *v21 = v13;
        }

        v18 += 2;
        v21 += 12;
      }

      while (((v19 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v18);
    }

    v23 = (*&result[15] + 24 * a4);
    v24 = *v23;
    v25 = v23[1];
    if (*v23 != v25)
    {
      v26 = 0;
      v27 = v25 - v24 - 48;
      v28 = vdupq_n_s64(v27 / 0x30);
      v29 = v24 + 10;
      do
      {
        v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v26), xmmword_1B5AE0060)));
        if (v30.i8[0])
        {
          v29[-6] = v13;
        }

        if (v30.i8[4])
        {
          *v29 = v13;
        }

        v26 += 2;
        v29 += 12;
      }

      while (((v27 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v26);
    }

    if (v9 == 1)
    {
      kaldi::nnet1::Component::Backpropagate(*v7, v16, v16 + 48, a2, a3, a4);
      result = (*(***v11 + 32))(**v11);
      if (!result)
      {
        return result;
      }

      v31 = **v11;
      if (v31)
      {
      }

      v32 = *(*v31 + 232);
      goto LABEL_43;
    }

    v33 = (v8 << 29) - 0x100000000;
    kaldi::nnet1::Component::Backpropagate(*(*&v6 - 8), v16 + 48 * SHIDWORD(v33), v16 + 48 * v9, a2, &v24[6 * (((v8 << 29) - 0x200000000) >> 32)], a4);
    if ((*(**(*v11 + (v33 >> 29)) + 32))(*(*v11 + (v33 >> 29))))
    {
      v34 = (*v11)[v33 >> 32];
      if (v34)
      {
      }

      (*(*v34 + 232))(v34, v11[9][3 * v14] + 48 * SHIDWORD(v33), a2, v13, a4);
    }

    v35 = (v9 - 2);
    if (v35 >= 1)
    {
      v36 = 48 * v35 + 48;
      do
      {
        v37 = v11[9][3 * v14] + v36;
        v38 = (v11[15][3 * v14] + v36);
        kaldi::nnet1::Component::Backpropagate((*v11)[v35], v37 - 48, v37, &v38[-6], v38 - 12, a4);
        if ((*(*(*v11)[v35] + 32))((*v11)[v35]))
        {
          v39 = (*v11)[v35];
          if (v39)
          {
          }

          (*(*v39 + 232))(v39, v11[9][3 * v14] + v36 - 48, v11[15][3 * v14] + v36 - 48, v13, a4);
        }

        --v35;
        v36 -= 48;
      }

      while ((v35 + 1) > 1);
    }

    v40 = v11[9][3 * v14];
    kaldi::nnet1::Component::Backpropagate(**v11, v40, v40 + 48, v11[15][3 * v14], a3, a4);
    result = (*(***v11 + 32))(**v11);
    if (result)
    {
      v41 = **v11;
      if (v41)
      {
      }

      v32 = *(*v41 + 232);
LABEL_43:

      return v32();
    }
  }

  else if (a3)
  {

    return kaldi::CuMatrix<float>::operator=(a3, a2);
  }

  return result;
}

void kaldi::nnet1::Nnet::Update(kaldi::nnet1::Nnet *this, void *a2, uint64_t a3)
{
  v4 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    v8 = 0;
    do
    {
      if (*(this + 22) == (v3 - *this) >> 3 && ((*(*(this + 21) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) != 0)
      {
        if (kaldi::g_kaldi_verbose_level >= 2)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(v12, 2);
          v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "freezing component ", 19);
          v10 = MEMORY[0x1B8C84C00](v9, (v8 + 1));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (1-based) in this Update", 25);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(v12);
        }
      }

      else if ((*(**v4 + 32))())
      {
        v11 = *v4;
        if (*v4)
        {
        }

        (*(*v11 + 256))(v11, a2, a3);
      }

      v4 += 8;
      ++v8;
      v3 = *(this + 1);
    }

    while (v4 != v3);
  }
}

void *kaldi::nnet1::Nnet::Feedforward(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a2;
  v7 = *a1;
  v8 = (*(a1 + 8) - *a1) >> 3;
  v9 = v8;
  if (a4 != -1)
  {
    if (v8 < a4)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Components to propagate to (", 28);
      v18 = MEMORY[0x1B8C84C00](v17, a4);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ") must not be greater than ", 27);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "#components in the network (", 28);
      v21 = MEMORY[0x1B8C84C00](v20, (*(a1 + 8) - *a1) >> 3);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, ").");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
    }

    v9 = a4;
  }

  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    kaldi::CuVector<float>::Resize(a3, *(a2 + 16), 1);

    return kaldi::CuVectorBase<float>::CopyFromVec(a3, v5);
  }

  else
  {
    v12 = (v9 - 1);
    if (v9 == 1)
    {
      v13 = *v7;
    }

    else
    {
      kaldi::nnet1::Component::Propagate(*v7, a2, *(a1 + 96));
      if (v9 >= 3)
      {
        v14 = 1;
        do
        {
          kaldi::nnet1::Component::Propagate(*(*a1 + 8 * v14), *(a1 + 96) + 32 * !(v14 & 1), *(a1 + 96) + 32 * (v14 & 1));
          ++v14;
        }

        while (v12 != v14);
      }

      else
      {
        LODWORD(v12) = 1;
      }

      v13 = *(*a1 + 8 * v12);
      v15 = (v12 - 1) & 1;
      if (v12 < 1)
      {
        v15 = -v15;
      }

      a2 = *(a1 + 96) + 32 * v15;
    }

    return kaldi::nnet1::Component::Propagate(v13, a2, a3);
  }
}

uint64_t kaldi::nnet1::Component::Propagate(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (a1[2] != *(a2 + 16))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Non-matching dims! ", 19);
    v9 = (*(*a1 + 24))(a1);
    kaldi::nnet1::Component::TypeToMarker(v9, &v16);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v16;
    }

    else
    {
      v10 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, size);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " input-dim : ", 13);
    v14 = MEMORY[0x1B8C84C00](v13, a1[2]);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " data : ", 8);
    MEMORY[0x1B8C84C00](v15, *(a2 + 16));
    std::string::~string(&v16);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  kaldi::CuVector<float>::Resize(a3, a1[3], 0);
  v6 = *(*a1 + 120);

  return v6(a1, a2, a3);
}

uint64_t kaldi::nnet1::Nnet::GetHistoricalComponents@<X0>(kaldi::nnet1::Nnet *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<kaldi::nnet1::HistoricalComponent *>::__init_with_size[abi:ne200100]<kaldi::nnet1::HistoricalComponent **,kaldi::nnet1::HistoricalComponent **>(a2, *(this + 6), *(this + 7), (*(this + 7) - *(this + 6)) >> 3);
}

void kaldi::nnet1::Nnet::AppendComponent(kaldi::nnet1::Nnet *this, kaldi::nnet1::Component *a2)
{
  v4 = a2;
  if (*(this + 22) == (*(this + 1) - *this) >> 3)
  {
    v3 = 0;
    std::vector<BOOL>::push_back(this + 168, &v3);
  }

  std::vector<TVertex *>::push_back[abi:ne200100](this, &v4);
  kaldi::nnet1::Nnet::ResetInternalBuffers(this);
  kaldi::nnet1::Nnet::ResetRecurrentFlag(this);
}

void kaldi::nnet1::Nnet::RemoveComponent(kaldi::nnet1::Nnet *this, int a2)
{
  v5 = *this;
  v4 = *(this + 1);
  v6 = *(this + 22);
  if (v6 == (v4 - *this) >> 3)
  {
    v7 = *(this + 21);
    if (a2 < 0)
    {
      v8 = -((63 - a2) >> 6);
    }

    else
    {
      v8 = a2 >> 6;
    }

    v9 = v7 + 8 * v8;
    v10 = a2 & 0x3F;
    if (v8 < 0)
    {
      v8 = -(-v8 & 0x3FFFFFF);
    }

    v11 = v7 + 8 * v8;
    v12 = (v10 + 1) & 0x3F;
    v13 = ((v10 + 1) >> 3) & 8;
    v14 = v7 + 8 * (v6 >> 6);
    v19 = v11;
    v20 = v10;
    if (v10 == v12)
    {
      std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>((v13 + v9), v12, v14, v6 & 0x3F, &v19, v18);
    }

    else
    {
      std::__copy_unaligned[abi:ne200100]<std::vector<BOOL>,true>((v13 + v9), v12, v14, v6 & 0x3F, &v19, v18);
    }

    --*(this + 22);
    v5 = *this;
    v4 = *(this + 1);
  }

  v15 = (v5 + 8 * a2);
  v16 = *v15;
  v17 = v4 - (v15 + 1);
  if (v4 != v15 + 1)
  {
    memmove(v15, v15 + 1, v4 - (v15 + 1));
  }

  *(this + 1) = v15 + v17;
  kaldi::nnet1::Component::Delete(v16, 1);
  kaldi::nnet1::Nnet::ResetInternalBuffers(this);
  kaldi::nnet1::Nnet::ResetRecurrentFlag(this);
}

uint64_t kaldi::nnet1::Nnet::ReleaseComponent(kaldi::nnet1::Nnet *this, int a2)
{
  v5 = *this;
  v4 = *(this + 1);
  v6 = *(this + 22);
  if (v6 == &v4[-*this] >> 3)
  {
    v7 = *(this + 21);
    if (a2 < 0)
    {
      v8 = -((63 - a2) >> 6);
    }

    else
    {
      v8 = a2 >> 6;
    }

    v9 = v7 + 8 * v8;
    v10 = a2 & 0x3F;
    if (v8 < 0)
    {
      v8 = -(-v8 & 0x3FFFFFF);
    }

    v11 = v7 + 8 * v8;
    v12 = (v10 + 1) & 0x3F;
    v13 = ((v10 + 1) >> 3) & 8;
    v14 = v7 + 8 * (v6 >> 6);
    v20 = v11;
    v21 = v10;
    if (v10 == v12)
    {
      std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>((v13 + v9), v12, v14, v6 & 0x3F, &v20, v19);
    }

    else
    {
      std::__copy_unaligned[abi:ne200100]<std::vector<BOOL>,true>((v13 + v9), v12, v14, v6 & 0x3F, &v20, v19);
    }

    --*(this + 22);
    v5 = *this;
    v4 = *(this + 1);
  }

  v15 = (v5 + 8 * a2);
  v16 = *v15;
  v17 = v4 - (v15 + 8);
  if (v4 != v15 + 8)
  {
    memmove(v15, v15 + 8, v4 - (v15 + 8));
  }

  *(this + 1) = &v15[v17];
  kaldi::nnet1::Nnet::ResetInternalBuffers(this);
  kaldi::nnet1::Nnet::ResetRecurrentFlag(this);
  return v16;
}

uint64_t kaldi::nnet1::Nnet::GetParams(kaldi::nnet1::Nnet *a1, void **a2)
{
  v4 = kaldi::nnet1::Nnet::NumParams(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0);
  v5 = *a1;
  if (*(a1 + 1) != *a1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if ((*(**(v5 + 8 * v6) + 32))(*(v5 + 8 * v6)))
      {
        if (!v8)
        {
          __cxa_bad_cast();
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        (*(*v8 + 184))(v8, &v14);
        v12 = 0;
        v13 = 0;
        v11 = *a2 + 4 * v7;
        LODWORD(v12) = v15;
        kaldi::VectorBase<float>::CopyFromVec(&v11, &v14);
        v9 = v15;
        kaldi::Vector<float>::Destroy(&v14);
        v7 += v9;
      }

      ++v6;
      v5 = *a1;
    }

    while (v6 < (*(a1 + 1) - *a1) >> 3);
  }

  return kaldi::nnet1::Nnet::NumParams(a1);
}

void sub_1B56AFBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Nnet::NumParams(kaldi::nnet1::Nnet *this)
{
  v1 = *this;
  if (*(this + 1) == *this)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if ((*(**(v1 + 8 * v3) + 32))(*(v1 + 8 * v3)))
    {
      v5 = *(*this + 8 * v3);
      if (v5)
      {
      }

      v4 = (*(*v5 + 176))(v5) + v4;
    }

    ++v3;
    v1 = *this;
  }

  while (v3 < (*(this + 1) - *this) >> 3);
  return v4;
}

uint64_t kaldi::nnet1::Nnet::SetParams(kaldi::nnet1::Nnet *a1, void *a2)
{
  kaldi::nnet1::Nnet::NumParams(a1);
  v4 = *a1;
  if (*(a1 + 1) != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if ((*(**(v4 + 8 * v5) + 32))(*(v4 + 8 * v5)))
      {
        if (!v7)
        {
          __cxa_bad_cast();
        }

        v8 = v7;
        v9 = (*(*v7 + 176))(v7);
        v13 = 0;
        v14 = 0;
        v10 = v9 + v6;
        v12 = *a2 + 4 * v6;
        LODWORD(v13) = v9;
        (*(*v8 + 192))(v8, &v12);
        v6 = v10;
      }

      ++v5;
      v4 = *a1;
    }

    while (v5 < (*(a1 + 1) - *a1) >> 3);
  }

  return kaldi::nnet1::Nnet::NumParams(a1);
}

float kaldi::nnet1::Nnet::SumParams(kaldi::nnet1::Nnet *this)
{
  v1 = *this;
  if (*(this + 1) == *this)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = 0.0;
  do
  {
    if ((*(**(v1 + 8 * v3) + 32))(*(v1 + 8 * v3)))
    {
      if (!v5)
      {
        __cxa_bad_cast();
      }

      v4 = v4 + (*(*v5 + 208))(v5);
    }

    ++v3;
    v1 = *this;
  }

  while (v3 < (*(this + 1) - *this) >> 3);
  return v4;
}

uint64_t kaldi::nnet1::Nnet::IsComponentFrozen(kaldi::nnet1::Nnet *this, int a2)
{
  if (*(this + 22) <= a2)
  {
    return 0;
  }

  else
  {
    return (*(*(this + 21) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1;
  }
}

void kaldi::nnet1::Nnet::Init(kaldi::nnet1::Nnet *a1, uint64_t a2)
{
  kaldi::Input::Input(v4, a2, 0);
  v3 = kaldi::Input::Stream(v4);
  kaldi::nnet1::Nnet::Init(a1, v3);
  kaldi::Input::Close(v4);
  kaldi::Input::~Input(v4);
}

void sub_1B56B0034(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Input::~Input(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Nnet::Init(kaldi::nnet1::Nnet *a1, uint64_t *a2)
{
  kaldi::ExpectToken(a2, 0, "<NnetProto>");
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Missing </NnetProto> at the end.", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  v4 = MEMORY[0x1E69E5318];
  if (kaldi::PeekToken(a2, 0) != 47)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v5 = std::locale::use_facet(__p, v4);
    v6 = (v5->__vftable[2].~facet_0)(v5, 10);
    std::locale::~locale(__p);
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v13, v6);
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 1);
      if (v15 >= 0)
      {
        v7 = &v13;
      }

      else
      {
        v7 = v13;
      }

      if (v15 >= 0)
      {
        v8 = HIBYTE(v15);
      }

      else
      {
        v8 = v14;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v7, v8);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    }

    if (v15 >= 0)
    {
      v9 = HIBYTE(v15);
    }

    else
    {
      v9 = v14;
    }

    std::string::basic_string[abi:ne200100](__p, v9 + 1);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0].__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      if (v15 >= 0)
      {
        v11 = &v13;
      }

      else
      {
        v11 = v13;
      }

      memmove(v10, v11, v9);
    }

    *(&v10->__r_.__value_.__l.__data_ + v9) = 10;
    kaldi::nnet1::Component::Init(__p);
  }

  kaldi::ExpectToken(a2, 0, "</NnetProto>");
  kaldi::nnet1::Nnet::ResetInternalBuffers(a1);
  kaldi::nnet1::Nnet::ResetRecurrentFlag(a1);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13);
  }
}

void sub_1B56B02DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B56B0308);
}

void sub_1B56B0304(_Unwind_Exception *exception_object)
{
  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::Nnet::Write(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  kaldi::nnet1::Nnet::CheckDimensions(a1);
  kaldi::WriteToken(a2, a3, "<Nnet>");
  if ((a3 & 1) == 0)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v8 = std::locale::use_facet(&v13, MEMORY[0x1E69E5318]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v13);
    std::ostream::put();
    std::ostream::flush();
  }

  v9 = *a1;
  if (((a1[1] - *a1) >> 3) >= 1)
  {
    v10 = 0;
    do
    {
      kaldi::nnet1::Component::Write(*(v9 + 8 * v10++), a2, a3, a4);
      v9 = *a1;
    }

    while (v10 < ((a1[1] - *a1) >> 3));
  }

  result = kaldi::WriteToken(a2, a3, "</Nnet>");
  if ((a3 & 1) == 0)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v12 = std::locale::use_facet(&v13, MEMORY[0x1E69E5318]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v13);
    std::ostream::put();
    return std::ostream::flush();
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::Info(kaldi::nnet1::Nnet *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v39);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "num-components ", 15);
  v3 = MEMORY[0x1B8C84C00](v2, (*(this + 1) - *this) >> 3);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v38, MEMORY[0x1E69E5318]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "input-dim ", 10);
  v6 = MEMORY[0x1B8C84C00](v5, *(**this + 8));
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v38, MEMORY[0x1E69E5318]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "output-dim ", 11);
  v9 = MEMORY[0x1B8C84C00](v8, *(*(*(this + 1) - 8) + 12));
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v38, MEMORY[0x1E69E5318]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "number-of-parameters ", 21);
  v12 = kaldi::nnet1::Nnet::NumParams(this);
  v13 = MEMORY[0x1B8C84BE0](v11, v12 / 1000000.0);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " millions", 9);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v38, MEMORY[0x1E69E5318]);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  if (((*(this + 1) - *this) >> 3) >= 1)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E5318];
    do
    {
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "component ", 10);
      v19 = v16 + 1;
      v20 = MEMORY[0x1B8C84C00](v18, v16 + 1);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " : ", 3);
      v22 = (*(**(*this + 8 * v16) + 24))(*(*this + 8 * v16));
      kaldi::nnet1::Component::TypeToMarker(v22, &v38);
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v38;
      }

      else
      {
        v23 = v38.__r_.__value_.__r.__words[0];
      }

      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v38.__r_.__value_.__l.__size_;
      }

      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, size);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", input-dim ", 12);
      v27 = MEMORY[0x1B8C84C00](v26, *(*(*this + 8 * v16) + 8));
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ", output-dim ", 13);
      v29 = MEMORY[0x1B8C84C00](v28, *(*(*this + 8 * v16) + 12));
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", ", 2);
      (*(**(*this + 8 * v16) + 64))(__p);
      if ((v37 & 0x80u) == 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      if ((v37 & 0x80u) == 0)
      {
        v32 = v37;
      }

      else
      {
        v32 = __p[1];
      }

      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
      std::ios_base::getloc((v33 + *(*v33 - 24)));
      v34 = std::locale::use_facet(&v44, v17);
      (v34->__vftable[2].~facet_0)(v34, 10);
      std::locale::~locale(&v44);
      std::ostream::put();
      std::ostream::flush();
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      ++v16;
    }

    while (v19 < ((*(this + 1) - *this) >> 3));
  }

  std::stringbuf::str();
  v39 = *MEMORY[0x1E69E54E8];
  *(&v39 + *(v39 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v40 = MEMORY[0x1E69E5548] + 16;
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  v40 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v41);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v43);
}

void sub_1B56B0AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::locale::~locale(&a16);
  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

_BYTE *kaldi::nnet1::Nnet::InfoGradient@<X0>(kaldi::nnet1::Nnet *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(this + 15);
  if (*(this + 16) == v3 || (v4 = *v3, *(*(this + 15) + 8) == v4) || !(4 * *(v4 + 20) * *(v4 + 24)))
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "### No gradient info");
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "### Gradient stats :\n", 21);
    if (((*(this + 1) - *this) >> 3) >= 1)
    {
      v6 = 0;
      v7 = MEMORY[0x1E69E5318];
      do
      {
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Component ", 10);
        v9 = v6 + 1;
        v10 = MEMORY[0x1B8C84C00](v8, v6 + 1);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " : ", 3);
        v12 = (*(**(*this + 8 * v6) + 24))(*(*this + 8 * v6));
        kaldi::nnet1::Component::TypeToMarker(v12, &v24);
        if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v24;
        }

        else
        {
          v13 = v24.__r_.__value_.__r.__words[0];
        }

        if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v24.__r_.__value_.__l.__size_;
        }

        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, size);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
        (*(**(*this + 8 * v6) + 72))(__p);
        if ((v23 & 0x80u) == 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        if ((v23 & 0x80u) == 0)
        {
          v18 = v23;
        }

        else
        {
          v18 = __p[1];
        }

        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
        std::ios_base::getloc((v19 + *(*v19 - 24)));
        v20 = std::locale::use_facet(&v30, v7);
        (v20->__vftable[2].~facet_0)(v20, 10);
        std::locale::~locale(&v30);
        std::ostream::put();
        std::ostream::flush();
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        ++v6;
      }

      while (v9 < ((*(this + 1) - *this) >> 3));
    }

    std::stringbuf::str();
    v25 = *MEMORY[0x1E69E54E8];
    *(&v25 + *(v25 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v26 = MEMORY[0x1E69E5548] + 16;
    if (v28 < 0)
    {
      operator delete(v27[7].__locale_);
    }

    v26 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v27);
    std::ostream::~ostream();
    return MEMORY[0x1B8C85200](&v29);
  }
}

_BYTE *kaldi::nnet1::Nnet::InfoPropagate@<X0>(kaldi::nnet1::Nnet *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 9);
  if (*(this + 10) == v2 || (v3 = *v2, *(*(this + 9) + 8) == v3) || !(4 * *(v3 + 20) * *(v3 + 24)))
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "### Forward propagation buffers not initialized");
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "### Forward propagation buffer content, note in the parallel GPU training, this only includes the first subbatch content :\n", 123);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "[0] output of <Input> ", 22);
    kaldi::nnet1::MomentStatistics<float>(**(this + 9));
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
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v33, MEMORY[0x1E69E5318]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v33);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (((*(this + 1) - *this) >> 3) >= 1)
    {
      v10 = 0;
      v11 = 48;
      v12 = MEMORY[0x1E69E5318];
      do
      {
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "[", 1);
        v14 = v10 + 1;
        v15 = MEMORY[0x1B8C84C00](v13, v10 + 1);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "] output of ", 12);
        v17 = (*(**(*this + 8 * v10) + 24))(*(*this + 8 * v10));
        kaldi::nnet1::Component::TypeToMarker(v17, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &__p;
        }

        else
        {
          v18 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v19 = __p.__r_.__value_.__l.__size_;
        }

        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
        kaldi::nnet1::MomentStatistics<float>(**(this + 9) + v11);
        if ((v35 & 0x80u) == 0)
        {
          locale = &v33;
        }

        else
        {
          locale = v33.__locale_;
        }

        if ((v35 & 0x80u) == 0)
        {
          v22 = v35;
        }

        else
        {
          v22 = v34;
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, locale, v22);
        std::ios_base::getloc((v23 + *(*v23 - 24)));
        v24 = std::locale::use_facet(&v42, v12);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(&v42);
        std::ostream::put();
        std::ostream::flush();
        if (v35 < 0)
        {
          operator delete(v33.__locale_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((*(**(*this + 8 * v10) + 24))(*(*this + 8 * v10)) == 2055)
        {
          v25 = *(*this + 8 * v10);
          if (v25)
          {
          }

          (*(*v25 + 248))(&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &__p;
          }

          else
          {
            v26 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, v26, v27);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if ((*(**(*this + 8 * v10) + 24))(*(*this + 8 * v10)) == 274)
        {
          v28 = *(*this + 8 * v10);
          if (v28)
          {
          }

          (*(*v28 + 280))(&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &__p;
          }

          else
          {
            v29 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v30 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, v29, v30);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v11 += 48;
        ++v10;
      }

      while (v14 < ((*(this + 1) - *this) >> 3));
    }

    std::stringbuf::str();
    v37 = *MEMORY[0x1E69E54E8];
    *(&v37 + *(v37 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v38 = MEMORY[0x1E69E5548] + 16;
    if (v40 < 0)
    {
      operator delete(v39[7].__locale_);
    }

    v38 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v39);
    std::ostream::~ostream();
    return MEMORY[0x1B8C85200](&v41);
  }
}

_BYTE *kaldi::nnet1::Nnet::InfoBackPropagate@<X0>(kaldi::nnet1::Nnet *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 15);
  if (*(this + 16) == v2 || (v3 = *v2, *(*(this + 15) + 8) == v3) || !(4 * *(v3 + 20) * *(v3 + 24)))
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "### Backward propagation buffers not initialized");
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "### Backward propagation buffer content, Note in multi subbatch case, only the first subbatch is reported :\n", 108);
    if (*(*(this + 15) + 8) != **(this + 15))
    {
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "[0] diff of <Input> ", 20);
      kaldi::nnet1::MomentStatistics<float>(**(this + 15));
      v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
      std::ios_base::getloc((v8 + *(*v8 - 24)));
      v9 = std::locale::use_facet(&v37, MEMORY[0x1E69E5318]);
      (v9->__vftable[2].~facet_0)(v9, 10);
      std::locale::~locale(&v37);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (((*(this + 1) - *this) >> 3) >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = MEMORY[0x1E69E5318];
      do
      {
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "[", 1);
        v14 = v11 + 1;
        v15 = MEMORY[0x1B8C84C00](v13, v11 + 1);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "] diff-output of ", 17);
        v17 = (*(**(*this + 8 * v11) + 24))(*(*this + 8 * v11));
        kaldi::nnet1::Component::TypeToMarker(v17, &__p);
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v11 < (((*(this + 1) - *this) << 29) - 0x100000000) >> 32)
        {
          kaldi::nnet1::MomentStatistics<float>(**(this + 15) + v10);
          v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v20, v21);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        std::ios_base::getloc((&v32 + *(v32 - 24)));
        v22 = std::locale::use_facet(&__p, v12);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(&__p);
        std::ostream::put();
        std::ostream::flush();
        if ((*(**(*this + 8 * v11) + 24))(*(*this + 8 * v11)) == 2055)
        {
          v23 = *(*this + 8 * v11);
          if (v23)
          {
          }

          (*(*v23 + 256))(&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &__p;
          }

          else
          {
            v24 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v25 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v24, v25);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if ((*(**(*this + 8 * v11) + 24))(*(*this + 8 * v11)) == 274)
        {
          v26 = *(*this + 8 * v11);
          if (v26)
          {
          }

          (*(*v26 + 288))(&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = &__p;
          }

          else
          {
            v27 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v28 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v27, v28);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v10 += 48;
        ++v11;
      }

      while (v14 < ((*(this + 1) - *this) >> 3));
    }

    std::stringbuf::str();
    v32 = *MEMORY[0x1E69E54E8];
    *(&v32 + *(v32 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v33 = MEMORY[0x1E69E5548] + 16;
    if (v35 < 0)
    {
      operator delete(v34[7].__locale_);
    }

    v33 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v34);
    std::ostream::~ostream();
    return MEMORY[0x1B8C85200](&v36);
  }
}

void kaldi::nnet1::Nnet::CheckWeights(kaldi::nnet1::Nnet *this)
{
  v1 = *this;
  if (*(this + 1) - *this >= 9uLL)
  {
    v3 = 0;
    do
    {
      if ((*(**(v1 + 8 * v3) + 32))(*(v1 + 8 * v3)))
      {
        kaldi::nnet1::UpdatableComponent::CheckParams(*(*this + 8 * v3));
      }

      v1 = *this;
      v4 = v3 + 2;
      ++v3;
    }

    while (v4 < (*(this + 1) - *this) >> 3);
  }
}

void kaldi::nnet1::ParallelComponent::GetHistoricalComponents(kaldi::nnet1::ParallelComponent *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(this + 23);
  for (i = *(this + 24); v2 != i; v2 += 376)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    std::vector<kaldi::nnet1::HistoricalComponent *>::__init_with_size[abi:ne200100]<kaldi::nnet1::HistoricalComponent **,kaldi::nnet1::HistoricalComponent **>(&__p, *(v2 + 48), *(v2 + 56), (*(v2 + 56) - *(v2 + 48)) >> 3);
    std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(a2, *(a2 + 8), __p, v6, (v6 - __p) >> 3);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void sub_1B56B1DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ParallelComponent::GetRecurrentComponents(kaldi::nnet1::ParallelComponent *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(this + 23);
  for (i = *(this + 24); v2 != i; v2 += 376)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__init_with_size[abi:ne200100]<kaldi::nnet1::RecurrentBaseComponent **,kaldi::nnet1::RecurrentBaseComponent **>(&__p, *(v2 + 24), *(v2 + 32), (*(v2 + 32) - *(v2 + 24)) >> 3);
    std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(a2, *(a2 + 8), __p, v6, (v6 - __p) >> 3);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void sub_1B56B1EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Nnet::ValidateNnet(kaldi::nnet1::Nnet *this)
{
  kaldi::nnet1::Nnet::CheckDimensions(this);

  kaldi::nnet1::Nnet::CheckWeights(this);
}

void kaldi::nnet1::Nnet::SetHistoryOptions(kaldi::nnet1::Nnet *this, const kaldi::nnet1::HistoryOptions *a2, int a3)
{
  v6 = *(this + 6);
  v7 = *(this + 7);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 80))(v8, a2);
  }

  if (v9)
  {
    v10 = *(v9 + 8);
    *&v13[15] = *(v9 + 23);
    *v13 = v10;
    v12 = &unk_1F2D27A38;
    v14 = &unk_1F2D27A58;
    v11 = *(v9 + 13);
    v15 = *(a2 + 2);
    v16 = v11;
    kaldi::nnet1::Nnet::SetTrainOptions(this, &v12, a3);
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Inconsistent return type: RecurrentBaseComponent::GetTrainOptions() can not be cast to RecurrentNnetTrainOptions", 112);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v12);
  }
}

void *kaldi::nnet1::operator<<(void *a1, uint64_t a2)
{
  v4 = kaldi::nnet1::operator<<(a1, a2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", and Recurrent style components have additional configurations ", 64);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "num_sequences ", 14);
  MEMORY[0x1B8C84C00](v6, *(a2 + 48));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "bptt_steps ", 11);
  v8 = MEMORY[0x1B8C84C00](v7, *(a2 + 52));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "NnetTrainOptions : ", 19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "learn_rate ", 11);
  v5 = std::ostream::operator<<();
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "momentum ", 9);
  v7 = std::ostream::operator<<();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "l2_penalty ", 11);
  v9 = std::ostream::operator<<();
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "l1_penalty ", 11);
  v11 = std::ostream::operator<<();
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", ", 2);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "qtype_compact_grad ", 19);
  v14 = MEMORY[0x1B8C84C00](v13, *(a2 + 28));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "step_compact_grad ", 18);
  v16 = std::ostream::operator<<();
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", ", 2);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "num_subbatches ", 15);
  v19 = MEMORY[0x1B8C84C00](v18, *(a2 + 32));
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", ", 2);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "average_gradients ", 18);
  if (*(a2 + 36))
  {
    v22 = "true";
  }

  else
  {
    v22 = "false";
  }

  if (*(a2 + 36))
  {
    v23 = 4;
  }

  else
  {
    v23 = 5;
  }

  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", ", 2);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "vectorize_weights ", 18);
  if (*(a2 + 37))
  {
    v27 = "true";
  }

  else
  {
    v27 = "false";
  }

  if (*(a2 + 37))
  {
    v28 = 4;
  }

  else
  {
    v28 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
  return a1;
}

void kaldi::nnet1::Nnet::SetWorkspaceSize(kaldi::nnet1::Nnet *this, uint64_t a2)
{
  if (a2 < 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "workspace_size_bytes >= 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Set workspace of ", 17);
    v5 = MEMORY[0x1B8C84C60](v4, a2);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " bytes for ", 11);
    v7 = MEMORY[0x1B8C84C00](v6, *(*(this + 18) + 32));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " sub-batches", 12);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v16);
  }

  v9 = *(this + 44);
  v8 = *(this + 45);
  v10 = *(*(this + 18) + 32);
  if (v10 != (v8 - v9) >> 3 && v8 != v9)
  {
    v12 = 0;
    do
    {
      v13 = *(v9 + 8 * v12);
      if (v13)
      {
        kaldi::CuWorkspace::~CuWorkspace(v13);
        MEMORY[0x1B8C85350]();
        v9 = *(this + 44);
        v8 = *(this + 45);
      }

      ++v12;
    }

    while (v12 < (v8 - v9) >> 3);
    v10 = *(*(this + 18) + 32);
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(this + 44, v10);
  if (*(this + 45) != *(this + 44))
  {
    operator new();
  }

  v14 = *this;
  if (*(this + 1) != *this)
  {
    v15 = 0;
    do
    {
      (*(**(v14 + 8 * v15) + 136))(*(v14 + 8 * v15), this + 352);
      ++v15;
      v14 = *this;
    }

    while (v15 < (*(this + 1) - *this) >> 3);
  }
}

void sub_1B56B27EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  kaldi::Vector<float>::Destroy(&a14);
  kaldi::Vector<float>::Destroy(&a17);
  kaldi::nnet1::Nnet::~Nnet(v17);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::DoBackProp(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[3] = 0x157100008000;
  v19 = a1;
  v8 = std::string::basic_string[abi:ne200100]<0>(v18, "xent");
  if (*(a5 + 23) < 0)
  {
    if (!*(a5 + 8))
    {
      goto LABEL_6;
    }
  }

  else if (!*(a5 + 23))
  {
LABEL_6:
    memset(&v17, 0, sizeof(v17));
    if (*(a6 + 23) < 0)
    {
      if (!*(a6 + 8))
      {
        goto LABEL_21;
      }
    }

    else if (!*(a6 + 23))
    {
      goto LABEL_21;
    }

    kaldi::SplitStringToIntegers<int>(a6, ":", 0, &v17);
    std::__sort<std::__less<int,int> &,int *>();
    if (v17.__begin_ != v17.__end_)
    {
      for (i = v17.__begin_ + 1; i != v17.__end_; ++i)
      {
        v11 = *(i - 1);
        v10 = *i;
        if (v10 <= v11)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
          v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Invalid set to freeze(non-unique components): --freeze-components ", 69);
          v13 = *(a6 + 23);
          if (v13 >= 0)
          {
            v14 = a6;
          }

          else
          {
            v14 = *a6;
          }

          if (v13 >= 0)
          {
            v15 = *(a6 + 23);
          }

          else
          {
            v15 = *(a6 + 8);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
        }
      }
    }

LABEL_21:
    kaldi::nnet1::Nnet::Nnet(v16);
  }

  std::string::operator=(v8, a5);
  goto LABEL_6;
}

void sub_1B56B32F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a12);
  a12.__locale_ = &STACK[0x218];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a12);
  a12.__locale_ = &STACK[0x200];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a12);
  kaldi::Vector<float>::Destroy(&STACK[0x268]);
  kaldi::Vector<float>::Destroy(&STACK[0x250]);
  kaldi::nnet1::DoBackProp(&STACK[0x250], &STACK[0x2A0]);
  kaldi::CuMatrix<float>::~CuMatrix(&STACK[0x378]);
  kaldi::CuMatrix<float>::~CuMatrix(&STACK[0x3A8]);
  kaldi::CuMatrix<float>::~CuMatrix(&STACK[0x3D8]);
  (*(*v12 + 88))(v12);
  kaldi::nnet1::Nnet::~Nnet(&STACK[0x408]);
  kaldi::nnet1::Nnet::~Nnet(&STACK[0x580]);
  kaldi::nnet1::Nnet::~Nnet(&STACK[0x6F8]);
  v15 = *(v13 - 160);
  if (v15)
  {
    *(v13 - 152) = v15;
    operator delete(v15);
  }

  if (*(v13 - 113) < 0)
  {
    operator delete(*(v13 - 136));
  }

  _Unwind_Resume(a1);
}

void sub_1B56B330C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &STACK[0x218];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a12);
  a12 = &STACK[0x200];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a12);
  kaldi::Vector<float>::Destroy(&STACK[0x268]);
  kaldi::Vector<float>::Destroy(&STACK[0x250]);
  kaldi::nnet1::DoBackProp(&STACK[0x250], &STACK[0x2A0]);
  kaldi::CuMatrix<float>::~CuMatrix(&STACK[0x378]);
  kaldi::CuMatrix<float>::~CuMatrix(&STACK[0x3A8]);
  kaldi::CuMatrix<float>::~CuMatrix(&STACK[0x3D8]);
  (*(*v12 + 88))(v12);
  kaldi::nnet1::Nnet::~Nnet(&STACK[0x408]);
  kaldi::nnet1::Nnet::~Nnet(&STACK[0x580]);
  kaldi::nnet1::Nnet::~Nnet(&STACK[0x6F8]);
  v15 = *(v13 - 160);
  if (v15)
  {
    *(v13 - 152) = v15;
    operator delete(v15);
  }

  if (*(v13 - 113) < 0)
  {
    operator delete(*(v13 - 136));
  }

  _Unwind_Resume(a1);
}

void sub_1B56B3314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  kaldi::Vector<float>::Destroy(&a65);
  kaldi::Matrix<float>::~Matrix(&a68);
  JUMPOUT(0x1B56B338CLL);
}

void kaldi::nnet1::MatrixRandomizer::AddData<kaldi::CuMatrix<float>>(int32x2_t *a1, uint64_t a2)
{
  if (!a1[2].i32[0])
  {
    kaldi::CuMatrix<float>::Resize(a1, (a1[19].i32[0] + 6000), *(a2 + 16), 1, 0);
    kaldi::CuMatrix<float>::Resize(a1 + 6, (a1[19].i32[0] + 6000), *(a2 + 16), 1, 0);
    kaldi::CuArray<int>::Resize(&a1[15], (a1[19].i32[0] + 6000), 1);
  }

  v4 = a1[18].i32[0];
  v5 = a1[18].i32[1];
  if (v4 >= 1)
  {
    v5 -= v4;
    if (v5 >= 1)
    {
      v6 = a1[1];
      v7 = a1[3].i32[0];
      v8 = a1[3].i32[1];
      v9 = a1[4];
      DWORD2(v25) = a1[2].i32[0];
      HIDWORD(v25) = v5;
      *&v26 = __PAIR64__(v8, v7);
      *(&v26 + 1) = v9;
      v24 = &unk_1F2CFA908;
      *&v25 = v6;
      v10 = v7 * v4;
      *(&v28 + 1) = __PAIR64__(v5, DWORD2(v25));
      LODWORD(v29) = v7;
      DWORD1(v29) = v8 - v10;
      *(&v29 + 1) = v9;
      v27 = &unk_1F2CFA908;
      *&v28 = *&v6 + 4 * v10;
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v24, &v27, 111);
      v27 = &unk_1F2CFA908;
      v28 = 0u;
      v29 = 0u;
      quasar::Bitmap::~Bitmap(&v27);
      v24 = &unk_1F2CFA908;
      v25 = 0u;
      v26 = 0u;
      quasar::Bitmap::~Bitmap(&v24);
    }

    a1[18].i32[0] = 0;
    a1[18].i32[1] = v5;
  }

  v11 = *(a2 + 20);
  if (a1[2].i32[1] < v11 + v5)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v24);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "we should have allocated enough space, instead we get in ", 57);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "this expensive copy/resize on GPU. buffer size ", 47);
      v14 = MEMORY[0x1B8C84C00](v13, a1[2].u32[1]);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " , current end ", 15);
      v16 = MEMORY[0x1B8C84C00](v15, a1[18].u32[1]);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " , incoming data size ", 22);
      MEMORY[0x1B8C84C00](v17, *(a2 + 20));
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v24);
    }

    kaldi::CuMatrix<float>::CuMatrix(&v24, a1, 111);
    kaldi::CuMatrix<float>::Resize(a1, (a1[18].i32[1] + *(a2 + 20) + 1000), a1[2].u32[0], 1, 0);
    v18 = a1[1];
    v19 = a1[4];
    DWORD2(v28) = a1[2].i32[0];
    HIDWORD(v28) = HIDWORD(v25);
    *&v29 = a1[3];
    *(&v29 + 1) = v19;
    v27 = &unk_1F2CFA908;
    *&v28 = v18;
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v27, &v24, 111);
    v27 = &unk_1F2CFA908;
    v28 = 0u;
    v29 = 0u;
    quasar::Bitmap::~Bitmap(&v27);
    kaldi::CuMatrix<float>::~CuMatrix(&v24);
    v5 = a1[18].i32[1];
    v11 = *(a2 + 20);
  }

  v20 = a1[3].i32[0];
  v21 = *&a1[1] + 4 * v20 * v5;
  v22 = a1[3].i32[1] - v20 * v5;
  v23 = a1[4];
  DWORD2(v25) = a1[2].i32[0];
  HIDWORD(v25) = v11;
  *&v26 = __PAIR64__(v22, v20);
  *(&v26 + 1) = v23;
  v24 = &unk_1F2CFA908;
  *&v25 = v21;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v24, a2, 111);
  v24 = &unk_1F2CFA908;
  v25 = 0u;
  v26 = 0u;
  quasar::Bitmap::~Bitmap(&v24);
  a1[18].i32[1] += *(a2 + 20);
}

void sub_1B56B3798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v5 - 104) = v2;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  quasar::Bitmap::~Bitmap((v5 - 104));
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AffineTransform::EnsureCorrs(kaldi::nnet1::AffineTransform *this)
{
  if ((*(this + 232) & 1) == 0)
  {
    v2 = *(this + 20);
    if (v2 > 1)
    {
      v3 = (v2 + 1);
    }

    else
    {
      v3 = 1;
    }

    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize(this + 17, v3);
    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize(this + 20, v3);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 23, v3);
    std::vector<kaldi::CuVector<float>>::resize(this + 26, v3);
    if (v3 >= 1)
    {
      operator new();
    }

    std::vector<int>::resize((this + 256), v3);
    if (*(this + 63) > 0.0)
    {
      v4 = *(kaldi::nnet1::AffineTransform::Linearity(this) + 20);
      v5 = kaldi::nnet1::AffineTransform::Linearity(this);
      kaldi::CuMatrix<float>::Resize(this + 38, v4, *(v5 + 16), 1, 0);
    }

    *(this + 232) = 1;
  }
}

uint64_t kaldi::nnet1::AffineTransform::LinearityCorr(kaldi::nnet1::AffineTransform *this, int a2)
{
  v2 = *(this + 17);
  if (a2 >= ((*(this + 18) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "linearity_corr_.size() > batch_idx");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "linearity_corr_[batch_idx]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(this + 17);
  if (a2 >= ((*(this + 18) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "linearity_corr_.size() > batch_idx");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "linearity_corr_[batch_idx]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::AffineTransform::BiasCorr(kaldi::nnet1::AffineTransform *this, int a2)
{
  v2 = *(this + 20);
  if (a2 >= ((*(this + 21) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_corr_.size() > batch_idx");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_corr_[batch_idx]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(this + 20);
  if (a2 >= ((*(this + 21) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_corr_.size() > batch_idx");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_corr_[batch_idx]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::MatrixRandomizer::MatrixRandomizer(uint64_t a1, uint64_t *a2, int a3, unsigned int a4, uint64_t a5)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F2D0EE38;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 48) = &unk_1F2D0EE38;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  v7 = (a1 + 96);
  *(a1 + 152) = 0x157100008000;
  v8 = a1 + 152;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 256;
  *(a1 + 164) = a3;
  *(a1 + 168) = a4;
  *(a1 + 32) = a5;
  *(a1 + 80) = a5;
  *(a1 + 136) = a5;
  *(a1 + 144) = 0;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "The GPU ID for the matrix randomizer is ", 40);
    MEMORY[0x1B8C84C00](v9, *(a1 + 164));
    kaldi::KaldiLogMessage::~KaldiLogMessage(v12);
    a4 = *(a1 + 168);
  }

  v10 = *a2;
  *(v8 + 8) = *(a2 + 2);
  *v8 = v10;
  *(a1 + 172) = *(a1 + 160) / a4;
  std::vector<kaldi::CuSubMatrix<float>>::resize(v7, a4);
  return a1;
}

void sub_1B56B3D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = v9[16];
  if (v12)
  {
    free(v12);
  }

  v9[15] = 0;
  v9[16] = 0;
  v9[17] = 0;
  std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  kaldi::CuMatrix<float>::~CuMatrix(v10);
  kaldi::CuMatrix<float>::~CuMatrix(v9);
  _Unwind_Resume(a1);
}

void *std::vector<kaldi::CuSubMatrix<float>>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<kaldi::CuSubMatrix<float>>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 40 * a2;
    if (v3 != v7)
    {
      v8 = v3 - 40;
      v9 = (v3 - 40);
      v10 = (v3 - 40);
      do
      {
        v11 = *v10;
        v10 -= 5;
        result = (*(v11 + 16))(v9);
        v8 -= 40;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    v2[1] = v7;
  }

  return result;
}

uint64_t std::vector<kaldi::CuSubMatrix<float>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 40 * a2;
      v11 = 40 * a2;
      v12 = (v4 + 8);
      do
      {
        *v12 = 0uLL;
        v12[1] = 0uLL;
        *(v12 - 1) = &unk_1F2CFA908;
        v12 = (v12 + 40);
        v4 += 40;
        v11 -= 40;
      }

      while (v11);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v24 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>>(result, v9);
    }

    v13 = 40 * v6;
    v21 = 0;
    v22 = 40 * v6;
    *(&v23 + 1) = 0;
    v14 = 40 * a2;
    v15 = (40 * v6 + 8);
    v16 = 40 * v6;
    do
    {
      *v15 = 0uLL;
      v15[1] = 0uLL;
      *(v15 - 1) = &unk_1F2CFA908;
      v15 = (v15 + 40);
      v16 += 40;
      v14 -= 40;
    }

    while (v14);
    *&v23 = v13 + 40 * a2;
    v17 = *(result + 8);
    v18 = v13 + *result - v17;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>,kaldi::CuSubMatrix<float>*>(result, *result, v17, v18);
    v19 = *v3;
    *v3 = v18;
    v20 = *(v3 + 16);
    *(v3 + 8) = v23;
    *&v23 = v19;
    *(&v23 + 1) = v20;
    v21 = v19;
    v22 = v19;
    return std::__split_buffer<kaldi::CuSubMatrix<float>>::~__split_buffer(&v21);
  }

  return result;
}

void sub_1B56B401C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<kaldi::CuSubMatrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

char *std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v15);
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

void std::__shared_ptr_emplace<kaldi::nnet1::Nnet1InferenceNet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D27A78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void sub_1B56B4490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = *(v14 + 49);
  if (v17)
  {
    *(v14 + 50) = v17;
    operator delete(v17);
  }

  kaldi::nnet1::Nnet::~Nnet(v15);
  quasar::Bitmap::~Bitmap(v14);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::nnet1::HistoricalComponent *>::__init_with_size[abi:ne200100]<kaldi::nnet1::HistoricalComponent **,kaldi::nnet1::HistoricalComponent **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B56B4554(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *std::__copy_unaligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4 - a2 + 8 * (a3 - result);
  if (v6 <= 0)
  {
    v18 = *a5;
    v19 = *(a5 + 8);
  }

  else
  {
    if (a2)
    {
      v7 = a2;
      if (v6 >= (64 - a2))
      {
        v8 = 64 - a2;
      }

      else
      {
        v8 = a4 - a2 + 8 * (a3 - result);
      }

      v6 -= v8;
      v9 = (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v8)) & (-1 << a2) & *result;
      v10 = *(a5 + 8);
      if (v8 >= (64 - v10))
      {
        v11 = (64 - v10);
      }

      else
      {
        v11 = v8;
      }

      v12 = *a5;
      v13 = v9 >> (a2 - v10);
      v14 = v10 >= a2;
      v16 = v10 - a2;
      v15 = v16 != 0 && v14;
      v17 = v9 << v16;
      if (!v15)
      {
        v17 = v13;
      }

      *v12 = **a5 & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v10 - v11)) & (-1 << v10)) | v17;
      v18 = (v12 + (((v11 + v10) >> 3) & 0x3FFFFFF8));
      *a5 = v18;
      v19 = (v10 + v11) & 0x3F;
      *(a5 + 8) = v19;
      v20 = v8 - v11;
      if (v20 >= 1)
      {
        *v18 = *v18 & ~(0xFFFFFFFFFFFFFFFFLL >> -v20) | (v9 >> (v11 + v7));
        *(a5 + 8) = v20;
        v19 = v20;
      }

      ++result;
    }

    else
    {
      v19 = *(a5 + 8);
      v18 = *a5;
    }

    v21 = 64 - v19;
    v22 = -1 << v19;
    if (v6 >= 64)
    {
      v23 = *v18;
      do
      {
        v24 = v6;
        v26 = *result++;
        v25 = v26;
        *v18 = v23 & ~v22 | (v26 << v19);
        v27 = v18[1];
        ++v18;
        v23 = v27 & v22 | (v25 >> v21);
        *v18 = v23;
        v6 = v24 - 64;
      }

      while (v24 > 0x7F);
      *a5 = v18;
    }

    if (v6 >= 1)
    {
      v28 = *result & (0xFFFFFFFFFFFFFFFFLL >> -v6);
      if (v6 >= v21)
      {
        v29 = 64 - v19;
      }

      else
      {
        v29 = v6;
      }

      *v18 = *v18 & ~((0xFFFFFFFFFFFFFFFFLL >> (v21 - v29)) & v22) | (v28 << v19);
      v18 = (v18 + (((v29 + v19) >> 3) & 0x3FFFFFF8));
      *a5 = v18;
      v19 = (v19 + v29) & 0x3F;
      *(a5 + 8) = v19;
      v30 = v6 - v29;
      if (v30 >= 1)
      {
        *v18 = *v18 & ~(0xFFFFFFFFFFFFFFFFLL >> -v30) | (v28 >> v29);
        *(a5 + 8) = v30;
        v19 = v30;
      }
    }
  }

  *a6 = v18;
  *(a6 + 8) = v19;
  return result;
}

double kaldi::nnet1::Xent::Xent(kaldi::nnet1::Xent *this)
{
  *this = &unk_1F2D2A668;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 14) = &unk_1F2D3AC18;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 21) = &unk_1F2D0EE38;
  *(this + 208) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 27) = &unk_1F2D0EE38;
  *(this + 256) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 33) = &unk_1F2D3AC18;
  *(this + 34) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 57) = 0;
  return result;
}

float kaldi::nnet1::AffineTransform::PropagateFnc(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = kaldi::nnet1::AffineTransform::Bias(a1);
  kaldi::CuVectorBase<float>::CopyFromVec(a3, v6);
  v7 = *(a1 + 352);
  if (v7 == *(a1 + 360) || !*(v7 + 20))
  {
    v9 = kaldi::nnet1::AffineTransform::Linearity(a1);
    kaldi::CuVectorBase<float>::AddMatVec(a3, v9, 111, a2);
  }

  else
  {
    kaldi::nnet1::Component::PropagateFnc(a1, a2, a3);
  }

  if (*(a1 + 128) == 1)
  {

    *&v8 = kaldi::CuVectorBase<float>::ApplySoftMax(a3, v8);
  }

  return *&v8;
}

void kaldi::nnet1::AffineTransform::~AffineTransform(kaldi::nnet1::AffineTransform *this)
{
  kaldi::nnet1::AffineTransform::~AffineTransform(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D27AC8;
  v2 = (this + 88);
  *(this + 11) = &unk_1F2D27C08;
  v3 = (this + 96);
  *(this + 12) = &unk_1F2D27C30;
  v4 = (this + 104);
  *(this + 13) = &unk_1F2D27C58;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(this + 47);
  v9 = (this + 352);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  kaldi::CuMatrix<float>::~CuMatrix(this + 304);
  v5 = *(this + 35);
  if (v5)
  {
    *(this + 36) = v5;
    operator delete(v5);
  }

  v6 = *(this + 32);
  if (v6)
  {
    *(this + 33) = v6;
    operator delete(v6);
  }

  v9 = (this + 208);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 184);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 160);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 136);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  v8 = *(this + 14);
  *(this + 14) = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  quasar::Bitmap::~Bitmap(v4);
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

uint64_t kaldi::nnet1::AffineTransform::CountZeroCorr(kaldi::nnet1::AffineTransform *this, int *a2, int *a3)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(this);
  v6 = *(kaldi::nnet1::AffineTransform::Bias(this) + 16);
  v7 = *(kaldi::nnet1::AffineTransform::Linearity(this) + 20);
  result = kaldi::nnet1::AffineTransform::Linearity(this);
  *a3 = v6 + *(result + 16) * v7;
  v9 = *(this + 18) - *(this + 17);
  if (v9)
  {
    v10 = *(this + 21) - *(this + 20);
    if (v10)
    {
      v11 = v9 >> 3;
      v12 = v10 >> 3;
      v13 = *(this + 20);
      if (v13 == 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      v15 = v12 - 1;
      if (v11 - 1 != v14 || v15 != v14)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Unexpected mismatch in indexes: ", 32);
        v21 = MEMORY[0x1B8C84C00](v20, v14);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "  ", 2);
        v23 = MEMORY[0x1B8C84C30](v22, ((*(this + 18) - *(this + 17)) >> 3) - 1);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "  ", 2);
        MEMORY[0x1B8C84C30](v24, ((*(this + 21) - *(this + 20)) >> 3) - 1);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
      }

      v17 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v14);
      v18 = kaldi::CuMatrixBase<float>::CountZeros(v17);
      v19 = kaldi::nnet1::AffineTransform::BiasCorr(this, v14);
      result = kaldi::CuVectorBase<float>::CountZeros(v19);
      LODWORD(v9) = result + v18;
    }

    else
    {
      LODWORD(v9) = 0;
    }
  }

  *a2 = v9;
  return result;
}

void kaldi::nnet1::AffineTransform::VectorizeWeightsCorrs(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v3, "Weights are already vectorized");
  }

  else
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v3, "Performing vectorization of affine transform component", 54);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v3);
    }

    v2 = *(*(a1 + 120) + 16) + *(*(a1 + 112) + 16) * *(*(a1 + 112) + 20);
    if (v2 == (*(*a1 + 176))(a1))
    {
      kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub();
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v3, "(nlinparams + bias_->Dim()) == NumParams()");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v3);
}

uint64_t kaldi::nnet1::AffineTransform::Info(kaldi::nnet1::AffineTransform *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  (*(*this + 168))(this, &v14, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "\n linearity", 11);
  kaldi::nnet1::MomentStatistics<float>(*(this + 14));
  if ((v13 & 0x80u) == 0)
  {
    v3 = v12;
  }

  else
  {
    v3 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v12[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n bias", 6);
  kaldi::nnet1::MomentStatistics<float>(*(this + 15));
  if ((v11 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::stringbuf::str();
  v14 = *MEMORY[0x1E69E54E8];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v18);
}

void sub_1B56B5414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AffineTransform::InfoGradient(kaldi::nnet1::AffineTransform *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 232))
  {
    std::string::basic_string[abi:ne200100]<0>(&v42, "\n  linearity_grad");
    kaldi::nnet1::MomentStatistics<float>(this + 17);
    if ((v41 & 0x80u) == 0)
    {
      v4 = v40;
    }

    else
    {
      v4 = v40[0];
    }

    if ((v41 & 0x80u) == 0)
    {
      v5 = v41;
    }

    else
    {
      v5 = v40[1];
    }

    v6 = std::string::append(&v42, v4, v5);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v43, ", lr-coef ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>();
    if ((v39 & 0x80u) == 0)
    {
      v10 = v38;
    }

    else
    {
      v10 = v38[0];
    }

    if ((v39 & 0x80u) == 0)
    {
      v11 = v39;
    }

    else
    {
      v11 = v38[1];
    }

    v12 = std::string::append(&v44, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v45, ", max-norm ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>();
    if ((v37 & 0x80u) == 0)
    {
      v16 = v36;
    }

    else
    {
      v16 = v36[0];
    }

    if ((v37 & 0x80u) == 0)
    {
      v17 = v37;
    }

    else
    {
      v17 = v36[1];
    }

    v18 = std::string::append(&v46, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v47, "\n  bias_grad");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::MomentStatistics<float>(this + 20);
    if ((v35 & 0x80u) == 0)
    {
      v22 = v34;
    }

    else
    {
      v22 = v34[0];
    }

    if ((v35 & 0x80u) == 0)
    {
      v23 = v35;
    }

    else
    {
      v23 = v34[1];
    }

    v24 = std::string::append(&v48, v22, v23);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v49, ", lr-coef ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>();
    if ((v33 & 0x80u) == 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    if ((v33 & 0x80u) == 0)
    {
      v29 = v33;
    }

    else
    {
      v29 = __p[1];
    }

    v30 = std::string::append(&v50, v28, v29);
    v31 = *&v30->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v30->__r_.__value_.__l + 2);
    *a2 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (v41 < 0)
    {
      operator delete(v40[0]);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "\n  linearity_grad is uninitialized\n  bias_grad is uninitialized");
  }
}

void sub_1B56B57C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v64 - 41) < 0)
  {
    operator delete(*(v64 - 64));
  }

  if (*(v64 - 73) < 0)
  {
    operator delete(*(v64 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v64 - 105) < 0)
  {
    operator delete(*(v64 - 128));
  }

  if (*(v64 - 137) < 0)
  {
    operator delete(*(v64 - 160));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v64 - 169) < 0)
  {
    operator delete(*(v64 - 192));
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::AffineTransform::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v80 = 2.0;
  v81 = -1073741824;
  v79 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v78);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 244), &v77);
  v76 = -1;
  memset(v75, 0, sizeof(v75));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_158;
    }

    kaldi::ReadToken(a2, 0, v75);
    if ((SHIBYTE(v75[2]) & 0x80000000) == 0)
    {
      break;
    }

    if (v75[1] <= 12)
    {
      if (v75[1] <= 10)
      {
        if (v75[1] == 9)
        {
          v23 = v75[0];
          v28 = *v75[0] == 0x6D726F4E78614D3CLL && *(v75[0] + 8) == 62;
          v8 = (a1 + 252);
          if (!v28)
          {
            v29 = *v75[0] == 0x6461724778614D3CLL && *(v75[0] + 8) == 62;
            v8 = (a1 + 248);
            if (!v29)
            {
              goto LABEL_120;
            }
          }

          goto LABEL_138;
        }

        if (v75[1] != 10)
        {
          goto LABEL_193;
        }

        if (*v75[0] != 0x61654D736169423CLL || *(v75[0] + 4) != 15982)
        {
          goto LABEL_193;
        }

        goto LABEL_22;
      }

      if (v75[1] != 11)
      {
        if (*v75[0] != 0x536D6F646E61523CLL || *(v75[0] + 2) != 1046766949)
        {
          goto LABEL_152;
        }

LABEL_66:
        kaldi::ReadBasicType<int>(a2, 0, &v76);
        goto LABEL_149;
      }

      if (*v75[0] != 0x6E6152736169423CLL || *(v75[0] + 3) != 0x3E65676E61527361)
      {
        goto LABEL_193;
      }

LABEL_137:
      v8 = &v80;
      goto LABEL_138;
    }

    if (v75[1] <= 17)
    {
      if (v75[1] != 13)
      {
        if (v75[1] != 15)
        {
          goto LABEL_193;
        }

        v9 = *v75[0] == 0x61526E7261654C3CLL && *(v75[0] + 7) == 0x3E66656F43657461;
        goto LABEL_35;
      }

      if (*v75[0] != 0x74536D617261503CLL || *(v75[0] + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_193;
      }

LABEL_131:
      v8 = &v79;
      goto LABEL_138;
    }

    if (v75[1] == 18)
    {
      if (*v75[0] != 0x6E6569646172473CLL || *(v75[0] + 1) != 0x7079546D726F4E74 || *(v75[0] + 8) != 15973)
      {
        goto LABEL_151;
      }

      goto LABEL_147;
    }

    if (v75[1] != 19)
    {
      goto LABEL_193;
    }

    v17 = *v75[0] == 0x61654C736169423CLL && *(v75[0] + 1) == 0x6F43657461526E72 && *(v75[0] + 11) == 0x3E66656F43657461;
    v8 = (a1 + 240);
    if (v17)
    {
      goto LABEL_138;
    }

    if (*v75[0] != 0x61725474696E493CLL || *(v75[0] + 1) != 0x79546D726F66736ELL || *(v75[0] + 11) != 0x3E657079546D726FLL)
    {
      goto LABEL_151;
    }

LABEL_84:
    v20 = &v78;
LABEL_148:
    kaldi::ReadToken(a2, 0, v20);
LABEL_149:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v75[2]) > 0xCu)
  {
    if (HIBYTE(v75[2]) <= 0x11u)
    {
      if (HIBYTE(v75[2]) == 13)
      {
        if (v75[0] != 0x74536D617261503CLL || *(v75 + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_193;
        }

        goto LABEL_131;
      }

      if (HIBYTE(v75[2]) != 15)
      {
        goto LABEL_193;
      }

      v9 = v75[0] == 0x61526E7261654C3CLL && *(v75 + 7) == 0x3E66656F43657461;
LABEL_35:
      v8 = (a1 + 236);
      if (!v9)
      {
        goto LABEL_193;
      }

LABEL_138:
      kaldi::ReadBasicType<float>(a2, 0, v8);
      goto LABEL_149;
    }

    if (HIBYTE(v75[2]) == 18)
    {
      if (v75[0] != 0x6E6569646172473CLL || v75[1] != 0x7079546D726F4E74 || LOWORD(v75[2]) != 15973)
      {
        goto LABEL_193;
      }

LABEL_147:
      v20 = &v77;
      goto LABEL_148;
    }

    if (HIBYTE(v75[2]) != 19)
    {
      goto LABEL_193;
    }

    v12 = v75[0] == 0x61654C736169423CLL && v75[1] == 0x6F43657461526E72 && *(&v75[1] + 3) == 0x3E66656F43657461;
    v8 = (a1 + 240);
    if (v12)
    {
      goto LABEL_138;
    }

    if (v75[0] != 0x61725474696E493CLL || v75[1] != 0x79546D726F66736ELL || *(&v75[1] + 3) != 0x3E657079546D726FLL)
    {
      goto LABEL_193;
    }

    goto LABEL_84;
  }

  if (HIBYTE(v75[2]) > 0xAu)
  {
    if (HIBYTE(v75[2]) != 11)
    {
      if (v75[0] != 0x536D6F646E61523CLL || LODWORD(v75[1]) != 1046766949)
      {
        v37 = v75;
        goto LABEL_153;
      }

      goto LABEL_66;
    }

    if (v75[0] != 0x6E6152736169423CLL || *(v75 + 3) != 0x3E65676E61527361)
    {
      goto LABEL_193;
    }

    goto LABEL_137;
  }

  if (HIBYTE(v75[2]) != 9)
  {
    if (HIBYTE(v75[2]) != 10)
    {
      goto LABEL_193;
    }

    if (v75[0] != 0x61654D736169423CLL || LOWORD(v75[1]) != 15982)
    {
      goto LABEL_193;
    }

LABEL_22:
    v8 = &v81;
    goto LABEL_138;
  }

  v21 = v75[0] == 0x6D726F4E78614D3CLL && LOBYTE(v75[1]) == 62;
  v8 = (a1 + 252);
  if (v21)
  {
    goto LABEL_138;
  }

  v22 = v75[0] == 0x6461724778614D3CLL && LOBYTE(v75[1]) == 62;
  v8 = (a1 + 248);
  if (v22)
  {
    goto LABEL_138;
  }

  v23 = v75;
LABEL_120:
  v30 = *v23;
  v31 = *(v23 + 8);
  if (v30 == 0x78616D74666F533CLL && v31 == 62)
  {
    *(a1 + 128) = 1;
    goto LABEL_149;
  }

  if ((HIBYTE(v75[2]) & 0x80) == 0)
  {
    goto LABEL_193;
  }

LABEL_151:
  if (v75[1] != 12)
  {
LABEL_193:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v74);
    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "Unknown token ", 14);
    if (SHIBYTE(v75[2]) >= 0)
    {
      v61 = v75;
    }

    else
    {
      v61 = v75[0];
    }

    if (SHIBYTE(v75[2]) >= 0)
    {
      v62 = HIBYTE(v75[2]);
    }

    else
    {
      v62 = v75[1];
    }

    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v61, v62);
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " (ParamStddev|BiasMean|BiasRange|LearnRateCoef|BiasLearnRateCoef|MaxNorm|InitTransformType|GradientNormType|MaxGrad|RandomSeed)", 127);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v74);
  }

LABEL_152:
  v37 = v75[0];
LABEL_153:
  v38 = *v37;
  v39 = *(v37 + 2);
  if (v38 != 0x6E6F706D6F432F3CLL || v39 != 1047817829)
  {
    goto LABEL_193;
  }

LABEL_158:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v78);
  *(a1 + 244) = kaldi::nnet1::Component::MarkerToGradientNormType(&v77);
  if (v76 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v76);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v70, a3);
  kaldi::Matrix<float>::Matrix(v68, *(a1 + 12), *(a1 + 8), 0, 0);
  v42 = *(a1 + 12);
  if (v42 < 1)
  {
    goto LABEL_176;
  }

  v43 = 0;
  v44 = *(a1 + 8);
  while (2)
  {
    if (v44 < 1)
    {
      goto LABEL_175;
    }

    v45 = 0;
    while (2)
    {
      switch(inited)
      {
        case 0:
          if (v43 == v45)
          {
            v47 = 1.0;
          }

          else
          {
            v47 = 0.0;
          }

          goto LABEL_172;
        case 2:
          v48 = *&v79;
          kaldi::GaussRandomNumber::Rand(v70, 0);
          v47 = v48 * v49;
LABEL_172:
          *(*v68 + 4 * v43 * v69 + 4 * v45) = v47;
          v44 = *(a1 + 8);
          break;
        case 1:
          v46 = *&v79;
          v47 = (kaldi::UniformRandomNumber::RandUniform(a3, 0) + -0.5) * (v46 + v46);
          goto LABEL_172;
      }

      if (++v45 < v44)
      {
        continue;
      }

      break;
    }

    v42 = *(a1 + 12);
LABEL_175:
    if (++v43 < v42)
    {
      continue;
    }

    break;
  }

LABEL_176:
  v50 = *(kaldi::nnet1::AffineTransform::Linearity(a1) + 20);
  if (v50 != kaldi::MatrixBase<float>::NumRows(v68) || (v51 = *(kaldi::nnet1::AffineTransform::Linearity(a1) + 16), v51 != kaldi::MatrixBase<float>::NumCols(v68)))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v74);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "Linearity().NumRows() == mat.NumRows() && Linearity().NumCols() == mat.NumCols()", 80);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v74);
  }

  v52 = kaldi::nnet1::AffineTransform::Linearity(a1);
  kaldi::CuMatrixBase<float>::CopyFromMat(v52, v68, 111);
  v53 = *(a1 + 12);
  v66 = 0;
  v67 = 0;
  v65 = 0;
  kaldi::Vector<float>::Resize(&v65, v53, 0);
  if (*(a1 + 12) >= 1)
  {
    v54 = 0;
    do
    {
      v55 = *&v81;
      v56 = kaldi::UniformRandomNumber::RandUniform(a3, 0);
      v57 = v55 + (v56 + -0.5) * v80;
      v65[v54++] = v57;
    }

    while (v54 < *(a1 + 12));
  }

  v58 = kaldi::nnet1::AffineTransform::Bias(a1);
  if (*(v58 + 16) != v66)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v74);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "Bias().Dim() == vec.Dim()", 25);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v74);
  }

  v59 = kaldi::nnet1::AffineTransform::Bias(a1);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(v59, &v65);
  kaldi::Vector<float>::Destroy(&v65);
  kaldi::Matrix<float>::~Matrix(v68);
  if (__p)
  {
    v73 = __p;
    operator delete(__p);
  }

  v74[0] = &v71;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v74);
  if (SHIBYTE(v75[2]) < 0)
  {
    operator delete(v75[0]);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }
}

void kaldi::nnet1::AffineTransform::WriteData(uint64_t *a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  kaldi::CuMatrixBase<float>::Write(a1[14], a2, a3, a4);
  v8 = a1[15];

  kaldi::CuVectorBase<float>::Write(v8, a2, a3);
}

uint64_t kaldi::nnet1::AffineTransform::BackpropagateFnc(kaldi::nnet1::AffineTransform *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = *(this + 44);
  if (v8 == *(this + 45) || !*(v8 + 48 * a6 + 20))
  {
    v11 = kaldi::nnet1::AffineTransform::Linearity(this);

    return kaldi::CuMatrixBase<float>::AddMatMat(a5, a4, 111, v11, 111);
  }

  else
  {
    v9 = kaldi::nnet1::AffineTransform::Linearity(this);

    return kaldi::CuMatrixBase<float>::AddMatMatMasked(a5, a4, 111, v9, 111);
  }
}

uint64_t kaldi::nnet1::AffineTransform::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int16x4_t a5)
{
  a5.i32[0] = *(*(*(a1 + 120) + 8) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a5);
  v9 = *(a1 + 112);
  v10 = *(v9 + 8) + 4 * *(v9 + 24) * a3;
  v11 = *(v9 + 16);
  v12 = *(v9 + 32);
  v14[1] = v10;
  v14[0] = &unk_1F2CFCA48;
  v14[2] = v11;
  v14[3] = v12;
  return kaldi::CuVectorBase<float>::AddMatVec(a4, a2, 111, v14);
}

float kaldi::nnet1::AffineTransform::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(*(*(a1 + 120) + 8) + 4 * a3);
  kaldi::VecVec<float>();
  return v3 + v4;
}

void *kaldi::nnet1::AffineTransform::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 244), &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  result = kaldi::WriteBasicType<float>(a2, a3);
  if (*(a1 + 128) == 1)
  {
    return kaldi::WriteToken(a2, a3, "<Softmax>");
  }

  return result;
}

void sub_1B56B674C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **kaldi::nnet1::AffineTransform::GetParams(void *a1, void **a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0);
  v5 = a1[14];
  v6 = *(v5 + 16) * *(v5 + 20);
  v11 = 0;
  v12 = 0;
  v10 = *a2;
  LODWORD(v11) = v6;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v10, v5);
  v7 = a1[15];
  v8 = *(v7 + 16);
  v11 = 0;
  v12 = 0;
  v10 = *a2 + 4 * v6;
  LODWORD(v11) = v8;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(v7, &v10);
}

void *kaldi::nnet1::AffineTransform::SetParams(kaldi::nnet1::AffineTransform *a1, char **a2)
{
  (*(*a1 + 176))(a1);
  v4 = *(kaldi::nnet1::AffineTransform::Linearity(a1) + 20);
  v5 = *(kaldi::nnet1::AffineTransform::Linearity(a1) + 16) * v4;
  v6 = kaldi::nnet1::AffineTransform::Linearity(a1);
  v11 = 0;
  v12 = 0;
  v10 = *a2;
  LODWORD(v11) = v5;
  kaldi::CuMatrixBase<float>::CopyRowsFromVec(v6, &v10);
  v7 = kaldi::nnet1::AffineTransform::Bias(a1);
  v8 = *(kaldi::nnet1::AffineTransform::Bias(a1) + 16);
  v11 = 0;
  v12 = 0;
  v10 = &(*a2)[4 * v5];
  LODWORD(v11) = v8;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v7, &v10);
}

float kaldi::nnet1::AffineTransform::GetNormalizedLearningRate(kaldi::nnet1::AffineTransform *this, int a2)
{
  if ((*(this + 84) & 1) == 0)
  {
    return *(this + 14);
  }

  v2 = *(this + 35);
  v3 = *(this + 36) - v2;
  if (!v3)
  {
    return NAN;
  }

  v4 = v3 >> 2;
  if (v4 <= a2)
  {
    return NAN;
  }

  v5 = v4 - 1;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  return *(v2 + 4 * v5);
}

float kaldi::nnet1::AffineTransform::SumParams(kaldi::nnet1::AffineTransform *this)
{
  v2 = kaldi::CuMatrixBase<float>::Sum(*(this + 14));
  v3 = kaldi::CuVectorBase<float>::Sum(*(this + 15));
  return v2 + *&v3;
}

uint64_t kaldi::nnet1::AffineTransform::PerturbParams(kaldi::nnet1::AffineTransform *this, float a2)
{
  v4 = *(kaldi::nnet1::AffineTransform::Linearity(this) + 20);
  v5 = kaldi::nnet1::AffineTransform::Linearity(this);
  kaldi::CuMatrix<float>::CuMatrix(v11, v4, *(v5 + 16), 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v11);
  v6 = kaldi::nnet1::AffineTransform::Linearity(this);
  kaldi::CuMatrixBase<float>::AddMat(v6, v11, 111, a2, 1.0);
  v7 = *(kaldi::nnet1::AffineTransform::Bias(this) + 16);
  memset(&v10[1], 0, 24);
  v10[0] = &unk_1F2D3AC18;
  kaldi::CuVector<float>::Resize(v10, v7, 1);
  kaldi::CuVectorBase<float>::SetRandn(v10);
  kaldi::nnet1::AffineTransform::Bias(this);
  *&v8 = a2;
  kaldi::CuVectorBase<float>::AddVec(v8, 1.0);
  kaldi::CuVector<float>::~CuVector(v10);
  return kaldi::CuMatrix<float>::~CuMatrix(v11);
}

void sub_1B56B6A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::AffineTransform::GetGradient(void *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 16))(a1);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  LODWORD(a3) = *(a1[14] + 16) * *(a1[14] + 20);
  v9 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v9, 0);
  v15 = 0;
  v16 = 0;
  v14 = *a4;
  LODWORD(v15) = a3;
  v10 = kaldi::nnet1::AffineTransform::LinearityCorr(v8, 0);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v14, v10);
  v11 = *(a1[15] + 16);
  v15 = 0;
  v16 = 0;
  v14 = *a4 + 4 * a3;
  LODWORD(v15) = v11;
  v12 = kaldi::nnet1::AffineTransform::BiasCorr(v8, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v12, &v14);
  return (*(*v8 + 8))(v8);
}

void kaldi::nnet1::AffineTransform::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(a1);
  *(kaldi::nnet1::AffineTransform::LinearityCorr(a1, a5) + 32) = a4;
  *(kaldi::nnet1::AffineTransform::BiasCorr(a1, a5) + 24) = a4;
  v10 = *(a1 + 60);
  *(*(a1 + 256) + 4 * a5) = *(a2 + 20);
  v11 = *(a1 + 352);
  if (v11 == *(a1 + 360) || !*(v11 + 48 * a5 + 20))
  {
    v13 = kaldi::nnet1::AffineTransform::LinearityCorr(a1, a5);
    kaldi::CuMatrixBase<float>::AddMatMat(v13, a3, 112, a2, 111);
  }

  else
  {
    v12 = kaldi::nnet1::AffineTransform::LinearityCorr(a1, a5);
    if (v10 == 0.0)
    {
      kaldi::CuMatrixBase<float>::SetZero(v12);
    }

    else
    {
      kaldi::CuMatrixBase<float>::Scale(v12, v10);
    }

    v14 = kaldi::nnet1::AffineTransform::LinearityCorr(a1, a5);
    kaldi::CuMatrixBase<float>::AddMatMatMasked(v14, a3, 112, a2, 111);
  }

  v15 = kaldi::nnet1::AffineTransform::BiasCorr(a1, a5);

  kaldi::CuVectorBase<float>::AddRowSumMat(v15, a3);
}

uint64_t kaldi::nnet1::AffineTransform::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 248) = a3;
  *(result + 244) = a2;
  *(result + 232) = 0;
  return result;
}

void kaldi::nnet1::AffineTransform::NormalizeGradients(kaldi::nnet1::AffineTransform *this, float a2, int a3)
{
  v4 = a2;
  v6 = *(this + 61);
  if (v6 == 3)
  {
    if (a2 >= 0.0 && a2 <= 1.0)
    {
      v11 = kaldi::nnet1::AffineTransform::LinearityCorr(this, a3);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v11, *(this + 23) + 48 * a3, v4);
      v12 = kaldi::nnet1::AffineTransform::BiasCorr(this, a3);
      v13 = *(this + 26) + 32 * a3;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v12, v13, v4);
    }
  }

  else if (v6 == 2)
  {
    if (a2 > 0.0)
    {
      v9 = a3;
      if (*(this + 84))
      {
        v4 = *(*(this + 32) + 4 * a3) * a2;
      }

      v14 = kaldi::nnet1::AffineTransform::LinearityCorr(this, a3);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v14, (*(this + 23) + 48 * v9), v4);
      v15 = kaldi::nnet1::AffineTransform::BiasCorr(this, a3);
      v16 = (*(this + 26) + 32 * v9);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v15, v16, v4);
    }
  }

  else if (v6 == 1 && a2 > 0.0)
  {
    if (*(this + 84) == 1)
    {
      v4 = *(*(this + 32) + 4 * a3) * a2;
    }

    v7 = kaldi::nnet1::AffineTransform::LinearityCorr(this, a3);
    kaldi::nnet1::UpdatableComponent::ClipGradient(v7, v4);
    v8 = kaldi::nnet1::AffineTransform::BiasCorr(this, a3);

    kaldi::nnet1::UpdatableComponent::ClipGradient(v8, v4);
  }
}

void kaldi::nnet1::AffineTransform::UpdateWeights(kaldi::nnet1::AffineTransform *this, void *a2, int a3)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(this);
  v6 = *(this + 16);
  v7 = *(this + 17);
  v8 = *(this + 18);
  v9 = *(this + 19);
  *(kaldi::nnet1::AffineTransform::Linearity(this) + 32) = a2;
  *(kaldi::nnet1::AffineTransform::Bias(this) + 24) = a2;
  if (a3 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *(this + 20);
  }

  if (*(this + 20) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  *(kaldi::nnet1::AffineTransform::LinearityCorr(this, v11) + 32) = a2;
  *(kaldi::nnet1::AffineTransform::BiasCorr(this, v11) + 24) = a2;
  v13 = v11;
  *(*(this + 23) + 48 * v11 + 32) = a2;
  *(*(this + 26) + 32 * v11 + 24) = a2;
  if (v11 == *(this + 20))
  {
    v14 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v11);
    v15 = kaldi::nnet1::AffineTransform::LinearityCorr(this, 0);
    kaldi::CuMatrixBase<float>::AddMat(v14, v15, 111, 1.0, 0.0);
    kaldi::nnet1::AffineTransform::BiasCorr(this, v13);
    kaldi::nnet1::AffineTransform::BiasCorr(this, 0);
    LODWORD(v16) = 1.0;
    kaldi::CuVectorBase<float>::AddVec(v16, 0.0);
    if (*(this + 20) > 1)
    {
      v17 = 1;
      do
      {
        v18 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v13);
        v19 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v17);
        kaldi::CuMatrixBase<float>::AddMat(v18, v19, 111, 1.0, 1.0);
        kaldi::nnet1::AffineTransform::BiasCorr(this, v13);
        kaldi::nnet1::AffineTransform::BiasCorr(this, v17);
        LODWORD(v20) = 1.0;
        kaldi::CuVectorBase<float>::AddVec(v20, 1.0);
        ++v17;
      }

      while (v17 < *(this + 20));
    }

    v21 = *(this + 32);
    v21[v13] = 0;
    if (v13 >= 1)
    {
      v22 = 0;
      v23 = v13;
      v24 = v21;
      do
      {
        v25 = *v24++;
        v22 += v25;
        v21[v13] = v22;
        --v23;
      }

      while (v23);
    }
  }

  v26 = *(this + 14);
  if (*(this + 84) == 1)
  {
    *v12.i32 = *(*(this + 32) + 4 * v13);
    v26 = v26 / *v12.i32;
  }

  v27 = *(this + 35);
  if (v13 >= (*(this + 36) - v27) >> 2)
  {
    LODWORD(v41[0]) = 2143289344;
    std::vector<float>::resize(this + 35, v13 + 1, v41, v12);
    v27 = *(this + 35);
  }

  *(v27 + 4 * v13) = v26;
  if (*(this + 62) >= 0.0)
  {
    (*(*this + 248))(this, v13);
  }

  if (v6 != 0.0)
  {
    v28 = kaldi::nnet1::AffineTransform::Linearity(this);
    v29 = -(v26 * v6) * *(*(this + 32) + 4 * v13);
    v30 = kaldi::nnet1::AffineTransform::Linearity(this);
    kaldi::CuMatrixBase<float>::AddMat(v28, v30, 111, v29, 1.0);
  }

  if (v7 != 0.0)
  {
    v31 = kaldi::nnet1::AffineTransform::Linearity(this);
    v32 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v13);
    kaldi::cu::RegularizeL1<float>(v31, v32, (v7 * v26) * *(*(this + 32) + 4 * v13), v26);
  }

  if (v8 > 0.0)
  {
    if (*(this + 20) >= 2)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v41, "the multi batch gradient quantization does not work yet");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v41);
    }

    if (*(this + 48) == *(this + 47))
    {
      kaldi::nnet1::AffineTransform::InitResidualAggregator(this, (this + 376));
    }

    kaldi::nnet1::QuantizerResidualAggregator::Quantize((this + 376), v9, v8);
  }

  kaldi::nnet1::AffineTransform::ApplyCorr(this, v26, v13);
  if (*(this + 63) > 0.0)
  {
    *(this + 42) = a2;
    v33 = kaldi::nnet1::AffineTransform::Linearity(this);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(this + 76, v33, 111);
    v34 = kaldi::nnet1::AffineTransform::Linearity(this);
    kaldi::CuMatrixBase<float>::MulElements(this + 304, v34);
    v35 = *(this + 3);
    v41[2] = 0;
    v42 = 0;
    v41[0] = &unk_1F2D3AC18;
    v41[1] = 0;
    kaldi::CuVector<float>::Resize(v41, v35, 0);
    v42 = a2;
    kaldi::CuVectorBase<float>::AddColSumMat(v41, this + 304);
    kaldi::CuVectorBase<float>::ApplyPow(v41, 0.5);
    kaldi::CuVector<float>::CuVector(v40, v41);
    kaldi::CuVectorBase<float>::Scale();
    kaldi::CuVectorBase<float>::ApplyFloor(v40, 1.0);
    kaldi::CuVectorBase<float>::InvertElements(v40);
    v36 = kaldi::nnet1::AffineTransform::Linearity(this);
    kaldi::CuMatrixBase<float>::MulRowsVec(v36, v40);
    v37 = kaldi::nnet1::AffineTransform::Bias(this);
    kaldi::CuVectorBase<float>::ApplyMaxNorm(v37, *(this + 63));
    kaldi::CuVector<float>::~CuVector(v40);
    kaldi::CuVector<float>::~CuVector(v41);
  }

  v38 = *(this + 32);
  if (v13 == *(this + 20))
  {
    v39 = *(this + 33);
    if (v38 != v39)
    {
      bzero(v38, v39 - v38);
    }
  }

  else
  {
    *&v38[4 * v13] = 0;
  }
}

void sub_1B56B73C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

void non-virtual thunk tokaldi::nnet1::AffineTransform::~AffineTransform(kaldi::nnet1::AffineTransform *this)
{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 88));
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 88));

  JUMPOUT(0x1B8C85350);
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 96));
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 96));

  JUMPOUT(0x1B8C85350);
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 104));
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 104));

  JUMPOUT(0x1B8C85350);
}

kaldi::nnet1::AffineTransform *kaldi::nnet1::AffineTransform::AffineTransform(kaldi::nnet1::AffineTransform *this, const kaldi::nnet1::AffineTransform *a2)
{
  *this = &unk_1F2D15BB8;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F2D172B0;
  *(this + 6) = &unk_1F2D279F8;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = &unk_1F2D27AC8;
  *(this + 11) = &unk_1F2D27C08;
  *(this + 12) = &unk_1F2D27C30;
  *(this + 13) = &unk_1F2D27C58;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 128) = *(a2 + 128);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100](this + 17, (*(a2 + 18) - *(a2 + 17)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100](this + 20, (*(a2 + 21) - *(a2 + 20)) >> 3);
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 184, *(a2 + 23), *(a2 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 23)) >> 4));
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 208, *(a2 + 26), *(a2 + 27), (*(a2 + 27) - *(a2 + 26)) >> 5);
  *(this + 232) = *(a2 + 232);
  *(this + 236) = *(a2 + 236);
  *(this + 61) = *(a2 + 61);
  *(this + 31) = *(a2 + 31);
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 256, *(a2 + 32), *(a2 + 33), (*(a2 + 33) - *(a2 + 32)) >> 2);
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 280, *(a2 + 35), *(a2 + 36), (*(a2 + 36) - *(a2 + 35)) >> 2);
  kaldi::CuMatrix<float>::CuMatrix(this + 304, a2 + 304, 111);
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 352, *(a2 + 44), *(a2 + 45), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 45) - *(a2 + 44)) >> 4));
  *(this + 55) = 0;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  if (*(this + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    kaldi::NewCuSubOrMat<float>(v6, 0);
  }

  if (*(a2 + 15))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v8 = *(this + 17);
  v7 = *(this + 18);
  if (v7 != v8)
  {
    v9 = 0;
    do
    {
      if (*(*(a2 + 17) + 8 * v9))
      {
        v10 = kaldi::nnet1::AffineTransform::LinearityCorr(a2, v9);
        kaldi::NewCuSubOrMat<float>(v10, *(this + 16));
      }

      ++v9;
    }

    while (v9 < (v7 - v8) >> 3);
  }

  v12 = *(this + 20);
  v11 = *(this + 21);
  if (v11 != v12)
  {
    v13 = 0;
    do
    {
      if (*(*(a2 + 20) + 8 * v13))
      {
        kaldi::nnet1::AffineTransform::BiasCorr(a2, v13);
        kaldi::NewCuSubOrVec<float>();
      }

      ++v13;
    }

    while (v13 < (v11 - v12) >> 3);
  }

  if (*(a2 + 48) != *(a2 + 47))
  {
    kaldi::nnet1::AffineTransform::InitResidualAggregator(this, (this + 376));
  }

  return this;
}

void sub_1B56B7BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, quasar::Bitmap *a9, quasar::Bitmap *a10, quasar::Bitmap *a11, uint64_t a12)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v13);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  kaldi::CuMatrix<float>::~CuMatrix(v12 + 304);
  v16 = *(v12 + 35);
  if (v16)
  {
    *(v12 + 36) = v16;
    operator delete(v16);
  }

  v17 = *(v12 + 32);
  if (v17)
  {
    *(v12 + 33) = v17;
    operator delete(v17);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  v18 = *(v12 + 15);
  *(v12 + 15) = 0;
  if (v18)
  {
    (*(*v18 + 16))(v18);
  }

  v19 = *v14;
  *v14 = 0;
  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

  quasar::Bitmap::~Bitmap(a9);
  quasar::Bitmap::~Bitmap(a10);
  quasar::Bitmap::~Bitmap(a11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v12);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AffineTransform::InitResidualAggregator(kaldi::nnet1::AffineTransform *this, kaldi::nnet1::QuantizerResidualAggregator *a2)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(this);
  v4 = kaldi::nnet1::AffineTransform::LinearityCorr(this, ((*(this + 18) - *(this + 17)) >> 3) - 1);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v4);
  v5 = kaldi::nnet1::AffineTransform::BiasCorr(this, ((*(this + 21) - *(this + 20)) >> 3) - 1);

  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v5);
}

uint64_t kaldi::nnet1::AffineTransform::ApplyCorr(kaldi::nnet1::AffineTransform *this, float a2, int a3)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(this);
  v6 = kaldi::nnet1::AffineTransform::Linearity(this);
  v7 = -(a2 * *(this + 59));
  v8 = kaldi::nnet1::AffineTransform::LinearityCorr(this, a3);
  kaldi::CuMatrixBase<float>::AddMat(v6, v8, 111, v7, 1.0);
  kaldi::nnet1::AffineTransform::Bias(this);
  v9 = -(a2 * *(this + 60));
  kaldi::nnet1::AffineTransform::BiasCorr(this, a3);
  *&v10 = v9;

  return kaldi::CuVectorBase<float>::AddVec(v10, 1.0);
}

uint64_t kaldi::nnet1::QuantizedAffineTransform<signed char>::QuantizedAffineTransform(uint64_t a1, void *a2)
{
  *(a1 + 8) = a2[1];
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F2CFA848;
  kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1 + 48, a2[14]);
  kaldi::CuVector<float>::CuVector(a1 + 96, a2[15]);
  return a1;
}

void sub_1B56B7FC8(_Unwind_Exception *a1)
{
  kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v1 + 48);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::QuantizedAffineTransform<short>::QuantizedAffineTransform(uint64_t a1, void *a2)
{
  *(a1 + 8) = a2[1];
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F2CFA968;
  kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1 + 48, a2[14]);
  kaldi::CuVector<float>::CuVector(a1 + 96, a2[15]);
  return a1;
}

void sub_1B56B8058(_Unwind_Exception *a1)
{
  kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v1 + 48);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::VectorwiseQuantizedAffineTransform(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F2D18A68;
  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(a1 + 48, *(a2 + 112));
}

void sub_1B56B80E8(_Unwind_Exception *a1)
{
  kaldi::VectorwiseQuantizedMatrix<signed char>::~VectorwiseQuantizedMatrix(v1 + 48);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

void setInputFormatHelper(uint64_t *a1, uint64_t a2)
{
  v2 = a2 - 1;
  if (v2 >= 4)
  {
    v3 = EarLmLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B501D000, v3, OS_LOG_TYPE_DEFAULT, "Input type not recognized", v4, 2u);
    }
  }

  else
  {
    quasar::LmData::setInputType(*a1, v2);
  }
}

void sub_1B56B8194(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  v4 = EarLmLogger();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    setInputFormatHelper(v5, v3, v4);
  }

  else
  {
    setInputFormatHelper(v5, v4);
  }

  JUMPOUT(0x1B56B8180);
}

id EarLmLogger(void)
{
  if ((atomic_load_explicit(&qword_1EB90B798, memory_order_acquire) & 1) == 0)
  {
    EarLmLogger();
  }

  v1 = _MergedGlobals_3;

  return v1;
}

void sub_1B56B862C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 buf, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    if (a18)
    {
      (*(*a18 + 8))(a18);
    }

    v28 = __cxa_begin_catch(exception_object);
    v29 = EarLmLogger();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v30)
      {
        v31 = (*(*v28 + 16))(v28);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v31;
        _os_log_impl(&dword_1B501D000, v29, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }
    }

    else if (v30)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B501D000, v29, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56B85DCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56B88B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }

    if (a20 < 0)
    {
      operator delete(buf);
    }

    v22 = __cxa_begin_catch(exception_object);
    v23 = EarLmLogger();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v24)
      {
        v25 = (*(*v22 + 16))(v22);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }
    }

    else if (v24)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56B8874);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56B8B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 __p, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    if (a20 < 0)
    {
      operator delete(__p);
    }

    v22 = __cxa_begin_catch(exception_object);
    v23 = EarLmLogger();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v24)
      {
        v25 = (*(*v22 + 16))(v22);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v25;
        _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }
    }

    else if (v24)
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56B8B44);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56B8DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, __int128 buf, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    if (a14 < 0)
    {
      operator delete(__p);
    }

    if (a20 < 0)
    {
      operator delete(buf);
    }

    v22 = __cxa_begin_catch(exception_object);
    v23 = EarLmLogger();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v24)
      {
        v25 = (*(*v22 + 16))(v22);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }
    }

    else if (v24)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56B8D88);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56B900C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, __int128 buf, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    if (a14 < 0)
    {
      operator delete(__p);
    }

    if (a20 < 0)
    {
      operator delete(buf);
    }

    v22 = __cxa_begin_catch(exception_object);
    v23 = EarLmLogger();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v24)
      {
        v25 = (*(*v22 + 16))(v22);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }
    }

    else if (v24)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56B8FD0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56B91EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    if (a13 < 0)
    {
      operator delete(__p);
    }

    v15 = __cxa_begin_catch(exception_object);
    v16 = EarLmLogger();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v17)
      {
        v18 = (*(*v15 + 16))(v15);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v18;
        _os_log_impl(&dword_1B501D000, v16, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }
    }

    else if (v17)
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_1B501D000, v16, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56B91B8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56B9368(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56B94E4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2)
  {
    v12 = __cxa_begin_catch(a1);
    v13 = EarLmLogger();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v14)
      {
        v15 = (*(*v12 + 16))(v12);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_1B501D000, v13, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }
    }

    else if (v14)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B501D000, v13, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56B94A4);
  }

  _Unwind_Resume(a1);
}

void sub_1B56B9728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    quasar::PTree::~PTree(&a9);
    v11 = __cxa_begin_catch(exception_object);
    v12 = EarLmLogger();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v13)
      {
        v14 = (*(*v11 + 16))(v11);
        LODWORD(a9) = 136315138;
        *(&a9 + 4) = v14;
        _os_log_impl(&dword_1B501D000, v12, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &a9, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v13)
      {
        LOWORD(a9) = 0;
        _os_log_impl(&dword_1B501D000, v12, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &a9, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56B96E4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56B991C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  v10 = __cxa_begin_catch(exception_object);
  v11 = EarLmLogger();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    if (v12)
    {
      v13 = (*(*v10 + 16))(v10);
      LODWORD(a9) = 136315138;
      *(&a9 + 4) = v13;
      v14 = "Internal C++ exception: %s";
      v15 = v11;
      v16 = 12;
LABEL_7:
      _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, v14, &a9, v16);
    }
  }

  else if (v12)
  {
    LOWORD(a9) = 0;
    v14 = "Internal unknown exception";
    v15 = v11;
    v16 = 2;
    goto LABEL_7;
  }

  __cxa_end_catch();
  JUMPOUT(0x1B56B98D4);
}

void sub_1B56B9D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 __p, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    if (a24 < 0)
    {
      operator delete(__p);
    }

    v26 = __cxa_begin_catch(exception_object);
    v27 = EarLmLogger();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v28)
      {
        v29 = (*(*v26 + 16))(v26);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v29;
        _os_log_impl(&dword_1B501D000, v27, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }
    }

    else if (v28)
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_1B501D000, v27, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56B9C60);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BA0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, char a24)
{
  if (a2)
  {
    if (a24 == 1 && a23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a23);
    }

    if (*(v24 - 57) < 0)
    {
      operator delete(*(v24 - 80));
    }

    v27 = __cxa_begin_catch(exception_object);
    v28 = EarLmLogger();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v29)
      {
        v30 = (*(*v27 + 16))(v27);
        *(v24 - 80) = 136315138;
        *(v24 - 76) = v30;
        _os_log_impl(&dword_1B501D000, v28, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", (v24 - 80), 0xCu);
      }
    }

    else if (v29)
    {
      *(v24 - 80) = 0;
      _os_log_impl(&dword_1B501D000, v28, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", (v24 - 80), 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56BA068);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BA51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    v18 = __cxa_begin_catch(exception_object);
    v19 = EarLmLogger();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v20)
      {
        v21 = (*(*v18 + 16))(v18);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v21;
        _os_log_impl(&dword_1B501D000, v19, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v20)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v19, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BA4E4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BA688(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  v3 = EarLmLogger();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    [_EARLmModel setWeight:v4];
  }

  else
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts:v3];
  }

  __cxa_end_catch();
  JUMPOUT(0x1B56BA674);
}

void sub_1B56BA784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = EarLmLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v16)
      {
        v17 = (*(*v14 + 16))(v14);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v17;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v16)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BA74CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BA934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = EarLmLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v16)
      {
        v17 = (*(*v14 + 16))(v14);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v17;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }
    }

    else if (v16)
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56BA900);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BB130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BB17C(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  v3 = EarLmLogger();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    [_EARLmModel setWeight:v4];
  }

  else
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts:v3];
  }

  __cxa_end_catch();
  JUMPOUT(0x1B56BB16CLL);
}

void sub_1B56BB27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = EarLmLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v16)
      {
        v17 = (*(*v14 + 16))(v14);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v17;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v16)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BB244);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BB5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    quasar::PTree::~PTree(&a9);
    v11 = __cxa_begin_catch(exception_object);
    v12 = EarLmLogger();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v13)
      {
        v14 = (*(*v11 + 16))(v11);
        LODWORD(a9) = 136315138;
        *(&a9 + 4) = v14;
        _os_log_impl(&dword_1B501D000, v12, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &a9, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v13)
      {
        LOWORD(a9) = 0;
        _os_log_impl(&dword_1B501D000, v12, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &a9, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BB564);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BC07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = EarLmLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v16)
      {
        v17 = (*(*v14 + 16))(v14);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v17;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }
    }

    else if (v16)
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56BC014);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BC2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 __p, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = EarLmLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = (*(*v20 + 16))(v20);
      LODWORD(__p) = 136315138;
      *(&__p + 4) = v22;
      _os_log_impl(&dword_1B501D000, v21, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56BC264);
  }

  _Unwind_Resume(a1);
}

void sub_1B56BC818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = EarLmLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v16)
      {
        v17 = (*(*v14 + 16))(v14);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v17;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v16)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BC7E0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BCB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 __p, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    if (a20 < 0)
    {
      operator delete(__p);
    }

    if (a15 < 0)
    {
      operator delete(a10);
    }

    v22 = __cxa_begin_catch(exception_object);
    v23 = EarLmLogger();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v24)
      {
        v25 = (*(*v22 + 16))(v22);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v25;
        _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v24)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BCB28);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BCFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, __int128 buf, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    if (a11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    }

    if (a15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a15);
    }

    if (a21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a21);
    }

    v28 = __cxa_begin_catch(exception_object);
    v29 = EarLmLogger();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v30)
      {
        v31 = (*(*v28 + 16))(v28);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v31;
        _os_log_impl(&dword_1B501D000, v29, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }
    }

    else if (v30)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B501D000, v29, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56BCDF0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BD3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (a19 == 1 && a18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a18);
    }

    if (*(v26 - 41) < 0)
    {
      operator delete(*(v26 - 64));
    }

    v29 = __cxa_begin_catch(exception_object);
    v30 = EarLmLogger();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v31)
      {
        v32 = (*(*v29 + 16))(v29);
        *(v26 - 64) = 136315138;
        *(v26 - 60) = v32;
        _os_log_impl(&dword_1B501D000, v30, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", (v26 - 64), 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v31)
      {
        *(v26 - 64) = 0;
        _os_log_impl(&dword_1B501D000, v30, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", (v26 - 64), 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BD364);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BD600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = EarLmLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v16)
      {
        v17 = (*(*v14 + 16))(v14);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v17;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }
    }

    else if (v16)
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56BD5CCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BD8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, __int128 __p, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    if (a24 < 0)
    {
      operator delete(__p);
    }

    v26 = __cxa_begin_catch(exception_object);
    v27 = EarLmLogger();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v28)
      {
        v29 = (*(*v26 + 16))(v26);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v29;
        _os_log_impl(&dword_1B501D000, v27, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v28)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_1B501D000, v27, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BD858);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BDE00(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, std::__shared_weak_count *a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 buf)
{
  if (a2)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }

    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    if (a19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a19);
    }

    *(v29 - 224) = &a13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v29 - 224));
    if (a17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    }

    quasar::SystemConfig::~SystemConfig(&buf);
    v32 = __cxa_begin_catch(a1);
    v33 = EarLmLogger();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v34)
      {
        v35 = (*(*v32 + 16))(v32);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v35;
        _os_log_impl(&dword_1B501D000, v33, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v34)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v33, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BDDA0);
  }

  _Unwind_Resume(a1);
}

void sub_1B56BE410(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, std::__shared_weak_count *a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 buf)
{
  if (a2)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }

    if (a17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    }

    *(v27 - 224) = &a11;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v27 - 224));
    if (a15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a15);
    }

    quasar::SystemConfig::~SystemConfig(&buf);
    v30 = __cxa_begin_catch(a1);
    v31 = EarLmLogger();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v32)
      {
        v33 = (*(*v30 + 16))(v30);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v33;
        _os_log_impl(&dword_1B501D000, v31, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v32)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v31, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BE3B0);
  }

  _Unwind_Resume(a1);
}

void sub_1B56BE8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 buf, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    if (a20 < 0)
    {
      operator delete(__p);
    }

    if (a31 < 0)
    {
      operator delete(buf);
    }

    v33 = __cxa_begin_catch(exception_object);
    v34 = EarLmLogger();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v35)
      {
        v36 = (*(*v33 + 16))(v33);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v36;
        _os_log_impl(&dword_1B501D000, v34, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }
    }

    else if (v35)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B501D000, v34, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56BE804);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BEBE0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, __int128 buf)
{
  if (a2)
  {
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    quasar::PTree::~PTree(&buf);
    v15 = __cxa_begin_catch(a1);
    v16 = EarLmLogger();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v17)
      {
        v18 = (*(*v15 + 16))(v15);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v18;
        _os_log_impl(&dword_1B501D000, v16, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v17)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v16, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BEBA0);
  }

  _Unwind_Resume(a1);
}

void sub_1B56BEE50(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  v3 = EarLmLogger();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    [_EARLmModel setWeight:v4];
  }

  else
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts:v3];
  }

  __cxa_end_catch();
  JUMPOUT(0x1B56BEE34);
}

void sub_1B56BF028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, __int128 buf, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }

    if (a14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a14);
    }

    v21 = __cxa_begin_catch(exception_object);
    v22 = EarLmLogger();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v23)
      {
        v24 = (*(*v21 + 16))(v21);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v24;
        _os_log_impl(&dword_1B501D000, v22, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v23)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v22, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BEFD8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BF384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, __int128 buf, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }

    if (a26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a26);
    }

    v33 = __cxa_begin_catch(exception_object);
    v34 = EarLmLogger();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v35)
      {
        v36 = (*(*v33 + 16))(v33);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v36;
        _os_log_impl(&dword_1B501D000, v34, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v35)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v34, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BF328);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BF56C(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  v3 = EarLmLogger();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    [_EARLmModel setWeight:v4];
  }

  else
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts:v3];
  }

  __cxa_end_catch();
  JUMPOUT(0x1B56BF55CLL);
}

void sub_1B56BF734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(exception_object);
    v21 = EarLmLogger();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v22)
      {
        v23 = (*(*v20 + 16))(v20);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v23;
        _os_log_impl(&dword_1B501D000, v21, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v22)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v21, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BF6F4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BF9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, __int128 buf, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }

    if (a14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a14);
    }

    v21 = __cxa_begin_catch(exception_object);
    v22 = EarLmLogger();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v23)
      {
        v24 = (*(*v21 + 16))(v21);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v24;
        _os_log_impl(&dword_1B501D000, v22, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v23)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v22, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BF96CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BFD18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, __int128 buf, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }

    if (a26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a26);
    }

    v33 = __cxa_begin_catch(exception_object);
    v34 = EarLmLogger();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v35)
      {
        v36 = (*(*v33 + 16))(v33);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v36;
        _os_log_impl(&dword_1B501D000, v34, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v35)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v34, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56BFCBCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56BFF00(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  v3 = EarLmLogger();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    [_EARLmModel setWeight:v4];
  }

  else
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts:v3];
  }

  __cxa_end_catch();
  JUMPOUT(0x1B56BFEF0);
}

_EAROovToken *_earOovToken(const quasar::AppLmData::Oov *a1)
{
  v2 = [_EAROovToken alloc];
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  v5 = EARHelpers::ContainerToNSSet<std::set<std::string>>(a1 + 3);
  v6 = [(_EAROovToken *)v2 initWithOrthography:v4 prons:v5 frequency:*(a1 + 12)];

  return v6;
}

void sub_1B56C0350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, __int128 buf, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {

    *&buf = &a10;
    std::vector<quasar::AppLmData::Oov>::__destroy_vector::operator()[abi:ne200100](&buf);
    v20 = __cxa_begin_catch(exception_object);
    v21 = EarLmLogger();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v22)
      {
        v23 = (*(*v20 + 16))(v20);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v23;
        _os_log_impl(&dword_1B501D000, v21, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v22)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v21, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56C0308);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56C08B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 buf, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    if (a18)
    {
      (*(*a18 + 8))(a18);
    }

    v28 = __cxa_begin_catch(exception_object);
    v29 = EarLmLogger();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v30)
      {
        v31 = (*(*v28 + 16))(v28);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v31;
        _os_log_impl(&dword_1B501D000, v29, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }
    }

    else if (v30)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B501D000, v29, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56C0864);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56C0B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, __int128 __p, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    if (a20 < 0)
    {
      operator delete(__p);
    }

    v22 = __cxa_begin_catch(exception_object);
    v23 = EarLmLogger();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v24)
      {
        v25 = (*(*v22 + 16))(v22);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v25;
        _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }
    }

    else if (v24)
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56C0B38);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56C0DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, __int128 __p, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    if (a20 < 0)
    {
      operator delete(__p);
    }

    v22 = __cxa_begin_catch(exception_object);
    v23 = EarLmLogger();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v24)
      {
        v25 = (*(*v22 + 16))(v22);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v25;
        _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }
    }

    else if (v24)
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56C0DA0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56C0FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = EarLmLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v16)
      {
        v17 = (*(*v14 + 16))(v14);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v17;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }
    }

    else if (v16)
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56C0F9CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56C1160(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56C126C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = EarLmLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v16)
      {
        v17 = (*(*v14 + 16))(v14);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v16)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56C1224);
  }

  _Unwind_Resume(a1);
}

void sub_1B56C1598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int128 buf, int a29, __int16 a30, char a31, char a32)
{
  if (a2)
  {
    v33 = __cxa_begin_catch(exception_object);
    v34 = EarLmLogger();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v35)
      {
        v36 = (*(*v33 + 16))(v33);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v36;
        _os_log_impl(&dword_1B501D000, v34, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v35)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v34, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56C1550);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56C1920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int128 buf, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    v31 = __cxa_begin_catch(exception_object);
    v32 = EarLmLogger();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v33)
      {
        v34 = (*(*v31 + 16))(v31);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v34;
        _os_log_impl(&dword_1B501D000, v32, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v33)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v32, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56C18D8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56C1B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = EarLmLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v16)
      {
        v17 = (*(*v14 + 16))(v14);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v17;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }
    }

    else if (v16)
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B56C1B34);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B56C1DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    quasar::PTree::~PTree(&a9);
    v11 = __cxa_begin_catch(exception_object);
    v12 = EarLmLogger();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v13)
      {
        v14 = (*(*v11 + 16))(v11);
        LODWORD(a9) = 136315138;
        *(&a9 + 4) = v14;
        _os_log_impl(&dword_1B501D000, v12, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &a9, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v13)
      {
        LOWORD(a9) = 0;
        _os_log_impl(&dword_1B501D000, v12, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &a9, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B56C1DACLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::PersonalizedLmData>::__shared_ptr_emplace[abi:ne200100]<std::string,char const(&)[1],std::unique_ptr<quasar::TextTokenizer>,std::string,BOOL,BOOL,std::allocator<quasar::PersonalizedLmData>,0>(void *a1, uint64_t a2, char *a3, uint64_t *a4, uint64_t a5, unsigned __int8 *a6, unsigned __int8 *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D27CD8;
  std::allocator<quasar::PersonalizedLmData>::construct[abi:ne200100]<quasar::PersonalizedLmData,std::string,char const(&)[1],std::unique_ptr<quasar::TextTokenizer>,std::string,BOOL,BOOL>(&v9, (a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

void std::__shared_ptr_emplace<quasar::PersonalizedLmData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D27CD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::PersonalizedLmData>::construct[abi:ne200100]<quasar::PersonalizedLmData,std::string,char const(&)[1],std::unique_ptr<quasar::TextTokenizer>,std::string,BOOL,BOOL>(int a1, uint64_t a2, uint64_t a3, char *__s, uint64_t *a5, uint64_t a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v14 = *a5;
  *a5 = 0;
  v16 = v14;
  quasar::PersonalizedLmData::PersonalizedLmData(a2, a3, __p, &v16, a6, *a7, *a8);
  v15 = v16;
  v16 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B56C2200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    [_EARPhoneticMatchBuilder initWithModelRoot:a2 jsonConfigFile:? dataFeeds:?];
  }

  std::allocator<quasar::RecogAudioBuffer>::construct[abi:ne200100]<quasar::RecogAudioBuffer,unsigned long &,int,int,BOOL,char const(&)[1],std::shared_ptr<kaldi::Timer const>,int>(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::lm::TokenStringAndCount>::__init_with_size[abi:ne200100]<quasar::lm::TokenStringAndCount*,quasar::lm::TokenStringAndCount*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::lm::TokenStringAndCount>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B56C228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::lm::TokenStringAndCount>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::lm::TokenStringAndCount>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::lm::TokenStringAndCount>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::lm::TokenStringAndCount>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

quasar::lm::TokenStringAndCount *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::lm::TokenStringAndCount>,quasar::lm::TokenStringAndCount*,quasar::lm::TokenStringAndCount*,quasar::lm::TokenStringAndCount*>(uint64_t a1, quasar::lm::TokenStringAndCount *a2, quasar::lm::TokenStringAndCount *a3, quasar::lm::TokenStringAndCount *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      quasar::lm::TokenStringAndCount::TokenStringAndCount(v4, v6);
      v6 = (v6 + 128);
      v4 = (v11 + 128);
      v11 = (v11 + 128);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::lm::TokenStringAndCount>,quasar::lm::TokenStringAndCount*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::lm::TokenStringAndCount>,quasar::lm::TokenStringAndCount*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::lm::TokenStringAndCount>,std::reverse_iterator<quasar::lm::TokenStringAndCount*>,std::reverse_iterator<quasar::lm::TokenStringAndCount*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::lm::TokenStringAndCount>,std::reverse_iterator<quasar::lm::TokenStringAndCount*>,std::reverse_iterator<quasar::lm::TokenStringAndCount*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v11[3] = v5;
    v11[4] = v6;
    v8 = a3;
    do
    {
      v11[0] = (v8 - 24);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
      v9 = *(v8 - 48);
      if (v9)
      {
        *(v8 - 40) = v9;
        operator delete(v9);
      }

      v10 = *(v8 - 72);
      if (v10)
      {
        *(v8 - 64) = v10;
        operator delete(v10);
      }

      v11[0] = (v8 - 96);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
      if (*(v8 - 97) < 0)
      {
        operator delete(*(v8 - 120));
      }

      v8 -= 128;
    }

    while (v8 != a5);
  }
}

void std::vector<quasar::lm::TokenStringAndCount>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::lm::TokenStringAndCount>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::lm::TokenStringAndCount>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 128)
  {
    v6 = (i - 24);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
    v4 = *(i - 48);
    if (v4)
    {
      *(i - 40) = v4;
      operator delete(v4);
    }

    v5 = *(i - 72);
    if (v5)
    {
      *(i - 64) = v5;
      operator delete(v5);
    }

    v6 = (i - 96);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
    if (*(i - 97) < 0)
    {
      operator delete(*(i - 120));
    }
  }

  a1[1] = v2;
}

void *std::__shared_ptr_emplace<quasar::NgramSrilmInterpolationConfig>::__shared_ptr_emplace[abi:ne200100]<quasar::SystemConfig &,std::string,std::allocator<quasar::NgramSrilmInterpolationConfig>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D27D28;
  std::allocator<quasar::NgramSrilmInterpolationConfig>::construct[abi:ne200100]<quasar::NgramSrilmInterpolationConfig,quasar::SystemConfig &,std::string>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::NgramSrilmInterpolationConfig>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D27D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::NgramSrilmInterpolationConfig>::construct[abi:ne200100]<quasar::NgramSrilmInterpolationConfig,quasar::SystemConfig &,std::string>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::NgramSrilmInterpolationConfig::NgramSrilmInterpolationConfig(a2, a3, a4, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B56C2790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::LmEvaluator>::__shared_ptr_emplace[abi:ne200100]<std::string,std::string,std::string,std::allocator<quasar::LmEvaluator>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D27D78;
  quasar::LmEvaluator::LmEvaluator(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::LmEvaluator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D27D78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::LmLoader2>::__shared_ptr_emplace[abi:ne200100]<char const(&)[1],std::allocator<quasar::LmLoader2>,0>(void *a1, char *__s)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D27DC8;
  std::allocator<quasar::LmLoader2>::construct[abi:ne200100]<quasar::LmLoader2,char const(&)[1]>(&v4, (a1 + 3), __s);
  return a1;
}

void std::__shared_ptr_emplace<quasar::LmLoader2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D27DC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::LmLoader2>::construct[abi:ne200100]<quasar::LmLoader2,char const(&)[1]>(int a1, uint64_t a2, char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  quasar::LmLoader2::LmLoader2(a2);
  if (v5 < 0)
  {
    operator delete(__p);
  }
}

void sub_1B56C2AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::LmLoader2>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<quasar::LmLoader2>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D27DC8;
  quasar::LmLoader2::LmLoader2(a1 + 3);
  return a1;
}

void *std::__shared_ptr_emplace<quasar::AppLmData>::__shared_ptr_emplace[abi:ne200100]<std::string,char const(&)[1],std::unique_ptr<quasar::TextTokenizer>,std::string,std::allocator<quasar::AppLmData>,0>(void *a1, uint64_t a2, char *a3, uint64_t *a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D27E18;
  std::allocator<quasar::AppLmData>::construct[abi:ne200100]<quasar::AppLmData,std::string,char const(&)[1],std::unique_ptr<quasar::TextTokenizer>,std::string>(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<quasar::AppLmData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D27E18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::AppLmData>::construct[abi:ne200100]<quasar::AppLmData,std::string,char const(&)[1],std::unique_ptr<quasar::TextTokenizer>,std::string>(int a1, uint64_t a2, uint64_t a3, char *__s, uint64_t *a5, uint64_t a6)
{
  std::string::basic_string[abi:ne200100]<0>(v16, __s);
  v10 = *a5;
  *a5 = 0;
  v15 = v10;
  std::string::basic_string[abi:ne200100]<0>(__p, "\\unknown-first");
  v12 = 10000;
  quasar::AppLmData::AppLmData(a2, a3, v16, &v15, a6, __p, &v12);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = v15;
  v15 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_1B56C2E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::InterpolateLogScoresLinearly(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8) - *a1;
  if (!v4)
  {
    return 1;
  }

  v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  v7 = *a2;
  if (v6 == (*(a2 + 8) - *a2) >> 2)
  {
    v8 = v3[1] - *v3;
    if (v8)
    {
      v11 = *v7;
      if (v6 >= 2)
      {
        v12 = v6 - 1;
        v13 = v3 + 4;
        v14 = v7 + 1;
        while (*v13 - *(v13 - 1) == v8)
        {
          v15 = *v14++;
          v11 = v11 + v15;
          v13 += 3;
          if (!--v12)
          {
            goto LABEL_8;
          }
        }

        if (kaldi::g_kaldi_verbose_level < -1)
        {
          return 0;
        }

        kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "there are different number of items in each vector", 50);
        goto LABEL_42;
      }

LABEL_8:
      if (v11 != 1.0 && (COERCE_INT(fabs(v11 + -1.0)) > 2139095039 || fabsf(v11 + -1.0) > ((fabsf(v11) + 1.0) * 0.001)))
      {
        if (kaldi::g_kaldi_verbose_level < -1)
        {
          return 0;
        }

        kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "weights should sum to one (i.e. not in log scale)", 49);
        goto LABEL_42;
      }

      v16 = v8 >> 2;
      std::vector<float>::vector[abi:ne200100](v45, v6);
      v17 = *a2;
      v18 = v45[0];
      if (v6 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v6;
      }

      v20 = v19;
      do
      {
        v21 = *v17++;
        *v18++ = logf(v21);
        --v20;
      }

      while (v20);
      std::vector<float>::vector[abi:ne200100](&__p, v6);
      v22 = 0;
      v23 = v45[0];
      v24 = *a1;
      v26 = __p;
      v25 = v44;
      v27 = (v44 - __p) >> 2;
      v28 = (__p + 4);
      v29 = *a3;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v42 = (__p + 4);
      do
      {
        v30 = 0;
        v31 = v24;
        do
        {
          v32 = *v31;
          v31 += 3;
          v26[v30] = v23[v30] + *(v32 + 4 * v22);
          ++v30;
        }

        while (v19 != v30);
        if (v27)
        {
          if (v27 == 1)
          {
            v33 = *v26;
          }

          else
          {
            v34 = *v26;
            if (v28 != v25)
            {
              v35 = v28;
              do
              {
                v36 = *v35++;
                v37 = v36;
                if (v36 > v34)
                {
                  v34 = v37;
                }
              }

              while (v35 != v25);
            }

            v38 = 0.0;
            if (v26 != v25)
            {
              v39 = v26;
              do
              {
                v40 = *v39 - v34;
                if (v40 >= -15.942)
                {
                  v38 = v38 + expf(v40);
                }

                ++v39;
              }

              while (v39 != v25);
            }

            v33 = v34 + logf(v38);
            v28 = v42;
          }
        }

        else
        {
          v33 = -INFINITY;
        }

        *(v29 + 4 * v22++) = v33;
      }

      while (v22 != v16);
      if (__p)
      {
        v44 = __p;
        operator delete(__p);
      }

      if (v45[0])
      {
        v45[1] = v45[0];
        operator delete(v45[0]);
      }
    }

    return 1;
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "there are different number of items in the weights list", 55);
LABEL_42:
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v45);
  }

  return 0;
}

uint64_t kaldi::quasar::EstimateLinearWeights(uint64_t a1, std::vector<unsigned int> *this, uint64_t a3, float a4)
{
  this->__end_ = this->__begin_;
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v6)
  {
    v8 = v6 - 1;
    if (v6 == 1)
    {
      LODWORD(v104[0].__locale_) = 1065353216;
      std::vector<float>::push_back[abi:ne200100](&this->__begin_, v104);
    }

    else
    {
      v9 = v5[1];
      v10 = v9 - *v5;
      if (v9 != *v5)
      {
        v13 = v5 + 4;
        do
        {
          if (*v13 - *(v13 - 1) != v10)
          {
            if (kaldi::g_kaldi_verbose_level >= -1)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v104);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "there are different number of items in each vector", 50);
              kaldi::KaldiWarnMessage::~KaldiWarnMessage(v104);
            }

            return 0;
          }

          v13 += 3;
          --v8;
        }

        while (v8);
        std::vector<int>::resize(this, 0xAAAAAAAAAAAAAAABLL * (v4 - v5));
        std::vector<float>::vector[abi:ne200100](&v102, 0xAAAAAAAAAAAAAAABLL * (v4 - v5));
        std::vector<float>::vector[abi:ne200100](&v100, 0xAAAAAAAAAAAAAAABLL * (v4 - v5));
        v14 = v10 >> 2;
        v15 = log(1.0 / v6);
        if (v4 != v5)
        {
          *&v15 = v15;
          v16 = 0xAAAAAAAAAAAAAAABLL * (v4 - v5);
          v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v18 = vdupq_n_s64(v16 - 1);
          v19 = xmmword_1B5AE0050;
          v20 = xmmword_1B5AE0060;
          v21 = v102 + 8;
          v22 = vdupq_n_s64(4uLL);
          do
          {
            v23 = vmovn_s64(vcgeq_u64(v18, v20));
            if (vuzp1_s16(v23, *&v15).u8[0])
            {
              *(v21 - 2) = LODWORD(v15);
            }

            if (vuzp1_s16(v23, *&v15).i8[2])
            {
              *(v21 - 1) = LODWORD(v15);
            }

            if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
            {
              *v21 = LODWORD(v15);
              v21[1] = LODWORD(v15);
            }

            v19 = vaddq_s64(v19, v22);
            v20 = vaddq_s64(v20, v22);
            v21 += 4;
            v17 -= 4;
          }

          while (v17);
        }

        std::vector<std::vector<float>>::vector[abi:ne200100](v99, v10 >> 2);
        std::vector<float>::vector[abi:ne200100](v98, v10 >> 2);
        v88 = this;
        std::vector<float>::vector[abi:ne200100](&__p, v10 >> 2);
        v24 = 0;
        __sz = 0xAAAAAAAAAAAAAAABLL * (v4 - v5);
        v25 = __sz;
        if (v14 <= 1)
        {
          v14 = 1;
        }

        v90 = v5;
        v91 = v4;
        v89 = a3;
        while (v24 != a3)
        {
          v92 = v24;
          v26 = 0;
          v27 = v99[0];
          do
          {
            std::vector<int>::resize((v27 + 24 * v26), __sz);
            v27 = v99[0];
            if (v4 == v5)
            {
              v31 = *(v99[0] + 24 * v26);
            }

            else
            {
              v28 = 0;
              v29 = v102;
              v30 = *a1;
              v31 = *(v99[0] + 24 * v26);
              do
              {
                v32 = *v30;
                v30 += 3;
                v31[v28] = v29[v28] + *(v32 + 4 * v26);
                ++v28;
              }

              while (__sz != v28);
            }

            v33 = *(v27 + 24 * v26 + 8);
            v34 = v33 - v31;
            if (v34)
            {
              if (v34 == 1)
              {
                v35 = *v31;
              }

              else
              {
                v36 = v31 + 1;
                v37 = *v31;
                while (v36 != v33)
                {
                  v38 = *v36++;
                  v39 = v38;
                  if (v38 > v37)
                  {
                    v37 = v39;
                  }
                }

                v40 = 0.0;
                while (v31 != v33)
                {
                  v41 = *v31 - v37;
                  if (v41 >= -15.942)
                  {
                    v40 = v40 + expf(v41);
                  }

                  ++v31;
                }

                v35 = v37 + logf(v40);
              }
            }

            else
            {
              v35 = -INFINITY;
            }

            *(v98[0] + v26++) = v35;
          }

          while (v26 != v14);
          v42 = 0;
          v43 = v98[0];
          v44 = v99[0];
          do
          {
            while (v4 == v5)
            {
              if (++v42 == v14)
              {
                v48 = v100;
                goto LABEL_70;
              }
            }

            v45 = *(v44 + 24 * v42);
            v46 = __sz;
            do
            {
              *v45 = *v45 - v43[v42];
              ++v45;
              --v46;
            }

            while (v46);
            ++v42;
          }

          while (v42 != v14);
          v47 = 0;
          v48 = v100;
          v49 = v99[0];
          v51 = __p;
          v50 = v97;
          v52 = (v97 - __p) >> 2;
          v53 = (__p + 4);
          v93 = (__p + 4);
          do
          {
            v54 = 0;
            v55 = v49;
            do
            {
              v56 = *v55;
              v55 += 3;
              v51[v54++] = *(v56 + 4 * v47);
            }

            while (v14 != v54);
            if (v52)
            {
              if (v52 == 1)
              {
                v57 = *v51;
              }

              else
              {
                v58 = *v51;
                if (v53 != v50)
                {
                  v59 = v53;
                  do
                  {
                    v60 = *v59++;
                    v61 = v60;
                    if (v60 > v58)
                    {
                      v58 = v61;
                    }
                  }

                  while (v59 != v50);
                }

                v62 = 0.0;
                if (v51 != v50)
                {
                  v63 = v51;
                  do
                  {
                    v64 = *v63 - v58;
                    if (v64 >= -15.942)
                    {
                      v62 = v62 + expf(v64);
                    }

                    ++v63;
                  }

                  while (v63 != v50);
                }

                v57 = v58 + logf(v62);
                v53 = v93;
              }
            }

            else
            {
              v57 = -INFINITY;
            }

            v48[v47++] = v57;
          }

          while (v47 != __sz);
          v5 = v90;
          v4 = v91;
          a3 = v89;
LABEL_70:
          v65 = v101;
          v66 = (v101 - v48) >> 2;
          if (v66)
          {
            if (v66 == 1)
            {
              v67 = *v48;
            }

            else
            {
              v68 = v48 + 1;
              v69 = *v48;
              while (v68 != v101)
              {
                v70 = *v68++;
                v71 = v70;
                if (v70 > v69)
                {
                  v69 = v71;
                }
              }

              v72 = 0.0;
              if (v48 != v101)
              {
                v73 = v48;
                do
                {
                  v74 = *v73 - v69;
                  if (v74 >= -15.942)
                  {
                    v72 = v72 + expf(v74);
                  }

                  ++v73;
                }

                while (v73 != v65);
              }

              v67 = v69 + logf(v72);
            }
          }

          else
          {
            v67 = -INFINITY;
          }

          v75 = v48;
          v76 = __sz;
          if (v4 != v5)
          {
            do
            {
              *v75 = *v75 - v67;
              ++v75;
              --v76;
            }

            while (v76);
          }

          if (v4 == v5)
          {
            v77 = 0;
          }

          else if (vabds_f32(*v48, *v102) <= a4)
          {
            v78 = 1;
            do
            {
              v79 = v78;
              if (__sz == v78)
              {
                break;
              }

              v80 = vabds_f32(v48[v78], *(v102 + v78));
              ++v78;
            }

            while (v80 <= a4);
            v77 = v79 < __sz;
          }

          else
          {
            v77 = 1;
          }

          v100 = v102;
          v81 = v103;
          v102 = v48;
          *&v103 = v65;
          v24 = v92 + 1;
          *(&v103 + 1) = *(&v101 + 1);
          v101 = v81;
          if (!v77)
          {
            goto LABEL_98;
          }
        }

        v24 = a3;
LABEL_98:
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v104);
          v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "linear weights converged after ", 31);
          v83 = MEMORY[0x1B8C84C30](v82, v24);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, " iterations", 11);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v104);
        }

        if (v4 != v5)
        {
          v84 = v102;
          v85 = *v88;
          do
          {
            v86 = *v84++;
            *v85++ = expf(v86);
            --v25;
          }

          while (v25);
        }

        if (__p)
        {
          v97 = __p;
          operator delete(__p);
        }

        if (v98[0])
        {
          v98[1] = v98[0];
          operator delete(v98[0]);
        }

        v104[0].__locale_ = v99;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v104);
        if (v100)
        {
          *&v101 = v100;
          operator delete(v100);
        }

        if (v102)
        {
          *&v103 = v102;
          operator delete(v102);
        }
      }
    }
  }

  return 1;
}

float kaldi::quasar::GetTotalCostFromLinearCompactLattice(void *a1, _BYTE *a2)
{
  v4 = (*(*a1 + 24))(a1);
  v13 = 0;
  v14 = 0;
  v5 = 0.0;
  v15 = 0;
  while (1)
  {
    (*(*a1 + 32))(&v9, a1, v4);
    v12 = v9;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v13, __p, v11, (v11 - __p) >> 2);
    v18 = *(&v12 + 1);
    v19 = v12;
    v17 = 2139095040;
    v16 = INFINITY;
    v6 = *&v12 == INFINITY && v18 == v16 && v14 == v13;
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

    if (!v6)
    {
      *a2 = 1;
      v5 = v5 + *&v12;
      goto LABEL_15;
    }

    v7 = *(*(*(a1[1] + 64) + 8 * v4) + 48);
    if (*(*(*(a1[1] + 64) + 8 * v4) + 56) == v7)
    {
      break;
    }

    v5 = v5 + *(v7 + 8);
    v4 = *(v7 + 40);
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "Last state of linear clat is not a final state (perhaps text contains \\CS-xx-start without \\CS-xx-end?) LM score will not be accurate.", 134);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v9);
  }

  *a2 = 0;
LABEL_15:
  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  return v5;
}

void sub_1B56C3B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&a9);
  v13 = *(v11 - 120);
  if (v13)
  {
    *(v11 - 112) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::ConvertLmeFsts(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *(v2 + 24);
      if (v5)
      {
        v6 = a2[1];
        if (v6 >= a2[2])
        {
          v8 = std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__emplace_back_slow_path<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const&>(a2, v2);
        }

        else
        {
          *v6 = *v2;
          *(v6 + 8) = *(v2 + 8);
          v7 = *(v2 + 16);
          *(v6 + 16) = v7;
          if (v7)
          {
            atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
            v5 = *(v2 + 24);
          }

          *(v6 + 24) = v5;
          v8 = v6 + 32;
        }

        a2[1] = v8;
      }

      else
      {
        v9 = *(v2 + 8);
        {
          v11 = *(v2 + 16);
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v12 = *v2;
          fst::quasar::MergeTrieFst::CurrentUnigramFst(v10, &v21);
          v13 = v21;
          v21 = 0uLL;
          v14 = *(v2 + 24);
          v22 = v12;
          v23 = v13;
          if (*(&v13 + 1))
          {
            atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v24 = v14;
          std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::push_back[abi:ne200100](a2, &v22);
          if (*(&v23 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
          }

          if (*(&v13 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
          }

          if (*(&v21 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
          }

          if (!v11)
          {
            goto LABEL_36;
          }

          v15 = v11;
        }

        else
        {
          v16 = *(v2 + 16);
          v19 = v9;
          v20 = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          kaldi::quasar::LmeFst::ConvertLmeFstForRescore(&v19, &v21);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          v17 = *v2;
          v18 = v21;
          if (*(&v21 + 1))
          {
            atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
            v23 = v18;
            atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          else
          {
            v23 = v21;
          }

          v22 = v17;
          v24 = 0;
          std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::push_back[abi:ne200100](a2, &v22);
          if (*(&v23 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
          }

          if (*(&v18 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
          }

          v15 = *(&v21 + 1);
          if (!*(&v21 + 1))
          {
            goto LABEL_36;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

LABEL_36:
      v2 += 32;
    }

    while (v2 != v3);
  }
}

void sub_1B56C3D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void **a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void kaldi::quasar::GetBestInterpWeights(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  memset(v3, 0, sizeof(v3));
  std::vector<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::__init_with_size[abi:ne200100]<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*,std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*>(v3, *a1, a1[1], (a1[1] - *a1) >> 4);
  kaldi::quasar::InterpolateLmWeightEstimator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InterpolateLmWeightEstimator(v4, v3);
  v2 = v3;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::VectorFst();
}

void sub_1B56C3F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  a10 = &a17;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a20);
  kaldi::quasar::InterpolateLmWeightEstimator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~InterpolateLmWeightEstimator((v21 - 96));
  v23 = *v20;
  if (*v20)
  {
    *(v20 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::InterpolateLmWeightEstimator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::ProcessOneSentence(uint64_t *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    return 1;
  }

  memset(&__p, 0, sizeof(__p));
  v3 = *a1;
  if (a1[1] == *a1)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = 8;
  do
  {
    v8 = kaldi::quasar::CalculateSequenceScoresFromDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(*(v3 + v5), a2, &__p);
    if ((v8 & 1) == 0)
    {
      break;
    }

    std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(a1[3] + v7 - 8, *(a1[3] + v7), __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
    ++v6;
    v3 = *a1;
    v5 += 16;
    v7 += 24;
  }

  while (v6 < (a1[1] - *a1) >> 4);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  return v8;
}

void sub_1B56C40F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::InterpolateLmWeightEstimator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::GetBestWeights(uint64_t a1, std::vector<unsigned int> *a2, int a3, uint64_t a4, float a5)
{
  if (a3)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "only linear weight estimation has been implemented now", 54);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v7);
    }

    return 0;
  }

  else
  {
    v6 = a1 + 24;

    return kaldi::quasar::EstimateLinearWeights(v6, a2, a4, a5);
  }
}

void kaldi::quasar::DeterminizeCompactLattice()
{
  kaldi::quasar::DeterminizeCompactLattice();
}

{
  fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst();
}

void sub_1B56C4288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&a9);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst((v9 - 48));
  _Unwind_Resume(a1);
}

void fst::DeterminizeLattice<fst::LatticeWeightTpl<float>,int>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v8);
  v9 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v9);
  fst::LatticeDeterminizer<fst::LatticeWeightTpl<float>,int>::LatticeDeterminizer(&v10, a1, a3, a4);
}

uint64_t kaldi::quasar::LoadRescoreInterpedLMs(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t **a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t *a9, unsigned int a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t a15)
{
  v64 = a4;
  kaldi::quasar::ConvertLmeFsts(a6, v63);
  v53 = *a9;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  memset(v59, 0, sizeof(v59));
  v17 = *a1;
  if (a1[1] != *a1)
  {
    v18 = 0;
    do
    {
      v19 = *(v17 + 16 * v18);
      v20 = *(v17 + 16 * v18 + 8);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        *(v55 + 8) = v19;
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        *(&v55[0] + 1) = *(v17 + 16 * v18);
        *&v55[1] = 0;
      }

      LODWORD(v55[0]) = a10;
      DWORD2(v55[1]) = -1;
      *(&v57 + 1) = 0;
      v58 = 0;
      *&v57 = &v57 + 8;
      kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::AddBackoffFst(v59, v55, v63, 1, 0, a13, 0x20000, &v57);
      std::__tree<int>::destroy(&v57, *(&v57 + 1));
      if (*&v55[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v55[1]);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      LODWORD(v55[0]) = 1065353216;
      std::vector<float>::push_back[abi:ne200100](&v60, v55);
      ++v18;
      v17 = *a1;
    }

    while (v18 < (a1[1] - *a1) >> 4);
  }

  v22 = *a5;
  v21 = a5[1];
  if (*a5 == v21)
  {
    goto LABEL_58;
  }

  v23 = 0;
  v24 = *a5;
  do
  {
    v25 = *v24;
    v24 += 2;
    v23 |= *(v25 + 8);
  }

  while (v24 != v21);
  if ((v23 & 1) == 0)
  {
LABEL_58:
    v26 = *a2;
    if (a2[1] != *a2)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        v29 = *(v26 + v27);
        *(&v57 + 1) = 0;
        v58 = 0;
        *&v57 = &v57 + 8;
        memset(v55, 0, sizeof(v55));
        v56 = 1065353216;
        v49 = v55;
        kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::AddNnlm(v59, v29, v63, a7, a8, &v57, v53, 1u, 0, a14);
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v55);
        std::__tree<int>::destroy(&v57, *(&v57 + 1));
        LODWORD(v55[0]) = 1065353216;
        std::vector<float>::push_back[abi:ne200100](&v60, v55);
        ++v28;
        v26 = *a2;
        v27 += 16;
      }

      while (v28 < (a2[1] - *a2) >> 4);
      v22 = *a5;
      v21 = a5[1];
    }
  }

  for (; v22 != v21; v22 += 2)
  {
    v30 = *v22;
    v31 = *(*v22 + 16);
    if (v31 > 0.0)
    {
      *(&v55[0] + 1) = 0;
      *&v55[1] = 0;
      *&v55[0] = v55 + 8;
      (*(*v30 + 16))(v30, v59, v63, a10, 1, 1, a13, v55, a7, a14, v49);
      std::__tree<int>::destroy(v55, *(&v55[0] + 1));
      v32 = v61;
      if (v61 >= v62)
      {
        v34 = v60;
        v35 = v61 - v60;
        v36 = (v61 - v60) >> 2;
        v37 = v36 + 1;
        if ((v36 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v38 = v62 - v60;
        if ((v62 - v60) >> 1 > v37)
        {
          v37 = v38 >> 1;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v39 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v60, v39);
        }

        *(4 * v36) = v31;
        v33 = 4 * v36 + 4;
        memcpy(0, v34, v35);
        v40 = v60;
        v60 = 0;
        v61 = v33;
        v62 = 0;
        if (v40)
        {
          operator delete(v40);
        }
      }

      else
      {
        *v61 = v31;
        v33 = (v32 + 1);
      }

      v61 = v33;
    }
  }

  if (*&v59[0] == *(&v59[0] + 1))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v55);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "no new LM defined", 17);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v55);
    }
  }

  else
  {
    v41 = *a3;
    v42 = a3[1];
    if (a15 && v41 == v42)
    {
      kaldi::quasar::GetBestInterpWeights(v59, v55);
    }

    if ((v42 - v41) >> 2 == (*(&v59[0] + 1) - *&v59[0]) >> 4)
    {
      memset(v55, 0, 24);
      if (v42 != v41)
      {
        v43 = 0;
        do
        {
          v44 = *(*&v59[0] + 16 * v43);
          v57 = v44;
          if (*(&v44 + 1))
          {
            atomic_fetch_add_explicit((*(&v44 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          LODWORD(v58) = *(v41 + 4 * v43);
          std::vector<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::push_back[abi:ne200100](v55, &v57);
          if (*(&v57 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v57 + 1));
          }

          ++v43;
          v41 = *a3;
        }

        while (v43 < (a3[1] - *a3) >> 2);
      }

      std::allocate_shared[abi:ne200100]<fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::vector<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>> &,fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WeightType &,0>();
    }

    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v55);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "total number of new LMs is ", 27);
      v46 = MEMORY[0x1B8C84C30](v45, (*(&v59[0] + 1) - *&v59[0]) >> 4);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " , but the number of interpolation weights is ", 46);
      MEMORY[0x1B8C84C30](v47, (a3[1] - *a3) >> 2);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v55);
    }
  }

  *&v55[0] = &v59[1] + 8;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](v55);
  *&v55[0] = v59;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](v55);
  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  *&v55[0] = v63;
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](v55);
  return 0;
}

void sub_1B56C4A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&a19);
  kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~DeterministicOnDemandFstCreator((v19 - 208));
  v21 = *(v19 - 160);
  if (v21)
  {
    *(v19 - 152) = v21;
    operator delete(v21);
  }

  a19 = (v19 - 136);
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::LimitWeights(float **a1, float **a2)
{
  if (kaldi::g_kaldi_verbose_level >= 5)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v47, 5);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "max_weights: ", 13);
    kaldi::JoinVectorToString<float>(a1, ",");
    if ((v46 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v46 & 0x80u) == 0)
    {
      v6 = v46;
    }

    else
    {
      v6 = v45;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, v6);
    if (v46 < 0)
    {
      operator delete(__p);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v47);
    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v47, 5);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Initial weights ", 16);
      kaldi::JoinVectorToString<float>(a2, ",");
      if ((v46 & 0x80u) == 0)
      {
        v8 = &__p;
      }

      else
      {
        v8 = __p;
      }

      if ((v46 & 0x80u) == 0)
      {
        v9 = v46;
      }

      else
      {
        v9 = v45;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
      if (v46 < 0)
      {
        operator delete(__p);
      }

      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v47);
    }
  }

  v10 = *a2;
  v11 = a2[1];
  v12 = v11 - *a2;
  v13 = *a1;
  v14 = a1[1];
  if (v12 == v14 - *a1)
  {
    if (v13 == v14)
    {
      return 1;
    }

    LODWORD(v15) = 0;
    v16 = v13;
    while (*v16 > 0.0)
    {
      if (*v16 >= 1.0)
      {
        v15 = v15;
      }

      else
      {
        v15 = (v15 + 1);
      }

      if (++v16 == v14)
      {
        if (v15)
        {
          if (v15 != 1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v47);
            v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Unimplemented. num_effective_max_weights > 1: ", 46);
            MEMORY[0x1B8C84C00](v43, v15);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v47);
          }

          if (v11 != v10)
          {
            v17 = 0;
            v18 = v12 >> 2;
            if (v18 <= 1)
            {
              v18 = 1;
            }

            v19 = 0.0;
            v20 = v18;
            v21 = *a2;
            v22 = v13;
            v23 = 0.0;
            do
            {
              v24 = *v21++;
              v25 = v24;
              v26 = *v22++;
              v27 = v23 + (v25 - v26);
              if (v25 <= v26)
              {
                v19 = v19 + v25;
                ++v17;
              }

              else
              {
                v23 = v27;
              }

              --v20;
            }

            while (v20);
            if (v23 > 0.001)
            {
              v28 = 0.0;
              do
              {
                v29 = *v10;
                v30 = *v13;
                if (*v10 <= *v13)
                {
                  v31 = v29 / v19;
                  if (v19 < 0.001)
                  {
                    v31 = 1.0 / v17;
                  }

                  v30 = v29 + (v31 * v23);
                }

                *v10++ = v30;
                v28 = v28 + v30;
                ++v13;
                --v18;
              }

              while (v18);
              v32 = kaldi::g_kaldi_verbose_level;
              if (v28 != 1.0)
              {
                v33 = fabs(v28 + -1.0);
                v34 = fabsf(v28 + -1.0) <= ((fabsf(v28) + 1.0) * 0.001) && SLODWORD(v33) < 2139095040;
                if (!v34 && kaldi::g_kaldi_verbose_level >= -1)
                {
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(v47);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "weights should sum to one (i.e. not in log scale)", 49);
                  kaldi::KaldiWarnMessage::~KaldiWarnMessage(v47);
                  v32 = kaldi::g_kaldi_verbose_level;
                }
              }

              if (v32 >= 5)
              {
                kaldi::KaldiVlogMessage::KaldiVlogMessage(v47, 5);
                v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Final weights: ", 15);
                kaldi::JoinVectorToString<float>(a2, ",");
                if ((v46 & 0x80u) == 0)
                {
                  v37 = &__p;
                }

                else
                {
                  v37 = __p;
                }

                if ((v46 & 0x80u) == 0)
                {
                  v38 = v46;
                }

                else
                {
                  v38 = v45;
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
                if (v46 < 0)
                {
                  operator delete(__p);
                }

                kaldi::KaldiVlogMessage::~KaldiVlogMessage(v47);
              }
            }
          }
        }

        return 1;
      }
    }

    if (kaldi::g_kaldi_verbose_level < -1)
    {
      return 0;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v47);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "LM should not have been added to DeterministicOnDemandFstCreator. max_weight <= 0: ", 83);
    std::ostream::operator<<();
    goto LABEL_69;
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v47);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Total number of weights is ", 27);
    v41 = MEMORY[0x1B8C84C30](v40, a2[1] - *a2);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " , but the number of max weights is ", 36);
    MEMORY[0x1B8C84C30](v42, a1[1] - *a1);
LABEL_69:
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v47);
  }

  return 0;
}

void sub_1B56C500C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  JUMPOUT(0x1B56C5004);
}

uint64_t kaldi::quasar::RescoreLatticeWithLanguageModels(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10, unsigned int a11, uint64_t *a12, uint64_t *a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18, int a19, int a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t *a24)
{
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v58, *a12, a12[1], (a12[1] - *a12) >> 2);
  v28 = a10[1];
  v57[0] = *a10;
  v57[1] = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RescoreInterpedLMs = kaldi::quasar::LoadRescoreInterpedLMs(a2, a4, &v58, a15, a6, a7, a8, a9, v57, a11, v44, a18, a21, a22, a1);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (RescoreInterpedLMs)
  {
    v30 = a10[1];
    v55[0] = *a10;
    v55[1] = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v31 = kaldi::quasar::LoadRescoreInterpedLMs(a3, a5, a13, a16, a6, a7, a8, a9, v55, a11, v45, a18, a21, a22, a1);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v31)
    {
      if (a24)
      {
        v33 = v61;
        v32 = v62;
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = a24[1];
        *a24 = v33;
        a24[1] = v32;
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }
      }

      v52 = v63;
      v53 = v64;
      if (v64)
      {
        atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v50 = v61;
      v51 = v62;
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      __asm { FMOV            V0.2S, #-1.0 }

      *&v56[0].__locale_ = -_D0;
      fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeDeterministicOnDemandFst(v54, &v52, &v50, v56);
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      v56[0].__locale_ = v54;
      std::allocate_shared[abi:ne200100]<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>,std::allocator<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>,fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::vector<int> const&,0>();
    }

    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v56);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "Failed to load rescore new LMs", 30);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v56);
    }

    if (a24)
    {
      v41 = v63;
      v40 = v64;
      if (v64)
      {
        atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v42 = a24[1];
      *a24 = v41;
      a24[1] = v40;
      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }
    }
  }

  else if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "Failed to load rescore old LMs", 30);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v56);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  return 0;
}