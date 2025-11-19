void std::__shared_ptr_emplace<mlcore::LocalLibrary>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::DeviceLibrary::localLibrary@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 160);
  *a2 = *(this + 152);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t mlcore::DeviceLibrary::expectedEntityQuerySize(mlcore::DeviceLibrary *this, mlcore::EntityClass *a2)
{
  v2 = this + 184;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (*(v2 + 2) == a2)
    {
      return *(v2 + 3);
    }
  }

  return 0;
}

int8x8_t *mlcore::DeviceLibrary::setExpectedEntityQuerySize(int8x8_t *this, unint64_t a2, uint64_t a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = this[22];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*&this[21] + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  v10[3] = a3;
  return this;
}

uint64_t mlcore::TypedEntityClass<mlcore::TVShow>::sharedPointer()
{
  if (atomic_load_explicit(&mlcore::TypedEntityClass<mlcore::TVShow>::sharedPointer(void)::__once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&mlcore::TypedEntityClass<mlcore::TVShow>::sharedPointer(void)::__once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TypedEntityClass<mlcore::TVShow>::sharedPointer(void)::{lambda(void)#1} &&>>);
  }

  return mlcore::TypedEntityClass<mlcore::TVShow>::sharedPointer(void)::__sharedPointer;
}

void mlcore::TypedEntityClass<mlcore::TVShow>::databaseTablesToInsertInto(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::TypedEntityClass<mlcore::TVShow>::databaseTablesToDeleteFrom(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t mlcore::TypedEntityClass<mlcore::TVShow>::databaseTable()
{
  mediaplatform::Singleton<mlcore::ItemArtistTable>::sharedInstance(&v2);
  v0 = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v0;
}

void *mediaplatform::Singleton<mlcore::ItemArtistTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore15ItemArtistTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::ItemArtistTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::ItemArtistTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D57C4AE4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ItemArtistTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1A10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void sub_1D57C4D78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::TVShow>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::TVShow>::~TypedEntityClass(mlcore::EntityClass *a1)
{
  mlcore::EntityClass::~EntityClass(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TVShow::~TVShow(mlcore::TVShow *this)
{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

uint64_t mlcore::TVShowPropertyEpisodeCount(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::TVShowPropertyEpisodeCount(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::TVShowPropertyEpisodeCount(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TVShowPropertyEpisodeCount(void)::$_0 &&>>);
  }

  return mlcore::TVShowPropertyEpisodeCount(void)::property;
}

void sub_1D57C5128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::TVShowPropertyHasSeriesName(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::TVShowPropertyHasSeriesName(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::TVShowPropertyHasSeriesName(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TVShowPropertyHasSeriesName(void)::$_0 &&>>);
  }

  return mlcore::TVShowPropertyHasSeriesName(void)::property;
}

void sub_1D57C5350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::TVShowPropertySeriesOrder(mlcore *this)
{
  v1 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertySeriesNameOrder(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<long long>(v1, v2, v3);
}

uint64_t mlcore::TypedEntityClass<mlcore::ItemArtist>::sharedPointer()
{
  if (atomic_load_explicit(&mlcore::TypedEntityClass<mlcore::ItemArtist>::sharedPointer(void)::__once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&mlcore::TypedEntityClass<mlcore::ItemArtist>::sharedPointer(void)::__once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TypedEntityClass<mlcore::ItemArtist>::sharedPointer(void)::{lambda(void)#1} &&>>);
  }

  return mlcore::TypedEntityClass<mlcore::ItemArtist>::sharedPointer(void)::__sharedPointer;
}

void sub_1D57C5664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ItemArtist>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2260;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::ItemArtist>::~TypedEntityClass(mlcore::EntityClass *a1)
{
  mlcore::EntityClass::~EntityClass(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TVShowPropertySeriesOrderSection(mlcore *this)
{
  v1 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertySeriesNameOrderSection(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<int>(v1, v2, v3);
}

void mlcore::TVShow::TVShow(mlcore::TVShow *this, uint64_t a2)
{
  mlcore::ItemArtist::ItemArtist(this, a2);
  *v2 = &unk_1F50D3B18;
}

{
  mlcore::ItemArtist::ItemArtist(this, a2);
  *v2 = &unk_1F50D3B18;
}

uint64_t mlcore::ItemPlaybackTable::ItemPlaybackTable(mlcore::ItemPlaybackTable *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  std::string::basic_string[abi:ne200100]<0>(&v123, "item_playback");
  std::string::basic_string[abi:ne200100]<0>(&__s, "item_pid");
  v119 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v120, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v120 = __s;
  }

  v121 = 1;
  v122[0] = 0;
  *&v122[4] = 0;
  v119 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v113, "audio_format");
  v114 = &unk_1F50D86E0;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v115, v113.__r_.__value_.__l.__data_, v113.__r_.__value_.__l.__size_);
  }

  else
  {
    v115 = v113;
  }

  v116 = 16;
  LOBYTE(v117) = 1;
  HIDWORD(v117) = 0;
  v114 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v108, "bit_rate");
  v109 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, v108.__r_.__value_.__l.__data_, v108.__r_.__value_.__l.__size_);
  }

  else
  {
    v110 = v108;
  }

  v111 = 16;
  LOBYTE(v112) = 1;
  HIDWORD(v112) = 0;
  v109 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v103, "codec_type");
  v104 = &unk_1F50D86E0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v105, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
  }

  else
  {
    v105 = v103;
  }

  v106 = 16;
  LOBYTE(v107) = 1;
  HIDWORD(v107) = 0;
  v104 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v98, "codec_subtype");
  v99 = &unk_1F50D86E0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v100, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    v100 = v98;
  }

  v101 = 16;
  LOBYTE(v102) = 1;
  HIDWORD(v102) = 0;
  v99 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v93, "data_kind");
  v94 = &unk_1F50D86E0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v95, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
  }

  else
  {
    v95 = v93;
  }

  v96 = 16;
  LOBYTE(v97) = 1;
  HIDWORD(v97) = 0;
  v94 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v87, "data_url");
  v88 = &unk_1F50D86E0;
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v89, v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_);
  }

  else
  {
    v89 = v87;
  }

  v90 = 0;
  v91 = 0;
  memset(&v92, 0, sizeof(v92));
  v88 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&v82, "duration");
  v83 = &unk_1F50D86E0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v84, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
  }

  else
  {
    v84 = v82;
  }

  v85 = 16;
  v86[0] = 1;
  *&v86[4] = 0;
  v83 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v76, "eq_preset");
  v77 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v78, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v78 = v76;
  }

  v79 = 0;
  v80 = 0;
  memset(&v81, 0, sizeof(v81));
  v77 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&v70, "format");
  v71 = &unk_1F50D86E0;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v72, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    v72 = v70;
  }

  v73 = 0;
  v74 = 0;
  memset(&v75, 0, sizeof(v75));
  v71 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&v65, "gapless_heuristic_info");
  v66 = &unk_1F50D86E0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v67 = v65;
  }

  v68 = 16;
  v69[0] = 1;
  *&v69[4] = 0;
  v66 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v60, "gapless_encoding_delay");
  v61 = &unk_1F50D86E0;
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    v62 = v60;
  }

  v63 = 16;
  v64[0] = 1;
  *&v64[4] = 0;
  v61 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v55, "gapless_encoding_drain");
  v56 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v57 = v55;
  }

  v58 = 16;
  v59[0] = 1;
  *&v59[4] = 0;
  v56 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v50, "gapless_last_frame_resynch");
  v51 = &unk_1F50D86E0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v52 = v50;
  }

  v53 = 16;
  v54[0] = 1;
  *&v54[4] = 0;
  v51 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v45, "has_video");
  v46 = &unk_1F50D86E0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v47 = v45;
  }

  v48 = 16;
  LOBYTE(v49) = 1;
  HIDWORD(v49) = 0;
  v46 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v40, "relative_volume");
  v41 = &unk_1F50D86E0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    v42 = v40;
  }

  v43 = 0;
  LOBYTE(v44) = 0;
  HIDWORD(v44) = 0;
  v41 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v35, "sample_rate");
  v36 = &unk_1F50D86E0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = v35;
  }

  v38 = 16;
  v39[0] = 1;
  *&v39[4] = 0;
  v36 = &unk_1F50D7B00;
  std::string::basic_string[abi:ne200100]<0>(&v30, "start_time_ms");
  v31 = &unk_1F50D86E0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    v32 = v30;
  }

  v33 = 16;
  v34[0] = 1;
  *&v34[4] = 0;
  v31 = &unk_1F50D7B00;
  std::string::basic_string[abi:ne200100]<0>(&v25, "stop_time_ms");
  v26 = &unk_1F50D86E0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v25;
  }

  v28 = 16;
  v29[0] = 1;
  *&v29[4] = 0;
  v26 = &unk_1F50D7B00;
  std::string::basic_string[abi:ne200100]<0>(&v20, "volume_normalization_energy");
  v21 = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = v20;
  }

  v23 = 16;
  LOBYTE(v24) = 1;
  HIDWORD(v24) = 0;
  v21 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v15, "progression_direction");
  v16 = &unk_1F50D86E0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = v15;
  }

  v18 = 16;
  LOBYTE(v19) = 1;
  HIDWORD(v19) = 0;
  v16 = &unk_1F50D7AE0;
  v216 = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v217, v120.__r_.__value_.__l.__data_, v120.__r_.__value_.__l.__size_);
  }

  else
  {
    v217 = v120;
  }

  v218 = v121;
  v216 = &unk_1F50D8958;
  v219 = *v122;
  v220 = *&v122[8];
  v212 = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v213, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
  }

  else
  {
    v213 = v115;
  }

  v214 = v116;
  v212 = &unk_1F50D8978;
  v215 = v117;
  v208 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v209, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
  }

  else
  {
    v209 = v110;
  }

  v210 = v111;
  v208 = &unk_1F50D8978;
  v211 = v112;
  v204 = &unk_1F50D86E0;
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v205, v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
  }

  else
  {
    v205 = v105;
  }

  v206 = v106;
  v204 = &unk_1F50D8978;
  v207 = v107;
  v200 = &unk_1F50D86E0;
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v201, v100.__r_.__value_.__l.__data_, v100.__r_.__value_.__l.__size_);
  }

  else
  {
    v201 = v100;
  }

  v202 = v101;
  v200 = &unk_1F50D8978;
  v203 = v102;
  v196 = &unk_1F50D86E0;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v197, v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
  }

  else
  {
    v197 = v95;
  }

  v198 = v96;
  v196 = &unk_1F50D8978;
  v199 = v97;
  v191 = &unk_1F50D86E0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v192, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
  }

  else
  {
    v192 = v89;
  }

  v193 = v90;
  v191 = &unk_1F50D89B8;
  v194 = v91;
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v195, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
  }

  else
  {
    v195 = v92;
  }

  v186 = &unk_1F50D86E0;
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v187, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v187 = v84;
  }

  v188 = v85;
  v186 = &unk_1F50D8958;
  v189 = *v86;
  v190 = *&v86[8];
  v181 = &unk_1F50D86E0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v182, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v182 = v78;
  }

  v183 = v79;
  v181 = &unk_1F50D89B8;
  v184 = v80;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v185, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    v185 = v81;
  }

  v176 = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v177, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v177 = v72;
  }

  v178 = v73;
  v176 = &unk_1F50D89B8;
  v179 = v74;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v180, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v180 = v75;
  }

  v171 = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v172, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
  }

  else
  {
    v172 = v67;
  }

  v173 = v68;
  v171 = &unk_1F50D8958;
  v174 = *v69;
  v175 = *&v69[8];
  v166 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v167, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v167 = v62;
  }

  v168 = v63;
  v166 = &unk_1F50D8958;
  v169 = *v64;
  v170 = *&v64[8];
  v161 = &unk_1F50D86E0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v162, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v162 = v57;
  }

  v163 = v58;
  v161 = &unk_1F50D8958;
  v164 = *v59;
  v165 = *&v59[8];
  v156 = &unk_1F50D86E0;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v157, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v157 = v52;
  }

  v158 = v53;
  v156 = &unk_1F50D8958;
  v159 = *v54;
  v160 = *&v54[8];
  v152 = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v153, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v153 = v47;
  }

  v154 = v48;
  v152 = &unk_1F50D8978;
  v155 = v49;
  v148 = &unk_1F50D86E0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v149, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v149 = v42;
  }

  v150 = v43;
  v148 = &unk_1F50D8978;
  v151 = v44;
  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v144, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v144 = v37;
  }

  v145 = v38;
  v143 = &unk_1F50D8998;
  v146 = *v39;
  v147 = *&v39[8];
  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v139 = v32;
  }

  v140 = v33;
  v138 = &unk_1F50D8998;
  v141 = *v34;
  v142 = *&v34[8];
  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v134 = v27;
  }

  v135 = v28;
  v133 = &unk_1F50D8998;
  v136 = *v29;
  v137 = *&v29[8];
  v129 = &unk_1F50D86E0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v130, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    v130 = v22;
  }

  v131 = v23;
  v129 = &unk_1F50D8978;
  v132 = v24;
  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v126, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v126 = v17;
  }

  v127 = v18;
  v125 = &unk_1F50D8978;
  v128 = v19;
  *v1 = &unk_1F50DD390;
  v2 = (v1 + 8);
  if (SHIBYTE(v124) < 0)
  {
    std::string::__init_copy_ctor_external(v2, v123, *(&v123 + 1));
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = v123;
    *(v1 + 24) = v124;
  }

  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *v1 = &unk_1F50D8BB8;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  v312 = &unk_1F50D86E0;
  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v313, v217.__r_.__value_.__l.__data_, v217.__r_.__value_.__l.__size_);
  }

  else
  {
    v313 = v217;
  }

  v314 = v218;
  v312 = &unk_1F50D8958;
  v315 = v219;
  v316 = v220;
  v308 = &unk_1F50D86E0;
  if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v309, v213.__r_.__value_.__l.__data_, v213.__r_.__value_.__l.__size_);
  }

  else
  {
    v309 = v213;
  }

  v310 = v214;
  v308 = &unk_1F50D8978;
  v311 = v215;
  v304 = &unk_1F50D86E0;
  if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v305, v209.__r_.__value_.__l.__data_, v209.__r_.__value_.__l.__size_);
  }

  else
  {
    v305 = v209;
  }

  v306 = v210;
  v304 = &unk_1F50D8978;
  v307 = v211;
  v300 = &unk_1F50D86E0;
  if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v301, v205.__r_.__value_.__l.__data_, v205.__r_.__value_.__l.__size_);
  }

  else
  {
    v301 = v205;
  }

  v302 = v206;
  v300 = &unk_1F50D8978;
  v303 = v207;
  v296 = &unk_1F50D86E0;
  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v297, v201.__r_.__value_.__l.__data_, v201.__r_.__value_.__l.__size_);
  }

  else
  {
    v297 = v201;
  }

  v298 = v202;
  v296 = &unk_1F50D8978;
  v299 = v203;
  v292 = &unk_1F50D86E0;
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v293, v197.__r_.__value_.__l.__data_, v197.__r_.__value_.__l.__size_);
  }

  else
  {
    v293 = v197;
  }

  v294 = v198;
  v292 = &unk_1F50D8978;
  v295 = v199;
  v287 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v288, v192.__r_.__value_.__l.__data_, v192.__r_.__value_.__l.__size_);
  }

  else
  {
    v288 = v192;
  }

  v289 = v193;
  v287 = &unk_1F50D89B8;
  v290 = v194;
  if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v291, v195.__r_.__value_.__l.__data_, v195.__r_.__value_.__l.__size_);
  }

  else
  {
    v291 = v195;
  }

  v282 = &unk_1F50D86E0;
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v283, v187.__r_.__value_.__l.__data_, v187.__r_.__value_.__l.__size_);
  }

  else
  {
    v283 = v187;
  }

  v284 = v188;
  v282 = &unk_1F50D8958;
  v285 = v189;
  v286 = v190;
  v277 = &unk_1F50D86E0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v278, v182.__r_.__value_.__l.__data_, v182.__r_.__value_.__l.__size_);
  }

  else
  {
    v278 = v182;
  }

  v279 = v183;
  v277 = &unk_1F50D89B8;
  v280 = v184;
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v281, v185.__r_.__value_.__l.__data_, v185.__r_.__value_.__l.__size_);
  }

  else
  {
    v281 = v185;
  }

  v272 = &unk_1F50D86E0;
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v273, v177.__r_.__value_.__l.__data_, v177.__r_.__value_.__l.__size_);
  }

  else
  {
    v273 = v177;
  }

  v274 = v178;
  v272 = &unk_1F50D89B8;
  v275 = v179;
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v276, v180.__r_.__value_.__l.__data_, v180.__r_.__value_.__l.__size_);
  }

  else
  {
    v276 = v180;
  }

  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v268, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
  }

  else
  {
    v268 = v172;
  }

  v269 = v173;
  v267 = &unk_1F50D8958;
  v270 = v174;
  v271 = v175;
  v262 = &unk_1F50D86E0;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v263, v167.__r_.__value_.__l.__data_, v167.__r_.__value_.__l.__size_);
  }

  else
  {
    v263 = v167;
  }

  v264 = v168;
  v262 = &unk_1F50D8958;
  v265 = v169;
  v266 = v170;
  v257 = &unk_1F50D86E0;
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v258, v162.__r_.__value_.__l.__data_, v162.__r_.__value_.__l.__size_);
  }

  else
  {
    v258 = v162;
  }

  v259 = v163;
  v257 = &unk_1F50D8958;
  v260 = v164;
  v261 = v165;
  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v253, v157.__r_.__value_.__l.__data_, v157.__r_.__value_.__l.__size_);
  }

  else
  {
    v253 = v157;
  }

  v254 = v158;
  v252 = &unk_1F50D8958;
  v255 = v159;
  v256 = v160;
  v248 = &unk_1F50D86E0;
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v249, v153.__r_.__value_.__l.__data_, v153.__r_.__value_.__l.__size_);
  }

  else
  {
    v249 = v153;
  }

  v250 = v154;
  v248 = &unk_1F50D8978;
  v251 = v155;
  v244 = &unk_1F50D86E0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v245, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
  }

  else
  {
    v245 = v149;
  }

  v246 = v150;
  v244 = &unk_1F50D8978;
  v247 = v151;
  v239 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v240, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_);
  }

  else
  {
    v240 = v144;
  }

  v241 = v145;
  v239 = &unk_1F50D8998;
  v242 = v146;
  v243 = v147;
  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v235, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v235 = v139;
  }

  v236 = v140;
  v234 = &unk_1F50D8998;
  v237 = v141;
  v238 = v142;
  v229 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v230, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_);
  }

  else
  {
    v230 = v134;
  }

  v231 = v135;
  v229 = &unk_1F50D8998;
  v232 = v136;
  v233 = v137;
  v225 = &unk_1F50D86E0;
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v226, v130.__r_.__value_.__l.__data_, v130.__r_.__value_.__l.__size_);
  }

  else
  {
    v226 = v130;
  }

  v227 = v131;
  v225 = &unk_1F50D8978;
  v228 = v132;
  v221 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v126.__r_.__value_.__l.__data_, v126.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v126;
  }

  v223 = v127;
  v221 = &unk_1F50D8978;
  v224 = v128;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::DatabaseColumnTuple(v1 + 80, &v312, &v308, &v304, &v300, &v296, &v292, &v287, &v282, &v277, &v272, &v267, &v262, &v257, &v252, &v248, &v244, &v239, &v234, &v229, &v225, &v221);
  v221 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v225 = &unk_1F50D86E0;
  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v226.__r_.__value_.__l.__data_);
  }

  v229 = &unk_1F50D86E0;
  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v230.__r_.__value_.__l.__data_);
  }

  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  v239 = &unk_1F50D86E0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  v244 = &unk_1F50D86E0;
  if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v245.__r_.__value_.__l.__data_);
  }

  v248 = &unk_1F50D86E0;
  if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v249.__r_.__value_.__l.__data_);
  }

  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v253.__r_.__value_.__l.__data_);
  }

  v257 = &unk_1F50D86E0;
  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v258.__r_.__value_.__l.__data_);
  }

  v262 = &unk_1F50D86E0;
  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v263.__r_.__value_.__l.__data_);
  }

  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v268.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v272);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v277);
  v282 = &unk_1F50D86E0;
  if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v283.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v287);
  v292 = &unk_1F50D86E0;
  if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v293.__r_.__value_.__l.__data_);
  }

  v296 = &unk_1F50D86E0;
  if (SHIBYTE(v297.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v297.__r_.__value_.__l.__data_);
  }

  v300 = &unk_1F50D86E0;
  if (SHIBYTE(v301.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v301.__r_.__value_.__l.__data_);
  }

  v304 = &unk_1F50D86E0;
  if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v305.__r_.__value_.__l.__data_);
  }

  v308 = &unk_1F50D86E0;
  if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v309.__r_.__value_.__l.__data_);
  }

  v312 = &unk_1F50D86E0;
  if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v313.__r_.__value_.__l.__data_);
  }

  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  v129 = &unk_1F50D86E0;
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

  v148 = &unk_1F50D86E0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

  v152 = &unk_1F50D86E0;
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  v156 = &unk_1F50D86E0;
  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v157.__r_.__value_.__l.__data_);
  }

  v161 = &unk_1F50D86E0;
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v162.__r_.__value_.__l.__data_);
  }

  v166 = &unk_1F50D86E0;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v167.__r_.__value_.__l.__data_);
  }

  v171 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v172.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v176);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v181);
  v186 = &unk_1F50D86E0;
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v187.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v191);
  v196 = &unk_1F50D86E0;
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  v200 = &unk_1F50D86E0;
  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v201.__r_.__value_.__l.__data_);
  }

  v204 = &unk_1F50D86E0;
  if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v205.__r_.__value_.__l.__data_);
  }

  v208 = &unk_1F50D86E0;
  if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v209.__r_.__value_.__l.__data_);
  }

  v212 = &unk_1F50D86E0;
  if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v213.__r_.__value_.__l.__data_);
  }

  v216 = &unk_1F50D86E0;
  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v217.__r_.__value_.__l.__data_);
  }

  *v1 = &unk_1F50D8168;
  *(v1 + 1136) = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1144), v120.__r_.__value_.__l.__data_, v120.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1144) = v120;
  }

  *(v1 + 1168) = v121;
  *(v1 + 1172) = *v122;
  *(v1 + 1180) = *&v122[8];
  *(v1 + 1136) = &unk_1F50D7AC0;
  *(v1 + 1184) = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1192), v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1192) = v115;
  }

  *(v1 + 1216) = v116;
  *(v1 + 1220) = v117;
  *(v1 + 1184) = &unk_1F50D7AE0;
  *(v1 + 1232) = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1240), v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1240) = v110;
  }

  *(v1 + 1264) = v111;
  *(v1 + 1268) = v112;
  *(v1 + 1232) = &unk_1F50D7AE0;
  *(v1 + 1280) = &unk_1F50D86E0;
  v3 = (v1 + 1288);
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&v105.__r_.__value_.__l.__data_;
    *(v1 + 1304) = *(&v105.__r_.__value_.__l + 2);
  }

  *(v1 + 1312) = v106;
  *(v1 + 1316) = v107;
  *(v1 + 1280) = &unk_1F50D7AE0;
  *(v1 + 1328) = &unk_1F50D86E0;
  v4 = (v1 + 1336);
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v4, v100.__r_.__value_.__l.__data_, v100.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *&v100.__r_.__value_.__l.__data_;
    *(v1 + 1352) = *(&v100.__r_.__value_.__l + 2);
  }

  *(v1 + 1360) = v101;
  *(v1 + 1364) = v102;
  *(v1 + 1328) = &unk_1F50D7AE0;
  *(v1 + 1376) = &unk_1F50D86E0;
  v5 = (v1 + 1384);
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v5, v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *&v95.__r_.__value_.__l.__data_;
    *(v1 + 1400) = *(&v95.__r_.__value_.__l + 2);
  }

  *(v1 + 1408) = v96;
  *(v1 + 1412) = v97;
  *(v1 + 1376) = &unk_1F50D7AE0;
  *(v1 + 1424) = &unk_1F50D86E0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1432), v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1432) = v89;
  }

  *(v1 + 1456) = v90;
  *(v1 + 1424) = &unk_1F50D89B8;
  *(v1 + 1460) = v91;
  v6 = (v1 + 1464);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v6, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v6->__r_.__value_.__l.__data_ = *&v92.__r_.__value_.__l.__data_;
    *(v1 + 1480) = *(&v92.__r_.__value_.__l + 2);
  }

  *(v1 + 1424) = &unk_1F50D7B20;
  *(v1 + 1488) = &unk_1F50D86E0;
  v7 = (v1 + 1496);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v7, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *&v84.__r_.__value_.__l.__data_;
    *(v1 + 1512) = *(&v84.__r_.__value_.__l + 2);
  }

  *(v1 + 1520) = v85;
  *(v1 + 1524) = *v86;
  *(v1 + 1532) = *&v86[8];
  *(v1 + 1488) = &unk_1F50D7AC0;
  *(v1 + 1536) = &unk_1F50D86E0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1544), v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1544) = v78;
  }

  *(v1 + 1568) = v79;
  *(v1 + 1536) = &unk_1F50D89B8;
  *(v1 + 1572) = v80;
  v8 = (v1 + 1576);
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *&v81.__r_.__value_.__l.__data_;
    *(v1 + 1592) = *(&v81.__r_.__value_.__l + 2);
  }

  *(v1 + 1536) = &unk_1F50D7B20;
  *(v1 + 1600) = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1608), v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1608) = v72;
  }

  *(v1 + 1632) = v73;
  *(v1 + 1600) = &unk_1F50D89B8;
  *(v1 + 1636) = v74;
  v9 = (v1 + 1640);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v9, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *&v75.__r_.__value_.__l.__data_;
    *(v1 + 1656) = *(&v75.__r_.__value_.__l + 2);
  }

  *(v1 + 1600) = &unk_1F50D7B20;
  *(v1 + 1664) = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1672), v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1672) = v67;
  }

  *(v1 + 1696) = v68;
  *(v1 + 1700) = *v69;
  *(v1 + 1708) = *&v69[8];
  *(v1 + 1664) = &unk_1F50D7AC0;
  *(v1 + 1712) = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1720), v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1720) = v62;
  }

  *(v1 + 1744) = v63;
  *(v1 + 1748) = *v64;
  *(v1 + 1756) = *&v64[8];
  *(v1 + 1712) = &unk_1F50D7AC0;
  *(v1 + 1760) = &unk_1F50D86E0;
  v10 = (v1 + 1768);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v10, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v10->__r_.__value_.__l.__data_ = *&v57.__r_.__value_.__l.__data_;
    *(v1 + 1784) = *(&v57.__r_.__value_.__l + 2);
  }

  *(v1 + 1792) = v58;
  *(v1 + 1796) = *v59;
  *(v1 + 1804) = *&v59[8];
  *(v1 + 1760) = &unk_1F50D7AC0;
  *(v1 + 1808) = &unk_1F50D86E0;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1816), v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1816) = v52;
  }

  *(v1 + 1840) = v53;
  *(v1 + 1844) = *v54;
  *(v1 + 1852) = *&v54[8];
  *(v1 + 1808) = &unk_1F50D7AC0;
  *(v1 + 1856) = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1864), v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1864) = v47;
  }

  *(v1 + 1888) = v48;
  *(v1 + 1892) = v49;
  *(v1 + 1856) = &unk_1F50D7AE0;
  *(v1 + 1904) = &unk_1F50D86E0;
  v11 = (v1 + 1912);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v11, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *&v42.__r_.__value_.__l.__data_;
    *(v1 + 1928) = *(&v42.__r_.__value_.__l + 2);
  }

  *(v1 + 1936) = v43;
  *(v1 + 1940) = v44;
  *(v1 + 1904) = &unk_1F50D7AE0;
  *(v1 + 1952) = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1960), v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1960) = v37;
  }

  *(v1 + 1984) = v38;
  *(v1 + 1988) = *v39;
  *(v1 + 1996) = *&v39[8];
  *(v1 + 1952) = &unk_1F50D7B00;
  *(v1 + 2000) = &unk_1F50D86E0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 2008), v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 2008) = v32;
  }

  *(v1 + 2032) = v33;
  *(v1 + 2036) = *v34;
  *(v1 + 2044) = *&v34[8];
  *(v1 + 2000) = &unk_1F50D7B00;
  *(v1 + 2048) = &unk_1F50D86E0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 2056), v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 2056) = v27;
  }

  *(v1 + 2080) = v28;
  *(v1 + 2084) = *v29;
  *(v1 + 2092) = *&v29[8];
  *(v1 + 2048) = &unk_1F50D7B00;
  *(v1 + 2096) = &unk_1F50D86E0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 2104), v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 2104) = v22;
  }

  *(v1 + 2128) = v23;
  *(v1 + 2132) = v24;
  *(v1 + 2096) = &unk_1F50D7AE0;
  *(v1 + 2144) = &unk_1F50D86E0;
  v12 = (v1 + 2152);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v12, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    v13 = (v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v13 = 0;
    *&v12->__r_.__value_.__l.__data_ = *&v17.__r_.__value_.__l.__data_;
    *(v1 + 2168) = *(&v17.__r_.__value_.__l + 2);
  }

  *(v1 + 2176) = v18;
  *(v1 + 2180) = v19;
  *(v1 + 2144) = &unk_1F50D7AE0;
  v16 = &unk_1F50D86E0;
  if (v13)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v21 = &unk_1F50D86E0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v26 = &unk_1F50D86E0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v31 = &unk_1F50D86E0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v36 = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v41 = &unk_1F50D86E0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v46 = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v51 = &unk_1F50D86E0;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v56 = &unk_1F50D86E0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v61 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  v66 = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v71);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v77);
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  v83 = &unk_1F50D86E0;
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v88);
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  v94 = &unk_1F50D86E0;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  v99 = &unk_1F50D86E0;
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  v104 = &unk_1F50D86E0;
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  v109 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  v114 = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  v119 = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v124) < 0)
  {
    operator delete(v123);
  }

  *v1 = &unk_1F50D4CD8;
  return v1;
}

void sub_1D57C91A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _Unwind_Exception *exception_objecta, uint64_t a24, void **a25, void **a26, void **a27, uint64_t a28, uint64_t a29, void **a30, void **a31, uint64_t a32, void **a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void **a38, uint64_t a39, void **a40, void **a41, uint64_t a42, void **a43, void **a44, uint64_t a45, void **a46, void **a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, unint64_t a54, unint64_t a55, unint64_t a56, unint64_t a57, unint64_t a58, unint64_t a59, unint64_t a60, unint64_t a61, unint64_t a62, unint64_t a63)
{
  *(v79 + 2096) = v72;
  if (*(v79 + 2127) < 0)
  {
    operator delete(*v78);
  }

  *(v79 + 2048) = v75;
  if (*(v79 + 2079) < 0)
  {
    operator delete(*v73);
  }

  *(v79 + 2000) = v77;
  if (*(v79 + 2031) < 0)
  {
    operator delete(*v74);
  }

  *(v79 + 1952) = a24;
  if (*(v79 + 1983) < 0)
  {
    operator delete(*v76);
  }

  *(v79 + 1904) = a28;
  if (*(v79 + 1935) < 0)
  {
    operator delete(*a25);
  }

  *(v79 + 1856) = a29;
  if (*(v79 + 1887) < 0)
  {
    operator delete(*a26);
  }

  *(v79 + 1808) = a32;
  if (*(v79 + 1839) < 0)
  {
    operator delete(*a27);
  }

  *(v79 + 1760) = a34;
  if (*(v79 + 1791) < 0)
  {
    operator delete(*a30);
  }

  *(v79 + 1712) = a35;
  if (*(v79 + 1743) < 0)
  {
    operator delete(*a31);
  }

  *(v79 + 1664) = a36;
  if (*(v79 + 1695) < 0)
  {
    operator delete(*a33);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a37);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a39);
  *(v79 + 1488) = a42;
  if (*(v79 + 1519) < 0)
  {
    operator delete(*a38);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a45);
  *(v79 + 1376) = a48;
  if (*(v79 + 1407) < 0)
  {
    operator delete(*a40);
  }

  *(v79 + 1328) = a49;
  if (*(v79 + 1359) < 0)
  {
    operator delete(*a41);
  }

  *(v79 + 1280) = a50;
  if (*(v79 + 1311) < 0)
  {
    operator delete(*a43);
  }

  *(v79 + 1232) = a51;
  if (*(v79 + 1263) < 0)
  {
    operator delete(*a44);
  }

  *(v79 + 1184) = a52;
  if (*(v79 + 1215) < 0)
  {
    operator delete(*a46);
  }

  *(v79 + 1136) = a53;
  if (*(v79 + 1167) < 0)
  {
    operator delete(*a47);
  }

  mediaplatform::DatabaseTable<long long,int,int,int,int,int,std::string,long long,std::string,std::string,long long,long long,long long,long long,int,int,double,double,double,int,int>::~DatabaseTable(v79);
  STACK[0x210] = a54;
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a72);
  }

  STACK[0x258] = a55;
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  STACK[0x2A0] = a56;
  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  STACK[0x2E8] = a57;
  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  STACK[0x330] = a58;
  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(STACK[0x338]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  STACK[0x378] = a59;
  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  STACK[0x3C0] = a60;
  if (SLOBYTE(STACK[0x3DF]) < 0)
  {
    operator delete(STACK[0x3C8]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  STACK[0x408] = a61;
  if (SLOBYTE(STACK[0x427]) < 0)
  {
    operator delete(STACK[0x410]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  STACK[0x450] = a62;
  if (SLOBYTE(STACK[0x46F]) < 0)
  {
    operator delete(STACK[0x458]);
  }

  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(STACK[0x438]);
  }

  STACK[0x498] = a63;
  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  STACK[0x4E0] = a64;
  if (SLOBYTE(STACK[0x4FF]) < 0)
  {
    operator delete(STACK[0x4E8]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(STACK[0x4C8]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x528]);
  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x580]);
  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(STACK[0x568]);
  }

  STACK[0x5D8] = a65;
  if (SLOBYTE(STACK[0x5F7]) < 0)
  {
    operator delete(STACK[0x5E0]);
  }

  if (SLOBYTE(STACK[0x5D7]) < 0)
  {
    operator delete(STACK[0x5C0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x620]);
  if (SLOBYTE(STACK[0x61F]) < 0)
  {
    operator delete(STACK[0x608]);
  }

  STACK[0x678] = a66;
  if (SLOBYTE(STACK[0x697]) < 0)
  {
    operator delete(STACK[0x680]);
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(STACK[0x660]);
  }

  STACK[0x6C0] = a67;
  if (SLOBYTE(STACK[0x6DF]) < 0)
  {
    operator delete(STACK[0x6C8]);
  }

  if (SLOBYTE(STACK[0x6BF]) < 0)
  {
    operator delete(STACK[0x6A8]);
  }

  STACK[0x708] = a68;
  if (SLOBYTE(STACK[0x727]) < 0)
  {
    operator delete(STACK[0x710]);
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(STACK[0x6F0]);
  }

  STACK[0x750] = a69;
  if (SLOBYTE(STACK[0x76F]) < 0)
  {
    operator delete(STACK[0x758]);
  }

  if (SLOBYTE(STACK[0x74F]) < 0)
  {
    operator delete(STACK[0x738]);
  }

  STACK[0x798] = a70;
  if (SLOBYTE(STACK[0x7B7]) < 0)
  {
    operator delete(STACK[0x7A0]);
  }

  if (SLOBYTE(STACK[0x797]) < 0)
  {
    operator delete(STACK[0x780]);
  }

  STACK[0x7E0] = a71;
  if (SLOBYTE(STACK[0x7FF]) < 0)
  {
    operator delete(STACK[0x7E8]);
  }

  if (SLOBYTE(STACK[0x7DF]) < 0)
  {
    operator delete(STACK[0x7C8]);
  }

  if (SLOBYTE(STACK[0x827]) < 0)
  {
    operator delete(STACK[0x810]);
  }

  _Unwind_Resume(a1);
}

void sub_1D57C9F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,int,int,int,int,int,std::string,long long,std::string,std::string,long long,long long,long long,long long,int,int,double,double,double,int,int>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1088);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 1040);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 992);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 944);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 896);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 848);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 784);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 736);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 672);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 608);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 560);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 512);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 464);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 416);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 368);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 320);
  mediaplatform::ColumnNamesApplier::operator()<double>(a2, a1 + 272);
  mediaplatform::ColumnNamesApplier::operator()<double>(a2, a1 + 224);
  mediaplatform::ColumnNamesApplier::operator()<double>(a2, a1 + 176);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 128);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 80);
}

void sub_1D57CA054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::ColumnNamesApplier::operator()<double>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  std::vector<std::string>::push_back[abi:ne200100](a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v3 = __p.__r_.__value_.__r.__words[0];

    operator delete(v3);
  }
}

void sub_1D57CA0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ItemPlaybackTable::~ItemPlaybackTable(mlcore::ItemPlaybackTable *this)
{
  *this = &unk_1F50D8168;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<double>,mlcore::MediaColumn<double>,mlcore::MediaColumn<double>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>>::~__tuple_impl(this + 1136);
  mediaplatform::DatabaseTable<long long,int,int,int,int,int,std::string,long long,std::string,std::string,long long,long long,long long,long long,int,int,double,double,double,int,int>::~DatabaseTable(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D8168;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<double>,mlcore::MediaColumn<double>,mlcore::MediaColumn<double>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>>::~__tuple_impl(this + 1136);

  mediaplatform::DatabaseTable<long long,int,int,int,int,int,std::string,long long,std::string,std::string,long long,long long,long long,long long,int,int,double,double,double,int,int>::~DatabaseTable(this);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<double>,mlcore::MediaColumn<double>,mlcore::MediaColumn<double>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>>::~__tuple_impl(uint64_t a1)
{
  *(a1 + 1008) = &unk_1F50D86E0;
  if (*(a1 + 1039) < 0)
  {
    operator delete(*(a1 + 1016));
  }

  *(a1 + 960) = &unk_1F50D86E0;
  if (*(a1 + 991) < 0)
  {
    operator delete(*(a1 + 968));
  }

  *(a1 + 912) = &unk_1F50D86E0;
  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  *(a1 + 864) = &unk_1F50D86E0;
  if (*(a1 + 895) < 0)
  {
    operator delete(*(a1 + 872));
  }

  *(a1 + 816) = &unk_1F50D86E0;
  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  *(a1 + 768) = &unk_1F50D86E0;
  if (*(a1 + 799) < 0)
  {
    operator delete(*(a1 + 776));
  }

  *(a1 + 720) = &unk_1F50D86E0;
  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  *(a1 + 672) = &unk_1F50D86E0;
  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  *(a1 + 624) = &unk_1F50D86E0;
  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  *(a1 + 576) = &unk_1F50D86E0;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 464);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 400);
  *(a1 + 352) = &unk_1F50D86E0;
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 288);
  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mediaplatform::DatabaseTable<long long,int,int,int,int,int,std::string,long long,std::string,std::string,long long,long long,long long,long long,int,int,double,double,double,int,int>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50D8BB8;
  *(a1 + 1088) = &unk_1F50D86E0;
  if (*(a1 + 1119) < 0)
  {
    operator delete(*(a1 + 1096));
  }

  *(a1 + 1040) = &unk_1F50D86E0;
  if (*(a1 + 1071) < 0)
  {
    operator delete(*(a1 + 1048));
  }

  *(a1 + 992) = &unk_1F50D86E0;
  if (*(a1 + 1023) < 0)
  {
    operator delete(*(a1 + 1000));
  }

  *(a1 + 944) = &unk_1F50D86E0;
  if (*(a1 + 975) < 0)
  {
    operator delete(*(a1 + 952));
  }

  *(a1 + 896) = &unk_1F50D86E0;
  if (*(a1 + 927) < 0)
  {
    operator delete(*(a1 + 904));
  }

  *(a1 + 848) = &unk_1F50D86E0;
  if (*(a1 + 879) < 0)
  {
    operator delete(*(a1 + 856));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 784);
  mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  mediaplatform::DatabaseTable<long long,int,int,int,int,int,std::string,long long,std::string,std::string,long long,long long,long long,long long,int,int,double,double,double,int,int>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 656) = &unk_1F50D86E0;
  if (*(a1 + 687) < 0)
  {
    operator delete(*(a1 + 664));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 592);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 528);
  *(a1 + 480) = &unk_1F50D86E0;
  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  *(a1 + 432) = &unk_1F50D86E0;
  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  *(a1 + 384) = &unk_1F50D86E0;
  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  *(a1 + 336) = &unk_1F50D86E0;
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  *(a1 + 288) = &unk_1F50D86E0;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mlcore::MediaTable<long long,int,int,int,int,int,std::string,long long,std::string,std::string,long long,long long,long long,long long,int,int,double,double,double,int,int>::~MediaTable(void *a1)
{
  *a1 = &unk_1F50D8168;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<double>,mlcore::MediaColumn<double>,mlcore::MediaColumn<double>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>>::~__tuple_impl((a1 + 142));
  mediaplatform::DatabaseTable<long long,int,int,int,int,int,std::string,long long,std::string,std::string,long long,long long,long long,long long,int,int,double,double,double,int,int>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D8168;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<double>,mlcore::MediaColumn<double>,mlcore::MediaColumn<double>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>>::~__tuple_impl((a1 + 142));

  mediaplatform::DatabaseTable<long long,int,int,int,int,int,std::string,long long,std::string,std::string,long long,long long,long long,long long,int,int,double,double,double,int,int>::~DatabaseTable(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v22 = MEMORY[0x1EEE9AC00](a1);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v23;
  v36 = v35;
  v37 = v22;
  v131 = &unk_1F50D86E0;
  if (*(v23 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v132, *(v23 + 8), *(v23 + 16));
  }

  else
  {
    v132 = *(v23 + 8);
  }

  v133 = *(v34 + 32);
  v131 = &unk_1F50D8978;
  v134 = *(v34 + 36);
  v127 = &unk_1F50D86E0;
  if (*(v33 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(v33 + 8), *(v33 + 16));
  }

  else
  {
    __s = *(v33 + 8);
  }

  v129 = *(v33 + 32);
  v127 = &unk_1F50D8978;
  v130 = *(v33 + 36);
  v123 = &unk_1F50D86E0;
  if (*(v31 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v124, *(v31 + 8), *(v31 + 16));
  }

  else
  {
    v124 = *(v31 + 8);
  }

  v125 = *(v31 + 32);
  v123 = &unk_1F50D8978;
  v126 = *(v31 + 36);
  v119 = &unk_1F50D86E0;
  if (*(v29 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v120, *(v29 + 8), *(v29 + 16));
  }

  else
  {
    v120 = *(v29 + 8);
  }

  v121 = *(v29 + 32);
  v119 = &unk_1F50D8978;
  v122 = *(v29 + 36);
  v115 = &unk_1F50D86E0;
  if (*(v27 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, *(v27 + 8), *(v27 + 16));
  }

  else
  {
    v116 = *(v27 + 8);
  }

  v117 = *(v27 + 32);
  v115 = &unk_1F50D8978;
  v118 = *(v27 + 36);
  v110 = &unk_1F50D86E0;
  if (*(v25 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, *(v25 + 8), *(v25 + 16));
  }

  else
  {
    v111 = *(v25 + 8);
  }

  v112 = *(v25 + 32);
  v110 = &unk_1F50D89B8;
  v113 = *(v25 + 36);
  if (*(v25 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v114, *(v25 + 40), *(v25 + 48));
  }

  else
  {
    v114 = *(v25 + 40);
  }

  v105 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v106 = *(a9 + 8);
  }

  v107 = *(a9 + 32);
  v105 = &unk_1F50D8958;
  v108 = *(a9 + 36);
  v109 = *(a9 + 44);
  v100 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v101, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v101 = *(a10 + 8);
  }

  v102 = *(a10 + 32);
  v100 = &unk_1F50D89B8;
  v103 = *(a10 + 36);
  if (*(a10 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v104, *(a10 + 40), *(a10 + 48));
  }

  else
  {
    v104 = *(a10 + 40);
  }

  v95 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v96, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v96 = *(a11 + 8);
  }

  v97 = *(a11 + 32);
  v95 = &unk_1F50D89B8;
  v98 = *(a11 + 36);
  if (*(a11 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, *(a11 + 40), *(a11 + 48));
  }

  else
  {
    v99 = *(a11 + 40);
  }

  v90 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v91, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v91 = *(a12 + 8);
  }

  v92 = *(a12 + 32);
  v90 = &unk_1F50D8958;
  v93 = *(a12 + 36);
  v94 = *(a12 + 44);
  v85 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v86 = *(a13 + 8);
  }

  v87 = *(a13 + 32);
  v85 = &unk_1F50D8958;
  v88 = *(a13 + 36);
  v89 = *(a13 + 44);
  v80 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v81, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v81 = *(a14 + 8);
  }

  v82 = *(a14 + 32);
  v80 = &unk_1F50D8958;
  v83 = *(a14 + 36);
  v84 = *(a14 + 44);
  v75 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v76 = *(a15 + 8);
  }

  v77 = *(a15 + 32);
  v75 = &unk_1F50D8958;
  v78 = *(a15 + 36);
  v79 = *(a15 + 44);
  v71 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v72, *(a16 + 8), *(a16 + 16));
  }

  else
  {
    v72 = *(a16 + 8);
  }

  v73 = *(a16 + 32);
  v71 = &unk_1F50D8978;
  v74 = *(a16 + 36);
  v67 = &unk_1F50D86E0;
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v68 = *(a17 + 8);
  }

  v69 = *(a17 + 32);
  v67 = &unk_1F50D8978;
  v70 = *(a17 + 36);
  v62 = &unk_1F50D86E0;
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, *(a18 + 8), *(a18 + 16));
  }

  else
  {
    v63 = *(a18 + 8);
  }

  v64 = *(a18 + 32);
  v62 = &unk_1F50D8998;
  v65 = *(a18 + 36);
  v66 = *(a18 + 44);
  v57 = &unk_1F50D86E0;
  if (*(a19 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, *(a19 + 8), *(a19 + 16));
  }

  else
  {
    v58 = *(a19 + 8);
  }

  v59 = *(a19 + 32);
  v57 = &unk_1F50D8998;
  v60 = *(a19 + 36);
  v61 = *(a19 + 44);
  v52 = &unk_1F50D86E0;
  if (*(a20 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, *(a20 + 8), *(a20 + 16));
  }

  else
  {
    v53 = *(a20 + 8);
  }

  v54 = *(a20 + 32);
  v52 = &unk_1F50D8998;
  v55 = *(a20 + 36);
  v56 = *(a20 + 44);
  v48 = &unk_1F50D86E0;
  if (*(a21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, *(a21 + 8), *(a21 + 16));
  }

  else
  {
    v49 = *(a21 + 8);
  }

  v50 = *(a21 + 32);
  v48 = &unk_1F50D8978;
  v51 = *(a21 + 36);
  if (*(a22 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, *(a22 + 8), *(a22 + 16));
  }

  else
  {
    v45 = *(a22 + 8);
  }

  v46 = *(a22 + 32);
  v47 = *(a22 + 36);
  v218 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v219, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v219 = __s;
  }

  v220 = v129;
  v218 = &unk_1F50D8978;
  v221 = v130;
  v214 = &unk_1F50D86E0;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v215, v124.__r_.__value_.__l.__data_, v124.__r_.__value_.__l.__size_);
  }

  else
  {
    v215 = v124;
  }

  v216 = v125;
  v214 = &unk_1F50D8978;
  v217 = v126;
  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v211, v120.__r_.__value_.__l.__data_, v120.__r_.__value_.__l.__size_);
  }

  else
  {
    v211 = v120;
  }

  v212 = v121;
  v210 = &unk_1F50D8978;
  v213 = v122;
  v206 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v207, v116.__r_.__value_.__l.__data_, v116.__r_.__value_.__l.__size_);
  }

  else
  {
    v207 = v116;
  }

  v208 = v117;
  v206 = &unk_1F50D8978;
  v209 = v118;
  v201 = &unk_1F50D86E0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v202, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
  }

  else
  {
    v202 = v111;
  }

  v203 = v112;
  v201 = &unk_1F50D89B8;
  v204 = v113;
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v205, v114.__r_.__value_.__l.__data_, v114.__r_.__value_.__l.__size_);
  }

  else
  {
    v205 = v114;
  }

  v196 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v197, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
  }

  else
  {
    v197 = v106;
  }

  v198 = v107;
  v196 = &unk_1F50D8958;
  v199 = v108;
  v200 = v109;
  v191 = &unk_1F50D86E0;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v192, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
  }

  else
  {
    v192 = v101;
  }

  v193 = v102;
  v191 = &unk_1F50D89B8;
  v194 = v103;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v195, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  }

  else
  {
    v195 = v104;
  }

  v186 = &unk_1F50D86E0;
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v187, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
  }

  else
  {
    v187 = v96;
  }

  v188 = v97;
  v186 = &unk_1F50D89B8;
  v189 = v98;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
  }

  else
  {
    v190 = v99;
  }

  v181 = &unk_1F50D86E0;
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v182, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
  }

  else
  {
    v182 = v91;
  }

  v183 = v92;
  v181 = &unk_1F50D8958;
  v184 = v93;
  v185 = v94;
  v176 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v177, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v177 = v86;
  }

  v178 = v87;
  v176 = &unk_1F50D8958;
  v179 = v88;
  v180 = v89;
  v171 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v172, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    v172 = v81;
  }

  v173 = v82;
  v171 = &unk_1F50D8958;
  v174 = v83;
  v175 = v84;
  v166 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v167, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v167 = v76;
  }

  v168 = v77;
  v166 = &unk_1F50D8958;
  v169 = v78;
  v170 = v79;
  v162 = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v163, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v163 = v72;
  }

  v164 = v73;
  v162 = &unk_1F50D8978;
  v165 = v74;
  v158 = &unk_1F50D86E0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v159, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v159 = v68;
  }

  v160 = v69;
  v158 = &unk_1F50D8978;
  v161 = v70;
  v153 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v154, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v154 = v63;
  }

  v155 = v64;
  v153 = &unk_1F50D8998;
  v156 = v65;
  v157 = v66;
  v148 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v149, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v149 = v58;
  }

  v150 = v59;
  v148 = &unk_1F50D8998;
  v151 = v60;
  v152 = v61;
  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v144, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v144 = v53;
  }

  v145 = v54;
  v143 = &unk_1F50D8998;
  v146 = v55;
  v147 = v56;
  v139 = &unk_1F50D86E0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v140, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    v140 = v49;
  }

  v141 = v50;
  v139 = &unk_1F50D8978;
  v142 = v51;
  v135 = &unk_1F50D86E0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v136, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v136 = v45;
  }

  v137 = v46;
  v135 = &unk_1F50D8978;
  v138 = v47;
  v301 = &unk_1F50D86E0;
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v302, v215.__r_.__value_.__l.__data_, v215.__r_.__value_.__l.__size_);
  }

  else
  {
    v302 = v215;
  }

  v303 = v216;
  v301 = &unk_1F50D8978;
  v304 = v217;
  v297 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v298, v211.__r_.__value_.__l.__data_, v211.__r_.__value_.__l.__size_);
  }

  else
  {
    v298 = v211;
  }

  v299 = v212;
  v297 = &unk_1F50D8978;
  v300 = v213;
  v293 = &unk_1F50D86E0;
  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v294, v207.__r_.__value_.__l.__data_, v207.__r_.__value_.__l.__size_);
  }

  else
  {
    v294 = v207;
  }

  v295 = v208;
  v293 = &unk_1F50D8978;
  v296 = v209;
  v288 = &unk_1F50D86E0;
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v289, v202.__r_.__value_.__l.__data_, v202.__r_.__value_.__l.__size_);
  }

  else
  {
    v289 = v202;
  }

  v290 = v203;
  v288 = &unk_1F50D89B8;
  v291 = v204;
  if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v292, v205.__r_.__value_.__l.__data_, v205.__r_.__value_.__l.__size_);
  }

  else
  {
    v292 = v205;
  }

  v283 = &unk_1F50D86E0;
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v284, v197.__r_.__value_.__l.__data_, v197.__r_.__value_.__l.__size_);
  }

  else
  {
    v284 = v197;
  }

  v285 = v198;
  v283 = &unk_1F50D8958;
  v286 = v199;
  v287 = v200;
  v278 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v279, v192.__r_.__value_.__l.__data_, v192.__r_.__value_.__l.__size_);
  }

  else
  {
    v279 = v192;
  }

  v280 = v193;
  v278 = &unk_1F50D89B8;
  v281 = v194;
  if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v282, v195.__r_.__value_.__l.__data_, v195.__r_.__value_.__l.__size_);
  }

  else
  {
    v282 = v195;
  }

  v273 = &unk_1F50D86E0;
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v274, v187.__r_.__value_.__l.__data_, v187.__r_.__value_.__l.__size_);
  }

  else
  {
    v274 = v187;
  }

  v275 = v188;
  v273 = &unk_1F50D89B8;
  v276 = v189;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v277, v190.__r_.__value_.__l.__data_, v190.__r_.__value_.__l.__size_);
  }

  else
  {
    v277 = v190;
  }

  v268 = &unk_1F50D86E0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v269, v182.__r_.__value_.__l.__data_, v182.__r_.__value_.__l.__size_);
  }

  else
  {
    v269 = v182;
  }

  v270 = v183;
  v268 = &unk_1F50D8958;
  v271 = v184;
  v272 = v185;
  v263 = &unk_1F50D86E0;
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v264, v177.__r_.__value_.__l.__data_, v177.__r_.__value_.__l.__size_);
  }

  else
  {
    v264 = v177;
  }

  v265 = v178;
  v263 = &unk_1F50D8958;
  v266 = v179;
  v267 = v180;
  v258 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v259, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
  }

  else
  {
    v259 = v172;
  }

  v260 = v173;
  v258 = &unk_1F50D8958;
  v261 = v174;
  v262 = v175;
  v253 = &unk_1F50D86E0;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v254, v167.__r_.__value_.__l.__data_, v167.__r_.__value_.__l.__size_);
  }

  else
  {
    v254 = v167;
  }

  v255 = v168;
  v253 = &unk_1F50D8958;
  v256 = v169;
  v257 = v170;
  v249 = &unk_1F50D86E0;
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v250, v163.__r_.__value_.__l.__data_, v163.__r_.__value_.__l.__size_);
  }

  else
  {
    v250 = v163;
  }

  v251 = v164;
  v249 = &unk_1F50D8978;
  v252 = v165;
  v245 = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v246, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    v246 = v159;
  }

  v247 = v160;
  v245 = &unk_1F50D8978;
  v248 = v161;
  v240 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v241, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
  }

  else
  {
    v241 = v154;
  }

  v242 = v155;
  v240 = &unk_1F50D8998;
  v243 = v156;
  v244 = v157;
  v235 = &unk_1F50D86E0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v236, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
  }

  else
  {
    v236 = v149;
  }

  v237 = v150;
  v235 = &unk_1F50D8998;
  v238 = v151;
  v239 = v152;
  v230 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v231, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_);
  }

  else
  {
    v231 = v144;
  }

  v232 = v145;
  v230 = &unk_1F50D8998;
  v233 = v146;
  v234 = v147;
  v226 = &unk_1F50D86E0;
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v227, v140.__r_.__value_.__l.__data_, v140.__r_.__value_.__l.__size_);
  }

  else
  {
    v227 = v140;
  }

  v228 = v141;
  v226 = &unk_1F50D8978;
  v229 = v142;
  v222 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v223, v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_);
  }

  else
  {
    v223 = v136;
  }

  v224 = v137;
  v222 = &unk_1F50D8978;
  v225 = v138;
  v380 = &unk_1F50D86E0;
  if (SHIBYTE(v298.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v381, v298.__r_.__value_.__l.__data_, v298.__r_.__value_.__l.__size_);
  }

  else
  {
    v381 = v298;
  }

  v382 = v299;
  v380 = &unk_1F50D8978;
  v383 = v300;
  v376 = &unk_1F50D86E0;
  if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v377, v294.__r_.__value_.__l.__data_, v294.__r_.__value_.__l.__size_);
  }

  else
  {
    v377 = v294;
  }

  v378 = v295;
  v376 = &unk_1F50D8978;
  v379 = v296;
  v371 = &unk_1F50D86E0;
  if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v372, v289.__r_.__value_.__l.__data_, v289.__r_.__value_.__l.__size_);
  }

  else
  {
    v372 = v289;
  }

  v373 = v290;
  v371 = &unk_1F50D89B8;
  v374 = v291;
  if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v375, v292.__r_.__value_.__l.__data_, v292.__r_.__value_.__l.__size_);
  }

  else
  {
    v375 = v292;
  }

  v366 = &unk_1F50D86E0;
  if (SHIBYTE(v284.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v367, v284.__r_.__value_.__l.__data_, v284.__r_.__value_.__l.__size_);
  }

  else
  {
    v367 = v284;
  }

  v368 = v285;
  v366 = &unk_1F50D8958;
  v369 = v286;
  v370 = v287;
  v361 = &unk_1F50D86E0;
  if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v362, v279.__r_.__value_.__l.__data_, v279.__r_.__value_.__l.__size_);
  }

  else
  {
    v362 = v279;
  }

  v363 = v280;
  v361 = &unk_1F50D89B8;
  v364 = v281;
  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v365, v282.__r_.__value_.__l.__data_, v282.__r_.__value_.__l.__size_);
  }

  else
  {
    v365 = v282;
  }

  v356 = &unk_1F50D86E0;
  if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v357, v274.__r_.__value_.__l.__data_, v274.__r_.__value_.__l.__size_);
  }

  else
  {
    v357 = v274;
  }

  v358 = v275;
  v356 = &unk_1F50D89B8;
  v359 = v276;
  if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v360, v277.__r_.__value_.__l.__data_, v277.__r_.__value_.__l.__size_);
  }

  else
  {
    v360 = v277;
  }

  v351 = &unk_1F50D86E0;
  if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v352, v269.__r_.__value_.__l.__data_, v269.__r_.__value_.__l.__size_);
  }

  else
  {
    v352 = v269;
  }

  v353 = v270;
  v351 = &unk_1F50D8958;
  v354 = v271;
  v355 = v272;
  v346 = &unk_1F50D86E0;
  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v347, v264.__r_.__value_.__l.__data_, v264.__r_.__value_.__l.__size_);
  }

  else
  {
    v347 = v264;
  }

  v348 = v265;
  v346 = &unk_1F50D8958;
  v349 = v266;
  v350 = v267;
  v341 = &unk_1F50D86E0;
  if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v342, v259.__r_.__value_.__l.__data_, v259.__r_.__value_.__l.__size_);
  }

  else
  {
    v342 = v259;
  }

  v343 = v260;
  v341 = &unk_1F50D8958;
  v344 = v261;
  v345 = v262;
  v336 = &unk_1F50D86E0;
  if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v337, v254.__r_.__value_.__l.__data_, v254.__r_.__value_.__l.__size_);
  }

  else
  {
    v337 = v254;
  }

  v338 = v255;
  v336 = &unk_1F50D8958;
  v339 = v256;
  v340 = v257;
  v332 = &unk_1F50D86E0;
  if (SHIBYTE(v250.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v333, v250.__r_.__value_.__l.__data_, v250.__r_.__value_.__l.__size_);
  }

  else
  {
    v333 = v250;
  }

  v334 = v251;
  v332 = &unk_1F50D8978;
  v335 = v252;
  v328 = &unk_1F50D86E0;
  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v329, v246.__r_.__value_.__l.__data_, v246.__r_.__value_.__l.__size_);
  }

  else
  {
    v329 = v246;
  }

  v330 = v247;
  v328 = &unk_1F50D8978;
  v331 = v248;
  v323 = &unk_1F50D86E0;
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v324, v241.__r_.__value_.__l.__data_, v241.__r_.__value_.__l.__size_);
  }

  else
  {
    v324 = v241;
  }

  v325 = v242;
  v323 = &unk_1F50D8998;
  v326 = v243;
  v327 = v244;
  v318 = &unk_1F50D86E0;
  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v319, v236.__r_.__value_.__l.__data_, v236.__r_.__value_.__l.__size_);
  }

  else
  {
    v319 = v236;
  }

  v320 = v237;
  v318 = &unk_1F50D8998;
  v321 = v238;
  v322 = v239;
  v313 = &unk_1F50D86E0;
  if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v314, v231.__r_.__value_.__l.__data_, v231.__r_.__value_.__l.__size_);
  }

  else
  {
    v314 = v231;
  }

  v315 = v232;
  v313 = &unk_1F50D8998;
  v316 = v233;
  v317 = v234;
  v309 = &unk_1F50D86E0;
  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v310, v227.__r_.__value_.__l.__data_, v227.__r_.__value_.__l.__size_);
  }

  else
  {
    v310 = v227;
  }

  v311 = v228;
  v309 = &unk_1F50D8978;
  v312 = v229;
  v305 = &unk_1F50D86E0;
  if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v223.__r_.__value_.__l.__data_, v223.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v223;
  }

  v307 = v224;
  v305 = &unk_1F50D8978;
  v308 = v225;
  mediaplatform::DatabaseColumnTuple<4ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::DatabaseColumnTuple(v37, &v380, &v376, &v371, &v366, &v361, &v356, &v351, &v346, &v341, &v336, &v332, &v328, &v323, &v318, &v313, &v309, &v305);
  v305 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v309 = &unk_1F50D86E0;
  if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v310.__r_.__value_.__l.__data_);
  }

  v313 = &unk_1F50D86E0;
  if (SHIBYTE(v314.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v314.__r_.__value_.__l.__data_);
  }

  v318 = &unk_1F50D86E0;
  if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v319.__r_.__value_.__l.__data_);
  }

  v323 = &unk_1F50D86E0;
  if (SHIBYTE(v324.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v324.__r_.__value_.__l.__data_);
  }

  v328 = &unk_1F50D86E0;
  if (SHIBYTE(v329.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v329.__r_.__value_.__l.__data_);
  }

  v332 = &unk_1F50D86E0;
  if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v333.__r_.__value_.__l.__data_);
  }

  v336 = &unk_1F50D86E0;
  if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v337.__r_.__value_.__l.__data_);
  }

  v341 = &unk_1F50D86E0;
  if (SHIBYTE(v342.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v342.__r_.__value_.__l.__data_);
  }

  v346 = &unk_1F50D86E0;
  if (SHIBYTE(v347.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v347.__r_.__value_.__l.__data_);
  }

  v351 = &unk_1F50D86E0;
  if (SHIBYTE(v352.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v352.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v356);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v361);
  v366 = &unk_1F50D86E0;
  if (SHIBYTE(v367.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v367.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v371);
  v376 = &unk_1F50D86E0;
  if (SHIBYTE(v377.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v377.__r_.__value_.__l.__data_);
  }

  v380 = &unk_1F50D86E0;
  if (SHIBYTE(v381.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v381.__r_.__value_.__l.__data_);
  }

  *(v37 + 864) = &unk_1F50D86E0;
  v38 = (v37 + 872);
  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v38, v302.__r_.__value_.__l.__data_, v302.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v38->__r_.__value_.__l.__data_ = *&v302.__r_.__value_.__l.__data_;
    *(v37 + 888) = *(&v302.__r_.__value_.__l + 2);
  }

  *(v37 + 896) = v303;
  *(v37 + 864) = &unk_1F50D8978;
  *(v37 + 900) = v304;
  v222 = &unk_1F50D86E0;
  if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v223.__r_.__value_.__l.__data_);
  }

  v226 = &unk_1F50D86E0;
  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v227.__r_.__value_.__l.__data_);
  }

  v230 = &unk_1F50D86E0;
  if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v231.__r_.__value_.__l.__data_);
  }

  v235 = &unk_1F50D86E0;
  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  v240 = &unk_1F50D86E0;
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v241.__r_.__value_.__l.__data_);
  }

  v245 = &unk_1F50D86E0;
  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v246.__r_.__value_.__l.__data_);
  }

  v249 = &unk_1F50D86E0;
  if (SHIBYTE(v250.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v250.__r_.__value_.__l.__data_);
  }

  v253 = &unk_1F50D86E0;
  if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v254.__r_.__value_.__l.__data_);
  }

  v258 = &unk_1F50D86E0;
  if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v259.__r_.__value_.__l.__data_);
  }

  v263 = &unk_1F50D86E0;
  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  v268 = &unk_1F50D86E0;
  if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v269.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v273);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v278);
  v283 = &unk_1F50D86E0;
  if (SHIBYTE(v284.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v284.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v288);
  v293 = &unk_1F50D86E0;
  if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v294.__r_.__value_.__l.__data_);
  }

  v297 = &unk_1F50D86E0;
  if (SHIBYTE(v298.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v298.__r_.__value_.__l.__data_);
  }

  v301 = &unk_1F50D86E0;
  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v302.__r_.__value_.__l.__data_);
  }

  *(v37 + 912) = &unk_1F50D86E0;
  v39 = (v37 + 920);
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v39, v219.__r_.__value_.__l.__data_, v219.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v39->__r_.__value_.__l.__data_ = *&v219.__r_.__value_.__l.__data_;
    *(v37 + 936) = *(&v219.__r_.__value_.__l + 2);
  }

  *(v37 + 944) = v220;
  *(v37 + 912) = &unk_1F50D8978;
  *(v37 + 948) = v221;
  v135 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  v139 = &unk_1F50D86E0;
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
  }

  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

  v148 = &unk_1F50D86E0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

  v153 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  v158 = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  v162 = &unk_1F50D86E0;
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v163.__r_.__value_.__l.__data_);
  }

  v166 = &unk_1F50D86E0;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v167.__r_.__value_.__l.__data_);
  }

  v171 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v172.__r_.__value_.__l.__data_);
  }

  v176 = &unk_1F50D86E0;
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v177.__r_.__value_.__l.__data_);
  }

  v181 = &unk_1F50D86E0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v182.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v186);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v191);
  v196 = &unk_1F50D86E0;
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v201);
  v206 = &unk_1F50D86E0;
  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v207.__r_.__value_.__l.__data_);
  }

  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  v214 = &unk_1F50D86E0;
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v215.__r_.__value_.__l.__data_);
  }

  v218 = &unk_1F50D86E0;
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v219.__r_.__value_.__l.__data_);
  }

  *(v37 + 960) = &unk_1F50D86E0;
  v40 = (v37 + 968);
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v40, v132.__r_.__value_.__l.__data_, v132.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v40->__r_.__value_.__l.__data_ = *&v132.__r_.__value_.__l.__data_;
    *(v37 + 984) = *(&v132.__r_.__value_.__l + 2);
  }

  *(v37 + 992) = v133;
  *(v37 + 960) = &unk_1F50D8978;
  *(v37 + 996) = v134;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v48 = &unk_1F50D86E0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  v52 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v57 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  v62 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  v67 = &unk_1F50D86E0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v71 = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  v75 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  v90 = &unk_1F50D86E0;
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v95);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v100);
  v105 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v110);
  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  v119 = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }

  v123 = &unk_1F50D86E0;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  v127 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v131 = &unk_1F50D86E0;
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  *(v37 + 1008) = &unk_1F50D86E0;
  v41 = (v37 + 1016);
  if (*(v36 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v41, *(v36 + 8), *(v36 + 16));
  }

  else
  {
    v42 = *(v36 + 8);
    *(v37 + 1032) = *(v36 + 24);
    *&v41->__r_.__value_.__l.__data_ = v42;
  }

  *(v37 + 1040) = *(v36 + 32);
  *(v37 + 1008) = &unk_1F50D8958;
  v43 = *(v36 + 36);
  *(v37 + 1052) = *(v36 + 44);
  *(v37 + 1044) = v43;
  return v37;
}

uint64_t mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 960) = &unk_1F50D86E0;
  if (*(a1 + 991) < 0)
  {
    operator delete(*(a1 + 968));
  }

  *(a1 + 912) = &unk_1F50D86E0;
  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  *(a1 + 864) = &unk_1F50D86E0;
  if (*(a1 + 895) < 0)
  {
    operator delete(*(a1 + 872));
  }

  *(a1 + 816) = &unk_1F50D86E0;
  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  *(a1 + 768) = &unk_1F50D86E0;
  if (*(a1 + 799) < 0)
  {
    operator delete(*(a1 + 776));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 704);

  return mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<2ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 912) = &unk_1F50D86E0;
  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  *(a1 + 864) = &unk_1F50D86E0;
  if (*(a1 + 895) < 0)
  {
    operator delete(*(a1 + 872));
  }

  *(a1 + 816) = &unk_1F50D86E0;
  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  *(a1 + 768) = &unk_1F50D86E0;
  if (*(a1 + 799) < 0)
  {
    operator delete(*(a1 + 776));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 704);

  return mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<3ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 864) = &unk_1F50D86E0;
  if (*(a1 + 895) < 0)
  {
    operator delete(*(a1 + 872));
  }

  *(a1 + 816) = &unk_1F50D86E0;
  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  *(a1 + 768) = &unk_1F50D86E0;
  if (*(a1 + 799) < 0)
  {
    operator delete(*(a1 + 776));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 704);

  return mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<4ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v103 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v104, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v104 = *(a3 + 8);
  }

  v105 = *(a3 + 32);
  v103 = &unk_1F50D8978;
  v106 = *(a3 + 36);
  v98 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __s = *(a4 + 8);
  }

  v100 = *(a4 + 32);
  v98 = &unk_1F50D89B8;
  v101 = *(a4 + 36);
  if (*(a4 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, *(a4 + 40), *(a4 + 48));
  }

  else
  {
    v102 = *(a4 + 40);
  }

  v93 = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v94 = *(a5 + 8);
  }

  v95 = *(a5 + 32);
  v93 = &unk_1F50D8958;
  v96 = *(a5 + 36);
  v97 = *(a5 + 44);
  v88 = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v89, *(a6 + 8), *(a6 + 16));
  }

  else
  {
    v89 = *(a6 + 8);
  }

  v90 = *(a6 + 32);
  v88 = &unk_1F50D89B8;
  v91 = *(a6 + 36);
  if (*(a6 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v92, *(a6 + 40), *(a6 + 48));
  }

  else
  {
    v92 = *(a6 + 40);
  }

  v83 = &unk_1F50D86E0;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v84, *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v84 = *(a7 + 8);
  }

  v85 = *(a7 + 32);
  v83 = &unk_1F50D89B8;
  v86 = *(a7 + 36);
  if (*(a7 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v87, *(a7 + 40), *(a7 + 48));
  }

  else
  {
    v87 = *(a7 + 40);
  }

  v78 = &unk_1F50D86E0;
  if (*(a8 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v79, *(a8 + 8), *(a8 + 16));
  }

  else
  {
    v79 = *(a8 + 8);
  }

  v80 = *(a8 + 32);
  v78 = &unk_1F50D8958;
  v81 = *(a8 + 36);
  v82 = *(a8 + 44);
  v73 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v74, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v74 = *(a9 + 8);
  }

  v75 = *(a9 + 32);
  v73 = &unk_1F50D8958;
  v76 = *(a9 + 36);
  v77 = *(a9 + 44);
  v68 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v69, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v69 = *(a10 + 8);
  }

  v70 = *(a10 + 32);
  v68 = &unk_1F50D8958;
  v71 = *(a10 + 36);
  v72 = *(a10 + 44);
  v63 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v64 = *(a11 + 8);
  }

  v65 = *(a11 + 32);
  v63 = &unk_1F50D8958;
  v66 = *(a11 + 36);
  v67 = *(a11 + 44);
  v59 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v60, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v60 = *(a12 + 8);
  }

  v61 = *(a12 + 32);
  v59 = &unk_1F50D8978;
  v62 = *(a12 + 36);
  v55 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v56, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v56 = *(a13 + 8);
  }

  v57 = *(a13 + 32);
  v55 = &unk_1F50D8978;
  v58 = *(a13 + 36);
  v50 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v51 = *(a14 + 8);
  }

  v52 = *(a14 + 32);
  v50 = &unk_1F50D8998;
  v53 = *(a14 + 36);
  v54 = *(a14 + 44);
  v45 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v46 = *(a15 + 8);
  }

  v47 = *(a15 + 32);
  v45 = &unk_1F50D8998;
  v48 = *(a15 + 36);
  v49 = *(a15 + 44);
  v40 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, *(a16 + 8), *(a16 + 16));
  }

  else
  {
    v41 = *(a16 + 8);
  }

  v42 = *(a16 + 32);
  v40 = &unk_1F50D8998;
  v43 = *(a16 + 36);
  v44 = *(a16 + 44);
  v36 = &unk_1F50D86E0;
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v37 = *(a17 + 8);
  }

  v38 = *(a17 + 32);
  v36 = &unk_1F50D8978;
  v39 = *(a17 + 36);
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *(a18 + 8), *(a18 + 16));
  }

  else
  {
    v33 = *(a18 + 8);
  }

  v34 = *(a18 + 32);
  v35 = *(a18 + 36);
  v173 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v174 = __s;
  }

  v175 = v100;
  v173 = &unk_1F50D89B8;
  v176 = v101;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v177, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
  }

  else
  {
    v177 = v102;
  }

  v168 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v169, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v169 = v94;
  }

  v170 = v95;
  v168 = &unk_1F50D8958;
  v171 = v96;
  v172 = v97;
  v163 = &unk_1F50D86E0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v164, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
  }

  else
  {
    v164 = v89;
  }

  v165 = v90;
  v163 = &unk_1F50D89B8;
  v166 = v91;
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v167, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
  }

  else
  {
    v167 = v92;
  }

  v158 = &unk_1F50D86E0;
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v159, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v159 = v84;
  }

  v160 = v85;
  v158 = &unk_1F50D89B8;
  v161 = v86;
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v162, v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_);
  }

  else
  {
    v162 = v87;
  }

  v153 = &unk_1F50D86E0;
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v154, v79.__r_.__value_.__l.__data_, v79.__r_.__value_.__l.__size_);
  }

  else
  {
    v154 = v79;
  }

  v155 = v80;
  v153 = &unk_1F50D8958;
  v156 = v81;
  v157 = v82;
  v148 = &unk_1F50D86E0;
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v149, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    v149 = v74;
  }

  v150 = v75;
  v148 = &unk_1F50D8958;
  v151 = v76;
  v152 = v77;
  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v144, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    v144 = v69;
  }

  v145 = v70;
  v143 = &unk_1F50D8958;
  v146 = v71;
  v147 = v72;
  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    v139 = v64;
  }

  v140 = v65;
  v138 = &unk_1F50D8958;
  v141 = v66;
  v142 = v67;
  v134 = &unk_1F50D86E0;
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v135, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    v135 = v60;
  }

  v136 = v61;
  v134 = &unk_1F50D8978;
  v137 = v62;
  v130 = &unk_1F50D86E0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
  }

  else
  {
    v131 = v56;
  }

  v132 = v57;
  v130 = &unk_1F50D8978;
  v133 = v58;
  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v126, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v126 = v51;
  }

  v127 = v52;
  v125 = &unk_1F50D8998;
  v128 = v53;
  v129 = v54;
  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v121, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
  }

  else
  {
    v121 = v46;
  }

  v122 = v47;
  v120 = &unk_1F50D8998;
  v123 = v48;
  v124 = v49;
  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v116 = v41;
  }

  v117 = v42;
  v115 = &unk_1F50D8998;
  v118 = v43;
  v119 = v44;
  v111 = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v112, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v112 = v37;
  }

  v113 = v38;
  v111 = &unk_1F50D8978;
  v114 = v39;
  v107 = &unk_1F50D86E0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v108, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v108 = v33;
  }

  v109 = v34;
  v107 = &unk_1F50D8978;
  v110 = v35;
  v239 = &unk_1F50D86E0;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v240, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_);
  }

  else
  {
    v240 = v169;
  }

  v241 = v170;
  v239 = &unk_1F50D8958;
  v242 = v171;
  v243 = v172;
  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v235, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
  }

  else
  {
    v235 = v164;
  }

  v236 = v165;
  v234 = &unk_1F50D89B8;
  v237 = v166;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v238, v167.__r_.__value_.__l.__data_, v167.__r_.__value_.__l.__size_);
  }

  else
  {
    v238 = v167;
  }

  v229 = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v230, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    v230 = v159;
  }

  v231 = v160;
  v229 = &unk_1F50D89B8;
  v232 = v161;
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v233, v162.__r_.__value_.__l.__data_, v162.__r_.__value_.__l.__size_);
  }

  else
  {
    v233 = v162;
  }

  v224 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v225, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
  }

  else
  {
    v225 = v154;
  }

  v226 = v155;
  v224 = &unk_1F50D8958;
  v227 = v156;
  v228 = v157;
  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v220, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
  }

  else
  {
    v220 = v149;
  }

  v221 = v150;
  v219 = &unk_1F50D8958;
  v222 = v151;
  v223 = v152;
  v214 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v215, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_);
  }

  else
  {
    v215 = v144;
  }

  v216 = v145;
  v214 = &unk_1F50D8958;
  v217 = v146;
  v218 = v147;
  v209 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v210, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v210 = v139;
  }

  v211 = v140;
  v209 = &unk_1F50D8958;
  v212 = v141;
  v213 = v142;
  v205 = &unk_1F50D86E0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v206, v135.__r_.__value_.__l.__data_, v135.__r_.__value_.__l.__size_);
  }

  else
  {
    v206 = v135;
  }

  v207 = v136;
  v205 = &unk_1F50D8978;
  v208 = v137;
  v201 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v202, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
  }

  else
  {
    v202 = v131;
  }

  v203 = v132;
  v201 = &unk_1F50D8978;
  v204 = v133;
  v196 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v197, v126.__r_.__value_.__l.__data_, v126.__r_.__value_.__l.__size_);
  }

  else
  {
    v197 = v126;
  }

  v198 = v127;
  v196 = &unk_1F50D8998;
  v199 = v128;
  v200 = v129;
  v191 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v192, v121.__r_.__value_.__l.__data_, v121.__r_.__value_.__l.__size_);
  }

  else
  {
    v192 = v121;
  }

  v193 = v122;
  v191 = &unk_1F50D8998;
  v194 = v123;
  v195 = v124;
  v186 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v187, v116.__r_.__value_.__l.__data_, v116.__r_.__value_.__l.__size_);
  }

  else
  {
    v187 = v116;
  }

  v188 = v117;
  v186 = &unk_1F50D8998;
  v189 = v118;
  v190 = v119;
  v182 = &unk_1F50D86E0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v183, v112.__r_.__value_.__l.__data_, v112.__r_.__value_.__l.__size_);
  }

  else
  {
    v183 = v112;
  }

  v184 = v113;
  v182 = &unk_1F50D8978;
  v185 = v114;
  v178 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v179, v108.__r_.__value_.__l.__data_, v108.__r_.__value_.__l.__size_);
  }

  else
  {
    v179 = v108;
  }

  v180 = v109;
  v178 = &unk_1F50D8978;
  v181 = v110;
  v300 = &unk_1F50D86E0;
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v301, v235.__r_.__value_.__l.__data_, v235.__r_.__value_.__l.__size_);
  }

  else
  {
    v301 = v235;
  }

  v302 = v236;
  v300 = &unk_1F50D89B8;
  v303 = v237;
  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v304, v238.__r_.__value_.__l.__data_, v238.__r_.__value_.__l.__size_);
  }

  else
  {
    v304 = v238;
  }

  v295 = &unk_1F50D86E0;
  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v296, v230.__r_.__value_.__l.__data_, v230.__r_.__value_.__l.__size_);
  }

  else
  {
    v296 = v230;
  }

  v297 = v231;
  v295 = &unk_1F50D89B8;
  v298 = v232;
  if (SHIBYTE(v233.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v299, v233.__r_.__value_.__l.__data_, v233.__r_.__value_.__l.__size_);
  }

  else
  {
    v299 = v233;
  }

  v290 = &unk_1F50D86E0;
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v291, v225.__r_.__value_.__l.__data_, v225.__r_.__value_.__l.__size_);
  }

  else
  {
    v291 = v225;
  }

  v292 = v226;
  v290 = &unk_1F50D8958;
  v293 = v227;
  v294 = v228;
  v285 = &unk_1F50D86E0;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v286, v220.__r_.__value_.__l.__data_, v220.__r_.__value_.__l.__size_);
  }

  else
  {
    v286 = v220;
  }

  v287 = v221;
  v285 = &unk_1F50D8958;
  v288 = v222;
  v289 = v223;
  v280 = &unk_1F50D86E0;
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v281, v215.__r_.__value_.__l.__data_, v215.__r_.__value_.__l.__size_);
  }

  else
  {
    v281 = v215;
  }

  v282 = v216;
  v280 = &unk_1F50D8958;
  v283 = v217;
  v284 = v218;
  v275 = &unk_1F50D86E0;
  if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v276, v210.__r_.__value_.__l.__data_, v210.__r_.__value_.__l.__size_);
  }

  else
  {
    v276 = v210;
  }

  v277 = v211;
  v275 = &unk_1F50D8958;
  v278 = v212;
  v279 = v213;
  v271 = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v272, v206.__r_.__value_.__l.__data_, v206.__r_.__value_.__l.__size_);
  }

  else
  {
    v272 = v206;
  }

  v273 = v207;
  v271 = &unk_1F50D8978;
  v274 = v208;
  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v268, v202.__r_.__value_.__l.__data_, v202.__r_.__value_.__l.__size_);
  }

  else
  {
    v268 = v202;
  }

  v269 = v203;
  v267 = &unk_1F50D8978;
  v270 = v204;
  v262 = &unk_1F50D86E0;
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v263, v197.__r_.__value_.__l.__data_, v197.__r_.__value_.__l.__size_);
  }

  else
  {
    v263 = v197;
  }

  v264 = v198;
  v262 = &unk_1F50D8998;
  v265 = v199;
  v266 = v200;
  v257 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v258, v192.__r_.__value_.__l.__data_, v192.__r_.__value_.__l.__size_);
  }

  else
  {
    v258 = v192;
  }

  v259 = v193;
  v257 = &unk_1F50D8998;
  v260 = v194;
  v261 = v195;
  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v253, v187.__r_.__value_.__l.__data_, v187.__r_.__value_.__l.__size_);
  }

  else
  {
    v253 = v187;
  }

  v254 = v188;
  v252 = &unk_1F50D8998;
  v255 = v189;
  v256 = v190;
  v248 = &unk_1F50D86E0;
  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v249, v183.__r_.__value_.__l.__data_, v183.__r_.__value_.__l.__size_);
  }

  else
  {
    v249 = v183;
  }

  v250 = v184;
  v248 = &unk_1F50D8978;
  v251 = v185;
  v244 = &unk_1F50D86E0;
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v245, v179.__r_.__value_.__l.__data_, v179.__r_.__value_.__l.__size_);
  }

  else
  {
    v245 = v179;
  }

  v246 = v180;
  v244 = &unk_1F50D8978;
  v247 = v181;
  v356 = &unk_1F50D86E0;
  if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v357, v296.__r_.__value_.__l.__data_, v296.__r_.__value_.__l.__size_);
  }

  else
  {
    v357 = v296;
  }

  v358 = v297;
  v356 = &unk_1F50D89B8;
  v359 = v298;
  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v360, v299.__r_.__value_.__l.__data_, v299.__r_.__value_.__l.__size_);
  }

  else
  {
    v360 = v299;
  }

  v351 = &unk_1F50D86E0;
  if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v352, v291.__r_.__value_.__l.__data_, v291.__r_.__value_.__l.__size_);
  }

  else
  {
    v352 = v291;
  }

  v353 = v292;
  v351 = &unk_1F50D8958;
  v354 = v293;
  v355 = v294;
  v346 = &unk_1F50D86E0;
  if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v347, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
  }

  else
  {
    v347 = v286;
  }

  v348 = v287;
  v346 = &unk_1F50D8958;
  v349 = v288;
  v350 = v289;
  v341 = &unk_1F50D86E0;
  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v342, v281.__r_.__value_.__l.__data_, v281.__r_.__value_.__l.__size_);
  }

  else
  {
    v342 = v281;
  }

  v343 = v282;
  v341 = &unk_1F50D8958;
  v344 = v283;
  v345 = v284;
  v336 = &unk_1F50D86E0;
  if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v337, v276.__r_.__value_.__l.__data_, v276.__r_.__value_.__l.__size_);
  }

  else
  {
    v337 = v276;
  }

  v338 = v277;
  v336 = &unk_1F50D8958;
  v339 = v278;
  v340 = v279;
  v332 = &unk_1F50D86E0;
  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v333, v272.__r_.__value_.__l.__data_, v272.__r_.__value_.__l.__size_);
  }

  else
  {
    v333 = v272;
  }

  v334 = v273;
  v332 = &unk_1F50D8978;
  v335 = v274;
  v328 = &unk_1F50D86E0;
  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v329, v268.__r_.__value_.__l.__data_, v268.__r_.__value_.__l.__size_);
  }

  else
  {
    v329 = v268;
  }

  v330 = v269;
  v328 = &unk_1F50D8978;
  v331 = v270;
  v323 = &unk_1F50D86E0;
  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v324, v263.__r_.__value_.__l.__data_, v263.__r_.__value_.__l.__size_);
  }

  else
  {
    v324 = v263;
  }

  v325 = v264;
  v323 = &unk_1F50D8998;
  v326 = v265;
  v327 = v266;
  v318 = &unk_1F50D86E0;
  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v319, v258.__r_.__value_.__l.__data_, v258.__r_.__value_.__l.__size_);
  }

  else
  {
    v319 = v258;
  }

  v320 = v259;
  v318 = &unk_1F50D8998;
  v321 = v260;
  v322 = v261;
  v313 = &unk_1F50D86E0;
  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v314, v253.__r_.__value_.__l.__data_, v253.__r_.__value_.__l.__size_);
  }

  else
  {
    v314 = v253;
  }

  v315 = v254;
  v313 = &unk_1F50D8998;
  v316 = v255;
  v317 = v256;
  v309 = &unk_1F50D86E0;
  if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v310, v249.__r_.__value_.__l.__data_, v249.__r_.__value_.__l.__size_);
  }

  else
  {
    v310 = v249;
  }

  v311 = v250;
  v309 = &unk_1F50D8978;
  v312 = v251;
  v305 = &unk_1F50D86E0;
  if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v245.__r_.__value_.__l.__data_, v245.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v245;
  }

  v307 = v246;
  v305 = &unk_1F50D8978;
  v308 = v247;
  mediaplatform::DatabaseColumnTuple<9ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::DatabaseColumnTuple(a1, &v356, &v351, &v346, &v341, &v336, &v332, &v328, &v323, &v318, &v313, &v309, &v305);
  v305 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v309 = &unk_1F50D86E0;
  if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v310.__r_.__value_.__l.__data_);
  }

  v313 = &unk_1F50D86E0;
  if (SHIBYTE(v314.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v314.__r_.__value_.__l.__data_);
  }

  v318 = &unk_1F50D86E0;
  if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v319.__r_.__value_.__l.__data_);
  }

  v323 = &unk_1F50D86E0;
  if (SHIBYTE(v324.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v324.__r_.__value_.__l.__data_);
  }

  v328 = &unk_1F50D86E0;
  if (SHIBYTE(v329.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v329.__r_.__value_.__l.__data_);
  }

  v332 = &unk_1F50D86E0;
  if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v333.__r_.__value_.__l.__data_);
  }

  v336 = &unk_1F50D86E0;
  if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v337.__r_.__value_.__l.__data_);
  }

  v341 = &unk_1F50D86E0;
  if (SHIBYTE(v342.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v342.__r_.__value_.__l.__data_);
  }

  v346 = &unk_1F50D86E0;
  if (SHIBYTE(v347.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v347.__r_.__value_.__l.__data_);
  }

  v351 = &unk_1F50D86E0;
  if (SHIBYTE(v352.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v352.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v356);
  *(a1 + 592) = &unk_1F50D86E0;
  if (SHIBYTE(v301.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 600), v301.__r_.__value_.__l.__data_, v301.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 600) = v301;
  }

  *(a1 + 624) = v302;
  *(a1 + 592) = &unk_1F50D89B8;
  *(a1 + 628) = v303;
  v26 = (a1 + 632);
  if (SHIBYTE(v304.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v26, v304.__r_.__value_.__l.__data_, v304.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v26->__r_.__value_.__l.__data_ = *&v304.__r_.__value_.__l.__data_;
    *(a1 + 648) = *(&v304.__r_.__value_.__l + 2);
  }

  v244 = &unk_1F50D86E0;
  if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v245.__r_.__value_.__l.__data_);
  }

  v248 = &unk_1F50D86E0;
  if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v249.__r_.__value_.__l.__data_);
  }

  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v253.__r_.__value_.__l.__data_);
  }

  v257 = &unk_1F50D86E0;
  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v258.__r_.__value_.__l.__data_);
  }

  v262 = &unk_1F50D86E0;
  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v263.__r_.__value_.__l.__data_);
  }

  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v268.__r_.__value_.__l.__data_);
  }

  v271 = &unk_1F50D86E0;
  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v272.__r_.__value_.__l.__data_);
  }

  v275 = &unk_1F50D86E0;
  if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v276.__r_.__value_.__l.__data_);
  }

  v280 = &unk_1F50D86E0;
  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v281.__r_.__value_.__l.__data_);
  }

  v285 = &unk_1F50D86E0;
  if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v286.__r_.__value_.__l.__data_);
  }

  v290 = &unk_1F50D86E0;
  if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v291.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v295);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v300);
  *(a1 + 656) = &unk_1F50D86E0;
  v27 = (a1 + 664);
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v27, v240.__r_.__value_.__l.__data_, v240.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v27->__r_.__value_.__l.__data_ = *&v240.__r_.__value_.__l.__data_;
    *(a1 + 680) = *(&v240.__r_.__value_.__l + 2);
  }

  *(a1 + 688) = v241;
  *(a1 + 656) = &unk_1F50D8958;
  *(a1 + 692) = v242;
  *(a1 + 700) = v243;
  v178 = &unk_1F50D86E0;
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v179.__r_.__value_.__l.__data_);
  }

  v182 = &unk_1F50D86E0;
  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v183.__r_.__value_.__l.__data_);
  }

  v186 = &unk_1F50D86E0;
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v187.__r_.__value_.__l.__data_);
  }

  v191 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v192.__r_.__value_.__l.__data_);
  }

  v196 = &unk_1F50D86E0;
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  v201 = &unk_1F50D86E0;
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v202.__r_.__value_.__l.__data_);
  }

  v205 = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v206.__r_.__value_.__l.__data_);
  }

  v209 = &unk_1F50D86E0;
  if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v210.__r_.__value_.__l.__data_);
  }

  v214 = &unk_1F50D86E0;
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v215.__r_.__value_.__l.__data_);
  }

  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v220.__r_.__value_.__l.__data_);
  }

  v224 = &unk_1F50D86E0;
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v225.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v229);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v234);
  v239 = &unk_1F50D86E0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  *(a1 + 704) = &unk_1F50D86E0;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 712), v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 712) = v174;
  }

  *(a1 + 736) = v175;
  *(a1 + 704) = &unk_1F50D89B8;
  *(a1 + 740) = v176;
  v28 = (a1 + 744);
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v28, v177.__r_.__value_.__l.__data_, v177.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v28->__r_.__value_.__l.__data_ = *&v177.__r_.__value_.__l.__data_;
    *(a1 + 760) = *(&v177.__r_.__value_.__l + 2);
  }

  v107 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  v111 = &unk_1F50D86E0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  v130 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  v134 = &unk_1F50D86E0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

  v148 = &unk_1F50D86E0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

  v153 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v158);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v163);
  v168 = &unk_1F50D86E0;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v169.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v173);
  *(a1 + 768) = &unk_1F50D86E0;
  v29 = (a1 + 776);
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v29, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v29->__r_.__value_.__l.__data_ = *&v104.__r_.__value_.__l.__data_;
    *(a1 + 792) = *(&v104.__r_.__value_.__l + 2);
  }

  *(a1 + 800) = v105;
  *(a1 + 768) = &unk_1F50D8978;
  *(a1 + 804) = v106;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v36 = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  v40 = &unk_1F50D86E0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  v45 = &unk_1F50D86E0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v50 = &unk_1F50D86E0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v55 = &unk_1F50D86E0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v59 = &unk_1F50D86E0;
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  v63 = &unk_1F50D86E0;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  v68 = &unk_1F50D86E0;
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  v73 = &unk_1F50D86E0;
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  v78 = &unk_1F50D86E0;
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v83);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v88);
  v93 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v98);
  v103 = &unk_1F50D86E0;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  *(a1 + 816) = &unk_1F50D86E0;
  v30 = (a1 + 824);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v30, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v31 = *(a2 + 8);
    *(a1 + 840) = *(a2 + 24);
    *&v30->__r_.__value_.__l.__data_ = v31;
  }

  *(a1 + 848) = *(a2 + 32);
  *(a1 + 816) = &unk_1F50D8978;
  *(a1 + 852) = *(a2 + 36);
  return a1;
}

uint64_t mediaplatform::DatabaseColumnTuple<4ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 816) = &unk_1F50D86E0;
  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  *(a1 + 768) = &unk_1F50D86E0;
  if (*(a1 + 799) < 0)
  {
    operator delete(*(a1 + 776));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 704);

  return mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<5ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 768) = &unk_1F50D86E0;
  if (*(a1 + 799) < 0)
  {
    operator delete(*(a1 + 776));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 704);

  return mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<8ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 592);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 528);
  *(a1 + 480) = &unk_1F50D86E0;
  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  *(a1 + 432) = &unk_1F50D86E0;
  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  return mediaplatform::DatabaseColumnTuple<12ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<12ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 384) = &unk_1F50D86E0;
  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  *(a1 + 336) = &unk_1F50D86E0;
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  *(a1 + 288) = &unk_1F50D86E0;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t mediaplatform::DatabaseColumnTuple<9ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v79 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v80, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v80 = *(a3 + 8);
  }

  v81 = *(a3 + 32);
  v79 = &unk_1F50D8958;
  v82 = *(a3 + 36);
  v83 = *(a3 + 44);
  v74 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __s = *(a4 + 8);
  }

  v76 = *(a4 + 32);
  v74 = &unk_1F50D8958;
  v77 = *(a4 + 36);
  v78 = *(a4 + 44);
  v69 = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v70 = *(a5 + 8);
  }

  v71 = *(a5 + 32);
  v69 = &unk_1F50D8958;
  v72 = *(a5 + 36);
  v73 = *(a5 + 44);
  v64 = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, *(a6 + 8), *(a6 + 16));
  }

  else
  {
    v65 = *(a6 + 8);
  }

  v66 = *(a6 + 32);
  v64 = &unk_1F50D8958;
  v67 = *(a6 + 36);
  v68 = *(a6 + 44);
  v60 = &unk_1F50D86E0;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v61 = *(a7 + 8);
  }

  v62 = *(a7 + 32);
  v60 = &unk_1F50D8978;
  v63 = *(a7 + 36);
  v56 = &unk_1F50D86E0;
  if (*(a8 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, *(a8 + 8), *(a8 + 16));
  }

  else
  {
    v57 = *(a8 + 8);
  }

  v58 = *(a8 + 32);
  v56 = &unk_1F50D8978;
  v59 = *(a8 + 36);
  v51 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v52 = *(a9 + 8);
  }

  v53 = *(a9 + 32);
  v51 = &unk_1F50D8998;
  v54 = *(a9 + 36);
  v55 = *(a9 + 44);
  v46 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v47 = *(a10 + 8);
  }

  v48 = *(a10 + 32);
  v46 = &unk_1F50D8998;
  v49 = *(a10 + 36);
  v50 = *(a10 + 44);
  v41 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v42 = *(a11 + 8);
  }

  v43 = *(a11 + 32);
  v41 = &unk_1F50D8998;
  v44 = *(a11 + 36);
  v45 = *(a11 + 44);
  v37 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v38 = *(a12 + 8);
  }

  v39 = *(a12 + 32);
  v37 = &unk_1F50D8978;
  v40 = *(a12 + 36);
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v34 = *(a13 + 8);
  }

  v35 = *(a13 + 32);
  v36 = *(a13 + 36);
  v125 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v126, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v126 = __s;
  }

  v127 = v76;
  v125 = &unk_1F50D8958;
  v128 = v77;
  v129 = v78;
  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v121, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    v121 = v70;
  }

  v122 = v71;
  v120 = &unk_1F50D8958;
  v123 = v72;
  v124 = v73;
  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v116 = v65;
  }

  v117 = v66;
  v115 = &unk_1F50D8958;
  v118 = v67;
  v119 = v68;
  v111 = &unk_1F50D86E0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v112, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
  }

  else
  {
    v112 = v61;
  }

  v113 = v62;
  v111 = &unk_1F50D8978;
  v114 = v63;
  v107 = &unk_1F50D86E0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v108, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v108 = v57;
  }

  v109 = v58;
  v107 = &unk_1F50D8978;
  v110 = v59;
  v102 = &unk_1F50D86E0;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v103, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v103 = v52;
  }

  v104 = v53;
  v102 = &unk_1F50D8998;
  v105 = v54;
  v106 = v55;
  v97 = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v98 = v47;
  }

  v99 = v48;
  v97 = &unk_1F50D8998;
  v100 = v49;
  v101 = v50;
  v92 = &unk_1F50D86E0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v93, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v93 = v42;
  }

  v94 = v43;
  v92 = &unk_1F50D8998;
  v95 = v44;
  v96 = v45;
  v88 = &unk_1F50D86E0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v89, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v89 = v38;
  }

  v90 = v39;
  v88 = &unk_1F50D8978;
  v91 = v40;
  v84 = &unk_1F50D86E0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v85, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v85 = v34;
  }

  v86 = v35;
  v84 = &unk_1F50D8978;
  v87 = v36;
  v166 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v167, v121.__r_.__value_.__l.__data_, v121.__r_.__value_.__l.__size_);
  }

  else
  {
    v167 = v121;
  }

  v168 = v122;
  v166 = &unk_1F50D8958;
  v169 = v123;
  v170 = v124;
  v161 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v162, v116.__r_.__value_.__l.__data_, v116.__r_.__value_.__l.__size_);
  }

  else
  {
    v162 = v116;
  }

  v163 = v117;
  v161 = &unk_1F50D8958;
  v164 = v118;
  v165 = v119;
  v157 = &unk_1F50D86E0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v158, v112.__r_.__value_.__l.__data_, v112.__r_.__value_.__l.__size_);
  }

  else
  {
    v158 = v112;
  }

  v159 = v113;
  v157 = &unk_1F50D8978;
  v160 = v114;
  v153 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v154, v108.__r_.__value_.__l.__data_, v108.__r_.__value_.__l.__size_);
  }

  else
  {
    v154 = v108;
  }

  v155 = v109;
  v153 = &unk_1F50D8978;
  v156 = v110;
  v148 = &unk_1F50D86E0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v149, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
  }

  else
  {
    v149 = v103;
  }

  v150 = v104;
  v148 = &unk_1F50D8998;
  v151 = v105;
  v152 = v106;
  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v144, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    v144 = v98;
  }

  v145 = v99;
  v143 = &unk_1F50D8998;
  v146 = v100;
  v147 = v101;
  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
  }

  else
  {
    v139 = v93;
  }

  v140 = v94;
  v138 = &unk_1F50D8998;
  v141 = v95;
  v142 = v96;
  v134 = &unk_1F50D86E0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v135, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
  }

  else
  {
    v135 = v89;
  }

  v136 = v90;
  v134 = &unk_1F50D8978;
  v137 = v91;
  v130 = &unk_1F50D86E0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
  }

  else
  {
    v131 = v85;
  }

  v132 = v86;
  v130 = &unk_1F50D8978;
  v133 = v87;
  v202 = &unk_1F50D86E0;
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v203, v162.__r_.__value_.__l.__data_, v162.__r_.__value_.__l.__size_);
  }

  else
  {
    v203 = v162;
  }

  v204 = v163;
  v202 = &unk_1F50D8958;
  v205 = v164;
  v206 = v165;
  v198 = &unk_1F50D86E0;
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v199, v158.__r_.__value_.__l.__data_, v158.__r_.__value_.__l.__size_);
  }

  else
  {
    v199 = v158;
  }

  v200 = v159;
  v198 = &unk_1F50D8978;
  v201 = v160;
  v194 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v195, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
  }

  else
  {
    v195 = v154;
  }

  v196 = v155;
  v194 = &unk_1F50D8978;
  v197 = v156;
  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
  }

  else
  {
    v190 = v149;
  }

  v191 = v150;
  v189 = &unk_1F50D8998;
  v192 = v151;
  v193 = v152;
  v184 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v185, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_);
  }

  else
  {
    v185 = v144;
  }

  v186 = v145;
  v184 = &unk_1F50D8998;
  v187 = v146;
  v188 = v147;
  v179 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v180, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v180 = v139;
  }

  v181 = v140;
  v179 = &unk_1F50D8998;
  v182 = v141;
  v183 = v142;
  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v176, v135.__r_.__value_.__l.__data_, v135.__r_.__value_.__l.__size_);
  }

  else
  {
    v176 = v135;
  }

  v177 = v136;
  v175 = &unk_1F50D8978;
  v178 = v137;
  v171 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v172, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
  }

  else
  {
    v172 = v131;
  }

  v173 = v132;
  v171 = &unk_1F50D8978;
  v174 = v133;
  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v235, v199.__r_.__value_.__l.__data_, v199.__r_.__value_.__l.__size_);
  }

  else
  {
    v235 = v199;
  }

  v236 = v200;
  v234 = &unk_1F50D8978;
  v237 = v201;
  v230 = &unk_1F50D86E0;
  if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v231, v195.__r_.__value_.__l.__data_, v195.__r_.__value_.__l.__size_);
  }

  else
  {
    v231 = v195;
  }

  v232 = v196;
  v230 = &unk_1F50D8978;
  v233 = v197;
  v225 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v226, v190.__r_.__value_.__l.__data_, v190.__r_.__value_.__l.__size_);
  }

  else
  {
    v226 = v190;
  }

  v227 = v191;
  v225 = &unk_1F50D8998;
  v228 = v192;
  v229 = v193;
  v220 = &unk_1F50D86E0;
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v221, v185.__r_.__value_.__l.__data_, v185.__r_.__value_.__l.__size_);
  }

  else
  {
    v221 = v185;
  }

  v222 = v186;
  v220 = &unk_1F50D8998;
  v223 = v187;
  v224 = v188;
  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v216, v180.__r_.__value_.__l.__data_, v180.__r_.__value_.__l.__size_);
  }

  else
  {
    v216 = v180;
  }

  v217 = v181;
  v215 = &unk_1F50D8998;
  v218 = v182;
  v219 = v183;
  v211 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v212, v176.__r_.__value_.__l.__data_, v176.__r_.__value_.__l.__size_);
  }

  else
  {
    v212 = v176;
  }

  v213 = v177;
  v211 = &unk_1F50D8978;
  v214 = v178;
  v207 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v208, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
  }

  else
  {
    v208 = v172;
  }

  v209 = v173;
  v207 = &unk_1F50D8978;
  v210 = v174;
  v261 = &unk_1F50D86E0;
  if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v262, v231.__r_.__value_.__l.__data_, v231.__r_.__value_.__l.__size_);
  }

  else
  {
    v262 = v231;
  }

  v263 = v232;
  v261 = &unk_1F50D8978;
  v264 = v233;
  v256 = &unk_1F50D86E0;
  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v257, v226.__r_.__value_.__l.__data_, v226.__r_.__value_.__l.__size_);
  }

  else
  {
    v257 = v226;
  }

  v258 = v227;
  v256 = &unk_1F50D8998;
  v259 = v228;
  v260 = v229;
  v251 = &unk_1F50D86E0;
  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v252, v221.__r_.__value_.__l.__data_, v221.__r_.__value_.__l.__size_);
  }

  else
  {
    v252 = v221;
  }

  v253 = v222;
  v251 = &unk_1F50D8998;
  v254 = v223;
  v255 = v224;
  v246 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v247, v216.__r_.__value_.__l.__data_, v216.__r_.__value_.__l.__size_);
  }

  else
  {
    v247 = v216;
  }

  v248 = v217;
  v246 = &unk_1F50D8998;
  v249 = v218;
  v250 = v219;
  v242 = &unk_1F50D86E0;
  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v243, v212.__r_.__value_.__l.__data_, v212.__r_.__value_.__l.__size_);
  }

  else
  {
    v243 = v212;
  }

  v244 = v213;
  v242 = &unk_1F50D8978;
  v245 = v214;
  v238 = &unk_1F50D86E0;
  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v239, v208.__r_.__value_.__l.__data_, v208.__r_.__value_.__l.__size_);
  }

  else
  {
    v239 = v208;
  }

  v240 = v209;
  v238 = &unk_1F50D8978;
  v241 = v210;
  v283 = &unk_1F50D86E0;
  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v284, v257.__r_.__value_.__l.__data_, v257.__r_.__value_.__l.__size_);
  }

  else
  {
    v284 = v257;
  }

  v285 = v258;
  v283 = &unk_1F50D8998;
  v286 = v259;
  v287 = v260;
  v278 = &unk_1F50D86E0;
  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v279, v252.__r_.__value_.__l.__data_, v252.__r_.__value_.__l.__size_);
  }

  else
  {
    v279 = v252;
  }

  v280 = v253;
  v278 = &unk_1F50D8998;
  v281 = v254;
  v282 = v255;
  v273 = &unk_1F50D86E0;
  if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v274, v247.__r_.__value_.__l.__data_, v247.__r_.__value_.__l.__size_);
  }

  else
  {
    v274 = v247;
  }

  v275 = v248;
  v273 = &unk_1F50D8998;
  v276 = v249;
  v277 = v250;
  v269 = &unk_1F50D86E0;
  if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v270, v243.__r_.__value_.__l.__data_, v243.__r_.__value_.__l.__size_);
  }

  else
  {
    v270 = v243;
  }

  v271 = v244;
  v269 = &unk_1F50D8978;
  v272 = v245;
  v265 = &unk_1F50D86E0;
  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v266, v239.__r_.__value_.__l.__data_, v239.__r_.__value_.__l.__size_);
  }

  else
  {
    v266 = v239;
  }

  v267 = v240;
  v265 = &unk_1F50D8978;
  v268 = v241;
  v301 = &unk_1F50D86E0;
  if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v302, v279.__r_.__value_.__l.__data_, v279.__r_.__value_.__l.__size_);
  }

  else
  {
    v302 = v279;
  }

  v303 = v280;
  v301 = &unk_1F50D8998;
  v304 = v281;
  v305 = v282;
  v296 = &unk_1F50D86E0;
  if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v297, v274.__r_.__value_.__l.__data_, v274.__r_.__value_.__l.__size_);
  }

  else
  {
    v297 = v274;
  }

  v298 = v275;
  v296 = &unk_1F50D8998;
  v299 = v276;
  v300 = v277;
  v292 = &unk_1F50D86E0;
  if (SHIBYTE(v270.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v293, v270.__r_.__value_.__l.__data_, v270.__r_.__value_.__l.__size_);
  }

  else
  {
    v293 = v270;
  }

  v294 = v271;
  v292 = &unk_1F50D8978;
  v295 = v272;
  v288 = &unk_1F50D86E0;
  if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v289, v266.__r_.__value_.__l.__data_, v266.__r_.__value_.__l.__size_);
  }

  else
  {
    v289 = v266;
  }

  v290 = v267;
  v288 = &unk_1F50D8978;
  v291 = v268;
  v314 = &unk_1F50D86E0;
  if (SHIBYTE(v297.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v315, v297.__r_.__value_.__l.__data_, v297.__r_.__value_.__l.__size_);
  }

  else
  {
    v315 = v297;
  }

  v316 = v298;
  v314 = &unk_1F50D8998;
  v317 = v299;
  v318 = v300;
  v310 = &unk_1F50D86E0;
  if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v311, v293.__r_.__value_.__l.__data_, v293.__r_.__value_.__l.__size_);
  }

  else
  {
    v311 = v293;
  }

  v312 = v294;
  v310 = &unk_1F50D8978;
  v313 = v295;
  v306 = &unk_1F50D86E0;
  if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v307, v289.__r_.__value_.__l.__data_, v289.__r_.__value_.__l.__size_);
  }

  else
  {
    v307 = v289;
  }

  v308 = v290;
  v306 = &unk_1F50D8978;
  v309 = v291;
  v323 = &unk_1F50D86E0;
  if (SHIBYTE(v311.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v324, v311.__r_.__value_.__l.__data_, v311.__r_.__value_.__l.__size_);
  }

  else
  {
    v324 = v311;
  }

  v325 = v312;
  v323 = &unk_1F50D8978;
  v326 = v313;
  v319 = &unk_1F50D86E0;
  if (SHIBYTE(v307.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v320, v307.__r_.__value_.__l.__data_, v307.__r_.__value_.__l.__size_);
  }

  else
  {
    v320 = v307;
  }

  v21 = v308;
  v321 = v308;
  v319 = &unk_1F50D8978;
  v22 = v309;
  v322 = v309;
  v327 = &unk_1F50D86E0;
  if (SHIBYTE(v320.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v328, v320.__r_.__value_.__l.__data_, v320.__r_.__value_.__l.__size_);
    v21 = v321;
    v22 = v322;
  }

  else
  {
    v328 = v320;
  }

  v329 = v21;
  v327 = &unk_1F50D8978;
  v330 = v22;
  *a1 = &unk_1F50D86E0;
  if (SHIBYTE(v328.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), v328.__r_.__value_.__l.__data_, v328.__r_.__value_.__l.__size_);
    v23 = v330;
    v24 = SHIBYTE(v328.__r_.__value_.__r.__words[2]);
    *(a1 + 32) = v329;
    *a1 = &unk_1F50D8978;
    *(a1 + 36) = v23;
    v327 = &unk_1F50D86E0;
    if (v24 < 0)
    {
      operator delete(v328.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a1 + 8) = v328;
    *(a1 + 32) = v21;
    *a1 = &unk_1F50D8978;
    *(a1 + 36) = v22;
    v327 = &unk_1F50D86E0;
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (SHIBYTE(v324.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), v324.__r_.__value_.__l.__data_, v324.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 56) = v324;
  }

  *(a1 + 80) = v325;
  *(a1 + 48) = &unk_1F50D8978;
  *(a1 + 84) = v326;
  v319 = &unk_1F50D86E0;
  if (SHIBYTE(v320.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v320.__r_.__value_.__l.__data_);
  }

  v323 = &unk_1F50D86E0;
  if (SHIBYTE(v324.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v324.__r_.__value_.__l.__data_);
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), v315.__r_.__value_.__l.__data_, v315.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 104) = v315;
  }

  *(a1 + 128) = v316;
  *(a1 + 96) = &unk_1F50D8998;
  *(a1 + 132) = v317;
  *(a1 + 140) = v318;
  v306 = &unk_1F50D86E0;
  if (SHIBYTE(v307.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v307.__r_.__value_.__l.__data_);
  }

  v310 = &unk_1F50D86E0;
  if (SHIBYTE(v311.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v311.__r_.__value_.__l.__data_);
  }

  v314 = &unk_1F50D86E0;
  if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v315.__r_.__value_.__l.__data_);
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 152), v302.__r_.__value_.__l.__data_, v302.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 152) = v302;
  }

  *(a1 + 176) = v303;
  *(a1 + 144) = &unk_1F50D8998;
  *(a1 + 180) = v304;
  *(a1 + 188) = v305;
  v288 = &unk_1F50D86E0;
  if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v289.__r_.__value_.__l.__data_);
  }

  v292 = &unk_1F50D86E0;
  if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v293.__r_.__value_.__l.__data_);
  }

  v296 = &unk_1F50D86E0;
  if (SHIBYTE(v297.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v297.__r_.__value_.__l.__data_);
  }

  v301 = &unk_1F50D86E0;
  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v302.__r_.__value_.__l.__data_);
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (SHIBYTE(v284.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 200), v284.__r_.__value_.__l.__data_, v284.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 200) = v284;
  }

  *(a1 + 224) = v285;
  *(a1 + 192) = &unk_1F50D8998;
  *(a1 + 228) = v286;
  *(a1 + 236) = v287;
  v265 = &unk_1F50D86E0;
  if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v266.__r_.__value_.__l.__data_);
  }

  v269 = &unk_1F50D86E0;
  if (SHIBYTE(v270.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v270.__r_.__value_.__l.__data_);
  }

  v273 = &unk_1F50D86E0;
  if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v274.__r_.__value_.__l.__data_);
  }

  v278 = &unk_1F50D86E0;
  if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v279.__r_.__value_.__l.__data_);
  }

  v283 = &unk_1F50D86E0;
  if (SHIBYTE(v284.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v284.__r_.__value_.__l.__data_);
  }

  *(a1 + 240) = &unk_1F50D86E0;
  if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 248), v262.__r_.__value_.__l.__data_, v262.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 248) = v262;
  }

  *(a1 + 272) = v263;
  *(a1 + 240) = &unk_1F50D8978;
  *(a1 + 276) = v264;
  v238 = &unk_1F50D86E0;
  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  v242 = &unk_1F50D86E0;
  if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v243.__r_.__value_.__l.__data_);
  }

  v246 = &unk_1F50D86E0;
  if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v247.__r_.__value_.__l.__data_);
  }

  v251 = &unk_1F50D86E0;
  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v252.__r_.__value_.__l.__data_);
  }

  v256 = &unk_1F50D86E0;
  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  v261 = &unk_1F50D86E0;
  if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v262.__r_.__value_.__l.__data_);
  }

  *(a1 + 288) = &unk_1F50D86E0;
  v25 = (a1 + 296);
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v25, v235.__r_.__value_.__l.__data_, v235.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v25->__r_.__value_.__l.__data_ = *&v235.__r_.__value_.__l.__data_;
    *(a1 + 312) = *(&v235.__r_.__value_.__l + 2);
  }

  *(a1 + 320) = v236;
  *(a1 + 288) = &unk_1F50D8978;
  *(a1 + 324) = v237;
  v207 = &unk_1F50D86E0;
  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v208.__r_.__value_.__l.__data_);
  }

  v211 = &unk_1F50D86E0;
  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v212.__r_.__value_.__l.__data_);
  }

  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v216.__r_.__value_.__l.__data_);
  }

  v220 = &unk_1F50D86E0;
  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v221.__r_.__value_.__l.__data_);
  }

  v225 = &unk_1F50D86E0;
  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v226.__r_.__value_.__l.__data_);
  }

  v230 = &unk_1F50D86E0;
  if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v231.__r_.__value_.__l.__data_);
  }

  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  *(a1 + 336) = &unk_1F50D86E0;
  v26 = (a1 + 344);
  if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v26, v203.__r_.__value_.__l.__data_, v203.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v26->__r_.__value_.__l.__data_ = *&v203.__r_.__value_.__l.__data_;
    *(a1 + 360) = *(&v203.__r_.__value_.__l + 2);
  }

  *(a1 + 368) = v204;
  *(a1 + 336) = &unk_1F50D8958;
  *(a1 + 372) = v205;
  *(a1 + 380) = v206;
  v171 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v172.__r_.__value_.__l.__data_);
  }

  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v176.__r_.__value_.__l.__data_);
  }

  v179 = &unk_1F50D86E0;
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v180.__r_.__value_.__l.__data_);
  }

  v184 = &unk_1F50D86E0;
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v185.__r_.__value_.__l.__data_);
  }

  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  v194 = &unk_1F50D86E0;
  if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v195.__r_.__value_.__l.__data_);
  }

  v198 = &unk_1F50D86E0;
  if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v199.__r_.__value_.__l.__data_);
  }

  v202 = &unk_1F50D86E0;
  if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v203.__r_.__value_.__l.__data_);
  }

  *(a1 + 384) = &unk_1F50D86E0;
  v27 = (a1 + 392);
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v27, v167.__r_.__value_.__l.__data_, v167.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v27->__r_.__value_.__l.__data_ = *&v167.__r_.__value_.__l.__data_;
    *(a1 + 408) = *(&v167.__r_.__value_.__l + 2);
  }

  *(a1 + 416) = v168;
  *(a1 + 384) = &unk_1F50D8958;
  *(a1 + 420) = v169;
  *(a1 + 428) = v170;
  v130 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  v134 = &unk_1F50D86E0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

  v148 = &unk_1F50D86E0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

  v153 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  v157 = &unk_1F50D86E0;
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v158.__r_.__value_.__l.__data_);
  }

  v161 = &unk_1F50D86E0;
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v162.__r_.__value_.__l.__data_);
  }

  v166 = &unk_1F50D86E0;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v167.__r_.__value_.__l.__data_);
  }

  *(a1 + 432) = &unk_1F50D86E0;
  v28 = (a1 + 440);
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v28, v126.__r_.__value_.__l.__data_, v126.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v28->__r_.__value_.__l.__data_ = *&v126.__r_.__value_.__l.__data_;
    *(a1 + 456) = *(&v126.__r_.__value_.__l + 2);
  }

  *(a1 + 464) = v127;
  *(a1 + 432) = &unk_1F50D8958;
  *(a1 + 468) = v128;
  *(a1 + 476) = v129;
  v84 = &unk_1F50D86E0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  v88 = &unk_1F50D86E0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  v92 = &unk_1F50D86E0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  v97 = &unk_1F50D86E0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  v102 = &unk_1F50D86E0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  v107 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  v111 = &unk_1F50D86E0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  *(a1 + 480) = &unk_1F50D86E0;
  v29 = (a1 + 488);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v29, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v29->__r_.__value_.__l.__data_ = *&v80.__r_.__value_.__l.__data_;
    *(a1 + 504) = *(&v80.__r_.__value_.__l + 2);
  }

  *(a1 + 512) = v81;
  *(a1 + 480) = &unk_1F50D8958;
  *(a1 + 516) = v82;
  *(a1 + 524) = v83;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  v37 = &unk_1F50D86E0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v41 = &unk_1F50D86E0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v46 = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v51 = &unk_1F50D86E0;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v56 = &unk_1F50D86E0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  v60 = &unk_1F50D86E0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  v64 = &unk_1F50D86E0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  v69 = &unk_1F50D86E0;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  v74 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v79 = &unk_1F50D86E0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 536), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v30 = *(a2 + 8);
    *(a1 + 552) = *(a2 + 24);
    *(a1 + 536) = v30;
  }

  *(a1 + 560) = *(a2 + 32);
  *(a1 + 528) = &unk_1F50D89B8;
  *(a1 + 564) = *(a2 + 36);
  v31 = (a1 + 568);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v31, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v32 = *(a2 + 40);
    *(a1 + 584) = *(a2 + 56);
    *&v31->__r_.__value_.__l.__data_ = v32;
  }

  return a1;
}

void sub_1D57D58D8(_Unwind_Exception *a1)
{
  *(v3 + 528) = v2;
  if (*(v3 + 559) < 0)
  {
    operator delete(*v1);
  }

  mediaplatform::DatabaseColumnTuple<10ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(v3);
  _Unwind_Resume(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<10ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 480) = &unk_1F50D86E0;
  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  *(a1 + 432) = &unk_1F50D86E0;
  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  return mediaplatform::DatabaseColumnTuple<12ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<11ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 432) = &unk_1F50D86E0;
  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  return mediaplatform::DatabaseColumnTuple<12ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<13ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 336) = &unk_1F50D86E0;
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  *(a1 + 288) = &unk_1F50D86E0;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t mediaplatform::DatabaseColumnTuple<14ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 288) = &unk_1F50D86E0;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mlcore::ItemPlaybackTable::persistentIDColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1167) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 143), *(this + 144));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1144);
    *(a2 + 24) = *(this + 145);
  }

  *(a2 + 32) = *(this + 292);
  *(a2 + 44) = *(this + 295);
  *(a2 + 36) = *(this + 1172);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemPlaybackTable::audioFormatColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1215) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 149), *(this + 150));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1192);
    *(a2 + 24) = *(this + 151);
  }

  *(a2 + 32) = *(this + 304);
  *(a2 + 36) = *(this + 1220);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ItemPlaybackTable::bitrateColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1263) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 155), *(this + 156));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1240);
    *(a2 + 24) = *(this + 157);
  }

  *(a2 + 32) = *(this + 316);
  *(a2 + 36) = *(this + 1268);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ItemPlaybackTable::codecTypeColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1311) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 161), *(this + 162));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1288);
    *(a2 + 24) = *(this + 163);
  }

  *(a2 + 32) = *(this + 328);
  *(a2 + 36) = *(this + 1316);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ItemPlaybackTable::codecSubtypeColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1359) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 167), *(this + 168));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1336);
    *(a2 + 24) = *(this + 169);
  }

  *(a2 + 32) = *(this + 340);
  *(a2 + 36) = *(this + 1364);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ItemPlaybackTable::dataKindColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1407) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 173), *(this + 174));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1384);
    *(a2 + 24) = *(this + 175);
  }

  *(a2 + 32) = *(this + 352);
  *(a2 + 36) = *(this + 1412);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ItemPlaybackTable::dataURLColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1455) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 179), *(this + 180));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1432);
    *(a2 + 24) = *(this + 181);
  }

  *(a2 + 32) = *(this + 364);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 1460);
  if (*(this + 1487) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 183), *(this + 184));
  }

  else
  {
    *(a2 + 40) = *(this + 1464);
    *(a2 + 56) = *(this + 185);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D57D6AAC(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ItemPlaybackTable::durationColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1519) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 187), *(this + 188));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1496);
    *(a2 + 24) = *(this + 189);
  }

  *(a2 + 32) = *(this + 380);
  *(a2 + 44) = *(this + 383);
  *(a2 + 36) = *(this + 1524);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemPlaybackTable::EQPresetColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1567) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 193), *(this + 194));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1544);
    *(a2 + 24) = *(this + 195);
  }

  *(a2 + 32) = *(this + 392);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 1572);
  if (*(this + 1599) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 197), *(this + 198));
  }

  else
  {
    *(a2 + 40) = *(this + 1576);
    *(a2 + 56) = *(this + 199);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D57D6C6C(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ItemPlaybackTable::formatColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1631) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 201), *(this + 202));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1608);
    *(a2 + 24) = *(this + 203);
  }

  *(a2 + 32) = *(this + 408);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 1636);
  if (*(this + 1663) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 205), *(this + 206));
  }

  else
  {
    *(a2 + 40) = *(this + 1640);
    *(a2 + 56) = *(this + 207);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D57D6D84(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ItemPlaybackTable::gaplessHeuristicInfoColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1695) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 209), *(this + 210));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1672);
    *(a2 + 24) = *(this + 211);
  }

  *(a2 + 32) = *(this + 424);
  *(a2 + 44) = *(this + 427);
  *(a2 + 36) = *(this + 1700);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemPlaybackTable::gaplessEncodingDelayColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1743) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 215), *(this + 216));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1720);
    *(a2 + 24) = *(this + 217);
  }

  *(a2 + 32) = *(this + 436);
  *(a2 + 44) = *(this + 439);
  *(a2 + 36) = *(this + 1748);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemPlaybackTable::gaplessEncodingDrainColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1791) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 221), *(this + 222));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1768);
    *(a2 + 24) = *(this + 223);
  }

  *(a2 + 32) = *(this + 448);
  *(a2 + 44) = *(this + 451);
  *(a2 + 36) = *(this + 1796);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemPlaybackTable::gaplessLastFrameResyncColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1839) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 227), *(this + 228));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1816);
    *(a2 + 24) = *(this + 229);
  }

  *(a2 + 32) = *(this + 460);
  *(a2 + 44) = *(this + 463);
  *(a2 + 36) = *(this + 1844);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemPlaybackTable::hasVideoColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1887) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 233), *(this + 234));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1864);
    *(a2 + 24) = *(this + 235);
  }

  *(a2 + 32) = *(this + 472);
  *(a2 + 36) = *(this + 1892);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ItemPlaybackTable::relativeVolumeColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1935) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 239), *(this + 240));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1912);
    *(a2 + 24) = *(this + 241);
  }

  *(a2 + 32) = *(this + 484);
  *(a2 + 36) = *(this + 1940);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ItemPlaybackTable::sampleRateColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1983) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 245), *(this + 246));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1960);
    *(a2 + 24) = *(this + 247);
  }

  *(a2 + 32) = *(this + 496);
  *(a2 + 44) = *(this + 499);
  *(a2 + 36) = *(this + 1988);
  *a2 = &unk_1F50D7B00;
}

void mlcore::ItemPlaybackTable::startTimeColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 2031) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 251), *(this + 252));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 2008);
    *(a2 + 24) = *(this + 253);
  }

  *(a2 + 32) = *(this + 508);
  *(a2 + 44) = *(this + 511);
  *(a2 + 36) = *(this + 2036);
  *a2 = &unk_1F50D7B00;
}

void mlcore::ItemPlaybackTable::stopTimeColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 2079) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 257), *(this + 258));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 2056);
    *(a2 + 24) = *(this + 259);
  }

  *(a2 + 32) = *(this + 520);
  *(a2 + 44) = *(this + 523);
  *(a2 + 36) = *(this + 2084);
  *a2 = &unk_1F50D7B00;
}

void mlcore::ItemPlaybackTable::volumeNormalizationEnergyColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 2127) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 263), *(this + 264));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 2104);
    *(a2 + 24) = *(this + 265);
  }

  *(a2 + 32) = *(this + 532);
  *(a2 + 36) = *(this + 2132);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ItemPlaybackTable::progressionDirectionColumn(mlcore::ItemPlaybackTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 2175) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 269), *(this + 270));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 2152);
    *(a2 + 24) = *(this + 271);
  }

  *(a2 + 32) = *(this + 544);
  *(a2 + 36) = *(this + 2180);
  *a2 = &unk_1F50D7AE0;
}

uint64_t mlcore::TypedEntityClass<mlcore::Source>::sharedPointer()
{
  if (atomic_load_explicit(&mlcore::TypedEntityClass<mlcore::Source>::sharedPointer(void)::__once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&mlcore::TypedEntityClass<mlcore::Source>::sharedPointer(void)::__once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TypedEntityClass<mlcore::Source>::sharedPointer(void)::{lambda(void)#1} &&>>);
  }

  return mlcore::TypedEntityClass<mlcore::Source>::sharedPointer(void)::__sharedPointer;
}

uint64_t mlcore::SourcePropertyPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::SourcePropertyPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::SourcePropertyPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::SourcePropertyPersistentID(void)::$_0 &&>>);
  }

  return mlcore::SourcePropertyPersistentID(void)::property;
}

void sub_1D57D782C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *mediaplatform::Singleton<mlcore::SourceTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore11SourceTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::SourceTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::SourceTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D57D79F8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::SourceTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D20A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::Source>::databaseTablesToInsertInto(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::TypedEntityClass<mlcore::Source>::databaseTablesToDeleteFrom(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t mlcore::TypedEntityClass<mlcore::Source>::databaseTable()
{
  mediaplatform::Singleton<mlcore::SourceTable>::sharedInstance(&v2);
  v0 = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v0;
}

void sub_1D57D7D58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::Source>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::Source>::~TypedEntityClass(mlcore::EntityClass *a1)
{
  mlcore::EntityClass::~EntityClass(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::Source::~Source(mlcore::Source *this)
{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

uint64_t mlcore::SourcePropertyName(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::SourcePropertyName(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::SourcePropertyName(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::SourcePropertyName(void)::$_0 &&>>);
  }

  return mlcore::SourcePropertyName(void)::property;
}

void sub_1D57D8154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::SourcePropertyLastSyncDate(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::SourcePropertyLastSyncDate(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::SourcePropertyLastSyncDate(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::SourcePropertyLastSyncDate(void)::$_0 &&>>);
  }

  return mlcore::SourcePropertyLastSyncDate(void)::property;
}

void sub_1D57D845C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::SourcePropertyLastSyncRevision(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::SourcePropertyLastSyncRevision(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::SourcePropertyLastSyncRevision(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::SourcePropertyLastSyncRevision(void)::$_0 &&>>);
  }

  return mlcore::SourcePropertyLastSyncRevision(void)::property;
}

void sub_1D57D8788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

double mlcore::Source::Source(mlcore::Source *this, uint64_t a2)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  *this = &unk_1F50D3B68;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  *this = &unk_1F50D3B68;
  return result;
}

double mlcore::Source::Source(uint64_t a1, unsigned int a2)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  *(a1 + 8) = &unk_1F50D7378;
  *(a1 + 216) = &unk_1F50D73A0;
  *(a1 + 224) = a2;
  *a1 = &unk_1F50D3B68;
  return result;
}

{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  *(a1 + 8) = &unk_1F50D7378;
  *(a1 + 216) = &unk_1F50D73A0;
  *(a1 + 224) = a2;
  *a1 = &unk_1F50D3B68;
  return result;
}

void mlcore::Source::name(mlcore::Source *this@<X0>, std::string *a2@<X8>)
{
  v4 = mlcore::SourcePropertyName(this);

  mlcore::Entity::valueForProperty<std::string>(a2, this, v4);
}

void mlcore::Source::setName(mlcore *a1, uint64_t a2)
{
  v4 = mlcore::SourcePropertyName(a1);

  mlcore::Entity::setValueForProperty<std::string>(a1, a2, v4);
}

uint64_t mlcore::Source::lastSyncDate(mlcore::Source *this)
{
  SyncDate = mlcore::SourcePropertyLastSyncDate(this);

  return mlcore::Entity::valueForProperty<long long>(this, SyncDate);
}

void *mlcore::Source::setLastSyncDate(mlcore::Source *this, uint64_t a2)
{
  v5[0] = mlcore::SourcePropertyLastSyncDate(this);
  v5[1] = v5;
  result = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(this + 22, v5[0]);
  result[3] = a2;
  return result;
}

uint64_t mlcore::Source::lastSyncRevision(mlcore::Source *this)
{
  SyncRevision = mlcore::SourcePropertyLastSyncRevision(this);

  return mlcore::Entity::valueForProperty<long long>(this, SyncRevision);
}

void *mlcore::Source::setLastSyncRevision(mlcore::Source *this, uint64_t a2)
{
  v5[0] = mlcore::SourcePropertyLastSyncRevision(this);
  v5[1] = v5;
  result = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(this + 22, v5[0]);
  result[3] = a2;
  return result;
}

mlcore::PersonTable *mlcore::PersonTable::PersonTable(mlcore::PersonTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(v74, "person");
  std::string::basic_string[abi:ne200100]<0>(&__s, "person_pid");
  v70 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = __s;
  }

  v72 = 1;
  v73[0] = 0;
  *&v73[4] = 0;
  v70 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(v62, "cloud_id");
  std::string::basic_string[abi:ne200100]<0>(v60, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v64, v62, v60);
  std::string::basic_string[abi:ne200100]<0>(v53, "handle");
  std::string::basic_string[abi:ne200100]<0>(v51, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v55, v53, v51);
  std::string::basic_string[abi:ne200100]<0>(v44, "name");
  std::string::basic_string[abi:ne200100]<0>(v42, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v46, v44, v42);
  std::string::basic_string[abi:ne200100]<0>(v35, "image_url");
  std::string::basic_string[abi:ne200100]<0>(v33, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v37, v35, v33);
  std::string::basic_string[abi:ne200100]<0>(v26, "image_token");
  std::string::basic_string[abi:ne200100]<0>(v24, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v28, v26, v24);
  std::string::basic_string[abi:ne200100]<0>(&v19, "lightweight_profile");
  v20 = &unk_1F50D86E0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v19;
  }

  v22 = 16;
  LOBYTE(v23) = 1;
  HIDWORD(v23) = 0;
  v20 = &unk_1F50D7AE0;
  v105 = &unk_1F50D86E0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    v106 = v71;
  }

  v107 = v72;
  v105 = &unk_1F50D8958;
  v108 = *v73;
  v109 = *&v73[8];
  v100 = &unk_1F50D86E0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v101, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v101 = v65;
  }

  v102 = v66;
  v100 = &unk_1F50D89B8;
  v103 = v67;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v104, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v104 = v68;
  }

  v95 = &unk_1F50D86E0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v96, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
  }

  else
  {
    v96 = v56;
  }

  v97 = v57;
  v95 = &unk_1F50D89B8;
  v98 = v58;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v99 = v59;
  }

  v90 = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v91, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v91 = v47;
  }

  v92 = v48;
  v90 = &unk_1F50D89B8;
  v93 = v49;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v94 = v50;
  }

  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v86 = v38;
  }

  v87 = v39;
  v85 = &unk_1F50D89B8;
  v88 = v40;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v89, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v89 = v41;
  }

  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v81, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v81 = v29;
  }

  v82 = v30;
  v80 = &unk_1F50D89B8;
  v83 = v31;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v84, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v84 = v32;
  }

  v76 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v77, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v77 = __p;
  }

  v78 = v22;
  v76 = &unk_1F50D8978;
  v79 = v23;
  *this = &unk_1F50DD390;
  v2 = (this + 8);
  if (SHIBYTE(v75) < 0)
  {
    std::string::__init_copy_ctor_external(v2, v74[0], v74[1]);
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *v74;
    *(this + 3) = v75;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *this = &unk_1F50D8DB0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v139 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v140, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
  }

  else
  {
    v140 = v106;
  }

  v141 = v107;
  v139 = &unk_1F50D8958;
  v142 = v108;
  v143 = v109;
  v134 = &unk_1F50D86E0;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v135, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
  }

  else
  {
    v135 = v101;
  }

  v136 = v102;
  v134 = &unk_1F50D89B8;
  v137 = v103;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v138, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  }

  else
  {
    v138 = v104;
  }

  v129 = &unk_1F50D86E0;
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v130, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
  }

  else
  {
    v130 = v96;
  }

  v131 = v97;
  v129 = &unk_1F50D89B8;
  v132 = v98;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v133, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
  }

  else
  {
    v133 = v99;
  }

  v124 = &unk_1F50D86E0;
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v125, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
  }

  else
  {
    v125 = v91;
  }

  v126 = v92;
  v124 = &unk_1F50D89B8;
  v127 = v93;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v128, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v128 = v94;
  }

  v119 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v120, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v120 = v86;
  }

  v121 = v87;
  v119 = &unk_1F50D89B8;
  v122 = v88;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
  }

  else
  {
    v123 = v89;
  }

  v114 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v115, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    v115 = v81;
  }

  v116 = v82;
  v114 = &unk_1F50D89B8;
  v117 = v83;
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v118, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v118 = v84;
  }

  v110 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v111 = v77;
  }

  v112 = v78;
  v110 = &unk_1F50D8978;
  v113 = v79;
  v168 = &unk_1F50D86E0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v169, v135.__r_.__value_.__l.__data_, v135.__r_.__value_.__l.__size_);
  }

  else
  {
    v169 = v135;
  }

  v170 = v136;
  v168 = &unk_1F50D89B8;
  v171 = v137;
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v172, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
  }

  else
  {
    v172 = v138;
  }

  v163 = &unk_1F50D86E0;
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v164, v130.__r_.__value_.__l.__data_, v130.__r_.__value_.__l.__size_);
  }

  else
  {
    v164 = v130;
  }

  v165 = v131;
  v163 = &unk_1F50D89B8;
  v166 = v132;
  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v167, v133.__r_.__value_.__l.__data_, v133.__r_.__value_.__l.__size_);
  }

  else
  {
    v167 = v133;
  }

  v158 = &unk_1F50D86E0;
  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v159, v125.__r_.__value_.__l.__data_, v125.__r_.__value_.__l.__size_);
  }

  else
  {
    v159 = v125;
  }

  v160 = v126;
  v158 = &unk_1F50D89B8;
  v161 = v127;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v162, v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__l.__size_);
  }

  else
  {
    v162 = v128;
  }

  v153 = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v154, v120.__r_.__value_.__l.__data_, v120.__r_.__value_.__l.__size_);
  }

  else
  {
    v154 = v120;
  }

  v155 = v121;
  v153 = &unk_1F50D89B8;
  v156 = v122;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v157, v123.__r_.__value_.__l.__data_, v123.__r_.__value_.__l.__size_);
  }

  else
  {
    v157 = v123;
  }

  v148 = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v149, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
  }

  else
  {
    v149 = v115;
  }

  v150 = v116;
  v148 = &unk_1F50D89B8;
  v151 = v117;
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v152, v118.__r_.__value_.__l.__data_, v118.__r_.__value_.__l.__size_);
  }

  else
  {
    v152 = v118;
  }

  v144 = &unk_1F50D86E0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v145, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
  }

  else
  {
    v145 = v111;
  }

  v146 = v112;
  v144 = &unk_1F50D8978;
  v147 = v113;
  v192 = &unk_1F50D86E0;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v193, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
  }

  else
  {
    v193 = v164;
  }

  v194 = v165;
  v192 = &unk_1F50D89B8;
  v195 = v166;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v196, v167.__r_.__value_.__l.__data_, v167.__r_.__value_.__l.__size_);
  }

  else
  {
    v196 = v167;
  }

  v187 = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v188, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    v188 = v159;
  }

  v189 = v160;
  v187 = &unk_1F50D89B8;
  v190 = v161;
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v191, v162.__r_.__value_.__l.__data_, v162.__r_.__value_.__l.__size_);
  }

  else
  {
    v191 = v162;
  }

  v182 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v183, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
  }

  else
  {
    v183 = v154;
  }

  v184 = v155;
  v182 = &unk_1F50D89B8;
  v185 = v156;
  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v186, v157.__r_.__value_.__l.__data_, v157.__r_.__value_.__l.__size_);
  }

  else
  {
    v186 = v157;
  }

  v177 = &unk_1F50D86E0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v178, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
  }

  else
  {
    v178 = v149;
  }

  v179 = v150;
  v177 = &unk_1F50D89B8;
  v180 = v151;
  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v181, v152.__r_.__value_.__l.__data_, v152.__r_.__value_.__l.__size_);
  }

  else
  {
    v181 = v152;
  }

  v173 = &unk_1F50D86E0;
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, v145.__r_.__value_.__l.__data_, v145.__r_.__value_.__l.__size_);
  }

  else
  {
    v174 = v145;
  }

  v175 = v146;
  v173 = &unk_1F50D8978;
  v176 = v147;
  v211 = &unk_1F50D86E0;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v212, v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_);
  }

  else
  {
    v212 = v188;
  }

  v213 = v189;
  v211 = &unk_1F50D89B8;
  v214 = v190;
  if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v215, v191.__r_.__value_.__l.__data_, v191.__r_.__value_.__l.__size_);
  }

  else
  {
    v215 = v191;
  }

  v206 = &unk_1F50D86E0;
  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v207, v183.__r_.__value_.__l.__data_, v183.__r_.__value_.__l.__size_);
  }

  else
  {
    v207 = v183;
  }

  v208 = v184;
  v206 = &unk_1F50D89B8;
  v209 = v185;
  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v210, v186.__r_.__value_.__l.__data_, v186.__r_.__value_.__l.__size_);
  }

  else
  {
    v210 = v186;
  }

  v201 = &unk_1F50D86E0;
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v202, v178.__r_.__value_.__l.__data_, v178.__r_.__value_.__l.__size_);
  }

  else
  {
    v202 = v178;
  }

  v203 = v179;
  v201 = &unk_1F50D89B8;
  v204 = v180;
  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v205, v181.__r_.__value_.__l.__data_, v181.__r_.__value_.__l.__size_);
  }

  else
  {
    v205 = v181;
  }

  v197 = &unk_1F50D86E0;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v198, v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
  }

  else
  {
    v198 = v174;
  }

  v199 = v175;
  v197 = &unk_1F50D8978;
  v200 = v176;
  v225 = &unk_1F50D86E0;
  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v226, v207.__r_.__value_.__l.__data_, v207.__r_.__value_.__l.__size_);
  }

  else
  {
    v226 = v207;
  }

  v227 = v208;
  v225 = &unk_1F50D89B8;
  v228 = v209;
  if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v229, v210.__r_.__value_.__l.__data_, v210.__r_.__value_.__l.__size_);
  }

  else
  {
    v229 = v210;
  }

  v220 = &unk_1F50D86E0;
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v221, v202.__r_.__value_.__l.__data_, v202.__r_.__value_.__l.__size_);
  }

  else
  {
    v221 = v202;
  }

  v222 = v203;
  v220 = &unk_1F50D89B8;
  v223 = v204;
  if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v224, v205.__r_.__value_.__l.__data_, v205.__r_.__value_.__l.__size_);
  }

  else
  {
    v224 = v205;
  }

  v216 = &unk_1F50D86E0;
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v217, v198.__r_.__value_.__l.__data_, v198.__r_.__value_.__l.__size_);
  }

  else
  {
    v217 = v198;
  }

  v218 = v199;
  v216 = &unk_1F50D8978;
  v219 = v200;
  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v235, v221.__r_.__value_.__l.__data_, v221.__r_.__value_.__l.__size_);
  }

  else
  {
    v235 = v221;
  }

  v236 = v222;
  v234 = &unk_1F50D89B8;
  v237 = v223;
  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v238, v224.__r_.__value_.__l.__data_, v224.__r_.__value_.__l.__size_);
  }

  else
  {
    v238 = v224;
  }

  v230 = &unk_1F50D86E0;
  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v231, v217.__r_.__value_.__l.__data_, v217.__r_.__value_.__l.__size_);
  }

  else
  {
    v231 = v217;
  }

  v3 = v218;
  v232 = v218;
  v230 = &unk_1F50D8978;
  v4 = v219;
  v233 = v219;
  v239 = &unk_1F50D86E0;
  if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v240, v231.__r_.__value_.__l.__data_, v231.__r_.__value_.__l.__size_);
    v3 = v232;
    v4 = v233;
  }

  else
  {
    v240 = v231;
  }

  v241 = v3;
  v239 = &unk_1F50D8978;
  v242 = v4;
  *(this + 10) = &unk_1F50D86E0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), v240.__r_.__value_.__l.__data_, v240.__r_.__value_.__l.__size_);
    v5 = v242;
    v6 = SHIBYTE(v240.__r_.__value_.__r.__words[2]);
    *(this + 28) = v241;
    *(this + 10) = &unk_1F50D8978;
    *(this + 116) = v5;
    v239 = &unk_1F50D86E0;
    if (v6 < 0)
    {
      operator delete(v240.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(this + 88) = v240;
    *(this + 28) = v3;
    *(this + 10) = &unk_1F50D8978;
    *(this + 116) = v4;
    v239 = &unk_1F50D86E0;
  }

  *(this + 16) = &unk_1F50D86E0;
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 136), v235.__r_.__value_.__l.__data_, v235.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 136) = v235;
  }

  *(this + 40) = v236;
  *(this + 16) = &unk_1F50D89B8;
  *(this + 164) = v237;
  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, v238.__r_.__value_.__l.__data_, v238.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 7) = v238;
  }

  v230 = &unk_1F50D86E0;
  if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v231.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v234);
  *(this + 24) = &unk_1F50D86E0;
  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 200), v226.__r_.__value_.__l.__data_, v226.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 200) = v226;
  }

  *(this + 56) = v227;
  *(this + 24) = &unk_1F50D89B8;
  *(this + 228) = v228;
  if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 232), v229.__r_.__value_.__l.__data_, v229.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 232) = v229;
  }

  v216 = &unk_1F50D86E0;
  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v217.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v220);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v225);
  *(this + 32) = &unk_1F50D86E0;
  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 11, v212.__r_.__value_.__l.__data_, v212.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 11) = v212;
  }

  *(this + 72) = v213;
  *(this + 32) = &unk_1F50D89B8;
  *(this + 292) = v214;
  v7 = (this + 296);
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v7, v215.__r_.__value_.__l.__data_, v215.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *&v215.__r_.__value_.__l.__data_;
    *(this + 39) = *(&v215.__r_.__value_.__l + 2);
  }

  v197 = &unk_1F50D86E0;
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v198.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v201);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v206);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v211);
  *(this + 40) = &unk_1F50D86E0;
  if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 328), v193.__r_.__value_.__l.__data_, v193.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 328) = v193;
  }

  *(this + 88) = v194;
  *(this + 40) = &unk_1F50D89B8;
  *(this + 356) = v195;
  v8 = (this + 360);
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, v196.__r_.__value_.__l.__data_, v196.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *&v196.__r_.__value_.__l.__data_;
    *(this + 47) = *(&v196.__r_.__value_.__l + 2);
  }

  v173 = &unk_1F50D86E0;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v174.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v177);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v182);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v187);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v192);
  *(this + 48) = &unk_1F50D86E0;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 392), v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 392) = v169;
  }

  *(this + 104) = v170;
  *(this + 48) = &unk_1F50D89B8;
  *(this + 420) = v171;
  v9 = (this + 424);
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v9, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *&v172.__r_.__value_.__l.__data_;
    *(this + 55) = *(&v172.__r_.__value_.__l + 2);
  }

  v144 = &unk_1F50D86E0;
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v148);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v153);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v158);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v163);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v168);
  *(this + 56) = &unk_1F50D86E0;
  v10 = (this + 456);
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v10, v140.__r_.__value_.__l.__data_, v140.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v10->__r_.__value_.__l.__data_ = *&v140.__r_.__value_.__l.__data_;
    *(this + 59) = *(&v140.__r_.__value_.__l + 2);
  }

  *(this + 120) = v141;
  *(this + 56) = &unk_1F50D8958;
  *(this + 484) = v142;
  *(this + 123) = v143;
  v110 = &unk_1F50D86E0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v114);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v119);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v124);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v129);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v134);
  v139 = &unk_1F50D86E0;
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
  }

  v76 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v80);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v85);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v90);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v95);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v100);
  v105 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  *this = &unk_1F50D8360;
  *(this + 62) = &unk_1F50D86E0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 21, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 21) = v71;
  }

  *(this + 132) = v72;
  *(this + 532) = *v73;
  *(this + 135) = *&v73[8];
  *(this + 62) = &unk_1F50D7AC0;
  *(this + 68) = &unk_1F50D86E0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 23, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 23) = v65;
  }

  *(this + 144) = v66;
  *(this + 68) = &unk_1F50D89B8;
  *(this + 580) = v67;
  v11 = (this + 584);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v11, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *&v68.__r_.__value_.__l.__data_;
    *(this + 75) = *(&v68.__r_.__value_.__l + 2);
  }

  *(this + 68) = &unk_1F50D7B20;
  *(this + 76) = &unk_1F50D86E0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 616), v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 616) = v56;
  }

  *(this + 160) = v57;
  *(this + 76) = &unk_1F50D89B8;
  *(this + 644) = v58;
  v12 = (this + 648);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v12, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v12->__r_.__value_.__l.__data_ = *&v59.__r_.__value_.__l.__data_;
    *(this + 83) = *(&v59.__r_.__value_.__l + 2);
  }

  *(this + 76) = &unk_1F50D7B20;
  *(this + 84) = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 680), v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 680) = v47;
  }

  *(this + 176) = v48;
  *(this + 84) = &unk_1F50D89B8;
  *(this + 708) = v49;
  v13 = (this + 712);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v13, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v13->__r_.__value_.__l.__data_ = *&v50.__r_.__value_.__l.__data_;
    *(this + 91) = *(&v50.__r_.__value_.__l + 2);
  }

  *(this + 84) = &unk_1F50D7B20;
  *(this + 92) = &unk_1F50D86E0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 31, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 31) = v38;
  }

  *(this + 192) = v39;
  *(this + 92) = &unk_1F50D89B8;
  *(this + 772) = v40;
  v14 = (this + 776);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v14, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v14->__r_.__value_.__l.__data_ = *&v41.__r_.__value_.__l.__data_;
    *(this + 99) = *(&v41.__r_.__value_.__l + 2);
  }

  *(this + 92) = &unk_1F50D7B20;
  *(this + 100) = &unk_1F50D86E0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 808), v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 808) = v29;
  }

  *(this + 208) = v30;
  *(this + 100) = &unk_1F50D89B8;
  *(this + 836) = v31;
  v15 = (this + 840);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v15, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v15->__r_.__value_.__l.__data_ = *&v32.__r_.__value_.__l.__data_;
    *(this + 107) = *(&v32.__r_.__value_.__l + 2);
  }

  *(this + 100) = &unk_1F50D7B20;
  *(this + 108) = &unk_1F50D86E0;
  v16 = (this + 872);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v17 = 0;
    *&v16->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(this + 111) = *(&__p.__r_.__value_.__l + 2);
  }

  *(this + 224) = v22;
  *(this + 900) = v23;
  *(this + 108) = &unk_1F50D7AE0;
  v20 = &unk_1F50D86E0;
  if (v17)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v28);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v37);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v46);
  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v55);
  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v64);
  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  v70 = &unk_1F50D86E0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(v74[0]);
  }

  *this = &unk_1F50D7A30;
  return this;
}