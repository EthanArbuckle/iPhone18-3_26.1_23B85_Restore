uint64_t sub_1B57B7164(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::locale a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  if (v57)
  {
    MEMORY[0x1B8C85350](v57, 0x20C40960023A9);
  }

  if (!*(v56 + 8) && (Debug::debugAll > 1 || *(v56 + 12) >= 2u))
  {
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Creating reverse context index...", 33);
    std::ios_base::getloc((v59 + *(*v59 - 24)));
    v60 = std::locale::use_facet(&v64, MEMORY[0x1E69E5318]);
    (v60->__vftable[2].~facet_0)(v60, 10);
    std::locale::~locale(&v64);
    std::ostream::put();
    std::ostream::flush();
  }

  reverseTrie(v56 + 208, *(v56 + 152), &v64);
  LHash<unsigned int,Trie<unsigned int,unsigned int>>::operator=((v56 + 192), &v64);
  *(v56 + 200) = v65;
  Trie<unsigned int,unsigned int>::~Trie(&v64);
  if (v66)
  {
    MEMORY[0x1B8C85310](v66, 0x1000C8052888210);
  }

  v61 = *(v58 - 160);
  if (v61)
  {
    MEMORY[0x1B8C85310](v61, 0x1000C8052888210);
  }

  v62 = *(v58 - 120);
  if (v62)
  {
    MEMORY[0x1B8C85310](v62, 0x50C80EE9192B6);
  }

  return 1;
}

void sub_1B57B72DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::locale a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *(v32 - 160);
  if (v34)
  {
    MEMORY[0x1B8C85310](v34, 0x1000C8052888210);
  }

  v35 = *(v32 - 120);
  if (v35)
  {
    MEMORY[0x1B8C85310](v35, 0x50C80EE9192B6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MEModel::modifyCounts<unsigned long>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 152);
  *&v16[8] = 0;
  v17 = 0;
  v15 = 0;
  *v16 = (v4 + 1);
  if (v4 != -1)
  {
    Array<unsigned int>::alloc();
  }

  v5 = 0xFFFFFFFFLL;
  do
  {
    TrieIter2<unsigned int,unsigned long>::TrieIter2(v14, a2 + 160, *&v16[4] - 4 * v15, v5, 0);
LABEL_5:
    while (TrieIter2<unsigned int,unsigned long>::next(v14))
    {
      v6 = 0;
      while (1)
      {
        if (!*(*(**(a1 + 24) + 152))(*(a1 + 24)))
        {
          v7 = *(*&v16[4] + 4 * (v6 - v15));
          if (v7 == *(*(**(a1 + 24) + 88))(*(a1 + 24)))
          {
            break;
          }
        }

        if (v5 == ++v6)
        {
          goto LABEL_5;
        }
      }

      Trie<unsigned int,unsigned long>::remove((a2 + 160), (*&v16[4] - 4 * v15), 0);
    }

    TrieIter2<unsigned int,unsigned int>::~TrieIter2(v14);
    v5 = (v5 - 1);
  }

  while (v5);
  if (*(a1 + 152) >= 2u)
  {
    v8 = 2;
    do
    {
      TrieIter2<unsigned int,unsigned long>::TrieIter2(v14, a2 + 160, *&v16[4] - 4 * v15, v8, 0);
      while (1)
      {
        v9 = TrieIter2<unsigned int,unsigned long>::next(v14);
        if (!v9)
        {
          break;
        }

        v10 = *(v9 + 8);
        v18 = 0;
        Trie = Trie<unsigned int,unsigned int>::findTrie((a2 + 160), (*&v16[4] - 4 * v15 + 4), &v18);
        v12 = (Trie + 8);
        if (!Trie)
        {
          v12 = 0;
        }

        *v12 -= v10;
      }

      TrieIter2<unsigned int,unsigned int>::~TrieIter2(v14);
      v8 = (v8 + 1);
    }

    while (v8 <= *(a1 + 152));
  }

  result = *&v16[4];
  if (*&v16[4])
  {
    return MEMORY[0x1B8C85310](*&v16[4], 0x1000C8052888210);
  }

  return result;
}

void sub_1B57B7658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    MEMORY[0x1B8C85310](a20, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void MEModel::createDataFromCounts<unsigned long>(uint64_t a1)
{
  v1 = *(a1 + 152);
  v7 = 0;
  v8 = 0;
  v5 = 0;
  v6 = (v1 + 1);
  if (v1 == -1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    operator new();
  }

  Array<unsigned int>::alloc();
}

void sub_1B57B7E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v39 = *(v37 - 112);
  if (v39)
  {
    MEMORY[0x1B8C85310](v39, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B57B8084()
{
  if (v1)
  {
    MEMORY[0x1B8C85350](v1, 0x20C40960023A9);
  }

  if (!*(v0 + 8) && (Debug::debugAll > 1 || *(v0 + 12) >= 2u))
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Creating reverse context index...", 33);
    std::ios_base::getloc((v2 + *(*v2 - 24)));
    v3 = std::locale::use_facet(&v5, MEMORY[0x1E69E5318]);
    (v3->__vftable[2].~facet_0)(v3, 10);
    std::locale::~locale(&v5);
    std::ostream::put();
    std::ostream::flush();
  }

  reverseTrie(v0 + 208, *(v0 + 152), &v5);
  LHash<unsigned int,Trie<unsigned int,unsigned int>>::operator=((v0 + 192), &v5);
  *(v0 + 200) = v6;
  Trie<unsigned int,unsigned int>::~Trie(&v5);
  return 1;
}

uint64_t sub_1B57B8328()
{
  if (v1)
  {
    MEMORY[0x1B8C85350](v1, 0x20C40960023A9);
  }

  if (!*(v0 + 8) && (Debug::debugAll > 1 || *(v0 + 12) >= 2u))
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Creating reverse context index...", 33);
    std::ios_base::getloc((v2 + *(*v2 - 24)));
    v3 = std::locale::use_facet(&v5, MEMORY[0x1E69E5318]);
    (v3->__vftable[2].~facet_0)(v3, 10);
    std::locale::~locale(&v5);
    std::ostream::put();
    std::ostream::flush();
  }

  reverseTrie(v0 + 208, *(v0 + 152), &v5);
  LHash<unsigned int,Trie<unsigned int,unsigned int>>::operator=((v0 + 192), &v5);
  *(v0 + 200) = v6;
  Trie<unsigned int,unsigned int>::~Trie(&v5);
  return 1;
}

uint64_t quasar::SyncDecoder::SyncDecoder(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F2D30E18;
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

  *(a1 + 32) = 0;
  quasar::SystemConfig::Version::Version((a1 + 36));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void sub_1B57B84F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SyncDecoder::init(quasar::SyncDecoder *this, quasar::SystemConfig *a2)
{
  if (*(this + 32) != 1)
  {
    *(this + 36) = quasar::SystemConfig::getConfigFileVersion(a2);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = &v23 + 8;
    v25 = 0uLL;
    *&v24 = 0;
    *(&v24 + 1) = &v25;
    v26 = &v26 + 8;
    memset(v27, 0, sizeof(v27));
    *(&v28 + 1) = &v29;
    v29 = 0uLL;
    *(&v30 + 1) = 0;
    *&v31 = 0;
    *&v30 = &v30 + 8;
    v32 = 0uLL;
    *(&v31 + 1) = &v32;
    ModelLoaderPtr = quasar::SystemConfig::getModelLoaderPtr(a2);
    v6 = *ModelLoaderPtr;
    v5 = ModelLoaderPtr[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(this + 7);
    *(this + 6) = v6;
    *(this + 7) = v5;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (*(this + 31) >= 0)
    {
      v8 = *(this + 31);
    }

    else
    {
      v8 = *(this + 2);
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v8 + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (*(this + 31) >= 0)
      {
        v10 = this + 8;
      }

      else
      {
        v10 = *(this + 1);
      }

      memmove(p_p, v10, v8);
    }

    *(&p_p->__r_.__value_.__l.__data_ + v8) = 46;
    quasar::SystemConfig::setPrefix(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    (*(*this + 40))(this, a2);
    quasar::SystemConfig::readPtree(a2, this + 8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Coding error: SyncDecoder ", 26);
  v14 = *(this + 1);
  v13 = this + 8;
  v12 = v14;
  v15 = v13[23];
  if (v15 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  if (v15 >= 0)
  {
    v17 = v13[23];
  }

  else
  {
    v17 = *(v13 + 1);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v16, v17);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, " has already been initialized.");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v20);
}

void sub_1B57B8774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::SpeechModelInfo::~SpeechModelInfo(&a16);
  _Unwind_Resume(a1);
}

void quasar::SyncDecoder::~SyncDecoder(quasar::SyncDecoder *this)
{
  *this = &unk_1F2D30E18;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void quasar::SyncDecoder::createDecoder(uint64_t a1@<X0>, void *a2@<X8>)
{
  quasar::Decoder::getDecoderTypeName(a1, &v27);
  if (v29 < 0 && v28 == 24)
  {
    if (*v27 == 0x2D64726F7779656BLL && v27[1] == 0x676E6974746F7073 && v27[2] == 0x7265646F6365642DLL)
    {
      std::allocate_shared[abi:ne200100]<quasar::KeywordSpottingSyncDecoder,std::allocator<quasar::KeywordSpottingSyncDecoder>,std::string const&,0>();
    }
  }

  else if (v29 < 0 && v28 == 29)
  {
    v6 = *v27 == 0x2D64726F7779656BLL && v27[1] == 0x6F2D746365726964;
    v7 = v6 && v27[2] == 0x65642D7475707475;
    if (v7 && *(v27 + 21) == 0x7265646F6365642DLL)
    {
      std::allocate_shared[abi:ne200100]<quasar::KeywordDirectOutputsSyncDecoder,std::allocator<quasar::KeywordDirectOutputsSyncDecoder>,std::string const&,0>();
    }
  }

  if (quasar::gLogLevel >= 2)
  {
    memset(v26, 0, sizeof(v26));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    std::operator+<char>();
    v9 = std::string::append(&v21, " in ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
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

    v14 = std::string::append(&v22, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v23, ". ");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v25 = v16->__r_.__value_.__r.__words[2];
    *__p = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (v25 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (v25 >= 0)
    {
      v19 = HIBYTE(v25);
    }

    else
    {
      v19 = __p[1];
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v18, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Recognition will crash if you try to use it", 43);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    quasar::QuasarWarnMessage::~QuasarWarnMessage(v26);
  }

  *a2 = 0;
  a2[1] = 0;
  if (v29 < 0)
  {
    operator delete(v27);
  }
}

void sub_1B57B8AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (*(v37 - 33) < 0)
  {
    operator delete(*(v37 - 56));
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::KeywordSpottingSyncDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::KeywordSpottingSyncDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D30E68;
  quasar::KeywordSpottingSyncDecoder::KeywordSpottingSyncDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::KeywordSpottingSyncDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D30E68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::KeywordDirectOutputsSyncDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::KeywordDirectOutputsSyncDecoder>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D30EB8;
  quasar::KeywordDirectOutputsSyncDecoder::KeywordDirectOutputsSyncDecoder((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::KeywordDirectOutputsSyncDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D30EB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

BOOL quasar::AlignmentProcessorBlockHelper::startswith(unsigned __int8 *a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a2 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a2;
  }

  v5 = &a1[v4];
  if (v4)
  {
    v8 = *a3;
    v6 = a3 + 1;
    v7 = v8;
    v9 = a1;
    v10 = &a1[v4];
    do
    {
      v11 = v9 + 1;
      while (*v9 != v7)
      {
        ++v9;
        ++v11;
        if (v9 == v5)
        {
          goto LABEL_19;
        }
      }

      v12 = a4 - 1;
      v13 = v6;
      while (v12)
      {
        if (v11 == v5)
        {
          goto LABEL_19;
        }

        v15 = *v11++;
        v14 = v15;
        v16 = *v13++;
        --v12;
        if (v14 != v16)
        {
          goto LABEL_16;
        }
      }

      v10 = v9;
LABEL_16:
      ++v9;
    }

    while (v9 != v5);
  }

  else
  {
    v10 = a1;
  }

LABEL_19:
  if (a4)
  {
    v17 = v10 == v5;
  }

  else
  {
    v17 = 0;
  }

  return !v17 && a1 == v10;
}

uint64_t quasar::AlignmentProcessorOptions::options@<X0>(quasar::AlignmentProcessorOptions *this@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  v2 = this + 16;
  v5[0] = &v2[*(v3 - 24)];
  v5[1] = v2 + 152;
  v5[2] = v2 + 296;
  v5[3] = &v2[*(*(v2 + 55) - 24) + 440];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v5, &v6, 4uLL);
}

void quasar::AlignmentProcessorBlock::init(quasar::AlignmentProcessorBlock *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v4, "AlignmentProcessorBlock");
  v2 = std::string::append(&v4, "Config:");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v6 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  quasar::OptionsBase::debugLog(this + 1, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_1B57B8FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void quasar::AlignmentProcessorBlock::computeTokenWordMapping(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v10 = -1;
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v3 + v5;
      v8 = *(v7 + 23);
      if ((v8 & 0x8000000000000000) != 0)
      {
        v9 = *v7;
        v8 = *(v7 + 8);
        if (!v5)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v9 = v7;
        if (!v5)
        {
          goto LABEL_8;
        }
      }

      if (quasar::AlignmentProcessorBlockHelper::startswith(v9, v8, "▁", 3uLL))
      {
LABEL_8:
        ++v10;
      }

      std::vector<int>::push_back[abi:ne200100](a2, &v10);
      ++v6;
      v3 = *a1;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v6);
  }
}

void sub_1B57B9118(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::AlignmentProcessorBlock::computeWordLevelAlignments(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  quasar::AlignmentProcessorBlock::computeTokenWordMapping(a1, v15);
  quasar::AlignmentProcessorBlock::computeTokenWordMapping(a2, &__p);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (__p != v14)
  {
    std::vector<std::vector<int>>::resize(a4, *(v14 - 1) + 1);
  }

  v8 = *a3;
  v7 = a3[1];
  if (v7 != *a3)
  {
    v9 = 0;
    do
    {
      v10 = (v8 + 24 * v9);
      v11 = *v10;
      v12 = v10[1];
      if (*v10 != v12)
      {
        do
        {
          std::vector<int>::push_back[abi:ne200100]((*a4 + 24 * *(__p + v9)), v15[0] + *v11++);
        }

        while (v11 != v12);
        v8 = *a3;
        v7 = a3[1];
      }

      ++v9;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3) > v9);
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }
}

void sub_1B57B9248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void quasar::AlignmentProcessorBlock::computeTokenCharMapping(uint64_t a1@<X0>, __int128 **a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a2;
  v52 = a2[1];
  if (*a2 != v52)
  {
    v51 = 0;
    v49 = 0;
    do
    {
      if (*(v4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v58, *v4, *(v4 + 1));
      }

      else
      {
        v5 = *v4;
        v58.__r_.__value_.__r.__words[2] = *(v4 + 2);
        *&v58.__r_.__value_.__l.__data_ = v5;
      }

      if ((a3 & 1) == 0)
      {
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v58;
        }

        else
        {
          v6 = v58.__r_.__value_.__r.__words[0];
        }

        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v58.__r_.__value_.__l.__size_;
        }

        v8 = quasar::AlignmentProcessorBlockHelper::startswith(v6, size, "▁", 3uLL);
        if (v8)
        {
          v9 = 3;
        }

        else
        {
          v9 = 0;
        }

        if (v8)
        {
          v10 = size - 3;
        }

        else
        {
          v10 = size;
        }

        if (v10 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v10 >= 0x17)
        {
          operator new();
        }

        BYTE7(v62) = v10;
        if (v10)
        {
          memmove(&__dst, v6 + v9, v10);
        }

        *(&__dst + v10) = 0;
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        *&v58.__r_.__value_.__l.__data_ = __dst;
        v58.__r_.__value_.__r.__words[2] = v62;
      }

      v11 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      v12 = v58.__r_.__value_.__l.__size_;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v58.__r_.__value_.__l.__size_;
      }

      if (v13)
      {
        v14 = *(a1 + 23);
        if ((v14 & 0x80u) == 0)
        {
          v15 = a1;
        }

        else
        {
          v15 = *a1;
        }

        if ((v14 & 0x80u) != 0)
        {
          v14 = *(a1 + 8);
        }

        v16 = v58.__r_.__value_.__r.__words[0];
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v58;
        }

        else
        {
          v17 = v58.__r_.__value_.__r.__words[0];
        }

        if (v14 >= v51)
        {
          v18 = v14 - v51;
          if (v18 >= v13)
          {
            v27 = &v15[v14];
            v28 = &v15[v51];
            v29 = v17->__r_.__value_.__s.__data_[0];
            do
            {
              v30 = v18 - v13;
              if (v30 == -1)
              {
                break;
              }

              v31 = memchr(v28, v29, v30 + 1);
              if (!v31)
              {
                break;
              }

              v32 = v31;
              if (!memcmp(v31, v17, v13))
              {
                if (v32 == v27 || v32 - v15 == -1)
                {
                  break;
                }

                if ((v11 & 0x80u) == 0)
                {
                  v33 = &v58;
                }

                else
                {
                  v33 = v16;
                }

                if ((v11 & 0x80u) == 0)
                {
                  v34 = v11;
                }

                else
                {
                  v34 = v12;
                }

                quasar::utf8::codepointsCtr(v33, v34, 0, v13, v55);
                if (v57 == 1)
                {
                  v48 = v48 & 0xFFFFFFFF00000000 | LODWORD(v55[0]);
                }

                else
                {
                  *__p = *v55;
                  v60 = v56;
                  v55[0] = 0;
                  v55[1] = 0;
                  v56 = 0;
                  if (quasar::gLogLevel >= 1)
                  {
                    v76 = 0u;
                    v77 = 0u;
                    v74 = 0u;
                    v75 = 0u;
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
                    __dst = 0u;
                    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__dst);
                    if (v60 >= 0)
                    {
                      v35 = __p;
                    }

                    else
                    {
                      v35 = __p[0];
                    }

                    if (v60 >= 0)
                    {
                      v36 = HIBYTE(v60);
                    }

                    else
                    {
                      v36 = __p[1];
                    }

                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__dst, v35, v36);
                    quasar::QuasarErrorMessage::~QuasarErrorMessage(&__dst);
                  }

                  if (SHIBYTE(v60) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v48 &= 0xFFFFFFFF00000000;
                  if ((v57 & 1) == 0 && SHIBYTE(v56) < 0)
                  {
                    operator delete(v55[0]);
                  }
                }

                v37 = *(a1 + 23);
                if (v37 >= 0)
                {
                  v38 = a1;
                }

                else
                {
                  v38 = *a1;
                }

                if (v37 >= 0)
                {
                  v39 = *(a1 + 23);
                }

                else
                {
                  v39 = *(a1 + 8);
                }

                quasar::utf8::codepointsCtr(v38, v39, v51, v32 - v15, v55);
                v40 = v47;
                if (v57 == 1)
                {
                  v41 = v47 & 0xFFFFFFFF00000000 | LODWORD(v55[0]);
                }

                else
                {
                  *__p = *v55;
                  v60 = v56;
                  v55[0] = 0;
                  v55[1] = 0;
                  v56 = 0;
                  if (quasar::gLogLevel >= 1)
                  {
                    v76 = 0u;
                    v77 = 0u;
                    v74 = 0u;
                    v75 = 0u;
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
                    __dst = 0u;
                    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__dst);
                    if (v60 >= 0)
                    {
                      v42 = __p;
                    }

                    else
                    {
                      v42 = __p[0];
                    }

                    if (v60 >= 0)
                    {
                      v43 = HIBYTE(v60);
                    }

                    else
                    {
                      v43 = __p[1];
                    }

                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__dst, v42, v43);
                    quasar::QuasarErrorMessage::~QuasarErrorMessage(&__dst);
                    v40 = v47;
                  }

                  if (SHIBYTE(v60) < 0)
                  {
                    operator delete(__p[0]);
                    v40 = v47;
                  }

                  v41 = v40 & 0xFFFFFFFF00000000;
                  if ((v57 & 1) == 0 && SHIBYTE(v56) < 0)
                  {
                    v44 = v41;
                    operator delete(v55[0]);
                    v41 = v44;
                  }
                }

                v47 = v41;
                v45 = v49 + v41;
                v49 += v41 + v48;
                LODWORD(__dst) = v45;
                DWORD1(__dst) = v45 + v48 - 1;
                std::vector<std::pair<int,int>>::push_back[abi:ne200100](a4, &__dst);
                v46 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
                if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v46 = v58.__r_.__value_.__r.__words[1];
                }

                v51 = v46 + v32 - v15;
                goto LABEL_57;
              }

              v28 = v32 + 1;
              v18 = v27 - (v32 + 1);
            }

            while (v18 >= v13);
          }
        }

        if (quasar::gLogLevel >= 4)
        {
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
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
          __dst = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__dst);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__dst, "Token: ", 7);
          if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &v58;
          }

          else
          {
            v20 = v58.__r_.__value_.__r.__words[0];
          }

          if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v21 = v58.__r_.__value_.__l.__size_;
          }

          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
          v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " not found in raw string input: ", 32);
          v24 = *(a1 + 23);
          if (v24 >= 0)
          {
            v25 = a1;
          }

          else
          {
            v25 = *a1;
          }

          if (v24 >= 0)
          {
            v26 = *(a1 + 23);
          }

          else
          {
            v26 = *(a1 + 8);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&__dst);
        }
      }

      std::vector<std::pair<int,int>>::push_back[abi:ne200100](a4, &quasar::AlignmentProcessorBlock::NULL_RANGE);
LABEL_57:
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      v4 = (v4 + 24);
    }

    while (v4 != v52);
  }
}

void sub_1B57B9838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, std::locale a38)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a38);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if ((a23 & 1) == 0 && a22 < 0)
  {
    operator delete(a17);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  v39 = *a16;
  if (*a16)
  {
    *(a16 + 8) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void quasar::AlignmentProcessorBlock::computeCharLevelSpans(int **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return;
  }

  do
  {
    v7 = *v3;
    v8 = v3[1];
    if (*v3 > v8)
    {
      goto LABEL_16;
    }

    v9 = *a2;
    while (1)
    {
      v10 = (v9 + 8 * v7);
      v11 = *v10;
      v12 = v10[1];
      if (v11 == -1 && v12 == -1)
      {
        ++v7;
        goto LABEL_15;
      }

      v14 = (v9 + 8 * v8);
      if (*v14 != -1 || v14[1] != -1)
      {
        break;
      }

      --v8;
LABEL_15:
      if (v7 > v8)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v16) = v11;
    HIDWORD(v16) = v14[1];
    std::vector<std::pair<int,int>>::push_back[abi:ne200100](a3, &v16);
LABEL_16:
    v3 += 2;
  }

  while (v3 != v4);
}

void sub_1B57B99B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::AlignmentProcessorBlock::computeRangeProjections(unsigned int **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, size_t *a4@<X8>)
{
  v76[0] = 0;
  v76[1] = 0;
  v74[1] = 0;
  v75 = v76;
  v73 = v74;
  v74[0] = 0;
  LODWORD(v67) = 0;
  v8 = *a2;
  v7 = a2[1];
  if (v7 != *a2)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v8 + 24 * v10;
      v12 = *v11;
      v13 = *(v11 + 8);
      if (*v11 != v13)
      {
        do
        {
          LODWORD(__p) = *v12;
          p_p = &__p;
          v14 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v75, &__p);
          std::vector<int>::push_back[abi:ne200100](v14 + 5, &v67);
          ++v12;
        }

        while (v12 != v13);
        v9 = v67;
        v8 = *a2;
        v7 = a2[1];
      }

      LODWORD(v67) = ++v9;
      v10 = v9;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3) > v9);
  }

  p_p = 0;
  v71 = 0;
  v72 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  LODWORD(__p) = 0;
  v15 = *a3;
  v16 = a3[1];
  if (v16 == *a3)
  {
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = (v15 + 8 * v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = v21 == -1 && v20 == -1;
      if (!v22)
      {
        std::vector<int>::push_back[abi:ne200100](&v67, &__p);
        v17 = __p;
        v15 = *a3;
        v16 = a3[1];
      }

      LODWORD(__p) = ++v17;
      v18 = v17;
    }

    while (v17 < ((v16 - v15) >> 3));
    v23 = v67;
    v24 = v68;
  }

  if (((v24 - v23) >> 2) < 2)
  {
    v26 = 0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = v23[v25++];
      v28 = v23[v25];
      if (v26 <= *(v15 + 8 * v27 + 4))
      {
        do
        {
          LODWORD(__p) = v27;
          HIDWORD(__p) = v27;
          std::vector<std::pair<int,int>>::push_back[abi:ne200100](&p_p, &__p);
          v29 = v26 + 1;
          v15 = *a3;
          v42 = v26++ < *(*a3 + 8 * v27 + 4);
        }

        while (v42);
        v26 = v29;
      }

      else
      {
        v29 = v26;
      }

      if (v29 < *(v15 + 8 * v28))
      {
        do
        {
          __p = __PAIR64__(v27, v28);
          std::vector<std::pair<int,int>>::push_back[abi:ne200100](&p_p, &__p);
          ++v26;
          v15 = *a3;
        }

        while (v26 < *(*a3 + 8 * v28));
      }

      v23 = v67;
      v24 = v68;
    }

    while (v25 < (((v68 - v67) << 30) - 0x100000000) >> 32);
  }

  if (v23 != v24)
  {
    v30 = *(v24 - 1);
    if (v26 <= *(v15 + 8 * v30 + 4))
    {
      v31 = v26 - 1;
      do
      {
        LODWORD(__p) = v30;
        HIDWORD(__p) = v30;
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](&p_p, &__p);
        ++v31;
      }

      while (v31 < *(*a3 + 8 * v30 + 4));
    }
  }

  v32 = a4;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (p_p == v71)
  {
    v59 = (a1[1] - *a1) >> 3;
    __p = 0;
    v65 = 0;
    v66 = 0;
    std::vector<std::vector<std::pair<int,int>>>::resize(a4, v59, &__p);
    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v33 = *a1;
    v60 = a2;
    v61 = a1[1];
    if (*a1 != v61)
    {
      do
      {
        v35 = *v33;
        v34 = v33[1];
        __p = 0;
        v65 = 0;
        v66 = 0;
        std::vector<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::TempArc,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::TempArc>>>::push_back[abi:ne200100](v32, &__p);
        if (__p)
        {
          v65 = __p;
          operator delete(__p);
        }

        if ((v35 & 0x80000000) == 0)
        {
          v36 = (v71 - p_p) >> 3;
          if (v36 > v35 && (v34 & 0x80000000) == 0 && v34 >= v35)
          {
            v37 = ((v71 - p_p) >> 3) - 1;
            if (v36 > v34)
            {
              v37 = v34;
            }

            v65 = 0;
            v66 = 0;
            __p = &v65;
            v38 = *(p_p + 2 * v35);
            v63 = v38;
            if (v38 <= *(p_p + 2 * v37 + 1))
            {
              v39 = v37;
              do
              {
                v40 = *(*a3 + 8 * v38);
                v42 = (HIDWORD(v40) != 0xFFFFFFFF || v40 != -1) && v35 <= v40;
                if (v42 && v39 >= SHIDWORD(v40))
                {
                  v77[0] = &v63;
                  v45 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v75, &v63)[5];
                  v77[0] = &v63;
                  v46 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v75, &v63)[6];
                  while (v45 != v46)
                  {
                    std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(&__p, &v65, v45++);
                  }
                }

                v44 = v63;
                v38 = ++v63;
              }

              while (v44 < *(p_p + 2 * v39 + 1));
              v47 = __p;
              if (__p != &v65)
              {
                v48 = 0x80000000;
                v49 = 0x80000000;
                while (1)
                {
                  v50 = *(v47 + 7);
                  if (v49 != v50 - 1)
                  {
                    v51 = *(v47 + 7);
                    if (v48 == 0x80000000)
                    {
                      goto LABEL_64;
                    }

                    if ((v49 + 1) < v50)
                    {
                      v54 = (*v60 + 24 * (v49 + 1) + 8);
                      v55 = ~v49 + v50;
                      v56 = 1;
                      do
                      {
                        v56 &= *(v54 - 1) == *v54;
                        v54 += 3;
                        --v55;
                      }

                      while (v55);
                      if ((v56 & 1) == 0)
                      {
                        v57 = a4[1] - 24;
                        v77[0] = __PAIR64__(v49, v48);
                        std::vector<std::pair<int,int>>::push_back[abi:ne200100](v57, v77);
                        v51 = v50;
                        goto LABEL_64;
                      }
                    }
                  }

                  v51 = v48;
LABEL_64:
                  v52 = v47[1];
                  if (v52)
                  {
                    do
                    {
                      v53 = v52;
                      v52 = *v52;
                    }

                    while (v52);
                  }

                  else
                  {
                    do
                    {
                      v53 = v47[2];
                      v22 = *v53 == v47;
                      v47 = v53;
                    }

                    while (!v22);
                  }

                  v47 = v53;
                  v48 = v51;
                  v49 = v50;
                  if (v53 == &v65)
                  {
                    if (v51 != 0x80000000)
                    {
                      v58 = a4[1] - 24;
                      v77[0] = __PAIR64__(v50, v51);
                      std::vector<std::pair<int,int>>::push_back[abi:ne200100](v58, v77);
                    }

                    break;
                  }
                }
              }
            }

            std::__tree<int>::destroy(&__p, v65);
          }
        }

        v33 += 2;
        v32 = a4;
      }

      while (v33 != v61);
    }
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (p_p)
  {
    v71 = p_p;
    operator delete(p_p);
  }

  std::__tree<int>::destroy(&v73, v74[0]);
  std::__tree<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>>>::destroy(&v75, v76[0]);
}

void sub_1B57B9F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, char a25, void *a26)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  __p = a11;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  std::__tree<int>::destroy(&a22, a23);
  std::__tree<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>>>::destroy(&a25, a26);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<std::pair<int,int>>>::resize(size_t *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<std::vector<std::pair<int,int>>>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    if (v4 != v8)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v4 - 16) = v10;
          operator delete(v10);
        }

        v4 = v9;
      }

      while (v9 != v8);
    }

    a1[1] = v8;
  }
}

void quasar::AlignmentProcessorBlock::alignUnalignedChars(int ***a1, unint64_t a2)
{
  if (a2 && a1[1] != *a1)
  {
    LOBYTE(v22) = 0;
    std::vector<BOOL>::vector(&__p, a2);
    v4 = *a1;
    v5 = a1[1];
    if (*a1 == v5)
    {
      goto LABEL_28;
    }

    v6 = 0;
    v7 = *a1;
    do
    {
      v8 = *v7;
      v9 = v7[1];
      if (*v7 != v9)
      {
        v10 = __p;
        do
        {
          v11 = v8[1];
          v12 = *v8;
          if (v12 <= v11)
          {
            v13 = v11 - v12 + 1;
            do
            {
              *&v10[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
              ++v12;
              --v13;
            }

            while (v13);
          }

          ++v6;
          v8 += 2;
        }

        while (v8 != v9);
      }

      v7 += 3;
    }

    while (v7 != v5);
    if (!v6)
    {
LABEL_28:
      LODWORD(v22) = 0;
      HIDWORD(v22) = a2 - 1;
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](v4, &v22);
    }

    else if (v4 != v5)
    {
      v14 = 0;
      v15 = 0x7FFFFFFF;
      do
      {
        v17 = *v4;
        v16 = v4[1];
        if (*v4 != v16)
        {
          v18 = __p;
          do
          {
            for (i = v17[1]; ++i < a2; v18[i >> 6] = v20 | (1 << i))
            {
              v20 = v18[i >> 6];
              if ((v20 & (1 << i)) != 0)
              {
                break;
              }

              v17[1] = i;
            }

            v21 = v17 + 2;
            if (*v17 < v15)
            {
              v14 = v17;
              v15 = *v17;
            }

            v17 += 2;
          }

          while (v21 != v16);
        }

        v4 += 3;
      }

      while (v4 != v5);
      if (v14 && *v14)
      {
        *v14 = 0;
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1B57BA240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::AlignmentProcessorBlock::avoidCrossingWords(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  if (!a3 || v8 == v7)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;

    std::vector<std::vector<std::pair<int,int>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,int>>*,std::vector<std::pair<int,int>>*>(a4, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3));
  }

  else
  {
    LODWORD(v45.__locale_) = -1;
    std::vector<int>::vector[abi:ne200100](v46, a3);
    v10 = *a1;
    v11 = a1[1] - *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
    if (v11)
    {
      v13 = 0;
      if (v12 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v12;
      }

      do
      {
        v15 = (v10 + 24 * v13);
        v16 = *v15;
        v17 = v15[1];
        if (v16 != v17)
        {
          v18 = v46[0];
          do
          {
            v19 = *v16;
            if (v19 <= v16[1])
            {
              v20 = v19 - 1;
              v21 = &v18[4 * v19];
              do
              {
                *v21 = v13;
                v21 += 4;
                ++v20;
              }

              while (v20 < v16[1]);
            }

            v16 += 2;
          }

          while (v16 != v17);
        }

        ++v13;
      }

      while (v13 != v14);
    }

    v22 = *a2;
    if (a2[1] != *a2)
    {
      v23 = 0;
      v24 = xmmword_1B5AE0050;
      v25 = xmmword_1B5AE0060;
      do
      {
        v26 = *(v22 + 8 * v23);
        if (v26 < 0xFFFFFFFF00000000 || v26 != 0xFFFFFFFFLL)
        {
          if (v26 >> 32 >= a3 && quasar::gLogLevel >= 1)
          {
            memset(&v45, 0, 272);
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v45);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "Char ranges in the word char map exceeds total number of characters", 67);
            quasar::QuasarErrorMessage::~QuasarErrorMessage(&v45);
            v25 = xmmword_1B5AE0060;
            v24 = xmmword_1B5AE0050;
          }

          v29 = 4 * (v26 >> 32) + 4;
          v30 = v46[0] + v29;
          v31 = v46[0] + 4 * v26;
          if (v29 != 4 * v26)
          {
            while (*v31 == -1)
            {
              v31 += 4;
              if (v31 == v30)
              {
                v31 = v46[0] + v29;
                break;
              }
            }
          }

          if (v31 != v30)
          {
            v32 = (v29 - 4 * v26) >> 2;
            v33 = v32 - 1;
            if (v32 >= 1)
            {
              v34 = 0;
              v35 = *v31;
              v36 = (v32 + 3) & 0x7FFFFFFFFFFFFFFCLL;
              v37 = vdupq_n_s64(v33);
              v38 = v46[0] + 4 * v26 + 8;
              do
              {
                v39 = vdupq_n_s64(v34);
                v40 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v39, v25)));
                if (vuzp1_s16(v40, *v37.i8).u8[0])
                {
                  *(v38 - 2) = v35;
                }

                if (vuzp1_s16(v40, *&v37).i8[2])
                {
                  *(v38 - 1) = v35;
                }

                if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v39, v24)))).i32[1])
                {
                  *v38 = v35;
                  v38[1] = v35;
                }

                v34 += 4;
                v38 += 4;
              }

              while (v36 != v34);
            }
          }
        }

        ++v23;
        v22 = *a2;
      }

      while (v23 < (a2[1] - *a2) >> 3);
      v12 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
    }

    std::vector<std::vector<std::pair<int,int>>>::vector[abi:ne200100](a4, v12);
    v41 = 0;
    do
    {
      v42 = *(v46[0] + v41);
      if (v42 != -1)
      {
        v43 = (*a4 + 24 * v42);
        v44 = v43[1];
        if (*v43 == v44 || v41 - 1 != *(v44 - 4))
        {
          LODWORD(v45.__locale_) = v41;
          HIDWORD(v45.__locale_) = v41;
          std::vector<std::pair<int,int>>::push_back[abi:ne200100](v43, &v45);
        }

        else
        {
          *(v44 - 4) = v41;
        }
      }

      ++v41;
    }

    while (a3 != v41);
    if (v46[0])
    {
      v46[1] = v46[0];
      operator delete(v46[0]);
    }
  }
}

void sub_1B57BA5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *(v13 - 112);
  if (v15)
  {
    *(v13 - 104) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void quasar::AlignmentProcessorBlock::mergeContinuousRanges(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (v4 == *a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;

    std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int>*,std::pair<int,int>*>(a2, v3, v4, v5);
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int>*,std::pair<int,int>*>(&v13, v3, v4, v5);
    v6 = 126 - 2 * __clz((v14 - v13) >> 3);
    if (v14 == v13)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v13, v14, &v16, v7, 1);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<std::pair<int,int>>::push_back[abi:ne200100](a2, v13);
    v8 = v13;
    v9 = v14;
    if ((v14 - v13) >= 9)
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = a2[1];
        if (*(v12 - 4) == v8[v10 + 2] - 1)
        {
          *(v12 - 4) = v8[v10 + 3];
        }

        else
        {
          std::vector<std::pair<int,int>>::push_back[abi:ne200100](a2, &v8[v10 + 2]);
          v8 = v13;
          v9 = v14;
        }

        ++v11;
        v10 += 2;
      }

      while (v11 < (v9 - v8) >> 3);
    }

    if (v8)
    {
      v14 = v8;
      operator delete(v8);
    }
  }
}

void sub_1B57BA760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::AlignmentProcessorBlock::pivotTransformQueries(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<std::vector<int>>::clear[abi:ne200100](a3);
  v7 = a1[1];
  v22 = a1;
  v24 = a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) != (v7 - *a1) >> 3)
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
    *__src = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__src);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__src, "Mismatch in sizes of alignment queries and projections from the first leg don't match.", 86);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__src);
  }

  if (v7 != *a1)
  {
    v8 = 0;
    do
    {
      __src[0] = 0;
      __src[1] = 0;
      *&v26 = 0;
      v9 = *v24 + 24 * v8;
      v10 = *v9;
      v11 = *(v9 + 8);
      while (v10 != v11)
      {
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](a4, v10);
        v12 = ((a4[1] - *a4) >> 3) - 1;
        v13 = __src[1];
        if (__src[1] >= v26)
        {
          v15 = __src[0];
          v16 = __src[1] - __src[0];
          v17 = (__src[1] - __src[0]) >> 2;
          v18 = v17 + 1;
          if ((v17 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v19 = v26 - __src[0];
          if ((v26 - __src[0]) >> 1 > v18)
          {
            v18 = v19 >> 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__src, v20);
          }

          *(4 * v17) = v12;
          v14 = (4 * v17 + 4);
          memcpy(0, v15, v16);
          v21 = __src[0];
          __src[0] = 0;
          __src[1] = v14;
          *&v26 = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *__src[1] = v12;
          v14 = v13 + 4;
        }

        __src[1] = v14;
        ++v10;
      }

      std::vector<std::vector<int>>::push_back[abi:ne200100](a3, __src);
      if (__src[0])
      {
        __src[1] = __src[0];
        operator delete(__src[0]);
      }

      ++v8;
    }

    while (v8 < (v22[1] - *v22) >> 3);
  }
}

void sub_1B57BA9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::AlignmentProcessorBlock::stitchPivotQueries@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = std::vector<std::vector<std::pair<int,int>>>::vector[abi:ne200100](a3, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = *a2;
  v7 = a2[1];
  if (v7 != *a2)
  {
    v9 = 0;
    do
    {
      v10 = (v8 + 24 * v9);
      v11 = *v10;
      v12 = v10[1];
      if (*v10 != v12)
      {
        do
        {
          v13 = (*a1 + 24 * *v11);
          result = std::vector<std::pair<int,int>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<int,int>*>,std::__wrap_iter<std::pair<int,int>*>>((*a3 + 24 * v9), *(*a3 + 24 * v9), *v13, v13[1], v13[1] - *v13);
          ++v11;
        }

        while (v11 != v12);
        v8 = *a2;
        v7 = a2[1];
      }

      ++v9;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3) > v9);
  }

  return result;
}

void sub_1B57BAAD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::AlignmentProcessorBlock::parseQueryRanges(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  quasar::PTree::PTree(v6);
  quasar::PTree::PTree(v5);
  quasar::PTree::getChild(a1, a2);
}

void sub_1B57BAE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a9);
  __cxa_end_catch();
  JUMPOUT(0x1B57BAE2CLL);
}

void quasar::AlignmentProcessorBlock::writeResult(uint64_t a1, void *a2, unsigned int **a3, uint64_t a4)
{
  v6 = quasar::OptionValue<std::string>::value((a1 + 464 + *(*(a1 + 464) - 24)));
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 21)
    {
LABEL_13:
      v46 = quasar::MetaInfo::get((a4 + 256));
      quasar::PTree::PTree(&v68);
      v10 = *a3;
      v47 = a3[1];
      if (*a3 != v47)
      {
        v11 = 0;
        do
        {
          v13 = *v10;
          v12 = v10[1];
          quasar::PTree::PTree(v66);
          quasar::PTree::PTree(v65);
          v49 = v11;
          v14 = *a2 + 24 * v11;
          v15 = *v14;
          v16 = *(v14 + 8);
          while (v15 != v16)
          {
            quasar::PTree::PTree(&v59);
            std::string::basic_string[abi:ne200100]<0>(__p, "start");
            v17 = *v15;
            LODWORD(v51) = quasar::getType(*v15);
            std::to_string(&v52, v17);
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v56 = 1;
            quasar::PTree::putChild(&v59, __p, &v51, 1);
            quasar::PTree::~PTree(&v51);
            if (v58 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "end");
            v18 = v15[1];
            LODWORD(v51) = quasar::getType(v18);
            std::to_string(&v52, v18);
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v56 = 1;
            quasar::PTree::putChild(&v59, __p, &v51, 1);
            quasar::PTree::~PTree(&v51);
            if (v58 < 0)
            {
              operator delete(__p[0]);
            }

            quasar::PTree::addChild(v66, &v59);
            quasar::PTree::~PTree(&v59);
            v15 += 2;
          }

          std::string::basic_string[abi:ne200100]<0>(&v51, "start");
          LODWORD(v59) = quasar::getType(v13);
          std::to_string(&v60, v13);
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v64 = 1;
          quasar::PTree::putChild(v65, &v51, &v59, 1);
          quasar::PTree::~PTree(&v59);
          if (v52.__r_.__value_.__s.__data_[15] < 0)
          {
            operator delete(v51);
          }

          std::string::basic_string[abi:ne200100]<0>(&v51, "end");
          LODWORD(v59) = quasar::getType(v12);
          std::to_string(&v60, v12);
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v64 = 1;
          quasar::PTree::putChild(v65, &v51, &v59, 1);
          quasar::PTree::~PTree(&v59);
          if (v52.__r_.__value_.__s.__data_[15] < 0)
          {
            operator delete(v51);
          }

          std::string::basic_string[abi:ne200100]<0>(&v59, "projections");
          quasar::PTree::putChild(v65, &v59, v66, 1);
          if (v60.__r_.__value_.__s.__data_[15] < 0)
          {
            operator delete(v59);
          }

          quasar::PTree::addChild(&v68, v65);
          v11 = v49 + 1;
          quasar::PTree::~PTree(v65);
          quasar::PTree::~PTree(v66);
          v10 += 2;
        }

        while (v10 != v47);
      }

      std::string::basic_string[abi:ne200100]<0>(v66, "alignment-queries");
      quasar::PTree::putChild(v46, v66, &v68, 1);
      if (v67 < 0)
      {
        operator delete(v66[0]);
      }

      quasar::PTree::~PTree(&v68);
      return;
    }

    v6 = *v6;
  }

  else if (v7 != 21)
  {
    goto LABEL_13;
  }

  if (*v6 != 0x7275746375727473 || *(v6 + 8) != 0x69646572705F6465 || *(v6 + 13) != 0x6E6F697463696465)
  {
    goto LABEL_13;
  }

  if (quasar::MetaInfo::hasStructuredPrediction((a4 + 256), "gender", 6))
  {
    v19 = quasar::MetaInfo::structuredPrediction((a4 + 256), "gender", 6);
    v20 = *(v19 + 32);
    v50 = *(v19 + 40);
    if (v20 != v50)
    {
      v21 = *a3;
      do
      {
        v22 = a3[1];
        if (v21 == v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = 0;
          v24 = v21;
          do
          {
            if (*v24 == *(v20 + 48) && v24[1] == *(v20 + 52))
            {
              break;
            }

            ++v23;
            v24 += 2;
          }

          while (v24 != v22);
        }

        if (v23 == (v22 - v21) >> 3)
        {
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
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v68);
          v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, "Alignment query not found for source span (", 43);
          v43 = MEMORY[0x1B8C84C00](v42, *(v20 + 48));
          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ", ", 2);
          v45 = MEMORY[0x1B8C84C00](v44, *(v20 + 52));
          std::operator<<[abi:ne200100]<std::char_traits<char>>(v45, ")");
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v68);
        }

        std::vector<std::pair<int,int>>::reserve((v20 + 56), (*(*a2 + 24 * v23 + 8) - *(*a2 + 24 * v23)) >> 3);
        v25 = *a2 + 24 * v23;
        v26 = *v25;
        v27 = *(v25 + 8);
        if (*v25 != v27)
        {
          v28 = *(v20 + 64);
          do
          {
            v29 = *v26;
            v30 = v26[1];
            v31 = *(v20 + 72);
            if (v28 >= v31)
            {
              v32 = *(v20 + 56);
              v33 = (v28 - v32) >> 3;
              if ((v33 + 1) >> 61)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v31 - v32;
              v35 = v34 >> 2;
              if (v34 >> 2 <= (v33 + 1))
              {
                v35 = v33 + 1;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF8)
              {
                v36 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v36 = v35;
              }

              if (v36)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v20 + 56, v36);
              }

              v37 = (8 * v33);
              *v37 = v29 | (v30 << 32);
              v28 = (8 * v33 + 8);
              v38 = *(v20 + 56);
              v39 = *(v20 + 64) - v38;
              v40 = v37 - v39;
              memcpy(v37 - v39, v38, v39);
              v41 = *(v20 + 56);
              *(v20 + 56) = v40;
              *(v20 + 64) = v28;
              *(v20 + 72) = 0;
              if (v41)
              {
                operator delete(v41);
              }
            }

            else
            {
              *v28++ = v29 | (v30 << 32);
            }

            *(v20 + 64) = v28;
            v26 += 2;
          }

          while (v26 != v27);
        }

        v21 = *a3;
        *(v20 + 48) = *&(*a3)[2 * v23];
        v20 += 80;
      }

      while (v20 != v50);
    }
  }

  else if (quasar::gLogLevel >= 6)
  {
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
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v68);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, "No gender alternative spans present.", 36);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v68);
  }
}

void quasar::AlignmentProcessorBlock::handleSourceInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char **a6, _BYTE *a7)
{
  v7 = *a2;
  v8 = *(a2 + 8) - *a2;
  if (!v8)
  {
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
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v48, "AlignmentProcessorBlock::handleSourceInput() called called with empty input");
    goto LABEL_72;
  }

  if ((0xF83E0F83E0F83E1 * (v8 >> 3)) >= 2)
  {
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
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v48, "AlignmentProcessorBlock::handleSourceInput() called called with multiple inputs");
LABEL_72:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v48);
  }

  *(a4 + 8) = *a4;
  v16 = quasar::MetaInfo::get((v7 + 256));
  v17 = quasar::OptionValue<std::string>::value((a1 + 464 + *(*(a1 + 464) - 24)));
  v18 = *(v17 + 23);
  if (v18 < 0)
  {
    if (*(v17 + 8) != 7)
    {
      goto LABEL_12;
    }

    v17 = *v17;
  }

  else if (v18 != 7)
  {
    goto LABEL_12;
  }

  if (*v17 == 1634100580 && *(v17 + 3) == 1953264993)
  {
    std::string::basic_string[abi:ne200100]<0>(&v46, "alignment-queries");
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::AlignmentProcessorBlock::parseQueryRanges(v16, &v46, &v48);
  }

LABEL_12:
  v20 = quasar::OptionValue<std::string>::value((a1 + 464 + *(*(a1 + 464) - 24)));
  v21 = *(v20 + 23);
  if (v21 < 0)
  {
    if (*(v20 + 8) != 21)
    {
      goto LABEL_27;
    }

    v20 = *v20;
  }

  else if (v21 != 21)
  {
    goto LABEL_27;
  }

  if (*v20 == 0x7275746375727473 && *(v20 + 8) == 0x69646572705F6465 && *(v20 + 13) == 0x6E6F697463696465)
  {
    std::string::basic_string[abi:ne200100]<0>(&v46, "gender_alternatives.spans");
    std::string::basic_string[abi:ne200100]<0>(__p, "source.");
    quasar::AlignmentProcessorBlock::parseQueryRanges(v16, &v46, &v48);
  }

LABEL_27:
  *a7 = 0;
  if (*a4 == *(a4 + 8))
  {
    return;
  }

  quasar::TranslationPhraseInternal::extractAlignmentProjections(*a2, &v46);
  v24 = v46;
  v25 = v47;
  if (v46 != v47)
  {
    do
    {
      if (*v24 != v24[1])
      {
        *a7 = 1;
      }

      v24 += 3;
    }

    while (v24 != v25);
  }

  if (*a7)
  {
    if (a6 != a4)
    {
      std::vector<std::pair<int,int>>::__assign_with_size[abi:ne200100]<std::pair<int,int>*,std::pair<int,int>*>(a6, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
    }

    quasar::AlignmentProcessorBlock::pivotTransformQueries(a4, &v46, a5, &v48);
    v26 = *a4;
    if (*a4)
    {
      *(a4 + 8) = v26;
      operator delete(v26);
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
    }

    *a4 = v48;
    *(a4 + 16) = v49;
    quasar::TranslationPhraseInternal::convertTokensToString(&v48, *a2);
LABEL_43:
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v48;
    *(a3 + 16) = v49;
    goto LABEL_46;
  }

  v27 = *a2;
  v28 = *(*a2 + 200);
  if (*(*a2 + 208) - v28 != 136)
  {
    if (quasar::gLogLevel >= 1)
    {
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
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "For alignment mapping to work properly, ensure whole string provided as first token.", 84);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v48);
      v27 = *a2;
    }

    quasar::TranslationPhraseInternal::convertTokensToString(&v48, v27);
    goto LABEL_43;
  }

  std::string::operator=(a3, v28);
LABEL_46:
  if (*(a3 + 23) >= 0)
  {
    v29 = *(a3 + 23);
  }

  else
  {
    v29 = *(a3 + 8);
  }

  v30 = *a4;
  v31 = *(a4 + 8);
  if (*a4 != v31)
  {
    do
    {
      v32 = *v30;
      if ((*v30 & 0x80000000) != 0 || v32 >= v29)
      {
        v34 = quasar::gLogLevel;
      }

      else
      {
        v33 = *(v30 + 1);
        v34 = quasar::gLogLevel;
        if ((v33 & 0x80000000) == 0)
        {
          if (v33 < v29 || quasar::gLogLevel <= 1)
          {
            goto LABEL_62;
          }

LABEL_61:
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
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v48 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "Query range [", 13);
          v37 = MEMORY[0x1B8C84C00](v36, *v30);
          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", ", 2);
          v39 = MEMORY[0x1B8C84C00](v38, *(v30 + 1));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "] is out of bounds.", 19);
          quasar::QuasarWarnMessage::~QuasarWarnMessage(&v48);
          v32 = *v30;
          v34 = quasar::gLogLevel;
          goto LABEL_62;
        }
      }

      if (v34 >= 2)
      {
        goto LABEL_61;
      }

LABEL_62:
      if (v32 > *(v30 + 1) && v34 >= 1)
      {
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
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "Query range [", 13);
        v42 = MEMORY[0x1B8C84C00](v41, *v30);
        v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ", ", 2);
        v44 = MEMORY[0x1B8C84C00](v43, *(v30 + 1));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "] is illegal.", 13);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v48);
      }

      ++v30;
    }

    while (v30 != v31);
  }

  *&v48 = &v46;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v48);
}

void quasar::AlignmentProcessorBlock::handleSegmentEncInput(uint64_t a1, void *a2, void ***a3, void ***a4)
{
  v4 = a2[1] - *a2;
  if (!v4)
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
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "AlignmentProcessorBlock::handleSegmentEncInput() called called with empty input");
    goto LABEL_11;
  }

  if ((0xF83E0F83E0F83E1 * (v4 >> 3)) >= 2)
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
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "AlignmentProcessorBlock::handleSegmentEncInput() called called with multiple inputs");
LABEL_11:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::vector<std::string>::clear[abi:ne200100](a3);
  std::vector<std::string>::clear[abi:ne200100](a4);
  v8 = *a2;
  v9 = *(*a2 + 200);
  v10 = *(v8 + 208);
  while (v9 != v10)
  {
    std::vector<std::string>::push_back[abi:ne200100](a3, v9);
    quasar::TranslationTokenInternal::strippedText(v9, __p);
    std::vector<std::string>::push_back[abi:ne200100](a4, __p);
    if (SBYTE7(v12) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = (v9 + 136);
  }
}

void sub_1B57BBE40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::AlignmentProcessorBlock::handlePDecInput(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (a2[1] == *a2)
  {
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
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v22);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v22, "AlignmentProcessorBlock::handlePDecInput() called with empty input");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v22);
  }

  v9 = *a5;
  v10 = a5[1];
  while (v10 != v9)
  {
    v10 -= 24;
    *&v22 = v10;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  a5[1] = v9;
  v11 = *a3;
  v12 = a3[1];
  while (v12 != v11)
  {
    v12 -= 24;
    *&v22 = v12;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  a3[1] = v11;
  v13 = *a4;
  v14 = a4[1];
  while (v14 != v13)
  {
    v14 -= 24;
    *&v22 = v14;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  a4[1] = v13;
  v15 = *a2;
  v16 = a2[1];
  if (*a2 != v16)
  {
    do
    {
      v22 = 0uLL;
      *&v23 = 0;
      memset(v21, 0, sizeof(v21));
      memset(v20, 0, sizeof(v20));
      v17 = *(v15 + 200);
      v18 = *(v15 + 208);
      while (v17 != v18)
      {
        std::vector<std::vector<int>>::push_back[abi:ne200100](&v22, (v17 + 32));
        std::vector<std::string>::push_back[abi:ne200100](v21, v17);
        quasar::TranslationTokenInternal::strippedText(v17, &__p);
        std::vector<std::string>::push_back[abi:ne200100](v20, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v17 += 136;
      }

      std::vector<std::vector<std::vector<int>>>::push_back[abi:ne200100](a5, &v22);
      std::vector<std::vector<std::string>>::push_back[abi:ne200100](a3, v21);
      std::vector<std::vector<std::string>>::push_back[abi:ne200100](a4, v20);
      __p.__r_.__value_.__r.__words[0] = v20;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      v20[0] = v21;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v20);
      v21[0] = &v22;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v21);
      v15 += 264;
    }

    while (v15 != v16);
  }
}

void sub_1B57BC05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char ***__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char **a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, char a22)
{
  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  a19 = &a22;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<std::vector<int>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::vector<int>>>::__emplace_back_slow_path<std::vector<std::vector<int>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::vector<int>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<int>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void quasar::AlignmentProcessorBlock::handleSegmentDecInput(int a1, uint64_t a2, uint64_t *a3, void ***a4)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v6 == v5)
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
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "AlignmentProcessorBlock::handleSegmentDecInput() called with empty input");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  if (a3 != a2)
  {
    std::vector<quasar::TranslationPhraseInternal>::__assign_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(a3, v5, v6, 0xF83E0F83E0F83E1 * ((v6 - v5) >> 3));
  }

  std::vector<std::string>::clear[abi:ne200100](a4);
  v9 = *a2;
  v10 = *(a2 + 8);
  while (v9 != v10)
  {
    quasar::TranslationPhraseInternal::convertTokensToString(__p, v9);
    std::vector<std::string>::push_back[abi:ne200100](a4, __p);
    if (SBYTE7(v12) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = (v9 + 264);
  }
}

void sub_1B57BC200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::AlignmentProcessorBlock::handleTokenizedInput(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4 == *a2)
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
    v11 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v11, "AlignmentProcessorBlock::handleTokenizedInput() called with empty input");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v11);
  }

  v6 = *a3;
  v7 = a3[1];
  if (v7 != *a3)
  {
    do
    {
      v7 -= 24;
      *&v11 = v7;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
    }

    while (v7 != v6);
    v3 = *a2;
    v4 = a2[1];
  }

  for (a3[1] = v6; v3 != v4; v3 += 264)
  {
    v11 = 0uLL;
    *&v12 = 0;
    v9 = *(v3 + 200);
    v10 = *(v3 + 208);
    while (v9 != v10)
    {
      std::vector<std::string>::push_back[abi:ne200100](&v11, v9);
      v9 = (v9 + 136);
    }

    std::vector<std::vector<std::string>>::push_back[abi:ne200100](a3, &v11);
    v28 = &v11;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  }
}

void sub_1B57BC348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 72) = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v9 - 72));
  _Unwind_Resume(a1);
}

void quasar::AlignmentProcessorBlock::processBody(quasar::AlignmentProcessorBlock *this)
{
  v93[0] = 0;
  v93[1] = 0;
  v94 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  memset(v86, 0, sizeof(v86));
  v83 = 0;
  v84 = 0;
  v85 = 0;
  memset(v82, 0, sizeof(v82));
  v79 = 0;
  v80 = 0;
  v81 = 0;
  memset(v78, 0, sizeof(v78));
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  memset(v71, 0, sizeof(v71));
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  Value = quasar::ProcessingInput::getValue((this + 640));
  v64 = 0;
  quasar::AlignmentProcessorBlock::handleSourceInput(this, Value, v93, &v90, v71, &v68, &v64);
  v5 = quasar::ProcessingInput::getValue((this + 696));
  quasar::AlignmentProcessorBlock::handleSegmentEncInput(v5, v5, &v87, v86);
  v6 = quasar::ProcessingInput::getValue((this + 752));
  quasar::AlignmentProcessorBlock::handlePDecInput(v6, v6, &v83, v82, &v79);
  v7 = quasar::ProcessingInput::getValue((this + 808));
  quasar::AlignmentProcessorBlock::handleSegmentDecInput(v7, v7, v78, &v75);
  if (*quasar::OptionValue<BOOL>::value(this + 22) == 1)
  {
    v8 = quasar::ProcessingInput::getValue((this + 864));
    quasar::AlignmentProcessorBlock::handleTokenizedInput(v8, v8, &v72);
  }

  if (v76 - v75 != v84 - v83)
  {
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v97);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v97, "size of n-best list from segment-decoder and PDec-translator are different", 74);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v97);
  }

  v10 = v79;
  v9 = v80;
  if (v80 != v79)
  {
    v2 = 0;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v88 - v87) >> 3);
    do
    {
      v12 = (v10 + 24 * v2);
      v13 = *v12;
      v14 = v12[1];
      if (*v12 != v14)
      {
        do
        {
          v1 = *v13;
          v15 = v13[1];
          if (*v13 != v15)
          {
            while (1)
            {
              v16 = *v1;
              if ((v16 & 0x80000000) != 0 || v11 <= v16)
              {
                break;
              }

              v1 += 4;
              if (v1 == v15)
              {
                goto LABEL_21;
              }
            }

            if (v1 != v15)
            {
              for (i = (v1 + 4); i != v15; ++i)
              {
                v18 = *i;
                if ((v18 & 0x80000000) == 0 && v11 > v18)
                {
                  *v1 = v18;
                  v1 += 4;
                }
              }
            }
          }

          if (v1 != v15)
          {
            v13[1] = v1;
          }

LABEL_21:
          v13 += 3;
        }

        while (v13 != v14);
        v10 = v79;
        v9 = v80;
      }

      ++v2;
    }

    while (v2 < 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3));
  }

  if (v90 != v91)
  {
    v62[0] = 0;
    v62[1] = 0;
    v63 = 0;
    v19 = (this + 24);
    if (*quasar::OptionValue<BOOL>::value((this + *(*(this + 3) - 24) + 24)) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, " ");
      quasar::splitStringSimple(v93, __p, &v97);
    }

    if (*quasar::OptionValue<BOOL>::value(this + 40) == 1)
    {
      v20 = quasar::OptionValue<BOOL>::value(this + 40);
      quasar::AlignmentProcessorBlock::computeTokenCharMapping(v93, v86, *v20, &v97);
    }

    else
    {
      v21 = quasar::OptionValue<BOOL>::value(this + 40);
      quasar::AlignmentProcessorBlock::computeTokenCharMapping(v93, &v87, *v21, &v97);
    }

    *v62 = v97;
    v63 = v98;
    v22 = v97;
    if (v76 != v75)
    {
      v23 = 0;
      while (1)
      {
        if (*quasar::OptionValue<BOOL>::value((v19 + *(*v19 - 24))) == 1)
        {
          quasar::AlignmentProcessorBlock::computeWordLevelAlignments(&v87, (v83 + 24 * v23), (v79 + 24 * v23), &v97);
          v24 = (v79 + 24 * v23);
          std::vector<std::vector<int>>::__vdeallocate(v24);
          *v24 = v97;
          v24[2] = v98;
          v97 = 0uLL;
          *&v98 = 0;
          __p[0] = &v97;
          std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](__p);
        }

        quasar::AlignmentProcessorBlock::computeRangeProjections(&v90, (v79 + 24 * v23), v62, &v60);
        v58 = 0uLL;
        v59 = 0;
        if (*quasar::OptionValue<BOOL>::value((v19 + *(*v19 - 24))) == 1)
        {
          v25 = v75;
          std::string::basic_string[abi:ne200100]<0>(__p, " ");
          quasar::splitStringSimple(&v25[3 * v23], __p, &v97);
        }

        if (*quasar::OptionValue<BOOL>::value(this + 40) == 1)
        {
          quasar::AlignmentProcessorBlock::computeTokenCharMapping(&v75[3 * v23], (v82[0] + 24 * v23), 0, &v97);
        }

        else
        {
          quasar::AlignmentProcessorBlock::computeTokenCharMapping(&v75[3 * v23], (v83 + 24 * v23), 0, &v97);
        }

        v58 = v97;
        v59 = v98;
        v26 = v97;
        v28 = *(&v60 + 1);
        for (j = v60; j != v28; j += 24)
        {
          quasar::AlignmentProcessorBlock::computeCharLevelSpans(j, &v58, &v97);
          v29 = *j;
          if (*j)
          {
            *(j + 8) = v29;
            operator delete(v29);
            *j = 0;
            *(j + 8) = 0;
            *(j + 16) = 0;
          }

          *j = v97;
          *(j + 16) = v98;
        }

        v30 = quasar::OptionValue<std::string>::value((this + *(*(this + 58) - 24) + 464));
        v31 = *(v30 + 23);
        if (v31 < 0)
        {
          if (*(v30 + 8) == 21)
          {
            v30 = *v30;
LABEL_49:
            if (*v30 == 0x7275746375727473 && *(v30 + 8) == 0x69646572705F6465 && *(v30 + 13) == 0x6E6F697463696465)
            {
              goto LABEL_74;
            }
          }
        }

        else if (v31 == 21)
        {
          goto LABEL_49;
        }

        v34 = &v75[3 * v23];
        v35 = *(v34 + 23);
        if ((v35 & 0x8000000000000000) != 0)
        {
          v34 = *v34;
          v35 = v75[3 * v23 + 1];
        }

        quasar::utf8::codepointsCtr(v34, v35, 0, v35, __p);
        if (v57 == 1)
        {
          v2 = v2 & 0xFFFFFFFF00000000 | LODWORD(__p[0]);
        }

        else
        {
          *v95 = *__p;
          v96 = v56;
          __p[0] = 0;
          __p[1] = 0;
          v56 = 0;
          if (quasar::gLogLevel >= 1)
          {
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v97 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v97);
            if (v96 >= 0)
            {
              v36 = v95;
            }

            else
            {
              v36 = v95[0];
            }

            if (v96 >= 0)
            {
              v37 = HIBYTE(v96);
            }

            else
            {
              v37 = v95[1];
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v97, v36, v37);
            quasar::QuasarErrorMessage::~QuasarErrorMessage(&v97);
          }

          if (SHIBYTE(v96) < 0)
          {
            operator delete(v95[0]);
          }

          v2 &= 0xFFFFFFFF00000000;
          if ((v57 & 1) == 0 && SHIBYTE(v56) < 0)
          {
            operator delete(__p[0]);
          }
        }

        quasar::AlignmentProcessorBlock::alignUnalignedChars(&v60, v2);
LABEL_74:
        if (*quasar::OptionValue<BOOL>::value(this + 22) == 1)
        {
          if (v76 - v75 != v73 - v72)
          {
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v97 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v97);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v97, "Tokenizer did not return same number of phrases as the Translator.", 66);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v97);
          }

          v38 = &v75[3 * v23];
          v39 = *(v38 + 23);
          if ((v39 & 0x8000000000000000) != 0)
          {
            v38 = *v38;
            v39 = v75[3 * v23 + 1];
          }

          quasar::utf8::codepointsCtr(v38, v39, 0, v39, __p);
          if (v57 == 1)
          {
            v1 = v1 & 0xFFFFFFFF00000000 | LODWORD(__p[0]);
          }

          else
          {
            *v95 = *__p;
            v96 = v56;
            __p[0] = 0;
            __p[1] = 0;
            v56 = 0;
            if (quasar::gLogLevel >= 1)
            {
              v112 = 0u;
              v113 = 0u;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v98 = 0u;
              v99 = 0u;
              v97 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v97);
              if (v96 >= 0)
              {
                v40 = v95;
              }

              else
              {
                v40 = v95[0];
              }

              if (v96 >= 0)
              {
                v41 = HIBYTE(v96);
              }

              else
              {
                v41 = v95[1];
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v97, v40, v41);
              quasar::QuasarErrorMessage::~QuasarErrorMessage(&v97);
            }

            if (SHIBYTE(v96) < 0)
            {
              operator delete(v95[0]);
            }

            v1 &= 0xFFFFFFFF00000000;
            if ((v57 & 1) == 0 && SHIBYTE(v56) < 0)
            {
              operator delete(__p[0]);
            }
          }

          v42 = v75;
          v43 = v72;
          v44 = quasar::OptionValue<BOOL>::value(this + 40);
          quasar::AlignmentProcessorBlock::computeTokenCharMapping(&v42[3 * v23], (v43 + 24 * v23), *v44, __p);
          quasar::AlignmentProcessorBlock::avoidCrossingWords(&v60, __p, v1, &v97);
          std::vector<std::vector<int>>::__vdeallocate(&v60);
          v60 = v97;
          v61 = v98;
          *&v98 = 0;
          v97 = 0uLL;
          v95[0] = &v97;
          std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v95);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        v46 = *(&v60 + 1);
        for (k = v60; k != v46; k += 3)
        {
          quasar::AlignmentProcessorBlock::mergeContinuousRanges(k, &v97);
          v47 = *k;
          if (*k)
          {
            k[1] = v47;
            operator delete(v47);
            *k = 0;
            k[1] = 0;
            k[2] = 0;
          }

          *k = v97;
          k[2] = v98;
        }

        if (v64)
        {
          quasar::AlignmentProcessorBlock::stitchPivotQueries(&v60, v71, &v97);
          std::vector<std::vector<int>>::__vdeallocate(&v60);
          v60 = v97;
          v61 = v98;
          *&v98 = 0;
          v97 = 0uLL;
          __p[0] = &v97;
          std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](__p);
          v48 = v65;
          if (v65 != v66)
          {
            v49 = v68;
            if (v66 - v65 == v69 - v68)
            {
              while (*v48 == *v49 && *(v48 + 1) == v49[1])
              {
                v48 += 8;
                v49 += 2;
                if (v48 == v66)
                {
                  goto LABEL_109;
                }
              }
            }

            if (quasar::gLogLevel >= 5)
            {
              goto LABEL_122;
            }

            goto LABEL_123;
          }

LABEL_109:
          v51 = &v68;
        }

        else
        {
          v52 = v65;
          if (v65 != v66)
          {
            v53 = v90;
            if (v66 - v65 == v91 - v90)
            {
              while (*v52 == *v53 && *(v52 + 1) == v53[1])
              {
                v52 += 8;
                v53 += 2;
                if (v52 == v66)
                {
                  goto LABEL_118;
                }
              }
            }

            if (quasar::gLogLevel >= 5)
            {
LABEL_122:
              v112 = 0u;
              v113 = 0u;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v98 = 0u;
              v99 = 0u;
              v97 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v97);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v97, "resetting original query ranges from alignment-span-info", 56);
              quasar::QuasarDebugMessage::~QuasarDebugMessage(&v97);
            }

LABEL_123:
            v51 = &v65;
            goto LABEL_124;
          }

LABEL_118:
          v51 = &v90;
        }

LABEL_124:
        quasar::AlignmentProcessorBlock::writeResult(this, &v60, v51, v78[0] + 264 * v23);
        if (v26)
        {
          operator delete(v26);
        }

        *&v97 = &v60;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v97);
        if (++v23 >= 0xAAAAAAAAAAAAAAABLL * (v76 - v75))
        {
          v22 = v62[0];
          break;
        }
      }
    }

    if (v22)
    {
      v62[1] = v22;
      operator delete(v22);
    }
  }

  quasar::ProcessingBlock::send(this + *(*this - 24), v78, 0);
  if (v65)
  {
    operator delete(v65);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  *&v97 = v71;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v97);
  *&v97 = &v72;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v97);
  *&v97 = &v75;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v97);
  *&v97 = v78;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v97);
  *&v97 = &v79;
  std::vector<std::vector<std::vector<unsigned long>>>::__destroy_vector::operator()[abi:ne200100](&v97);
  *&v97 = v82;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v97);
  *&v97 = &v83;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v97);
  *&v97 = v86;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v97);
  *&v97 = &v87;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v97);
  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (SHIBYTE(v94) < 0)
  {
    operator delete(v93[0]);
  }
}

void sub_1B57BD094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&STACK[0x200]);
  if (a73 < 0)
  {
    operator delete(__p);
  }

  if ((a19 & 1) == 0 && a18 < 0)
  {
    operator delete(a13);
  }

  JUMPOUT(0x1B57BD184);
}

void sub_1B57BD160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &STACK[0x200];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  JUMPOUT(0x1B57BD194);
}

void sub_1B57BD180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (v71)
  {
    a18 = v71;
    operator delete(v71);
  }

  a13 = &a21;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  a13 = &a36;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = &a39;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = &a42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = &a45;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = &a48;
  std::vector<std::vector<std::vector<unsigned long>>>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = &a51;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = &a54;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = &a57;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = &a60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (a63)
  {
    a64 = a63;
    operator delete(a63);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  _Unwind_Resume(a1);
}

void quasar::ConfiguredProcessingBlock<quasar::AlignmentProcessorOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
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

void sub_1B57BD378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
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

void quasar::AlignmentProcessorBlock::~AlignmentProcessorBlock(quasar::AlignmentProcessorBlock *this)
{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 920));
}

{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 920));

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::AlignmentProcessorBlock::inputs@<X0>(quasar::AlignmentProcessorBlock *this@<X0>, void *a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*quasar::OptionValue<BOOL>::value(this + 22) == 1)
  {
    v8 = this + 640;
    v9 = this + 696;
    v10 = this + 752;
    v11 = this + 808;
    v12 = this + 864;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v4 = &v13;
    v5 = a2;
    v6 = 5;
  }

  else
  {
    v8 = this + 640;
    v9 = this + 696;
    v10 = this + 752;
    v11 = this + 808;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v4 = &v12;
    v5 = a2;
    v6 = 4;
  }

  return std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(v5, &v8, v4, v6);
}

void non-virtual thunk toquasar::AlignmentProcessorBlock::~AlignmentProcessorBlock(char **this)
{

  quasar::ProcessingBlock::~ProcessingBlock(this + 36);
}

{
  quasar::ProcessingBlock::~ProcessingBlock(this + 36);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::AlignmentProcessorBlock::~AlignmentProcessorBlock(quasar::AlignmentProcessorBlock *this)
{
  v2 = (v1 + 920);

  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  v1 = (this + *(*this - 24));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 115);

  JUMPOUT(0x1B8C85350);
}

void quasar::AlignmentProcessorBlock::~AlignmentProcessorBlock(quasar::AlignmentProcessorBlock *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[5];
  *(this + 79) = a2[6];
  v6 = (this + 896);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(this + 887) < 0)
  {
    operator delete(*(this + 108));
  }

  v6 = (this + 840);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(this + 831) < 0)
  {
    operator delete(*(this + 101));
  }

  v6 = (this + 784);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(this + 775) < 0)
  {
    operator delete(*(this + 94));
  }

  v6 = (this + 728);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(this + 719) < 0)
  {
    operator delete(*(this + 87));
  }

  v6 = (this + 672);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(this + 663) < 0)
  {
    operator delete(*(this + 80));
  }

  v5 = a2[1];
  *this = v5;
  *(this + *(v5 - 24)) = a2[2];
  quasar::AlignmentProcessorOptions::~AlignmentProcessorOptions((this + 8));
}

uint64_t *std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

size_t *std::vector<std::vector<std::pair<int,int>>>::__append(size_t *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = &v7[3 * a2];
      v13 = 24 * a2;
      do
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        result = std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int>*,std::pair<int,int>*>(v7, *a3, a3[1], (a3[1] - *a3) >> 3);
        v7 += 3;
        v13 -= 24;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
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

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, v11);
    }

    v18 = 0;
    v19 = 24 * v8;
    v20 = 24 * v8;
    std::__split_buffer<std::vector<std::pair<int,int>>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1] - *v5;
    v15 = v19 - v14;
    memcpy((v19 - v14), *v5, v14);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<std::vector<int>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_1B57BDB2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<std::pair<int,int>>>::__construct_at_end(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = &v4[3 * a2];
    v7 = 24 * a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int>*,std::pair<int,int>*>(v4, *a3, a3[1], (a3[1] - *a3) >> 3);
      v4 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t std::vector<std::vector<std::pair<int,int>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,int>>*,std::vector<std::pair<int,int>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B57BDC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::pair<int,int>>>,std::vector<std::pair<int,int>>*,std::vector<std::pair<int,int>>*,std::vector<std::pair<int,int>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int>*,std::pair<int,int>*>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::pair<int,int>>>,std::vector<std::pair<int,int>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::pair<int,int>>>,std::vector<std::pair<int,int>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::vector<std::vector<std::pair<int,int>>>::vector[abi:ne200100](void *result, unint64_t a2)
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

uint64_t std::vector<std::vector<std::vector<int>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<int>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

void sub_1B57BE234(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B57BFAC4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void quasar::truncateUtf8(std::string *__str@<X0>, unsigned int a2@<W1>, std::string *a3@<X8>)
{
  if ((a2 & 0x80000000) != 0)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "Logic error: truncateUtf8 called with negative length (should not happen)");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
  }

  v3 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v3 < 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size <= a2)
    {
      v7 = __str->__r_.__value_.__r.__words[0];

      std::string::__init_copy_ctor_external(a3, v7, size);
      return;
    }
  }

  else if (v3 <= a2)
  {
    *a3 = *__str;
    return;
  }

  if (v3 >= 0)
  {
    v5 = __str;
  }

  else
  {
    v5 = __str->__r_.__value_.__r.__words[0];
  }

  while ((v5->__r_.__value_.__s.__data_[a2] & 0xC0) == 0x80)
  {
    if (a2-- <= 0)
    {
      a2 = -1;
      break;
    }
  }

  std::string::basic_string(a3, __str, 0, a2, v8);
}

_BYTE *quasar::getOverridesFromTranslationOptions@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*result == 1)
  {
    result = std::vector<std::string>::__emplace_back_slow_path<char const* const&>(a2, quasar::CONFIG_OVERRIDE_ENABLE_DISAMBIGUATION_ALTERNATIVES);
    v4 = result;
    a2[1] = result;
  }

  if (v2[1] == 1)
  {
    if (v4 >= a2[2])
    {
      result = std::vector<std::string>::__emplace_back_slow_path<char const* const&>(a2, quasar::CONFIG_OVERRIDE_ENABLE_PROFANITY_FILTER);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v4, "enable-profanity-filter");
      result = v4 + 24;
    }

    a2[1] = result;
  }

  return result;
}

void sub_1B57C0598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void quasar::PDecTranslator::getTranslatorOptions(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = std::string::basic_string[abi:ne200100]<0>(&v52, quasar::MT_DECODERS_SECTION);
  v7 = std::string::append(v6, ".");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
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

  v12 = std::string::append(&v51, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  *&v35 = *(&v12->__r_.__value_.__l + 2);
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  Ptree = quasar::SystemConfig::getPtree(a1, __p);
  if (SBYTE7(v35) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  memset(&v51, 0, sizeof(v51));
  if (*(a3 + 23) >= 0)
  {
    v14 = *(a3 + 23);
  }

  else
  {
    v14 = a3[1];
  }

  if (!v14)
  {
    goto LABEL_37;
  }

  v15 = *(a4 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a4 + 8);
  }

  if (v15)
  {
    std::string::basic_string[abi:ne200100](__p, v14 + 1);
    if ((SBYTE7(v35) & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    memmove(v16, v17, v14);
    *(v16 + v14) = 45;
    v18 = *(a4 + 23);
    if (v18 >= 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = *a4;
    }

    if (v18 >= 0)
    {
      v20 = *(a4 + 23);
    }

    else
    {
      v20 = *(a4 + 8);
    }

    v21 = std::string::append(__p, v19, v20);
    v22 = v21->__r_.__value_.__r.__words[0];
    v52.__r_.__value_.__r.__words[0] = v21->__r_.__value_.__l.__size_;
    *(v52.__r_.__value_.__r.__words + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
    v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    v51.__r_.__value_.__r.__words[0] = v22;
    v51.__r_.__value_.__l.__size_ = v52.__r_.__value_.__r.__words[0];
    *(&v51.__r_.__value_.__r.__words[1] + 7) = *(v52.__r_.__value_.__r.__words + 7);
    *(&v51.__r_.__value_.__s + 23) = v23;
    if (SBYTE7(v35) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
LABEL_37:
    MEMORY[0x1B8C84820](&v51, "");
    if (quasar::gLogLevel >= 5)
    {
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
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "missing source or target locale, skipping parsing language-pair-specific-settings", 81);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v33, quasar::LANGUAGE_PAIR_SPECIFIC_SETTINGS_SECTION);
  v24 = std::string::append(&v33, ".");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
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

  v28 = std::string::append(&v52, v26, size);
  v29 = *&v28->__r_.__value_.__l.__data_;
  *&v35 = *(&v28->__r_.__value_.__l + 2);
  *__p = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  quasar::PTree::getChildOptional(Ptree, __p);
}

void sub_1B57C1B64(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::PDecTranslator::PDecCompilationContext::compile(quasar::PDecTranslator::PDecCompilationContext *this)
{
  if (quasar::gLogLevel >= 5)
  {
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
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Starting background compilation for MT models...", 48);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v13);
  }

  v2 = *(this + 1);
  v3 = this + 16;
  v4 = 1;
  if (v2 != v3)
  {
    do
    {
      v5 = (*(**(v2 + 4) + 16))(*(v2 + 4));
      v6 = *(v2 + 1);
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
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v4 = v4 & v5;
      v2 = v7;
    }

    while (v7 != v3);
  }

  if (quasar::gLogLevel > 4)
  {
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
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Finished background compilation of MT models, status: ", 54);
    if (v4)
    {
      v10 = "Ok";
    }

    else
    {
      v10 = "Failure!";
    }

    if (v4)
    {
      v11 = 2;
    }

    else
    {
      v11 = 8;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v13);
  }

  return v4;
}

uint64_t quasar::PDecTranslator::PDecCompilationContext::isCompileRequired(quasar::PDecTranslator::PDecCompilationContext *this)
{
  if (quasar::gLogLevel >= 5)
  {
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
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Checking if background compilation for MT models is needed...", 61);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v13);
  }

  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 == this + 16)
  {
    v5 = 0;
  }

  else
  {
    while (1)
    {
      v4 = (*(**(v2 + 4) + 24))(*(v2 + 4));
      if (v4)
      {
        break;
      }

      v5 = v4;
      v6 = *(v2 + 1);
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
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
      if (v7 == v3)
      {
        goto LABEL_14;
      }
    }

    v5 = 1;
  }

LABEL_14:
  if (quasar::gLogLevel >= 5)
  {
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
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Finished checking background compilation status of MT models: Compilation ", 74);
    if (v5)
    {
      v10 = "needed!";
    }

    else
    {
      v10 = "not needed";
    }

    if (v5)
    {
      v11 = 7;
    }

    else
    {
      v11 = 10;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v13);
  }

  return v5;
}

uint64_t quasar::PDecTranslator::PDecCompilationContext::purgeCompiledModels(quasar::PDecTranslator::PDecCompilationContext *this)
{
  if (quasar::gLogLevel >= 5)
  {
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
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Starting purging of compiled MT models...", 41);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v13);
  }

  v2 = *(this + 1);
  v3 = this + 16;
  v4 = 1;
  if (v2 != v3)
  {
    do
    {
      v5 = (*(**(v2 + 4) + 32))(*(v2 + 4));
      v6 = *(v2 + 1);
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
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v4 = v4 & v5;
      v2 = v7;
    }

    while (v7 != v3);
  }

  if (quasar::gLogLevel > 4)
  {
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
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Finished purging compiled MT models, status: ", 45);
    if (v4)
    {
      v10 = "Ok";
    }

    else
    {
      v10 = "Failure!";
    }

    if (v4)
    {
      v11 = 2;
    }

    else
    {
      v11 = 8;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v13);
  }

  return v4;
}

uint64_t std::set<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,std::__tree_node<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::__emplace_hint_unique_key_args<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec> const&>(v5, v5 + 1, v4 + 4);
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

uint64_t quasar::PDecTranslator::PDecCompilationContext::combine(uint64_t a1, void *lpsrc)
{
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = quasar::gLogLevel < 1;
  }

  if (!v4)
  {
    memset(v6, 0, sizeof(v6));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Compilation contexts only implemented for PDecTranslator!", 57);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v6);
  }

  return std::set<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,std::__tree_node<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,void *> *,long>>(a1 + 8, v3[1], v3 + 2);
}

void quasar::PDecTranslator::getLanguageMapping(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(&v38, quasar::MT_DECODERS_SECTION);
  v8 = std::string::append(&v38, ".");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = std::string::append(&v39, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v40, ".");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v41, quasar::LANGUAGE_PAIR_SPECIFIC_SETTINGS_SECTION);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v42, ".");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 8);
  }

  v24 = std::string::append(&v43, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v44, "-");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = *(a4 + 23);
  if (v28 >= 0)
  {
    v29 = a4;
  }

  else
  {
    v29 = *a4;
  }

  if (v28 >= 0)
  {
    v30 = *(a4 + 23);
  }

  else
  {
    v30 = *(a4 + 8);
  }

  v31 = std::string::append(&v45, v29, v30);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v33 = std::string::append(&v35, ".graph");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v37 = v33->__r_.__value_.__r.__words[2];
  *__p = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  quasar::SystemConfig::getPtreeOptional(a1, __p);
}

void sub_1B57C3064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (*(v56 - 89) < 0)
  {
    operator delete(*(v56 - 112));
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v56 - 121) < 0)
  {
    operator delete(*(v56 - 144));
  }

  _Unwind_Resume(exception_object);
}

void quasar::PDecTranslator::createGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(&v40, quasar::MT_DECODERS_SECTION);
  v7 = std::string::append(&v40, ".");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  v12 = std::string::append(&v41, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v42, ".");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v43, quasar::LANGUAGE_PAIR_SPECIFIC_SETTINGS_SECTION);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v44, ".");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
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

  v23 = std::string::append(&v45, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = std::string::append(&v46, "-");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = *(a5 + 23);
  if (v27 >= 0)
  {
    v28 = a5;
  }

  else
  {
    v28 = *a5;
  }

  if (v27 >= 0)
  {
    v29 = *(a5 + 23);
  }

  else
  {
    v29 = *(a5 + 8);
  }

  v30 = std::string::append(&v47, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v48, ".");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v38, quasar::GRAPH_SECTION);
  v35 = *&v34->__r_.__value_.__l.__data_;
  __p[2] = v34->__r_.__value_.__r.__words[2];
  *__p = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  quasar::SystemConfig::getPtreeOptional(a2, __p);
}

void sub_1B57C7784(_Unwind_Exception *a1)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&STACK[0x230]);
  if (*(v2 - 177) < 0)
  {
    operator delete(*(v2 - 200));
  }

  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_1B57C7798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (*(v73 - 153) < 0)
  {
    operator delete(*(v73 - 176));
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (*(v73 - 177) < 0)
  {
    operator delete(*(v73 - 200));
  }

  (*(*a19 + 8))(a19);
  _Unwind_Resume(a1);
}

void sub_1B57C7824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (*(v74 - 153) < 0)
  {
    operator delete(*(v74 - 176));
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (*(v74 - 177) < 0)
  {
    operator delete(*(v74 - 200));
  }

  (*(*v73 + 8))(v73);
  _Unwind_Resume(a1);
}

void sub_1B57C78A0(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (*(v2 - 177) < 0)
  {
    operator delete(*(v2 - 200));
  }

  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_1B57C78B8()
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (*(v0 - 153) < 0)
  {
    JUMPOUT(0x1B57C8068);
  }

  JUMPOUT(0x1B57C806CLL);
}

void sub_1B57C78F4(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (*(v2 - 153) < 0)
  {
    operator delete(*(v2 - 176));
  }

  if (*(v2 - 177) < 0)
  {
    operator delete(*(v2 - 200));
  }

  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_1B57C7920(_Unwind_Exception *a1)
{
  if (*(v2 - 177) < 0)
  {
    operator delete(*(v2 - 200));
  }

  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_1B57C794C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (LOBYTE(STACK[0x248]) == 1 && SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  if (*(v72 - 153) < 0)
  {
    operator delete(*(v72 - 176));
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a72);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    JUMPOUT(0x1B57C8078);
  }

  if (*(v72 - 177) < 0)
  {
    operator delete(*(v72 - 200));
  }

  (*(*a19 + 8))(a19);
  _Unwind_Resume(a1);
}

uint64_t quasar::PDecTranslator::IsLanguagePairSupported(quasar::SystemConfig *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TranslationModelInfo = quasar::SystemConfig::getTranslationModelInfo(a1);
  v8 = TranslationModelInfo;
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (!v9)
  {
    v28 = *(a3 + 23);
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(a3 + 8);
    }

    if (v28)
    {
      v29 = *(a4 + 23);
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(a4 + 8);
      }

      if (v29)
      {
        v30 = *(TranslationModelInfo + 48);
        v31 = *(TranslationModelInfo + 56);
        std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(&v45, a3, a4);
        if (v30 == v31)
        {
          v34 = v48;
        }

        else
        {
          v32 = (v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v45.__r_.__value_.__r.__words[2]) : v45.__r_.__value_.__l.__size_;
          v33 = (v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v45 : v45.__r_.__value_.__r.__words[0];
          v34 = v48;
          v35 = (v48 & 0x80u) == 0 ? v48 : v47;
          v36 = (v48 & 0x80u) == 0 ? &__p : __p;
          while (1)
          {
            v37 = *(v30 + 23);
            v38 = v37;
            if ((v37 & 0x80u) != 0)
            {
              v37 = *(v30 + 8);
            }

            if (v37 == v32)
            {
              v39 = v38 >= 0 ? v30 : *v30;
              if (!memcmp(v39, v33, v32))
              {
                v40 = *(v30 + 47);
                v41 = v40;
                if ((v40 & 0x80u) != 0)
                {
                  v40 = *(v30 + 32);
                }

                if (v40 == v35)
                {
                  v42 = v41 >= 0 ? (v30 + 24) : *(v30 + 24);
                  if (!memcmp(v42, v36, v35))
                  {
                    break;
                  }
                }
              }
            }

            v30 += 48;
            if (v30 == v31)
            {
              v30 = v31;
              break;
            }
          }
        }

        v43 = *(v8 + 56);
        if ((v34 & 0x80) != 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        if (v30 == v43)
        {
          return 0;
        }
      }
    }

    return 1;
  }

  if ((TranslationModelInfo + 32) != std::__find[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity>(*(TranslationModelInfo + 24), (TranslationModelInfo + 32), a2))
  {
    v10 = *(a3 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 8);
    }

    if (!v10)
    {
      return 1;
    }

    v11 = *(a4 + 23);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a4 + 8);
    }

    if (!v11)
    {
      return 1;
    }

    v12 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((v8 + 72), a2);
    if (!v12 || (v13 = v12[5], (v14 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((v8 + 72), a2)) == 0))
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v15 = v14[6];
    std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(&v45, a3, a4);
    if (v13 != v15)
    {
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v45.__r_.__value_.__l.__size_;
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v45;
      }

      else
      {
        v17 = v45.__r_.__value_.__r.__words[0];
      }

      if ((v48 & 0x80u) == 0)
      {
        v18 = v48;
      }

      else
      {
        v18 = v47;
      }

      if ((v48 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      while (1)
      {
        v20 = *(v13 + 23);
        v21 = v20;
        if ((v20 & 0x80u) != 0)
        {
          v20 = v13[1];
        }

        if (v20 == size)
        {
          v22 = v21 >= 0 ? v13 : *v13;
          if (!memcmp(v22, v17, size))
          {
            v23 = *(v13 + 47);
            v24 = v23;
            if ((v23 & 0x80u) != 0)
            {
              v23 = v13[4];
            }

            if (v23 == v18)
            {
              v25 = v24 >= 0 ? (v13 + 3) : v13[3];
              if (!memcmp(v25, p_p, v18))
              {
                break;
              }
            }
          }
        }

        v13 += 6;
        if (v13 == v15)
        {
          v13 = v15;
          break;
        }
      }
    }

    v26 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((v8 + 72), a2);
    if (!v26)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v27 = v26[6];
    if (v48 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (v13 != v27)
    {
      return 1;
    }
  }

  return 0;
}

void quasar::PDecTranslator::PDecTranslator(uint64_t a1)
{
  *a1 = &unk_1F2D313B0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x7FFFFFFF;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0;
  operator new();
}

{
  quasar::PDecTranslator::PDecTranslator(a1);
}

void sub_1B57C887C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v25 = *(v22 + 168);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (*(v22 + 159) < 0)
  {
    operator delete(*v23);
  }

  if (*(v22 + 135) < 0)
  {
    operator delete(*(v22 + 112));
  }

  if (*(v22 + 111) < 0)
  {
    operator delete(*a11);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a13);
  if (*(v22 + 47) < 0)
  {
    operator delete(*a12);
  }

  v26 = *(v22 + 8);
  *(v22 + 8) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  quasar::Bitmap::~Bitmap(v22);
  _Unwind_Resume(a1);
}

void quasar::PDecTranslator::translate(uint64_t a1, const std::string **a2, uint64_t a3, uint64_t a4, char a5)
{
  quasar::TranslationPhraseInternal::TranslationPhraseInternal(v21);
  v21[144] = a5;
  v7 = *a2;
  for (i = a2[1]; v7 != i; ++v7)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    memset(&v9, 0, sizeof(v9));
    v10 = 0;
    v14 = 3212836864;
    v15 = -1;
    v16 = 0u;
    v17 = 0u;
    __p = 0u;
    v19 = 0;
    v20 = -1;
    std::string::operator=(&v9, v7);
    LOBYTE(v10) = 1;
    std::vector<quasar::TranslationTokenInternal>::push_back[abi:ne200100](&v22, &v9);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (SBYTE7(v17) < 0)
    {
      operator delete(v16);
    }

    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  if (v22 != v23)
  {
    *(v23 - 112) = 0;
  }

  quasar::PDecTranslator::translate();
}

void quasar::PDecTranslator::translate()
{
  v4 = *MEMORY[0x1E69E9840];
  std::chrono::steady_clock::now();
  v2 = 0;
  v3 = 0;
  *buf = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(buf);
  v2 = boost::uuids::random_generator_pure::operator()(buf);
  v3 = v0;
  boost::uuids::detail::random_provider_base::destroy(buf);
  operator new();
}

void sub_1B57CB344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::PDecTranslator::translate(uint64_t a1, const quasar::TranslationPhrase *a2)
{
  quasar::TranslationPhrase::TranslationPhrase(v2, a2);
  quasar::TranslationPhraseInternal::TranslationPhraseInternal(v3, v2);
  quasar::PDecTranslator::translate();
}

void sub_1B57CB794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  quasar::TranslationPhraseInternal::~TranslationPhraseInternal(&a35);
  quasar::TranslationPhrase::~TranslationPhrase(&a10);
  _Unwind_Resume(a1);
}

uint64_t boost::uuids::random_generator_pure::operator()(uint64_t a1)
{
  v2[2] = *MEMORY[0x1E69E9840];
  boost::uuids::detail::random_provider_base::get_random_bytes(a1, v2, 0x10uLL);
  BYTE6(v2[0]) = BYTE6(v2[0]) & 0xF | 0x40;
  return v2[0];
}

uint64_t std::vector<quasar::TranslationPhrase>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<quasar::TranslationPhrase>::__emplace_back_slow_path<quasar::TranslationPhrase>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<quasar::TranslationPhrase>>::construct[abi:ne200100]<quasar::TranslationPhrase,quasar::TranslationPhrase,0>(a1, *(a1 + 8), a2);
    result = v3 + 200;
    *(a1 + 8) = v3 + 200;
  }

  *(a1 + 8) = result;
  return result;
}

void ***std::unique_ptr<quasar::ProcessingBlock::ValueType>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x1B8C85350](v2, 0x20C40960023A9);
  }

  return a1;
}

void quasar::PDecTranslator::translate(uint64_t a1, uint64_t *a2, unsigned __int16 a3, uint64_t a4)
{
  v11[3] = *MEMORY[0x1E69E9840];
  std::pair<std::string const,std::vector<quasar::TranslationPhrase>>::pair[abi:ne200100]<char const* const&,std::vector<quasar::TranslationPhrase> const&,0>(__p, &quasar::ProcessingBlock::DEFAULT_INPUT_NAME, a2);
  std::map<std::string,std::vector<quasar::TranslationPhrase>>::map[abi:ne200100](v7, __p, 1);
  (*(*a1 + 40))(a1, v7, a3, a4);
  std::__tree<std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>>>::destroy(v7, v7[1]);
  v8 = v11;
  std::vector<quasar::TranslationPhrase>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B57CB9E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__tree<std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>>>::destroy(va, v5);
  std::pair<std::string const,std::vector<quasar::TranslationPhrase>>::~pair(va1);
  _Unwind_Resume(a1);
}

void quasar::PDecTranslator::translate(uint64_t a1, uint64_t a2, __int16 a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  std::chrono::steady_clock::now();
  v6 = 0;
  v7 = 0;
  *buf = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(buf);
  v6 = boost::uuids::random_generator_pure::operator()(buf);
  v7 = v3;
  boost::uuids::detail::random_provider_base::destroy(buf);
  operator new();
}

void sub_1B57CDDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a72);
  a72 = a15;
  std::vector<quasar::TranslationPhrase>::__destroy_vector::operator()[abi:ne200100](&a72);
  std::unique_ptr<quasar::ProcessingBlock::ValueType>::~unique_ptr[abi:ne200100](&a28);
  std::__tree<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::ProcessingBlock::ValueType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::ProcessingBlock::ValueType>>>::destroy(&a54, a55);
  a72 = &a68;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a72);
  if (a62 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::PDecTranslator::PDecCompilationContext::~PDecCompilationContext(quasar::PDecTranslator::PDecCompilationContext *this)
{
  *this = &unk_1F2D31400;
  std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(this + 8, *(this + 2));
}

{
  *this = &unk_1F2D31400;
  std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(this + 8, *(this + 2));

  JUMPOUT(0x1B8C85350);
}

void quasar::PDecTranslator::~PDecTranslator(quasar::PDecTranslator *this)
{
  quasar::PDecTranslator::~PDecTranslator(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D313B0;
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 48);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  quasar::Bitmap::~Bitmap(this);
}

uint64_t quasar::PDecTranslator::getCompilationContext@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 168);
  *a2 = *(this + 160);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

boost::uuids::detail::random_provider_base *boost::uuids::detail::random_provider_base::random_provider_base(boost::uuids::detail::random_provider_base *this)
{
  *this = -1;
  v2 = open("/dev/urandom", 0x1000000);
  *this = v2;
  if (v2 == -1)
  {
    v4 = *__error();
    std::string::basic_string[abi:ne200100]<0>(&v7, "open /dev/urandom");
    v5 = std::runtime_error::runtime_error(&v8, &v7);
    v8.__vftable = &unk_1F2D31540;
    v9 = v4;
    v6[0] = "/AppleInternal/Library/BuildRoots/4~B_v8ugAyYI0IKEYsMtCXGlJLPsrxIHMQK5jjw9Y/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/uuid/detail/random_provider_posix.ipp";
    v6[1] = "boost::uuids::detail::random_provider_base::random_provider_base()";
    v6[2] = 60;
    boost::throw_exception<boost::uuids::entropy_error>(v5, v6);
  }

  return this;
}

void sub_1B57CE264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::runtime_error::~runtime_error((v18 - 40));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void boost::throw_exception<boost::uuids::entropy_error>(uint64_t a1, uint64_t a2)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::uuids::entropy_error>::wrapexcept(exception, a1, a2);
}

uint64_t boost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

uint64_t boost::wrapexcept<boost::uuids::entropy_error>::wrapexcept(uint64_t a1, const std::runtime_error *a2, int8x16_t *a3)
{
  *a1 = &unk_1F2CFD548;
  std::runtime_error::runtime_error((a1 + 8), a2);
  v6 = a2[1].__vftable;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_1F2D314C0;
  *(a1 + 8) = &unk_1F2D314F0;
  *(a1 + 24) = v6;
  *(a1 + 32) = &unk_1F2D31520;
  *(a1 + 64) = a3[1].i32[0];
  *(a1 + 48) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

void sub_1B57CE5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::uuids::entropy_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::uuids::entropy_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 24) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1B8C85350);
}

void boost::uuids::entropy_error::~entropy_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t boost::wrapexcept<boost::uuids::entropy_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFD548;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1F2D31540;
  *(a1 + 24) = *(a2 + 24);
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
  *a1 = &unk_1F2D314C0;
  *(a1 + 8) = &unk_1F2D314F0;
  *(a1 + 32) = &unk_1F2D31520;
  return a1;
}

uint64_t boost::uuids::detail::random_provider_base::get_random_bytes(uint64_t this, char *a2, unint64_t a3)
{
  if (a3)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = read(*v5, &a2[v6], a3 - v6);
      if (this < 0)
      {
        this = __error();
        if (*this != 4)
        {
          v7 = *this;
          std::string::basic_string[abi:ne200100]<0>(&v9, "read");
          std::runtime_error::runtime_error(&v10, &v9);
          v10.__vftable = &unk_1F2D31540;
          v11 = v7;
          v8[0] = "/AppleInternal/Library/BuildRoots/4~B_v8ugAyYI0IKEYsMtCXGlJLPsrxIHMQK5jjw9Y/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/uuid/detail/random_provider_posix.ipp";
          v8[1] = "void boost::uuids::detail::random_provider_base::get_random_bytes(void *, std::size_t)";
          v8[2] = 98;
          boost::throw_exception<boost::uuids::entropy_error>(&v10, v8);
        }
      }

      else
      {
        v6 += this;
      }
    }

    while (v6 < a3);
  }

  return this;
}

void sub_1B57CEB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::runtime_error a19)
{
  std::runtime_error::~runtime_error(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::uuids::detail::random_provider_base::destroy(boost::uuids::detail::random_provider_base *this)
{
  result = *this;
  if ((result & 0x80000000) == 0)
  {
    return close(result);
  }

  return result;
}

_BYTE *boost::uuids::to_chars<char *>(uint64_t a1, _BYTE *a2)
{
  for (i = 0; i != 16; ++i)
  {
    v3 = a2;
    if (*(a1 + i) >= 0xA0u)
    {
      v4 = (*(a1 + i) >> 4) + 87;
    }

    else
    {
      v4 = (*(a1 + i) >> 4) | 0x30;
    }

    *a2 = v4;
    a2 += 2;
    v5 = *(a1 + i) & 0xF;
    v6 = v5 + 87;
    if (v5 < 0xA)
    {
      v6 = *(a1 + i) & 0xF | 0x30;
    }

    v3[1] = v6;
    if (i <= 9 && ((1 << i) & 0x2A8) != 0)
    {
      a2 = v3 + 3;
      v3[2] = 45;
    }
  }

  return a2;
}

_BYTE *std::pair<std::string const,std::vector<quasar::TranslationPhrase>>::pair[abi:ne200100]<char const* const&,std::vector<quasar::TranslationPhrase> const&,0>(_BYTE *a1, char **a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, *a2);
  v5[3] = 0;
  v5[4] = 0;
  v5 += 3;
  v5[2] = 0;
  std::vector<quasar::TranslationPhrase>::__init_with_size[abi:ne200100]<quasar::TranslationPhrase*,quasar::TranslationPhrase*>(v5, *a3, a3[1], 0x8F5C28F5C28F5C29 * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_1B57CEC68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::TranslationPhrase>::__init_with_size[abi:ne200100]<quasar::TranslationPhrase*,quasar::TranslationPhrase*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::TranslationPhrase>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B57CECEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TranslationPhrase>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

quasar::TranslationPhrase *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationPhrase>,quasar::TranslationPhrase*,quasar::TranslationPhrase*,quasar::TranslationPhrase*>(uint64_t a1, quasar::TranslationPhrase *a2, quasar::TranslationPhrase *a3, quasar::TranslationPhrase *this)
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
      quasar::TranslationPhrase::TranslationPhrase(v4, v6);
      v6 = (v6 + 200);
      v4 = (v11 + 200);
      v11 = (v11 + 200);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationPhrase>,quasar::TranslationPhrase*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::allocator_traits<std::allocator<quasar::TranslationPhrase>>::destroy[abi:ne200100]<quasar::TranslationPhrase,0>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 176);
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a2 + 152);
  if (v3)
  {
    *(a2 + 160) = v3;
    operator delete(v3);
  }

  if (*(a2 + 120) == 1)
  {
    v4 = (a2 + 96);
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  if (*(a2 + 88) == 1 && *(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  v4 = (a2 + 16);
  std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](&v4);
}

uint64_t std::pair<std::string const,std::vector<quasar::TranslationPhrase>>::~pair(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<quasar::TranslationPhrase>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const* const&>(uint64_t a1, char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (24 * v2);
  v13.__end_ = (24 * v2);
  v13.__end_cap_.__value_ = 0;
  std::string::basic_string[abi:ne200100]<0>((24 * v2), *a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::string>::~__split_buffer(&v13);
  return v7;
}

void std::vector<std::unique_ptr<quasar::TranslatorOptions>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<quasar::TranslatorOptions>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<quasar::TranslatorOptions>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 24))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<quasar::TranslatorOptions>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<quasar::TranslatorOptions>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<quasar::TranslatorOptions>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
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
        result = (*(*result + 24))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::__emplace_hint_unique_key_args<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec> const&>(void *a1, uint64_t *a2, void *a3)
{
  v3 = *std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::__find_equal<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::__find_equal<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, void *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !(*(**a5 + 40))(*a5, a2[4]))
  {
    if (!(*(*a2[4] + 40))(a2[4], *a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!(*(**a5 + 40))(*a5, v15[4]))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if ((*(*v12[4] + 40))(v12[4], *a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::__find_equal<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>(a1, a3, a5);
}

void *std::__find[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity>(void *a1, void *a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    while (1)
    {
      v8 = *(v3 + 55);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = v3[5];
      }

      if (v8 == v6)
      {
        v10 = v9 >= 0 ? v3 + 4 : v3[4];
        if (!memcmp(v10, v7, v6))
        {
          break;
        }
      }

      v11 = v3[1];
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
          v12 = v3[2];
          v13 = *v12 == v3;
          v3 = v12;
        }

        while (!v13);
      }

      v3 = v12;
      if (v12 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void std::__shared_ptr_emplace<quasar::PDecTranslator::PDecCompilationContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D31570;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::vector<quasar::TranslationPhrase>::__emplace_back_slow_path<quasar::TranslationPhrase>(uint64_t a1, uint64_t *a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x147AE147AE147AELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v6 = 0x147AE147AE147AELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationPhrase>>(a1, v6);
  }

  v13 = 0;
  v14 = 200 * v2;
  std::allocator_traits<std::allocator<quasar::TranslationPhrase>>::construct[abi:ne200100]<quasar::TranslationPhrase,quasar::TranslationPhrase,0>(a1, 200 * v2, a2);
  v15 = 200 * v2 + 200;
  v7 = *(a1 + 8);
  v8 = 200 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationPhrase>,quasar::TranslationPhrase*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::TranslationPhrase>::~__split_buffer(&v13);
  return v12;
}

void sub_1B57CF754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TranslationPhrase>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<quasar::TranslationPhrase>>::construct[abi:ne200100]<quasar::TranslationPhrase,quasar::TranslationPhrase,0>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 8);
  *a2 = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 16) = *(a3 + 1);
  *(a2 + 32) = a3[4];
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0;
  v4 = *(a3 + 5);
  *(a2 + 56) = a3[7];
  *(a2 + 40) = v4;
  a3[6] = 0;
  a3[7] = 0;
  a3[5] = 0;
  *(a2 + 64) = 0;
  *(a2 + 88) = 0;
  if (*(a3 + 88) == 1)
  {
    v5 = *(a3 + 4);
    *(a2 + 80) = a3[10];
    *(a2 + 64) = v5;
    a3[9] = 0;
    a3[10] = 0;
    a3[8] = 0;
    *(a2 + 88) = 1;
  }

  *(a2 + 96) = 0;
  *(a2 + 120) = 0;
  if (*(a3 + 120) == 1)
  {
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = *(a3 + 6);
    *(a2 + 112) = a3[14];
    a3[12] = 0;
    a3[13] = 0;
    a3[14] = 0;
    *(a2 + 120) = 1;
  }

  v6 = *(a3 + 8);
  *(a2 + 143) = *(a3 + 143);
  *(a2 + 128) = v6;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 152) = 0;
  *(a2 + 152) = *(a3 + 19);
  *(a2 + 168) = a3[21];
  a3[19] = 0;
  a3[20] = 0;
  a3[21] = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  result = *(a3 + 11);
  *(a2 + 176) = result;
  *(a2 + 192) = a3[24];
  a3[22] = 0;
  a3[23] = 0;
  a3[24] = 0;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationPhrase>,quasar::TranslationPhrase*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
      std::allocator_traits<std::allocator<quasar::TranslationPhrase>>::construct[abi:ne200100]<quasar::TranslationPhrase,quasar::TranslationPhrase,0>(a1, a4, v7);
      v7 += 25;
      a4 = v12 + 200;
      v12 += 200;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::TranslationPhrase>>::destroy[abi:ne200100]<quasar::TranslationPhrase,0>(a1, v5);
      v5 += 200;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationPhrase>,quasar::TranslationPhrase*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__split_buffer<quasar::TranslationPhrase>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::TranslationPhrase>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::TranslationPhrase>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 200;
    std::allocator_traits<std::allocator<quasar::TranslationPhrase>>::destroy[abi:ne200100]<quasar::TranslationPhrase,0>(v5, v4 - 200);
  }
}

void *std::map<std::string,std::vector<quasar::TranslationPhrase>>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<quasar::TranslationPhrase>> const&>(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

const void *std::__tree<std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<quasar::TranslationPhrase>> const&>(void *a1, uint64_t *a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>>>::__construct_node<std::pair<std::string const,std::vector<quasar::TranslationPhrase>> const&>();
  }

  return v3;
}

const void **std::__tree<std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<quasar::TranslationPhrase>>>>::__find_equal<std::string>(void *a1, uint64_t *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, a2 + 4))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(a1, a3, a5);
}

std::string *std::pair<std::string const,std::vector<quasar::TranslationPhrase>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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
  std::vector<quasar::TranslationPhrase>::__init_with_size[abi:ne200100]<quasar::TranslationPhrase*,quasar::TranslationPhrase*>(&this[1], *(a2 + 3), *(a2 + 4), 0x8F5C28F5C28F5C29 * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void sub_1B57CFD80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B57CFEB8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B57D078C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B57D0984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B57D0BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B57D0DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B57D1104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = (v17 - 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void sub_1B57D14C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  __p = &a31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_1B57D1848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  __p = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_1B57D1B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_1B57D1D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B57D2008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  *(v32 - 96) = v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v32 - 96));

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_80c89_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE104c47_ZTSNSt3__110shared_ptrIN6quasar10TranslatorEEE(void *a1, uint64_t *a2)
{
  a1[10] = 0;
  a1[11] = 0;
  v3 = a1 + 10;
  a1[12] = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 10), a2[10], a2[11], 0xAAAAAAAAAAAAAAABLL * ((a2[11] - a2[10]) >> 3));
  v5 = a2[14];
  v3[3] = a2[13];
  v3[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_80c89_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE104c47_ZTSNSt3__110shared_ptrIN6quasar10TranslatorEEE(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = (a1 + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void sub_1B57D377C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

EMTAlternativeDescription *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorI8OverloadIJZZZ115__EMTTranslator__dispatchTranslationRequest_isFinal_spans_translator_sourceLocale_targetLocale_options_completion__EUb_EN3__0clENS_10shared_ptrINS_7variantIJN6quasar24AlternativeSelectionSpan11Alternative17GenderDescriptionENSE_18MeaningDescriptionEEEEEEEUlSG_E_ZZZ115__EMTTranslator__dispatchTranslationRequest_isFinal_spans_translator_sourceLocale_targetLocale_options_completion__EUb_ENS9_clESI_EUlSF_E_EEEEJRNS0_6__baseILNS0_6_TraitE1EJSF_SG_EEEEEEDcT_DpT0_(uint64_t a1, void *a2)
{
  v2 = [[EMTGenderDescription alloc] initWithGender:*a2 == 1 defaultGender:HIDWORD(*a2) == 1];
  v3 = [[EMTAlternativeDescription alloc] initWithGenderDescription:v2];

  return v3;
}

EMTAlternativeDescription *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorI8OverloadIJZZZ115__EMTTranslator__dispatchTranslationRequest_isFinal_spans_translator_sourceLocale_targetLocale_options_completion__EUb_EN3__0clENS_10shared_ptrINS_7variantIJN6quasar24AlternativeSelectionSpan11Alternative17GenderDescriptionENSE_18MeaningDescriptionEEEEEEEUlSG_E_ZZZ115__EMTTranslator__dispatchTranslationRequest_isFinal_spans_translator_sourceLocale_targetLocale_options_completion__EUb_ENS9_clESI_EUlSF_E_EEEEJRNS0_6__baseILNS0_6_TraitE1EJSF_SG_EEEEEEDcT_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v2 = [EMTMeaningDescription alloc];
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

  v5 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{p_p, size, __p.__r_.__value_.__r.__words[0]}];
  v6 = [(EMTMeaningDescription *)v2 initWithDefinition:v5];

  v7 = [[EMTAlternativeDescription alloc] initWithMeaningDescription:v6];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1B57D39B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v15 = v14;

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,std::__map_value_compare<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,std::less<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>,true>,std::allocator<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>>>::__emplace_hint_unique_key_args<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>&,EMTAlternativeDescription * {__strong}&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>::__find_equal<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,std::__map_value_compare<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,std::less<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>,true>,std::allocator<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>>>::__construct_node<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>&,EMTAlternativeDescription * {__strong}&>();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>> const,EMTAlternativeDescription * {__strong}>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>> const,EMTAlternativeDescription * {__strong}>,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t ___ZL14getProjectionsRKN6quasar17TranslationPhraseEPK7NSArrayIP7EMTSpanE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 range];
  if (v6 >= [v5 range])
  {
    v8 = [v4 range];
    if (v8 > [v5 range])
    {
      v7 = 1;
      goto LABEL_7;
    }

    [v4 range];
    v10 = v9;
    [v5 range];
    if (v10 >= v11)
    {
      [v4 range];
      v13 = v12;
      [v5 range];
      v7 = v13 > v14;
      goto LABEL_7;
    }
  }

  v7 = -1;
LABEL_7:

  return v7;
}

void std::__tree<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,std::__map_value_compare<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,std::less<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>,true>,std::allocator<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,std::__map_value_compare<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,std::less<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>,true>,std::allocator<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,std::__map_value_compare<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>,std::less<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>>,true>,std::allocator<std::__value_type<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>>,EMTAlternativeDescription * {__strong}>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<std::variant<quasar::AlternativeSelectionSpan::Alternative::GenderDescription,quasar::AlternativeSelectionSpan::Alternative::MeaningDescription>> const,EMTAlternativeDescription * {__strong}>,0>((a2 + 4));

    operator delete(a2);
  }
}

void VarNgram::VarNgram(VarNgram *this, Vocab *a2, int a3, double a4)
{
  Ngram::Ngram(this, a2, a3);
  *v5 = &unk_1F2D31628;
  *(v5 + 192) = a4;
}

void VarNgram::~VarNgram(VarNgram *this)
{
  *this = &unk_1F2D0A578;
  Trie<unsigned int,BOnode>::~Trie(this + 152);

  LM::~LM(this);
}

{
  *this = &unk_1F2D0A578;
  Trie<unsigned int,BOnode>::~Trie(this + 152);
  LM::~LM(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::quasar::CEAcousticEncoderNetConfig::Read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v4 = kaldi::Input::Input(v5, a3, v6);
  kaldi::Input::Stream(v4);
  kaldi::quasar::CreateComputeEngineConfig(a2);
}

void sub_1B57D4B0C(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  kaldi::Input::~Input((v1 - 104));
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEAcousticEncoderNet::CEAcousticEncoderNet(kaldi::quasar::CEAcousticEncoderNetConfig *a1, uint64_t a2)
{
  *(kaldi::quasar::CEAcousticEncoderNetConfig::CEAcousticEncoderNetConfig(a1) + 31) = 0;
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
  kaldi::quasar::CEAcousticEncoderNetConfig::Read(a1, a2, __p);
}

void sub_1B57D4CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 31);
  *(v14 + 31) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  kaldi::quasar::CEAcousticEncoderNetConfig::~CEAcousticEncoderNetConfig(v14);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEAcousticEncoderNet::~CEAcousticEncoderNet(kaldi::quasar::CEAcousticEncoderNet *this)
{
  v2 = *(this + 31);
  *(this + 31) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  kaldi::quasar::CEAcousticEncoderNetConfig::~CEAcousticEncoderNetConfig(this);
}

void kaldi::quasar::CEAcousticEncoderNet::Encode(uint64_t a1, void *a2, std::string::size_type *a3, std::string::size_type *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = (a2[1] - *a2) >> 3;
  if (v8 != 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 128) - *(a1 + 120)) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v57);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v57, "input_states.size() == cfg_.input_states.size()");
    goto LABEL_68;
  }

  if (v8 != 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - *(a1 + 144)) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v57);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v57, "input_states.size() == cfg_.output_states.size()");
    goto LABEL_68;
  }

  if ((*(**a3 + 176))() != *(a1 + 200))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v57);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v57, "input_feats->GetNumDims() == cfg_.input_shape_template.ndim");
    goto LABEL_68;
  }

  if ((*(**a3 + 184))(*a3, *(a1 + 196)) != *(a1 + 204))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v57);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v57, "input_feats->GetDimSize(cfg_.input_shape_template.col_index) == InputDim()");
LABEL_68:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v57);
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  v16 = *(a1 + 120);
  if (*(a1 + 128) == v16)
  {
    v25 = *a3;
LABEL_19:
    v27 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v57, a1, v25);
    goto LABEL_22;
  }

  v51 = a5;
  v17 = a7;
  v18 = a6;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  do
  {
    v22 = v16 + v19;
    v23 = *(*a2 + 8 * v21);
    if (v20 >= v59)
    {
      v20 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v57, v22, *(*a2 + 8 * v21));
    }

    else
    {
      if (*(v22 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v20, *(v16 + v19), *(v16 + v19 + 8));
      }

      else
      {
        v24 = *v22;
        v20->__r_.__value_.__r.__words[2] = *(v22 + 16);
        *&v20->__r_.__value_.__l.__data_ = v24;
      }

      v20[1].__r_.__value_.__r.__words[0] = v23;
      v20 = (v20 + 32);
    }

    v58 = v20;
    ++v21;
    v16 = *(a1 + 120);
    v19 += 24;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 128) - v16) >> 3) > v21);
  v25 = *a3;
  if (v20 >= v59)
  {
    a6 = v18;
    a7 = v17;
    a5 = v51;
    goto LABEL_19;
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v20, *a1, *(a1 + 8));
  }

  else
  {
    v26 = *a1;
    v20->__r_.__value_.__r.__words[2] = *(a1 + 16);
    *&v20->__r_.__value_.__l.__data_ = v26;
  }

  v20[1].__r_.__value_.__r.__words[0] = v25;
  v27 = (v20 + 32);
  v58 = &v20[1].__r_.__value_.__s.__data_[8];
  a6 = v18;
  a7 = v17;
  a5 = v51;
LABEL_22:
  v58 = v27;
  v28 = *(a1 + 47);
  if (v28 < 0)
  {
    if (!*(a1 + 32))
    {
      goto LABEL_33;
    }
  }

  else if (!*(a1 + 47))
  {
    goto LABEL_33;
  }

  v29 = *a4;
  if (v27 >= v59)
  {
    p_size = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v57, (a1 + 24), *a4);
  }

  else
  {
    if ((v28 & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v27, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v30 = *(a1 + 24);
      v27->__r_.__value_.__r.__words[2] = *(a1 + 40);
      *&v27->__r_.__value_.__l.__data_ = v30;
    }

    v27[1].__r_.__value_.__r.__words[0] = v29;
    p_size = &v27[1].__r_.__value_.__l.__size_;
    v58 = &v27[1].__r_.__value_.__s.__data_[8];
  }

  v58 = p_size;
LABEL_33:
  memset(v56, 0, sizeof(v56));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v56, *(a1 + 144), *(a1 + 152), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - *(a1 + 144)) >> 3));
  std::vector<std::string>::push_back[abi:ne200100](v56, (a1 + 48));
  if ((*(a1 + 95) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 80))
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (*(a1 + 95))
  {
LABEL_37:
    std::vector<std::string>::push_back[abi:ne200100](v56, (a1 + 72));
  }

LABEL_38:
  if ((*(a1 + 119) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 104))
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (*(a1 + 119))
  {
LABEL_42:
    std::vector<std::string>::push_back[abi:ne200100](v56, (a1 + 96));
  }

LABEL_43:
  v54 = 0uLL;
  v55 = 0;
  v32 = *(a1 + 248);
  memset(v53, 0, sizeof(v53));
  (*(*v32 + 136))(v32, &v57, v56, v53, &v54);
  v60 = v53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v60);
  v33 = *(a1 + 119);
  if (v33 < 0)
  {
    v33 = *(a1 + 104);
  }

  if (v33)
  {
    v34 = *(&v54 + 1);
    v35 = *(*(&v54 + 1) - 8);
    *(*(&v54 + 1) - 8) = 0;
    v36 = *a8;
    *a8 = v35;
    if (v36)
    {
      (*(*v36 + 8))(v36);
      v34 = *(&v54 + 1);
    }

    v39 = *(v34 - 8);
    v38 = (v34 - 8);
    v37 = v39;
    *v38 = 0;
    if (v39)
    {
      (*(*v37 + 8))(v37);
    }

    *(&v54 + 1) = v38;
  }

  v40 = *(a1 + 95);
  if (v40 < 0)
  {
    v40 = *(a1 + 80);
  }

  v41 = *(&v54 + 1);
  if (v40)
  {
    v42 = *(*(&v54 + 1) - 8);
    *(*(&v54 + 1) - 8) = 0;
    v43 = *a7;
    *a7 = v42;
    if (v43)
    {
      (*(*v43 + 8))(v43);
      v41 = *(&v54 + 1);
    }

    v45 = *--v41;
    v44 = v45;
    *v41 = 0;
    if (v45)
    {
      (*(*v44 + 8))(v44);
    }

    *(&v54 + 1) = v41;
  }

  v46 = *(v41 - 1);
  *(v41 - 1) = 0;
  v47 = *a6;
  *a6 = v46;
  if (v47)
  {
    (*(*v47 + 8))(v47);
    v41 = *(&v54 + 1);
  }

  v50 = *(v41 - 1);
  v49 = v41 - 1;
  v48 = v50;
  *v49 = 0;
  if (v50)
  {
    (*(*v48 + 8))(v48);
  }

  *(&v54 + 1) = v49;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(a5);
  *a5 = v54;
  *(a5 + 16) = v55;
  v55 = 0;
  v54 = 0uLL;
  v53[0] = &v54;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](v53);
  *&v54 = v56;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v54);
  v56[0] = &v57;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v56);
}

void kaldi::quasar::CEAcousticEncoderNet::Encode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  kaldi::quasar::InputShapeTemplate::Get((a1 + 192), *(a3 + 20), *(a3 + 16), v22);
  v20 = 0;
  kaldi::quasar::CreateBufferFromMatrix(a1 + 248, a3, v22, &v20, &v21);
  v16 = v20;
  v20 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  (*(**(a1 + 248) + 56))(&v19);
  (*(*v19 + 96))(v19, a4, 0);
  kaldi::quasar::CEAcousticEncoderNet::Encode(a1, a2, &v21, &v19, a5, a6, a7, a8);
  v17 = v19;
  v19 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = v21;
  v21 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }
}

void sub_1B57D559C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

void kaldi::quasar::CEAcousticEncoderNet::Encode(uint64_t a1, void *a2, std::string::size_type *a3, std::string::size_type *a4, uint64_t a5, uint64_t *a6)
{
  v6 = (a2[1] - *a2) >> 3;
  if (v6 != 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 128) - *(a1 + 120)) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v38, "input_states.size() == cfg_.input_states.size()");
    goto LABEL_41;
  }

  if (v6 != 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - *(a1 + 144)) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v38, "input_states.size() == cfg_.output_states.size()");
    goto LABEL_41;
  }

  if ((*(**a3 + 176))() != *(a1 + 200))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v38, "input_feats->GetNumDims() == cfg_.input_shape_template.ndim");
    goto LABEL_41;
  }

  if ((*(**a3 + 184))(*a3, *(a1 + 196)) != *(a1 + 204))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v38, "input_feats->GetDimSize(cfg_.input_shape_template.col_index) == InputDim()");
LABEL_41:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v38);
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v13 = *(a1 + 120);
  if (*(a1 + 128) == v13)
  {
    v20 = *a3;
LABEL_18:
    v22 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v38, a1, v20);
    goto LABEL_21;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  do
  {
    v17 = v13 + v14;
    v18 = *(*a2 + 8 * v16);
    if (v15 >= v40)
    {
      v15 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v38, v17, *(*a2 + 8 * v16));
    }

    else
    {
      if (*(v17 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v15, *(v13 + v14), *(v13 + v14 + 8));
      }

      else
      {
        v19 = *v17;
        v15->__r_.__value_.__r.__words[2] = *(v17 + 16);
        *&v15->__r_.__value_.__l.__data_ = v19;
      }

      v15[1].__r_.__value_.__r.__words[0] = v18;
      v15 = (v15 + 32);
    }

    v39 = v15;
    ++v16;
    v13 = *(a1 + 120);
    v14 += 24;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 128) - v13) >> 3) > v16);
  v20 = *a3;
  if (v15 >= v40)
  {
    goto LABEL_18;
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v15, *a1, *(a1 + 8));
  }

  else
  {
    v21 = *a1;
    v15->__r_.__value_.__r.__words[2] = *(a1 + 16);
    *&v15->__r_.__value_.__l.__data_ = v21;
  }

  v15[1].__r_.__value_.__r.__words[0] = v20;
  v22 = (v15 + 32);
  v39 = &v15[1].__r_.__value_.__s.__data_[8];
LABEL_21:
  v39 = v22;
  v23 = *(a1 + 47);
  if (v23 < 0)
  {
    if (!*(a1 + 32))
    {
      goto LABEL_32;
    }
  }

  else if (!*(a1 + 47))
  {
    goto LABEL_32;
  }

  v24 = *a4;
  if (v22 >= v40)
  {
    p_size = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v38, (a1 + 24), v24);
  }

  else
  {
    if ((v23 & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v22, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v25 = *(a1 + 24);
      v22->__r_.__value_.__r.__words[2] = *(a1 + 40);
      *&v22->__r_.__value_.__l.__data_ = v25;
    }

    v22[1].__r_.__value_.__r.__words[0] = v24;
    p_size = &v22[1].__r_.__value_.__l.__size_;
    v39 = &v22[1].__r_.__value_.__s.__data_[8];
  }

  v39 = p_size;
LABEL_32:
  memset(v37, 0, sizeof(v37));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v37, *(a1 + 144), *(a1 + 152), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - *(a1 + 144)) >> 3));
  std::vector<std::string>::push_back[abi:ne200100](v37, (a1 + 48));
  v35 = 0uLL;
  v36 = 0;
  v27 = *(a1 + 248);
  memset(v34, 0, sizeof(v34));
  (*(*v27 + 136))(v27, &v38, v37, v34, &v35);
  v41 = v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
  v28 = *(&v35 + 1);
  v29 = *(*(&v35 + 1) - 8);
  *(*(&v35 + 1) - 8) = 0;
  v30 = *a6;
  *a6 = v29;
  if (v30)
  {
    (*(*v30 + 8))(v30);
    v28 = *(&v35 + 1);
  }

  v33 = *(v28 - 8);
  v32 = (v28 - 8);
  v31 = v33;
  *v32 = 0;
  if (v33)
  {
    (*(*v31 + 8))(v31);
  }

  *(&v35 + 1) = v32;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(a5);
  *a5 = v35;
  *(a5 + 16) = v36;
  v36 = 0;
  v35 = 0uLL;
  v34[0] = &v35;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](v34);
  *&v35 = v37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
  v37[0] = &v38;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v37);
}

void kaldi::quasar::CEAcousticEncoderNet::Encode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  kaldi::quasar::InputShapeTemplate::Get((a1 + 192), *(a3 + 20), *(a3 + 16), v18);
  v16 = 0;
  kaldi::quasar::CreateBufferFromMatrix(a1 + 248, a3, v18, &v16, &v17);
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  (*(**(a1 + 248) + 56))(&v15);
  (*(*v15 + 96))(v15, a4, 0);
  kaldi::quasar::CEAcousticEncoderNet::Encode(a1, a2, &v17, &v15, a5, a6);
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

void sub_1B57D5CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

void kaldi::quasar::CEAcousticEncoderNet::Encode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int32x2_t *a6)
{
  kaldi::quasar::InputShapeTemplate::Get((a1 + 192), *(a3 + 20), *(a3 + 16), v21);
  v19 = 0;
  kaldi::quasar::CreateBufferFromMatrix(a1 + 248, a3, v21, &v19, &v20);
  v12 = v19;
  v19 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a1 + 248);
  memset(__p, 0, sizeof(__p));
  (*(*v13 + 56))(&v18);
  (*(*v18 + 96))(v18, a4, 0);
  __p[0] = 0;
  kaldi::quasar::CEAcousticEncoderNet::Encode(a1, a2, &v20, &v18, a5, __p);
  v14 = __p[0];
  kaldi::quasar::CopyBufferToMatrix(__p[0], 0xFFFFFFFFLL, *(a1 + 208), a6);
  (*(*v14 + 8))(v14);
  v15 = v18;
  v18 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = v20;
  v20 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }
}

void sub_1B57D5F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::CEAcousticEncoderNet::InitialStates(kaldi::quasar::CEAcousticEncoderNet *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = this + 168;
  if (*(this + 22) != *(this + 21))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v5 = *(this + 58);
    if (v5 <= 0)
    {
      v5 = *(this + 55) + *(this + 56);
    }

    kaldi::quasar::InputShapeTemplate::Get((this + 192), v5, *(this + 51), __p);
    (*(**(this + 31) + 64))(v11);
    v6 = v14;
    if (v14 >= v15)
    {
      v8 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v13, this, v11);
      v9 = v11[0];
      v14 = v8;
      v11[0] = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    else
    {
      if (*(this + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v14, *this, *(this + 1));
      }

      else
      {
        v7 = *this;
        v14->__r_.__value_.__r.__words[2] = *(this + 2);
        *&v6->__r_.__value_.__l.__data_ = v7;
      }

      v6[1].__r_.__value_.__r.__words[0] = v11[0];
      v14 = (v6 + 32);
    }

    v10 = *(this + 31);
    memset(v11, 0, sizeof(v11));
    (*(*v10 + 128))(v10, &v13, v3, v11, a2);
    v16 = v11;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    __p[0] = &v13;
    std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](__p);
  }
}

void sub_1B57D61C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *__p, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16)
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

void kaldi::quasar::CEAcousticEncoderNet::WarmUp(kaldi::quasar::CEAcousticEncoderNet *this)
{
  kaldi::quasar::CEAcousticEncoderNet::InitialStates(this, v5);
  v2 = *(this + 58);
  if (v2 <= 0)
  {
    v2 = (*(this + 55) + *(this + 56));
  }

  kaldi::CuMatrix<float>::CuMatrix(v4, v2, *(this + 51), 0, 0, 0);
  v3 = 0;
  kaldi::quasar::CEAcousticEncoderNet::Encode(this, v5, v4, 1, v5, &v3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v4);
  v4[0] = v5;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](v4);
}

void sub_1B57D6328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (a9)
  {
    kaldi::quasar::CEInferenceNet::Feedforward();
  }

  kaldi::CuMatrix<float>::~CuMatrix(&a10);
  a10 = (v10 - 40);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CELabelEncoderNetConfig::Read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v4 = kaldi::Input::Input(v5, a3, v6);
  kaldi::Input::Stream(v4);
  kaldi::quasar::CreateComputeEngineConfig(a2);
}

void sub_1B57D6C6C(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  kaldi::Input::~Input((v1 - 104));
  _Unwind_Resume(a1);
}

void kaldi::quasar::CELabelEncoderNet::CELabelEncoderNet(uint64_t a1, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, "input_labels");
  std::string::basic_string[abi:ne200100]<0>(v4 + 24, "output_embeddings");
  *(a1 + 144) = 0;
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 120) = xmmword_1B5B251F0;
  *(a1 + 136) = -1;
  *(a1 + 152) = 0;
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
  kaldi::quasar::CELabelEncoderNetConfig::Read(a1, a2, __p);
}

void sub_1B57D6E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 19);
  *(v14 + 19) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  kaldi::quasar::CEEncoderNetConfig::~CEEncoderNetConfig(v14);
  _Unwind_Resume(a1);
}

void sub_1B57D6EAC()
{
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }

  JUMPOUT(0x1B57D6EA4);
}

void kaldi::quasar::CELabelEncoderNet::~CELabelEncoderNet(kaldi::quasar::CELabelEncoderNet *this)
{
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

void kaldi::quasar::CELabelEncoderNet::Encode(uint64_t a1, void *a2, std::string::size_type *a3, uint64_t a4, uint64_t *a5)
{
  v5 = (a2[1] - *a2) >> 3;
  if (v5 != 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - *(a1 + 48)) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v32, "input_states.size() == cfg_.input_states.size()");
    goto LABEL_28;
  }

  if (v5 != 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - *(a1 + 72)) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v32, "input_states.size() == cfg_.output_states.size()");
    goto LABEL_28;
  }

  if ((*(**a3 + 176))() != 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v32, "input_labels->GetNumDims() == 1");
LABEL_28:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v32);
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  v11 = *(a1 + 48);
  if (*(a1 + 56) == v11)
  {
    v18 = *a3;
LABEL_17:
    p_size = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v32, a1, v18);
    goto LABEL_20;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = v11 + v12;
    v16 = *(*a2 + 8 * v14);
    if (v13 >= v34)
    {
      v13 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v32, v15, *(*a2 + 8 * v14));
    }

    else
    {
      if (*(v15 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v13, *(v11 + v12), *(v11 + v12 + 8));
      }

      else
      {
        v17 = *v15;
        v13->__r_.__value_.__r.__words[2] = *(v15 + 16);
        *&v13->__r_.__value_.__l.__data_ = v17;
      }

      v13[1].__r_.__value_.__r.__words[0] = v16;
      v13 = (v13 + 32);
    }

    v33 = v13;
    ++v14;
    v11 = *(a1 + 48);
    v12 += 24;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - v11) >> 3) > v14);
  v18 = *a3;
  if (v13 >= v34)
  {
    goto LABEL_17;
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v13, *a1, *(a1 + 8));
  }

  else
  {
    v19 = *a1;
    v13->__r_.__value_.__r.__words[2] = *(a1 + 16);
    *&v13->__r_.__value_.__l.__data_ = v19;
  }

  v13[1].__r_.__value_.__r.__words[0] = v18;
  p_size = &v13[1].__r_.__value_.__l.__size_;
  v33 = &v13[1].__r_.__value_.__s.__data_[8];
LABEL_20:
  v33 = p_size;
  memset(v31, 0, sizeof(v31));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v31, *(a1 + 72), *(a1 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  std::vector<std::string>::push_back[abi:ne200100](v31, (a1 + 24));
  v29 = 0uLL;
  v30 = 0;
  v21 = *(a1 + 152);
  memset(v28, 0, sizeof(v28));
  (*(*v21 + 136))(v21, &v32, v31, v28, &v29);
  v35 = v28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
  v22 = *(&v29 + 1);
  v23 = *(*(&v29 + 1) - 8);
  *(*(&v29 + 1) - 8) = 0;
  v24 = *a5;
  *a5 = v23;
  if (v24)
  {
    (*(*v24 + 8))(v24);
    v22 = *(&v29 + 1);
  }

  v27 = *(v22 - 8);
  v26 = (v22 - 8);
  v25 = v27;
  *v26 = 0;
  if (v27)
  {
    (*(*v25 + 8))(v25);
  }

  *(&v29 + 1) = v26;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(a4);
  *a4 = v29;
  *(a4 + 16) = v30;
  v30 = 0;
  v29 = 0uLL;
  v28[0] = &v29;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](v28);
  *&v29 = v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
  v31[0] = &v32;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v31);
}

uint64_t kaldi::quasar::CELabelEncoderNet::Encode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  (*(**(a1 + 152) + 24))(&v10);
  kaldi::quasar::CELabelEncoderNet::Encode(a1, a2, &v10, a4, a5);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1B57D7468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    kaldi::quasar::CEInferenceNet::Feedforward();
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::CELabelEncoderNet::EncodeBatch(uint64_t a1, void *a2, int **a3, uint64_t a4, uint64_t a5)
{
  v5 = a2[1] - *a2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (v5 != v7 - v6)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v60, "input_states.size() == cfg_.input_states.size()");
    goto LABEL_34;
  }

  if (v5 != *(a1 + 80) - *(a1 + 72))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v60, "input_states.size() == cfg_.output_states.size()");
LABEL_34:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v60);
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  if (v7 == v6)
  {
    v60 = 0;
    v61 = 0;
    v62 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = (*a2 + v11);
      if ((v14[1] - *v14) >> 3 != a3[1] - *a3)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
        v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "Mismatch at [", 13);
        v41 = MEMORY[0x1B8C84C00](v40, v13);
        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "] ", 2);
        v43 = *(a1 + 48) + v11;
        v44 = *(v43 + 23);
        if (v44 >= 0)
        {
          v45 = *(a1 + 48) + v11;
        }

        else
        {
          v45 = *v43;
        }

        if (v44 >= 0)
        {
          v46 = *(v43 + 23);
        }

        else
        {
          v46 = *(v43 + 8);
        }

        v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v45, v46);
        v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " ", 1);
        v49 = MEMORY[0x1B8C84C30](v48, (*(*a2 + v11 + 8) - *(*a2 + v11)) >> 3);
        v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " != ", 4);
        MEMORY[0x1B8C84C30](v50, a3[1] - *a3);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v60);
      }

      if (v12 >= v59)
      {
        v12 = std::vector<std::pair<std::string,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::__emplace_back_slow_path<std::string&,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>(&v57, (v6 + v11), v14);
      }

      else
      {
        std::pair<std::string const,std::vector<quasar::AlternativeSelectionSpan::Alternative>>::pair[abi:ne200100]<std::string const&,std::vector<quasar::AlternativeSelectionSpan::Alternative>,0>(v12, (v6 + v11), v14);
        v12 += 2;
      }

      v58 = v12;
      ++v13;
      v6 = *(a1 + 48);
      v11 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - v6) >> 3) > v13);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    if (v12 < v59)
    {
      std::pair<std::string const,std::vector<quasar::AlternativeSelectionSpan::Alternative>>::pair[abi:ne200100]<std::string const&,std::vector<quasar::AlternativeSelectionSpan::Alternative>,0>(v12, a1, &v60);
      v15 = &v12[2];
      v58 = v12 + 2;
      goto LABEL_14;
    }
  }

  v15 = std::vector<std::pair<std::string,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::__emplace_back_slow_path<std::string&,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>(&v57, a1, &v60);
LABEL_14:
  v58 = v15;
  __p = &v60;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v16 = *a3;
  v17 = a3[1];
  if (*a3 != v17)
  {
    do
    {
      v18 = v58;
      v19 = *(a1 + 152);
      v53 = *v16;
      v55 = 0;
      v56 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v53, &__p, 1uLL);
      (*(*v19 + 24))(v65, v19, &__p, 0);
      size = v18[-1].__r_.__value_.__l.__size_;
      v20 = v18[-1].__r_.__value_.__r.__words[2];
      if (size >= v20)
      {
        data = v18[-1].__r_.__value_.__l.__data_;
        v25 = size - data;
        v26 = (size - data) >> 3;
        v27 = v26 + 1;
        if ((v26 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v28 = v20 - data;
        if (v28 >> 2 > v27)
        {
          v27 = v28 >> 2;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        v64 = v18 - 1;
        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&v18[-1], v29);
        }

        v30 = (size - data) >> 3;
        v31 = (8 * v26);
        v32 = v65[0];
        v65[0] = 0;
        v33 = (8 * v26 - 8 * v30);
        *v31 = v32;
        v23 = v31 + 1;
        memcpy(v33, data, v25);
        v34 = v18[-1].__r_.__value_.__l.__data_;
        v18[-1].__r_.__value_.__r.__words[0] = v33;
        v61 = v34;
        v18[-1].__r_.__value_.__l.__size_ = v23;
        v62 = v34;
        v35 = v18[-1].__r_.__value_.__r.__words[2];
        v18[-1].__r_.__value_.__r.__words[2] = 0;
        v63 = v35;
        v60 = v34;
        std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(&v60);
      }

      else
      {
        v22 = v65[0];
        v65[0] = 0;
        *size = v22;
        v23 = size + 8;
      }

      v18[-1].__r_.__value_.__l.__size_ = v23;
      v36 = v65[0];
      v65[0] = 0;
      if (v36)
      {
        (*(*v36 + 1))(v36);
      }

      if (__p)
      {
        v55 = __p;
        operator delete(__p);
      }

      ++v16;
    }

    while (v16 != v17);
  }

  v60 = 0;
  v61 = 0;
  v62 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v60, *(a1 + 72), *(a1 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  std::vector<std::string>::push_back[abi:ne200100](&v60, (a1 + 24));
  v37 = *(a1 + 152);
  __p = 0;
  v55 = 0;
  v56 = 0;
  (*(*v37 + 184))(v37, &v57, &v60, &__p, a4);
  v65[0] = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v65);
  v38 = *(a4 + 8);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(a5);
  *a5 = *(v38 - 24);
  *(a5 + 16) = *(v38 - 8);
  *(v38 - 24) = 0;
  *(v38 - 16) = 0;
  *(v38 - 8) = 0;
  __p = (*(a4 + 8) - 24);
  v39 = __p;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
  *(a4 + 8) = v39;
  __p = &v60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v60 = &v57;
  std::vector<std::pair<std::string,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::__destroy_vector::operator()[abi:ne200100](&v60);
}

void kaldi::quasar::CELabelEncoderNet::InitialStates(kaldi::quasar::CELabelEncoderNet *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = this + 96;
  if (*(this + 13) != *(this + 12))
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v5 = *(this + 19);
    v11 = 0;
    v13 = 0;
    v14 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
    (*(*v5 + 24))(&p_p, v5, &__p, 0);
    v6 = v16;
    if (v16 >= v17)
    {
      v8 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<std::string&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v15, this, &p_p);
      v9 = p_p;
      v16 = v8;
      p_p = 0;
      if (v9)
      {
        (*(*v9 + 1))(v9);
      }
    }

    else
    {
      if (*(this + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v16, *this, *(this + 1));
      }

      else
      {
        v7 = *this;
        v16->__r_.__value_.__r.__words[2] = *(this + 2);
        *&v6->__r_.__value_.__l.__data_ = v7;
      }

      v6[1].__r_.__value_.__r.__words[0] = p_p;
      v16 = (v6 + 32);
      p_p = 0;
    }

    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    v10 = *(this + 19);
    __p = 0;
    v13 = 0;
    v14 = 0;
    (*(*v10 + 128))(v10, &v15, v3, &__p, a2);
    p_p = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
    __p = &v15;
    std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }
}

void sub_1B57D7C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *__p, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v14 - 40);
  *(v14 - 40) = 0;
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
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CELabelEncoderNet::WarmUp(kaldi::quasar::CELabelEncoderNet *this)
{
  kaldi::quasar::CELabelEncoderNet::InitialStates(this, v6);
  LODWORD(v2) = *(this + 31);
  v4 = 0;
  v5 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v2, &v2 + 4, 1uLL);
  v2 = 0;
  kaldi::quasar::CELabelEncoderNet::Encode(this, v6, &__p, v6, &v2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  __p = v6;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B57D7D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14)
{
  if (a10)
  {
    kaldi::quasar::CEInferenceNet::Feedforward();
  }

  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEJointPredictorNetConfig::Read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v4 = kaldi::Input::Input(v5, a3, v6);
  kaldi::Input::Stream(v4);
  kaldi::quasar::CreateComputeEngineConfig(a2);
}

void sub_1B57D8558(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  kaldi::Input::~Input((v1 - 104));
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEJointPredictorNet::CEJointPredictorNet(kaldi::quasar::CEJointPredictorNetConfig *a1, uint64_t a2)
{
  *(kaldi::quasar::CEJointPredictorNetConfig::CEJointPredictorNetConfig(a1) + 16) = 0;
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
  kaldi::quasar::CEJointPredictorNetConfig::Read(a1, a2, __p);
}

void sub_1B57D86EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 16);
  *(v14 + 16) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  kaldi::quasar::CEJointPredictorNetConfig::~CEJointPredictorNetConfig(v14);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEJointPredictorNet::~CEJointPredictorNet(kaldi::quasar::CEJointPredictorNet *this)
{
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
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

void kaldi::quasar::CEJointPredictorNet::Predict(uint64_t a1, std::string::size_type *a2, std::string::size_type *a3, uint64_t *a4)
{
  if ((*(**a2 + 176))() != *(a1 + 104))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v29, "input_acoustic_embeddings->GetNumDims() == cfg_.input_shape_template.ndim");
    goto LABEL_26;
  }

  if ((*(**a2 + 184))(*a2, *(a1 + 100)) != *(a1 + 108))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v29, "input_acoustic_embeddings->GetDimSize(cfg_.input_shape_template.col_index) == InputDim()");
    goto LABEL_26;
  }

  if ((*(**a3 + 176))() != *(a1 + 104))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v29, "input_label_embeddings->GetNumDims() == cfg_.input_shape_template.ndim");
    goto LABEL_26;
  }

  if ((*(**a3 + 184))(*a3, *(a1 + 100)) != *(a1 + 108))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v29, "input_label_embeddings->GetDimSize(cfg_.input_shape_template.col_index) == InputDim()");
    goto LABEL_26;
  }

  v8 = (*(**a2 + 184))(*a2, *(a1 + 96));
  if (v8 != (*(**a3 + 184))(*a3, *(a1 + 96)))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v29, "input_acoustic_embeddings->GetDimSize(cfg_.input_shape_template.row_index) == input_label_embeddings->GetDimSize(cfg_.input_shape_template.row_index)");
LABEL_26:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v29);
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  v9 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v29, a1, *a2);
  v10 = v9;
  v30 = v9;
  v11 = *a3;
  if (v9 >= v31)
  {
    p_size = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v29, (a1 + 24), v11);
  }

  else
  {
    if (*(a1 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v9, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v12 = *(a1 + 24);
      v9->__r_.__value_.__r.__words[2] = *(a1 + 40);
      *&v9->__r_.__value_.__l.__data_ = v12;
    }

    v10[1].__r_.__value_.__r.__words[0] = v11;
    p_size = &v10[1].__r_.__value_.__l.__size_;
  }

  v30 = p_size;
  memset(v28, 0, sizeof(v28));
  v14 = *(a1 + 95);
  if (v14 < 0)
  {
    v14 = *(a1 + 80);
  }

  v15 = v14 == 0;
  v16 = 72;
  if (v15)
  {
    v16 = 48;
  }

  std::vector<std::string>::push_back[abi:ne200100](v28, (a1 + v16));
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v17 = *(a1 + 128);
  memset(v24, 0, sizeof(v24));
  (*(*v17 + 136))(v17, &v29, v28, v24, &v25);
  v32 = v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
  v18 = v26;
  v19 = *(v26 - 1);
  *(v26 - 1) = 0;
  v20 = *a4;
  *a4 = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
    v18 = v26;
  }

  v23 = *(v18 - 1);
  v22 = v18 - 1;
  v21 = v23;
  *v22 = 0;
  if (v23)
  {
    (*(*v21 + 8))(v21);
  }

  v26 = v22;
  v24[0] = &v25;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](v24);
  v25 = v28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
  v28[0] = &v29;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v28);
}

void kaldi::quasar::CEJointPredictorNet::Predict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a2 + 20);
  if (v5 != *(a3 + 20))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "input_acoustic_embeddings.NumRows() == input_label_embeddings.NumRows()");
    goto LABEL_16;
  }

  v7 = *(a2 + 16);
  if (v7 != *(a3 + 16))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "input_acoustic_embeddings.NumCols() == input_label_embeddings.NumCols()");
LABEL_16:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  kaldi::quasar::InputShapeTemplate::Get((a1 + 96), v5, v7, __p);
  v16 = 0;
  kaldi::quasar::CreateBufferFromMatrix(a1 + 128, a2, __p, &v16, &v17);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v14 = 0;
  kaldi::quasar::CreateBufferFromMatrix(a1 + 128, a3, __p, &v14, &v15);
  v11 = v14;
  v14 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  kaldi::quasar::CEJointPredictorNet::Predict(a1, &v17, &v15, a4);
  v12 = v15;
  v15 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v17;
  v17 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B57D8EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a11)
  {
    JUMPOUT(0x1B57D8E98);
  }

  JUMPOUT(0x1B57D8E74);
}

uint64_t kaldi::quasar::CEJointPredictorNet::WarmUp(kaldi::quasar::CEJointPredictorNet *this)
{
  kaldi::CuMatrix<float>::CuMatrix(v5, 1, *(this + 27), 0, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(v4, 1, *(this + 27), 0, 0, 0);
  v3 = 0;
  kaldi::quasar::CEJointPredictorNet::Predict(this, v5, v4, &v3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v4);
  return kaldi::CuMatrix<float>::~CuMatrix(v5);
}

void sub_1B57D8F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  if (a3)
  {
    kaldi::quasar::CEInferenceNet::Feedforward();
  }

  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

BOOL kaldi::quasar::CEJointPredictorNet::OutputsAreLogProbs(kaldi::quasar::CEJointPredictorNet *this)
{
  v1 = *(this + 95);
  if (v1 < 0)
  {
    v1 = *(this + 10);
  }

  return v1 != 0;
}

kaldi::quasar::CEAcousticEncoderNetConfig *kaldi::quasar::CEAcousticEncoderNetConfig::CEAcousticEncoderNetConfig(kaldi::quasar::CEAcousticEncoderNetConfig *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(this, "input_feats");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "");
  std::string::basic_string[abi:ne200100]<0>(this + 48, "output_embeddings");
  std::string::basic_string[abi:ne200100]<0>(this + 72, "");
  std::string::basic_string[abi:ne200100]<0>(this + 96, "");
  *(this + 120) = 0u;
  *(this + 23) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 136) = 0u;
  kaldi::quasar::InputShapeTemplate::InputShapeTemplate((this + 192));
  *(this + 212) = -1;
  *(this + 204) = -1;
  *(this + 220) = xmmword_1B5B25200;
  *(this + 30) = 0;
  return this;
}

void sub_1B57D9098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = (v10 + 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 144);
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

void kaldi::quasar::CEAcousticEncoderNetConfig::~CEAcousticEncoderNetConfig(kaldi::quasar::CEAcousticEncoderNetConfig *this)
{
  v2 = *(this + 30);
  *(this + 30) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

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

kaldi::quasar::CEJointPredictorNetConfig *kaldi::quasar::CEJointPredictorNetConfig::CEJointPredictorNetConfig(kaldi::quasar::CEJointPredictorNetConfig *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(this, "input_acoustic_embeddings");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "input_label_embeddings");
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  kaldi::quasar::InputShapeTemplate::InputShapeTemplate((this + 96));
  *(this + 108) = -1;
  *(this + 15) = 0;
  return this;
}

void sub_1B57D928C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
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

void kaldi::quasar::CEJointPredictorNetConfig::~CEJointPredictorNetConfig(kaldi::quasar::CEJointPredictorNetConfig *this)
{
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
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

void std::vector<std::pair<std::string,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<std::pair<std::string,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<std::string,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t std::vector<std::pair<std::string,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::__emplace_back_slow_path<std::string&,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<std::string>>>>(a1, v7);
  }

  v13 = 0;
  v14 = 48 * v3;
  v15 = 48 * v3;
  v16 = 0;
  std::pair<std::string const,std::vector<quasar::AlternativeSelectionSpan::Alternative>>::pair[abi:ne200100]<std::string const&,std::vector<quasar::AlternativeSelectionSpan::Alternative>,0>((48 * v3), a2, a3);
  v8 = *(a1 + 8) - *a1;
  v9 = (48 * v3 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 48 * v3 + 48;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  std::__split_buffer<std::pair<std::string,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::~__split_buffer(&v13);
  return 48 * v3 + 48;
}

void sub_1B57D9558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<std::pair<std::string,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::string,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<std::pair<std::string,std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy[abi:ne200100](v4, i - 48);
  }
}

void sub_1B57D9830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    quasar::BitmapLoaderImpl::~BitmapLoaderImpl(&a10);
    __cxa_begin_catch(exception_object);
    v20 = EarGeoLMHelperLogger();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v21)
      {
        [_EARGeoLMHelper initWithLocale:config:];
      }

      __cxa_end_catch();
    }

    else
    {
      if (v21)
      {
        [_EARGeoLMHelper initWithLocale:config:];
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B57D977CLL);
  }

  _Unwind_Resume(exception_object);
}

id EarGeoLMHelperLogger(void)
{
  if ((atomic_load_explicit(&qword_1EB90B7B8, memory_order_acquire) & 1) == 0)
  {
    EarGeoLMHelperLogger();
  }

  v1 = _MergedGlobals_5;

  return v1;
}

void sub_1B57D9B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    if (a17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    }

    if (a25 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    v27 = EarGeoLMHelperLogger();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v28)
      {
        [_EARGeoLMHelper initWithLocale:config:];
      }
    }

    else if (v28)
    {
      [_EARGeoLMHelper initWithLocale:config:];
    }

    __cxa_end_catch();
    JUMPOUT(0x1B57D9A9CLL);
  }

  _Unwind_Resume(exception_object);
}