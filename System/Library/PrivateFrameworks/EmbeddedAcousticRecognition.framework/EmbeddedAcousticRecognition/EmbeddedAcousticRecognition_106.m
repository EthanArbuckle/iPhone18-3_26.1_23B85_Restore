void sub_1B5804CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  v23 = *(v21 - 176);
  if (v23)
  {
    *(v21 - 168) = v23;
    operator delete(v23);
  }

  a21 = (v21 - 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a9);
  _Unwind_Resume(a1);
}

void sub_1B5804D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void **a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  v32 = *(v30 - 176);
  if (v32)
  {
    *(v30 - 168) = v32;
    operator delete(v32);
  }

  a30 = (v30 - 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a9);
  _Unwind_Resume(a1);
}

void quasar::OnlineTransducerGraphSearchDecoder::writeRecordedStateAccessForFst(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37[19] = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 8);
  }

  if (v4)
  {
    if (*a2)
    {
      if (v8)
      {
        v9 = v8;
        v10 = *(a2 + 8);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (quasar::gLogLevel >= 4)
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
          v20 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Write accessed states for ", 26);
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

          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " to ", 4);
          v17 = *(a4 + 23);
          if (v17 >= 0)
          {
            v18 = a4;
          }

          else
          {
            v18 = *a4;
          }

          if (v17 >= 0)
          {
            v19 = *(a4 + 23);
          }

          else
          {
            v19 = *(a4 + 8);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v20);
        }

        std::ofstream::basic_ofstream(&v20);
        quasar::StateAccessRecordingFst::WriteRecordedStateAccesses(v9, &v20);
        if (!std::filebuf::close())
        {
          std::ios_base::clear((&v20 + *(v20 - 24)), *(&v22 + *(v20 - 24)) | 4);
        }

        *&v20 = *MEMORY[0x1E69E54D0];
        *(&v20 + *(v20 - 24)) = *(MEMORY[0x1E69E54D0] + 24);
        MEMORY[0x1B8C84A00](&v20 + 8);
        std::ostream::~ostream();
        MEMORY[0x1B8C85200](v37);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }
    }
  }

  else if (quasar::gLogLevel >= 5)
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
    v20 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "FST File empty", 14);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v20);
  }
}

void sub_1B58050DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineTransducerGraphSearchDecoder::writeRecordedStateAccesses(uint64_t a1, uint64_t a2)
{
  v63[2] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 2132) & 1) != 0 || *(a1 + 448) == 1)
  {
    v3 = *(a1 + 1984);
    v4 = (a1 + 1992);
    if (v3 != (a1 + 1992))
    {
      do
      {
        std::pair<std::string const,std::shared_ptr<quasar::PMRegexEnumerator>>::pair[abi:ne200100](&__str, v3 + 2);
        {
          goto LABEL_77;
        }

        v5 = v62;
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&v59, "");
        if (*(a2 + 23) < 0)
        {
          if (*(a2 + 8))
          {
LABEL_10:
            size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
            p_str = __str.__r_.__value_.__r.__words[0];
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_str = &__str;
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = __str.__r_.__value_.__l.__size_;
            }

            v8 = &p_str[-1].__r_.__value_.__r.__words[2] + 7;
            while (size)
            {
              v9 = v8[size--];
              if (v9 == 47)
              {
                v10 = size + 1;
                goto LABEL_45;
              }
            }

            v10 = 0;
LABEL_45:
            std::string::basic_string(v41, &__str, v10, 0xFFFFFFFFFFFFFFFFLL, &v58);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, 47, &v57);
            if (v41[23] >= 0)
            {
              v23 = v41;
            }

            else
            {
              v23 = *v41;
            }

            if (v41[23] >= 0)
            {
              v24 = v41[23];
            }

            else
            {
              v24 = *&v41[8];
            }

            v25 = std::string::append(&v57, v23, v24);
            v26 = *&v25->__r_.__value_.__l.__data_;
            v58.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
            *&v58.__r_.__value_.__l.__data_ = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            v27 = std::string::append(&v58, ".recorded_state_accesses");
            v28 = v27->__r_.__value_.__r.__words[0];
            v63[0] = v27->__r_.__value_.__l.__size_;
            *(v63 + 7) = *(&v27->__r_.__value_.__r.__words[1] + 7);
            v29 = HIBYTE(v27->__r_.__value_.__r.__words[2]);
            v27->__r_.__value_.__l.__size_ = 0;
            v27->__r_.__value_.__r.__words[2] = 0;
            v27->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v59.__r_.__value_.__l.__data_);
            }

            v59.__r_.__value_.__r.__words[0] = v28;
            v59.__r_.__value_.__l.__size_ = v63[0];
            *(&v59.__r_.__value_.__r.__words[1] + 7) = *(v63 + 7);
            *(&v59.__r_.__value_.__s + 23) = v29;
            if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v58.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v57.__r_.__value_.__l.__data_);
            }

            if ((v41[23] & 0x80000000) != 0)
            {
              v22 = *v41;
              goto LABEL_59;
            }

            goto LABEL_60;
          }
        }

        else if (*(a2 + 23))
        {
          goto LABEL_10;
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v11 = __str.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v58, v11 + 1);
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v58;
        }

        else
        {
          v12 = v58.__r_.__value_.__r.__words[0];
        }

        if (v11)
        {
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = &__str;
          }

          else
          {
            v13 = __str.__r_.__value_.__r.__words[0];
          }

          memmove(v12, v13, v11);
        }

        *(&v12->__r_.__value_.__l.__data_ + v11) = 46;
        v14 = getpid();
        std::to_string(&v57, v14);
        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v57;
        }

        else
        {
          v15 = v57.__r_.__value_.__r.__words[0];
        }

        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v16 = v57.__r_.__value_.__l.__size_;
        }

        v17 = std::string::append(&v58, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        *&v41[16] = *(&v17->__r_.__value_.__l + 2);
        *v41 = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        v19 = std::string::append(v41, ".recorded_state_accesses");
        v20 = v19->__r_.__value_.__r.__words[0];
        v63[0] = v19->__r_.__value_.__l.__size_;
        *(v63 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
        v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        v59.__r_.__value_.__r.__words[0] = v20;
        v59.__r_.__value_.__l.__size_ = v63[0];
        *(&v59.__r_.__value_.__r.__words[1] + 7) = *(v63 + 7);
        *(&v59.__r_.__value_.__s + 23) = v21;
        if ((v41[23] & 0x80000000) != 0)
        {
          operator delete(*v41);
        }

        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v57.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          v22 = v58.__r_.__value_.__r.__words[0];
LABEL_59:
          operator delete(v22);
        }

LABEL_60:
        v30 = quasar::filesystem::exists(&v59);
        if (v30)
        {
          if (quasar::gLogLevel >= 1)
          {
            v55 = 0u;
            v56 = 0u;
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
            v42 = 0u;
            memset(v41, 0, sizeof(v41));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
            v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "State access file [", 19);
            if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = &v59;
            }

            else
            {
              v32 = v59.__r_.__value_.__r.__words[0];
            }

            if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v33 = v59.__r_.__value_.__l.__size_;
            }

            v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "] exists", 8);
            quasar::QuasarErrorMessage::~QuasarErrorMessage(v41);
          }

          std::runtime_error::runtime_error(&v40, "State access file exists - not overwriting");
          std::runtime_error::~runtime_error(&v40);
        }

        v35 = v62;
        v39[0] = v61;
        v39[1] = v62;
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        quasar::OnlineTransducerGraphSearchDecoder::writeRecordedStateAccessForFst(v30, v39, &__str, &v59);
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
          if (!v5)
          {
            goto LABEL_77;
          }

LABEL_76:
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          goto LABEL_77;
        }

        if (v5)
        {
          goto LABEL_76;
        }

LABEL_77:
        if (v62)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v36 = *(v3 + 1);
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = *(v3 + 2);
            v38 = *v37 == v3;
            v3 = v37;
          }

          while (!v38);
        }

        v3 = v37;
      }

      while (v37 != v4);
    }
  }
}

void sub_1B580561C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v19 - 209) < 0)
  {
    operator delete(*(v19 - 232));
  }

  if (*(v19 - 185) < 0)
  {
    operator delete(*(v19 - 208));
  }

  if (*(v19 - 161) < 0)
  {
    operator delete(*(v19 - 184));
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>>::~pair(v19 - 160);
  _Unwind_Resume(a1);
}

void quasar::OnlineTransducerGraphSearchDecoder::resetAccessedStatesCounts(quasar::OnlineTransducerGraphSearchDecoder *this)
{
  if ((*(this + 2132) & 1) != 0 || *(this + 448) == 1)
  {
    v1 = *(this + 248);
    v2 = this + 1992;
    if (v1 != (this + 1992))
    {
      do
      {
        std::pair<std::string const,std::shared_ptr<quasar::PMRegexEnumerator>>::pair[abi:ne200100](&__p, v1 + 2);
        if (lpsrc)
        {
          if (v3)
          {
            v4 = v10;
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            quasar::StateAccessRecordingFst::ResetAccessedStatesCounts(v3);
            if (v4)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v4);
            }
          }
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v5 = *(v1 + 1);
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
            v6 = *(v1 + 2);
            v7 = *v6 == v1;
            v1 = v6;
          }

          while (!v7);
        }

        v1 = v6;
      }

      while (v6 != v2);
    }
  }
}

void sub_1B5805858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>>::~pair(va);
  _Unwind_Resume(a1);
}

void quasar::OnlineTransducerGraphSearchDecoder::runImpl(quasar::OnlineTransducerGraphSearchDecoder *this, uint64_t a2, uint64_t a3, quasar::SpeechRequestData **a4)
{
  if (*(this + 448) == 1)
  {
    quasar::OnlineTransducerGraphSearchDecoder::resetAccessedStatesCounts(this);
  }

  quasar::OnlineTransducerGraphSearchDecoder::DecoderCreationDependencies::clear((this + 904));
  quasar::OnlineTransducerGraphSearchDecoder::setUpDecoding(this, a2, a3, a4);
}

void sub_1B5805A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  kaldi::quasar::TransducerAutoRegressiveDecodable::~TransducerAutoRegressiveDecodable(&a25);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (a2 == 2)
  {
    v29 = __cxa_begin_catch(a1);
    quasar::OnlineTransducerGraphSearchDecoder::cleanUpAfterDecoding(v25);
    exception = __cxa_allocate_exception(0x10uLL);
    v31 = std::runtime_error::runtime_error(exception, v29);
    v31->__vftable = &unk_1F2D153C8;
  }

  if (a2 == 1)
  {
    v32 = __cxa_begin_catch(a1);
    quasar::OnlineTransducerGraphSearchDecoder::cleanUpAfterDecoding(v25);
    v33 = __cxa_allocate_exception(0x10uLL);
    v34 = std::runtime_error::runtime_error(v33, v32);
    v34->__vftable = &unk_1F2D153F0;
  }

  _Unwind_Resume(a1);
}

void quasar::OnlineTransducerGraphSearchDecoder::cleanUpAfterDecoding(quasar::OnlineTransducerGraphSearchDecoder *this)
{
  if (*(this + 448) == 1)
  {
    quasar::OnlineTransducerGraphSearchDecoder::resetAccessedStatesCounts(this);
  }

  quasar::OnlineTransducerGraphSearchDecoder::DecoderCreationDependencies::clear((this + 904));
}

void quasar::OnlineTransducerGraphSearchDecoder::setUpDecoding(uint64_t a1, uint64_t a2, uint64_t a3, quasar::SpeechRequestData **a4)
{
  quasar::OnlineTransducerGraphSearchDecoder::loadLmeData(a1, a2, a3, a4);
  quasar::OnlineTransducerGraphSearchDecoder::setUpDecoderPassData(a1, a2, a4);
  operator new();
}

void sub_1B5807860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  a31 = &STACK[0x360];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a31);
  a31 = &STACK[0x378];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a31);
  a31 = (v39 - 256);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a31);
  v41 = v38[106];
  if (v41)
  {
    v38[107] = v41;
    operator delete(v41);
  }

  kaldi::LatticeWordAligner::ComputationState::~ComputationState(&STACK[0x240]);
  v42 = v38[95];
  if (v42)
  {
    v38[96] = v42;
    operator delete(v42);
  }

  v43 = v38[34];
  if (v43)
  {
    v38[35] = v43;
    operator delete(v43);
  }

  if (v37)
  {
    operator delete(v37);
  }

  v44 = v38[99];
  if (v44)
  {
    v38[100] = v44;
    operator delete(v44);
  }

  v45 = v38[102];
  if (v45)
  {
    v38[103] = v45;
    operator delete(v45);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::InitDecoding(uint64_t a1)
{
  *(a1 + 8) = 0;
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = *(a1 + 40);
    do
    {
      v4 = (v3 + 16 * v2);
      v4[1] = 0;
      v2 = *v4;
    }

    while (v2 != -1);
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  if (v5)
  {
    v6 = *(a1 + 64);
    do
    {
      v7 = v5;
      v5 = *(v5 + 24);
      *(v7 + 24) = v6;
      v6 = v7;
    }

    while (v5);
    *(a1 + 64) = v7;
  }

  kaldi::quasar::E2ETokenHeap::Clear((a1 + 360));
  *(a1 + 408) = *(a1 + 400);
  *(a1 + 432) = *(a1 + 424);
  *(a1 + 456) = *(a1 + 448);
  *(a1 + 104) = *(a1 + 96);
  *(a1 + 128) = *(a1 + 120);
  *(a1 + 308) = 0;
  v8 = vneg_f32(0x7F0000007FLL);
  *(a1 + 144) = v8;
  *(a1 + 152) = 2139095040;
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear((a1 + 320));
  *(a1 + 312) = 0;
  *(a1 + 308) = 0;
  std::vector<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList,std::allocator<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList>>::resize((a1 + 96), 1uLL);
  std::vector<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList,std::allocator<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList>>::resize((a1 + 120), 1uLL);
  v9 = (*(**(a1 + 184) + 24))(*(a1 + 184));
  v10 = (***(a1 + 288))();
  kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FindOrAddToken(a1, (v10 << 32) + v9, 0, *(a1 + 8), 0, 0, 0.0);
  *(a1 + 472) = 0;
  *(a1 + 600) = v8;
  *(a1 + 488) = *(a1 + 480);
  *(a1 + 512) = *(a1 + 504);
  *(a1 + 536) = *(a1 + 528);
  *(a1 + 560) = *(a1 + 552);
  *(a1 + 584) = *(a1 + 576);
  kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ProcessNonemitting(a1, *(a1 + 8), *(a1 + 192));
  ++*(a1 + 8);
}

BOOL kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Finished(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 272);
  if (v3 < 0)
  {
    v3 = (*(*a2 + 56))(a2);
  }

  v4 = *(a1 + 104);
  return v3 < ((v4 - *(a1 + 96)) >> 3) || *(v4 - 8) == 0;
}

uint64_t kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AdvanceDecoding(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  while (!kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Finished(a1, a2))
  {
    std::vector<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList,std::allocator<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList>>::resize((a1 + 96), *(a1 + 8) + 1);
    std::vector<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList,std::allocator<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList>>::resize((a1 + 120), *(a1 + 8) + 1);
    v7 = kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ProcessEmitting<kaldi::AutoRegressiveDecodableInterface>(a1, a2, *(a1 + 8));
    kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ProcessNonemitting(a1, *(a1 + 8), v7);
    v8 = kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Finished(a1, a2);
    v9 = *(a1 + 8);
    if (v8)
    {
      kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneActiveTokensFinal(a1, v9, 0);
    }

    else if (!(v9 % *(a1 + 208)))
    {
      kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneActiveTokens(a1, v9, *(a1 + 204) * *(a1 + 232));
    }

    ++*(a1 + 8);
    v6 = (v6 + 1);
    if (a3 == v6)
    {
      return a3;
    }
  }

  return v6;
}

void kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetPartialResult(uint64_t a1@<X0>, char a2@<W1>, const void **a3@<X2>, const void **a4@<X8>)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a1 + 224);
    v12 = INFINITY;
    v13 = INFINITY;
    do
    {
      if (v11 == 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v14 = *v8;
        v15 = (*(**(a1 + 184) + 32))(*(a1 + 184), *v8);
        v16 = INFINITY;
        if (v15 != INFINITY)
        {
          v16 = v15 + (*(**(a1 + 288) + 16))(*(a1 + 288), HIDWORD(v14));
        }

        v11 = *(a1 + 224);
        v17 = v16 * v11;
      }

      v18 = *(a1 + 360);
      v19 = (v18 + 36 * *(v8 + 4));
      v20 = v17 + *v19;
      if (v12 > v20)
      {
        v12 = v20;
        v9 = v18 + 36 * *(v8 + 4);
      }

      if (v13 > *v19)
      {
        v13 = *v19;
        v10 = v18 + 36 * *(v8 + 4);
      }

      v8 = v8[3];
    }

    while (v8);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  if (v9 | v10)
  {
    if (v9)
    {
      v21 = v9;
    }

    else
    {
      v21 = v10;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (a3)
    {
      a3[1] = *a3;
    }

    if (v21)
    {
      while (1)
      {
        v22 = v21[8] & 0x7FFFFFFF;
        LODWORD(v38[0]) = v22;
        if ((a2 & 1) != 0 || v22)
        {
          std::vector<int>::push_back[abi:ne200100](a4, v38);
        }

        if (a3)
        {
          v23 = v21[6] & 0x7FFFFFFF;
          v37 = v23;
          if ((a2 & 1) != 0 || v23)
          {
            std::vector<int>::push_back[abi:ne200100](a3, &v37);
          }
        }

        v24 = v21[7] & 0x3FFFFFF;
        if (!v24)
        {
          break;
        }

        v21 = (*(a1 + 360) + 36 * v24);
      }

      v26 = *a4;
      v25 = a4[1];
      if (*a4 != v25)
      {
        v27 = v25 - 4;
        if (v27 > v26)
        {
          v28 = v26 + 4;
          do
          {
            v29 = *(v28 - 1);
            *(v28 - 1) = *v27;
            *v27 = v29;
            v27 -= 4;
            v30 = v28 >= v27;
            v28 += 4;
          }

          while (!v30);
        }
      }
    }

    if (a3)
    {
      v31 = *a3;
      v32 = a3[1];
      v33 = v32 - 4;
      if (*a3 != v32 && v33 > v31)
      {
        v35 = v31 + 4;
        do
        {
          v36 = *(v35 - 1);
          *(v35 - 1) = *v33;
          *v33 = v36;
          v33 -= 4;
          v30 = v35 >= v33;
          v35 += 4;
        }

        while (!v30);
      }
    }
  }

  else
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "GetPartialResult: decoding is finished: not producing partial result.", 69);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v38);
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void sub_1B5808344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ProcessLabels(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, int a5@<W5>, void *a6@<X8>)
{
  v7 = a1[1] - *a1;
  if (v7 != a2[1] - *a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v41, "ilabels.size() == olabels.size()");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v41);
  }

  v8 = v7 >> 2;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  __p = 0;
  v39 = 0;
  v40 = 0;
  v9 = (v8 - 1);
  if (v8 - 1 < 0)
  {
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v15 = 1;
    do
    {
      v16 = *(*a1 + 4 * v9);
      v37 = v16;
      v17 = *(*a2 + 4 * v9);
      v36 = v17;
      if (v17 < 1 || v17 == a5)
      {
        v15 |= v17 == a5;
      }

      else
      {
        std::vector<int>::push_back[abi:ne200100](&__p, &v36);
        v15 = 0;
        v16 = v37;
      }

      if (v16 >= 1)
      {
        std::vector<int>::push_back[abi:ne200100](&v41, &v37);
        if (v15)
        {
          for (i = *(a3 + 8); i; i = *i)
          {
            v20 = *(i + 7);
            if (v37 >= v20)
            {
              if (v20 >= v37)
              {
                goto LABEL_18;
              }

              ++i;
            }
          }

          v35 = v37 + a4;
          std::vector<int>::push_back[abi:ne200100](&__p, &v35);
        }
      }

LABEL_18:
      v24 = v9-- <= 0;
    }

    while (!v24);
    v21 = v41;
    v22 = v42;
    v23 = v42 - 4;
    v24 = v41 != v42 && v23 > v41;
    if (v24)
    {
      v25 = v41 + 4;
      do
      {
        v26 = *(v25 - 1);
        *(v25 - 1) = *v23;
        *v23 = v26;
        v23 -= 4;
        v27 = v25 >= v23;
        v25 += 4;
      }

      while (!v27);
    }
  }

  v29 = __p;
  v28 = v39;
  v30 = v39 - 4;
  if (__p != v39 && v30 > __p)
  {
    v32 = __p + 4;
    do
    {
      v33 = *(v32 - 1);
      *(v32 - 1) = *v30;
      *v30 = v33;
      v30 -= 4;
      v27 = v32 >= v30;
      v32 += 4;
    }

    while (!v27);
  }

  *a6 = v21;
  a6[1] = v22;
  a6[2] = v43;
  a6[3] = v29;
  v34 = v40;
  a6[4] = v28;
  a6[5] = v34;
}

BOOL kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetRawLattice(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 224))(a2);
  v5 = *(a1 + 96);
  v4 = *(a1 + 104);
  v6 = *(a1 + 308) / 2 + 3;
  memset(v49, 0, sizeof(v49));
  v50 = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(v49, v6);
  if (**(a1 + 96))
  {
    v7 = 0;
    v44 = ((v4 - v5) >> 3);
    v45 = ((v4 - v5) >> 3) + 0xFFFFFFFF;
    do
    {
      for (i = *(*(a1 + 96) + 8 * v7); ; LODWORD(i) = *(v9 + 36 * i + 12))
      {
        v48 = i;
        if (!i)
        {
          break;
        }

        v9 = *(a1 + 360);
        v10 = (*(*a2 + 200))(a2);
        v46[0].__locale_ = &v48;
        *(std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v49, &v48) + 5) = v10;
      }

      if (!v7 && (*(*a2 + 160))(a2) >= 1)
      {
        v11 = (*(*a2 + 160))(a2);
        (*(*a2 + 176))(a2, (v11 - 1));
      }

      for (j = *(*(a1 + 120) + 8 * v7); ; LODWORD(j) = *(v13 + 36 * j + 12))
      {
        v48 = j;
        if (!j)
        {
          break;
        }

        v13 = *(a1 + 360);
        v14 = (*(*a2 + 200))(a2);
        v46[0].__locale_ = &v48;
        *(std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v49, &v48) + 5) = v14;
      }

      ++v7;
    }

    while (v7 != v44);
    if (kaldi::g_kaldi_verbose_level > 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v46, 3);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "init:", 5);
      v16 = MEMORY[0x1B8C84C00](v15, (*(a1 + 308) / 2 + 3));
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " buckets:", 9);
      v18 = MEMORY[0x1B8C84C30](v17, *(&v49[0] + 1));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " load:", 6);
      v20 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " max:", 5);
      std::ostream::operator<<();
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v46);
    }

    v21 = 0;
    LODWORD(v22) = 0;
    v23 = 0;
    v24 = 0;
LABEL_19:
    for (k = *(*(a1 + 96) + 8 * v21); ; k = *(v26 + 12))
    {
      v48 = k;
      if (!k)
      {
        break;
      }

      v46[0].__locale_ = &v48;
      v22 = *(std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v49, &v48) + 5);
      v26 = *(a1 + 360) + 36 * v48;
      for (m = *(v26 + 8); m; m = *(v28 + 16))
      {
        v28 = *(a1 + 376) + 24 * m;
        v29 = *(std::__hash_table<quasar::PersonalizedLmData::DocumentType,std::hash<quasar::PersonalizedLmData::DocumentType>,std::equal_to<quasar::PersonalizedLmData::DocumentType>,std::allocator<quasar::PersonalizedLmData::DocumentType>>::find<quasar::PersonalizedLmData::DocumentType>(v49, v28) + 5);
        v30 = *(v28 + 4);
        LODWORD(v46[0].__locale_) = *(v28 + 20) & 0x7FFFFFFF;
        HIDWORD(v46[0].__locale_) = v30;
        v46[1] = *(v28 + 8);
        v47 = v29;
        if (v30 == *(a1 + 284))
        {
          HIDWORD(v46[0].__locale_) = 0;
        }

        (*(*a2 + 208))(a2, v22, v46);
        v24 = (v24 + 1);
      }

      if (v21 == v45)
      {
        v31 = std::__hash_table<quasar::PersonalizedLmData::DocumentType,std::hash<quasar::PersonalizedLmData::DocumentType>,std::equal_to<quasar::PersonalizedLmData::DocumentType>,std::allocator<quasar::PersonalizedLmData::DocumentType>>::find<quasar::PersonalizedLmData::DocumentType>((a1 + 320), &v48);
        if (*(a1 + 144) == INFINITY)
        {
          v46[0].__locale_ = 0;
          (*(*a2 + 184))(a2, v22, v46);
        }

        else
        {
          v32 = *(v31 + 5);
          if (v32 == INFINITY)
          {
            continue;
          }

          v46[0].__locale_ = LODWORD(v32);
          (*(*a2 + 184))(a2, v22, v46);
        }

        v23 = (v23 + 1);
      }
    }

    for (n = *(*(a1 + 120) + 8 * v21); ; LODWORD(n) = *(v34 + 36 * n + 12))
    {
      v48 = n;
      if (!n)
      {
        if (++v21 == v44)
        {
          if (kaldi::g_kaldi_verbose_level > 2)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(v46, 3);
            v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "GetRawLattice: NumStates ", 25);
            v38 = (*(*a2 + 160))(a2);
            v39 = MEMORY[0x1B8C84C00](v37, v38);
            v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " NumArcs ", 9);
            v41 = MEMORY[0x1B8C84C00](v40, v24);
            v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " NumFinal ", 10);
            MEMORY[0x1B8C84C00](v42, v23);
            kaldi::KaldiVlogMessage::~KaldiVlogMessage(v46);
          }

          v19 = v22 != 0;
          goto LABEL_44;
        }

        goto LABEL_19;
      }

      v34 = *(a1 + 360);
      v46[0].__locale_ = &v48;
      v22 = *(std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v49, &v48) + 5);
      v35 = std::__hash_table<quasar::PersonalizedLmData::DocumentType,std::hash<quasar::PersonalizedLmData::DocumentType>,std::equal_to<quasar::PersonalizedLmData::DocumentType>,std::allocator<quasar::PersonalizedLmData::DocumentType>>::find<quasar::PersonalizedLmData::DocumentType>((a1 + 320), &v48);
      if (*(a1 + 144) == INFINITY)
      {
        v46[0].__locale_ = 0;
        (*(*a2 + 184))(a2, v22, v46);
      }

      else
      {
        v36 = *(v35 + 5);
        if (v36 == INFINITY)
        {
          continue;
        }

        v46[0].__locale_ = LODWORD(v36);
        (*(*a2 + 184))(a2, v22, v46);
      }

      v23 = (v23 + 1);
    }
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "GetRawLattice: no tokens active on frame 0: not producing lattice.", 66);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v46);
  }

  v19 = 0;
LABEL_44:
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v49);
  return v19;
}

void sub_1B5808C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v5 - 144);
  _Unwind_Resume(a1);
}

void quasar::OnlineTransducerGraphSearchDecoder::loadLmeData(uint64_t a1, uint64_t a2, uint64_t a3, quasar::SpeechRequestData **a4)
{
  v4 = a4;
  if (*(a1 + 460) == 1 && (quasar::SpeechRequestData::isLoadLmeProfile(*a4) & 1) == 0)
  {
    v79 = *(a1 + 488);
    if ((a2 + 320) != v79)
    {
      std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__assign_with_size[abi:ne200100]<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>((a2 + 320), *v79, v79[1], (v79[1] - *v79) >> 5);
    }

    std::allocate_shared[abi:ne200100]<quasar::SymbolTableList,std::allocator<quasar::SymbolTableList>,quasar::SymbolTableList&,0>();
  }

  v83 = (a2 + 320);
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::clear[abi:ne200100]((a2 + 320));
  *(a2 + 352) = *(a2 + 344);
  std::__tree<int>::destroy(a2 + 368, *(a2 + 376));
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 368) = a2 + 376;
  v7 = *(a2 + 400);
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::vector<quasar::LmeInfo>::clear[abi:ne200100]((*a3 + 600));
  quasar::SymbolTableList::clear(*(*a3 + 488));
  v8 = *(*a3 + 488);
  v9 = *(a1 + 1448);
  v114 = *(a1 + 1440);
  v115 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::SymbolTableList::addSymbolTable(v8, &v114, 0, -1);
  if (v115)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v115);
  }

  if (*(a1 + 460))
  {
    quasar::SpeechRequestData::getRecogRequestTimer(*v4, &v87);
    v10 = v87;
    v80 = a2;
    *(a1 + 880) = kaldi::Timer::GetSeconds(5, v11) - *v10;
    if (*(&v87 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v87 + 1));
    }

    v112 = 0u;
    v111 = 0u;
    v113 = 1065353216;
    v110[0] = 0;
    v110[1] = 0;
    v109 = v110;
    v82 = v4;
    if (*(a1 + 460) != 1)
    {
LABEL_90:
      LmeDataStreams = quasar::SpeechRequestData::getLmeDataStreams(*v4);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(*a3 + 608) - *(*a3 + 600)) >> 3) != (LmeDataStreams[1] - *LmeDataStreams) >> 4 && quasar::gLogLevel >= 2)
      {
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "lmeDataStreams and lmeInfos size mismatch. Should NEVER happen", 62);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&v87);
      }

      *(a1 + 2256) = *(a1 + 2248);
      quasar::SpeechRequestData::getRecogRequestTimer(*v4, &v87);
      v60 = v87;
      Seconds = kaldi::Timer::GetSeconds(5, v61);
      v63 = *v60;
      if (*(&v87 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v87 + 1));
      }

      for (i = v112; i; i = *i)
      {
        if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 504), i + 2))
        {
          v65 = i[5];
          v66 = i[6];
          if (v65 != v66)
          {
            if ((v66 - v65) >= 0x11 && *(a1 + 896) && *(a1 + 900))
            {
              std::allocate_shared[abi:ne200100]<fst::quasar::MergeTrieFst,std::allocator<fst::quasar::MergeTrieFst>,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> const&,int &,int &,std::string const&,0>();
            }

            v72 = *v65;
            v71 = *(v65 + 1);
            if (v71)
            {
              atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v73 = *std::map<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::at(a1 + 584, i + 2);
            if (v71)
            {
              atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
              *(&v87 + 1) = v72;
              __p[0] = v71;
              atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            else
            {
              *(&v87 + 1) = v72;
              __p[0] = 0;
            }

            LODWORD(v87) = v73;
            LODWORD(__p[1]) = 0;
            std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::push_back[abi:ne200100](v83, &v87);
            if (__p[0])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](__p[0]);
            }

            if (v71)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v71);
            }

            if (*(a1 + 2200))
            {
              LODWORD(v87) = quasar::QsrTextSymbolTable::Find(*(a1 + 1440), (i + 2));
              *(&v87 + 1) = v72;
              std::vector<std::pair<int,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>>::push_back[abi:ne200100](a1 + 2248, &v87);
            }

            if (v71)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v71);
            }
          }
        }

        else if (quasar::gLogLevel >= 4)
        {
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87);
          v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "Ignoring unsupported template ", 30);
          v68 = *(i + 39);
          if (v68 >= 0)
          {
            v69 = (i + 2);
          }

          else
          {
            v69 = i[2];
          }

          if (v68 >= 0)
          {
            v70 = *(i + 39);
          }

          else
          {
            v70 = i[3];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v69, v70);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v87);
        }
      }

      quasar::SpeechRequestData::getRecogRequestTimer(*v82, &v87);
      v74 = v87;
      v76 = kaldi::Timer::GetSeconds(5, v75);
      v77 = *v74;
      if (*(&v87 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v87 + 1));
      }

      if (quasar::gLogLevel >= 4)
      {
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87);
        v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "lmeMergeInitTime ", 17);
        MEMORY[0x1B8C84BE0](v78, v76 - v77 - (Seconds - v63));
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v87);
      }

      quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(a1, a3, v82, v83, v80 + 344, (v80 + 232));
    }

    v12 = 0;
    while (1)
    {
      v13 = quasar::SpeechRequestData::getLmeDataStreams(*v4);
      if (v12 >= (v13[1] - *v13) >> 4)
      {
        goto LABEL_90;
      }

      v14 = *(*quasar::SpeechRequestData::getLmeDataStreams(*v4) + 16 * v12);
      v15 = v14;
      if (*(&v14 + 1))
      {
        atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
        v108 = v14;
        atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      else
      {
        v108 = v14;
      }

      v16 = quasar::OnlineTransducerGraphSearchDecoder::readAndCheckLmeData(a1, &v108, v12);
      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
      }

      memset(&v107, 0, sizeof(v107));
      if ((v16 & 0xFFFFFFFD) == 1)
      {
        v18 = *v15;
        v17 = *(v15 + 8);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v81 = v17;
        std::string::operator=(&v107, (v15 + 16));
        LODWORD(v104) = v18[20];
        *&v87 = &v104;
        v106 = *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v109, &v104) + 8);
        v20 = v18[20];
        v19 = v18[21];
        LODWORD(v104) = v20;
        *&v87 = &v104;
        v21 = std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v109, &v104);
        *(v21 + 8) += v19 - v20 + 1;
        if (v106)
        {
          std::allocate_shared[abi:ne200100]<quasar::QsrTextSymbolTable,std::allocator<quasar::QsrTextSymbolTable>,std::shared_ptr<quasar::QsrTextSymbolTable> const&,long long &,0>();
        }

        v23 = v18[29];
        v104 = v18[28];
        v105 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (quasar::gLogLevel >= 4)
        {
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87);
          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "LME container ", 14);
          v25 = MEMORY[0x1B8C84C00](v24, v12);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ": offset ", 9);
          v27 = MEMORY[0x1B8C84C60](v26, v106);
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " firstKey ", 10);
          v29 = MEMORY[0x1B8C84C60](v28, v18[20]);
          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " lastKey ", 9);
          MEMORY[0x1B8C84C60](v30, v18[21]);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v87);
        }

        v31 = *(*a3 + 488);
        v85 = v104;
        v86 = v105;
        if (v105)
        {
          atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = quasar::SymbolTableList::addSymbolTable(v31, &v85, v106 + v18[20], v12);
        if (v86)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v86);
        }

        if (v32)
        {
          v33 = v18[25];
          v34 = (v18 + 26);
          if (v33 != v18 + 26)
          {
            v35 = 0;
            while (1)
            {
              if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 504), v33 + 4))
              {
                v36 = v33[7];
                if (v36)
                {
                  if (((*(*v36 + 24))(v36) & 0x80000000) == 0)
                  {
                    v37 = v33[7];
                    v38 = (*(*v37 + 24))(v37);
                    if ((*(*v37 + 40))(v37, v38))
                    {
                      *&v87 = v33 + 4;
                      v39 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v111, v33 + 4);
                      if (v106)
                      {
                        std::allocate_shared[abi:ne200100]<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>,std::allocator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::quasar::OffsetOutputLabelMapper,0>();
                      }

                      v48 = v33[8];
                      *&v87 = v33[7];
                      *(&v87 + 1) = v48;
                      if (v48)
                      {
                        atomic_fetch_add_explicit(v48 + 1, 1uLL, memory_order_relaxed);
                      }

                      std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](v39 + 5, &v87);
                      if (*(&v87 + 1))
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v87 + 1));
                      }

                      v35 = 1;
                      goto LABEL_63;
                    }
                  }
                }

                if (quasar::gLogLevel >= 4)
                {
                  v102 = 0u;
                  v103 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  v98 = 0u;
                  v99 = 0u;
                  v96 = 0u;
                  v97 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  v93 = 0u;
                  v91 = 0u;
                  v92 = 0u;
                  v89 = 0u;
                  v90 = 0u;
                  v87 = 0u;
                  *__p = 0u;
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87);
                  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "Ignoring null or arc-less FST for template ", 43);
                  v41 = *(v33 + 55);
                  if (v41 >= 0)
                  {
                    v42 = (v33 + 4);
                  }

                  else
                  {
                    v42 = v33[4];
                  }

                  if (v41 >= 0)
                  {
                    v43 = *(v33 + 55);
                  }

                  else
                  {
                    v43 = v33[5];
                  }

LABEL_57:
                  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v42, v43);
                  v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " in stream # ", 13);
                  v47 = MEMORY[0x1B8C84C00](v46, v12);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ".", 1);
                  quasar::QuasarInfoMessage::~QuasarInfoMessage(&v87);
                }
              }

              else if (quasar::gLogLevel >= 4)
              {
                v102 = 0u;
                v103 = 0u;
                v100 = 0u;
                v101 = 0u;
                v98 = 0u;
                v99 = 0u;
                v96 = 0u;
                v97 = 0u;
                v94 = 0u;
                v95 = 0u;
                v93 = 0u;
                v91 = 0u;
                v92 = 0u;
                v89 = 0u;
                v90 = 0u;
                v87 = 0u;
                *__p = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87);
                v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "Ignoring unsupported template ", 30);
                v44 = *(v33 + 55);
                if (v44 >= 0)
                {
                  v42 = (v33 + 4);
                }

                else
                {
                  v42 = v33[4];
                }

                if (v44 >= 0)
                {
                  v43 = *(v33 + 55);
                }

                else
                {
                  v43 = v33[5];
                }

                goto LABEL_57;
              }

LABEL_63:
              v49 = v33[1];
              if (v49)
              {
                do
                {
                  v50 = v49;
                  v49 = *v49;
                }

                while (v49);
              }

              else
              {
                do
                {
                  v50 = v33[2];
                  v51 = *v50 == v33;
                  v33 = v50;
                }

                while (!v51);
              }

              v33 = v50;
              if (v50 == v34)
              {
                v22 = v35 & 1;
                goto LABEL_72;
              }
            }
          }

          v22 = 0;
        }

        else
        {
          v22 = 0;
          v16 = 6;
        }

LABEL_72:
        if (v105)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v105);
        }

        if (v81)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v81);
        }
      }

      else
      {
        v22 = 0;
      }

      v52 = *a3;
      LODWORD(v87) = *(v15 + 40);
      *(&v87 + 4) = __PAIR64__(v22, v16);
      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(__p, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
      }

      else
      {
        *__p = *&v107.__r_.__value_.__l.__data_;
        *&v89 = *(&v107.__r_.__value_.__l + 2);
      }

      v4 = v82;
      v53 = *(v52 + 608);
      if (v53 >= *(v52 + 616))
      {
        v56 = std::vector<quasar::LmeInfo>::__emplace_back_slow_path<quasar::LmeInfo>(v52 + 600, &v87);
        v57 = SBYTE7(v89);
        *(v52 + 608) = v56;
        if (v57 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v54 = v87;
        *(v53 + 8) = DWORD2(v87);
        *v53 = v54;
        v55 = *__p;
        *(v53 + 32) = v89;
        *(v53 + 16) = v55;
        *(v52 + 608) = v53 + 40;
      }

      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (*(&v15 + 1))
      {
        goto LABEL_85;
      }

LABEL_86:
      ++v12;
      if ((*(a1 + 460) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    operator delete(v107.__r_.__value_.__l.__data_);
    if (!*(&v15 + 1))
    {
      goto LABEL_86;
    }

LABEL_85:
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
    goto LABEL_86;
  }
}

void sub_1B5809B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__tree<int>::destroy(v67 - 216, a67);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::~__hash_table(v67 - 192);
  _Unwind_Resume(a1);
}

uint64_t **quasar::OnlineTransducerGraphSearchDecoder::setUpDecoderPassData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 1440);
  v6 = (*(**(v5 + 96) + 112))(*(v5 + 96));
  if ((v6 & 0x8000000000000000) == 0)
  {
    v6 += *(v5 + 120);
  }

  *(a2 + 448) = v6;
  *(a2 + 672) = *(a1 + 1944);
  if (a2 + 680 != a1 + 1904)
  {
    *(a2 + 712) = *(a1 + 1936);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>((a2 + 680), *(a1 + 1920), 0);
  }

  std::vector<std::shared_ptr<quasar::LmeContainer>>::clear[abi:ne200100]((a2 + 248));
  v7 = *(a1 + 2056);
  for (i = *(a1 + 2064); v7 != i; v7 += 2)
  {
    v9 = v7[1];
    *&v24 = *v7;
    *(&v24 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    if ((*(a1 + 2132) & 1) != 0 || *(a1 + 448) == 1)
    {
      v10 = *v7;
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getCachedModel(v10, &__p, &lpsrc);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (lpsrc)
      {
        if (v11)
        {
          v12 = v11;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getPath(*v7, &__p);
          quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getOriginStr(*v7, &v20);
          quasar::StateAccessRecordingFst::getWrappedFst(v12, &v19);
          std::allocate_shared[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::string,std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,0>();
        }
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }
    }

    std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100]((a2 + 248), &v24);
    if (*(&v24 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
    }
  }

  if (a2 + 272 != a1 + 2104)
  {
    std::vector<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>>::__assign_with_size[abi:ne200100]<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>((a2 + 272), *(a1 + 2104), *(a1 + 2112), (*(a1 + 2112) - *(a1 + 2104)) >> 4);
  }

  if (a2 + 296 != a1 + 2008)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a2 + 296), *(a1 + 2008), *(a1 + 2016), (*(a1 + 2016) - *(a1 + 2008)) >> 2);
  }

  if (*(a1 + 2128) > 0.0)
  {
    v13 = *(*a3 + 24);
    v14 = *(v13 + 272);
    v15 = *(v13 + 280);
    while (v14 != v15)
    {
      v16 = *v14;
      v14 += 2;
      LODWORD(__p.__r_.__value_.__l.__data_) = *(v16 + 12);
      std::vector<float>::push_back[abi:ne200100]((a2 + 296), &__p);
    }
  }

  if (a2 + 408 != a1 + 776)
  {
    *(a2 + 440) = *(a1 + 808);
    std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<int,std::pair<int,int>>,void *> *>>((a2 + 408), *(a1 + 792), 0);
  }

  result = (a2 + 368);
  if (a2 + 368 != a1 + 840)
  {
    return std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,float>,std::__tree_node<std::__value_type<int,float>,void *> *,long>>(result, *(a1 + 840), (a1 + 848));
  }

  return result;
}

void sub_1B580A02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineTransducerGraphSearchDecoder::decoderObjectSetup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a4 + 24);
  v6 = *(a1 + 2128);
  if (v6 <= 0.0)
  {
    v7 = *(v5 + 272);
    v8 = *(v5 + 280);
  }

  else
  {
    v7 = *(v5 + 272);
    v8 = *(v5 + 280);
    v9 = 0.0;
    if (v7 != v8)
    {
      v10 = *(v5 + 272);
      do
      {
        v11 = *v10;
        v10 += 16;
        v9 = v9 + *(v11 + 12);
      }

      while (v10 != v8);
    }

    if (v9 >= v6)
    {
      v12 = v6 / v9;
      if (quasar::gLogLevel >= 5)
      {
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
        *v19 = 0u;
        *v20 = 0u;
        *v17 = 0u;
        v18 = 0u;
        v16 = 0u;
        memset(__str, 0, sizeof(__str));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__str);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__str, "Extra LM weight exceeds max-total-extra-weight, rescaling with ", 63);
        std::ostream::operator<<();
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__str);
        v7 = *(v5 + 272);
        v8 = *(v5 + 280);
      }

      if (v7 != v8)
      {
        v13 = v7;
        do
        {
          v14 = *v13;
          v13 += 16;
          *(v14 + 12) = v12 * *(v14 + 12);
        }

        while (v13 != v8);
      }
    }
  }

  if (((v8 - v7) >> 4) + ((*(a1 + 2016) - *(a1 + 2008)) >> 2) == (*(*(a1 + 1032) + 8) - **(a1 + 1032)) >> 4)
  {
    std::allocate_shared[abi:ne200100]<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::allocator<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>&,0>();
  }

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
  *v19 = 0u;
  *v20 = 0u;
  *v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(__str, 0, sizeof(__str));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__str);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(__str, "some FST/NN LMs failed to load");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__str);
}

uint64_t quasar::OnlineTransducerGraphSearchDecoder::createReferenceFst(uint64_t a1, __int128 **a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "The reference for utterance ", 28);
    v10 = *(*a4 + 24);
    v13 = *(v10 + 128);
    v11 = v10 + 128;
    v12 = v13;
    v14 = *(v11 + 23);
    if (v14 >= 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = v12;
    }

    if (v14 >= 0)
    {
      v16 = *(v11 + 23);
    }

    else
    {
      v16 = *(v11 + 8);
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v15, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " is:", 4);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v31);
  }

  (*(*a5 + 224))(a5);
  v18 = (*(*a5 + 200))(a5);
  (*(*a5 + 176))(a5, v18);
  v19 = *a2;
  v20 = a2[1];
  if (*a2 == v20)
  {
    v22 = v18;
  }

  else
  {
    do
    {
      if (*(v19 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v19, *(v19 + 1));
      }

      else
      {
        v21 = *v19;
        __p.__r_.__value_.__r.__words[2] = *(v19 + 2);
        *&__p.__r_.__value_.__l.__data_ = v21;
      }

      v22 = (*(*a5 + 200))(a5);
      v23 = quasar::SymbolTableList::strToSymbolId(*(*a3 + 488), &__p);
      LODWORD(v31) = v23;
      *(&v31 + 4) = v23;
      HIDWORD(v31) = v22;
      (*(*a5 + 208))(a5, v18, &v31);
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
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
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

        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, p_p, size);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "(symbol ID = ", 13);
        v28 = MEMORY[0x1B8C84C00](v27, v23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ")", 1);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v31);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v19 = (v19 + 24);
      v18 = v22;
    }

    while (v19 != v20);
  }

  return (*(*a5 + 184))(a5, v22, 0.0);
}

uint64_t quasar::OnlineTransducerGraphSearchDecoder::readAndCheckLmeData(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = *a2;
  if (!*a2)
  {
    if (quasar::gLogLevel >= 4)
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
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
      v83 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "LME container ", 14);
      v18 = MEMORY[0x1B8C84C00](v17, a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " is null.", 9);
      goto LABEL_18;
    }

    return 2;
  }

  if (quasar::gLogLevel >= 4)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
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
    v83 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "Reading LME container ", 22);
    v8 = MEMORY[0x1B8C84C00](v7, a3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " for user ", 10);
    v10 = *(*a2 + 39);
    if (v10 >= 0)
    {
      v11 = (*a2 + 2);
    }

    else
    {
      v11 = (*a2)[2];
    }

    if (v10 >= 0)
    {
      v12 = *(*a2 + 39);
    }

    else
    {
      v12 = (*a2)[3];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v83);
    v4 = *a2;
  }

  v13 = *v4;
  if (!*v4)
  {
    if (quasar::gLogLevel >= 4)
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
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
      v83 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "LME container data ", 19);
      v20 = MEMORY[0x1B8C84C00](v19, a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " is null.", 9);
      goto LABEL_18;
    }

    return 2;
  }

  v14 = *(v13 + 268);
  if (v14 == 2)
  {
    if (quasar::gLogLevel >= 4)
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
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
      v83 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "LME data stream ", 16);
      v16 = MEMORY[0x1B8C84C00](v15, a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " is null.", 9);
LABEL_18:
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v83);
      return 2;
    }

    return 2;
  }

  if ((v14 & 0xFFFFFFFD) == 4)
  {
    return v14;
  }

  v22 = *(v13 + 199);
  if (v22 >= 0)
  {
    v23 = *(v13 + 199);
  }

  else
  {
    v23 = *(v13 + 184);
  }

  v24 = *(a1 + 231);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a1 + 216);
  }

  if (v23 != v24 || (v22 >= 0 ? (v26 = (v13 + 176)) : (v26 = *(v13 + 176)), v25 >= 0 ? (v27 = (a1 + 208)) : (v27 = *(a1 + 208)), memcmp(v26, v27, v23)))
  {
    if (quasar::gLogLevel >= 2)
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
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
      v83 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "LME data stream ", 16);
      v29 = MEMORY[0x1B8C84C00](v28, a3);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " has phone set version ", 23);
      v31 = *(v13 + 199);
      if (v31 >= 0)
      {
        v32 = v13 + 176;
      }

      else
      {
        v32 = *(v13 + 176);
      }

      if (v31 >= 0)
      {
        v33 = *(v13 + 199);
      }

      else
      {
        v33 = *(v13 + 184);
      }

      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " which is different from model phone set version ", 49);
      v36 = *(a1 + 231);
      if (v36 >= 0)
      {
        v37 = a1 + 208;
      }

      else
      {
        v37 = *(a1 + 208);
      }

      if (v36 >= 0)
      {
        v38 = *(a1 + 231);
      }

      else
      {
        v38 = *(a1 + 216);
      }

      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ". This data stream will not be used.", 36);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v83);
    }

    return 5;
  }

  if (*(v13 + 392) == 1)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
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
    v83 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v83, "Compatibility check unimplemented");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v83);
  }

  v40 = *(v13 + 160);
  if (v40 == -1 || (v41 = *(v13 + 168), v41 == -1))
  {
    if (quasar::gLogLevel >= 4)
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
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
      v83 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "Bad LME data (empty): stream=", 29);
      v56 = MEMORY[0x1B8C84C00](v55, a3);
      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ", symTableFirstKey=", 19);
      v58 = MEMORY[0x1B8C84C60](v57, *(v13 + 160));
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ", symTableLastKey=", 18);
      MEMORY[0x1B8C84C60](v59, *(v13 + 168));
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v83);
    }

    return 6;
  }

  if (v41 < v40)
  {
    goto LABEL_88;
  }

  v42 = *(v13 + 224);
  v43 = (*(**(v42 + 96) + 112))(*(v42 + 96));
  if ((v43 & 0x8000000000000000) == 0)
  {
    v43 += *(v42 + 120);
  }

  if (v41 != v43 - 1)
  {
LABEL_88:
    if (quasar::gLogLevel >= 1)
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
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
      v83 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
      v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "Bad LME data (invalid last key): stream=", 40);
      v61 = MEMORY[0x1B8C84C00](v60, a3);
      v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, ", symTableFirstKey=", 19);
      v63 = MEMORY[0x1B8C84C60](v62, *(v13 + 160));
      v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, ", symTableLastKey=", 18);
      v65 = MEMORY[0x1B8C84C60](v64, *(v13 + 168));
      v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, ", symTable->AvailableKey()=", 27);
      (*(**(*(v13 + 224) + 96) + 112))(*(*(v13 + 224) + 96));
      MEMORY[0x1B8C84C60](v66);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v83);
    }

    return 6;
  }

  if (v14 == 1)
  {
    if (!*(a1 + 328) || (v44 = *(v13 + 240), v44 == (v13 + 248)))
    {
LABEL_83:
      if (*(v13 + 264) >= *(a1 + 336))
      {
        return 1;
      }

      if (quasar::gLogLevel >= 4)
      {
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
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
        v83 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
        v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "G2P model version ", 18);
        v53 = MEMORY[0x1B8C84C00](v52, *(v13 + 264));
        v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " in blob is older than datapack's version ", 42);
        MEMORY[0x1B8C84C00](v54, *(a1 + 336));
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v83);
      }
    }

    else
    {
      while (1)
      {
        if (*(v44 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v82, v44[4], v44[5]);
        }

        else
        {
          v82 = *(v44 + 4);
        }

        if (*(v44 + 79) < 0)
        {
          std::string::__init_copy_ctor_external(&v81, v44[7], v44[8]);
        }

        else
        {
          v81 = *(v44 + 7);
        }

        memset(&v80, 0, sizeof(v80));
        v45 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 264, &v82.__r_.__value_.__l.__data_);
        if (a1 + 272 == v45)
        {
          v46 = &v82;
        }

        else
        {
          v46 = (v45 + 56);
        }

        std::string::operator=(&v80, v46);
        v47 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 312, &v80.__r_.__value_.__l.__data_);
        v48 = v47;
        if (a1 + 320 == v47)
        {
          if (quasar::gLogLevel < 4)
          {
            goto LABEL_115;
          }

          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
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
          v83 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
          v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "Category ", 9);
          if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v68 = &v82;
          }

          else
          {
            v68 = v82.__r_.__value_.__r.__words[0];
          }

          if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v82.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v82.__r_.__value_.__l.__size_;
          }

          v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v68, size);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, " in blob is not supported by datapack.", 38);
          goto LABEL_114;
        }

        if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v47 + 56), &v81))
        {
          break;
        }

        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v80.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v81.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v82.__r_.__value_.__l.__data_);
        }

        v49 = v44[1];
        if (v49)
        {
          do
          {
            v50 = v49;
            v49 = *v49;
          }

          while (v49);
        }

        else
        {
          do
          {
            v50 = v44[2];
            v51 = *v50 == v44;
            v44 = v50;
          }

          while (!v51);
        }

        v44 = v50;
        if (v50 == (v13 + 248))
        {
          goto LABEL_83;
        }
      }

      if (quasar::gLogLevel < 4)
      {
        goto LABEL_115;
      }

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
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
      v83 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "Category ", 9);
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = &v82;
      }

      else
      {
        v72 = v82.__r_.__value_.__r.__words[0];
      }

      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v73 = v82.__r_.__value_.__l.__size_;
      }

      v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v72, v73);
      v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " in blob uses different enumeration type (", 42);
      v76 = *(v48 + 79);
      if (v76 >= 0)
      {
        v77 = v48 + 56;
      }

      else
      {
        v77 = *(v48 + 56);
      }

      if (v76 >= 0)
      {
        v78 = *(v48 + 79);
      }

      else
      {
        v78 = *(v48 + 64);
      }

      v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v77, v78);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ") in datapack.", 14);
LABEL_114:
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v83);
LABEL_115:
      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }
    }

    return 3;
  }

  return v14;
}

void std::vector<std::pair<int,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(uint64_t a1, uint64_t a2, quasar::SpeechRequestData **a3, uint64_t a4, uint64_t a5, quasar::Location *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  Location = quasar::SpeechRequestData::getLocation(*a3);
  *a6 = quasar::Location::fromSharedFuture(Location);
  *(a6 + 1) = v10;
  v11 = *(*a2 + 440);
  std::string::basic_string[abi:ne200100]<0>(__p, "geoLocationStatus");
  quasar::Location::statusAsString(a6, &v17);
  quasar::SpeechRequestResultData::addDumpAA(v11, __p, &v17);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  quasar::SpeechRequestData::getRegionId(*a3);
  quasar::Geography::getGeoContext();
}

void sub_1B580C5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57)
{
  std::__function::__value_func<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::~__value_func[abi:ne200100](v58 - 232);
  a19 = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(&a53, a54);
  std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::~__value_func[abi:ne200100](v58 - 136);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(&a56, a57);
  v60 = *(v57 + 8);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (*(v58 - 233) < 0)
  {
    operator delete(*(v58 - 256));
  }

  _Unwind_Resume(a1);
}

void quasar::OnlineTransducerGraphSearchDecoder::appendEmptyFsts(void *a1, uint64_t *a2)
{
  v2 = a1[75];
  if (v2)
  {
    if (v2 != (a2[1] - *a2) >> 5)
    {
      v4 = a1[73];
      v5 = a1 + 74;
      if (v4 != a1 + 74)
      {
        do
        {
          v6 = *(v4 + 14);
          for (i = *a2; i != a2[1]; i += 8)
          {
            if (*i == v6)
            {
              goto LABEL_10;
            }
          }

          v12 = 0;
          v13 = 0;
          v11 = v6;
          v14 = -1;
          std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::push_back[abi:ne200100](a2, &v11);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

LABEL_10:
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

        while (v9 != v5);
      }
    }
  }
}

void sub_1B580C8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OnlineTransducerGraphSearchDecoder::logGeoLmMetrics(uint64_t a1, uint64_t a2, quasar::Location *a3, const void **a4, uint64_t a5)
{
  result = quasar::Geography::wasConfigLoaded(*(a1 + 416));
  if (result)
  {
    *(*(a2 + 440) + 128) = 1;
    if (quasar::Location::isKnown(a3))
    {
      v11 = *(a2 + 440);
      *(v11 + 129) = 1;
    }

    else if (quasar::Location::isDenied(a3))
    {
      v11 = *(a2 + 440);
      *(v11 + 130) = 1;
    }

    else
    {
      isUndefined = quasar::Location::isUndefined(a3);
      v11 = *(a2 + 440);
      if (isUndefined)
      {
        *(v11 + 131) = 1;
      }
    }

    v13 = (*(a5 + 16) | *(a5 + 40)) != 0;
    std::string::basic_string[abi:ne200100]<0>(v29, "geoContextFound");
    std::to_string(&__p, v13);
    quasar::SpeechRequestResultData::addDumpAA(v11, v29, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    *(*(a2 + 440) + 132) = v13;
    result = quasar::Geography::getGeoMemoriesConfig(*(a1 + 416));
    if (*result == 1)
    {
      v14 = *(a2 + 440);
      *(v14 + 133) = 1;
      v15 = *(a4 + 23);
      if (v15 < 0)
      {
        v15 = a4[1];
      }

      v16 = v15 != 0;
      std::string::basic_string[abi:ne200100]<0>(v29, "geoLastRegionIdWasCached");
      std::to_string(&__p, v16);
      quasar::SpeechRequestResultData::addDumpAA(v14, v29, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      v17 = *(a5 + 71);
      if (v17 >= 0)
      {
        v18 = *(a5 + 71);
      }

      else
      {
        v18 = *(a5 + 56);
      }

      v19 = *(a4 + 23);
      v20 = v19;
      if (v19 < 0)
      {
        v19 = a4[1];
      }

      if (v18 == v19)
      {
        v23 = *(a5 + 48);
        v22 = (a5 + 48);
        v21 = v23;
        if (v17 >= 0)
        {
          v24 = v22;
        }

        else
        {
          v24 = v21;
        }

        if (v20 >= 0)
        {
          v25 = a4;
        }

        else
        {
          v25 = *a4;
        }

        v26 = memcmp(v24, v25, v18) != 0;
      }

      else
      {
        v26 = 1;
      }

      v27 = *(a2 + 440);
      std::string::basic_string[abi:ne200100]<0>(v29, "geoLastRegionIdCacheMiss");
      std::to_string(&__p, v26);
      quasar::SpeechRequestResultData::addDumpAA(v27, v29, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      *(*(a2 + 440) + 134) = v26;
      result = quasar::Location::isUndefined(a3);
      if (result)
      {
        if (v13)
        {
          *(*(a2 + 440) + 135) = 1;
        }
      }
    }
  }

  return result;
}

void sub_1B580CB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void quasar::OnlineTransducerGraphSearchDecoder::mergeRegionalClassLms(void *a1@<X0>, const void ***a2@<X1>, uint64_t **a3@<X8>)
{
  std::map<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::map[abi:ne200100](a3, a2);
  v7 = *a1;
  v5 = a1 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getPlaceholder(v6[7], &v60);
      size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v60.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (!std::__tree<std::string>::__count_unique<std::string>(a3, &v60.__r_.__value_.__l.__data_))
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
          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Using location-specific classLM slot for template=", 50);
          v31 = *(v6 + 55);
          if (v31 >= 0)
          {
            v32 = (v6 + 4);
          }

          else
          {
            v32 = v6[4];
          }

          if (v31 >= 0)
          {
            v33 = *(v6 + 55);
          }

          else
          {
            v33 = v6[5];
          }

          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ": placeholder ", 14);
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = &v60;
          }

          else
          {
            v36 = v60.__r_.__value_.__r.__words[0];
          }

          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v37 = v60.__r_.__value_.__l.__size_;
          }

          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " not found in regional map", 26);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v43);
        }

        v9 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a3, &v60.__r_.__value_.__l.__data_);
        std::__tree<std::string>::__remove_node_pointer(a3, v9);
        v41 = v9;
        v42 = 1;
        std::string::operator=((v9 + 32), (v6 + 4));
        std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>>::__node_handle_insert_unique[abi:ne200100]<std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,void *>,std::allocator<std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>,std::__map_node_handle_specifics>,std::__insert_return_type<std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,void *>*,long>>,std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,void *>,std::allocator<std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>,std::__map_node_handle_specifics>>>(a3, &v41, &v39);
        v10 = v40;
        if (v40)
        {
          std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>(v40 + 32);
          operator delete(v10);
          v40 = 0;
        }

        if (quasar::gLogLevel >= 4)
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
          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Using location-specific classLM slot for template=", 50);
          v12 = *(v6 + 55);
          if (v12 >= 0)
          {
            v13 = (v6 + 4);
          }

          else
          {
            v13 = v6[4];
          }

          if (v12 >= 0)
          {
            v14 = *(v6 + 55);
          }

          else
          {
            v14 = v6[5];
          }

          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", using placeholder ", 20);
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = &v60;
          }

          else
          {
            v17 = v60.__r_.__value_.__r.__words[0];
          }

          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v18 = v60.__r_.__value_.__l.__size_;
          }

          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " from regional map", 18);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v43);
        }

        v20 = v41;
        if (v41)
        {
          std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>(v41 + 32);
          operator delete(v20);
        }
      }

      else
      {
        std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>> const&>(a3, v6 + 4);
        if ((v21 & 1) != 0 && quasar::gLogLevel >= 4)
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
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Using decoder-specific classLM slot for template=", 49);
          v23 = *(v6 + 55);
          if (v23 >= 0)
          {
            v24 = (v6 + 4);
          }

          else
          {
            v24 = v6[4];
          }

          if (v23 >= 0)
          {
            v25 = *(v6 + 55);
          }

          else
          {
            v25 = v6[5];
          }

          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", location-specific slot not available", 38);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v43);
        }
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      v27 = v6[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v6[2];
          v29 = *v28 == v6;
          v6 = v28;
        }

        while (!v29);
      }

      v6 = v28;
    }

    while (v28 != v5);
  }
}

void sub_1B580CF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  if (*(v8 - 89) < 0)
  {
    operator delete(*(v8 - 112));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v7, *(v7 + 8));
  _Unwind_Resume(a1);
}

void sub_1B580CF60(_Unwind_Exception *a1)
{
  if (*(v2 - 89) < 0)
  {
    operator delete(*(v2 - 112));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1B580CF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,void *>,std::allocator<std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>,std::__map_node_handle_specifics>::__destroy_node_pointer[abi:ne200100](va);
  JUMPOUT(0x1B580CF8CLL);
}

void quasar::OnlineTransducerGraphSearchDecoder::filterOutUnsupportedPlaceholders(uint64_t a1@<X0>, const void ***a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 504), v5 + 4))
      {
        std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>> const&>(a3, v5 + 4);
      }

      else if (quasar::gLogLevel >= 4)
      {
        memset(v14, 0, sizeof(v14));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Filtering out unsupported / unused placeholder ", 47);
        v8 = *(v5 + 55);
        if (v8 >= 0)
        {
          v9 = (v5 + 4);
        }

        else
        {
          v9 = v5[4];
        }

        if (v8 >= 0)
        {
          v10 = *(v5 + 55);
        }

        else
        {
          v10 = v5[5];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(v14);
      }

      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
    }

    while (v12 != v4);
  }
}

void quasar::OnlineTransducerGraphSearchDecoder::DecoderCreationDependencies::clear(quasar::OnlineTransducerGraphSearchDecoder::DecoderCreationDependencies *this)
{
  v2 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 9);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 11);
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 13);
  *(this + 12) = 0;
  *(this + 13) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 17);
  *(this + 16) = 0;
  *(this + 17) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 15);
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void quasar::OnlineTransducerGraphSearchDecoder::clearCaches(quasar::OnlineTransducerGraphSearchDecoder *this)
{
  v1 = *(this + 263);
  for (i = *(this + 264); v1 != i; v1 += 2)
  {
    v3 = *v1;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel(v3, __p, &v6);
    (*(*v6 + 24))(v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B580D280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineTransducerGraphSearchDecoder::DecoderCreationDependencies::~DecoderCreationDependencies(quasar::OnlineTransducerGraphSearchDecoder::DecoderCreationDependencies *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 5);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 1);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void fst::DeterminizeLatticePrunedOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "delta");
  std::string::basic_string[abi:ne200100]<0>(__p, "Tolerance used in determinization");
  (*(*a2 + 24))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-mem");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum approximate memory usage in determinization (real usage might be many times this)");
  (*(*a2 + 8))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-arcs");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum number of arcs in output FST (total, not per state");
  (*(*a2 + 8))(a2, v6, a1 + 16, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-states");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum number of arcs in output FST (total, not per state");
  (*(*a2 + 8))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-loop");
  std::string::basic_string[abi:ne200100]<0>(__p, "Option used to detect a particular type of determinization failure, typically due to invalid input (e.g., negative-cost loops)");
  (*(*a2 + 8))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "retry-cutoff");
  std::string::basic_string[abi:ne200100]<0>(__p, "Controls pruning un-determinized lattice and retrying determinization: if effective-beam < retry-cutoff * beam, we prune the raw lattice and retry.  Avoids ever getting empty output for long segments.");
  (*(*a2 + 24))(a2, v6, a1 + 20, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B580D630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void _ZNSt3__120__shared_ptr_emplaceIN6quasar34OnlineTransducerGraphSearchDecoder23LmeCreationDependenciesENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D32660;
  quasar::OnlineTransducerGraphSearchDecoder::LmeCreationDependencies::LmeCreationDependencies((a1 + 3));
}

void std::__shared_ptr_emplace<quasar::OnlineTransducerGraphSearchDecoder::LmeCreationDependencies>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D32660;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::OnlineTransducerGraphSearchDecoder::LmeCreationDependencies>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v5 = (a1 + 88);
  std::vector<quasar::LmeInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = (a1 + 24);
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void quasar::OnlineTransducerGraphSearchDecoder::LmeCreationDependencies::LmeCreationDependencies(quasar::OnlineTransducerGraphSearchDecoder::LmeCreationDependencies *this)
{
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  operator new();
}

void sub_1B580D8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 64);
  std::vector<quasar::LmeInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 + 56);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(v10 + 24);
  if (v13)
  {
    *(v10 + 32) = v13;
    operator delete(v13);
  }

  a10 = v10;
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_0,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D326B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_0,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::operator()(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 8);
  if (**(a1 + 16))
  {
    quasar::ModelLoader::requestEmbeddedMlock(*(v6 + 376), a2, v14);
    v7 = *(&v14[0] + 1);
    v8 = *(v6 + 376);
    v15 = v14[0];
    if (*(&v14[0] + 1))
    {
      v9 = 0;
      atomic_fetch_add_explicit((*(&v14[0] + 1) + 8), 1uLL, memory_order_relaxed);
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(v6 + 376);
    v9 = 1;
    v15 = 0uLL;
  }

  quasar::ModelLoader::readFstNetwork(v8, a2, &v15, a3);
  if (*(&v15 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
  }

  if ((*(**a3 + 64))(*a3, 0x10000000, 0) != 0x10000000)
  {
    memset(v14, 0, sizeof(v14));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "bigGFst: input label is not sorted!", 35);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v14);
  }

  if ((*(v6 + 2132) & 1) != 0 || *(v6 + 448) == 1)
  {
    std::allocate_shared[abi:ne200100]<quasar::StateAccessRecordingFst,std::allocator<quasar::StateAccessRecordingFst>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,0>();
  }

  *&v14[0] = a2;
  v10 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v6 + 1984, a2);
  v12 = *a3;
  v11 = a3[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(v10 + 64);
  *(v10 + 56) = v12;
  *(v10 + 64) = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  **(a1 + 16) = 0;
  if ((v9 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1B580DB9C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_0,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D32730;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 376);
  v5 = *(v3 + 1892);
  v6 = *(a1 + 16);
  v7 = *(v3 + 1888);
  LOBYTE(__p) = 0;
  v10 = 0;
  quasar::ModelLoader::readNeuralNetworkLm(v4, a2, v3 + 1600, v5, v7, &__p, a3, v6);
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }
}

void sub_1B580DD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B580DE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::string*>(uint64_t a1, uint64_t *a2, uint64_t *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(v4, v6[2], v6[3]);
        v4 = v12;
      }

      else
      {
        v7 = *(v6 + 1);
        v4->__r_.__value_.__r.__words[2] = v6[4];
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = *v6;
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_2,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_2>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D327B0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_2,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_2>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::operator()(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  quasar::ModelLoader::requestEmbeddedMlock(*(v5 + 376), a2, &v8);
  v6 = v9;
  v7 = *(v5 + 376);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::ModelLoader::readFstNetwork(v7, a2, &v8, a3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1B580E020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_2,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_2>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_3,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_3>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D32830;
  a2[1] = v2;
  return result;
}

void std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_3,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_3>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 376);
  v5 = *(v3 + 1892);
  v6 = *(v3 + 1888);
  LOBYTE(__p) = 0;
  v9 = 0;
  quasar::ModelLoader::readNeuralNetworkLm(v4, a2, v3 + 1600, v5, v6, &__p, a3, 0.0);
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_1B580E194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_3,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::finishInit(void)::$_3>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<kaldi::RandomAccessTableReader<kaldi::TokenVectorHolder>>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<kaldi::RandomAccessTableReader<kaldi::TokenVectorHolder>>,0>(void *a1, std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D328B0;
  kaldi::RandomAccessTableReader<kaldi::TokenVectorHolder>::RandomAccessTableReader(a1 + 3, a2);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::RandomAccessTableReader<kaldi::TokenVectorHolder>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D328B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *kaldi::RandomAccessTableReader<kaldi::TokenVectorHolder>::RandomAccessTableReader(void *a1, std::string *this)
{
  *a1 = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    if (!this->__r_.__value_.__l.__size_)
    {
      return a1;
    }
  }

  else if (!*(&this->__r_.__value_.__s + 23))
  {
    return a1;
  }

  if ((kaldi::RandomAccessTableReader<kaldi::TokenVectorHolder>::Open(a1, this) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Error opening RandomAccessTableReader object  (rspecifier is: ", 62);
    v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v6 >= 0)
    {
      v7 = this;
    }

    else
    {
      v7 = this->__r_.__value_.__r.__words[0];
    }

    if (v6 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, size);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, ")");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  return a1;
}

uint64_t kaldi::RandomAccessTableReader<kaldi::TokenVectorHolder>::Open(void *a1, std::string *this)
{
  if (*a1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "RandomAccessTableReader::Open(): already open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  v9 = 0;
  v3 = kaldi::ClassifyRspecifier(this, 0, &v9);
  if (v3 == 1)
  {
    if (BYTE1(v9) == 1)
    {
      if (BYTE2(v9) == 1)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  if (v3 == 2)
  {
    operator new();
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "RandomAccessTableReader::Open(), invalid rspecifier: ", 53);
    v5 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v5 >= 0)
    {
      v6 = this;
    }

    else
    {
      v6 = this->__r_.__value_.__r.__words[0];
    }

    if (v5 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, size);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v10);
  }

  return 0;
}

BOOL kaldi::RandomAccessTableReaderScriptImpl<kaldi::TokenVectorHolder>::Open(uint64_t a1, std::string *this)
{
  if ((*(a1 + 152) - 2) <= 2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v39);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v39, " Opening already open RandomAccessTableReader: call Close first.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v39);
  }

  kaldi::ClassifyRspecifier(this, a1 + 48, a1 + 16);
  v4 = 1;
  result = kaldi::ReadScriptFile(a1 + 48, 1, (a1 + 120));
  if (result)
  {
    std::string::operator=((a1 + 24), this);
    if ((*(a1 + 17) & 1) == 0)
    {
      v6 = *(a1 + 120);
      v7 = *(a1 + 128);
      v8 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4));
      if (v7 == v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,false>(v6, v7, v39, v9, 1);
    }

    v10 = *(a1 + 120);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 128) - v10) >> 4) <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 128) - v10) >> 4);
    }

    v12 = -48;
    do
    {
      if (!--v11)
      {
        result = 1;
        v4 = 2;
        goto LABEL_62;
      }

      v13 = v10 + v12 + 96;
      v14 = (v10 + v12 + 48);
      v15 = *(v10 + v12 + 71);
      if (v15 < 0)
      {
        v16 = *(v10 + v12 + 56);
        v14 = *v14;
      }

      else
      {
        v16 = *(v10 + v12 + 71);
      }

      v12 += 48;
      v17 = *(v13 + 23);
      if (v17 >= 0)
      {
        v18 = *(v13 + 23);
      }

      else
      {
        v18 = *(v13 + 8);
      }

      if (v17 >= 0)
      {
        v19 = v13;
      }

      else
      {
        v19 = *v13;
      }

      if (v18 >= v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = v18;
      }

      v21 = memcmp(v14, v19, v20);
      if (v16 >= v18)
      {
        v22 = 0;
      }

      else
      {
        v22 = -1;
      }

      if (v21)
      {
        v22 = v21;
      }
    }

    while (v22 < 0);
    v23 = (v10 + v12);
    v24 = *(v10 + v12 + 8);
    if (v15 >= 0)
    {
      v24 = v15;
    }

    v25 = " is not sorted (remove s, option or add ns, option): key is ";
    if (v24 == v18)
    {
      v26 = v15 >= 0 ? v23 : *v23;
      if (!memcmp(v26, v19, v18))
      {
        v25 = " contains duplicate key: ";
      }
    }

    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v39);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Script file ", 12);
      if (*(a1 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v37, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        v37 = *(a1 + 48);
      }

      kaldi::PrintableRxfilename(&v37, &__p);
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

      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, p_p, size);
      v31 = strlen(v25);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v25, v31);
      v33 = *(a1 + 120) + v12;
      v34 = *(v33 + 23);
      if (v34 >= 0)
      {
        v35 = *(a1 + 120) + v12;
      }

      else
      {
        v35 = *v33;
      }

      if (v34 >= 0)
      {
        v36 = *(v33 + 23);
      }

      else
      {
        v36 = *(v33 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v35, v36);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v39);
    }

    result = 0;
    v4 = 1;
  }

LABEL_62:
  *(a1 + 152) = v4;
  return result;
}

void *kaldi::RandomAccessTableReaderScriptImpl<kaldi::TokenVectorHolder>::Value(void *a1, uint64_t a2)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v26, "RandomAccessTableReaderWriter: Value() called on not-open object.");
    goto LABEL_24;
  }

  v4 = *(a1 + 38);
  if ((v4 - 3) > 1)
  {
    goto LABEL_16;
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = *(a1 + 95);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = a1[10];
  }

  if (v6 != v7 || (v5 >= 0 ? (v9 = a2) : (v9 = *a2), v8 >= 0 ? (v10 = a1 + 9) : (v10 = a1[9]), memcmp(v9, v10, v6)))
  {
LABEL_16:
    if ((*(*a1 + 56))(a1, a2, 1))
    {
      goto LABEL_17;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "RandomAccessTableReader::Value(), could not get item for key ", 61);
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
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", rspecifier is ", 16);
    v20 = a1[3];
    v19 = (a1 + 3);
    v18 = v20;
    v21 = *(v19 + 23);
    if (v21 >= 0)
    {
      v22 = v19;
    }

    else
    {
      v22 = v18;
    }

    if (v21 >= 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = *(v19 + 8);
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v22, v23);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "[to ignore this ", 16);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, ", add the p, (permissive) option to the rspecifier.");
LABEL_24:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
  }

  if (v4 != 3)
  {
    if (*(a1 + 16) != 1)
    {
      return a1 + 12;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v26, "Value called twice for the same key\n");
    goto LABEL_24;
  }

LABEL_17:
  *(a1 + 38) = 4;
  if (*(a1 + 16) == 1)
  {
    kaldi::RandomAccessTableReaderScriptImpl<kaldi::TokenVectorHolder>::MakeTombstone(a1, a2);
  }

  return a1 + 12;
}

uint64_t kaldi::RandomAccessTableReaderScriptImpl<kaldi::TokenVectorHolder>::Close(uint64_t a1)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "Close() called on RandomAccessTableReader that was not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  std::vector<std::string>::clear[abi:ne200100]((a1 + 96));
  v2 = *(a1 + 120);
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  for (i = *(a1 + 128); i != v2; std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](a1 + 120, i))
  {
    i -= 48;
  }

  *(a1 + 128) = v2;
  MEMORY[0x1B8C84820](a1 + 72, "");
  return 1;
}

void kaldi::RandomAccessTableReaderScriptImpl<kaldi::TokenVectorHolder>::~RandomAccessTableReaderScriptImpl(uint64_t a1)
{
  kaldi::RandomAccessTableReaderScriptImpl<kaldi::TokenVectorHolder>::~RandomAccessTableReaderScriptImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::RandomAccessTableReaderScriptImpl<kaldi::TokenVectorHolder>::HasKeyInternal(uint64_t a1, __int128 *a2, int a3)
{
  if (*(a1 + 152) <= 1u)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, "HasKey called on RandomAccessTableReader object that is not open.");
    goto LABEL_49;
  }

  kaldi::IsToken(a2);
  v23 = 0;
  result = kaldi::RandomAccessTableReaderScriptImpl<kaldi::TokenVectorHolder>::LookupKey(a1, a2, &v23);
  if (!result)
  {
    return result;
  }

  if (*(a1 + 16) == 1)
  {
    v7 = *(a1 + 120) + 48 * v23;
    if (*(v7 + 47) < 0)
    {
      if (*(v7 + 32))
      {
        goto LABEL_6;
      }
    }

    else if (*(v7 + 47))
    {
      goto LABEL_6;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "HasKey called on key whose value was already read, and  you specified the once option (o,): try removing o, or adding no, : rspecifier is ", 141);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, a1 + 24);
LABEL_49:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
  }

LABEL_6:
  if (!a3)
  {
    return 1;
  }

  if (kaldi::Input::OpenInternal((a1 + 8), *(a1 + 120) + 48 * v23 + 24, 1, 0))
  {
    if ((*(a1 + 152) - 3) <= 1)
    {
      std::vector<std::string>::clear[abi:ne200100]((a1 + 96));
    }

    v8 = kaldi::Input::Stream((a1 + 8));
    if (kaldi::TokenVectorHolder::Read((a1 + 96), v8))
    {
      *(a1 + 152) = 3;
      std::string::operator=((a1 + 72), a2);
      return 1;
    }

    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "RandomAccessTableReader: error reading object from stream ", 58);
      v14 = *(a1 + 120) + 48 * v23;
      if (*(v14 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, *(v14 + 24), *(v14 + 32));
      }

      else
      {
        v15 = *(v14 + 24);
        v20.__r_.__value_.__r.__words[2] = *(v14 + 40);
        *&v20.__r_.__value_.__l.__data_ = v15;
      }

      kaldi::PrintableRxfilename(&v20, &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v24);
    }

    result = 0;
    *(a1 + 152) = 2;
  }

  else
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "RandomAccessTableReader: error opening stream ", 46);
      v10 = *(a1 + 120) + 48 * v23;
      if (*(v10 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, *(v10 + 24), *(v10 + 32));
      }

      else
      {
        v11 = *(v10 + 24);
        v21.__r_.__value_.__r.__words[2] = *(v10 + 40);
        *&v21.__r_.__value_.__l.__data_ = v11;
      }

      kaldi::PrintableRxfilename(&v21, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &__p;
      }

      else
      {
        v16 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v16, v17);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v24);
    }

    return 0;
  }

  return result;
}

uint64_t kaldi::RandomAccessTableReaderScriptImpl<kaldi::TokenVectorHolder>::MakeTombstone(void *a1, __int128 *a2)
{
  v5 = 0;
  if ((kaldi::RandomAccessTableReaderScriptImpl<kaldi::TokenVectorHolder>::LookupKey(a1, a2, &v5) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "RandomAccessTableReader object in inconsistent state.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return MEMORY[0x1B8C84820](a1[15] + 48 * v5 + 24, "");
}

uint64_t kaldi::RandomAccessTableReaderScriptImpl<kaldi::TokenVectorHolder>::LookupKey(void *a1, __int128 *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = a1[18];
  v7 = a1[15];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((a1[16] - v7) >> 4);
  if (v6 < v8)
  {
    v9 = v7 + 48 * v6;
    v10 = *(v9 + 23);
    if (v10 >= 0)
    {
      v11 = *(v9 + 23);
    }

    else
    {
      v11 = *(v9 + 8);
    }

    v12 = *(a2 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 1);
    }

    if (v11 == v12)
    {
      if (v10 >= 0)
      {
        v14 = (v7 + 48 * v6);
      }

      else
      {
        v14 = *v9;
      }

      if (v13 < 0)
      {
        a2 = *a2;
      }

      if (!memcmp(v14, a2, v11))
      {
        goto LABEL_57;
      }
    }
  }

  a1[18] = ++v6;
  if (v6 >= v8)
  {
    goto LABEL_28;
  }

  v15 = v7 + 48 * v6;
  v16 = *(v15 + 23);
  if (v16 >= 0)
  {
    v17 = *(v15 + 23);
  }

  else
  {
    v17 = *(v15 + 8);
  }

  v18 = *(v4 + 23);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(v4 + 1);
  }

  if (v17 == v18 && (v16 >= 0 ? (v20 = (v7 + 48 * v6)) : (v20 = *v15), v19 >= 0 ? (v21 = v4) : (v21 = *v4), !memcmp(v20, v21, v17)))
  {
LABEL_57:
    *a3 = v6;
    return 1;
  }

  else
  {
LABEL_28:
    std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const&,char const(&)[1],0>(&v36, v4, "");
    v23 = a1[15];
    v22 = a1[16];
    if (v22 == v23)
    {
      v23 = a1[16];
    }

    else
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 4);
      do
      {
        v25 = &v23[6 * (v24 >> 1)];
        v26 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(&v39, v25, &v36.__r_.__value_.__l.__data_);
        if (v26)
        {
          v24 += ~(v24 >> 1);
        }

        else
        {
          v24 >>= 1;
        }

        if (v26)
        {
          v23 = v25 + 6;
        }
      }

      while (v24);
      v22 = a1[16];
    }

    if (v22 == v23)
    {
      goto LABEL_52;
    }

    v27 = *(v23 + 23);
    if (v27 >= 0)
    {
      v28 = *(v23 + 23);
    }

    else
    {
      v28 = v23[1];
    }

    v29 = *(v4 + 23);
    v30 = v29;
    if ((v29 & 0x80u) != 0)
    {
      v29 = *(v4 + 1);
    }

    if (v28 == v29 && (v27 >= 0 ? (v31 = v23) : (v31 = *v23), v30 >= 0 ? (v32 = v4) : (v32 = *v4), !memcmp(v31, v32, v28)))
    {
      v35 = 0xAAAAAAAAAAAAAAABLL * ((v23 - a1[15]) >> 4);
      *a3 = v35;
      a1[18] = v35;
      v33 = 1;
    }

    else
    {
LABEL_52:
      v33 = 0;
    }

    if (v38 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  return v33;
}

void sub_1B580F420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::RandomAccessTableReaderScriptImpl<kaldi::TokenVectorHolder>::~RandomAccessTableReaderScriptImpl(uint64_t a1)
{
  *a1 = &unk_1F2D32900;
  if ((*(a1 + 152) - 3) <= 1)
  {
    std::vector<std::string>::clear[abi:ne200100]((a1 + 96));
  }

  v3 = (a1 + 120);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 96);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  kaldi::Input::~Input((a1 + 8));
  return a1;
}

BOOL kaldi::TokenVectorHolder::Read(void ***a1, void *a2)
{
  std::vector<std::string>::clear[abi:ne200100](a1);
  memset(&v13, 0, sizeof(v13));
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v4 = std::locale::use_facet(&v12, MEMORY[0x1E69E5318]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v12);
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v13, v5);
  v6 = *(a2 + *(*a2 - 24) + 32) & 5;
  if (v6)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v12);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "BasicVectorHolder::Read, error reading line ", 44);
      v8 = *(a2 + *(*a2 - 24) + 32);
      if ((v8 & 2) != 0)
      {
        v9 = "[eof]";
      }

      else
      {
        v9 = "";
      }

      if ((v8 & 2) != 0)
      {
        v10 = 5;
      }

      else
      {
        v10 = 0;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v12);
    }
  }

  else
  {
    kaldi::SplitStringToVector(&v13, " \t\n\r\f\v", 1, a1);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v6 == 0;
}

void sub_1B580F674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  if (*(v10 - 33) < 0)
  {
    operator delete(*(v10 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::Open(uint64_t a1, std::string *this)
{
  if (*(a1 + 76) && ((*(*a1 + 24))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "TableReader::Open, error closing previous input.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  kaldi::ClassifyRspecifier(this, a1 + 48, a1 + 72);
  v4 = kaldi::Input::OpenInternal((a1 + 8), a1 + 48, 0, 0);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "TableReader: failed to open stream ", 35);
      if (*(a1 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v10, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        v10 = *(a1 + 48);
      }

      kaldi::PrintableRxfilename(&v10, &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v12);
    }

    v5 = 0;
  }

  *(a1 + 76) = v5;
  return v4;
}

uint64_t kaldi::RandomAccessTableReaderDSortedArchiveImpl<kaldi::TokenVectorHolder>::Value(uint64_t a1, uint64_t a2)
{
  if (!kaldi::RandomAccessTableReaderDSortedArchiveImpl<kaldi::TokenVectorHolder>::FindKeyInternal(a1, a2))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "RandomAccessTableReader: Value() called but no such key ", 56);
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
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " in archive ", 12);
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      __p = *(a1 + 48);
    }

    kaldi::PrintableRxfilename(&__p, &v12);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, &v12);
    std::string::~string(&v12);
    std::string::~string(&__p);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  return *(a1 + 40);
}

void kaldi::RandomAccessTableReaderDSortedArchiveImpl<kaldi::TokenVectorHolder>::~RandomAccessTableReaderDSortedArchiveImpl(uint64_t a1)
{
  kaldi::RandomAccessTableReaderDSortedArchiveImpl<kaldi::TokenVectorHolder>::~RandomAccessTableReaderDSortedArchiveImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::IsOpen(uint64_t a1)
{
  v1 = *(a1 + 76);
  if (v1 >= 5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "IsOpen() called on invalid object.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  return (0x1Eu >> v1) & 1;
}

BOOL kaldi::RandomAccessTableReaderDSortedArchiveImpl<kaldi::TokenVectorHolder>::FindKeyInternal(uint64_t a1, std::string *__str)
{
  v4 = (a1 + 80);
  v5 = *(a1 + 103);
  if ((v5 & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 88))
    {
      goto LABEL_23;
    }
  }

  else if (!*(a1 + 103))
  {
    goto LABEL_23;
  }

  v6 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v6 >= 0)
  {
    v8 = __str;
  }

  else
  {
    v8 = __str->__r_.__value_.__r.__words[0];
  }

  if ((v5 & 0x80000000) == 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = *(a1 + 88);
  }

  if ((v5 & 0x80000000) == 0)
  {
    v10 = v4;
  }

  else
  {
    v10 = *(a1 + 80);
  }

  if (v9 >= size)
  {
    v11 = size;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  v13 = size < v9;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v53);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "RandomAccessTableReader: you provided the cs option ", 54);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "but are not calling with keys in sorted order: ", 47);
    v47 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v47 >= 0)
    {
      v48 = __str;
    }

    else
    {
      v48 = __str->__r_.__value_.__r.__words[0];
    }

    if (v47 >= 0)
    {
      v49 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = __str->__r_.__value_.__l.__size_;
    }

    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v48, v49);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " < ", 3);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v51, v4);
LABEL_92:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v53);
  }

LABEL_23:
  std::string::operator=(v4, __str);
  v14 = *(a1 + 76);
  if (v14 == 1)
  {
    kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::ReadNextObject(a1);
    v14 = *(a1 + 76);
  }

  if ((v14 - 3) < 2)
  {
    return 0;
  }

  if (!v14)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v53);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v53, "Trying to access a RandomAccessTableReader object that is not open.");
    goto LABEL_92;
  }

  v16 = 0;
  memset(&__p, 0, sizeof(__p));
  v17 = *(a1 + 39);
  while (1)
  {
    v18 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v18 >= 0)
    {
      v19 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = __str->__r_.__value_.__l.__size_;
    }

    if (v18 >= 0)
    {
      v20 = __str;
    }

    else
    {
      v20 = __str->__r_.__value_.__r.__words[0];
    }

    v21 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a1 + 24);
    }

    v22 = v21 >= 0 ? (a1 + 16) : *(a1 + 16);
    v23 = v17 >= v19 ? v19 : v17;
    v24 = memcmp(v20, v22, v23);
    v25 = v19 < v17 ? -1 : v17 < v19;
    v26 = v24 ? v24 : v25;
    if (v26 < 1)
    {
      break;
    }

    std::string::operator=(&__p, (a1 + 16));
    v53[0] = *(a1 + 40);
    v27 = v53[0];
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v53);
    MEMORY[0x1B8C85350](v27, 0x20C40960023A9);
    *(a1 + 40) = 0;
    *(a1 + 76) = 1;
    kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::ReadNextObject(a1);
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (*(a1 + 76) != 2)
    {
      break;
    }

    v17 = *(a1 + 39);
    v28 = v17;
    v29 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v29 = *(a1 + 16);
      v28 = *(a1 + 24);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v30 >= v28)
    {
      v32 = v28;
    }

    else
    {
      v32 = v30;
    }

    v33 = memcmp(v29, p_p, v32);
    if (v28 < v30)
    {
      v34 = -1;
    }

    else
    {
      v34 = v30 < v28;
    }

    if (v33)
    {
      v34 = v33;
    }

    if (v34 <= 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v53);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "RandomAccessTableReader: you provided the s option ", 53);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " (sorted order), but keys are out of order or duplicated: ", 58);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &__p;
      }

      else
      {
        v37 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = __p.__r_.__value_.__l.__size_;
      }

      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " is followed by ", 16);
      v41 = *(a1 + 39);
      if (v41 >= 0)
      {
        v42 = a1 + 16;
      }

      else
      {
        v42 = *(a1 + 16);
      }

      if (v41 >= 0)
      {
        v43 = *(a1 + 39);
      }

      else
      {
        v43 = *(a1 + 24);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v42, v43);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v53);
    }
  }

  v15 = v26 == 0;
  if (v16 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_1B580FDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::ReadNextObject(uint64_t a1)
{
  if (*(a1 + 76) != 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "TableReader: ReadNextObject() called from wrong state.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
  }

  v2 = kaldi::Input::Stream((a1 + 8));
  std::ios_base::clear((v2 + *(*v2 - 24)), 0);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, a1 + 16);
  v3 = *(v2 + *(*v2 - 24) + 32);
  if ((v3 & 2) == 0)
  {
    if ((v3 & 5) != 0)
    {
      if (kaldi::g_kaldi_verbose_level < -1)
      {
LABEL_26:
        v5 = 4;
        goto LABEL_27;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Error reading archive ", 22);
      if (*(a1 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        v25 = *(a1 + 48);
      }

      kaldi::PrintableRxfilename(&v25, &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_25:
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v27);
        goto LABEL_26;
      }

      v9 = v25.__r_.__value_.__r.__words[0];
LABEL_24:
      operator delete(v9);
      goto LABEL_25;
    }

    v6 = std::istream::peek();
    if (v6 != 9)
    {
      if (v6 == 10)
      {
        goto LABEL_12;
      }

      if (v6 != 32)
      {
        if (kaldi::g_kaldi_verbose_level < -1)
        {
          goto LABEL_26;
        }

        kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Invalid archive file format: expected space after key ", 54);
        v11 = *(a1 + 39);
        if (v11 >= 0)
        {
          v12 = a1 + 16;
        }

        else
        {
          v12 = *(a1 + 16);
        }

        if (v11 >= 0)
        {
          v13 = *(a1 + 39);
        }

        else
        {
          v13 = *(a1 + 24);
        }

        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", got character ", 16);
        v24 = std::istream::peek();
        kaldi::CharToString(&v24, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &__p;
        }

        else
        {
          v16 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v17 = __p.__r_.__value_.__l.__size_;
        }

        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", reading ", 10);
        if (*(a1 + 71) < 0)
        {
          std::string::__init_copy_ctor_external(&v22, *(a1 + 48), *(a1 + 56));
        }

        else
        {
          v22 = *(a1 + 48);
        }

        kaldi::PrintableRxfilename(&v22, &v23);
        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v23;
        }

        else
        {
          v20 = v23.__r_.__value_.__r.__words[0];
        }

        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v23.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v9 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_24;
      }
    }

    std::istream::get();
LABEL_12:
    operator new();
  }

  v5 = 3;
LABEL_27:
  *(a1 + 76) = v5;
}

uint64_t kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::CloseInternal(uint64_t a1)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "Close() called on TableReader twice or otherwise wrongly.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  if (*(a1 + 8))
  {
    kaldi::Input::Close((a1 + 8));
  }

  v2 = *(a1 + 76);
  if (v2 == 2)
  {
    v6[0] = *(a1 + 40);
    v3 = v6[0];
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v6);
    MEMORY[0x1B8C85350](v3, 0x20C40960023A9);
    *(a1 + 40) = 0;
    v2 = *(a1 + 76);
  }

  *(a1 + 76) = 0;
  if (v2 != 4)
  {
    return 1;
  }

  if (*(a1 + 75) == 1)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "RandomAccessTableReader, error state detected closing reader.  ", 63);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Ignoring it because you specified permissive mode.", 50);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v6);
    }

    return 1;
  }

  return 0;
}

uint64_t kaldi::RandomAccessTableReaderDSortedArchiveImpl<kaldi::TokenVectorHolder>::~RandomAccessTableReaderDSortedArchiveImpl(uint64_t a1)
{
  *a1 = &unk_1F2D32978;
  if (kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::IsOpen(a1) && ((*(*a1 + 24))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Error closing RandomAccessTableReader\n", 38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  return kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::~RandomAccessTableReaderArchiveImplBase(a1);
}

uint64_t kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::~RandomAccessTableReaderArchiveImplBase(uint64_t a1)
{
  *a1 = &unk_1F2D329F0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  kaldi::Input::~Input((a1 + 8));
  return a1;
}

uint64_t kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::TokenVectorHolder>::HasKey(uint64_t a1, const std::string::value_type *a2)
{
  kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::TokenVectorHolder>::HandlePendingDelete(a1);
  v10 = 0;
  result = kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::TokenVectorHolder>::FindKeyInternal(a1, a2, &v10);
  if (result && *(a1 + 72) == 1 && !*(*(a1 + 80) + 32 * v10 + 24))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Error: HasKey called after Value() already called for ", 54);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " that key, and once (o) option specified: ", 42);
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      __p = *(a1 + 48);
    }

    kaldi::PrintableRxfilename(&__p, &v8);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, &v8);
    std::string::~string(&v8);
    std::string::~string(&__p);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  return result;
}

uint64_t kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::TokenVectorHolder>::Value(uint64_t a1, uint64_t a2)
{
  kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::TokenVectorHolder>::HandlePendingDelete(a1);
  v22 = 0;
  if (!kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::TokenVectorHolder>::FindKeyInternal(a1, a2, &v22))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "RandomAccessTableReader: Value() called but no such key ", 56);
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
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " in archive ", 12);
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      v18 = *(a1 + 48);
    }

    kaldi::PrintableRxfilename(&v18, &v20);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, &v20);
    std::string::~string(&v20);
    v17 = &v18;
LABEL_26:
    std::string::~string(v17);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v21);
  }

  result = *(*(a1 + 80) + 32 * v22 + 24);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Error: Value() called more than once for key ", 45);
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

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " and once (o) option specified: ", 32);
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      v19 = *(a1 + 48);
    }

    kaldi::PrintableRxfilename(&v19, &v20);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, &v20);
    std::string::~string(&v20);
    v17 = &v19;
    goto LABEL_26;
  }

  if (*(a1 + 72) == 1)
  {
    *(a1 + 112) = v22;
  }

  return result;
}

uint64_t kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::TokenVectorHolder>::Close(void *a1)
{
  v2 = a1[10];
  v3 = a1[11];
  v4 = (a1 + 10);
  if (v3 != v2)
  {
    v5 = 0;
    v6 = 24;
    do
    {
      v7 = *(v2 + v6);
      if (v7)
      {
        v9 = *(v2 + v6);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
        MEMORY[0x1B8C85350](v7, 0x20C40960023A9);
        v2 = a1[10];
        v3 = a1[11];
      }

      ++v5;
      v6 += 32;
    }

    while (v5 < (v3 - v2) >> 5);
  }

  std::vector<quasar::TextTokenizer::Token>::clear[abi:ne200100](v4);
  a1[13] = -1;
  a1[14] = -1;
  return kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::CloseInternal(a1);
}

void kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::TokenVectorHolder>::~RandomAccessTableReaderSortedArchiveImpl(void **a1)
{
  kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::TokenVectorHolder>::~RandomAccessTableReaderSortedArchiveImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::TokenVectorHolder>::HandlePendingDelete(uint64_t result)
{
  v3 = *(result + 112);
  if (v3 != -1)
  {
    v6[3] = v1;
    v6[4] = v2;
    v4 = result;
    v6[0] = *(*(result + 80) + 32 * v3 + 24);
    v5 = v6[0];
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v6);
    result = MEMORY[0x1B8C85350](v5, 0x20C40960023A9);
    *(*(v4 + 80) + 32 * *(v4 + 112) + 24) = 0;
    *(v4 + 112) = -1;
  }

  return result;
}

uint64_t kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::TokenVectorHolder>::FindKeyInternal(uint64_t a1, const std::string::value_type *a2, void *a3)
{
  v3 = a2;
  v5 = (a1 + 80);
  v6 = *(a1 + 80);
  v7 = *(a1 + 104);
  v8 = *(a1 + 88);
  if (v7 < (v8 - v6) >> 5)
  {
    v9 = v6 + 32 * v7;
    v10 = *(v9 + 23);
    if (v10 >= 0)
    {
      v11 = *(v9 + 23);
    }

    else
    {
      v11 = *(v9 + 8);
    }

    v12 = *(a2 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 1);
    }

    if (v11 == v12)
    {
      if (v10 >= 0)
      {
        v14 = (v6 + 32 * v7);
      }

      else
      {
        v14 = *v9;
      }

      if (v13 < 0)
      {
        a2 = *a2;
      }

      if (!memcmp(v14, a2, v11))
      {
        *a3 = v7;
        return 1;
      }
    }
  }

  v15 = *(a1 + 76);
  if (v15 == 1)
  {
    v17 = 0;
    v88 = (a1 + 16);
    while (1)
    {
      v6 = *(a1 + 80);
      v8 = *(a1 + 88);
      if (v6 != v8)
      {
        v18 = *(v8 - 9);
        v16 = v3[23];
        if (v16 >= 0)
        {
          v19 = *(v3 + 23);
        }

        else
        {
          v19 = *(v3 + 1);
        }

        if (v16 >= 0)
        {
          v20 = v3;
        }

        else
        {
          v20 = *v3;
        }

        if (v18 >= 0)
        {
          v21 = *(v8 - 9);
        }

        else
        {
          v21 = *(v8 - 24);
        }

        if (v18 >= 0)
        {
          v22 = (v8 - 32);
        }

        else
        {
          v22 = *(v8 - 32);
        }

        if (v21 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v21;
        }

        v24 = memcmp(v20, v22, v23);
        if (v19 < v21)
        {
          v25 = -1;
        }

        else
        {
          v25 = v21 < v19;
        }

        if (v24)
        {
          v25 = v24;
        }

        if (v25 < 1)
        {
          break;
        }
      }

      kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::ReadNextObject(a1);
      v26 = *(a1 + 76);
      if (v26 == 2)
      {
        v27 = *(a1 + 88);
        v28 = *(a1 + 39);
        if (*(a1 + 80) != v27)
        {
          v29 = *(a1 + 39);
          v30 = (a1 + 16);
          if ((*(a1 + 39) & 0x80) != 0)
          {
            v30 = *(a1 + 16);
            v29 = *(a1 + 24);
          }

          v31 = *(v27 - 9);
          if (v31 >= 0)
          {
            v32 = *(v27 - 9);
          }

          else
          {
            v32 = *(v27 - 24);
          }

          if (v31 >= 0)
          {
            v33 = (v27 - 32);
          }

          else
          {
            v33 = *(v27 - 32);
          }

          if (v32 >= v29)
          {
            v34 = v29;
          }

          else
          {
            v34 = v32;
          }

          v35 = memcmp(v30, v33, v34);
          if (v29 < v32)
          {
            v36 = -1;
          }

          else
          {
            v36 = v32 < v29;
          }

          if (v35)
          {
            v36 = v35;
          }

          if (v36 <= 0)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v92);
            v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v92, "RandomAccessTableReader: you provide the sorted (s) ", 52);
            v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "option but keys in archive ", 27);
            if (*(a1 + 71) < 0)
            {
              std::string::__init_copy_ctor_external(&v91, *(a1 + 48), *(a1 + 56));
            }

            else
            {
              v91 = *(a1 + 48);
            }

            kaldi::PrintableRxfilename(&v91, &v89);
            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v73 = &v89;
            }

            else
            {
              v73 = v89.__r_.__value_.__r.__words[0];
            }

            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v89.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v89.__r_.__value_.__l.__size_;
            }

            v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v73, size);
            v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, " are not ", 9);
            v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, "in sorted order: ", 17);
            v78 = *(a1 + 88);
            v81 = *(v78 - 32);
            v79 = v78 - 32;
            v80 = v81;
            v82 = *(v79 + 23);
            if (v82 >= 0)
            {
              v83 = v79;
            }

            else
            {
              v83 = v80;
            }

            if (v82 >= 0)
            {
              v84 = *(v79 + 23);
            }

            else
            {
              v84 = *(v79 + 8);
            }

            v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v83, v84);
            v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, " is followed by ", 16);
            std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v86, v88);
            std::string::~string(&v89);
            std::string::~string(&v91);
LABEL_122:
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v92);
          }
        }

        if (v28 < 0)
        {
          std::string::__init_copy_ctor_external(&v89, *(a1 + 16), *(a1 + 24));
          v37 = *(a1 + 40);
          v27 = *(a1 + 88);
        }

        else
        {
          v37 = *(a1 + 40);
          *&v89.__r_.__value_.__l.__data_ = *v88;
          v89.__r_.__value_.__r.__words[2] = *(a1 + 32);
        }

        v90 = v37;
        v38 = *(a1 + 96);
        if (v27 >= v38)
        {
          v40 = (v27 - *v5) >> 5;
          if ((v40 + 1) >> 59)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v41 = v38 - *v5;
          v42 = v41 >> 4;
          if (v41 >> 4 <= (v40 + 1))
          {
            v42 = v40 + 1;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFE0)
          {
            v43 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v43 = v42;
          }

          v94 = v5;
          if (v43)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>(v5, v43);
          }

          v44 = 32 * v40;
          v45 = *&v89.__r_.__value_.__l.__data_;
          *(v44 + 16) = *(&v89.__r_.__value_.__l + 2);
          *v44 = v45;
          memset(&v89, 0, sizeof(v89));
          *(v44 + 24) = v90;
          v46 = 32 * v40 + 32;
          v47 = *(a1 + 80);
          v48 = *(a1 + 88) - v47;
          v49 = (32 * v40 - v48);
          memcpy(v49, v47, v48);
          v50 = *(a1 + 80);
          *(a1 + 80) = v49;
          *(a1 + 88) = v46;
          v51 = *(a1 + 96);
          *(a1 + 96) = 0;
          v92.__r_.__value_.__r.__words[2] = v50;
          v93 = v51;
          v92.__r_.__value_.__r.__words[0] = v50;
          v92.__r_.__value_.__l.__size_ = v50;
          std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v92);
          v52 = SHIBYTE(v89.__r_.__value_.__r.__words[2]);
          *(a1 + 88) = v46;
          if (v52 < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v39 = *&v89.__r_.__value_.__l.__data_;
          *(v27 + 16) = *(&v89.__r_.__value_.__l + 2);
          *v27 = v39;
          memset(&v89, 0, sizeof(v89));
          *(v27 + 24) = v90;
          *(a1 + 88) = v27 + 32;
        }

        *(a1 + 40) = 0;
        v26 = 1;
        *(a1 + 76) = 1;
      }

      v17 = 1;
      if (v26 != 1)
      {
        v6 = *(a1 + 80);
        v8 = *(a1 + 88);
        goto LABEL_98;
      }
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_98:
    if (v6 == v8)
    {
      return 0;
    }

    v62 = *(v8 - 9);
    if (v62 >= 0)
    {
      v63 = *(v8 - 9);
    }

    else
    {
      v63 = *(v8 - 24);
    }

    v64 = *(v3 + 23);
    v65 = v64;
    if ((v64 & 0x80u) != 0)
    {
      v64 = *(v3 + 1);
    }

    if (v63 != v64)
    {
      return 0;
    }

    v66 = v62 >= 0 ? (v8 - 32) : *(v8 - 32);
    v67 = v65 >= 0 ? v3 : *v3;
    if (memcmp(v66, v67, v63))
    {
      return 0;
    }

    v69 = ((v8 - v6) >> 5) - 1;
    *a3 = v69;
    *(a1 + 104) = v69;
    return 1;
  }

  if (!v15)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v92);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v92, "Trying to access a RandomAccessTableReader object that is not open.");
    goto LABEL_122;
  }

  LOBYTE(v16) = v3[23];
LABEL_17:
  if ((v16 & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&v92, *v3, *(v3 + 1));
    v6 = *(a1 + 80);
    v8 = *(a1 + 88);
  }

  else
  {
    v92 = *v3;
  }

  v93 = 0;
  v95 = 0;
  v53 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *> *>,std::pair<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::__identity,kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::PairCompare>(v6, &v92.__r_.__value_.__l.__data_, (v8 - v6) >> 5);
  v54 = v53;
  if (*(a1 + 88) == v53)
  {
    goto LABEL_94;
  }

  v55 = v3[23];
  if (v55 >= 0)
  {
    v56 = *(v3 + 23);
  }

  else
  {
    v56 = *(v3 + 1);
  }

  v57 = *(v53 + 23);
  v58 = v57;
  if ((v57 & 0x80u) != 0)
  {
    v57 = *(v53 + 8);
  }

  if (v56 == v57 && (v55 >= 0 ? (v59 = v3) : (v59 = *v3), v58 >= 0 ? (v60 = v54) : (v60 = *v54), !memcmp(v59, v60, v56)))
  {
    v68 = (v54 - *(a1 + 80)) >> 5;
    *a3 = v68;
    *(a1 + 104) = v68;
    v61 = 1;
  }

  else
  {
LABEL_94:
    v61 = 0;
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  return v61;
}

uint64_t kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::TokenVectorHolder>::~RandomAccessTableReaderSortedArchiveImpl(void **a1)
{
  *a1 = &unk_1F2D32A38;
  if (kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::IsOpen(a1) && ((*(*a1 + 3))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Error closing RandomAccessTableReader\n", 38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  v3[0] = a1 + 10;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v3);
  return kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::~RandomAccessTableReaderArchiveImplBase(a1);
}

uint64_t kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::TokenVectorHolder>::HasKey(uint64_t a1, uint64_t a2)
{
  kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::TokenVectorHolder>::HandlePendingDelete(a1);

  return kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::TokenVectorHolder>::FindKeyInternal(a1, a2, 0);
}

uint64_t kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::TokenVectorHolder>::Value(uint64_t a1, uint64_t a2)
{
  kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::TokenVectorHolder>::HandlePendingDelete(a1);
  v14 = 0;
  if (!kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::TokenVectorHolder>::FindKeyInternal(a1, a2, &v14))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "RandomAccessTableReader: Value() called but no such key ", 56);
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
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " in archive ", 12);
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      __p = *(a1 + 48);
    }

    kaldi::PrintableRxfilename(&__p, &v12);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, &v12);
    std::string::~string(&v12);
    std::string::~string(&__p);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  return v14;
}

uint64_t kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::TokenVectorHolder>::Close(uint64_t a1)
{
  for (i = *(a1 + 96); i; i = *i)
  {
    v3 = i[5];
    if (v3)
    {
      v5 = i[5];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
      MEMORY[0x1B8C85350](v3, 0x20C40960023A9);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(a1 + 80);
  MEMORY[0x1B8C84820](a1 + 136, "");
  *(a1 + 128) = 0;
  return kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::CloseInternal(a1);
}

void kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::TokenVectorHolder>::~RandomAccessTableReaderUnsortedArchiveImpl(uint64_t a1)
{
  kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::TokenVectorHolder>::~RandomAccessTableReaderUnsortedArchiveImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::TokenVectorHolder>::HandlePendingDelete(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    *(a1 + 128) = 0;
    v2 = *(a1 + 120);
    v3 = *(v2 + 40);
    if (v3)
    {
      v12[0] = *(v2 + 40);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
      MEMORY[0x1B8C85350](v3, 0x20C40960023A9);
    }

    v4 = *(a1 + 159);
    if (v4 < 0)
    {
      v4 = *(a1 + 144);
    }

    v5 = *(a1 + 120);
    if (!v4)
    {
      std::string::operator=((a1 + 136), (v5 + 16));
      v5 = *(a1 + 120);
    }

    if (*(v5 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, *(v5 + 16), *(v5 + 24));
      v5 = *(a1 + 120);
    }

    else
    {
      v13 = *(v5 + 16);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>>>::erase((a1 + 80), v5);
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v12, 3);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "After deleting holder for key: ", 31);
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v13;
      }

      else
      {
        v7 = v13.__r_.__value_.__r.__words[0];
      }

      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v13.__r_.__value_.__l.__size_;
      }

      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, size);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", map size = ", 13);
      v11 = MEMORY[0x1B8C84C30](v10, *(a1 + 104));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ".", 1);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v12);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1B58114AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::TokenVectorHolder>::FindKeyInternal(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,kaldi::StringHasher,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::equal_to<std::string>,kaldi::StringHasher,true>,std::allocator<std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>>>::find<std::string>((a1 + 80), a2);
  if (v6)
  {
    if (a3)
    {
      *a3 = v6[5];
      if (*(a1 + 72) == 1)
      {
        *(a1 + 120) = v6;
        goto LABEL_5;
      }
    }

    return 1;
  }

  if (*(a1 + 76) != 1)
  {
LABEL_30:
    if (*(a1 + 72) == 1)
    {
      v19 = *(a2 + 23);
      if (v19 >= 0)
      {
        v20 = *(a2 + 23);
      }

      else
      {
        v20 = *(a2 + 8);
      }

      v21 = *(a1 + 159);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(a1 + 144);
      }

      if (v20 == v21)
      {
        v23 = v19 >= 0 ? a2 : *a2;
        v24 = v22 >= 0 ? (a1 + 136) : *(a1 + 136);
        if (!memcmp(v23, v24, v20))
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v40);
          v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "RandomAccessTableReader: you specified the once (o) option but you are calling using key ", 89);
          v33 = *(a2 + 23);
          if (v33 >= 0)
          {
            v34 = a2;
          }

          else
          {
            v34 = *a2;
          }

          if (v33 >= 0)
          {
            v35 = *(a2 + 23);
          }

          else
          {
            v35 = *(a2 + 8);
          }

          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " more than once: archive is ", 28);
          if (*(a1 + 71) < 0)
          {
            std::string::__init_copy_ctor_external(&v38, *(a1 + 48), *(a1 + 56));
          }

          else
          {
            v38 = *(a1 + 48);
          }

          kaldi::PrintableRxfilename(&v38, &v39);
          std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v37, &v39);
          std::string::~string(&v39);
          std::string::~string(&v38);
          goto LABEL_59;
        }
      }
    }

    return 0;
  }

  v8 = (a1 + 16);
  while (1)
  {
    kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::ReadNextObject(a1);
    v9 = *(a1 + 76);
    if (v9 == 2)
    {
      break;
    }

LABEL_29:
    if (v9 != 1)
    {
      goto LABEL_30;
    }
  }

  *(a1 + 76) = 1;
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *&v40.__r_.__value_.__l.__data_ = *v8;
    v40.__r_.__value_.__r.__words[2] = *(a1 + 32);
  }

  v41 = *(a1 + 40);
  v10 = std::__hash_table<std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,kaldi::StringHasher,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::equal_to<std::string>,kaldi::StringHasher,true>,std::allocator<std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,kaldi::KaldiObjectHolder<quasar::KaldiString> *>>((a1 + 80), &v40);
  v12 = v11;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if ((v12 & 1) == 0)
  {
    v25 = *(a1 + 40);
    if (v25)
    {
      v40.__r_.__value_.__r.__words[0] = *(a1 + 40);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);
      MEMORY[0x1B8C85350](v25, 0x20C40960023A9);
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v40);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Error in RandomAccessTableReader: duplicate key ", 48);
    v27 = *(a1 + 39);
    if (v27 >= 0)
    {
      v28 = a1 + 16;
    }

    else
    {
      v28 = *(a1 + 16);
    }

    if (v27 >= 0)
    {
      v29 = *(a1 + 39);
    }

    else
    {
      v29 = *(a1 + 24);
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " in archive ", 12);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v31, a1 + 48);
LABEL_59:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v40);
  }

  *(a1 + 40) = 0;
  v13 = *(a1 + 39);
  if (v13 >= 0)
  {
    v14 = *(a1 + 39);
  }

  else
  {
    v14 = *(a1 + 24);
  }

  v15 = *(a2 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a2 + 8);
  }

  if (v14 != v15 || (v13 >= 0 ? (v17 = (a1 + 16)) : (v17 = *v8), v16 >= 0 ? (v18 = a2) : (v18 = *a2), memcmp(v17, v18, v14)))
  {
    v9 = *(a1 + 76);
    goto LABEL_29;
  }

  if (!a3)
  {
    return 1;
  }

  *a3 = v10[5];
  if (*(a1 + 72) != 1)
  {
    return 1;
  }

  *(a1 + 120) = v10;
LABEL_5:
  result = 1;
  *(a1 + 128) = 1;
  return result;
}

void sub_1B58117F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(&a21);
}

void sub_1B5811830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::TokenVectorHolder>::~RandomAccessTableReaderUnsortedArchiveImpl(uint64_t a1)
{
  *a1 = &unk_1F2D32A98;
  if (kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::IsOpen(a1) && ((*(*a1 + 24))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Error closing RandomAccessTableReader\n", 38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 80);

  return kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::TokenVectorHolder>::~RandomAccessTableReaderArchiveImplBase(a1);
}

void *kaldi::RandomAccessTableReader<kaldi::TokenVectorHolder>::~RandomAccessTableReader(void *a1)
{
  if (*a1 && (kaldi::RandomAccessTableReader<kaldi::TokenVectorHolder>::Close(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "RandomAccessTableReader destructor: failure detected.", 53);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  return a1;
}

uint64_t kaldi::RandomAccessTableReader<kaldi::TokenVectorHolder>::Close(void *a1)
{
  kaldi::RandomAccessTableReader<kaldi::KaldiObjectHolder<quasar::KaldiString>>::CheckImpl(a1);
  v2 = (*(**a1 + 24))();
  if (*a1)
  {
    (*(**a1 + 40))(*a1);
  }

  *a1 = 0;
  return v2;
}

uint64_t kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FindOrAddToken(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char *a5, int a6, float a7)
{
  v11 = (a1 + 16);
  v12 = a2 + 7853 * a3;
  v13 = *(a1 + 40);
  v14 = (v13 + 16 * (v12 % *(a1 + 32)));
  v15 = v14[1];
  if (v15)
  {
    v16 = *v14;
    v17 = (a1 + 16);
    if (v16 != -1)
    {
      v17 = (*(v13 + 16 * v16 + 8) + 24);
    }

    v18 = *(v15 + 24);
    for (i = *v17; i != v18; i = *(i + 24))
    {
      if (*i == a2 && *(i + 8) == a3)
      {
        v22 = *(i + 16);
        v28 = (*(a1 + 360) + 36 * v22);
        if (*v28 > a7)
        {
          *v28 = a7;
          if (!a5)
          {
            return v22;
          }

          goto LABEL_20;
        }

        if (!a5)
        {
          return v22;
        }

        v29 = 0;
        goto LABEL_21;
      }
    }
  }

  v21 = (*(a1 + 96) + 8 * a4);
  v22 = kaldi::quasar::E2ETokenHeap::NewToken((a1 + 360), a7, 0.0, 0, *v21, a6);
  *v21 = v22;
  ++*(a1 + 308);
  v23 = v12 % *(a1 + 32);
  v24 = (*(a1 + 40) + 16 * v23);
  v25 = kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::New(v11);
  *v25 = a2;
  *(v25 + 8) = a3;
  *(v25 + 16) = v22;
  v26 = v24[1];
  if (v26)
  {
    *(v25 + 24) = *(v26 + 24);
    *(v26 + 24) = v25;
    v24[1] = v25;
    if (!a5)
    {
      return v22;
    }
  }

  else
  {
    v27 = *(a1 + 24);
    if (v27 != -1)
    {
      v11 = (*(*(a1 + 40) + 16 * v27 + 8) + 24);
    }

    *v11 = v25;
    *(v25 + 24) = 0;
    *v24 = v27;
    v24[1] = v25;
    *(a1 + 24) = v23;
    if (!a5)
    {
      return v22;
    }
  }

LABEL_20:
  v29 = 1;
LABEL_21:
  *a5 = v29;
  return v22;
}

void kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ProcessNonemitting(uint64_t a1, int a2, float a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 160);
  v5 = a1 + 160;
  v6 = v7;
  v8 = *(v5 - 144);
  v38 = v5;
  if (!v8)
  {
    v9 = *(v5 + 8);
    goto LABEL_6;
  }

  do
  {
    v43 = *v8;
    v44 = *(v8 + 16);
    std::vector<std::pair<std::pair<unsigned long long,unsigned long long>,unsigned int>>::push_back[abi:ne200100](v5, &v43);
    v8 = *(v8 + 24);
    v5 = v38;
  }

  while (v8);
  while (1)
  {
    v6 = *(a1 + 160);
    v9 = *(a1 + 168);
LABEL_6:
    if (v6 == v9)
    {
      break;
    }

    v12 = *(v9 - 24);
    v11 = *(v9 - 16);
    v10 = v9 - 24;
    v40 = v11;
    v41 = v12;
    v13 = *(v10 + 16);
    *(a1 + 168) = v10;
    v14 = *(a1 + 360) + 36 * v13;
    v15 = *v14;
    if (*v14 <= a3)
    {
      *(v14 + 8) = 0;
      (*(**(a1 + 184) + 80))(*(a1 + 184), v12, a1 + 608, 0);
      v17 = HIDWORD(v41);
      v18 = *(a1 + 624);
      v19 = *(a1 + 632);
      if (v18 != v19)
      {
        v37 = 0;
        while (1)
        {
          if (*v18)
          {
            if (*(a1 + 304))
            {
              goto LABEL_42;
            }

            goto LABEL_12;
          }

          if ((v20 = *(v18 + 4), v21 = *(v18 + 8), v22 = *(v18 + 12), v16.n128_u32[0] = *(a1 + 224), v20 >= *(a1 + 264)) && v20 <= *(a1 + 268) || (v16.n128_f32[0] = (v15 + (v16.n128_f32[0] * v21)) - *(a1 + 260), v16.n128_f32[0] <= a3))
          {
            v23 = *(a1 + 296);
            if (!v23)
            {
              break;
            }

            if (!(*(v14 + 28) >> 26))
            {
              break;
            }

            LODWORD(v43) = *(v18 + 4);
            if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((v23 + 64), &v43))
            {
              break;
            }
          }

LABEL_12:
          v18 += 16;
          if (v18 == v19)
          {
            goto LABEL_42;
          }
        }

        if (v20)
        {
          if ((*(**(a1 + 288) + 32))(*(a1 + 288), v17, v20, &v43, v16))
          {
            v24 = NAN;
            if (v21 != -INFINITY)
            {
              v24 = NAN;
              if (*(&v43 + 2) != -INFINITY)
              {
                v25 = *(&v43 + 2) == INFINITY || v21 == INFINITY;
                v24 = (v21 + *(&v43 + 2));
                if (v25)
                {
                  v24 = INFINITY;
                }
              }
            }

            LODWORD(v20) = DWORD1(v43);
            v26 = HIDWORD(v43);
            v27 = *(a1 + 224);
            if (!DWORD1(v43))
            {
              v28 = 0.0;
              goto LABEL_34;
            }
          }

          else
          {
            v27 = *(a1 + 224);
            v24 = INFINITY;
            v26 = HIDWORD(v41);
          }

          v28 = *(a1 + 220);
        }

        else
        {
          v27 = *(a1 + 224);
          v24 = v21;
          v28 = 0.0;
          v26 = HIDWORD(v41);
        }

LABEL_34:
        v16.n128_f64[0] = v27 * (v24 + v28);
        v29 = v16.n128_f64[0];
        if ((v15 + v29) < a3)
        {
          v42 = 0;
          v30 = v22 + (v26 << 32);
          v31 = kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FindOrAddToken(a1, v30, v40, a2, &v42, *(v14 + 28) >> 26, v15 + v29);
          v32 = (*(a1 + 360) + 36 * v31);
          if ((*(v14 + 32) & 0x80000000) != 0)
          {
            v32[8] |= 0x80000000;
          }

          if (v42 == 1)
          {
            v33 = v32[7] & 0xFC000000 | v13;
            v32[6] &= 0x80000000;
            v32[7] = v33;
            v32[8] = v32[8] & 0x80000000 | v20;
            v32[4] = v26;
            v32[5] = *(v14 + 20);
          }

          *(v14 + 8) = kaldi::quasar::E2ETokenHeap::NewForwardLink((a1 + 360), v31, 0, v20, v29, 0.0, *(v14 + 8));
          ++*(a1 + 312);
          if (v42 == 1)
          {
            *&v43 = v30;
            *(&v43 + 1) = v40;
            v44 = v31;
            std::vector<std::pair<std::pair<unsigned long long,unsigned long long>,unsigned int>>::push_back[abi:ne200100](v38, &v43);
            v37 = 1;
          }
        }

        goto LABEL_12;
      }

      v37 = 0;
LABEL_42:
      if (*(a1 + 296) && ((*(**(a1 + 184) + 24))(*(a1 + 184)) == v41 || a3 != INFINITY && (*(v14 + 32) & 0x80000000) != 0))
      {
        if (*(v14 + 28) >> 26)
        {
          if ((v37 & 1) == 0 && (*(v14 + 32) & 0x7FFFFFFF) == 0)
          {
            LODWORD(v43) = *(*(*(a1 + 296) + 40) + 12 * (*(v14 + 28) >> 26) + 8);
            kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::emitClassTag(a1, v14, v13, a2, v41, v17, v40, &v43, a3, 1, 0, 0);
          }
        }

        else
        {
          v34 = *(*(a1 + 296) + 40);
          if (*(*(a1 + 296) + 48) - v34 != 12)
          {
            v35 = 0;
            v36 = 1;
            do
            {
              *&v43 = *(v34 + v35 + 12);
              kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::emitClassTag(a1, v14, v13, a2, v41, v17, v40, &v43, a3, 2, 1, v36++);
              v34 = *(*(a1 + 296) + 40);
              v35 += 12;
            }

            while (v36 != 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 296) + 48) - v34) >> 2));
          }
        }
      }
    }
  }
}

uint64_t kaldi::quasar::E2ETokenHeap::Clear(kaldi::quasar::E2ETokenHeap *this)
{
  kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::Token>::Clear(this);
  kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::ForwardLink>::Clear(this + 16);
  kaldi::quasar::E2ETokenHeap::E2ETokenHeap(v3, *(this + 8), *(this + 9));
  kaldi::quasar::E2ETokenHeap::operator=(this, v3);
  kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::ForwardLink>::Clear(&v4);
  return kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::Token>::Clear(v3);
}

void sub_1B5812134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::quasar::E2ETokenHeap::~E2ETokenHeap(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::Token>::Clear(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = 36 * v2;
      result = MEMORY[0x1B8C874F0](*MEMORY[0x1E69E9A60]);
      if (result)
      {
        v11 = result;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
        v4 = MEMORY[0x1B8C84BB0](v12, v1);
        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": Could not vm_deallocate ", 26);
        v6 = MEMORY[0x1B8C84C30](v5, v3);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " bytes of ", 10);
        v8 = strlen((0x80000001B5B26A52 & 0x7FFFFFFFFFFFFFFFLL));
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, 0x80000001B5B26A52 & 0x7FFFFFFFFFFFFFFFLL, v8);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ": ", 2);
        MEMORY[0x1B8C84C00](v10, v11);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
      }

      *v1 = 0;
      v1[1] = 0;
    }
  }

  return result;
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::ForwardLink>::Clear(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = 24 * v2;
      result = MEMORY[0x1B8C874F0](*MEMORY[0x1E69E9A60]);
      if (result)
      {
        v11 = result;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
        v4 = MEMORY[0x1B8C84BB0](v12, v1);
        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": Could not vm_deallocate ", 26);
        v6 = MEMORY[0x1B8C84C30](v5, v3);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " bytes of ", 10);
        v8 = strlen((0x80000001B5B26A76 & 0x7FFFFFFFFFFFFFFFLL));
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, 0x80000001B5B26A76 & 0x7FFFFFFFFFFFFFFFLL, v8);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ": ", 2);
        MEMORY[0x1B8C84C00](v10, v11);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
      }

      *v1 = 0;
      v1[1] = 0;
    }
  }

  return result;
}

void *kaldi::quasar::E2ETokenHeap::operator=(void *a1, void *a2)
{
  if (a1 != a2)
  {
    kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::Token>::Clear(a1);
    *a1 = *a2;
    a1[1] = a2[1];
    *a2 = 0;
    a2[1] = 0;
    kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::ForwardLink>::Clear((a1 + 2));
    a1[2] = a2[2];
    a1[3] = a2[3];
    a2[2] = 0;
    a2[3] = 0;
  }

  a1[4] = a2[4];
  return a1;
}

kaldi::quasar::E2ETokenHeap *kaldi::quasar::E2ETokenHeap::E2ETokenHeap(kaldi::quasar::E2ETokenHeap *this, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::Token>::LazyBuffer(this, a2, 0);
  kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::ForwardLink>::LazyBuffer(v6 + 16, a3, 0);
  *(this + 8) = v4;
  *(this + 9) = a3;
  return this;
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::Token>::LazyBuffer(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0;
  *(a1 + 12) = 1;
  if (!a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, "count > 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
  }

  *(a1 + 8) = a2;
  if (a3)
  {
    *(a1 + 12) = a2;
  }

  address = 0;
  v5 = vm_allocate(*MEMORY[0x1E69E9A60], &address, 36 * a2, 1711276033);
  if (v5)
  {
    v16 = v5;
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
      v7 = MEMORY[0x1B8C84BB0](v18, a1);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": Could not vm_allocate ", 24);
      v9 = MEMORY[0x1B8C84C10](v8, a2);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " of ", 4);
      v11 = strlen((0x80000001B5B26A52 & 0x7FFFFFFFFFFFFFFFLL));
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, 0x80000001B5B26A52 & 0x7FFFFFFFFFFFFFFFLL, v11);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
      MEMORY[0x1B8C84C00](v13, v16);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v18);
    }

    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v15, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  *a1 = address;
  return a1;
}

void sub_1B58125C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::ForwardLink>::LazyBuffer(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0;
  *(a1 + 12) = 1;
  if (!a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, "count > 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
  }

  *(a1 + 8) = a2;
  if (a3)
  {
    *(a1 + 12) = a2;
  }

  address = 0;
  v5 = vm_allocate(*MEMORY[0x1E69E9A60], &address, 24 * a2, 1711276033);
  if (v5)
  {
    v16 = v5;
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
      v7 = MEMORY[0x1B8C84BB0](v18, a1);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": Could not vm_allocate ", 24);
      v9 = MEMORY[0x1B8C84C10](v8, a2);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " of ", 4);
      v11 = strlen((0x80000001B5B26A76 & 0x7FFFFFFFFFFFFFFFLL));
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, 0x80000001B5B26A76 & 0x7FFFFFFFFFFFFFFFLL, v11);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
      MEMORY[0x1B8C84C00](v13, v16);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v18);
    }

    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v15, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  *a1 = address;
  return a1;
}

void sub_1B5812758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::E2ETokenHeap::NewToken(kaldi::quasar::E2ETokenHeap *this, float a2, float a3, int a4, int a5, int a6)
{
  v7 = *(this + 1);
  result = HIDWORD(v7);
  if (HIDWORD(v7) == v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    kaldi::quasar::TooManyTokensError::TooManyTokensError(exception, "Ran out of token storage");
  }

  *(this + 3) = HIDWORD(v7) + 1;
  v9 = *this + 36 * HIDWORD(v7);
  *v9 = a2;
  *(v9 + 4) = a3;
  *(v9 + 8) = a4;
  *(v9 + 12) = a5;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 28) = (a6 << 26);
  return result;
}

uint64_t kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::New(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    operator new[]();
  }

  *(a1 + 48) = *(result + 24);
  return result;
}

void std::vector<std::pair<std::pair<unsigned long long,unsigned long long>,unsigned int>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::pair<unsigned long long,unsigned long long>,unsigned int>>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::emitClassTag(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, _DWORD *a8, float a9, int a10, char a11, int a12)
{
  if (a10)
  {
    v16 = *a2;
    if (!a11 || ((v16 + (*(a1 + 224) * *(*(*(a1 + 296) + 104) + 4 * a12))) - *(a1 + 260)) <= a9)
    {
      if (a10 < 1)
      {
        v19 = a8;
        v18 = 0.0;
      }

      else
      {
        v17 = a10;
        v18 = 0.0;
        v19 = a8;
        v20 = a8;
        do
        {
          if (*v20++)
          {
            if ((*(**(a1 + 288) + 32))(*(a1 + 288), a6))
            {
              v22 = *(&v35 + 2) + 0.0;
              if (*(&v35 + 2) == INFINITY)
              {
                v22 = INFINITY;
              }

              if (*(&v35 + 2) == -INFINITY)
              {
                v22 = NAN;
              }

              v23 = v22;
              a6 = HIDWORD(v35);
            }

            else
            {
              v23 = INFINITY;
            }
          }

          else
          {
            v23 = 0.0;
          }

          v24 = *(a1 + 224);
          v16 = v16 + (v24 * v23);
          v18 = v18 + (v24 * v23);
          --v17;
        }

        while (v17);
      }

      if (v16 < a9)
      {
        v25 = v19;
        v37 = 0;
        v26 = kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FindOrAddToken(a1, (a6 << 32) + a5, a7, a4, &v37, a12, v16);
        v27 = *(a1 + 360);
        v28 = &v25[a10];
        *(a2 + 8) = kaldi::quasar::E2ETokenHeap::NewForwardLink((a1 + 360), v26, 0, *(v28 - 1), v18, 0.0, *(a2 + 8));
        if (v37 == 1)
        {
          v29 = (v27 + 36 * v26);
          v30 = v29[7] & 0xFC000000 | a3;
          v29[6] &= 0x80000000;
          v29[7] = v30;
          v29[8] = v29[8] & 0x80000000 | *(v28 - 1);
          v29[4] = a6;
          *&v35 = (a6 << 32) + a5;
          *(&v35 + 1) = a7;
          v36 = v26;
          std::vector<std::pair<std::pair<unsigned long long,unsigned long long>,unsigned int>>::push_back[abi:ne200100](a1 + 160, &v35);
        }
      }
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::pair<unsigned long long,unsigned long long>,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t kaldi::quasar::E2ETokenHeap::NewForwardLink(kaldi::quasar::E2ETokenHeap *this, int a2, int a3, int a4, float a5, float a6, int a7)
{
  v8 = *(this + 3);
  result = HIDWORD(v8);
  if (HIDWORD(v8) == v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    kaldi::quasar::TooManyForwardLinksError::TooManyForwardLinksError(exception, "Ran out of forward links in storage");
  }

  *(this + 7) = HIDWORD(v8) + 1;
  v10 = *(this + 2) + 24 * HIDWORD(v8);
  *v10 = a2;
  *(v10 + 4) = a4;
  *(v10 + 8) = a5;
  *(v10 + 12) = a6;
  *(v10 + 16) = a7;
  *(v10 + 20) = a3;
  return result;
}

float kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ProcessEmitting<kaldi::AutoRegressiveDecodableInterface>(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 472) == 1)
  {
    kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::UndoPruneActiveTokensFinal(a1);
  }

  v5 = *(a1 + 24);
  if (v5 != -1)
  {
    v6 = *(a1 + 40);
    do
    {
      v7 = (v6 + 16 * v5);
      v7[1] = 0;
      v5 = *v7;
    }

    while (v5 != -1);
  }

  v8 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  v134 = 0;
  v135 = 0;
  kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(a1, v8, &v135, &v134, &v132);
  v9 = (*(a1 + 216) * v135);
  if (*(a1 + 32) < v9)
  {
    kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::SetSize(a1 + 16, v9);
  }

  v10 = *(a1 + 152);
  std::vector<int>::vector[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,0>(&v130, v132, &v133);
  __p = 0;
  v128 = 0;
  v129 = 0;
  v115 = a3 - 1;
  if (((**a2)(a2) & 1) == 0)
  {
    goto LABEL_137;
  }

  if (v134)
  {
    v124 = v134[1];
    v11 = v134[4];
    v12 = *(a1 + 360);
    v122 = *v134;
    (*(**(a1 + 184) + 80))(*(a1 + 184));
    v119 = v8;
    v13 = v12 + 36 * v11;
    v14 = *(a1 + 624);
    for (i = *(a1 + 632); v14 != i; v14 += 4)
    {
      v16 = *v14;
      if (*v14)
      {
        v17 = *(v14 + 1);
        v18 = v14[2];
        if (LODWORD(v16) != (*(*a2 + 32))(a2))
        {
          if (v17)
          {
            if ((*(**(a1 + 288) + 32))(*(a1 + 288), v124, v17, &v136))
            {
              v19 = NAN;
              if (v18 != -INFINITY)
              {
                v19 = NAN;
                if (v137 != -INFINITY)
                {
                  v19 = INFINITY;
                  if (v137 != INFINITY && v18 != INFINITY)
                  {
                    v19 = v18 + v137;
                  }
                }
              }

              v21 = HIDWORD(v136) == 0;
            }

            else
            {
              v21 = 0;
              v19 = INFINITY;
            }

            v18 = v19;
          }

          else
          {
            v21 = 1;
          }

          v22 = v130;
          v23 = v131;
          if (v131 != v130)
          {
            v24 = (v131 - v130) >> 2;
            v23 = v130;
            do
            {
              v25 = v24 >> 1;
              v26 = &v23[4 * (v24 >> 1)];
              v28 = *v26;
              v27 = v26 + 1;
              v24 += ~(v24 >> 1);
              if (v28 < *(v13 + 20))
              {
                v23 = v27;
              }

              else
              {
                v24 = v25;
              }
            }

            while (v24);
          }

          v29 = (*(*a2 + 16))(a2);
          v30 = 0.0;
          if (!v21)
          {
            v30 = *(a1 + 220);
          }

          v31 = (v30 + v18) * *(a1 + 224);
          v32 = *(a1 + 192) + ((*v13 - (*(__p + (LODWORD(v16) + v29 * ((v23 - v22) >> 2))) * *(a1 + 228))) + v31);
          if (v32 < v10)
          {
            v10 = v32;
          }
        }
      }
    }

    v33 = v130;
    v34 = v131;
    if (v131 == v130)
    {
      v8 = v119;
    }

    else
    {
      v35 = (v131 - v130) >> 2;
      v34 = v130;
      v8 = v119;
      do
      {
        v36 = v35 >> 1;
        v37 = &v34[4 * (v35 >> 1)];
        v39 = *v37;
        v38 = v37 + 1;
        v35 += ~(v35 >> 1);
        if (v39 < *(v13 + 20))
        {
          v34 = v38;
        }

        else
        {
          v35 = v36;
        }
      }

      while (v35);
    }

    v40 = (*(*a2 + 16))(a2);
    v41 = *v13 - (*(a1 + 228) * *(__p + ((*(*a2 + 32))(a2) + v40 * ((v34 - v33) >> 2))));
    if (v41 < v10)
    {
      if (*(a1 + 224) == 0.0)
      {
        v44 = 0.0;
      }

      else
      {
        v42 = (*(**(a1 + 184) + 32))(*(a1 + 184), v122);
        v43 = INFINITY;
        if (v42 != INFINITY)
        {
          v43 = v42 + (*(**(a1 + 288) + 16))(*(a1 + 288), v124);
        }

        v44 = v43 * *(a1 + 224);
        if (v44 == INFINITY)
        {
          if ((v41 + *(a1 + 192)) < v10)
          {
            v10 = v41 + *(a1 + 192);
          }

          goto LABEL_55;
        }
      }

      v45 = (v41 + v44) + *(a1 + 192);
      if (v45 < v10)
      {
        v10 = v45;
      }
    }
  }

LABEL_55:
  if (v8)
  {
    while (1)
    {
      v46 = v133;
      if (v133)
      {
        v123 = *(v8 + 4);
        v47 = *(v8 + 8);
        v125 = *(a1 + 360) + 36 * *(v8 + 16);
        v48 = *(v125 + 20);
        while (1)
        {
          v49 = *(v46 + 7);
          if (v48 >= v49)
          {
            break;
          }

LABEL_61:
          v46 = *v46;
          if (!v46)
          {
            goto LABEL_62;
          }
        }

        if (v49 < v48)
        {
          ++v46;
          goto LABEL_61;
        }

        v116 = *(v8 + 16);
        v120 = v8;
        v113 = *v8;
        (*(**(a1 + 184) + 80))(*(a1 + 184));
        v52 = *(a1 + 624);
        v53 = *(a1 + 632);
        v54 = v125;
        if (v52 != v53)
        {
          v117 = (v47 >> 2) + (v47 << 6);
          v118 = v47;
          v114 = *(a1 + 632);
          while (2)
          {
            v55 = *v52;
            if (!v55)
            {
              goto LABEL_111;
            }

            v56 = *(v52 + 1);
            v57 = v52[2];
            v58 = *(v52 + 3);
            if (v55 == (*(*a2 + 32))(a2))
            {
              goto LABEL_111;
            }

            v60 = v130;
            v59 = v131;
            if (v131 != v130)
            {
              v61 = (v131 - v130) >> 2;
              v59 = v130;
              do
              {
                v62 = v61 >> 1;
                v63 = &v59[4 * (v61 >> 1)];
                v65 = *v63;
                v64 = v63 + 1;
                v61 += ~(v61 >> 1);
                if (v65 < *(v125 + 20))
                {
                  v59 = v64;
                }

                else
                {
                  v61 = v62;
                }
              }

              while (v61);
            }

            v66 = (*(*a2 + 16))(a2);
            v67.n128_u32[0] = *(a1 + 224);
            v68 = -(*(__p + (v55 + v66 * ((v59 - v60) >> 2))) * *(a1 + 228));
            v54 = v125;
            v69 = *v125 + v68;
            if (v56 < *(a1 + 264) || v56 > *(a1 + 268))
            {
              v67.n128_f32[0] = ((v57 * v67.n128_f32[0]) + v69) - *(a1 + 260);
              if (v67.n128_f32[0] > v10)
              {
                goto LABEL_111;
              }
            }

            v70 = *(a1 + 296);
            if (v70)
            {
              if (*(v125 + 28) >> 26)
              {
                LODWORD(v136) = v56;
                if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((v70 + 64), &v136))
                {
                  goto LABEL_111;
                }
              }
            }

            if (v56)
            {
              if ((*(**(a1 + 288) + 32))(*(a1 + 288), v123, v56, &v136, v67))
              {
                v71 = NAN;
                if (v57 != -INFINITY)
                {
                  v71 = NAN;
                  if (v137 != -INFINITY)
                  {
                    v72 = v137 == INFINITY || v57 == INFINITY;
                    v71 = (v57 + v137);
                    if (v72)
                    {
                      v71 = INFINITY;
                    }
                  }
                }

                LODWORD(v56) = HIDWORD(v136);
                v73 = v138;
                v74 = *(a1 + 224);
                if (!HIDWORD(v136))
                {
                  v75 = 0.0;
LABEL_95:
                  v76 = v74 * (v71 + v75);
                  v77 = v69 + v76;
                  if (v77 <= v10 && v77 != INFINITY)
                  {
                    if ((v77 + *(a1 + 192)) < v10)
                    {
                      v10 = v77 + *(a1 + 192);
                    }

                    v79 = (*(*a2 + 48))(a2);
                    v80 = v117 + (v55 - 1640531527);
                    if (v55 == v79)
                    {
                      v80 = 0;
                    }

                    LOBYTE(v126) = 0;
                    v81 = kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FindOrAddToken(a1, v58 + (v73 << 32), v118 ^ v80, a3, &v126, *(v125 + 28) >> 26, v77);
                    if (v126 == 1)
                    {
                      if ((v82 = v73, v83 = (*(*a2 + 8))(a2, v115, *(v125 + 20), v55), v84 = (*(a1 + 360) + 36 * v81), v85 = v84[7] & 0xFC000000 | v116, v84[6] = v84[6] & 0x80000000 | v55, v84[7] = v85, v84[8] = v84[8] & 0x80000000 | v56, v84[4] = v82, v84[5] = HIDWORD(v83), v86 = *(a1 + 296), v53 = v114, v86) && v56 && (LODWORD(v136) = v56, !std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((v86 + 64), &v136)) || *(v125 + 28) >> 26 && (*(v125 + 32) & 0x80000000) != 0)
                      {
                        v84[8] |= 0x80000000;
                      }
                    }

                    *(v125 + 8) = kaldi::quasar::E2ETokenHeap::NewForwardLink((a1 + 360), v81, v55, v56, v76, v68, *(v125 + 8));
                    ++*(a1 + 312);
                  }

LABEL_111:
                  v52 += 4;
                  if (v52 == v53)
                  {
                    goto LABEL_112;
                  }

                  continue;
                }
              }

              else
              {
                v74 = *(a1 + 224);
                v71 = INFINITY;
                v73 = v123;
              }

              v75 = *(a1 + 220);
              goto LABEL_95;
            }

            break;
          }

          v74 = *(a1 + 224);
          v71 = v57;
          v75 = 0.0;
          v73 = v123;
          goto LABEL_95;
        }

LABEL_112:
        v87 = v130;
        v88 = v131;
        if (v131 != v130)
        {
          v89 = (v131 - v130) >> 2;
          v88 = v130;
          do
          {
            v90 = v89 >> 1;
            v91 = &v88[4 * (v89 >> 1)];
            v93 = *v91;
            v92 = v91 + 1;
            v89 += ~(v89 >> 1);
            if (v93 < *(v54 + 20))
            {
              v88 = v92;
            }

            else
            {
              v89 = v90;
            }
          }

          while (v89);
        }

        v94 = (*(*a2 + 16))(a2);
        v95 = (*(*a2 + 32))(a2);
        v96 = *(a1 + 228);
        v97 = -(*(__p + (v95 + v94 * ((v88 - v87) >> 2))) * v96);
        v98 = *v125 - (*(__p + (v95 + v94 * ((v88 - v87) >> 2))) * v96);
        if (v98 > v10)
        {
          v50 = v10;
          v8 = v120;
          goto LABEL_63;
        }

        v99 = v98 + 0.0;
        v8 = v120;
        if (*(a1 + 224) == 0.0)
        {
          v102 = 0.0;
        }

        else
        {
          v100 = (*(**(a1 + 184) + 32))(*(a1 + 184), v113);
          v101 = INFINITY;
          if (v100 != INFINITY)
          {
            v101 = v100 + (*(**(a1 + 288) + 16))(*(a1 + 288), v123);
          }

          v102 = v101 * *(a1 + 224);
          if (v102 == INFINITY)
          {
            v50 = v99 + *(a1 + 192);
            v102 = INFINITY;
            goto LABEL_129;
          }
        }

        if ((v99 + v102) <= v10)
        {
          v50 = (v99 + v102) + *(a1 + 204);
          if (v50 >= *(a1 + 152))
          {
            goto LABEL_130;
          }

          *(a1 + 152) = v50;
LABEL_129:
          if (v50 >= v10)
          {
LABEL_130:
            v50 = v10;
          }

          v103 = *(v125 + 20);
          v104 = (*(*a2 + 32))(a2);
          HIDWORD(v103) = (*(*a2 + 8))(a2, v115, v103, v104) >> 32;
          v105 = (*(a1 + 120) + 8 * a3);
          v106 = kaldi::quasar::E2ETokenHeap::NewToken((a1 + 360), v98 + 0.0, 0.0, 0, *v105, *(v125 + 28) >> 26);
          *v105 = v106;
          ++*(a1 + 308);
          v126 = v106;
          v107 = (*(a1 + 360) + 36 * v106);
          v107[7] = v107[7] & 0xFC000000 | v116;
          v108 = v107[6] & 0x80000000 | (*(*a2 + 32))(a2);
          v107[5] = HIDWORD(v103);
          v107[6] = v108;
          v107[8] &= 0x80000000;
          v107[4] = v123;
          LODWORD(v103) = v126;
          v109 = (*(*a2 + 32))(a2);
          *(v125 + 8) = kaldi::quasar::E2ETokenHeap::NewForwardLink((a1 + 360), v103, v109, 0, 0.0, v97, *(v125 + 8));
          ++*(a1 + 312);
          v136 = &v126;
          *(std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 320), &v126) + 5) = v102;
          v110 = v99 + v102;
          if ((v99 + v102) >= *(a1 + 144))
          {
            v110 = *(a1 + 144);
          }

          if (v98 >= *(a1 + 148))
          {
            v111 = *(a1 + 148);
          }

          else
          {
            v111 = v98 + 0.0;
          }

          *(a1 + 144) = v110;
          *(a1 + 148) = v111;
          goto LABEL_63;
        }
      }

LABEL_62:
      v50 = v10;
LABEL_63:
      v51 = *(v8 + 24);
      *(v8 + 24) = *(a1 + 64);
      *(a1 + 64) = v8;
      v10 = v50;
      v8 = v51;
      if (!v51)
      {
        goto LABEL_138;
      }
    }
  }

LABEL_137:
  v50 = v10;
LABEL_138:
  if (__p)
  {
    v128 = __p;
    operator delete(__p);
  }

  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  std::__tree<int>::destroy(&v132, v133);
  return v50;
}

void sub_1B5813B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, void *a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  std::__tree<int>::destroy(&a28, a29);
  _Unwind_Resume(a1);
}

void kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneActiveTokensFinal(uint64_t a1, int a2, int a3)
{
  if ((*(a1 + 472) & 1) == 0)
  {
    v4 = a2;
    *(a1 + 472) = 1;
    *(a1 + 473) = a3;
    v6 = *(a1 + 308);
    v7 = *(a1 + 312);
    kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneForwardLinksFinal(a1, a2, a3);
    if (v4 >= 1)
    {
      do
      {
        LOBYTE(v20[0].__locale_) = 0;
        v21 = 0;
        kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneForwardLinks(a1, v4 - 1, v20, &v21, a3, 0.0);
        kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneTokensForFrame(a1, v4, a3);
        v8 = v4-- != 0;
      }

      while (v4 != 0 && v8);
    }

    kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneTokensForFrame(a1, 0, a3);
    if (kaldi::g_kaldi_verbose_level > 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v20, 3);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "PruneActiveTokensFinal: pruned tokens from ", 43);
      v10 = MEMORY[0x1B8C84C00](v9, v6);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " to ", 4);
      v12 = MEMORY[0x1B8C84C00](v11, *(a1 + 308));
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " links from ", 12);
      v14 = MEMORY[0x1B8C84C00](v13, v7);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " to ", 4);
      v16 = MEMORY[0x1B8C84C00](v15, *(a1 + 312));
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " pruned_tok_frames_ ", 20);
      v18 = MEMORY[0x1B8C84C30](v17, (*(a1 + 536) - *(a1 + 528)) >> 2);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " pruned_link_toks_ ", 19);
      MEMORY[0x1B8C84C30](v19, (*(a1 + 584) - *(a1 + 576)) >> 2);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v20);
    }
  }
}

void kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneActiveTokens(uint64_t a1, clockid_t a2, float a3)
{
  v4 = *(a1 + 308);
  v5 = *(a1 + 312);
  if (a2 >= 1)
  {
    v7 = a2;
    v8 = *(a1 + 96);
    v9 = a2 + 1;
    v10 = (8 * a2) | 5;
    do
    {
      if (*(v8 + v10 - 9) == 1)
      {
        LOBYTE(v19[0].__locale_) = 0;
        v20 = 0;
        kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneForwardLinks(a1, v9 - 2, v19, &v20, 0, a3);
        v8 = *(a1 + 96);
        if (v9 != 2 && (v19[0].__locale_ & 1) != 0)
        {
          *(v8 + v10 - 17) = 1;
        }

        if (v20 == 1)
        {
          *(v8 + v10 - 8) = 1;
        }

        *(v8 + v10 - 9) = 0;
      }

      v11 = v9 - 1;
      if (v9 - 1 < v7 && *(v8 + v10) == 1)
      {
        kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneTokensForFrame(a1, v9 - 1, 0);
        v8 = *(a1 + 96);
        *(v8 + v10) = 0;
      }

      v10 -= 8;
      --v9;
    }

    while (v11 > 1);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v19, 3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "PruneActiveTokens: pruned tokens from ", 38);
    v13 = MEMORY[0x1B8C84C00](v12, v4);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " to ", 4);
    v15 = MEMORY[0x1B8C84C00](v14, *(a1 + 308));
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " links from ", 12);
    v17 = MEMORY[0x1B8C84C00](v16, v5);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " to ", 4);
    MEMORY[0x1B8C84C00](v18, *(a1 + 312));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v19);
  }

  kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::CompactTokensAndLinks(a1, a2);
}

void kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::UndoPruneActiveTokensFinal(uint64_t a1)
{
  if ((*(a1 + 473) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v40);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v40, "Cannot undo PruneActiveTokensFinal(undoable=false)");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v40);
  }

  v2 = *(a1 + 308);
  v3 = *(a1 + 312);
  v4 = *(a1 + 528);
  if ((((*(a1 + 536) - v4) >> 2) - 1) >= 0)
  {
    v5 = *(a1 + 96);
    v6 = *(a1 + 360);
    v7 = 4 * (((*(a1 + 536) - v4) >> 2) - 1);
    v8 = *(a1 + 408);
    do
    {
      v9 = 8 * *(v4 + v7);
      v10 = *(v8 - 4);
      v8 -= 4;
      *(v6 + 36 * v10 + 12) = *(v5 + v9);
      *(v5 + v9) = v10;
      ++*(a1 + 308);
      v7 -= 4;
    }

    while (v7 != -4);
    *(a1 + 408) = v8;
  }

  v11 = *(a1 + 552);
  if ((((*(a1 + 560) - v11) >> 2) - 1) >= 0)
  {
    v12 = *(a1 + 120);
    v13 = *(a1 + 360);
    v14 = 4 * (((*(a1 + 560) - v11) >> 2) - 1);
    v15 = *(a1 + 432);
    do
    {
      v16 = 8 * *(v11 + v14);
      v17 = *(v15 - 4);
      v15 -= 4;
      *(v13 + 36 * v17 + 12) = *(v12 + v16);
      *(v12 + v16) = v17;
      ++*(a1 + 308);
      v14 -= 4;
    }

    while (v14 != -4);
    *(a1 + 432) = v15;
  }

  v18 = *(a1 + 480);
  v19 = *(a1 + 488);
  if (v18 != v19)
  {
    v20 = *(a1 + 360);
    do
    {
      *(v20 + 36 * *v18 + 4) = v18[1];
      v18 += 2;
    }

    while (v18 != v19);
  }

  v21 = *(a1 + 504);
  for (i = *(a1 + 512); v21 != i; v21 = (v21 + 8))
  {
    v23 = *(v21 + 1);
    v40[0].__locale_ = v21;
    *(std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 320), v21) + 5) = v23;
  }

  for (j = *(a1 + 16); j; j = *(j + 24))
  {
    LODWORD(v40[0].__locale_) = *(j + 16);
    std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__erase_unique<unsigned int>((a1 + 320), v40);
  }

  v25 = *(a1 + 576);
  if ((((*(a1 + 584) - v25) >> 2) - 1) >= 0)
  {
    v26 = *(a1 + 360);
    v27 = *(a1 + 376);
    v28 = *(a1 + 456);
    v29 = 4 * (((*(a1 + 584) - v25) >> 2) - 1);
    v30 = *(a1 + 312) + 1;
    do
    {
      v31 = *(v28 - 4);
      v28 -= 4;
      v32 = v26 + 36 * *(v25 + v29);
      *(v27 + 24 * v31 + 16) = *(v32 + 8);
      *(v32 + 8) = v31;
      *(a1 + 312) = v30;
      v29 -= 4;
      ++v30;
    }

    while (v29 != -4);
    *(a1 + 456) = v28;
  }

  *(a1 + 144) = *(a1 + 600);
  *(a1 + 472) = 0;
  *(a1 + 600) = vneg_f32(0x7F0000007FLL);
  *(a1 + 488) = *(a1 + 480);
  *(a1 + 512) = *(a1 + 504);
  *(a1 + 536) = *(a1 + 528);
  *(a1 + 560) = *(a1 + 552);
  *(a1 + 584) = v25;
  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v40, 3);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "UndoPruneActiveTokensFinal: restored tokens from ", 49);
    v34 = MEMORY[0x1B8C84C00](v33, v2);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " to ", 4);
    v36 = MEMORY[0x1B8C84C00](v35, *(a1 + 308));
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " links from ", 12);
    v38 = MEMORY[0x1B8C84C00](v37, v3);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " to ", 4);
    MEMORY[0x1B8C84C00](v39, *(a1 + 312));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v40);
  }
}

void kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  __src = 0;
  v49 = 0;
  v50 = 0;
  __p = 0;
  v46 = 0;
  v47 = 0;
  if (a2)
  {
    v7 = a2;
    v8 = 0;
    v9 = 0;
    v10 = INFINITY;
    do
    {
      v11 = (*(a1 + 360) + 36 * *(v7 + 16));
      v12 = v49;
      if (v49 >= v50)
      {
        v14 = __src;
        v15 = v49 - __src;
        v16 = (v49 - __src) >> 2;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v18 = v50 - __src;
        if ((v50 - __src) >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
        v20 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v20 = v17;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v20);
        }

        *(4 * v16) = *v11;
        v13 = 4 * v16 + 4;
        memcpy(0, v14, v15);
        v21 = __src;
        __src = 0;
        v49 = v13;
        v50 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v49 = *v11;
        v13 = (v12 + 4);
      }

      v49 = v13;
      std::vector<int>::push_back[abi:ne200100](&__p, v11 + 5);
      v22 = *v11;
      if (*v11 < v10)
      {
        v9 = v11[5];
        if (a4)
        {
          *a4 = v7;
        }

        v10 = v22;
      }

      v7 = *(v7 + 24);
      ++v8;
    }

    while (v7);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if (a3)
  {
    *a3 = v8;
  }

  if (*(a1 + 196) == 1)
  {
    LODWORD(v43) = v9;
    std::set<int>::set[abi:ne200100](a5, &v43, 1);
  }

  else
  {
    std::vector<int>::vector[abi:ne200100](&v43, (v49 - __src) >> 2);
    v23 = v43;
    v24 = v44;
    if (v43 != v44)
    {
      v25 = 0;
      v26 = (v44 - v43 - 4) >> 2;
      v27 = vdupq_n_s64(v26);
      v28 = (v26 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v29 = v43 + 2;
      do
      {
        v30 = vdupq_n_s64(v25);
        v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1B5AE0060)));
        if (vuzp1_s16(v31, *v27.i8).u8[0])
        {
          *(v29 - 2) = v25;
        }

        if (vuzp1_s16(v31, *&v27).i8[2])
        {
          *(v29 - 1) = v25 + 1;
        }

        if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1B5AE0050)))).i32[1])
        {
          *v29 = v25 + 2;
          v29[1] = v25 + 3;
        }

        v25 += 4;
        v29 += 4;
      }

      while (v28 != v25);
    }

    v32 = *(a1 + 196);
    if (v32 >= v24 - v23)
    {
      p_src = &__src;
      std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2}>(v23, v24, &p_src);
    }

    else
    {
      p_src = &__src;
      if (v32)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#1} &,std::__wrap_iter<int *>,std::__wrap_iter<int *>>(v23, &v23[v32], v24, &p_src);
      }
    }

    v33 = *(a1 + 200);
    v35 = v43;
    v34 = v44;
    v36 = v44 - v43;
    if (v36 > v33)
    {
      v37 = &v43[v33];
      v38 = *(a1 + 196);
      v39 = v36 > v38;
      v40 = &v43[v38];
      if (!v39)
      {
        v40 = v44;
      }

      if (v40 != v37)
      {
        while (*(__src + *v37) <= (*(__src + *v43) + *(a1 + 192)))
        {
          if (++v37 == v40)
          {
            v37 = v40;
            break;
          }
        }
      }

      if (v37 != v44)
      {
        v34 = v37;
        v44 = v37;
      }
    }

    a5[2] = 0;
    a5[1] = 0;
    *a5 = a5 + 1;
    if (v35 != v34)
    {
      do
      {
        std::__tree<int>::__emplace_unique_key_args<int,int const&>(a5, __p + *v35++);
      }

      while (v35 != v34);
      v35 = v43;
    }

    if (v35)
    {
      v44 = v35;
      operator delete(v35);
    }
  }

  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v49 = __src;
    operator delete(__src);
  }
}

void sub_1B5814664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__erase_unique<unsigned int>(void *a1, unsigned int *a2)
{
  result = std::__hash_table<quasar::PersonalizedLmData::DocumentType,std::hash<quasar::PersonalizedLmData::DocumentType>,std::equal_to<quasar::PersonalizedLmData::DocumentType>,std::allocator<quasar::PersonalizedLmData::DocumentType>>::find<quasar::PersonalizedLmData::DocumentType>(a1, a2);
  if (result)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1, result);
    return 1;
  }

  return result;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#1} &,std::__wrap_iter<int *>,std::__wrap_iter<int *>>(int *a1, int *a2, int *a3, uint64_t **a4)
{
  v4 = a3;
  v5 = a2 - a1;
  if (a2 != a1)
  {
    v10 = v5 >> 2;
    v11 = __OFSUB__(v5 >> 2, 2);
    v12 = (v5 >> 2) - 2;
    if (v12 < 0 == v11)
    {
      v13 = v12 >> 1;
      v14 = &a1[v13];
      v15 = v13 + 1;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(a1, a4, v10, v14--);
        --v15;
      }

      while (v15);
    }

    v4 = a2;
    if (a2 != a3)
    {
      v16 = a2;
      do
      {
        v17 = *v16;
        v18 = *a1;
        if (*(**a4 + 4 * v17) < *(**a4 + 4 * v18))
        {
          *v16 = v18;
          *a1 = v17;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(a1, a4, v10, a1);
        }

        ++v16;
      }

      while (v16 != a3);
      v4 = a3;
    }

    if (v10 >= 2)
    {
      v19 = a2 - 1;
      do
      {
        v20 = *a1;
        v21 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(a1, a4, v10);
        if (v19 == v21)
        {
          *v21 = v20;
        }

        else
        {
          *v21 = *v19;
          *v19 = v20;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(a1, (v21 + 1), a4, v21 + 1 - a1);
        }

        --v19;
      }

      while (v10-- > 2);
    }
  }

  return v4;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(uint64_t result, uint64_t **a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 2)
    {
      v5 = (a4 - result) >> 1;
      v6 = v5 | 1;
      v7 = (result + 4 * (v5 | 1));
      v8 = v5 + 2;
      v9 = **a2;
      if (v8 < a3 && *(v9 + 4 * *v7) < *(v9 + 4 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *v7;
      v11 = *a4;
      v12 = *(v9 + 4 * v11);
      if (*(v9 + 4 * v10) >= v12)
      {
        do
        {
          *a4 = v10;
          a4 = v7;
          if (v4 < v6)
          {
            break;
          }

          v13 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 4 * v6);
          v14 = v13 + 2;
          if (v14 < a3 && *(v9 + 4 * *v7) < *(v9 + 4 * v7[1]))
          {
            ++v7;
            v6 = v14;
          }

          v10 = *v7;
        }

        while (*(v9 + 4 * v10) >= v12);
        *a4 = v11;
      }
    }
  }

  return result;
}

int *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(int *result, void **a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = result;
    result += v3 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3 && *(*v4 + 4 * *result) < *(*v4 + 4 * result[1]))
    {
      ++result;
      v3 = v7;
    }

    *v5 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 4 * v4);
    v6 = *v5;
    v9 = *(a2 - 4);
    v7 = (a2 - 4);
    v8 = v9;
    v10 = **a3;
    v11 = *(v10 + 4 * v9);
    if (*(v10 + 4 * v6) < v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 4 * v4);
        v6 = *v5;
        v7 = v12;
      }

      while (*(v10 + 4 * v6) < v11);
      *v12 = v8;
    }
  }

  return result;
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2}>(int *a1, int *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = a2 - a1;
    while (1)
    {
      v9 = operator new(4 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1B5814ADC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(int *a1, int *a2, uint64_t **a3, unint64_t a4, int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *a1;
      if (*(**a3 + 4 * v9) < *(**a3 + 4 * v10))
      {
        *a1 = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a4 >> 1;
      v15 = &a1[a4 >> 1];
      v16 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(a1, v15, a3, v16, a5);
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v14]);

        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,int *,int *,std::__wrap_iter<int *>>(a5, &a5[v14], &a5[v14], &a5[a4], a1, a3);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(a1, v15, a3, v16, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(a1, a2, a3);
    }
  }
}

int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(int *result, int *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = **a3;
      v6 = result;
      do
      {
        v7 = *v6;
        v6 = v3;
        v8 = *v3;
        v9 = *(v5 + 4 * v8);
        if (v9 < *(v5 + 4 * v7))
        {
          v10 = v4;
          while (1)
          {
            *(result + v10 + 4) = v7;
            if (!v10)
            {
              break;
            }

            v7 = *(result + v10 - 4);
            v10 -= 4;
            if (v9 >= *(v5 + 4 * v7))
            {
              v11 = (result + v10 + 4);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v8;
        }

        v3 = v6 + 1;
        v4 += 4;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

int *std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(int *result, int *a2, uint64_t **a3, unint64_t a4, int *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = *result;
      if (*(**a3 + 4 * v10) >= *(**a3 + 4 * v11))
      {
        *a5 = v11;
        v12 = *(a2 - 1);
      }

      else
      {
        *a5 = v10;
        v12 = *result;
      }

      a5[1] = v12;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>,std::__wrap_iter<int *>>(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(result, a2, a5, a3);
    }
  }

  return result;
}

int *std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,int *,int *,std::__wrap_iter<int *>>(int *result, int *a2, int *a3, int *a4, _DWORD *a5, void **a6)
{
  if (result == a2)
  {
LABEL_9:
    while (a3 != a4)
    {
      v10 = *a3++;
      *a5++ = v10;
    }
  }

  else
  {
    v6 = *a6;
    while (a3 != a4)
    {
      v7 = *a3;
      v8 = *(*v6 + 4 * v7);
      v9 = *(*v6 + 4 * *result);
      if (v8 >= v9)
      {
        LODWORD(v7) = *result;
      }

      result += v8 >= v9;
      a3 += v8 < v9;
      *a5++ = v7;
      if (result == a2)
      {
        goto LABEL_9;
      }
    }

    while (result != a2)
    {
      v11 = *result++;
      *a5++ = v11;
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(int *a1, char *a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v9 = a6;
    while (v9 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return;
      }

      v13 = 0;
      v14 = *a2;
      v15 = **a4;
      v16 = -a5;
      while (1)
      {
        v17 = a1[v13 / 4];
        if (*(v15 + 4 * v14) < *(v15 + 4 * v17))
        {
          break;
        }

        v13 += 4;
        if (__CFADD__(v16++, 1))
        {
          return;
        }
      }

      v19 = -v16;
      v45 = a8;
      v46 = a4;
      v43 = &a1[v13 / 4];
      v44 = a3;
      if (-v16 >= v9)
      {
        if (v16 == -1)
        {
          a1[v13 / 4] = v14;
          *a2 = v17;
          return;
        }

        v28 = v19 / 2;
        v29 = &a1[v19 / 2];
        v21 = a2;
        if (a2 != a3)
        {
          v30 = (a3 - a2) >> 2;
          v21 = a2;
          do
          {
            v31 = v30 >> 1;
            v32 = &v21[4 * (v30 >> 1)];
            v34 = *v32;
            v33 = v32 + 4;
            v30 += ~(v30 >> 1);
            if (*(v15 + 4 * v34) < *(v15 + 4 * v29[v13 / 4]))
            {
              v21 = v33;
            }

            else
            {
              v30 = v31;
            }
          }

          while (v30);
        }

        v20 = (v21 - a2) >> 2;
        v22 = &v29[v13 / 4];
      }

      else
      {
        v20 = v9 / 2;
        v21 = &a2[4 * (v9 / 2)];
        v22 = a2;
        if (a2 - a1 != v13)
        {
          v23 = (a2 - a1 - v13) >> 2;
          v22 = &a1[v13 / 4];
          do
          {
            v24 = v23 >> 1;
            v25 = &v22[4 * (v23 >> 1)];
            v27 = *v25;
            v26 = v25 + 4;
            v23 += ~(v23 >> 1);
            if (*(v15 + 4 * *v21) < *(v15 + 4 * v27))
            {
              v23 = v24;
            }

            else
            {
              v22 = v26;
            }
          }

          while (v23);
        }

        v28 = (v22 - a1 - v13) >> 2;
      }

      a5 = -(v28 + v16);
      v35 = v9 - v20;
      v36 = v28;
      v37 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>>(v22, a2, v21);
      v38 = v36;
      v39 = v37;
      if (v38 + v20 >= v9 - (v38 + v20) - v16)
      {
        v42 = v38;
        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(v37, v21, v44, v46, a5, v35, a7, v45);
        v21 = v22;
        a4 = v46;
        v35 = v20;
        a8 = v45;
        a5 = v42;
        a3 = v39;
        a1 = v43;
      }

      else
      {
        v40 = v22;
        a4 = v46;
        v41 = v20;
        a8 = v45;
        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(&a1[v13 / 4], v40, v37, v46, v38, v41, a7, v45);
        a1 = v39;
        a3 = v44;
      }

      v9 = v35;
      a2 = v21;
      if (!v35)
      {
        return;
      }
    }

    std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(a1, a2, a3, a4, a5, v9, a7);
  }
}

int *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(int *result, int *a2, int *a3, uint64_t **a4)
{
  if (result != a2)
  {
    v4 = *result++;
    *a3 = v4;
    if (result != a2)
    {
      v5 = 0;
      v6 = **a4;
      v7 = a3;
      v8 = a3;
      do
      {
        v10 = *v8++;
        v9 = v10;
        v11 = *result;
        if (*(v6 + 4 * v11) >= *(v6 + 4 * v10))
        {
          *v8 = v11;
        }

        else
        {
          v7[1] = v9;
          v12 = a3;
          if (v7 != a3)
          {
            v13 = v5;
            while (1)
            {
              v12 = (a3 + v13);
              v14 = *(a3 + v13 - 4);
              if (*(v6 + 4 * *result) >= *(v6 + 4 * v14))
              {
                break;
              }

              *v12 = v14;
              v13 -= 4;
              if (!v13)
              {
                v12 = a3;
                break;
              }
            }
          }

          *v12 = *result;
        }

        ++result;
        v5 += 4;
        v7 = v8;
      }

      while (result != a2);
    }
  }

  return result;
}

int *std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>,std::__wrap_iter<int *>>(int *result, int *a2, int *a3, int *a4, _DWORD *a5, void **a6)
{
  if (result == a2)
  {
LABEL_9:
    while (a3 != a4)
    {
      v10 = *a3++;
      *a5++ = v10;
    }
  }

  else
  {
    v6 = *a6;
    while (a3 != a4)
    {
      v7 = *a3;
      v8 = *(*v6 + 4 * v7);
      v9 = *(*v6 + 4 * *result);
      if (v8 >= v9)
      {
        LODWORD(v7) = *result;
      }

      a3 += v8 < v9;
      result += v8 >= v9;
      *a5++ = v7;
      if (result == a2)
      {
        goto LABEL_9;
      }
    }

    while (result != a2)
    {
      v11 = *result++;
      *a5++ = v11;
    }
  }

  return result;
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &,std::__wrap_iter<int *>>(int *__dst, int *a2, uint64_t a3, void **a4, uint64_t a5, uint64_t a6, uint64_t __src)
{
  v7 = a2;
  v8 = __dst;
  if (a5 <= a6)
  {
    if (__dst != a2)
    {
      v12 = -__src;
      v13 = __src;
      v14 = __dst;
      do
      {
        v15 = *v14++;
        *v13++ = v15;
        v12 -= 4;
      }

      while (v14 != a2);
      v16 = *a4;
      while (v7 != a3)
      {
        v17 = *v7;
        v18 = *(*v16 + 4 * v17);
        v19 = *(*v16 + 4 * *__src);
        if (v18 >= v19)
        {
          LODWORD(v17) = *__src;
        }

        v7 += v18 < v19;
        __src += 4 * (v18 >= v19);
        *v8++ = v17;
        if (v13 == __src)
        {
          return;
        }
      }

      memmove(v8, __src, -(__src + v12));
    }
  }

  else
  {
    v9 = __src;
    if (a2 != a3)
    {
      v9 = __src;
      v10 = a2;
      do
      {
        v11 = *v10++;
        *v9++ = v11;
      }

      while (v10 != a3);
    }

    v20 = a4;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &>,std::reverse_iterator<int *>,std::reverse_iterator<int *>,std::reverse_iterator<std::__wrap_iter<int *>>,std::reverse_iterator<std::__wrap_iter<int *>>,std::reverse_iterator<std::__wrap_iter<int *>>>(v9, v9, __src, __src, a2, a2, v8, v8, a3, a3, &v20);
  }
}