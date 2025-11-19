void SipPCellularNetworkInfoHeader::~SipPCellularNetworkInfoHeader(void **this)
{
  *this = &unk_1F5ECDC48;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ECDC48;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SDPParser::parseMediaTitle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  std::string::operator=((a2 + 64), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1E4D45600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4D45694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parseMediaBandwidth(int a1, int a2, std::string *this)
{
  v4 = std::string::find(this, 58, 0);
  if (v4 != -1)
  {
    memset(&v22, 0, sizeof(v22));
    v5 = &v22;
    std::string::basic_string(&v22, this, 0, v4, &v14);
    memset(&v21, 0, sizeof(v21));
    std::string::basic_string(&v21, this, v4 + 1, 0xFFFFFFFFFFFFFFFFLL, &v14);
    v6 = 0;
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v22.__r_.__value_.__r.__words[0];
    }

    v8 = &SDPBandwidth::bwTypeLookup;
    do
    {
      v9 = *(v8 + 23);
      if (size == (v9 & ~(v9 >> 31)))
      {
        v10 = v9 >= 0 ? v8 : *v8;
        if (!memcmp(v5, v10, size))
        {
          goto LABEL_15;
        }
      }

      ++v6;
      v8 += 3;
    }

    while (v6 != 6);
    LODWORD(v6) = 0;
LABEL_15:
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v21;
    }

    else
    {
      v11 = v21.__r_.__value_.__r.__words[0];
    }

    v12 = atoll(v11);
    v15 = 1;
    v14 = &unk_1F5EC6670;
    v16 = v6;
    v17 = v12 != 0;
    v18 = v12;
    v19 = 2;
    v20 = 5;
    operator new();
  }

  return 0;
}

void sub_1E4D458C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parseMediaEncryptionKey()
{
  v7 = 9;
  strcpy(v6, "sdp.parse");
  v2[0] = 0;
  v5 = 0;
  v0 = ims::error(v6, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v0 + 8), "SDP_MEDIA_ENCRYPTION_KEY_TAG NOT IMPLEMENTED", 44);
  *(v0 + 17) = 0;
  (*(*v0 + 64))(v0, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v0 + 17) = 0;
  if (v5 == 1 && v4 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  return 1;
}

void sub_1E4D459D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parseMediaAttribute(int a1, uint64_t a2, std::string *this)
{
  v5 = std::string::find(this, 58, 0);
  memset(&v16, 0, sizeof(v16));
  std::string::basic_string(&v16, this, 0, v5, &v14);
  memset(&v15, 0, sizeof(v15));
  if (v5 != -1)
  {
    std::string::basic_string(&v14, this, v5 + 1, 0xFFFFFFFFFFFFFFFFLL, &v17);
    v15 = v14;
  }

  v6 = qword_1EE2BD020;
  if (!qword_1EE2BD020)
  {
    goto LABEL_12;
  }

  v7 = &qword_1EE2BD020;
  do
  {
    v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v6 + 32), &v16.__r_.__value_.__l.__data_);
    if ((v8 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v6 = *(v6 + ((v8 >> 4) & 8));
  }

  while (v6);
  if (v7 == &qword_1EE2BD020 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v16, v7 + 4) & 0x80) != 0)
  {
LABEL_12:
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    }

    else
    {
      v13 = v16;
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v15;
    }

    SDPUnsupportedAttribute::SDPUnsupportedAttribute(&v14, &v13, &__p);
    std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPUnsupportedAttribute>();
  }

  v17 = 0;
  v9 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&SDPParser::mediaAttributeParsers, &v17, &v16.__r_.__value_.__l.__data_);
  if (!v9)
  {
    operator new();
  }

  v11 = (*(v9 + 56))(a2, &v15);
  if ((*(&v15.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_1E4D45C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,void *>>>::operator()[abi:ne200100](v24 + 8, v23);
  if (*(v25 - 73) < 0)
  {
    operator delete(*(v25 - 96));
  }

  if (*(v25 - 41) < 0)
  {
    operator delete(*(v25 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t LazuliMessage::LazuliMessage(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = &unk_1F5EC7C10;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *(a1 + 80) = v4;
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return a1;
}

void sub_1E4D45DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(v10 + 32);
  a10 = v12;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<LazuliHeader>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<BambiCall>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void LazuliMessage::~LazuliMessage(void **this)
{
  *this = &unk_1F5EC7C10;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table((this + 4));
  v2 = this + 1;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void LazuliMessage::addHeader(void *a1, void *a2, const void **a3, int a4)
{
  v48[0] = a2;
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 4, a2);
  v9 = *a3;
  v8 = a3[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = v7[6];
  v7[5] = v9;
  v7[6] = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = a1 + 1;
  if (!a4)
  {
    v17 = a1[2];
    v18 = a1[3];
    if (v17 >= v18)
    {
      v24 = (v17 - *v11) >> 4;
      v25 = v24 + 1;
      if ((v24 + 1) >> 60)
      {
        goto LABEL_56;
      }

      v26 = v18 - *v11;
      if (v26 >> 3 > v25)
      {
        v25 = v26 >> 3;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFF0)
      {
        v27 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      v49 = a1 + 1;
      if (v27)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>((a1 + 1), v27);
      }

      v29 = 16 * v24;
      v30 = *a3;
      *(16 * v24) = *a3;
      if (*(&v30 + 1))
      {
        atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v20 = (v29 + 16);
      v31 = a1[1];
      v32 = a1[2] - v31;
      v33 = v29 - v32;
      memcpy((v29 - v32), v31, v32);
      v34 = a1[1];
      a1[1] = v33;
      a1[2] = v20;
      v35 = a1[3];
      a1[3] = 0;
      v48[2] = v34;
      v48[3] = v35;
      v48[0] = v34;
      v48[1] = v34;
      std::__split_buffer<std::shared_ptr<BambiCall>>::~__split_buffer(v48);
    }

    else
    {
      *v17 = *a3;
      v19 = a3[1];
      v17[1] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
      }

      v20 = v17 + 2;
    }

    a1[2] = v20;
    return;
  }

  v13 = a1[1];
  v12 = a1[2];
  v14 = a1[3];
  if (v12 >= v14)
  {
    v21 = ((v12 - v13) >> 4) + 1;
    if (!(v21 >> 60))
    {
      v22 = v14 - v13;
      if (v22 >> 3 > v21)
      {
        v21 = v22 >> 3;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF0)
      {
        v23 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>((a1 + 1), v23);
      }

      v49 = a1 + 1;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<BambiConferenceParticipant>>>((a1 + 1), 1uLL);
    }

LABEL_56:
    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  if (v13 == v12)
  {
    *v12 = *a3;
    v28 = a3[1];
    *(v12 + 1) = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(v28 + 1, 1uLL, memory_order_relaxed);
    }

    a1[2] = v12 + 16;
  }

  else
  {
    v15 = v12 - 16;
    if (v12 < 0x10)
    {
      v16 = a1[2];
    }

    else
    {
      *v12 = *v15;
      v16 = (v12 + 16);
      *v15 = 0;
      *(v12 - 1) = 0;
    }

    a1[2] = v16;
    if (v12 != v13 + 16)
    {
      v36 = (v12 - 8);
      v37 = v13 - 32;
      v38 = v12 - v13;
      do
      {
        v39 = &v37[v38];
        v40 = *&v37[v38];
        *v39 = 0;
        *(v39 + 1) = 0;
        v41 = *v36;
        *(v36 - 1) = v40;
        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        v36 -= 2;
        v38 -= 16;
      }

      while (v38 != 16);
      v16 = a1[2];
    }

    v42 = v16 <= a3 || v13 > a3;
    v43 = 2;
    if (v42)
    {
      v43 = 0;
    }

    v44 = &a3[v43];
    v46 = *v44;
    v45 = v44[1];
    if (v45)
    {
      atomic_fetch_add_explicit(v45 + 1, 1uLL, memory_order_relaxed);
    }

    v47 = *(v13 + 1);
    *v13 = v46;
    *(v13 + 1) = v45;
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }
  }
}

void LazuliMessage::messageId(LazuliMessage *this@<X0>, void *a2@<X8>)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 4, "Message-ID");
  if (!v3)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v4 = v3;
  v5 = v3[5];
  v6 = v4[6];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
LABEL_10:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if (!v6)
    {
      return;
    }

    goto LABEL_6;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*v5 + 32))(v5, a2);
  if (!v6)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1E4D46428(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL LazuliMessage::isFinal(LazuliMessage *this)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 4, "Byte-Range");
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = v1[5];
  v4 = v2[6];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return 1;
  }

  v7 = v6;
  if (!v4)
  {
    return v6[14] == v6[15];
  }

  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  v8 = v7[14] == v7[15];
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v8;
}

void LazuliMessage::encodeHeaders(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (1)
    {
      v5 = *v2;
      v6 = v2[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 64))(v5, a2, 0);
      LoggableString::LoggableString(__p, "\r\n");
      (*(*a2 + 40))(a2, __p);
      if (v8 < 0)
      {
        break;
      }

      if (v6)
      {
        goto LABEL_6;
      }

LABEL_7:
      v2 += 2;
      if (v2 == v3)
      {
        return;
      }
    }

    operator delete(__p[0]);
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_7;
  }
}

void sub_1E4D46634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliMessage::encode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 56))(a1);
  LazuliMessage::encodeHeaders(a1, a2);
  if ((*(a1 + 127) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 112))
    {
      return (*(*a1 + 64))(a1, a2, a3);
    }
  }

  else if (!*(a1 + 127))
  {
    return (*(*a1 + 64))(a1, a2, a3);
  }

  LoggableString::LoggableString(__p, "\r\n");
  (*(*a2 + 40))(a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a2 + 32))(a2, a1 + 104);
  LoggableString::LoggableString(__p, "\r\n");
  (*(*a2 + 40))(a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*a1 + 64))(a1, a2, a3);
}

void sub_1E4D467DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliMessage::encodeBody(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 127) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 112))
    {
      return;
    }
  }

  else if (!*(a1 + 127))
  {
    return;
  }

  LoggableString::LoggableString(__p, "\r\n");
  (*(*a2 + 40))(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a2 + 32))(a2, a1 + 104);
  LoggableString::LoggableString(__p, "\r\n");
  (*(*a2 + 40))(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D46904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliMessage::loggableName(LazuliMessage *this@<X0>, std::string *a2@<X8>)
{
  (*(*this + 48))(&__p);
  LoggableString::LoggableString(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D469BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliMessage::transactionId(LazuliMessage *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 103) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 10), *(this + 11));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 5);
    a2->__r_.__value_.__r.__words[2] = *(this + 12);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<LazuliHeader>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1E4D46C6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t SDPMediaAcceptTypes::SDPMediaAcceptTypes(uint64_t a1, uint64_t *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "accept-types");
  *(a1 + 8) = 1;
  *a1 = &unk_1F5EF5FB8;
  if (SHIBYTE(v6) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), __p[0], __p[1]);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v6;
  }

  *a1 = &unk_1F5EC7C80;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 40, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

void sub_1E4D46E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaAcceptTypes::SDPMediaAcceptTypes(SDPMediaAcceptTypes *this, const SDPMediaAcceptTypes *a2)
{
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    __p = *(a2 + 16);
  }

  *(this + 8) = 1;
  *this = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(this + 16) = __p;
  }

  *this = &unk_1F5EC7C80;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 40, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
}

void sub_1E4D46F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaAcceptTypes::~SDPMediaAcceptTypes(void **this)
{
  *this = &unk_1F5EC7C80;
  v2 = this + 5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  SDPMediaAcceptTypes::~SDPMediaAcceptTypes(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SDPMediaAcceptTypes::value@<X0>(SDPMediaAcceptTypes *this@<X0>, _BYTE *a2@<X8>)
{
  v26 = 0;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  *__p = 0u;
  v23 = 0u;
  v20 = 0u;
  *__src = 0u;
  v18 = 0u;
  v19 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v4 = *(this + 6) - *(this + 5);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    v8 = v7 - 1;
    if (v7 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    do
    {
      v10 = *(this + 5) + v5;
      v11 = *(v10 + 23);
      if (v11 >= 0)
      {
        v12 = *(this + 5) + v5;
      }

      else
      {
        v12 = *v10;
      }

      if (v11 >= 0)
      {
        v13 = *(v10 + 23);
      }

      else
      {
        v13 = *(v10 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v12, v13);
      if (v6 < v8)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, " ", 1);
      }

      ++v6;
      v5 += 24;
    }

    while (v9 != v6);
  }

  if ((BYTE8(v24) & 0x10) != 0)
  {
    v15 = v24;
    if (v24 < __src[1])
    {
      *&v24 = __src[1];
      v15 = __src[1];
    }

    v16 = __src[0];
  }

  else
  {
    if ((BYTE8(v24) & 8) == 0)
    {
      v14 = 0;
      a2[23] = 0;
      goto LABEL_27;
    }

    v16 = *(&v19 + 1);
    v15 = *(&v20 + 1);
  }

  v14 = v15 - v16;
  if ((v15 - v16) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  a2[23] = v14;
  if (v14)
  {
    memmove(a2, v16, v14);
  }

LABEL_27:
  a2[v14] = 0;
  *&v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v18 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v18 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v19);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v25);
}

void sub_1E4D47304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a23);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 24;
  v74 = a2 - 48;
  v9 = a2 - 72;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:
        v57 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10 + 3, v10);
        v58 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, v10 + 3);
        if (v57 < 0)
        {
          if (v58 < 0)
          {
            goto LABEL_96;
          }

          v122 = v10[2];
          v98 = *v10;
          *v10 = *(v10 + 3);
          v10[2] = v10[5];
          *(v10 + 3) = v98;
          v10[5] = v122;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, v10 + 3) & 0x80) == 0)
          {
            return;
          }

          v70 = v10[5];
          v71 = *(v10 + 3);
          v72 = *(a2 - 1);
          *(v10 + 3) = *v8;
          v10[5] = v72;
          *v8 = v71;
LABEL_97:
          *(a2 - 1) = v70;
          return;
        }

        if ((v58 & 0x80000000) == 0)
        {
          return;
        }

        v59 = v10[5];
        v60 = *(v10 + 3);
        v61 = *(a2 - 1);
        *(v10 + 3) = *v8;
        v10[5] = v61;
        *v8 = v60;
        *(a2 - 1) = v59;
LABEL_71:
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10 + 3, v10) & 0x80) != 0)
        {
          v121 = v10[2];
          v97 = *v10;
          *v10 = *(v10 + 3);
          v10[2] = v10[5];
          *(v10 + 3) = v97;
          v10[5] = v121;
        }

        return;
      case 4uLL:

        std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,std::ranges::less &,std::string *,0>(v10, v10 + 3, v10 + 6, a2 - 3);
        return;
      case 5uLL:
        std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,std::ranges::less &,std::string *,0>(v10, v10 + 3, v10 + 6, v10 + 9);
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, v10 + 9) & 0x80) == 0)
        {
          return;
        }

        v62 = v10[11];
        v63 = *(v10 + 9);
        v64 = *(a2 - 1);
        *(v10 + 9) = *v8;
        v10[11] = v64;
        *v8 = v63;
        *(a2 - 1) = v62;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10 + 9, v10 + 6) & 0x80) == 0)
        {
          return;
        }

        v65 = v10[8];
        v66 = *(v10 + 3);
        *(v10 + 3) = *(v10 + 9);
        v10[8] = v10[11];
        *(v10 + 9) = v66;
        v10[11] = v65;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10 + 6, v10 + 3) & 0x80) == 0)
        {
          return;
        }

        v67 = v10[5];
        v68 = *(v10 + 3);
        *(v10 + 3) = *(v10 + 3);
        v10[5] = v10[8];
        *(v10 + 3) = v68;
        v10[8] = v67;
        goto LABEL_71;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,std::string *>(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 >= 0xC01)
    {
      v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v10[3 * v15], v10);
      v18 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, (a1 + 24 * v15));
      if (v17 < 0)
      {
        if (v18 < 0)
        {
          v105 = *(a1 + 16);
          v81 = *a1;
          v29 = *v8;
          *(a1 + 16) = *(a2 - 1);
          *a1 = v29;
        }

        else
        {
          v104 = *(a1 + 16);
          v80 = *a1;
          v25 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v25;
          v16[2] = v104;
          *v16 = v80;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, (a1 + 24 * v15)) & 0x80) == 0)
          {
            goto LABEL_29;
          }

          v105 = v16[2];
          v81 = *v16;
          v26 = *v8;
          v16[2] = *(a2 - 1);
          *v16 = v26;
        }

        *v8 = v81;
        *(a2 - 1) = v105;
      }

      else if (v18 < 0)
      {
        v100 = v16[2];
        v76 = *v16;
        v19 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v19;
        *v8 = v76;
        *(a2 - 1) = v100;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24 * v15), a1) & 0x80) != 0)
        {
          v101 = *(a1 + 16);
          v77 = *a1;
          v20 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v20;
          v16[2] = v101;
          *v16 = v77;
        }
      }

LABEL_29:
      v30 = (a1 + 24 * v15 - 24);
      v31 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v30, (a1 + 24));
      v32 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v74, v30);
      if (v31 < 0)
      {
        if (v32 < 0)
        {
          v38 = *(a1 + 40);
          v39 = *(a1 + 24);
          v40 = *(a2 - 4);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v40;
          *v74 = v39;
          *(a2 - 4) = v38;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v35 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v30;
          *(a1 + 40) = v35;
          *(a1 + 24 * v15 - 8) = v110;
          *v30 = v86;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v74, v30) & 0x80) != 0)
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v30;
            v36 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 4);
            *v30 = v36;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v32 < 0)
      {
        v108 = *(a1 + 24 * v15 - 8);
        v84 = *v30;
        v33 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 4);
        *v30 = v33;
        *v74 = v84;
        *(a2 - 4) = v108;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v30, (a1 + 24)) & 0x80) != 0)
        {
          v85 = *(a1 + 24);
          v109 = *(a1 + 40);
          v34 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v30;
          *(a1 + 40) = v34;
          *(a1 + 24 * v15 - 8) = v109;
          *v30 = v85;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v41 + 24), (a1 + 48));
      v43 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 9, (v41 + 24));
      if (v42 < 0)
      {
        if (v43 < 0)
        {
          v48 = *(a1 + 64);
          v49 = *(a1 + 48);
          v50 = *(a2 - 7);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v50;
          *v9 = v49;
        }

        else
        {
          v90 = *(a1 + 48);
          v114 = *(a1 + 64);
          v46 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v46;
          *(v41 + 40) = v114;
          *(v41 + 24) = v90;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 9, (v41 + 24)) & 0x80) == 0)
          {
            goto LABEL_48;
          }

          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v47 = *v9;
          *(v41 + 40) = *(a2 - 7);
          *(v41 + 24) = v47;
          *v9 = v91;
          v48 = v115;
        }

        *(a2 - 7) = v48;
      }

      else if (v43 < 0)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v44 = *v9;
        *(v41 + 40) = *(a2 - 7);
        *(v41 + 24) = v44;
        *v9 = v88;
        *(a2 - 7) = v112;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v41 + 24), (a1 + 48)) & 0x80) != 0)
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v45 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v45;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

LABEL_48:
      v51 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, v30);
      v52 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v41 + 24), v16);
      if ((v51 & 0x80) == 0)
      {
        if (v52 < 0)
        {
          v116 = v16[2];
          v92 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, v30) & 0x80) != 0)
          {
            v117 = v30[2];
            v93 = *v30;
            *v30 = *v16;
            v30[2] = v16[2];
            v16[2] = v117;
            *v16 = v93;
          }
        }

        goto LABEL_57;
      }

      if (v52 < 0)
      {
        v119 = v30[2];
        v95 = *v30;
        *v30 = *(v41 + 24);
        v30[2] = *(v41 + 40);
LABEL_56:
        *(v41 + 40) = v119;
        *(v41 + 24) = v95;
      }

      else
      {
        v118 = v30[2];
        v94 = *v30;
        *v30 = *v16;
        v30[2] = v16[2];
        v16[2] = v118;
        *v16 = v94;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v41 + 24), v16) & 0x80) != 0)
        {
          v119 = v16[2];
          v95 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
          goto LABEL_56;
        }
      }

LABEL_57:
      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v53;
      v16[2] = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v21 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, &v10[3 * v15]);
    v22 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1);
    if (v21 < 0)
    {
      if (v22 < 0)
      {
        v107 = v16[2];
        v83 = *v16;
        v37 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v37;
      }

      else
      {
        v106 = v16[2];
        v82 = *v16;
        v27 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v27;
        *(a1 + 16) = v106;
        *a1 = v82;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1) & 0x80) == 0)
        {
          goto LABEL_58;
        }

        v107 = *(a1 + 16);
        v83 = *a1;
        v28 = *v8;
        *(a1 + 16) = *(a2 - 1);
        *a1 = v28;
      }

      *v8 = v83;
      *(a2 - 1) = v107;
      goto LABEL_58;
    }

    if (v22 < 0)
    {
      v102 = *(a1 + 16);
      v78 = *a1;
      v23 = *v8;
      *(a1 + 16) = *(a2 - 1);
      *a1 = v23;
      *v8 = v78;
      *(a2 - 1) = v102;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, (a1 + 24 * v15)) & 0x80) != 0)
      {
        v103 = v16[2];
        v79 = *v16;
        v24 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v24;
        *(a1 + 16) = v103;
        *a1 = v79;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 - 24), a1) & 0x80) == 0)
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(a1, a2);
      goto LABEL_65;
    }

    v54 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(a1, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v54);
    v10 = v54 + 3;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>((v54 + 3), a2))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, v54, a3, -v12, a5 & 1);
      v10 = v54 + 3;
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 < 2)
  {
    return;
  }

  if (v14 != 2)
  {
    goto LABEL_10;
  }

  v69 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, v10);
  if (v69 < 0)
  {
LABEL_96:
    v123 = v10[2];
    v99 = *v10;
    v73 = *v8;
    v10[2] = *(a2 - 1);
    *v10 = v73;
    *v8 = v99;
    v70 = v123;
    goto LABEL_97;
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    v16 = v2;
    v17 = v3;
    v6 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v6;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, v9) & 0x80) != 0)
        {
          v14 = *v8;
          v15 = v8[2];
          v8[1] = 0;
          v8[2] = 0;
          *v8 = 0;
          v10 = v7;
          do
          {
            v11 = a1 + v10;
            if (*(a1 + v10 + 47) < 0)
            {
              operator delete(*(v11 + 24));
            }

            *(v11 + 24) = *v11;
            *(v11 + 40) = *(v11 + 16);
            *(v11 + 23) = 0;
            *v11 = 0;
            if (!v10)
            {
              v13 = a1;
              goto LABEL_13;
            }

            v10 -= 24;
          }

          while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, (v10 + a1)) & 0x80) != 0);
          v12 = *(a1 + v10 + 47);
          v13 = a1 + v10 + 24;
          if (v12 < 0)
          {
            operator delete(*v13);
          }

LABEL_13:
          *v13 = v14;
          *(v13 + 16) = v15;
        }

        v6 = v8 + 3;
        v7 += 24;
      }

      while (v8 + 3 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v13 = v2;
    v14 = v3;
    v5 = a1;
    v6 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v7 = a1 - 3;
      do
      {
        v8 = v5;
        v5 = v6;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, v8) & 0x80) != 0)
        {
          v11 = *v5;
          v12 = v5[2];
          v5[1] = 0;
          v5[2] = 0;
          *v5 = 0;
          v9 = v7;
          do
          {
            if (*(v9 + 71) < 0)
            {
              operator delete(v9[6]);
            }

            *(v9 + 3) = *(v9 + 3);
            v9[8] = v9[5];
            *(v9 + 47) = 0;
            *(v9 + 24) = 0;
            v10 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v11, v9);
            v9 -= 3;
          }

          while (v10 < 0);
          if (*(v9 + 71) < 0)
          {
            operator delete(v9[6]);
          }

          *(v9 + 3) = v11;
          v9[8] = v12;
        }

        v6 = v5 + 3;
        v7 += 3;
      }

      while (v5 + 3 != a2);
    }
  }
}

void **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(void **a1, unint64_t a2)
{
  v2 = a2;
  v14 = *a1;
  v15 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, (a2 - 24)) & 0x80) != 0)
  {
    v5 = a1;
    do
    {
      v5 += 3;
    }

    while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, v5) & 0x80) == 0);
  }

  else
  {
    v4 = a1 + 3;
    do
    {
      v5 = v4;
      if (v4 >= v2)
      {
        break;
      }

      v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, v4);
      v4 = v5 + 3;
    }

    while ((v6 & 0x80) == 0);
  }

  if (v5 < v2)
  {
    do
    {
      v2 -= 24;
    }

    while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, v2) & 0x80) != 0);
  }

  while (v5 < v2)
  {
    v7 = *v5;
    v17 = v5[2];
    v16 = v7;
    v8 = *v2;
    v5[2] = *(v2 + 16);
    *v5 = v8;
    v9 = v16;
    *(v2 + 16) = v17;
    *v2 = v9;
    do
    {
      v5 += 3;
    }

    while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, v5) & 0x80) == 0);
    do
    {
      v2 -= 24;
    }

    while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v14, v2) & 0x80) != 0);
  }

  v10 = v5 - 3;
  if (v5 - 3 == a1)
  {
    if (*(v5 - 1) < 0)
    {
      operator delete(*a1);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v11 = *v10;
    a1[2] = *(v5 - 1);
    *a1 = v11;
    *(v5 - 1) = 0;
    *(v5 - 24) = 0;
  }

  v12 = v14;
  *(v5 - 1) = v15;
  *v10 = v12;
  return v5;
}

void *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(__int128 *a1, void *a2)
{
  v4 = 0;
  v15 = *a1;
  v16 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  do
  {
    v4 += 24;
  }

  while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + v4), &v15) & 0x80) != 0);
  v5 = a1 + v4;
  if (v4 == 24)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      a2 -= 3;
    }

    while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v15) & 0x80) == 0);
  }

  else
  {
    do
    {
      a2 -= 3;
    }

    while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v15) & 0x80) == 0);
  }

  v6 = (a1 + v4);
  if (v5 < a2)
  {
    v7 = a2;
    do
    {
      v17 = *v6;
      v8 = v17;
      v18 = v6[2];
      v9 = v18;
      v10 = v7[2];
      *v6 = *v7;
      v6[2] = v10;
      v7[2] = v9;
      *v7 = v8;
      do
      {
        v6 += 3;
      }

      while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, &v15) & 0x80) != 0);
      do
      {
        v7 -= 3;
      }

      while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, &v15) & 0x80) == 0);
    }

    while (v6 < v7);
  }

  v11 = (v6 - 3);
  if (v6 - 3 == a1)
  {
    if (*(v6 - 1) < 0)
    {
      operator delete(*a1);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v12 = *v11;
    *(a1 + 2) = *(v6 - 1);
    *a1 = v12;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v13 = v15;
  *(v6 - 1) = v16;
  *v11 = v13;
  return v6 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, void **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), a1);
        v15 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, (a1 + 24));
        if (v14 < 0)
        {
          if (v15 < 0)
          {
LABEL_26:
            v30 = *(a1 + 16);
            v31 = *a1;
            v33 = v5[2];
            *a1 = *v5;
            *(a1 + 16) = v33;
            goto LABEL_27;
          }

          v28 = *(a1 + 16);
          v29 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v29;
          *(a1 + 40) = v28;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, (a1 + 24)) & 0x80) != 0)
          {
            v30 = *(a1 + 40);
            v31 = *(a1 + 24);
            v32 = v5[2];
            *(a1 + 24) = *v5;
            *(a1 + 40) = v32;
LABEL_27:
            *v5 = v31;
            v5[2] = v30;
          }

          return 1;
        }

        if ((v15 & 0x80000000) == 0)
        {
          return 1;
        }

        v16 = *(a1 + 40);
        v17 = *(a1 + 24);
        v18 = v5[2];
        *(a1 + 24) = *v5;
        *(a1 + 40) = v18;
        *v5 = v17;
        v5[2] = v16;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,std::ranges::less &,std::string *,0>(a1, (a1 + 24), (a1 + 48), a2 - 3);
        return 1;
      case 5:
        v6 = a2 - 3;
        std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,std::ranges::less &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, (a1 + 72)) & 0x80) == 0)
        {
          return 1;
        }

        v7 = *(a1 + 88);
        v8 = *(a1 + 72);
        v9 = v6[2];
        *(a1 + 72) = *v6;
        *(a1 + 88) = v9;
        *v6 = v8;
        v6[2] = v7;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 72), (a1 + 48)) & 0x80) == 0)
        {
          return 1;
        }

        v10 = *(a1 + 64);
        v11 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v11;
        *(a1 + 88) = v10;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 48), (a1 + 24)) & 0x80) == 0)
        {
          return 1;
        }

        v12 = *(a1 + 40);
        v13 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v13;
        *(a1 + 64) = v12;
        break;
      default:
        goto LABEL_18;
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), a1) & 0x80) != 0)
    {
      v19 = *(a1 + 16);
      v20 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v20;
      *(a1 + 40) = v19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 - 3, a1) & 0x80) != 0)
    {
      goto LABEL_26;
    }

    return 1;
  }

LABEL_18:
  v21 = (a1 + 48);
  v22 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), a1);
  v23 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 48), (a1 + 24));
  if (v22 < 0)
  {
    if (v23 < 0)
    {
      v36 = *(a1 + 16);
      v37 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v34 = *(a1 + 16);
      v35 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v35;
      *(a1 + 40) = v34;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 48), (a1 + 24)) & 0x80) == 0)
      {
        goto LABEL_33;
      }

      v36 = *(a1 + 40);
      v37 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v37;
    *(a1 + 64) = v36;
  }

  else if (v23 < 0)
  {
    v24 = *(a1 + 40);
    v25 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v25;
    *(a1 + 64) = v24;
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), a1) & 0x80) != 0)
    {
      v26 = *(a1 + 16);
      v27 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v27;
      *(a1 + 40) = v26;
    }
  }

LABEL_33:
  v38 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v38, v21) & 0x80) != 0)
    {
      v47 = *v38;
      v48 = v38[2];
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0;
      v41 = v39;
      do
      {
        v42 = a1 + v41;
        if (*(a1 + v41 + 95) < 0)
        {
          operator delete(*(v42 + 72));
        }

        *(v42 + 72) = *(v42 + 48);
        *(v42 + 88) = *(v42 + 64);
        *(v42 + 71) = 0;
        *(v42 + 48) = 0;
        if (v41 == -48)
        {
          v45 = a1;
          goto LABEL_44;
        }

        v43 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v47, (a1 + v41 + 24));
        v41 -= 24;
      }

      while (v43 < 0);
      v44 = *(a1 + v41 + 95);
      v45 = a1 + v41 + 72;
      if (v44 < 0)
      {
        operator delete(*v45);
      }

LABEL_44:
      *v45 = v47;
      *(v45 + 16) = v48;
      if (++v40 == 8)
      {
        return v38 + 3 == a2;
      }
    }

    v21 = v38;
    v39 += 24;
    v38 += 3;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

void *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,std::string *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v13, a1) & 0x80) != 0)
        {
          v14 = v13[2];
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          v13[2] = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = (a2 - 3);
      do
      {
        v19 = *a1;
        *v28 = *(a1 + 8);
        *&v28[7] = *(a1 + 15);
        v20 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v21 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v17);
        v22 = v21;
        v23 = *(v21 + 23);
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v28;
          *(v22 + 15) = *&v28[7];
          *(v22 + 23) = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = *(v18 + 2);
          *v22 = v24;
          *v18 = v19;
          *(v18 + 1) = *v28;
          *(v18 + 15) = *&v28[7];
          *(v18 + 23) = v20;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v22 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v22 - a1 + 24) >> 3));
        }

        v18 = (v18 - 24);
      }

      while (v17-- > 2);
    }

    a3 = v13;
  }

  v26 = *MEMORY[0x1E69E9840];
  return a3;
}

void sub_1E4D4893C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v21 = v4;
    v22 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v11 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v12 = a1 + 24 * v11;
      v13 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v13 < a3 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24 * v11), (v12 + 24)) & 0x80u) != 0)
      {
        v12 += 24;
        v11 = v13;
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, v7) & 0x80) == 0)
      {
        v19 = *v7;
        v20 = v7[1].n128_u64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        while (1)
        {
          v15 = v12;
          if (v7[1].n128_i8[7] < 0)
          {
            operator delete(v7->n128_u64[0]);
          }

          v16 = *v12;
          v7[1].n128_u64[0] = *(v12 + 16);
          *v7 = v16;
          *(v12 + 23) = 0;
          *v12 = 0;
          if (v9 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = a1 + 24 * v17;
          v18 = 2 * v11 + 2;
          if (v18 < a3 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24 * v17), (v12 + 24)) & 0x80u) != 0)
          {
            v12 += 24;
            v17 = v18;
          }

          v7 = v15;
          v11 = v17;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, &v19) & 0x80) != 0)
          {
            if (v15[1].n128_i8[7] < 0)
            {
              operator delete(v15->n128_u64[0]);
            }

            break;
          }
        }

        result = v19;
        v15[1].n128_u64[0] = v20;
        *v15 = result;
      }
    }
  }

  return result;
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 24 * v5;
    v8 = (v7 + 24);
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = (v7 + 48);
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v7 + 24), (v7 + 48)) & 0x80u) != 0)
      {
        v8 = v11;
        v5 = v10;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v12 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v12;
    *(v8 + 23) = 0;
    *v8 = 0;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v15 = v4;
    v16 = v5;
    v7 = (a4 - 2) >> 1;
    v8 = (a1 + 24 * v7);
    v9 = (a2 - 24);
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8, (a2 - 24)) & 0x80) != 0)
    {
      v13 = *v9;
      v14 = *(v9 + 2);
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *v9 = 0;
      while (1)
      {
        v11 = v8;
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        v12 = *v8;
        *(v9 + 2) = *(v8 + 2);
        *v9 = v12;
        *(v8 + 23) = 0;
        *v8 = 0;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 24 * v7);
        v9 = v11;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8, &v13) & 0x80) == 0)
        {
          if (*(v11 + 23) < 0)
          {
            operator delete(*v11);
          }

          break;
        }
      }

      result = *&v13;
      *v11 = v13;
      *(v11 + 2) = v14;
    }
  }

  return result;
}

uint64_t SipDialogManager::SipDialogManager(uint64_t a1, std::__shared_weak_count **a2)
{
  v53 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5EBEAE0;
  *(a1 + 8) = &unk_1F5EBED98;
  std::string::basic_string[abi:ne200100]<0>(v31, "sip.dlg");
  v4 = std::__shared_weak_count::lock(a2[1]);
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v25, &(*a2)[8].__shared_owners_);
  ImsLogContainer::ImsLogContainer(a1 + 16, v31, v25);
  if (v28 == 1 && v27 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v23, "sip.dlg");
  v5 = a2[1];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *a2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  shared_owners = v7[8].__shared_owners_;
  shared_weak_owners = v7[8].__shared_weak_owners_;
  if (SHIBYTE(v7[9].__shared_weak_owners_) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v7[9].__vftable, v7[9].__shared_owners_);
  }

  else
  {
    v21 = v7[9];
  }

  v22 = v7[10].__vftable;
  ims::getQueue(&v30);
  ClientConfig::getLogTag(&shared_owners, &v29);
  if ((v24 & 0x80u) == 0)
  {
    v8 = v23;
  }

  else
  {
    v8 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v9 = v24;
  }

  else
  {
    v9 = v23[1];
  }

  v10 = std::string::insert(&v29, 0, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v32 = v10->__r_.__value_.__r.__words[2];
  *v31 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = v30;
  if (v32 >= 0)
  {
    v13 = v31;
  }

  else
  {
    v13 = v31[0];
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 184) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 192), "com.apple.ipTelephony", v13);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  *(a1 + 152) = &unk_1F5EC7F38;
  if (SHIBYTE(v21.__shared_weak_owners_) < 0)
  {
    operator delete(v21.__vftable);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  *a1 = &unk_1F5EC7CD8;
  *(a1 + 8) = &unk_1F5EC7D48;
  *(a1 + 16) = &unk_1F5EC7D90;
  *(a1 + 152) = &unk_1F5EC7DF0;
  *(a1 + 200) = *a2;
  v14 = a2[1];
  *(a1 + 208) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 1065353216;
  *(a1 + 264) = 0;
  *(a1 + 256) = a1 + 264;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *v31 = SipRequest::kMethodAck;
  v33 = SipRequest::kMethodBye;
  v32 = 0x300000000000000;
  v34 = 0x300000000000000;
  v35 = *"CANCEL";
  v36 = 0x600000000000000;
  v38 = 0x400000000000000;
  v37 = *"INFO";
  v39 = *"INVITE";
  v40 = 0x600000000000000;
  v42 = 0x700000000000000;
  v41 = *"MESSAGE";
  v43 = *"NOTIFY";
  v44 = 0x600000000000000;
  v46 = 0x700000000000000;
  v45 = *"OPTIONS";
  v47 = *"PRACK";
  v48 = 0x500000000000000;
  v50 = 0x500000000000000;
  v49 = *"REFER";
  v52 = 0x600000000000000;
  v51 = *"UPDATE";
  do
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 256, &v31[v15]);
    v15 += 3;
  }

  while (v15 != 33);
  v16 = 33;
  do
  {
    if (SHIBYTE(v31[v16 - 1]) < 0)
    {
      operator delete(v29.__r_.__value_.__r.__words[v16 + 1]);
    }

    v16 -= 3;
  }

  while (v16 * 8);
  v17 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E4D49174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, dispatch_object_t object, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  ImsLogContainer::~ImsLogContainer(v46);
  _Unwind_Resume(a1);
}

void SipDialogManager::~SipDialogManager(SipDialogManager *this)
{
  *this = &unk_1F5EC7CD8;
  *(this + 1) = &unk_1F5EC7D48;
  *(this + 2) = &unk_1F5EC7D90;
  *(this + 19) = &unk_1F5EC7DF0;
  SipDialogManager::deinitialize(this);
  v3 = (this + 280);
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__tree<std::string>::destroy(this + 256, *(this + 33));
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 192);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 20);
  *(this + 2) = &unk_1F5ED7318;
  if (*(this + 96) == 1 && *(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  SipDialogManager::~SipDialogManager(this);

  JUMPOUT(0x1E69235B0);
}

void SipDialogManager::deinitialize(SipDialogManager *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v28, "sip.dlg");
  v24[0] = 0;
  v27 = 0;
  v3 = ims::debug(v2, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "deinitializing bambi dialogs", 28);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
  }

  v4 = (this + 232);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    std::vector<std::string>::push_back[abi:ne200100](&v28, v4 + 1);
  }

  v5 = v28;
  for (i = v29; v5 != i; v5 += 24)
  {
    v22 = 0;
    v23 = 0;
    (*(*this + 24))(&v22, this, v5);
    if (v22)
    {
      SipDialog::forceDeinitialization(v22);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "sip.dlg");
      v16[0] = 0;
      v19 = 0;
      v7 = ims::warn(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "dialog ", 7);
      *(v7 + 17) = 0;
      (*(*v7 + 32))(v7, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " disappeared during deinitialization", 36);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  if (*(this + 30))
  {
    v8 = (*(*(this + 2) + 56))(this + 16);
    (*(*(this + 2) + 16))(this + 16, v8);
    MEMORY[0x1E6923370](*(v8 + 8), *(this + 30));
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " dialogs remaining after deinitialize.  Clearing.", 49);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (*(this + 30))
    {
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__deallocate_node(this + 216, *(this + 29));
      *(this + 29) = 0;
      v9 = *(this + 28);
      if (v9)
      {
        for (j = 0; j != v9; ++j)
        {
          *(*(this + 27) + 8 * j) = 0;
        }
      }

      *(this + 30) = 0;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v20, "sip.dlg");
    v12[0] = 0;
    v15 = 0;
    v11 = ims::debug(v20, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "all bambi dialogs deinitialized", 31);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v15 == 1 && v14 < 0)
    {
      operator delete(v13);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  v20[0] = &v28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v20);
}

void sub_1E4D4981C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  a30 = (v37 - 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

void non-virtual thunk toSipDialogManager::~SipDialogManager(SipDialogManager *this)
{
  SipDialogManager::~SipDialogManager((this - 8));
}

{
  SipDialogManager::~SipDialogManager((this - 16));
}

{
  SipDialogManager::~SipDialogManager((this - 152));
}

{
  SipDialogManager::~SipDialogManager((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipDialogManager::~SipDialogManager((this - 16));

  JUMPOUT(0x1E69235B0);
}

{
  SipDialogManager::~SipDialogManager((this - 152));

  JUMPOUT(0x1E69235B0);
}

void SipDialogManager::clientConfig(SipDialogManager *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 26);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = *(this + 25);
  if (!v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
LABEL_7:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    return;
  }

  v8 = *(v7 + 200);
  *(a2 + 8) = *(v7 + 208);
  *a2 = v8;
  if (*(v7 + 239) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 16), *(v7 + 216), *(v7 + 224));
  }

  else
  {
    v9 = *(v7 + 216);
    *(a2 + 32) = *(v7 + 232);
    *(a2 + 16) = v9;
  }

  *(a2 + 40) = *(v7 + 240);

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void SipDialogManager::initializeMobileOriginatedDialog(SipDialogManager *this, const SipUri *a2)
{
  v3 = *(a2 + 26);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 25);
      if (v7)
      {
        v8 = *(v7 + 248);
        v9 = *(v7 + 256);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            goto LABEL_11;
          }
        }

        else if (!v8)
        {
          goto LABEL_11;
        }

        v10 = *(a2 + 21);
        if (v10)
        {
          v11 = *(a2 + 20);
          if (std::__shared_weak_count::lock(v10))
          {
            operator new();
          }
        }

        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

LABEL_11:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  *this = 0;
  *(this + 1) = 0;
}

void sub_1E4D49CD0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipDialogManager::addDialog(uint64_t a1, void *a2)
{
  v3 = (a1 + 16);
  v4 = (*(*(a1 + 16) + 64))(a1 + 16);
  (*(*v3 + 16))(v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "added [Dialog ", 14);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, *a2 + 2376);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "] to map", 8);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3 + 25, (*a2 + 2376));
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = v5[6];
  v5[5] = v7;
  v5[6] = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void SipDialogManager::updateDialogMap(uint64_t a1, uint64_t a2, const void **a3, const void **a4)
{
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v7)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>>>::__erase_unique<std::string>((a1 + 216), a2);
  }

  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 216), a3);
  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = v8[6];
  v8[5] = v10;
  v8[6] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void SipDialogManager::initializeSession(SipDialogManager *this@<X0>, void *a2@<X8>)
{
  v11 = 0;
  v12 = 0;
  SipDialogManager::initializeMobileOriginatedDialog(&v11, this);
  v6 = v11;
  if (v11)
  {
    *a2 = 0;
    a2[1] = 0;
    std::__shared_weak_count::lock(*(v6 + 232));
    v7 = *(v6 + 224) + 200;
    SipSession::create(a2);
  }

  v9 = *(this + 2);
  v8 = this + 16;
  v10 = (*(v9 + 56))(v8);
  (*(*v8 + 16))(v8, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "unable to initialize MO dialog", 30);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  *a2 = 0;
  a2[1] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1E4D4A23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v17 = *(v14 + 8);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void SipDialogManager::initializeSession(SipDialogManager *this@<X0>, const std::string *a2@<X2>, void *a3@<X8>)
{
  v36 = 0;
  v37 = 0;
  SipDialogManager::initializeMobileOriginatedDialog(&v36, this);
  v7 = v36;
  if (v36)
  {
    v8 = &a2[1];
    SipIdString::set(v36 + 2456, a2 + 1);
    v9 = &a2[2];
    SipIdString::set(v7 + 2512, a2 + 2);
    v10 = &a2[6];
    std::string::operator=((v7 + 2656), a2 + 6);
    if ((SHIBYTE(a2[3].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (!a2[3].__r_.__value_.__l.__size_)
      {
        goto LABEL_8;
      }
    }

    else if (!*(&a2[3].__r_.__value_.__s + 23))
    {
LABEL_8:
      if (a2[9].__r_.__value_.__l.__size_ == a2[9].__r_.__value_.__r.__words[0])
      {
        if ((SHIBYTE(a2[5].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (!a2[5].__r_.__value_.__l.__size_)
          {
            goto LABEL_49;
          }
        }

        else if (!*(&a2[5].__r_.__value_.__s + 23))
        {
LABEL_49:
          *(v7 + 2689) = a2[4].__r_.__value_.__s.__data_[16];
          std::string::operator=((v7 + 2624), a2 + 8);
          *a3 = 0;
          a3[1] = 0;
          std::__shared_weak_count::lock(*(v7 + 232));
          v26 = *(v7 + 224) + 200;
          SipSession::create(a3);
        }
      }

      v35 = 0;
      v14 = xpc_dictionary_create(0, 0, 0);
      v15 = v14;
      if (v14)
      {
        v35 = v14;
      }

      else
      {
        v15 = xpc_null_create();
        v35 = v15;
        if (!v15)
        {
          v16 = xpc_null_create();
          v15 = 0;
          goto LABEL_20;
        }
      }

      if (MEMORY[0x1E6924740](v15) == MEMORY[0x1E69E9E80])
      {
        xpc_retain(v15);
        goto LABEL_21;
      }

      v16 = xpc_null_create();
LABEL_20:
      v35 = v16;
LABEL_21:
      xpc_release(v15);
      if (SHIBYTE(a2[1].__r_.__value_.__r.__words[2]) < 0)
      {
        v8 = *v8;
      }

      v33 = xpc_string_create(v8);
      if (!v33)
      {
        v33 = xpc_null_create();
      }

      v31 = &v35;
      v32 = "kConversationId";
      xpc::dict::object_proxy::operator=(&v31, &v33, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v33);
      v33 = 0;
      if (SHIBYTE(a2[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v9 = *v9;
      }

      v29 = xpc_string_create(v9);
      if (!v29)
      {
        v29 = xpc_null_create();
      }

      v31 = &v35;
      v32 = "kContributionId";
      xpc::dict::object_proxy::operator=(&v31, &v29, &v30);
      xpc_release(v30);
      v30 = 0;
      xpc_release(v29);
      v29 = 0;
      if (SHIBYTE(a2[6].__r_.__value_.__r.__words[2]) < 0)
      {
        v10 = *v10;
      }

      v27 = xpc_string_create(v10);
      if (!v27)
      {
        v27 = xpc_null_create();
      }

      v31 = &v35;
      v32 = "kTransactionId";
      xpc::dict::object_proxy::operator=(&v31, &v27, &v28);
      xpc_release(v28);
      v28 = 0;
      xpc_release(v27);
      v27 = 0;
      if ((SHIBYTE(a2[5].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (!a2[5].__r_.__value_.__l.__size_)
        {
          goto LABEL_42;
        }
      }

      else if (!*(&a2[5].__r_.__value_.__s + 23))
      {
LABEL_42:
        if (a2[9].__r_.__value_.__l.__size_ == a2[9].__r_.__value_.__r.__words[0])
        {
LABEL_48:
          xpc_release(v35);
          v7 = v36;
          goto LABEL_49;
        }

        v21 = v36;
        v22 = v35;
        if (v35)
        {
          xpc_retain(v35);
          v23 = (v21 + 2680);
        }

        else
        {
          v22 = xpc_null_create();
          v23 = (v21 + 2680);
          if (!v22)
          {
            v24 = xpc_null_create();
            v22 = 0;
            goto LABEL_47;
          }
        }

        xpc_retain(v22);
        v24 = v22;
LABEL_47:
        v25 = *v23;
        *v23 = v24;
        xpc_release(v25);
        xpc_release(v22);
        goto LABEL_48;
      }

      v17 = v35;
      if (v35)
      {
        xpc_retain(v35);
        v18 = (v7 + 2648);
      }

      else
      {
        v17 = xpc_null_create();
        v18 = (v7 + 2648);
        if (!v17)
        {
          v19 = xpc_null_create();
          v17 = 0;
          goto LABEL_41;
        }
      }

      xpc_retain(v17);
      v19 = v17;
LABEL_41:
      v20 = *v18;
      *v18 = v19;
      xpc_release(v20);
      xpc_release(v17);
      goto LABEL_42;
    }

    SipIdString::set(v7 + 2568, a2 + 3);
    goto LABEL_8;
  }

  v12 = *(this + 2);
  v11 = this + 16;
  v13 = (*(v12 + 56))(v11);
  (*(*v11 + 16))(v11, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "unable to initialize MO dialog", 30);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  *a3 = 0;
  a3[1] = 0;
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }
}

void sub_1E4D4A8C8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v3 - 88);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(exception_object);
}

void SipDialogManager::initializeUssdSession(const SipUri *a1@<X0>, const std::string *a2@<X1>, void *a3@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 26);
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = *(a1 + 25);
      if (v8)
      {
        v47 = 0;
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
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        v26 = 0u;
        memset(v27, 0, sizeof(v27));
        v25 = 0u;
        *v23 = 0u;
        v24 = 0u;
        SipUri::SipUri(v23);
        memset(&v22, 0, sizeof(v22));
        SipUserAgent::publicDomain(*(v8 + 248), &v22);
        memset(&__p, 0, sizeof(__p));
        SipStack::phoneContext(v8, &__p);
        SipUri::setUser(v23, a2, &__p);
        SipHost::SipHost(buf, &v22);
        if (SHIBYTE(v29) < 0)
        {
          *&v29 = 3;
          v9 = *(&v28 + 1);
        }

        else
        {
          v9 = &v28 + 8;
          HIBYTE(v29) = 3;
        }

        strcpy(v9, "sip");
        if (SBYTE7(v34) < 0)
        {
          *v33 = 0;
          *(&v33 + 1) = 0;
        }

        else
        {
          LOBYTE(v33) = 0;
          BYTE7(v34) = 0;
        }

        if (SBYTE7(v37) < 0)
        {
          *v36 = 0;
          *(&v36 + 1) = 0;
        }

        else
        {
          LOBYTE(v36) = 0;
          BYTE7(v37) = 0;
        }

        if (SHIBYTE(v38) < 0)
        {
          **(&v37 + 1) = 0;
          *&v38 = 0;
        }

        else
        {
          BYTE8(v37) = 0;
          HIBYTE(v38) = 0;
        }

        if (SBYTE7(v40) < 0)
        {
          *v39 = 0;
          *(&v39 + 1) = 0;
        }

        else
        {
          LOBYTE(v39) = 0;
          BYTE7(v40) = 0;
        }

        SipHost::operator=(&v23[1], buf);
        LOBYTE(v42) = 0;
        SipHost::~SipHost(buf);
        std::string::basic_string[abi:ne200100]<0>(v11, "user");
        std::string::basic_string[abi:ne200100]<0>(&__str, "dialstring");
        v48 = buf;
        v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v27[8], buf);
        std::string::operator=((v12 + 56), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v50 < 0)
        {
          operator delete(*buf);
        }

        *buf = 0;
        *&buf[8] = 0;
        SipDialogManager::initializeMobileOriginatedDialog(buf, a1);
        v13 = *buf;
        if (*buf)
        {
          *a3 = 0;
          a3[1] = 0;
          std::__shared_weak_count::lock(*(v13 + 232));
          v14 = *(v13 + 224);
          std::allocate_shared[abi:ne200100]<SipUssdSession,std::allocator<SipUssdSession>,ClientConfig const&,0>();
        }

        v16 = *(a1 + 2);
        v15 = (a1 + 16);
        v17 = (*(v16 + 56))(v15);
        (*(*v15 + 16))(v15, v17);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "unable to initialize MO dialog", 30);
        *(v17 + 17) = 0;
        (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v17 + 17) = 0;
        *a3 = 0;
        a3[1] = 0;
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        SipUri::~SipUri(v23);
LABEL_36:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        goto LABEL_37;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *(a1 + 24);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    (*(*(a1 + 19) + 16))(v23, a1 + 19);
    v19 = (SBYTE7(v24) & 0x80u) == 0 ? v23 : v23[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v19;
    _os_log_error_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNo sipstack", buf, 0x16u);
    if (SBYTE7(v24) < 0)
    {
      operator delete(v23[0]);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  if (v7)
  {
    goto LABEL_36;
  }

LABEL_37:
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E4D4AEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v37 = *(v33 + 8);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v38 = *(v35 - 120);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  SipUri::~SipUri(&a32);
  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  _Unwind_Resume(a1);
}

void SipDialogManager::subscribeToEventPackage(SipUri *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v14 = 0;
  v15 = 0;
  SipDialogManager::initializeMobileOriginatedDialog(&v14, a1);
  v6 = v14;
  v9 = *(a1 + 2);
  v8 = a1 + 16;
  v7 = v9;
  if (v14)
  {
    v10 = (*(v7 + 64))(v8);
    (*(*v8 + 16))(v8, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "created ", 8);
    *(v10 + 17) = 0;
    (*(*(v6 + 8) + 16))(v6 + 8, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " for ", 5);
    *(v10 + 17) = 0;
    v11 = (*(*a2 + 16))(a2);
    LoggableString::LoggableString(&__p, v11);
    (*(*v10 + 40))(v10, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " subscription", 13);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    memset(&__p, 0, sizeof(__p));
    SipDialog::subscribeToEventPackage(v6, a2, &__p);
  }

  v12 = (*(v7 + 56))(v8);
  (*(*v8 + 16))(v8, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "unable to initialize MO dialog", 30);
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  *a3 = 0;
  a3[1] = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1E4D4B2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void SipDialogManager::dialogWithCallId(void *a1@<X0>, std::string *a2@<X1>, void *a3@<X8>)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100]((a1 + 27), a2);
  v7 = a1[28];
  if (v7)
  {
    v8 = v6;
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= *&v7)
      {
        v11 = v6 % *&v7;
      }
    }

    else
    {
      v11 = (*&v7 - 1) & v6;
    }

    v12 = *(a1[27] + 8 * v11);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v8 == v14)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100]((a1 + 27), i + 2, &a2->__r_.__value_.__l.__data_))
          {
            v18 = i[5];
            v19 = i[6];
            *a3 = v18;
            a3[1] = v19;
            if (v19)
            {
              atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
            }

            if (!v18)
            {
              v21 = a1[2];
              v20 = a1 + 2;
              v22 = (*(v21 + 64))(v20);
              (*(*v20 + 16))(v20, v22);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "we have dialog weak reference. But dialog is gone ", 50);
              *(v22 + 17) = 0;
              ObfuscatedString::ObfuscatedString(v23, a2);
              (*(*v22 + 56))(v22, v23);
              (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v22 + 17) = 0;
              if (v26 < 0)
              {
                operator delete(__p);
              }

              if (v24 < 0)
              {
                operator delete(v23[0]);
              }
            }

            return;
          }
        }

        else
        {
          if (v10 > 1)
          {
            if (v14 >= *&v7)
            {
              v14 %= *&v7;
            }
          }

          else
          {
            v14 &= *&v7 - 1;
          }

          if (v14 != v11)
          {
            break;
          }
        }
      }
    }
  }

  v16 = a1[2];
  v15 = a1 + 2;
  v17 = (*(v16 + 64))(v15);
  (*(*v15 + 16))(v15, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "no existing dialog with callId ", 31);
  *(v17 + 17) = 0;
  ObfuscatedString::ObfuscatedString(v23, a2);
  (*(*v17 + 56))(v17, v23);
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v17 + 17) = 0;
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_1E4D4B62C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipDialogManager::dialogForRequest(uint64_t a1, uint64_t *a2)
{
  v3 = SipMessage::header<SipCallIdHeader>(*a2);
  if (v3)
  {
    v4 = (v3 + 64);
  }

  else
  {
    v4 = &ims::kEmptyString;
  }

  v5 = *(*a1 + 24);

  return v5(a1, v4);
}

void SipDialogManager::handleAck(void *a1, uint64_t *a2)
{
  memset(&v29, 0, sizeof(v29));
  if ((SipMessage::headerValueAsString(*a2, "Call-ID") & 1) == 0)
  {
    v10 = a1[2];
    v9 = a1 + 2;
    v11 = (*(v10 + 32))(v9);
    (*(*v9 + 16))(v9, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "No Call-ID header in ACK", 24);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    goto LABEL_24;
  }

  v27 = 0;
  v28 = 0;
  v4 = a2[1];
  v25 = *a2;
  v26 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 32))(&v27, a1, &v25);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (!v27)
  {
    v13 = a1[2];
    v12 = a1 + 2;
    v14 = (*(v13 + 32))(v12);
    (*(*v12 + 16))(v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "received ACK with unknown Call-ID ", 34);
    *(v14 + 17) = 0;
    ObfuscatedString::ObfuscatedString(&v20, &v29);
    (*(*v14 + 56))(v14, &v20);
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v24 < 0)
    {
      operator delete(__p);
    }

    if (v22 < 0)
    {
      operator delete(v20);
    }

    goto LABEL_22;
  }

  SipDialog::sipSession(v27, &v20);
  v5 = v21;
  if (!v21)
  {
    v6 = 0;
    goto LABEL_20;
  }

  v6 = std::__shared_weak_count::lock(v21);
  v7 = v20;
  std::__shared_weak_count::__release_weak(v5);
  if (!v6 || !v7)
  {
LABEL_20:
    v16 = a1[2];
    v15 = a1 + 2;
    v17 = (*(v16 + 32))(v15);
    (*(*v15 + 16))(v15, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "received ACK for dialog with no SIP session", 43);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (!v6)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v8 = a2[1];
  v18 = *a2;
  v19 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v7 + 256))(v7, &v18);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

LABEL_21:
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
LABEL_22:
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

LABEL_24:
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D4BAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (*(v22 - 49) < 0)
  {
    operator delete(*(v22 - 72));
  }

  _Unwind_Resume(a1);
}

void SipDialogManager::createDialogForServerTransaction(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a1[26];
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = a1[25];
      if (v8)
      {
        v10 = *(v8 + 248);
        v9 = *(v8 + 256);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = v9;
        if (v10)
        {
          v11 = *(*a2 + 272);
          v39 = *(*a2 + 264);
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          }

          v12 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((v39 + 72), "Replaces");
          if (v12)
          {
            v13 = v12[5];
            if (v13)
            {
              v14 = **v13;
              if (v15)
              {
                v16 = a1 + 2;
                v17 = (*(a1[2] + 64))(a1 + 2);
                (*(a1[2] + 16))(a1 + 2, v17);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "found Replaces header in INVITE", 31);
                *(v17 + 17) = 0;
                (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v17 + 17) = 0;
                memset(&v40, 0, sizeof(v40));
                if (v15[127] < 0)
                {
                  std::string::__init_copy_ctor_external(&v40, *(v15 + 13), *(v15 + 14));
                }

                else
                {
                  v40 = *(v15 + 104);
                }

                memset(&__str, 0, sizeof(__str));
                v24 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v15 + 72), "from-tag");
                v25 = (v24 + 56);
                if (v15 + 80 == v24)
                {
                  v25 = &ims::kEmptyString;
                }

                if (*(v25 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&__str, *v25, *(v25 + 1));
                }

                else
                {
                  __str = *v25;
                }

                memset(&v52, 0, sizeof(v52));
                v26 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v15 + 72), "to-tag");
                v27 = (v26 + 56);
                if (v15 + 80 == v26)
                {
                  v27 = &ims::kEmptyString;
                }

                if (*(v27 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v52, *v27, *(v27 + 1));
                }

                else
                {
                  v52 = *v27;
                }

                size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
                if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  size = v40.__r_.__value_.__l.__size_;
                }

                if (!size)
                {
                  goto LABEL_51;
                }

                v29 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v29 = __str.__r_.__value_.__l.__size_;
                }

                if (!v29)
                {
                  goto LABEL_51;
                }

                v30 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
                if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v30 = v52.__r_.__value_.__l.__size_;
                }

                if (!v30 || ((*(*a1 + 24))(__p, a1, &v40), (v31 = __p[0]) == 0))
                {
LABEL_51:
                  v32 = (*(*v16 + 64))(a1 + 2);
                  (*(*v16 + 16))(a1 + 2, v32);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "can't find matching dialog for callId: ", 39);
                  *(v32 + 17) = 0;
                  ObfuscatedString::ObfuscatedString(__p, &v40);
                  (*(*v32 + 56))(v32, __p);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), ", fromTag: ", 11);
                  *(v32 + 17) = 0;
                  ObfuscatedString::ObfuscatedString(buf, &__str);
                  (*(*v32 + 56))(v32, buf);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), ", toTag: ", 9);
                  *(v32 + 17) = 0;
                  ObfuscatedString::ObfuscatedString(v45, &v52);
                  (*(*v32 + 56))(v32, v45);
                  (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v32 + 17) = 0;
                  if (SHIBYTE(v47) < 0)
                  {
                    operator delete(v46[1]);
                  }

                  if (SHIBYTE(v46[0]) < 0)
                  {
                    operator delete(v45[0]);
                  }

                  if (v57 < 0)
                  {
                    operator delete(v56);
                  }

                  if (v55 < 0)
                  {
                    operator delete(*buf);
                  }

                  if (SHIBYTE(v44[1]) < 0)
                  {
                    operator delete(v43);
                  }

                  if (v42 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v31 = 0;
                }

                if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v52.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v40.__r_.__value_.__l.__data_);
                }

                v33 = *v16;
                if (v31)
                {
                  v34 = (*(v33 + 64))(a1 + 2);
                  (*(*v16 + 16))(a1 + 2, v34);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "replaces header matches dialog:", 31);
                  *(v34 + 17) = 0;
                  (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v34 + 17) = 0;
                  v48[0] = 0;
                  v51 = 0;
                  v35 = ims::debug((a1 + 3), v48);
                  SipDialog::printDialogInfo(v31, v35);
                  if (v51 == 1 && v50 < 0)
                  {
                    operator delete(v49);
                  }
                }

                else
                {
                  v36 = (*(v33 + 48))(a1 + 2);
                  (*(*v16 + 16))(a1 + 2, v36);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "no matching dialog found for replaces header", 44);
                  *(v36 + 17) = 0;
                  (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v36 + 17) = 0;
                }
              }
            }
          }

          v20 = a1[21];
          if (v20)
          {
            v21 = a1[20];
            if (std::__shared_weak_count::lock(v20))
            {
              operator new();
            }
          }

          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v22 = a1[24];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          (*(a1[19] + 16))(__p, a1 + 19);
          v37 = v42 >= 0 ? __p : __p[0];
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v37;
          _os_log_error_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNo user agent", buf, 0x16u);
          if (v42 < 0)
          {
            operator delete(__p[0]);
          }
        }

        *a3 = 0;
        a3[1] = 0;
        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v18 = a1[24];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    (*(a1[19] + 16))(__p, a1 + 19);
    v23 = v42 >= 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v23;
    _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNo sipstack", buf, 0x16u);
    if (v42 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *a3 = 0;
  a3[1] = 0;
LABEL_17:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E4D4D25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  LazuliSessionOptions::~LazuliSessionOptions(&STACK[0x3F0]);
  BambiCallOptions::~BambiCallOptions(&a42);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  v45 = STACK[0x370];
  ImsResult::~ImsResult(&STACK[0x310]);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  _Unwind_Resume(a1);
}

void sub_1E4D4D5C8()
{
  if (!v0)
  {
    JUMPOUT(0x1E4D4D5C0);
  }

  JUMPOUT(0x1E4D4D5B8);
}

void BambiCallTerminationReason::~BambiCallTerminationReason(BambiCallTerminationReason *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
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

void *SipMessage::header<SipReferredByHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "Referred-By");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[5];
  if (!v2)
  {
    return 0;
  }

  v3 = **v2;
}

uint64_t SipDialogManager::handleNewServerTransaction(void *a1, SipServerTransaction **a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v3 = a1[26];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = a1[25];
      if (v6)
      {
        v8 = *(*a2 + 33);
        v7 = *(*a2 + 34);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          v81 = 0uLL;
          v80 = v7;
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v81 = 0uLL;
          v80 = 0;
        }

        v79 = v8;
        (*(*a1 + 32))(&v81, a1, &v79);
        if (v80)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v80);
        }

        v12 = v81;
        if (v81)
        {
          v13 = a2[1];
          v77 = *a2;
          v78 = v13;
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipDialog::addServerTransaction(v12, &v77);
          if (v78)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v78);
          }

          v10 = 1;
LABEL_41:
          if (*(&v81 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v81 + 1));
          }

          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }

LABEL_45:
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          result = v10;
          goto LABEL_46;
        }

        v14 = SipMessage::header<SipToHeader>(v8);
        if (v14)
        {
          v15 = SipUriHeader::tag(v14);
        }

        else
        {
          v15 = &ims::kEmptyString;
        }

        v17 = *(v15 + 1);
        if (*(v15 + 23) >= 0)
        {
          v17 = *(v15 + 23);
        }

        v18 = *(*v8 + 120);
        if (!v17)
        {
          v28 = v18(v8);
          v29 = *(v28 + 23);
          v30 = v29;
          if ((v29 & 0x80u) != 0)
          {
            v29 = *(v28 + 8);
          }

          if (v29 == 6 && (v30 >= 0 ? (v31 = v28) : (v31 = *v28), (v32 = *v31, v33 = *(v31 + 4), v32 == *"INVITE") ? (v34 = v33 == *"TE") : (v34 = 0), v34))
          {
            if ((*(v6 + 2817) & 1) == 0 && (SipStack::registeredForVoice(v6) & 1) == 0 && (*(v6 + 296) & 1) == 0)
            {
              v59 = a1[2];
              v58 = a1 + 2;
              v60 = (*(v59 + 48))(v58);
              (*(*v58 + 16))(v58, v60);
              v61 = ImsOutStream::operator<<(v60, "unable to create new dialog for incoming ");
              v62 = (*(*v8 + 120))(v8);
              LoggableString::LoggableString(&__p, v62);
              (*(*v61 + 40))(v61, &__p);
              v63 = ImsOutStream::operator<<(v61, ": stack is not registered for voice");
              (*(*v63 + 64))(v63, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v63[17] = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              memset(&buf, 0, sizeof(buf));
              if (ims::AccessNetwork::isLTE((v6 + 3432)))
              {
                std::string::basic_string[abi:ne200100]<0>(v70, "NotVoiceRegisteredNonVoiceLTE");
                SipStack::callTerminationReason(v6);
              }

              if (ims::AccessNetwork::isWifi((v6 + 3432)))
              {
                v64 = *a2;
                SipServerTransaction::rejectTransactionWithStatus();
              }

              std::string::basic_string[abi:ne200100]<0>(v70, "NotVoiceRegisteredNoLTE");
              SipStack::callTerminationReason(v6);
            }

            __p.__r_.__value_.__r.__words[2] = 0;
            v72 = 0;
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
            __p.__r_.__value_.__l.__size_ = &_bambiDomain;
            v73 = 0;
            v38 = a2[1];
            v68 = *a2;
            v69 = v38;
            if (v38)
            {
              atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*a1 + 40))(&buf, a1, &v68, &__p);
            v39 = *&buf.__r_.__value_.__l.__data_;
            *&buf.__r_.__value_.__l.__data_ = 0uLL;
            v40 = *(&v81 + 1);
            v81 = v39;
            if (v40)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v40);
              if (buf.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](buf.__r_.__value_.__l.__size_);
              }
            }

            if (v69)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v69);
            }

            v42 = a1 + 2;
            v41 = a1[2];
            if (!v81)
            {
              v56 = (*(v41 + 48))(a1 + 2);
              (*(*v42 + 16))(v42, v56);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "unable to create new dialog for incoming ", 41);
              *(v56 + 17) = 0;
              v57 = (*(*v8 + 120))(v8);
              LoggableString::LoggableString(&buf, v57);
              (*(*v56 + 40))(v56, &buf);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), ": ", 2);
              *(v56 + 17) = 0;
              (*(__p.__r_.__value_.__r.__words[0] + 16))(&__p, v56);
              (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v56 + 17) = 0;
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              SipServerTransaction::rejectTransactionWithResult(*a2, &__p);
            }

            v43 = (*(v41 + 64))(a1 + 2);
            (*(*v42 + 16))(a1 + 2, v43);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v43 + 8), "created ", 8);
            *(v43 + 17) = 0;
            (*(*(v81 + 8) + 16))(v81 + 8, v43);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v43 + 8), " for incoming ", 14);
            *(v43 + 17) = 0;
            v44 = (*(*v8 + 120))(v8);
            LoggableString::LoggableString(&buf, v44);
            (*(*v43 + 40))(v43, &buf);
            (*(*v43 + 64))(v43, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v43 + 17) = 0;
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            v45 = *(&v81 + 1);
            v67 = v81;
            if (*(&v81 + 1))
            {
              atomic_fetch_add_explicit((*(&v81 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            SipDialogManager::addDialog(a1, &v67);
            if (v45)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v45);
            }

            v46 = v81;
            v47 = a2[1];
            v65 = *a2;
            v66 = v47;
            if (v47)
            {
              atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipDialog::addServerTransaction(v46, &v65);
            if (v66)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v66);
            }

            v83 = 0u;
            v84 = 0u;
            v85 = 0u;
            v86 = 0u;
            buf.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
            buf.__r_.__value_.__l.__size_ = &_bambiDomain;
            LODWORD(buf.__r_.__value_.__r.__words[2]) = 0;
            v10 = (*(_bambiDomain + 24))(&_bambiDomain, 0) ^ 1;
            ImsResult::~ImsResult(&buf);
            ImsResult::~ImsResult(&__p);
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_41;
        }

        v19 = v18(v8);
        v20 = *(v19 + 23);
        v21 = v20;
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(v19 + 8);
        }

        if (v20 == 6)
        {
          v22 = v21 >= 0 ? v19 : *v19;
          v23 = *v22;
          v24 = *(v22 + 4);
          if (v23 == *"NOTIFY" && v24 == *"FY")
          {
            v35 = SipMessage::header<SipSubscriptionStateHeader>(v8);
            if (v35)
            {
              v36 = (v35 + 13);
              v37 = *(v35 + 127);
              if (v37 < 0)
              {
                if (v35[14] != 10)
                {
                  goto LABEL_39;
                }

                v36 = *v36;
              }

              else if (v37 != 10)
              {
                goto LABEL_39;
              }

              v48 = *v36;
              v49 = *(v36 + 4);
              if (v48 == *"terminated" && v49 == *"ed")
              {
                v52 = a1[2];
                v51 = a1 + 2;
                v53 = (*(v52 + 64))(v51);
                (*(*v51 + 16))(v51, v53);
                v54 = ImsOutStream::operator<<(v53, "received NOTIFY with state terminated for unknown dialog. Being nice and returning a 200 OK.");
                (*(*v54 + 64))(v54, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v54[17] = 0;
                v55 = *a2;
                std::string::basic_string[abi:ne200100]<0>(&__p, "");
                SipServerTransaction::rejectTransactionWithStatus();
              }
            }
          }
        }

LABEL_39:
        v26 = *a2;
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        SipServerTransaction::rejectTransactionWithStatus();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = a1[24];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    (*(a1[19] + 16))(&__p, a1 + 19);
    v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
    *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v16;
    _os_log_error_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNo sipstack", &buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v10 = 0;
  result = 0;
  if (v5)
  {
    goto LABEL_45;
  }

LABEL_46:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4D4E1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  BambiCallTerminationReason::~BambiCallTerminationReason(&a21);
  if (*(v44 - 153) < 0)
  {
    operator delete(*(v44 - 176));
  }

  v46 = *(v44 - 184);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  _Unwind_Resume(a1);
}

void *SipMessage::header<SipSubscriptionStateHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "Subscription-State");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[5];
  if (!v2)
  {
    return 0;
  }

  v3 = **v2;
}

void SipDialogManager::dialogTerminated(void *a1, const void **a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1 + 27, a2);
  if (v4)
  {
    v5 = v4;
    v6 = v4[6];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = a1[36];
    v8 = a1[37];
    if (v7 >= v8)
    {
      v13 = a1[35];
      v14 = (v7 - v13) >> 4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 60)
      {
        std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
      }

      v16 = v8 - v13;
      if (v16 >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v18 = 16 * v14;
      v19 = *(v4 + 5);
      *(16 * v14) = v19;
      if (*(&v19 + 1))
      {
        atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v10 = (v18 + 16);
      v20 = a1[35];
      v21 = a1[36] - v20;
      v22 = v18 - v21;
      memcpy((v18 - v21), v20, v21);
      a1[35] = v22;
      a1[36] = v10;
      a1[37] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v7 = v4[5];
      v9 = v4[6];
      v7[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
      }

      v10 = v7 + 2;
    }

    a1[36] = v10;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>>>::remove(a1 + 27, v5, v41);
    v23 = std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](v41);
    v24 = std::string::basic_string[abi:ne200100]<0>(v23, "sip.dlg");
    v37[0] = 0;
    v40 = 0;
    v25 = ims::debug(v24, v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "removed [Dialog ", 16);
    *(v25 + 17) = 0;
    (*(*v25 + 32))(v25, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "] from map", 10);
    *(v25 + 17) = 0;
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    v11 = std::string::basic_string[abi:ne200100]<0>(v41, "sip.dlg");
    v33[0] = 0;
    v36 = 0;
    v12 = ims::error(v11, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "dialogTerminated called on unknown dialog ", 42);
    *(v12 + 17) = 0;
    (*(*v12 + 32))(v12, a2);
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v36 == 1 && v35 < 0)
    {
      operator delete(__p);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }
  }

  v26 = a1[21];
  if (!v26 || (v27 = a1[20], (v28 = std::__shared_weak_count::lock(v26)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v29 = v28;
  p_shared_weak_owners = &v28->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 1174405120;
  v31[2] = ___ZN16SipDialogManager16dialogTerminatedERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
  v31[3] = &__block_descriptor_tmp_34;
  v31[4] = a1;
  v31[5] = v27;
  v32 = v29;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  ims::performBlock(v31);
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  std::__shared_weak_count::__release_weak(v29);
}

void sub_1E4D4E7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN16SipDialogManager16dialogTerminatedERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        std::string::basic_string[abi:ne200100]<0>(v11, "sip.dlg");
        v7[0] = 0;
        v10 = 0;
        v6 = ims::debug(v11, v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Untracking previously removed dialogs", 37);
        *(v6 + 17) = 0;
        (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v6 + 17) = 0;
        if (v10 == 1 && v9 < 0)
        {
          operator delete(__p);
        }

        if (v12 < 0)
        {
          operator delete(v11[0]);
        }

        std::vector<std::shared_ptr<BambiConferenceParticipant>>::clear[abi:ne200100]((v3 + 280));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t __copy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrI16SipDialogManagerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrI16SipDialogManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t SipDialogManager::handleRequest(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = (*(**a2 + 120))();
  v7 = *(v6 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v6 + 8);
  }

  if (v7 != 5 || (v8 >= 0 ? (v9 = v6) : (v9 = *v6), (v10 = *v9, v11 = *(v9 + 4), v10 == *"REFER") ? (v12 = v11 == SipRequest::kMethodRefer[4]) : (v12 = 0), !v12))
  {
    v61[0] = 0uLL;
    v13 = a2[1];
    v54 = *a2;
    v55 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 32))(v61, a1, &v54);
    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    v14 = *&v61[0];
    if (*&v61[0])
    {
      v15 = a2[1];
      v52 = *a2;
      v53 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = a3[1];
      v50 = *a3;
      v51 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = (*(*v14 + 16))(v14, &v52, &v50);
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = *(&v61[0] + 1);
    if (*(&v61[0] + 1))
    {
      goto LABEL_26;
    }

    return v17;
  }

  v21 = *a2;
  v20 = a2[1];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = *a3;
  v22 = a3[1];
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v67 = 0;
  v68 = 0;
  v65 = v21;
  v66 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 32))(&v67, a1, &v65);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  if (!v67)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Dialog Does Not Exist");
    SipServerTransaction::sendResponse(v23, v61);
    goto LABEL_65;
  }

  v24 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((v21 + 72), "Refer-To");
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Missing Refer-To header");
    SipServerTransaction::sendResponse(v23, v61);
    goto LABEL_65;
  }

  v28 = v27;
  v29 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v27 + 176), "method");
  v30 = v28 + 184;
  if (v28 + 184 == v29)
  {
    v31 = &ims::kEmptyString;
  }

  else
  {
    v31 = (v29 + 56);
  }

  v32 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v28 + 176), "Replaces");
  if (v30 == v32)
  {
    v33 = &ims::kEmptyString;
  }

  else
  {
    v33 = (v32 + 56);
  }

  v34 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v28 + 176), "to-tag");
  if (v30 == v34)
  {
    v35 = &ims::kEmptyString;
  }

  else
  {
    v35 = (v34 + 56);
  }

  v36 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v28 + 176), "from-tag");
  if (v30 == v36)
  {
    v37 = &ims::kEmptyString;
  }

  else
  {
    v37 = (v36 + 56);
  }

  v38 = *(v31 + 23);
  v39 = v38;
  if ((v38 & 0x80u) != 0)
  {
    v38 = *(v31 + 1);
  }

  if (v38 != 6 || (v39 >= 0 ? (v40 = v31) : (v40 = *v31), (v41 = *v40, v42 = *(v40 + 2), v41 == *"INVITE") ? (v43 = v42 == *"TE") : (v43 = 0), !v43))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Only INVITE refers accepted");
    SipServerTransaction::sendResponse(v23, v61);
LABEL_65:
    ImsResult::~ImsResult(v61);
    if (v60 < 0)
    {
      operator delete(__p);
    }

    v17 = 0;
    goto LABEL_68;
  }

  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v62 = 0u;
  memset(v61, 0, sizeof(v61));
  SipUri::SipUri(v61, (v28 + 104));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v62 + 8, *&v63[0]);
  v63[0] = 0uLL;
  *(&v62 + 1) = v63;
  IPTelephonyManager::getBambiClient(&__p);
  v44 = *(__p + 93);
  if (v44)
  {
    v45 = *(__p + 92);
    atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v46 = std::__shared_weak_count::lock(v44);
    if (!v46)
    {
      v45 = 0;
    }

    std::__shared_weak_count::__release_weak(v44);
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  if (v45)
  {
    (*(*v45 + 48))(v45, v61, v33, v37, v35);
  }

  v47 = v67;
  v48 = *(v23 + 264);
  v49 = *(v23 + 272);
  if (v49)
  {
    atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v48 + 120))(v48);
  std::string::basic_string[abi:ne200100]<0>(&v56, "");
  SipDialog::sendResponse(v47, &__p);
  ImsResult::~ImsResult(&__p);
  if (v57 < 0)
  {
    operator delete(v56);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  SipUri::~SipUri(v61);
  v17 = 1;
LABEL_68:
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v20)
  {
    v18 = v20;
LABEL_26:
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return v17;
}

void sub_1E4D4EF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36)
{
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  SipUri::~SipUri(&a35);
  v41 = *(v39 - 88);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(a1);
}

uint64_t SipDialogManager::handleResponse(uint64_t a1, uint64_t *a2, void *a3)
{
  v17 = 0;
  v18 = 0;
  v5 = *(*a3 + 272);
  v15 = *(*a3 + 264);
  v16 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 32))(&v17);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v6 = v17;
  if (v17)
  {
    v7 = a2[1];
    v13 = *a2;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = a3[1];
    v11 = *a3;
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = (*(*v6 + 24))(v6, &v13, &v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return v9;
}

void sub_1E4D4F1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  v16 = *(v14 - 24);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void SipDialogManager::handleTransactionError(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v5 = *(*a3 + 272);
  v10 = *(*a3 + 264);
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 32))(&v12);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v6 = v12;
  if (v12)
  {
    v7 = a3[1];
    v8 = *a3;
    v9 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v6 + 32))(v6, a2, &v8);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1E4D4F2F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void SipDialogManager::transactionCompleted(uint64_t a1, void *a2)
{
  v10 = 0;
  v11 = 0;
  v3 = *(*a2 + 272);
  v8 = *(*a2 + 264);
  v9 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 32))(&v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v4 = v10;
  if (v10)
  {
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 40))(v4, &v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1E4D4F414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void SipDialogManager::transactionTerminated(uint64_t a1, void *a2)
{
  v10 = 0;
  v11 = 0;
  v3 = *(*a2 + 272);
  v8 = *(*a2 + 264);
  v9 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 32))(&v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v4 = v10;
  if (v10)
  {
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 48))(v4, &v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1E4D4F530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void SipDialogManager::getSubscription(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    v10 = 0;
    v11 = 0;
    (*(*a1 + 24))(&v10);
    if (v10)
    {
      SipDialog::subscriptionForEvent(v10, a2, a4, a5);
    }

    else
    {
      *a5 = 0;
      a5[1] = 0;
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
LABEL_9:
    *a5 = 0;
    a5[1] = 0;
  }
}

void sub_1E4D4F638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipDialogManager::cancelAllSubscriptions(SipDialogManager *this)
{
  v1 = this + 16;
  v2 = (*(*(this + 2) + 64))(this + 16);
  (*(*v1 + 16))(v1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "canceling all subscriptions", 27);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  std::unordered_map<std::string,std::shared_ptr<SipDialog>>::unordered_map(&v7, (v1 + 200));
  for (i = v8; i; i = *i)
  {
    v4 = i[5];
    v5 = i[6];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v4)
    {
      SipDialog::cancelAllSubscriptions(v4);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(&v7);
}

void sub_1E4D4F784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

void SipDialogManager::printSubscriptions(SipDialogManager *this, ImsOutStream *a2)
{
  v3 = *(this + 29);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = 0;
  do
  {
    v6 = v3[5];
    v5 = v3[6];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v6 && v6[364])
    {
      if ((v4 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Subscriptions:", 14);
        *(a2 + 17) = 0;
        (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(a2 + 17) = 0;
      }

      v4 = 1;
      SipDialog::printSubscriptions(v6, a2, 1);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v3 = *v3;
  }

  while (v3);
  if ((v4 & 1) == 0)
  {
LABEL_14:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "No subscriptions", 16);
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }
}

void sub_1E4D4F8E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipDialogManager::printDialogs(SipDialogManager *this, ImsOutStream *a2)
{
  v2 = *(this + 29);
  if (!v2)
  {
    return;
  }

  while (1)
  {
    v5 = v2[5];
    v4 = v2[6];
    if (v4)
    {
      break;
    }

    if (!v5)
    {
      return;
    }

LABEL_6:
    v6 = *(v5 + 344);
    if (v6)
    {
      v7 = *(v5 + 343);
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = std::__shared_weak_count::lock(v6);
      std::__shared_weak_count::__release_weak(v6);
      if (v8 && v7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Session ", 8);
        *(a2 + 17) = 0;
        (*(*(v5 + 1) + 16))(v5 + 1, a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ":", 1);
        *(a2 + 17) = 0;
        (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(a2 + 17) = 0;
        (*(*v7 + 248))(v7, a2);
LABEL_12:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        goto LABEL_13;
      }
    }

    else
    {
      v8 = 0;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Non-session ", 12);
    *(a2 + 17) = 0;
    (*(*(v5 + 1) + 16))(v5 + 1, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ":", 1);
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    SipDialog::printDialogInfo(v5, a2);
    if (v8)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (*(v5 + 364))
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Subscriptions:", 16);
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      SipDialog::printSubscriptions(v5, a2, 0);
    }

    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v2 = *v2;
    if (!v2)
    {
      return;
    }
  }

  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  if (v5)
  {
    goto LABEL_6;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

void sub_1E4D4FC38(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void *SipDialogManager::logPrefix(SipDialogManager *this, ImsOutStream *a2)
{
  v4 = *(this + 26);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = *(this + 25);
  if (!v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    goto LABEL_7;
  }

  v7 = *(v6 + 296);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  if (v7 != 1)
  {
LABEL_7:
    v8 = *(a2 + 1);
    v9 = "DialogManager: ";
    v10 = 15;
    goto LABEL_8;
  }

  v8 = *(a2 + 1);
  v9 = "DialogManager(EMERGENCY): ";
  v10 = 26;
LABEL_8:
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  *(a2 + 17) = 0;
  return result;
}

uint64_t SipDialogManager::activeDialogCount(SipDialogManager *this)
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  std::unordered_map<std::string,std::shared_ptr<SipDialog>>::unordered_map(&v6, this + 216);
  v1 = v7;
  if (v7)
  {
    v2 = 0;
    do
    {
      v3 = v1[5];
      v4 = v1[6];
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v3)
      {
        v2 = v2 + SipDialog::hasActiveSession(v3);
      }

      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      v1 = *v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(&v6);
  return v2;
}

void sub_1E4D4FD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

uint64_t SipDialogManager::checkTimers(SipDialogManager *this)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  std::unordered_map<std::string,std::shared_ptr<SipDialog>>::unordered_map(&v5, this + 216);
  for (i = v6; i; i = *i)
  {
    v2 = i[5];
    v3 = i[6];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v2)
    {
      SipDialog::checkTimers(v2);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(&v5);
}

void sub_1E4D4FE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

uint64_t SipDialogManager::determineIncomingMessageCategory(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v17 = 0;
  v18 = 0;
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 32))(&v17);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v6 = v17;
  if (v17)
  {
    v7 = a2[1];
    v13 = *a2;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = a3[1];
    v11 = *a3;
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = SipDialog::determineIncomingMessageCategory(v6, &v13, &v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return v9;
}

void sub_1E4D4FF4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  v16 = *(v14 - 24);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::SharedLoggable<SipDialogManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipDialogManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipDialog>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC7F60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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

void sub_1E4D504E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E4D505E0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<SipUssdSession>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC7FB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::unordered_map<std::string,std::shared_ptr<SipDialog>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<SipDialog>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipDialog>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<SipDialog>> const&>(void *a1, const void **a2)
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

void sub_1E4D509B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void SipUserAgentConfig::initializeFromPrefs(SipUserAgentConfig *this, const ImsPrefs *a2)
{
  if (ImsPrefs::FeatureTagsEnabled(a2))
  {
    ImsPrefs::DeviceIMEI(a2, __p);
    if (*(this + 487) < 0)
    {
      operator delete(*(this + 58));
    }

    *(this + 29) = *__p;
    *(this + 60) = v32;
  }

  *(this + 916) = ImsPrefs::UseDialogEventPackage(a2);
  *(this + 917) = ImsPrefs::DialogEventPackageSessionDescription(a2);
  ImsPrefs::DefaultAuthAlgorithm(a2, __p);
  v4 = (this + 1344);
  if (*(this + 1367) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *__p;
  *(this + 170) = v32;
  *(this + 348) = ImsPrefs::AuthResponseTimeoutMilliseconds(a2);
  memset(&v40, 0, sizeof(v40));
  ImsPrefs::PreferredAuthQopList(a2, &v40);
  size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v40.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    ims::tokenize(&v40, this + 171, 0x2Cu);
  }

  *(this + 6) = ImsPrefs::HoldResumeTimerMilliseconds(a2);
  v6 = ImsPrefs::MultiCallHoldResumeTimerMilliseconds(a2);
  *(this + 7) = v6;
  if (!v6)
  {
    *(this + 7) = *(this + 6);
  }

  *this = ImsPrefs::RingingTimerSeconds(a2);
  *(this + 1) = ImsPrefs::RingbackTimerSeconds(a2);
  *(this + 2) = ImsPrefs::WaitForRingingTimerMOSeconds(a2);
  *(this + 3) = ImsPrefs::WaitForRingingTimerMTSeconds(a2);
  *(this + 32) = ImsPrefs::TriggerCSFBOnWaitForRingingTimeout(a2);
  *(this + 4) = ImsPrefs::LocalQoSTimeoutMOSeconds(a2);
  *(this + 5) = ImsPrefs::LocalQoSTimeoutMTSeconds(a2);
  *(this + 33) = ImsPrefs::TriggerCSFBOnLocalQoSTimeoutMO(a2);
  *(this + 34) = ImsPrefs::TriggerCSFBOnLocalQoSTimeoutMT(a2);
  *(this + 35) = ImsPrefs::StartLocalQosTimerOnSessionProgress(a2);
  *(this + 9) = ImsPrefs::CallSetupPingTimerMilliseconds(a2);
  *(this + 40) = ImsPrefs::AlwaysPrack18x(a2);
  *(this + 41) = ImsPrefs::QueueUnreliableProvisionalResponses(a2);
  *(this + 545) = ImsPrefs::UseCompactHeaders(a2);
  *(this + 613) = ImsPrefs::AlwaysAddPrivacyHeader(a2);
  *(this + 548) = ImsPrefs::SendPreferredServiceInInvite(a2);
  *(this + 546) = ImsPrefs::SendAcceptContactInInvite(a2);
  *(this + 547) = ImsPrefs::SendAcceptContactInSms(a2);
  memset(&__str, 0, sizeof(__str));
  ImsPrefs::AcceptContactParams(a2, &__str);
  v7 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = __str.__r_.__value_.__l.__size_;
  }

  if (v7)
  {
    SipParameterMap::fromString(this + 552, &__str, 0, 0);
  }

  *(this + 148) = ImsPrefs::StrictCallFlowTimeout(a2);
  *(this + 608) = ImsPrefs::SupportPEarlyMediaHeader(a2);
  *(this + 609) = ImsPrefs::EarlyMediaNeedsHeader(a2);
  *(this + 610) = ImsPrefs::AlwaysSetPhoneContext(a2);
  *(this + 611) = ImsPrefs::EnableForking(a2);
  *(this + 612) = ImsPrefs::EnableReasonHeaderInBye(a2);
  *(this + 616) = ImsPrefs::AllowTelUriInReferTo(a2);
  *(this + 617) = ImsPrefs::SendReferToPeer(a2);
  *(this + 618) = ImsPrefs::AlwaysSubscribeToConferenceEvents(a2);
  *(this + 619) = ImsPrefs::SendConferenceSubscribeInNewDialog(a2);
  *(this + 620) = ImsPrefs::SendConferenceSubscribeAfterRefers(a2);
  *(this + 621) = ImsPrefs::TreatAllNotificationsAsPartial(a2);
  *(this + 622) = ImsPrefs::AddServicesToContactInConferenceSubscribe(a2);
  *(this + 156) = ImsPrefs::ConferenceParticipantJoinTimeoutMilliseconds(a2);
  *(this + 281) = ImsPrefs::ConferenceWaitForHoldTimeoutMilliseconds(a2);
  *(this + 688) = ImsPrefs::SendPreferredIdentity(a2);
  SipTimers::setTimersFromPrefs(this + 64, a2);
  *(this + 158) = ImsPrefs::UssdResponseTimeoutMilliseconds(a2);
  ImsPrefs::ReRegisterOnErrorCodes(a2, __p);
  SipResponseCodeMap::fromString(this + 696, __p);
  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "INVITE");
  ImsPrefs::EmergencyErrorResponsesToTriggerCSFB(a2, &v38);
  SipResponseCodeMap::addResponseCodesForMethodFromString(this + 760, __p, &v38);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "INVITE");
  ImsPrefs::InviteErrorResponsesToTriggerCSFB(a2, &v38);
  SipResponseCodeMap::addResponseCodesForMethodFromString(this + 728, __p, &v38);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 914) = ImsPrefs::TriggerCSFBOnSDPError(a2);
  ImsPrefs::PrivacyHeaderValue(a2, __p);
  v8 = (this + 640);
  if (*(this + 663) < 0)
  {
    operator delete(*v8);
  }

  *v8 = *__p;
  *(this + 82) = v32;
  ImsPrefs::UserAgentHeaderValue(a2, __p);
  v9 = (this + 664);
  if (*(this + 687) < 0)
  {
    operator delete(*v9);
  }

  *v9 = *__p;
  *(this + 85) = v32;
  *(this + 689) = ImsPrefs::IgnoreDuplicateSDP(a2);
  *(this + 792) = ImsPrefs::MaintainTransportForDurationOfSession(a2);
  *(this + 149) = ImsPrefs::WaitForByeResponseTimeout(a2);
  *(this + 150) = ImsPrefs::WaitForCancelResponseTimeout(a2);
  *(this + 151) = ImsPrefs::WaitForAckBeforeEndingCallTimeout(a2);
  *(this + 793) = ImsPrefs::AlwaysSendSessionProgress(a2);
  ImsPrefs::PreferredSenderIdentity(a2, __p);
  *(this + 201) = SipRequest::identityTypeFromString(__p);
  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "PreferredSenderName");
  v10 = std::__tree<std::string>::__count_unique<std::string>(a2 + 280, __p);
  v11 = v10;
  if ((SBYTE7(v32) & 0x80000000) == 0)
  {
    if (v10)
    {
      goto LABEL_35;
    }

LABEL_38:
    *(this + 202) = *(this + 201);
    goto LABEL_39;
  }

  operator delete(__p[0]);
  if (!v11)
  {
    goto LABEL_38;
  }

LABEL_35:
  ImsPrefs::PreferredSenderName(a2, __p);
  *(this + 202) = SipRequest::identityTypeFromString(__p);
  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  *(this + 812) = ImsPrefs::IgnoreFromHeaderForSenderName(a2);
  *(this + 813) = ImsPrefs::SendInitialInviteAsInactive(a2);
  *(this + 814) = ImsPrefs::SendResumeInviteAsSendRecv(a2);
  *(this + 815) = ImsPrefs::AlwaysUnsubscribeFromRegEvents(a2);
  *(this + 628) = ImsPrefs::AllowIncomingUssdSessions(a2);
  *(this + 816) = ImsPrefs::AllowRemoteHoldForUnconfirmedCalls(a2);
  *(this + 205) = ImsPrefs::TTYReinviteTimeoutMilliseconds(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "UPDATE");
  ImsPrefs::KillForkOnUpdateErrors(a2, &v38);
  SipResponseCodeMap::addResponseCodesForMethodFromString(this + 824, __p, &v38);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 856) = ImsPrefs::UseDummyImeiCheckDigit(a2);
  *(this + 857) = ImsPrefs::EnableSessionId(a2);
  *(this + 614) = ImsPrefs::AlwaysAddSipInstance(a2);
  *(this + 615) = ImsPrefs::AddSipInstanceForWifi(a2);
  *(this + 858) = ImsPrefs::UseCorrectAckConstruction(a2);
  *(this + 859) = ImsPrefs::IgnoreRegNotificationContactExpires(a2);
  ImsPrefs::ConferenceServer(a2, __p);
  SipUri::fromString(this + 48, __p);
  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 215) = ImsPrefs::PrackErrorDelay(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "CountryOfOriginationFormat");
  v12 = std::__tree<std::string>::__count_unique<std::string>(a2 + 280, __p);
  v13 = v12;
  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
    if (!v13)
    {
      goto LABEL_53;
    }
  }

  else if (!v12)
  {
    goto LABEL_53;
  }

  std::string::basic_string[abi:ne200100]<0>(&v38, "CountryOfOriginationFormat");
  ImsPrefs::enumAsString(a2, &v38.__r_.__value_.__l.__data_, __p);
  v14 = (this + 864);
  if (*(this + 887) < 0)
  {
    operator delete(*v14);
  }

  *v14 = *__p;
  *(this + 110) = v32;
  BYTE7(v32) = 0;
  LOBYTE(__p[0]) = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

LABEL_53:
  std::string::basic_string[abi:ne200100]<0>(__p, "LocationForShortCodeCalls");
  v15 = std::__tree<std::string>::__count_unique<std::string>(a2 + 280, __p);
  v16 = v15;
  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
    if (!v16)
    {
      goto LABEL_61;
    }
  }

  else if (!v15)
  {
    goto LABEL_61;
  }

  std::string::basic_string[abi:ne200100]<0>(&v38, "LocationForShortCodeCalls");
  ImsPrefs::enumAsString(a2, &v38.__r_.__value_.__l.__data_, __p);
  v17 = (this + 888);
  if (*(this + 911) < 0)
  {
    operator delete(*v17);
  }

  *v17 = *__p;
  *(this + 113) = v32;
  BYTE7(v32) = 0;
  LOBYTE(__p[0]) = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

LABEL_61:
  *(this + 919) = ImsPrefs::UseCIDUrlInPIDF(a2);
  *(this + 920) = ImsPrefs::UseCIDUrlInGeoBodyContentId(a2);
  *(this + 921) = ImsPrefs::UseTupleInPIDF(a2);
  *(this + 922) = ImsPrefs::AddContentDispositionInPIDF(a2);
  ImsPrefs::MethodInPIDF(a2, __p);
  v18 = (this + 928);
  if (*(this + 951) < 0)
  {
    operator delete(*v18);
  }

  *v18 = *__p;
  *(this + 118) = v32;
  *(this + 238) = ImsPrefs::PIDFConfidence(a2);
  *(this + 913) = ImsPrefs::SendLocalTimeZoneInformation(a2);
  *(this + 912) = ImsPrefs::BlockSilentRedialOverCS(a2);
  *(this + 915) = ImsPrefs::KillCallOnHoldResumeError(a2);
  *(this + 918) = ImsPrefs::ValidateSipMessageRecipient(a2);
  *(this + 956) = ImsPrefs::IgnoreErrorsInTerminatedForks(a2);
  *(this + 957) = ImsPrefs::RestartRingbackTimerOn180(a2);
  std::string::basic_string[abi:ne200100]<0>(&v38, "AccessNetworkRefreshMethod");
  ImsPrefs::enumAsString(a2, &v38.__r_.__value_.__l.__data_, __p);
  v19 = (this + 960);
  if (*(this + 983) < 0)
  {
    operator delete(*v19);
  }

  *v19 = *__p;
  *(this + 122) = v32;
  BYTE7(v32) = 0;
  LOBYTE(__p[0]) = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  *(this + 984) = ImsPrefs::AccessNetworkRefreshInHeldCalls(a2);
  *(this + 985) = ImsPrefs::UseCampedAccessNetworkInPANI(a2);
  *(this + 986) = ImsPrefs::SetCountryWithCampedPANI(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "INVITE");
  ImsPrefs::AddLocationInInviteResponses(a2, &v38);
  SipResponseCodeMap::addResponseCodesForMethodFromString(this + 992, __p, &v38);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "INVITE");
  ImsPrefs::ResponseCodesAllowedForSilentRedial(a2, &v38);
  SipResponseCodeMap::addResponseCodesForMethodFromString(this + 1024, __p, &v38);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "INVITE");
  ImsPrefs::ResponseCodesBlockedForSilentRedialNRSANonEm(a2, &v38);
  SipResponseCodeMap::addResponseCodesForMethodFromString(this + 1056, __p, &v38);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 1120) = ImsPrefs::DropRegistrationOnCSFB(a2);
  *(this + 1121) = ImsPrefs::DropRegistrationOnSRVCC(a2);
  ImsPrefs::DropRegistrationOnErrorCodes(a2, __p);
  SipResponseCodeMap::fromString(this + 1184, __p);
  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 1122) = ImsPrefs::ResetCallIdOnAuthChallenge(a2);
  memset(&v38, 0, sizeof(v38));
  ImsPrefs::AcceptedSmsContentTypes(a2, &v38);
  v20 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = v38.__r_.__value_.__l.__size_;
  }

  if (v20)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v32 = 0;
    std::string::basic_string[abi:ne200100]<0>(&v37, ",");
    ims::tokenize(&v38, __p, &v37);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v21 = __p[0];
    v22 = __p[1];
    while (v21 != v22)
    {
      std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(this + 141, this + 1136, v21);
      v21 += 3;
    }

    v37.__r_.__value_.__r.__words[0] = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
  }

  *(this + 1152) = ImsPrefs::IgnoreSessionRefreshErrors(a2);
  *(this + 1153) = ImsPrefs::IgnoreSessionTimerExpiration(a2);
  *(this + 1154) = ImsPrefs::RejectSMSWithFakeTimeout(a2);
  *(this + 1155) = ImsPrefs::DontSendPreconditionsIfCallWaitingDisabled(a2);
  *(this + 1156) = ImsPrefs::InternalDisableSipInstance(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "AdditionalContactParams");
  SipHeaderTemplateMap::initializeFromPref(this + 1160, a2, __p);
  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 987) = ImsPrefs::ReRegisterOnInternalRequestTimeout(a2);
  *(this + 1216) = ImsPrefs::AllowInvalidTimestampInPCNI(a2);
  memset(&v37, 0, sizeof(v37));
  ImsPrefs::CountryCodesWhereNeedImsiInContactHeaderOfAnonymousEmergencyInvite(a2, &v37);
  v23 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v37.__r_.__value_.__l.__size_;
  }

  if (v23)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v32 = 0;
    ims::tokenize(&v37, __p, 0x2Cu);
    v24 = __p[0];
    v25 = __p[1];
    while (v24 != v25)
    {
      v26 = v24;
      if (v24[23] < 0)
      {
        v26 = *v24;
      }

      LODWORD(v36.__r_.__value_.__l.__data_) = strtoul(v26, 0, 10);
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(this + 1224, &v36);
      v24 += 24;
    }

    v36.__r_.__value_.__r.__words[0] = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v36);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "INVITE");
  ImsPrefs::NonFatalReInviteResponses(a2, &v36);
  SipResponseCodeMap::addResponseCodesForMethodFromString(this + 1088, __p, &v36);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "INVITE");
  ImsPrefs::DisableMergeOnInviteErrorResponses(a2, &v36);
  SipResponseCodeMap::addResponseCodesForMethodFromString(this + 1312, __p, &v36);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  v34 = 0;
  v35 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "SpamCallRiskLevels");
  ImsPrefs::dictValue(a2, __p, &v34);
  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (v35)
  {
    SpamRiskMap::SpamRiskMap(__p, &v34);
    *(this + 1304) = v33;
    v27 = v32;
    *(this + 1272) = *__p;
    *(this + 1288) = v27;
  }

  v29 = 0;
  v30 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "SpamCallCategoryMapping");
  ImsPrefs::arrayValue(a2, __p, &v29);
  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (v30)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v32 = 0;
    ims::CFArray::asStrings(&v29, __p, v28);
    ImsResult::~ImsResult(v28);
    if (__p[0] != __p[1])
    {
      SpamCategoryMap::SpamCategoryMap(&v36, __p);
      if ((this + 1248) != &v36)
      {
        std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,ims::SpamCategory>,std::__tree_node<std::__value_type<std::string,ims::SpamCategory>,void *> *,long>>(this + 156, v36.__r_.__value_.__l.__data_, &v36.__r_.__value_.__l.__size_);
      }

      std::__tree<std::string>::destroy(&v36, v36.__r_.__value_.__l.__size_);
    }

    v36.__r_.__value_.__r.__words[0] = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v36);
  }

  ims::CFType::~CFType(&v29);
  ims::CFType::~CFType(&v34);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }
}

void sub_1E4D51748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, void **p_p, char *a34, int a35, __int16 a36, char a37, char a38)
{
  std::__tree<std::string>::destroy(&p_p, a34);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  ims::CFType::~CFType(&a21);
  ims::CFType::~CFType(&a31);
  if (*(v38 - 121) < 0)
  {
    operator delete(*(v38 - 144));
  }

  if (*(v38 - 97) < 0)
  {
    operator delete(*(v38 - 120));
  }

  if (*(v38 - 73) < 0)
  {
    operator delete(*(v38 - 96));
  }

  if (*(v38 - 49) < 0)
  {
    operator delete(*(v38 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t SipUserAgentConfig::shouldCSFBOnInviteResponse(SipUserAgentConfig *this, unsigned int a2, int a3)
{
  if (a2 < 0x12C)
  {
    return 0;
  }

  v4 = a3;
  if (a3)
  {
    v7 = 760;
  }

  else
  {
    v7 = 728;
  }

  v11 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "INVITE");
  v3 = SipResponseCodeMap::containsResponseCodeForMethod(this + v7, __p, a2, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if ((a2 & 0xFFFFFFFE) == 486 && v3 && (v11 & 1) == 0)
  {
    return 0;
  }

  if (!v3 && (v4 & 1) != 0)
  {
    return SipUserAgentConfig::shouldCSFBOnInviteResponse(this, a2, 0);
  }

  return v3;
}

void sub_1E4D51A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipUserAgent::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<SipUserAgent,std::allocator<SipUserAgent>,std::weak_ptr<SipStack> &,SipUserAgent::EnforcePrivateConstructor,0>();
}

void sub_1E4D51B00(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void SipUserAgent::construct(uint64_t a1, uint64_t *a2)
{
  srandomdev();
  v4 = a2[1];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *a2;
      if (*a2)
      {
        v8 = *(a1 + 152);
        if (!v8 || (v9 = *(a1 + 144), (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v11 = v10;
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *(v7 + 256);
        *(v7 + 248) = v9;
        *(v7 + 256) = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  operator new();
}

void SipUserAgent::SipUserAgent(uint64_t a1, std::__shared_weak_count **a2)
{
  std::string::basic_string[abi:ne200100]<0>(object, "sip.ua");
  v4 = std::__shared_weak_count::lock(a2[1]);
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v7, &(*a2)[8].__shared_owners_);
  ImsLogContainer::ImsLogContainer(a1, object, v7);
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  if (v12 < 0)
  {
    operator delete(object[0]);
  }

  ims::getQueue(object);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v5 = object[0];
  *(a1 + 160) = object[0];
  if (v5)
  {
    dispatch_retain(v5);
  }

  *(a1 + 168) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 176), "com.apple.ipTelephony", "default");
  if (v5)
  {
    dispatch_release(v5);
  }

  *a1 = &unk_1F5EC8078;
  *(a1 + 136) = &unk_1F5EC80D8;
  *(a1 + 184) = *a2;
  v6 = a2[1];
  *(a1 + 192) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = a1 + 208;
  *(a1 + 232) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 240) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  SipMessageEncodingMap::SipMessageEncodingMap((a1 + 384));
}

void sub_1E4D5226C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 679) < 0)
  {
    operator delete(*v30);
  }

  SipRouteSet::~SipRouteSet(v28);
  SipMessageEncodingMap::~SipMessageEncodingMap((v29 + 176));
  v32 = *(v24 + 376);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(v24 + 360);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = *(v24 + 344);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v35 = *(v24 + 328);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  std::unique_ptr<LazuliMessageEncodingMap>::reset[abi:ne200100](v27, 0);
  v36 = *(v24 + 304);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v37 = *(v24 + 288);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v38 = *(v24 + 272);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v39 = *(v24 + 256);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  std::__tree<std::string>::destroy(v26, *(v24 + 232));
  std::__tree<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>>>::destroy(*(v24 + 208));
  v40 = *(v24 + 192);
  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  MEMORY[0x1E69225A0](v24 + 176);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v25);
  ImsLogContainer::~ImsLogContainer(v24);
  _Unwind_Resume(a1);
}

void SipUserAgent::~SipUserAgent(SipUserAgent *this)
{
  *this = &unk_1F5EC8078;
  *(this + 17) = &unk_1F5EC80D8;
  v2 = (this + 208);
  std::__tree<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>>>::destroy(*(this + 26));
  *(this + 25) = v2;
  *(this + 27) = 0;
  *v2 = 0;
  v3 = *(this + 47);
  *(this + 46) = 0;
  *(this + 47) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 80);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 80) = 0;
  v5 = *(this + 85);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 85) = 0;
  SipUserAgent::clearAssociatedUris(this);
  ImsRandomNumberGenerator<unsigned char>::~ImsRandomNumberGenerator(this + 86);
  if (*(this + 679) < 0)
  {
    operator delete(*(this + 82));
  }

  SipRouteSet::~SipRouteSet((this + 576));
  SipMessageEncodingMap::~SipMessageEncodingMap(this + 48);
  v6 = *(this + 47);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 45);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 43);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 41);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::unique_ptr<LazuliMessageEncodingMap>::reset[abi:ne200100](this + 39, 0);
  v10 = *(this + 38);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 36);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 34);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 32);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__tree<std::string>::destroy(this + 224, *(this + 29));
  std::__tree<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>>>::destroy(*(this + 26));
  v14 = *(this + 24);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  MEMORY[0x1E69225A0](this + 176);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 18);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  SipUserAgent::~SipUserAgent(this);

  JUMPOUT(0x1E69235B0);
}

void SipUserAgent::clearAssociatedUris(SipUserAgent *this)
{
  SipRouteSet::clear(this + 72);
  v2 = *(this + 79);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 79) = 0;
  v3 = *(this + 81);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 81) = 0;

  SipUserAgent::updateXCAPManagerWithImpuInfo(this);
}

void non-virtual thunk toSipUserAgent::~SipUserAgent(SipUserAgent *this)
{
  SipUserAgent::~SipUserAgent((this - 136));
}

{
  SipUserAgent::~SipUserAgent((this - 136));

  JUMPOUT(0x1E69235B0);
}

void SipUserAgent::deinitialize(SipUserAgent *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  SipUserAgent::clearAssociatedUris(this);
  SipDialogManager::deinitialize(*(this + 31));
  SipInfoManager::deinitialize(*(this + 33));
  SipMessageManager::deinitialize(*(this + 35));
  if (v4 && *(v4 + 2817) == 1)
  {
    SipLazuliManager::deinitialize(*(this + 37));
  }

  v5 = *(this + 40);
  SipTimerContainer::cancelAllTimers((v5 + 280));
  std::__tree<std::__value_type<std::string,ResendOptionsInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ResendOptionsInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ResendOptionsInfo>>>::destroy(v5 + 256, *(v5 + 264));
  *(v5 + 264) = 0;
  *(v5 + 272) = 0;
  *(v5 + 256) = v5 + 264;
  if (v4 && *(v4 + 1244) == 1)
  {
    v6 = *(this + 42);
    v7 = *(this + 44);
    v8 = *(this + 45);
    v9 = v7 + 136;
    if (!v7)
    {
      v9 = 0;
    }

    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      v11 = v6 + 25;
      v10 = v6[25];
      if (v10)
      {
        v12 = v6 + 25;
        v13 = v6[25];
        do
        {
          v14 = v13[4];
          v15 = v14 >= v9;
          v16 = v14 < v9;
          if (v15)
          {
            v12 = v13;
          }

          v13 = v13[v16];
        }

        while (v13);
        if (v12 != v11 && v12[4] <= v9)
        {
          v17 = v6 + 25;
          v18 = v6[25];
          do
          {
            v19 = v18[4];
            v15 = v19 >= v9;
            v20 = v19 < v9;
            if (v15)
            {
              v17 = v18;
            }

            v18 = v18[v20];
          }

          while (v18);
          if (v17 != v11 && v17[4] <= v9)
          {
            v21 = v17[1];
            if (v21)
            {
              do
              {
                v22 = v21;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              v23 = v17;
              do
              {
                v22 = v23[2];
                v24 = *v22 == v23;
                v23 = v22;
              }

              while (!v24);
            }

            if (v6[24] == v17)
            {
              v6[24] = v22;
            }

            --v6[26];
            std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v17);
            v25 = v17[5];
            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            }

            operator delete(v17);
          }
        }
      }
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  SipRegistrationClient::deinitialize(*(this + 42));
  (*(**(this + 46) + 32))(*(this + 46));
  v26 = *(this + 85);
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  *(this + 85) = 0;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E4D52924(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipUserAgent::initialize(SipUserAgent *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 23);
      if (v5)
      {
        v6 = v5 + 35;
        if (!SipTimers::isValid(&v5[35]))
        {
          v7 = (*(*this + 56))(this);
          (*(*this + 16))(this, v7);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "invalid timer values ", 21);
          *(v7 + 17) = 0;
          (*(v6->__r_.__value_.__r.__words[0] + 16))(v5 + 35, v7);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ".  Using default values.", 24);
          *(v7 + 17) = 0;
          (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v7 + 17) = 0;
          SipTimers::resetDefaults(&v5[35].__r_.__value_.__l.__data_);
        }

        v8 = (*(*this + 64))(this);
        (*(*this + 16))(this, v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "using SIP timers ", 17);
        *(v8 + 17) = 0;
        (*(v6->__r_.__value_.__r.__words[0] + 16))(v5 + 35, v8);
        (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v8 + 17) = 0;
        SipRegistrationClient::initialize(*(this + 42));
        if (v5[51].__r_.__value_.__s.__data_[20] == 1)
        {
          v9 = *(this + 42);
          v10 = *(this + 44);
          v11 = *(this + 45);
          if (v10)
          {
            v12 = v10 + 136;
          }

          else
          {
            v12 = 0;
          }

          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v10)
          {
            v13 = *(v9 + 200);
            if (!v13)
            {
LABEL_26:
              operator new();
            }

            v14 = v9 + 200;
            v15 = *(v9 + 200);
            do
            {
              v16 = *(v15 + 32);
              v17 = v16 >= v12;
              v18 = v16 < v12;
              if (v17)
              {
                v14 = v15;
              }

              v15 = *(v15 + 8 * v18);
            }

            while (v15);
            if (v14 == v9 + 200 || v12 < *(v14 + 32))
            {
              while (1)
              {
                while (1)
                {
                  v19 = v13;
                  v20 = v13[4];
                  if (v20 <= v12)
                  {
                    break;
                  }

                  v13 = *v19;
                  if (!*v19)
                  {
                    goto LABEL_26;
                  }
                }

                if (v20 >= v12)
                {
                  break;
                }

                v13 = v19[1];
                if (!v13)
                {
                  goto LABEL_26;
                }
              }
            }
          }

          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }
        }

        SipInfoManager::initialize(*(this + 33));
        v21 = *(this + 35);
        v32 = v5;
        v33 = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        SipMessageManager::initialize(v21, &v32);
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        if (v5[117].__r_.__value_.__s.__data_[9] == 1)
        {
          v22 = *(this + 37);
          if (!v22)
          {
            operator new();
          }

          v30 = v5;
          v31 = v4;
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          SipLazuliManager::initialize(v22, &v30);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          v23 = *(this + 47);
          *(this + 46) = 0;
          *(this + 47) = 0;
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }

          if (v5[118].__r_.__value_.__s.__data_[17] == 1)
          {
            v24 = (*(*this + 64))(this);
            (*(*this + 16))(this, v24);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Creating PAT auth client", 24);
            *(v24 + 17) = 0;
            (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v24 + 17) = 0;
            v25 = SipStack::prefs(v5);
            if (*(v25 + 255) < 0)
            {
              std::string::__init_copy_ctor_external(&v29, *(v25 + 232), *(v25 + 240));
            }

            else
            {
              v29 = *(v25 + 232);
            }

            operator new();
          }
        }

        v26 = *(this + 46);
        if (!v26)
        {
          v27 = (*(*this + 64))(this);
          (*(*this + 16))(this, v27);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "Creating normal auth client", 27);
          *(v27 + 17) = 0;
          (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v27 + 17) = 0;
          operator new();
        }

        (*(*v26 + 24))(v26);
        *(this + 512) = v5[36].__r_.__value_.__s.__data_[9];
        v28 = SipStack::prefs(v5);
        SipMessageEncodingMap::initializeFromPrefs((this + 384), v28);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4D531A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  MEMORY[0x1E69235B0](v26, 0x10A0C40E475C269);
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void SipUserAgent::logPrefix(SipUserAgent *this, ImsOutStream *a2)
{
  v4 = *(this + 24);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5 || (v6 = *(this + 23)) == 0)
  {
LABEL_8:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "UserAgent: ", 11);
    *(a2 + 17) = 0;
    if (!v5)
    {
      return;
    }

    goto LABEL_9;
  }

  (*(*v6 + 112))(__p);
  (*(*a2 + 40))(a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " [UserAgent]: ", 14);
  *(a2 + 17) = 0;
LABEL_9:
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void SipUserAgent::setThumperEnabled(SipUserAgent *this, int a2)
{
  *(this + 704) = a2;
  v3 = *(this + 24);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 23);
      if (v7 && *(v7 + 1244) == 1)
      {
        v8 = *(this + 44);
        v9 = *(this + 45);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipDialogEventClient::setThumperEnabled(v8, a2);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4D53458(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipUserAgent::handleInfo(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 712);
  if (v2)
  {
    v3 = a2[1];
    v4 = *a2;
    v5 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (**v2)(v2, &v4);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4D534F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipUserAgent::handleAck(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 248);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipDialogManager::handleAck(v2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4D5355C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipUserAgent::handleNewServerTransaction(void *a1, void *a2)
{
  v5 = *(*a2 + 264);
  v4 = *(*a2 + 272);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[31];
  v7 = (*(*v5 + 120))(v5);
  v8 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v6 + 256, v7);
  v9 = v6 + 264;
  if (v6 + 264 == v8)
  {
    v16 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v16);
    v17 = (*(*v5 + 120))(v5);
    (*(*v16 + 32))(v16, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " requests aren't supported in dialogs. Seeing if we have an appropriate delegate.", 81);
    *(v16 + 17) = 0;
    v14 = (v16 + 17);
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_11:
    *v14 = 0;
    v18 = (*(*v5 + 120))(v5);
    v19 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 25), v18);
    if (a1 + 26 == v19 || (v20 = *(v19 + 64)) == 0 || (v21 = *(v19 + 56), atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed), v22 = std::__shared_weak_count::lock(v20), std::__shared_weak_count::__release_weak(v20), !v22) || !v21)
    {
      v24 = *(*a1 + 56);
      if (v9 != v8)
      {
        v25 = v24(a1);
        (*(*a1 + 16))(a1, v25);
        v26 = (*(*v5 + 120))(v5);
        (*(*v25 + 32))(v25, v26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " requests aren't supported outside dialogs", 42);
        *(v25 + 17) = 0;
        (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v25 + 17) = 0;
        v27 = *a2;
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        SipServerTransaction::rejectTransactionWithStatus();
      }

      v28 = v24(a1);
      (*(*a1 + 16))(a1, v28);
      v29 = (*(*v5 + 120))(v5);
      (*(*v28 + 32))(v28, v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), " requests aren't supported", 26);
      *(v28 + 17) = 0;
      (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v28 + 17) = 0;
      v30 = *a2;
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      SipServerTransaction::rejectTransactionWithStatus();
    }

    v23 = a2[1];
    v32 = *a2;
    v33 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v21 + 16))(v21, &v32);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    goto LABEL_23;
  }

  v10 = a1[31];
  v11 = a2[1];
  v34 = *a2;
  v35 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = (*(*v10 + 16))(v10, &v34);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if ((v12 & 1) == 0)
  {
    v13 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "incoming ", 9);
    *(v13 + 17) = 0;
    v14 = (v13 + 17);
    v15 = (*(*v5 + 120))(v5);
    (*(*v13 + 32))(v13, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " didn't match an existing dialog. Seeing if we have an appropriate delegate.", 76);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_11;
  }

LABEL_23:
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4D53BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

void SipUserAgent::setDelegateForRequestMethod(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = a2[1];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v7 = std::__shared_weak_count::lock(v5);
  if (!v7 || !*a2)
  {
LABEL_9:
    std::__tree<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>>>::__erase_unique<std::string>((a1 + 200), a3);
    if (!v7)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = std::__tree<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 200, a3);
  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v11 = *(v8 + 64);
  *(v8 + 56) = v10;
  *(v8 + 64) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_10:
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void SipUserAgent::conferenceServerUri(std::__shared_weak_count **this@<X0>, uint64_t a2@<X8>)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v4 = SipUserAgent::config(this);
  v5 = *(v4 + 175);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 160);
  }

  if (v5)
  {
    v6 = SipUserAgent::config(this);
    v7 = *MEMORY[0x1E69E9840];

    SipUri::SipUri(a2, (v6 + 48));
    return;
  }

  v8 = this[24];
  if (v8 && (v9 = std::__shared_weak_count::lock(v8)) != 0)
  {
    v10 = v9;
    v11 = this[23];
    memset(&v29, 0, sizeof(v29));
    if (v11)
    {
      if (SHIBYTE(v11[171].__shared_weak_owners_) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, v11[171].__vftable, v11[171].__shared_owners_);
      }

      else
      {
        v29 = v11[171];
      }

      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v29.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v14 = SipStack::prefs(v11);
        if (ImsPrefs::UseDomainForConferenceServer(v14))
        {
          goto LABEL_36;
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    v10 = 0;
    memset(&v29, 0, sizeof(v29));
  }

  std::string::basic_string[abi:ne200100]<0>(&v29, "");
  v12 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v29.__r_.__value_.__l.__size_;
  }

  if (v12)
  {
    goto LABEL_36;
  }

  v11 = 0;
LABEL_22:
  std::operator+<char>();
  v15 = std::string::append(&v26, ".mcc", 4uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  shared_weak_owners_high = SHIBYTE(v11[166].__shared_weak_owners_);
  if (shared_weak_owners_high >= 0)
  {
    v18 = &v11[166];
  }

  else
  {
    v18 = v11[166].__vftable;
  }

  if (shared_weak_owners_high >= 0)
  {
    shared_owners = HIBYTE(v11[166].__shared_weak_owners_);
  }

  else
  {
    shared_owners = v11[166].__shared_owners_;
  }

  v20 = std::string::append(&v27, v18, shared_owners);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v28, ".3gppnetwork.org", 0x10uLL);
  v23 = v22->__r_.__value_.__r.__words[0];
  v30[0] = v22->__r_.__value_.__l.__size_;
  *(v30 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
  v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v29.__r_.__value_.__r.__words[0] = v23;
  v29.__r_.__value_.__l.__size_ = v30[0];
  *(&v29.__r_.__value_.__r.__words[1] + 7) = *(v30 + 7);
  *(&v29.__r_.__value_.__s + 23) = v24;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

LABEL_36:
  *(a2 + 400) = 0;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  SipUri::SipUri(a2);
  SipUri::fromString(a2, &v28);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1E4D54058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipUserAgent::config(SipUserAgent *this)
{
  v2 = *(this + 24);
  if (!v2)
  {
    return 328;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 328;
  }

  v4 = *(this + 23) + 328;
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v4;
}

void SipUserAgent::updateXCAPManagerWithImpuInfo(SipUserAgent *this)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(this + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 23);
      if (v4)
      {
        v5 = *(this + 22);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          (*(*(this + 17) + 16))(__p);
          v6 = v24 >= 0 ? __p : __p[0];
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v6;
          _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sWill update XCAP manager about changes in IMPU information", buf, 0x16u);
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }
        }

        memset(&v30, 0, sizeof(v30));
        if (*(v4 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&v30, *(v4 + 4432), *(v4 + 4440));
        }

        else
        {
          v30 = *(v4 + 4432);
        }

        bzero(__p, 0x378uLL);
        SipUri::SipUri(__p);
        SipUri::SipUri(v25);
        v28 = 0u;
        memset(&v29, 0, sizeof(v29));
        v26 = 0u;
        v27 = 0u;
        v8 = *(this + 79);
        if ((v8 || (v10 = *(this + 73), v10 != *(this + 74)) && (v8 = *v10) != 0) && (SipUri::SipUri(buf, v8), SipUri::operator=(__p, buf), SipUri::~SipUri(buf), (v9 = *(this + 79)) != 0) || (v9 = *(this + 80)) != 0)
        {
          SipUri::SipUri(buf, v9);
          SipUri::operator=(v25, buf);
          SipUri::~SipUri(buf);
        }

        memset(buf, 0, 24);
        SipRouteSet::allHops(this + 576, buf);
        *v34 = 0;
        __str = 0;
        v35 = 0;
        v11 = *buf;
        v12 = *&buf[8];
        while (v11 != v12)
        {
          v13 = *v11;
          if (*v11)
          {
            v31 = 0uLL;
            v32 = 0;
            SipUri::asString(v13, &v31);
            std::vector<std::string>::push_back[abi:ne200100](&__str, &v31);
            if (SHIBYTE(v32) < 0)
            {
              operator delete(v31);
            }
          }

          ++v11;
        }

        v14 = *(this + 24);
        if (v14)
        {
          v15 = std::__shared_weak_count::lock(v14);
          if (v15)
          {
            v16 = v15;
            v17 = *(this + 23);
            if (v17)
            {
              std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v26, __str, *v34, 0xAAAAAAAAAAAAAAABLL * ((*v34 - __str) >> 3));
              std::string::operator=((&v27 + 8), v17 + 168);
              std::string::operator=(&v29, v17 + 169);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        *&v31 = &__str;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
        v18 = *buf;
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        *&buf[8] = 0;
        *buf = 0;
        IPTelephonyManager::getXcapManager(v18, buf);
        v19 = *buf;
        if (*buf)
        {
          SipImpuInfo::SipImpuInfo(v22, __p);
          IMSXcapManager::updateSipImpuInfo(v19, &v30, v22);
        }

        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(*(&v27 + 1));
        }

        *buf = &v26;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
        SipUri::~SipUri(v25);
        SipUri::~SipUri(__p);
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

LABEL_47:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        goto LABEL_48;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(this + 22);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    (*(*(this + 17) + 16))(__p, this + 136);
    v21 = v24 >= 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v21;
    _os_log_error_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v3)
  {
    goto LABEL_47;
  }

LABEL_48:
  v20 = *MEMORY[0x1E69E9840];
}

void SipUserAgent::setAssociatedUris(SipUserAgent *this, const SipUri ***a2, const SipUri *a3)
{
  SipUserAgent::clearAssociatedUris(this);
  v6 = *(this + 80);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  SipRouteSet::operator=((this + 576), a2);
  if (a3)
  {
    operator new();
  }

  *(this + 79) = 0;
  operator new();
}

uint64_t SipUserAgent::publicUri(SipUserAgent *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = *(this + 79);
  if (!v5)
  {
    v6 = *(this + 73);
    if (v6 == *(this + 74) || (v5 = *v6) == 0)
    {
      if (v4 && *(v4 + 296) == 1)
      {
        v7 = *(v4 + 248);
        v9 = *(v7 + 336);
        v8 = *(v7 + 344);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *(v9 + 712);
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        else
        {
          v10 = *(v9 + 712);
        }

        if (v10 != 2)
        {
          v12 = (*(*this + 64))(this);
          (*(*this + 16))(this, v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "not emergency registered, using anonymous public URI", 52);
          *(v12 + 17) = 0;
          v13 = (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v12 + 17) = 0;
          v5 = SipUri::anonymousUri(v13);
          if (!v3)
          {
            return v5;
          }

          goto LABEL_17;
        }
      }

      v5 = *(this + 42) + 1384;
    }
  }

  if (v3)
  {
LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v5;
}

void sub_1E4D54A5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipImpuInfo::~SipImpuInfo(void **this)
{
  if (*(this + 887) < 0)
  {
    operator delete(this[108]);
  }

  if (*(this + 863) < 0)
  {
    operator delete(this[105]);
  }

  v2 = this + 102;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  SipUri::~SipUri((this + 51));
  SipUri::~SipUri(this);
}

void SipUserAgent::setPublicGruu(void *a1, uint64_t a2)
{
  v4 = a1[85];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Saving pub-gruu: ", 17);
  *(v5 + 17) = 0;
  (*(*v5 + 32))(v5, a2);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  operator new();
}

void SipUserAgent::publicDomain(SipUserAgent *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(this + 79);
  if (v4 && SipUri::isSipUri(v4))
  {
    v5 = *(this + 79);
    if ((*(v5 + 39) & 0x8000000000000000) != 0)
    {
      if (*(v5 + 3))
      {
        goto LABEL_10;
      }
    }

    else if (*(v5 + 39))
    {
      goto LABEL_10;
    }

    v6 = *(v5 + 6);
    if (v6 && (*(*v6 + 88))(v6))
    {
      v5 = *(this + 79);
LABEL_10:
      SipHost::toString((v5 + 8));
    }
  }

  v9 = *(this + 73);
  v10 = *(this + 74);
  while (v9 != v10)
  {
    v5 = *v9;
    if (SipUri::isSipUri(*v9))
    {
      v11 = *(v5 + 39);
      if (v11 < 0)
      {
        v11 = *(v5 + 3);
      }

      if (v11)
      {
        goto LABEL_10;
      }

      v12 = *(v5 + 6);
      if (v12)
      {
        if ((*(*v12 + 88))(v12))
        {
          goto LABEL_10;
        }
      }
    }

    ++v9;
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (!v7)
  {
    v38 = 0;
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
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    SipUri::SipUri(&v13, (*(this + 42) + 2200));
    v8 = BYTE7(v15);
    if (SBYTE7(v15) < 0)
    {
      v8 = *(&v14 + 1);
    }

    if ((v8 || v16 && (*(*v16 + 88))(v16)) && !SipUri::isBarred(&v13))
    {
      SipHost::toString((&v13 + 8));
    }

    SipUri::~SipUri(&v13);
  }
}

void sub_1E4D54E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  SipUri::~SipUri(va);
  if (v6 < 0)
  {
    operator delete(*v5);
  }

  _Unwind_Resume(a1);
}

void SipUserAgent::clearLastPreferredPublicUri(SipUserAgent *this)
{
  v2 = (*(*this + 64))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Clearing lastPreferredPublicUri ", 32);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  v3 = *(this + 80);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 80) = 0;

  SipUserAgent::updateXCAPManagerWithImpuInfo(this);
}

uint64_t SipUserAgent::setPreferredIdentityForAnonymousCalls(SipUserAgent *this, const SipUri *a2)
{
  v4 = *(this + 81);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = (*(*a2 + 16))(a2);
  *(this + 81) = result;
  return result;
}

const void **SipMessage::header<SipSupportedHeader>(SipMessage *a1)
{
  result = SipMessage::headerWithName(a1, "Supported", 1);
  if (result)
  {
    v2 = **result;
  }

  return result;
}

uint64_t SipMultiStringHeader::addValues<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v5 + 64, v4 + 4);
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

void SipUserAgent::addUAHeaders(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = SipMessage::headerWithName(v4, "Allow", 1);
  if (v6)
  {
    v7 = **v6;
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v8 + 9);
  v9 = v8 + 72;
  std::__tree<std::string>::destroy((v9 - 1), v10);
  *v9 = 0;
  v9[1] = 0;
  *(v9 - 1) = v9;
  memset(&__str, 0, sizeof(__str));
  std::set<std::string>::set[abi:ne200100](&__str, *(a1 + 248) + 256);
  v11 = *(a1 + 200);
  if (v11 != (a1 + 208))
  {
    do
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&__str, v11 + 4);
      v12 = v11[1];
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
          v13 = v11[2];
          v37 = *v13 == v11;
          v11 = v13;
        }

        while (!v37);
      }

      v11 = v13;
    }

    while (v13 != (a1 + 208));
  }

  v14 = __str.__r_.__value_.__r.__words[0];
  if (__str.__r_.__value_.__l.__data_ != &__str.__r_.__value_.__r.__words[1])
  {
    do
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((v9 - 1), (v14 + 32));
      v15 = *(v14 + 8);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = v15->__r_.__value_.__r.__words[0];
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v14 + 16);
          v37 = v16->__r_.__value_.__r.__words[0] == v14;
          v14 = v16;
        }

        while (!v37);
      }

      v14 = v16;
    }

    while (v16 != &__str.__r_.__value_.__r.__words[1]);
  }

  std::__tree<std::string>::destroy(&__str, __str.__r_.__value_.__l.__size_);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v17 = *(a1 + 192);
  if (v17)
  {
    v18 = std::__shared_weak_count::lock(v17);
    if (v18)
    {
      v19 = *(a1 + 184);
      goto LABEL_27;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = 0;
LABEL_27:
  v20 = *a2;
  if (!*a2)
  {
    goto LABEL_185;
  }

  v21 = *v20;
  v22 = **v20;
  if (v23)
  {
    v24 = v23;
    v25 = *(a2 + 8);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      if (*(SipUserAgent::config(a1) + 688) != 1)
      {
        goto LABEL_135;
      }

      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else if ((*(SipUserAgent::config(a1) + 688) & 1) == 0)
    {
      goto LABEL_135;
    }

    v31 = (*(*v24 + 120))(v24);
    v32 = *(v31 + 23);
    v33 = v32;
    if ((v32 & 0x80u) != 0)
    {
      v32 = *(v31 + 8);
    }

    if (v32 != 3 || (v33 >= 0 ? (v34 = v31) : (v34 = *v31), (v35 = *v34, v36 = *(v34 + 2), v35 == SipRequest::kMethodBye) ? (v37 = v36 == BYTE2(SipRequest::kMethodBye)) : (v37 = 0), !v37))
    {
      v38 = (*(*v24 + 120))(v24);
      v39 = *(v38 + 23);
      v40 = v39;
      if ((v39 & 0x80u) != 0)
      {
        v39 = *(v38 + 8);
      }

      if (v39 != 6 || (v40 >= 0 ? (v41 = v38) : (v41 = *v38), (v42 = *v41, v43 = *(v41 + 4), v42 == *"INVITE") ? (v44 = v43 == *"TE") : (v44 = 0), !v44))
      {
        v45 = (*(*v24 + 120))(v24);
        v46 = *(v45 + 23);
        v47 = v46;
        if ((v46 & 0x80u) != 0)
        {
          v46 = *(v45 + 8);
        }

        if (v46 != 7 || (v47 >= 0 ? (v48 = v45) : (v48 = *v45), (v49 = *v48, v50 = *(v48 + 3), v49 == *"OPTIONS") ? (v51 = v50 == *"IONS") : (v51 = 0), !v51))
        {
          v52 = (*(*v24 + 120))(v24);
          v53 = *(v52 + 23);
          v54 = v53;
          if ((v53 & 0x80u) != 0)
          {
            v53 = *(v52 + 8);
          }

          if (v53 != 9 || (v54 >= 0 ? (v55 = v52) : (v55 = *v52), (v56 = *v55, v57 = *(v55 + 8), v56 == *"SUBSCRIBE") ? (v58 = v57 == SipRequest::kMethodSubscribe[8]) : (v58 = 0), !v58))
          {
            v59 = (*(*v24 + 120))(v24);
            v60 = *(v59 + 23);
            v61 = v60;
            if ((v60 & 0x80u) != 0)
            {
              v60 = *(v59 + 8);
            }

            if (v60 != 6 || (v61 >= 0 ? (v62 = v59) : (v62 = *v59), (v63 = *v62, v64 = *(v62 + 4), v63 == *"NOTIFY") ? (v65 = v64 == *"FY") : (v65 = 0), !v65))
            {
              v66 = (*(*v24 + 120))(v24);
              v67 = *(v66 + 23);
              v68 = v67;
              if ((v67 & 0x80u) != 0)
              {
                v67 = *(v66 + 8);
              }

              if (v67 != 5 || (v68 >= 0 ? (v69 = v66) : (v69 = *v66), (v70 = *v69, v71 = *(v69 + 4), v70 == *"REFER") ? (v72 = v71 == SipRequest::kMethodRefer[4]) : (v72 = 0), !v72))
              {
                v73 = (*(*v24 + 120))(v24);
                v74 = *(v73 + 23);
                v75 = v74;
                if ((v74 & 0x80u) != 0)
                {
                  v74 = *(v73 + 8);
                }

                if (v74 != 7 || (v75 >= 0 ? (v76 = v73) : (v76 = *v73), (v77 = *v76, v78 = *(v76 + 3), v77 == *"MESSAGE") ? (v79 = v78 == *"SAGE") : (v79 = 0), !v79))
                {
LABEL_133:
                  if (v25)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
                  }

LABEL_135:
                  v92 = SipUserAgent::config(a1);
                  SipMessage::addHeader(v24, "Max-Forwards", *(v92 + 796), 0);
                  if (v25)
                  {
                    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v93 = SipMessage::header<SipSupportedHeader>(v24);
                  SipMultiStringHeader::addValues<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v93, *(a1 + 224), (a1 + 232));
                  if (v25)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
                  }

                  memset(&__str, 0, sizeof(__str));
                  v94 = SipUserAgent::config(a1);
                  if (*(v94 + 687) < 0)
                  {
                    std::string::__init_copy_ctor_external(&__str, *(v94 + 664), *(v94 + 672));
                  }

                  else
                  {
                    __str = *(v94 + 664);
                  }

                  v95 = (*(*v24 + 120))(v24);
                  v96 = *(v95 + 23);
                  v97 = v96;
                  if ((v96 & 0x80u) != 0)
                  {
                    v96 = *(v95 + 8);
                  }

                  if (v96 == 8)
                  {
                    v98 = v97 >= 0 ? v95 : *v95;
                    if (*v98 == *"REGISTER")
                    {
                      goto LABEL_177;
                    }
                  }

                  v99 = (*(*v24 + 120))(v24);
                  v100 = *(v99 + 23);
                  v101 = v100;
                  if ((v100 & 0x80u) != 0)
                  {
                    v100 = *(v99 + 8);
                  }

                  if (v100 == 6 && (v101 >= 0 ? (v102 = v99) : (v102 = *v99), (v103 = *v102, v104 = *(v102 + 4), v103 == *"INVITE") ? (v105 = v104 == *"TE") : (v105 = 0), v105))
                  {
LABEL_177:
                    if (!v19)
                    {
LABEL_181:
                      v115 = SipMessage::header<SipUserAgentHeader>(*a2, 1);
                      std::string::operator=((v115 + 8), &__str);
                      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__str.__r_.__value_.__l.__data_);
                      }

                      goto LABEL_183;
                    }
                  }

                  else
                  {
                    v106 = (*(*v24 + 120))(v24);
                    v107 = *(v106 + 23);
                    v108 = v107;
                    if ((v107 & 0x80u) != 0)
                    {
                      v107 = *(v106 + 8);
                    }

                    if (v107 != 7)
                    {
                      goto LABEL_181;
                    }

                    v109 = v108 >= 0 ? v106 : *v106;
                    v110 = *v109;
                    v111 = *(v109 + 3);
                    v112 = v110 == *"OPTIONS" && v111 == *"IONS";
                    v113 = !v112;
                    if (v113 || v19 == 0)
                    {
                      goto LABEL_181;
                    }
                  }

                  if (*(v19 + 2817) == 1 && *(v19 + 240) == 1)
                  {
                    std::string::append(&__str, " Third-Party-Messaging", 0x16uLL);
                  }

                  goto LABEL_181;
                }
              }
            }
          }
        }
      }
    }

    v80 = *(a1 + 632);
    if (!v80)
    {
      v81 = *(a1 + 584);
      if (v81 == *(a1 + 592))
      {
        v80 = 0;
      }

      else
      {
        v80 = *v81;
      }
    }

    v86 = *(a1 + 192);
    if (v86)
    {
      v87 = std::__shared_weak_count::lock(v86);
      if (v87)
      {
        v88 = *(a1 + 184);
        if (v88)
        {
          if (*(v88 + 296) == 1)
          {
            if (v80 && !SipUri::isAnonymousUri(v80))
            {
              goto LABEL_130;
            }

            v80 = *(a1 + 648);
          }
        }
      }
    }

    else
    {
      v87 = 0;
    }

    if (!v80)
    {
      if (v87)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v87);
      }

      goto LABEL_133;
    }

LABEL_130:
    v89 = SipMessage::headerWithName(v24, "P-Preferred-Identity", 1);
    v90 = **v89;
    SipRouteSet::clear(v91 + 8);
    __str.__r_.__value_.__r.__words[2] = 0;
    v117 = 0;
    __str.__r_.__value_.__r.__words[0] = &unk_1F5EBEF50;
    __str.__r_.__value_.__l.__size_ = &__str.__r_.__value_.__r.__words[2];
    v118 = 256;
    SipRouteSet::addHop((v91 + 8), v80, 0, 0, &__str);
  }

  v26 = *v21;
  if (!v27)
  {
    goto LABEL_185;
  }

  v28 = v27;
  v25 = *(a2 + 8);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v27[32] - 200 < 0x64 || v19 && (v29 = SipStack::prefs(v19), ImsPrefs::AddSupportedHeaderToAllResponses(v29)))
  {
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = SipMessage::header<SipSupportedHeader>(v28);
    SipMultiStringHeader::addValues<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v30, *(a1 + 224), (a1 + 232));
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }
  }

  else if (SipMessage::firstHeaderWithName(v28, "Supported", 0))
  {
    v82 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v82 + 8), "stripping Supported header from ", 32);
    *(v82 + 17) = 0;
    MEMORY[0x1E6923350](*(v82 + 8), v28[32]);
    *(v82 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v82 + 8), " response", 9);
    *(v82 + 17) = 0;
    (*(*v82 + 64))(v82, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v82 + 17) = 0;
    SipMessage::removeHeadersWithName(v28, "Supported");
  }

  v83 = *a2;
  v84 = SipUserAgent::config(a1);
  v85 = SipMessage::header<SipUserAgentHeader>(v83, 1);
  std::string::operator=((v85 + 8), (v84 + 664));
LABEL_183:
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

LABEL_185:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_1E4D55C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, void *a13)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v15 + 8, a13);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(a1);
}

void SipUserAgent::makeSipInstance(SipUserAgent *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = SipUserAgent::config(a1);
  v7 = *(v6 + 487);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v6 + 472);
  }

  if (v7)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    SipUri::SipUri(v14);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 32) = 0;
    if (*(SipUserAgent::config(a1) + 456) == 1)
    {
      v8 = SipUserAgent::config(a1);
      v9 = SipUserAgent::config(a1);
      v10 = SipUserAgent::config(a1);
      ims::makeUrnFromImei(v8 + 464, (v9 + 488), *(v10 + 856), v14, v13);
    }

    else
    {
      v11 = SipUserAgent::config(a1);
      ims::makeUrnFromUuid(v11 + 464, v14, v13);
    }

    ImsResult::operator=(a3, v13);
    ImsResult::~ImsResult(v13);
    if (((*(**(a3 + 8) + 24))(*(a3 + 8), *(a3 + 16)) & 1) == 0)
    {
      SipUri::asString(v14, a2);
    }

    SipUri::~SipUri(v14);
  }

  else
  {
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

    memset(&v14[1] + 8, 0, 64);
    *&v14[0] = &unk_1F5EBDEF8;
    *(&v14[0] + 1) = &_bambiDomain;
    LODWORD(v14[1]) = 1073741825;
    v12 = ImsResult::operator<<<char [12]>(v14, "no deviceId");
    ImsResult::ImsResult(a3, v12);
    ImsResult::~ImsResult(v14);
  }
}

void sub_1E4D55F04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
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
  ImsResult::~ImsResult(va);
  ImsResult::~ImsResult(v2);
  SipUri::~SipUri(va1);
  _Unwind_Resume(a1);
}

BOOL SipUserAgent::isAnonymousEmergencyCall(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a1 + 192);
  if (!v4)
  {
    return 0;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(a1 + 184);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = *(v9 + 248);
  v12 = *(v10 + 336);
  v11 = *(v10 + 344);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v13 = *(v12 + 712);
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  else
  {
    v13 = *(v12 + 712);
  }

  if (v13 != 2)
  {
    isEmergencyInvite = SipUserAgent::isEmergencyInvite(a1, a2, a3);
  }

  else
  {
LABEL_9:
    isEmergencyInvite = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  return isEmergencyInvite;
}

BOOL SipUserAgent::isEmergencyInvite(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a1 + 192);
  if (!v4)
  {
    return 0;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 184);
  if (v8 && *(v8 + 296) == 1)
  {
    v9 = *(a2 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = a2[1];
    }

    if (v9 == 6)
    {
      if (v10 >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      v12 = *v11;
      v13 = *(v11 + 2);
      v15 = v12 == *"INVITE" && v13 == *"TE";
    }

    else
    {
      v15 = 0;
    }

    if (a3)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  return v16;
}

uint64_t SipUserAgent::shouldAddSipInstanceForNetwork(SipUserAgent *this)
{
  v2 = *(this + 24);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 23);
    if (v5 && ims::AccessNetwork::isWifi((v5 + 3432)))
    {
      v6 = *(SipUserAgent::config(this) + 615);
    }

    else
    {
      v6 = 1;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void SipUserAgent::fillContactForServicesAndMethod(SipUserAgent *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, __int128 *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v13 = std::__shared_weak_count::lock(v8);
  v14 = v13;
  if (!v13 || (v15 = *(a1 + 23)) == 0)
  {
LABEL_9:
    v21 = (*(*a1 + 48))(a1);
    (*(*a1 + 16))(a1, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "fillContactForServicesAndMethod: no stack or transport layer available", 70);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    *a6 = &unk_1F5EBDEF8;
    *(a6 + 8) = &_bambiDomain;
    *(a6 + 16) = 1073741826;
    if (!v14)
    {
      return;
    }

    goto LABEL_10;
  }

  v27 = v13;
  v17 = *(v15 + 280);
  v16 = *(v15 + 288);
  if (!v16)
  {
    if (v17)
    {
      v18 = a2;
      v19 = 0;
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      v28 = 0u;
      v29 = 0u;
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  if (!v17)
  {
LABEL_19:
    v14 = v27;
    goto LABEL_9;
  }

  v18 = a2;
  v17 = *(v15 + 280);
  v19 = *(v15 + 288);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v28 = 0u;
  v29 = 0u;
  if (!v19)
  {
LABEL_14:
    v20 = 1;
    goto LABEL_15;
  }

  v20 = 0;
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_15:
  SipTransportLayer::fillContactHost(v17, (v18 + 8), &v28);
  if ((v20 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (!(*(**(&v28 + 1) + 24))(*(&v28 + 1), v29))
  {
    isWifi = ims::AccessNetwork::isWifi((v15 + 3432));
    v23 = *(v15 + 296);
    v24 = *(SipUserAgent::config(a1) + 456);
    v25 = SipUserAgent::config(a1);
    if (v24)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    SipHeaderTemplateMap::matchingHeaderTemplate(v25 + 1160, a4, a5, isWifi, v23, v26, a3);
  }

  ImsResult::ImsResult(a6, &v28);
  ImsResult::~ImsResult(&v28);
  v14 = v27;
LABEL_10:
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
}

void sub_1E4D56E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  ims::CFType::~CFType(&a24);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  ImsResult::~ImsResult(&a32);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  _Unwind_Resume(a1);
}