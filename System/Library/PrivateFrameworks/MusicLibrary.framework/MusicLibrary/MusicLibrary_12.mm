void sub_22D532C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  _Block_object_dispose(&a30, 8);
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  _Unwind_Resume(a1);
}

BOOL std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<ML3ArtistData>>>(void *a1, void *a2)
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

  result = std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_22D533298(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::shared_ptr<ML3ArtistData>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<ML3AlbumArtistImportItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284089850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t ML3ArtistData::ML3ArtistData(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 *a14, char a15, int a16, uint64_t a17)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v22 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v22;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a4, *(a4 + 1));
  }

  else
  {
    v23 = *a4;
    *(a1 + 48) = *(a4 + 2);
    *(a1 + 32) = v23;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a5, *(a5 + 1));
  }

  else
  {
    v24 = *a5;
    *(a1 + 72) = *(a5 + 2);
    *(a1 + 56) = v24;
  }

  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a6, *(a6 + 1));
  }

  else
  {
    v25 = *a6;
    *(a1 + 96) = *(a6 + 2);
    *(a1 + 80) = v25;
  }

  *(a1 + 104) = a7;
  *(a1 + 112) = a9;
  *(a1 + 120) = a10;
  *(a1 + 128) = a11;
  *(a1 + 136) = a12;
  *(a1 + 144) = a13;
  if (*(a14 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 152), *a14, *(a14 + 1));
  }

  else
  {
    v26 = *a14;
    *(a1 + 168) = *(a14 + 2);
    *(a1 + 152) = v26;
  }

  *(a1 + 176) = a15;
  *(a1 + 180) = a16;
  *(a1 + 184) = a17;
  return a1;
}

void sub_22D5335A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<ML3ArtistData>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
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
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<ML3ArtistData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2840897B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<ML3ArtistData>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZN16ML3ImportSession34_shouldPreserveAlbumArtistPropertyExj_block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 stringForColumnIndex:0];
  v4 = [v8 int64ForColumnIndex:1];
  v5 = [v8 int64ForColumnIndex:2];
  **(*(*(a1 + 32) + 8) + 24) = *(a1 + 40);
  v6 = [v3 length];
  if (v6)
  {
    v6 = [v3 hash];
  }

  *(*(*(*(a1 + 32) + 8) + 24) + 16) = v6;
  *(*(*(*(a1 + 32) + 8) + 24) + 24) = v4;
  if (MSVDeviceIsWatch())
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(*(a1 + 32) + 8) + 24) + 8) = v7;
  *(*(*(*(a1 + 32) + 8) + 24) + 40) = v5;
  *(*(*(*(a1 + 32) + 8) + 24) + 32) = v5;
  *(*(*(*(a1 + 32) + 8) + 24) + 48) = v5;
}

void ___ZN16ML3ImportSession53_getAlbumArtistImportItemForGroupingIdentifierAndPIDsEP6NSDataNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEExxRb_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 48);
  memset(v21, 0, sizeof(v21));
  ML3DatabaseRowGetHomogeneousColumns<std::string>(v3, v21, 2uLL);
  if (SHIBYTE(v21[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v21[0].__r_.__value_.__l.__data_, v21[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v21[0];
  }

  if (SHIBYTE(v21[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v21[1].__r_.__value_.__l.__data_, v21[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v21[1];
  }

  v18 = [v3 int64ForColumnIndex:2];
  v17 = [v3 int64ForColumnIndex:3];
  v5 = [v3 objectAtIndexedSubscript:4];
  if (v5)
  {
    v6 = *(v4 + 3);
    v7 = [v3 objectAtIndexedSubscript:4];
    v8 = [v6 objectForKeyedSubscript:v7];
    *&v16 = [v8 ML3NameOrderValue];
    *(&v16 + 1) = v9;

    v10 = v16 == 0;
  }

  else
  {
    v16 = xmmword_22D5C6B00;
    v10 = 1;
  }

  v11 = [v3 objectAtIndexedSubscript:3];
  v12 = v11 != 0;

  if (v12 && v10)
  {
    v13 = [v3 objectAtIndexedSubscript:4];
    *&v16 = ML3ImportSession::_getNameOrderForString(v4, v13);
    *(&v16 + 1) = v14;
  }

  v15[3] = [v3 int64ForColumnIndex:5];
  std::string::basic_string[abi:ne200100]<0>(v15, [v3 cStringForColumnIndex:6]);
  [v3 intForColumnIndex:7];
  [v3 intForColumnIndex:8];
  [v3 int64ForColumnIndex:9];
  [v3 int64ForColumnIndex:10];
  [v3 int64ForColumnIndex:11];
  [v3 intForColumnIndex:12];
  [v3 dataForColumnIndex:13];
  objc_claimAutoreleasedReturnValue();
  std::allocate_shared[abi:ne200100]<ML3ArtistData,std::allocator<ML3ArtistData>,long long &,std::string &,std::string &,std::string,std::string,long long &,ML3NameOrder &,ML3NameOrder &,long long &,std::string &,BOOL &,int &,long long &,0>();
}

void sub_22D533E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (*(v41 - 185) < 0)
  {
    operator delete(*(v41 - 208));
  }

  if (*(v41 - 153) < 0)
  {
    operator delete(*(v41 - 176));
  }

  v43 = 0;
  v44 = v41 - 144;
  while (1)
  {
    if (*(v44 + v43 + 47) < 0)
    {
      operator delete(*(v44 + v43 + 24));
    }

    v43 -= 24;
    if (v43 == -48)
    {

      _Unwind_Resume(a1);
    }
  }
}

void sub_22D5341BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (*(v37 - 121) < 0)
  {
    operator delete(*(v37 - 144));
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  std::__shared_weak_count::~__shared_weak_count(v36);
  operator delete(v39);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ArtistData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ArtistData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ArtistData>>>>::__emplace_unique_key_args<long long,std::pair<long long const,std::shared_ptr<ML3ArtistData>>>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
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
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
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

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void __destroy_helper_block_ea8_120c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE136c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_120c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE136c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE(void *result, void *a2)
{
  v2 = a2[16];
  result[15] = a2[15];
  result[16] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[18];
  result[17] = a2[17];
  result[18] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::shared_ptr<ML3ArtistData>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t ML3ImportSession::updateAlbumArtist(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v48 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 1584) count])
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 1544) != *(a1 + 1536);
  }

  v9 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v35;
    (*(**a2 + 88))(v35);
    if (v36 < 0)
    {
      v10 = v35[0];
    }

    if (*a3)
    {
      (*(**a3 + 88))(__p);
      if (v40 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = *__p;
      }

      *buf = 136446978;
      *&buf[4] = v10;
      v42 = 2082;
      v43 = v11;
      v44 = 1024;
      v45 = a4;
      v46 = 1024;
      v47 = v8;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "updating albumArtist=%{public}s with track=%{public}s ignoreNonExistingAlbumArtist=%{BOOL}u, havePendingTrackModifications=%{BOOL}u", buf, 0x22u);
      if (v40 < 0)
      {
        operator delete(*__p);
      }
    }

    else
    {
      *buf = 136446978;
      *&buf[4] = v10;
      v42 = 2082;
      v43 = "";
      v44 = 1024;
      v45 = a4;
      v46 = 1024;
      v47 = v8;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "updating albumArtist=%{public}s with track=%{public}s ignoreNonExistingAlbumArtist=%{BOOL}u, havePendingTrackModifications=%{BOOL}u", buf, 0x22u);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }
  }

  if (v8 && !ML3ImportSession::flush(a1, 1))
  {
    return 0;
  }

  if (!*a3)
  {
    goto LABEL_26;
  }

  v12 = a3[1];
  v34[0] = *a3;
  v34[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = ML3ImportSession::_prepareTrackForImport(a1, v34, a4, 1);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (!v13)
  {
LABEL_26:
    v14 = *a2;
    v15 = a2[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = ML3ImportSession::_getGroupingKeyForAlbumArtistImportItem(a1, v14);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (*a3)
    {
      v17 = *(*a3 + 8);
    }

    else
    {
      v17 = 0;
    }

    v18 = a2[1];
    v33[0] = *a2;
    v33[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AlbumArtistPersistentID = ML3ImportSession::_getAlbumArtistPersistentID(a1, v33, v16);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    v20 = *a3;
    if (*a3 && a4 && !*(v20 + 8))
    {
      v28 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_DEFAULT, "Ignoring album artist update as the track does not exist", buf, 2u);
      }
    }

    else
    {
      v21 = os_log_create("com.apple.amp.medialibrary", "Import");
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v20 || !a4 || AlbumArtistPersistentID)
      {
        if (v22)
        {
          *buf = 134218240;
          *&buf[4] = v17;
          v42 = 2048;
          v43 = AlbumArtistPersistentID;
          _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "updating albumArtist with trackPID=%lld, albumArtistPID=%lld", buf, 0x16u);
        }

        if (*a3)
        {
          v23 = a3[1];
          v32[0] = *a3;
          v32[1] = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
          }

          ML3ImportSession::_prepareTrackSortData(a1, v32);
        }

        v29 = a2[1];
        v31[0] = *a2;
        v31[1] = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
        }

        ML3ImportSession::_prepareAlbumArtistSortData(a1, v31);
      }

      if (v22)
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "Ignoring album artist update as the artist does not exist", buf, 2u);
      }
    }

    a4 = 1;
    goto LABEL_69;
  }

  if (v13 != 1)
  {
    v16 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      (*(**a2 + 88))(buf);
      v24 = SHIBYTE(v44);
      v25 = *buf;
      (*(**a3 + 88))(v35);
      v26 = buf;
      if (v24 < 0)
      {
        v26 = v25;
      }

      if (v36 >= 0)
      {
        v27 = v35;
      }

      else
      {
        v27 = v35[0];
      }

      *__p = 136446466;
      *&__p[4] = v26;
      v38 = 2082;
      v39 = v27;
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Error updating albumArtist=%{public}s. Could not prepare track data for import=%{public}s", __p, 0x16u);
      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_69:

    return a4;
  }

  return 0;
}

void sub_22D534DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ImportSession::removeAlbumArtist(uint64_t a1, uint64_t *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (MSVDeviceIsWatch())
  {
    v5 = *(a1 + 32) == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v4 != 2 && !v5)
  {
    *(a1 + 1530) = 1;
    v6 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      (*(**a2 + 88))(__p);
      if (v22 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = *__p;
      }

      v8 = *(a1 + 32);
      *buf = 136446466;
      v24 = v7;
      v25 = 1024;
      v26 = v8;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "not removing album artist=%{public}s as it's not supported for source=%d", buf, 0x12u);
      if (v22 < 0)
      {
        operator delete(*__p);
      }
    }

    return 1;
  }

  v10 = a2[1];
  v17 = *a2;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AlbumArtistPersistentID = ML3ImportSession::_getAlbumArtistPersistentID(a1, &v17, 0);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (AlbumArtistPersistentID)
  {
    v12 = *(a1 + 2088);
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{AlbumArtistPersistentID, v17, v18}];
    [v12 addObject:v13];

    ++*(a1 + 240);
    v14 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 2088) count];
      *__p = 134218240;
      *&__p[4] = AlbumArtistPersistentID;
      v20 = 2048;
      v21 = v15;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "removing albumArtistPID=%lld, _deletedAlbumArtists count=%ld", __p, 0x16u);
    }
  }

  else
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      (*(**a2 + 88))(__p);
      v16 = v22 >= 0 ? __p : *__p;
      *buf = 136446210;
      v24 = v16;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "not removing albumArtist=%{public}s", buf, 0xCu);
      if (v22 < 0)
      {
        operator delete(*__p);
      }
    }
  }

  if ([*(a1 + 2088) count] <= 0x3E7 && !*(a1 + 2072))
  {
    return 1;
  }

  return ML3ImportSession::flush(a1, 1);
}

BOOL ML3ImportSession::addItemArtist(uint64_t a1, void *a2, void *a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    (*(**a2 + 88))(v69);
    v7 = SHIBYTE(v72);
    v8 = *v69;
    (*(**a3 + 88))(__p);
    v9 = v69;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if ((SBYTE7(v62) & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136446466;
    v66 = v9;
    v67 = 2082;
    v68 = v10;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "adding itemArtist=%{public}s with track=%{public}s", buf, 0x16u);
    if (SBYTE7(v62) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v72) < 0)
    {
      operator delete(*v69);
    }
  }

  v11 = a3[1];
  v60[0] = *a3;
  v60[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = ML3ImportSession::_prepareTrackForImport(a1, v60, 0, 0);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v12)
  {
    v13 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      (*(**a2 + 88))(v69);
      v14 = SHIBYTE(v72);
      v15 = *v69;
      (*(**a3 + 88))(__p);
      v16 = v69;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if ((SBYTE7(v62) & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      *buf = 136446466;
      v66 = v16;
      v67 = 2082;
      v68 = v17;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "Error adding item artist=%{public}s. Could not prepare track data for import=%{public}s", buf, 0x16u);
      if (SBYTE7(v62) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v72) < 0)
      {
        operator delete(*v69);
      }
    }

    goto LABEL_95;
  }

  v18 = a2[1];
  v58 = *a2;
  v59 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = ML3ImportSession::_getGroupingKeyForItemArtistImportItem(a1, &v58);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  v54 = v19;
  v20 = (*(**a2 + 32))(*a2, 167772176);
  v21 = *a3;
  v51 = v20;
  if (!*a3)
  {
    v50 = 0;
LABEL_35:
    v24 = *a2;
    v23 = a2[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v53 = v19;
    if (*(a1 + 264) <= 0x3E7u)
    {
      v25 = *(a1 + 1520);
    }

    else
    {
      v25 = 1;
    }

    v52 = v23;
    v26 = *(a1 + 32);
    v27 = ML3ItemArtistRulesIdentityImportPropertyForSource(v26);
    if (!v27)
    {
      goto LABEL_60;
    }

    v28 = (*(*v24 + 32))(v24, v27);
    if (!v28)
    {
      goto LABEL_60;
    }

    if ((v25 & 1) != 0 && (*(a1 + 1525) & 1) == 0)
    {
      ML3ImportSession::_populateExistingArtistIdentifiersForSource(a1, *(a1 + 32));
    }

    v29 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a1 + 1648), v28);
    if (!v29)
    {
      goto LABEL_60;
    }

    v22 = v29[3];
    v30 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v69 = 134218240;
      *&v69[4] = v22;
      v70 = 1024;
      LODWORD(v71) = v27;
      _os_log_impl(&dword_22D2FA000, v30, OS_LOG_TYPE_DEFAULT, "matched to cached item artist pid %lld based on identity property %d", v69, 0x12u);
    }

    if (!v22)
    {
LABEL_60:
      if (!v53 || v26 - 3 > 0xFFFFFFFD)
      {
        goto LABEL_61;
      }

      ML3CPPStringFromData(v69, v53);
      v31 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a1 + 1096), v69);
      if (SHIBYTE(v72) < 0)
      {
        operator delete(*v69);
      }

      if (!v31)
      {
        goto LABEL_61;
      }

      v32 = v31[5];
      v33 = v31[6];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = *v32;
      v34 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *v69 = 134217984;
        *&v69[4] = v22;
        _os_log_impl(&dword_22D2FA000, v34, OS_LOG_TYPE_DEFAULT, "matched to cached item artist pid %lld based on grouping key", v69, 0xCu);
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (!v22)
      {
LABEL_61:
        v35 = (*(*v24 + 112))(v24);
        v49 = v35;
        if (v35)
        {
          v63 = 0u;
          v64 = 0u;
          *__p = 0u;
          v62 = 0u;
          v36 = v35;
          v37 = [v36 countByEnumeratingWithState:__p objects:v69 count:16];
          if (v37)
          {
            v38 = *v62;
            while (2)
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v62 != v38)
                {
                  objc_enumerationMutation(v36);
                }

                v40 = [(ML3Entity *)ML3Artist unrestrictedAllItemsQueryWithlibrary:*(a1 + 8) predicate:*(__p[1] + i) orderingTerms:0];
                v22 = [v40 anyEntityPersistentID];
                if (v22)
                {
                  v41 = os_log_create("com.apple.amp.medialibrary", "Import");
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218242;
                    v66 = v22;
                    v67 = 2114;
                    v68 = v40;
                    _os_log_impl(&dword_22D2FA000, v41, OS_LOG_TYPE_DEFAULT, "matched to item artist pid %lld using query %{public}@", buf, 0x16u);
                  }

                  goto LABEL_74;
                }
              }

              v37 = [v36 countByEnumeratingWithState:__p objects:v69 count:16];
              if (v37)
              {
                continue;
              }

              break;
            }
          }

          v22 = 0;
LABEL_74:
        }

        else
        {
          v22 = 0;
        }
      }
    }

    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    if (v22)
    {
      v42 = *a2;
      *(v42 + 16) = 1;
      *(v42 + 8) = v22;
    }

    goto LABEL_81;
  }

  v50 = *(v21 + 8);
  if (*(v21 + 16) != 1 || (*(v21 + 17) & 1) != 0)
  {
    goto LABEL_35;
  }

  v22 = 0;
LABEL_81:
  v43 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *v69 = 134218496;
    *&v69[4] = v22;
    v70 = 2048;
    v71 = v51;
    v72 = 2048;
    v73 = v50;
    _os_log_impl(&dword_22D2FA000, v43, OS_LOG_TYPE_DEFAULT, "importing itemArtistPID=%lld, syncID=%lld, trackPersistentID=%lld", v69, 0x20u);
  }

  v44 = a2[1];
  v57[0] = *a2;
  v57[1] = v44;
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v45 = *a3;
  v46 = a3[1];
  v56[0] = v45;
  v56[1] = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ML3ImportSession::_addItemArtist(a1, v57, v54, v56);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v47 = a2[1];
  v55[0] = *a2;
  v55[1] = v47;
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v54;
  ML3ImportSession::_addItemArtistDataToSourceMaps(a1, v55);
  v12 = 0;
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

LABEL_95:

  return v12 == 0;
}

void sub_22D535A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

id ML3ImportSession::_getGroupingKeyForItemArtistImportItem(uint64_t a1, void *a2)
{
  (*(**a2 + 24))(&v11[24]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    *&v11[24] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = __p;
  }

  (*(**a2 + 24))(&v11[24]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    *&v11[24] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v11 = __p;
  }

  v4 = (*(**a2 + 32))(*a2, 16777217);
  v5 = *(a1 + 8);
  v6 = ML3CPPBridgeString(&v13, 0);
  v7 = MLMediaTypeByStandardizingMediaType(v4);
  if ((v7 & 8) != 0)
  {
    v8 = &stru_28408B690;
  }

  else
  {
    v8 = ML3CPPBridgeString(v11, 0);
  }

  v9 = [v5 artistGroupingKeyForArtistName:v6 seriesName:{v8, *v11, *&v11[16]}];
  if ((v7 & 8) == 0)
  {
  }

  if ((v11[23] & 0x80000000) != 0)
  {
    operator delete(*v11);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_22D535D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void ML3ImportSession::_addItemArtist(uint64_t a1, void *a2, void *a3, void *a4)
{
  v290 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = *a2;
  v270 = *(*a2 + 8);
  v9 = *(*a4 + 8);
  v269 = v9;
  v261 = 0;
  v262 = &v261;
  v263 = 0x4012000000;
  v264 = __Block_byref_object_copy__597;
  v265 = __Block_byref_object_dispose__598;
  v266 = "";
  v268 = 0;
  v267 = 0;
  v254 = 0;
  v255 = &v254;
  v256 = 0x4812000000;
  v257 = __Block_byref_object_copy__415;
  v258 = __Block_byref_object_dispose__416;
  v259 = "";
  (*(*v8 + 24))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v260, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v260 = *&buf[16];
  }

  v247 = 0;
  v248 = &v247;
  v249 = 0x4812000000;
  v250 = __Block_byref_object_copy__415;
  v251 = __Block_byref_object_dispose__416;
  v252 = "";
  (*(**a2 + 168))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v253, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v253 = *&buf[16];
  }

  v240 = 0;
  v241 = &v240;
  v242 = 0x4812000000;
  v243 = __Block_byref_object_copy__415;
  v244 = __Block_byref_object_dispose__416;
  v245 = "";
  (*(**a2 + 24))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v246, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v246 = *&buf[16];
  }

  v233 = 0;
  v234 = &v233;
  v235 = 0x4812000000;
  v236 = __Block_byref_object_copy__415;
  v237 = __Block_byref_object_dispose__416;
  v238 = "";
  (*(**a2 + 176))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__p, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    __p = *&buf[16];
  }

  v229 = 0;
  v230 = &v229;
  v231 = 0x2020000000;
  v232 = (*(**a2 + 32))(*a2, 167772176);
  v225 = 0;
  v226 = &v225;
  v227 = 0x2020000000;
  v228 = (*(**a2 + 32))(*a2, 318767111);
  v219 = 0;
  v220 = &v219;
  v221 = 0x3032000000;
  v222 = __Block_byref_object_copy__413;
  v223 = __Block_byref_object_dispose__414;
  v193 = v7;
  v224 = v193;
  v215 = 0;
  v216 = &v215;
  v217 = 0x2020000000;
  v218 = (*(**a2 + 32))(*a2, 318767118) != 0;
  v10 = (*(**a4 + 32))(*a4, 16777217);
  v11 = (MLMediaTypeByStandardizingMediaType(v10) & 8) == 0;
  v194 = a1;
  if (*(*a4 + 16) == 1)
  {
    v12 = *(a1 + 16);
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
    v282 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v282 count:1];
    v15 = [v12 executeQuery:@"SELECT item_artist_pid FROM item WHERE ROWID = ?" withParameters:v14];

    v16 = [v15 int64ValueForFirstRowAndColumn];
    v17 = a4[1];
    v214[0] = *a4;
    v214[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(v194, v214, 0x1000004u);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v16)
    {
      v19 = 0;
    }

    else
    {
      v19 = shouldPreserveTrackProperty;
    }

    if (v19 == 1)
    {
      v20 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v20, OS_LOG_TYPE_DEFAULT, "Not updating/creating item artist as pid=0 AND persistentID is preserved by a higher source", buf, 2u);
      }

      ML3ImportSession::_getDefaultEmptyArtist(&v212);
      v21 = v213;
      ML3ImportSession::_setArtistInfoForTrackPersistentID(v194, v9, v212, v213);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      goto LABEL_354;
    }

    if ((*(*a4 + 17) & 1) == 0)
    {
      v22 = *a2;
      *(v22 + 8) = v16;
      *(v22 + 16) = 1;
      v23 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(*a4 + 8);
        *buf = 134218240;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = v24;
        _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_DEFAULT, "Setting itemArtistPID=%lld for trackPID=%lld", buf, 0x16u);
      }

      if (v16)
      {
        v25 = *(v194 + 16);
        v190 = [MEMORY[0x277CCABB0] numberWithLongLong:v16];
        v281 = v190;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v281 count:1];
        v27 = [v25 executeQuery:@"SELECT item_artist withParameters:{sort_item_artist, series_name, sort_series_name, representative_item_pid, store_id, grouping_key, sync_id, classical_experience_available FROM item_artist WHERE item_artist_pid=?", v26}];
        v28 = v27;
        v204[0] = MEMORY[0x277D85DD0];
        v204[1] = 3321888768;
        v204[2] = ___ZN16ML3ImportSession14_addItemArtistENSt3__110shared_ptrI13ML3ImportItemEEP6NSDataS3__block_invoke;
        v204[3] = &unk_2840886C8;
        v30 = *a2;
        v29 = a2[1];
        v204[13] = v194;
        v204[14] = v30;
        v205 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v204[4] = &v254;
        v204[5] = &v247;
        v204[6] = &v240;
        v204[7] = &v233;
        v204[8] = &v215;
        v204[9] = &v225;
        v204[10] = &v229;
        v204[11] = &v219;
        v211 = v11;
        v210 = 16777220;
        v31 = a4[1];
        v206 = *a4;
        v207 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v208 = v16;
        v209 = v9;
        v204[12] = &v261;
        [v27 enumerateRowsWithBlock:v204];

        if (v207)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v207);
        }

        if (v205)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v205);
        }
      }

      else
      {
        v32 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v9;
          _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_ERROR, "itemArtist for trackPersistentID=%lld does not exist", buf, 0xCu);
        }
      }
    }
  }

  if (v262[6])
  {
    v33 = v230;
  }

  else
  {
    v34 = [v220[5] length];
    v33 = v230;
    if (!v34 && !v230[3] && !*(*a2 + 8))
    {
      v55 = _ML3LogCategoryImport();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        (*(**a2 + 88))(buf);
        v56 = buf[23] >= 0 ? buf : *buf;
        LODWORD(v284.__r_.__value_.__l.__data_) = 136446210;
        *(v284.__r_.__value_.__r.__words + 4) = v56;
        _os_log_impl(&dword_22D2FA000, v55, OS_LOG_TYPE_ERROR, "Item artist=%{public}s has an empty grouping key and no syncID/PID. Creating a default item artist import item", &v284, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      ML3ImportSession::_getDefaultEmptyArtist(&v202);
      v57 = v203;
      ML3ImportSession::_setArtistInfoForTrackPersistentID(v194, v9, v202, v203);
      goto LABEL_231;
    }
  }

  v35 = *(*a2 + 8);
  v36 = v33[3];
  v37 = v220[5];
  if ([v37 length] | v35 | v36)
  {
    v284.__r_.__value_.__r.__words[0] = 0;
    v284.__r_.__value_.__l.__size_ = &v284;
    v284.__r_.__value_.__r.__words[2] = 0x4012000000;
    v285 = __Block_byref_object_copy__597;
    v286 = __Block_byref_object_dispose__598;
    v287 = "";
    v288 = 0;
    v289 = 0;
    if (v35)
    {
      v38 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((v194 + 1848), v35);
      if (v38)
      {
        v40 = v38[3];
        v39 = v38[4];
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          v41 = v289;
          v288 = v40;
          v289 = v39;
          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }
        }

        else
        {
          v288 = v38[3];
          v289 = 0;
        }

        v51 = *(v284.__r_.__value_.__l.__size_ + 48);
        v191 = v51;
        if (*(&v51 + 1))
        {
LABEL_68:
          v43 = 1;
          atomic_fetch_add_explicit((*(&v51 + 1) + 8), 1uLL, memory_order_relaxed);
          goto LABEL_110;
        }

LABEL_102:
        v43 = 1;
LABEL_110:
        _Block_object_dispose(&v284, 8);
        if (v289)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v289);
        }

        goto LABEL_112;
      }

      v48 = [@"SELECT item_artist sort:series_name item:{sort_series_name, rowid, store_id, IFNULL(sort_item_artist, ML3SortString(item_artist)), IFNULL(IFNULL(sort_series_name, ML3SortString(series_name)), IFNULL(sort_item_artist, ML3SortString(item_artist))), sync_id, classical_experience_available, representative_item_pid, grouping_key FROM item_artist WHERE ", "stringByAppendingString:", @"(ROWID=?)"}artist];
      v49 = [MEMORY[0x277CCABB0] numberWithLongLong:v35];
      v283.__r_.__value_.__r.__words[0] = v49;
      v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v283 count:1];
      goto LABEL_106;
    }

    if (v36)
    {
      v44 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((v194 + 976), v36);
      if (!v44)
      {
LABEL_99:
        if (v37 && v36)
        {
          v48 = [@"SELECT item_artist sort:series_name item:{sort_series_name, rowid, store_id, IFNULL(sort_item_artist, ML3SortString(item_artist)), IFNULL(IFNULL(sort_series_name, ML3SortString(series_name)), IFNULL(sort_item_artist, ML3SortString(item_artist))), sync_id, classical_experience_available, representative_item_pid, grouping_key FROM item_artist WHERE ", "stringByAppendingString:", @"(ROWID=? OR sync_id=?) OR grouping_key=?"}artist];
          v49 = [MEMORY[0x277CCABB0] numberWithLongLong:v36];
          v283.__r_.__value_.__r.__words[0] = v49;
          v65 = [MEMORY[0x277CCABB0] numberWithLongLong:v36];
          v283.__r_.__value_.__l.__size_ = v65;
          v283.__r_.__value_.__r.__words[2] = v37;
          v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v283 count:3];
LABEL_105:
          v50 = v66;

LABEL_106:
LABEL_107:
          v67 = [*(v194 + 16) executeQuery:v48 withParameters:v50];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZN16ML3ImportSession41_getArtistImportItemForGroupingKeyAndPIDsEP6NSDataxxRb_block_invoke;
          *&buf[24] = &unk_278765278;
          *&buf[48] = v194;
          *&buf[40] = &v284;
          *&buf[32] = v37;
          *&buf[56] = v35;
          v272 = v36;
          [v67 enumerateRowsWithBlock:buf];
          v68 = *(v284.__r_.__value_.__l.__size_ + 48);
          v191 = v68;
          if (*(&v68 + 1))
          {
            atomic_fetch_add_explicit((*(&v68 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v43 = 0;
          goto LABEL_110;
        }

        if (v36)
        {
          v48 = [@"SELECT item_artist sort:series_name item:{sort_series_name, rowid, store_id, IFNULL(sort_item_artist, ML3SortString(item_artist)), IFNULL(IFNULL(sort_series_name, ML3SortString(series_name)), IFNULL(sort_item_artist, ML3SortString(item_artist))), sync_id, classical_experience_available, representative_item_pid, grouping_key FROM item_artist WHERE ", "stringByAppendingString:", @"(ROWID=? OR sync_id=?)"}artist];
          v49 = [MEMORY[0x277CCABB0] numberWithLongLong:v36];
          v283.__r_.__value_.__r.__words[0] = v49;
          v65 = [MEMORY[0x277CCABB0] numberWithLongLong:v36];
          v283.__r_.__value_.__l.__size_ = v65;
          v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v283 count:2];
          goto LABEL_105;
        }

LABEL_322:
        if (v37)
        {
          v48 = [@"SELECT item_artist sort:series_name item:{sort_series_name, rowid, store_id, IFNULL(sort_item_artist, ML3SortString(item_artist)), IFNULL(IFNULL(sort_series_name, ML3SortString(series_name)), IFNULL(sort_item_artist, ML3SortString(item_artist))), sync_id, classical_experience_available, representative_item_pid, grouping_key FROM item_artist WHERE ", "stringByAppendingString:", @"grouping_key=?"}artist];
          v283.__r_.__value_.__r.__words[0] = v37;
          v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v283 count:1];
        }

        else
        {
          v50 = 0;
          v48 = @"SELECT item_artist, sort_item_artist, series_name, sort_series_name, rowid, store_id, IFNULL(sort_item_artist, ML3SortString(item_artist)), IFNULL(IFNULL(sort_series_name, ML3SortString(series_name)), IFNULL(sort_item_artist, ML3SortString(item_artist))), sync_id, classical_experience_available, representative_item_pid, grouping_key FROM item_artist WHERE ";
        }

        goto LABEL_107;
      }

      v46 = v44[3];
      v45 = v44[4];
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        v47 = *v46;
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      else
      {
        v47 = *v46;
      }
    }

    else
    {
      if (![v37 length])
      {
        goto LABEL_322;
      }

      ML3CPPStringFromData(buf, v37);
      v52 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((v194 + 1096), buf);
      if (v52)
      {
        v54 = v52[5];
        v53 = v52[6];
        if (v53)
        {
          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          v47 = *v54;
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        else
        {
          v47 = *v54;
        }
      }

      else
      {
        v47 = 0;
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (v47)
    {
      v58 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((v194 + 1848), v47);
      if (v58)
      {
        size = v284.__r_.__value_.__l.__size_;
        v61 = v58[3];
        v60 = v58[4];
        if (v60)
        {
          atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
        }

        v62 = *(size + 56);
        *(size + 48) = v61;
        *(size + 56) = v60;
        if (v62)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        }

        v63 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          (*(**(v284.__r_.__value_.__l.__size_ + 48) + 88))(buf);
          v64 = buf[23] >= 0 ? buf : *buf;
          LODWORD(v283.__r_.__value_.__l.__data_) = 136446210;
          *(v283.__r_.__value_.__r.__words + 4) = v64;
          _os_log_impl(&dword_22D2FA000, v63, OS_LOG_TYPE_DEFAULT, "Found artist=%{public}s in the grouping key cache", &v283, 0xCu);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        v51 = *(v284.__r_.__value_.__l.__size_ + 48);
        v191 = v51;
        if (*(&v51 + 1))
        {
          goto LABEL_68;
        }

        goto LABEL_102;
      }
    }

    goto LABEL_99;
  }

  v42 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v42, OS_LOG_TYPE_DEFAULT, "Invalid parameters to find artist", buf, 2u);
  }

  v43 = 0;
  v191 = 0u;
LABEL_112:

  v69 = v262;
  v70 = v262[7];
  *(v262 + 3) = v191;
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    v69 = v262;
    v71 = v262[6];
  }

  else
  {
    v71 = v191;
  }

  v72 = v194;
  if (!v71)
  {
    if ([v220[5] length])
    {
      v76 = v230[3];
      if (v76)
      {
        v270 = v230[3];
      }

      else
      {
        v121 = a2[1];
        if (v121)
        {
          atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v76 = [*(v194 + 112) nextPersistentID];
        v122 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v76;
          _os_log_impl(&dword_22D2FA000, v122, OS_LOG_TYPE_DEFAULT, "created new item artist pid %lld", buf, 0xCu);
        }

        v270 = v76;
        if (v121)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v121);
        }

        v72 = v194;
      }

      v123 = ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(v72, &v248[2], &v255[2]);
      v125 = v124;
      v283.__r_.__value_.__r.__words[0] = v123;
      v283.__r_.__value_.__l.__size_ = v124;
      v126 = ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(v72, &v234[2], &v241[2]);
      v128 = v127;
      v200.__r_.__value_.__r.__words[0] = v126;
      v200.__r_.__value_.__l.__size_ = v127;
      v129 = os_log_create("com.apple.amp.medialibrary", "Import_Oversize");
      if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
      {
        v130 = &v255[2];
        if (SHIBYTE(v255[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v130 = v130->__words[0];
        }

        v131 = &v248[2];
        if (SHIBYTE(v248[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v131 = v131->__words[0];
        }

        v132 = &v241[2];
        if (SHIBYTE(v241[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v132 = v132->__words[0];
        }

        v133 = &v234[2];
        if (SHIBYTE(v234[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v133 = v133->__words[0];
        }

        v134 = v226[3];
        *buf = 134220546;
        *&buf[4] = v76;
        *&buf[12] = 2048;
        *&buf[14] = v269;
        *&buf[22] = 2082;
        *&buf[24] = v130;
        *&buf[32] = 2082;
        *&buf[34] = v131;
        *&buf[42] = 2082;
        *&buf[44] = v132;
        *&buf[52] = 2082;
        *&buf[54] = v133;
        *&buf[62] = 2048;
        v272 = v134;
        v273 = 2048;
        v274 = v125;
        v275 = 2048;
        v276 = v123;
        v277 = 2048;
        v278 = v128;
        v279 = 2048;
        v280 = v126;
        _os_log_impl(&dword_22D2FA000, v129, OS_LOG_TYPE_DEFAULT, "creating new item artist entry: pid=%lld, representative_item_pid=%lld, name='%{public}s', sortName='%{public}s', series='%{public}s', sortSeries='%{public}s', storeID=%lld, order.section=%ld, order.sortOrder=%lld, order.section=%ld, order.sortOrder=%lld ", buf, 0x70u);
      }

      memset(buf, 0, 24);
      LODWORD(v284.__r_.__value_.__l.__data_) = 0;
      LODWORD(v201) = 0;
      std::allocate_shared[abi:ne200100]<ML3ArtistData,std::allocator<ML3ArtistData>,long long &,std::string &,std::string &,std::string &,std::string &,long long &,ML3NameOrder &,ML3NameOrder &,long long &,std::string,BOOL &,int,int,0>();
    }

    v118 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      (*(**a2 + 88))(buf);
      v119 = buf[23] >= 0 ? buf : *buf;
      LODWORD(v284.__r_.__value_.__l.__data_) = 136446210;
      *(v284.__r_.__value_.__r.__words + 4) = v119;
      _os_log_impl(&dword_22D2FA000, v118, OS_LOG_TYPE_ERROR, "Item artist=%{public}s has an empty grouping key and no syncID. Creating a default item artist import item", &v284, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v120 = v269;
    ML3ImportSession::_getDefaultEmptyArtist(&v195);
    v57 = v196;
    ML3ImportSession::_setArtistInfoForTrackPersistentID(v194, v120, v195, v196);
LABEL_231:
    if (!v57)
    {
      goto LABEL_354;
    }

    v135 = v57;
LABEL_353:
    std::__shared_weak_count::__release_shared[abi:ne200100](v135);
    goto LABEL_354;
  }

  v74 = v73;
  if (v73)
  {
    v75 = v69[7];
    if (v75)
    {
      atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v75 = 0;
  }

  v77 = v73[1];
  v201 = v77;
  v78 = (v43 & 1) != 0 || std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((v194 + 1848), v77) != 0;
  v192 = v78;
  v79 = *a2;
  *(v79 + 8) = v77;
  *(v79 + 16) = 0;
  v80 = (*(*v74 + 32))(v74, 318767111);
  v81 = v80;
  v82 = v226[3];
  if (v82)
  {
    v83 = v82 == v80;
  }

  else
  {
    v83 = 1;
  }

  v84 = !v83;
  if (!v83)
  {
    *(v74[8] + 104) = v82;
    v85 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      v86 = v226[3];
      *buf = 134218240;
      *&buf[4] = v86;
      *&buf[12] = 2048;
      *&buf[14] = v81;
      _os_log_impl(&dword_22D2FA000, v85, OS_LOG_TYPE_DEFAULT, "Setting artistStoreID=%lld (oldValue = %lld)", buf, 0x16u);
    }

    v72 = v194;
  }

  v87 = (*(*v74 + 32))(v74, 167772176);
  v88 = v230[3];
  if (v88)
  {
    v89 = v87;
    if (v88 != v87)
    {
      *(v74[8] + 144) = v88;
      v90 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        v91 = v230[3];
        *buf = 134218240;
        *&buf[4] = v91;
        *&buf[12] = 2048;
        *&buf[14] = v89;
        _os_log_impl(&dword_22D2FA000, v90, OS_LOG_TYPE_DEFAULT, "Setting artistSyncID=%lld (oldValue = %lld)", buf, 0x16u);
      }

      v84 = 1;
      v72 = v194;
    }
  }

  (*(*v74 + 24))(buf, v74, 318767105);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v284, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v284 = *&buf[16];
  }

  v92 = SHIBYTE(v255[2].__r_.__value_.__r.__words[2]);
  if (v92 < 0)
  {
    if (!v255[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_169;
    }
  }

  else if (!*(&v255[2].__r_.__value_.__s + 23))
  {
    goto LABEL_169;
  }

  v93 = v255 + 2;
  if (v92 >= 0)
  {
    v94 = SHIBYTE(v255[2].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v94 = v255[2].__r_.__value_.__l.__size_;
  }

  v95 = HIBYTE(v284.__r_.__value_.__r.__words[2]);
  if ((v284.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v95 = v284.__r_.__value_.__l.__size_;
  }

  if (v94 != v95 || (v92 >= 0 ? (v96 = v255 + 2) : (v96 = v93->__r_.__value_.__r.__words[0]), (v284.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v97 = &v284) : (v97 = v284.__r_.__value_.__r.__words[0]), memcmp(v96, v97, v94)))
  {
    std::string::operator=((v74[8] + 8), v93);
    v98 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      v99 = &v255[2];
      if (SHIBYTE(v255[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v99 = v99->__words[0];
      }

      v100 = &v284;
      if ((v284.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v100 = v284.__r_.__value_.__r.__words[0];
      }

      *buf = 136446466;
      *&buf[4] = v99;
      *&buf[12] = 2082;
      *&buf[14] = v100;
      _os_log_impl(&dword_22D2FA000, v98, OS_LOG_TYPE_DEFAULT, "Setting artistName=%{public}s (oldValue=%{public}s)", buf, 0x16u);
    }

    v84 = 1;
    v72 = v194;
  }

LABEL_169:
  (*(*v74 + 24))(buf, v74, 318767107);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v283, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v283 = *&buf[16];
  }

  v101 = SHIBYTE(v241[2].__r_.__value_.__r.__words[2]);
  if (v101 < 0)
  {
    if (!v241[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_197;
    }
  }

  else if (!*(&v241[2].__r_.__value_.__s + 23))
  {
    goto LABEL_197;
  }

  v102 = v241 + 2;
  if (v101 >= 0)
  {
    v103 = SHIBYTE(v241[2].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v103 = v241[2].__r_.__value_.__l.__size_;
  }

  v104 = HIBYTE(v283.__r_.__value_.__r.__words[2]);
  if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v104 = v283.__r_.__value_.__l.__size_;
  }

  if (v103 != v104 || (v101 >= 0 ? (v105 = v241 + 2) : (v105 = v102->__r_.__value_.__r.__words[0]), (v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v106 = &v283) : (v106 = v283.__r_.__value_.__r.__words[0]), memcmp(v105, v106, v103)))
  {
    std::string::operator=((v74[8] + 56), v102);
    v107 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
    {
      v108 = &v241[2];
      if (SHIBYTE(v241[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v108 = v108->__words[0];
      }

      v109 = &v283;
      if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v109 = v283.__r_.__value_.__r.__words[0];
      }

      *buf = 136446466;
      *&buf[4] = v108;
      *&buf[12] = 2082;
      *&buf[14] = v109;
      _os_log_impl(&dword_22D2FA000, v107, OS_LOG_TYPE_DEFAULT, "Setting artistSeriesName=%{public}s (oldValue=%{public}s)", buf, 0x16u);
    }

    v84 = 1;
    v72 = v194;
  }

LABEL_197:
  (*(*v74 + 24))(buf, v74, 318767106);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v200, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v200 = *&buf[16];
  }

  v110 = *(v72 + 32);
  PropertyIndex = ML3TrackRulesGetPropertyIndex(10, 167772167);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__specialRules + 56 * PropertyIndex + 4 * v110) == -1)
  {
    goto LABEL_276;
  }

  v112 = v248;
  v113 = SHIBYTE(v248[2].__r_.__value_.__r.__words[2]);
  if (v113 < 0)
  {
    if (!v248[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_221;
    }

LABEL_208:
    if (v113 >= 0)
    {
      v114 = SHIBYTE(v248[2].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v114 = v248[2].__r_.__value_.__l.__size_;
    }

    v115 = HIBYTE(v200.__r_.__value_.__r.__words[2]);
    if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v115 = v200.__r_.__value_.__l.__size_;
    }

    if (v114 != v115 || (v113 >= 0 ? (data = v248 + 2) : (data = v248[2].__r_.__value_.__l.__data_), (v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v117 = &v200) : (v117 = v200.__r_.__value_.__r.__words[0]), memcmp(data, v117, v114)))
    {
LABEL_256:
      v137 = a4[1];
      v199[0] = *a4;
      v199[1] = v137;
      if (v137)
      {
        atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v138 = ML3ImportSession::_shouldPreserveTrackProperty(v72, v199, 0xA000007u);
      if (v137)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v137);
      }

      if ((v138 & 1) == 0)
      {
        v139 = ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(v72, &v248[2], &v255[2]);
        v141 = v140;
        std::string::operator=((v74[8] + 32), v248 + 2);
        v142 = v74[8];
        *(v142 + 112) = v139;
        *(v142 + 120) = v141;
        v143 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
        {
          v144 = &v248[2];
          if (SHIBYTE(v248[2].__r_.__value_.__r.__words[2]) < 0)
          {
            v144 = v144->__words[0];
          }

          v145 = &v200;
          if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v145 = v200.__r_.__value_.__r.__words[0];
          }

          *buf = 136446978;
          *&buf[4] = v144;
          *&buf[12] = 2048;
          *&buf[14] = v139;
          *&buf[22] = 1024;
          *&buf[24] = v141;
          *&buf[28] = 2082;
          *&buf[30] = v145;
          _os_log_impl(&dword_22D2FA000, v143, OS_LOG_TYPE_DEFAULT, "Setting artistSortName=%{public}s, order=%lld, section=%d (oldValue=%{public}s)", buf, 0x26u);
        }

        v146 = v201;
        v147 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((v194 + 1688), v201);
        if (v147)
        {
          v148 = v147[4];
          if (v148 != v141 || v147[3] != v139)
          {
            v189 = v147[3];
            *buf = &v201;
            v149 = std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v194 + 1728), v146);
            v149[3] = v139;
            v149[4] = v141;
            *buf = &v201;
            v150 = std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v194 + 1688), v201);
            v150[3] = v139;
            v150[4] = v141;
            v151 = os_log_create("com.apple.amp.medialibrary", "Import");
            if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
            {
              v152 = &v248[2];
              if (SHIBYTE(v248[2].__r_.__value_.__r.__words[2]) < 0)
              {
                v152 = v152->__words[0];
              }

              *buf = 134219266;
              *&buf[4] = v201;
              *&buf[12] = 2082;
              *&buf[14] = v152;
              *&buf[22] = 2048;
              *&buf[24] = v141;
              *&buf[32] = 2048;
              *&buf[34] = v139;
              *&buf[42] = 2048;
              *&buf[44] = v148;
              *&buf[52] = 2048;
              *&buf[54] = v189;
              _os_log_impl(&dword_22D2FA000, v151, OS_LOG_TYPE_DEFAULT, "Will update sort order for tracks with artist_pid=%lld with sortName=%{public}s, order.section=%ld, order.sortOrder=%lld (oldValue section=%ld, sortOrder=%lld)", buf, 0x3Eu);
            }
          }
        }

        v84 = 1;
        v72 = v194;
      }

      goto LABEL_276;
    }

    goto LABEL_221;
  }

  if (*(&v248[2].__r_.__value_.__s + 23))
  {
    goto LABEL_208;
  }

LABEL_221:
  if ((v113 & 0x80000000) != 0)
  {
    if (v112[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_276;
    }
  }

  else if (v113)
  {
    goto LABEL_276;
  }

  v136 = HIBYTE(v200.__r_.__value_.__r.__words[2]);
  if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v136 = v200.__r_.__value_.__l.__size_;
  }

  if (v136)
  {
    goto LABEL_256;
  }

LABEL_276:
  (*(*v74 + 24))(buf, v74, 318767108);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v198, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v198 = *&buf[16];
  }

  v153 = *(v72 + 32);
  v154 = ML3TrackRulesGetPropertyIndex(10, 167772168);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__specialRules + 56 * v154 + 4 * v153) == -1)
  {
    goto LABEL_329;
  }

  v155 = v234;
  v156 = SHIBYTE(v234[2].__r_.__value_.__r.__words[2]);
  if (v156 < 0)
  {
    if (!v234[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_300;
    }

LABEL_287:
    if (v156 >= 0)
    {
      v157 = SHIBYTE(v234[2].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v157 = v234[2].__r_.__value_.__l.__size_;
    }

    v158 = HIBYTE(v198.__r_.__value_.__r.__words[2]);
    if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v158 = v198.__r_.__value_.__l.__size_;
    }

    if (v157 != v158 || (v156 >= 0 ? (v159 = v234 + 2) : (v159 = v234[2].__r_.__value_.__l.__data_), (v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v160 = &v198) : (v160 = v198.__r_.__value_.__r.__words[0]), memcmp(v159, v160, v157)))
    {
LABEL_307:
      v162 = a4[1];
      v197[0] = *a4;
      v197[1] = v162;
      if (v162)
      {
        atomic_fetch_add_explicit(&v162->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v163 = ML3ImportSession::_shouldPreserveTrackProperty(v72, v197, 0xA000008u);
      if (v162)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v162);
      }

      if ((v163 & 1) == 0)
      {
        v164 = ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(v72, &v234[2], &v241[2]);
        v166 = v165;
        std::string::operator=((v74[8] + 80), v234 + 2);
        v167 = v74[8];
        *(v167 + 128) = v164;
        *(v167 + 136) = v166;
        v168 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
        {
          v169 = &v234[2];
          if (SHIBYTE(v234[2].__r_.__value_.__r.__words[2]) < 0)
          {
            v169 = v169->__words[0];
          }

          v170 = &v198;
          if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v170 = v198.__r_.__value_.__r.__words[0];
          }

          *buf = 136446978;
          *&buf[4] = v169;
          *&buf[12] = 2048;
          *&buf[14] = v164;
          *&buf[22] = 1024;
          *&buf[24] = v166;
          *&buf[28] = 2082;
          *&buf[30] = v170;
          _os_log_impl(&dword_22D2FA000, v168, OS_LOG_TYPE_DEFAULT, "Setting artistSeriesSortName=%{public}s, order=%lld, section=%d (oldValue=%{public}s)", buf, 0x26u);
        }

        v171 = v201;
        v72 = v194;
        v172 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((v194 + 1768), v201);
        if (!v172 || (v173 = v172[3], v174 = v172[4], v174 == v166) && v173 == v164)
        {
          v84 = 1;
        }

        else
        {
          *buf = &v201;
          v175 = std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v194 + 1808), v171);
          v175[3] = v164;
          v175[4] = v166;
          *buf = &v201;
          v176 = std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v194 + 1768), v201);
          v176[3] = v164;
          v176[4] = v166;
          v177 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
          {
            v178 = &v248[2];
            if (SHIBYTE(v248[2].__r_.__value_.__r.__words[2]) < 0)
            {
              v178 = v178->__words[0];
            }

            *buf = 134219266;
            *&buf[4] = v201;
            *&buf[12] = 2082;
            *&buf[14] = v178;
            *&buf[22] = 2048;
            *&buf[24] = v166;
            *&buf[32] = 2048;
            *&buf[34] = v164;
            *&buf[42] = 2048;
            *&buf[44] = v174;
            *&buf[52] = 2048;
            *&buf[54] = v173;
            _os_log_impl(&dword_22D2FA000, v177, OS_LOG_TYPE_DEFAULT, "Will update series sort order for tracks with artist_pid=%lld with sortName=%{public}s, order.section=%ld, order.sortOrder=%lld (oldValue section=%ld, sortOrder=%lld)", buf, 0x3Eu);
          }

          v84 = 1;
          v72 = v194;
        }
      }

      goto LABEL_329;
    }

    goto LABEL_300;
  }

  if (*(&v234[2].__r_.__value_.__s + 23))
  {
    goto LABEL_287;
  }

LABEL_300:
  if ((v156 & 0x80000000) != 0)
  {
    if (v155[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_329;
    }
  }

  else if (v156)
  {
    goto LABEL_329;
  }

  v161 = HIBYTE(v198.__r_.__value_.__r.__words[2]);
  if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v161 = v198.__r_.__value_.__l.__size_;
  }

  if (v161)
  {
    goto LABEL_307;
  }

LABEL_329:
  v179 = (*(*v74 + 32))(v74, 318767118) != 0;
  v180 = *(v216 + 24);
  if (v180 == v179)
  {
    if (v192 || (v84 & 1) == 0)
    {
      goto LABEL_339;
    }

    goto LABEL_335;
  }

  *(v74[8] + 176) = v180;
  v181 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
  {
    v182 = *(v216 + 24);
    *buf = 67109120;
    *&buf[4] = v182;
    _os_log_impl(&dword_22D2FA000, v181, OS_LOG_TYPE_DEFAULT, "Setting artistClassicalExperienceAvailable=%{BOOL}u", buf, 8u);
  }

  v72 = v194;
  if (!v192)
  {
LABEL_335:
    v183 = v201;
    v185 = v262[6];
    v184 = v262[7];
    *buf = v201;
    *&buf[8] = v185;
    *&buf[16] = v184;
    if (v184)
    {
      atomic_fetch_add_explicit((v184 + 8), 1uLL, memory_order_relaxed);
    }

    std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::__emplace_unique_key_args<long long,std::pair<long long const,std::shared_ptr<ML3ImportItem>>>((v72 + 1848), v183);
    if (*&buf[16])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[16]);
    }
  }

LABEL_339:
  v186 = v269;
  v187 = v74[8];
  v188 = v74[9];
  if (v188)
  {
    atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ML3ImportSession::_setArtistInfoForTrackPersistentID(v72, v186, v187, v188);
  if (v188)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v188);
  }

  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v198.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v200.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v283.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v284.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v284.__r_.__value_.__l.__data_);
  }

  if (v75)
  {
    v135 = v75;
    goto LABEL_353;
  }

LABEL_354:
  _Block_object_dispose(&v215, 8);
  _Block_object_dispose(&v219, 8);

  _Block_object_dispose(&v225, 8);
  _Block_object_dispose(&v229, 8);
  _Block_object_dispose(&v233, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v240, 8);
  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v246.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v247, 8);
  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v253.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v254, 8);
  if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v260.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v261, 8);
  if (v268)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v268);
  }
}

void sub_22D538274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);

  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  _Block_object_dispose(&STACK[0x298], 8);
  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(STACK[0x2C8]);
  }

  _Block_object_dispose(&STACK[0x2E0], 8);
  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  _Block_object_dispose(&STACK[0x328], 8);
  if (SLOBYTE(STACK[0x36F]) < 0)
  {
    operator delete(STACK[0x358]);
  }

  _Block_object_dispose(&STACK[0x370], 8);
  if (STACK[0x3A8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3A8]);
  }

  _Unwind_Resume(a1);
}

void ML3ImportSession::_setArtistInfoForTrackPersistentID(uint64_t a1, unint64_t a2, uint64_t a3, std::__shared_weak_count *a4)
{
  v16[0] = a2;
  if (a2)
  {
    v8 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a1 + 352), a2);
    if (v8)
    {
      if (a4)
      {
        atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = v8[4];
      v8[3] = a3;
      v8[4] = a4;
      if (v9)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      if (a4)
      {
        atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11[0] = a3;
      v11[1] = a4;
      v16[1] = v16;
      v10 = std::__hash_table<std::__hash_value_type<long long,ML3CollectionInfoSet>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3CollectionInfoSet>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 352), a2);
      ML3CollectionInfoSet::operator=(v10 + 3, v11);
      if (a4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a4);
      }
    }
  }
}

void ___ZN16ML3ImportSession14_addItemArtistENSt3__110shared_ptrI13ML3ImportItemEEP6NSDataS3__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 104);
  v45 = v6;
  v8 = [v5 stringForColumnIndex:0];
  v49 = v8;
  v9 = [v5 stringForColumnIndex:1];
  v50 = v9;
  v51 = [v5 stringForColumnIndex:2];
  v52 = [v5 stringForColumnIndex:3];
  v10 = [v5 int64ForColumnIndex:4];
  v57[3] = v10;
  v47 = [v5 int64ForColumnIndex:5];
  v48 = [v5 dataForColumnIndex:6];
  v57[2] = v48;
  v46 = [v5 int64ForColumnIndex:7];
  v11 = [v5 intForColumnIndex:8] != 0;
  if (((*(**(a1 + 112) + 56))(*(a1 + 112), 318767105) & 1) == 0)
  {
    MEMORY[0x2318CCFB0](*(*(a1 + 32) + 8) + 48, [v8 UTF8String]);
  }

  v12 = (*(**(a1 + 112) + 56))(*(a1 + 112), 318767106);
  if (v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v59, [v9 UTF8String]);
    v14 = *(*(a1 + 40) + 8);
    if (*(v14 + 71) < 0)
    {
      operator delete(*(v14 + 48));
    }

    *(v14 + 48) = v59;
  }

  if (((*(**(a1 + 112) + 56))(*(a1 + 112), 318767107) & 1) == 0)
  {
    v15 = v51;
    MEMORY[0x2318CCFB0](*(*(a1 + 48) + 8) + 48, [v51 UTF8String]);
  }

  v16 = (*(**(a1 + 112) + 56))(*(a1 + 112), 318767108);
  if (v52)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    v18 = v52;
    std::string::basic_string[abi:ne200100]<0>(&v59, [v52 UTF8String]);
    v19 = *(*(a1 + 56) + 8);
    if (*(v19 + 71) < 0)
    {
      operator delete(*(v19 + 48));
    }

    *(v19 + 48) = v59;
  }

  if (((*(**(a1 + 112) + 56))(*(a1 + 112), 318767118) & 1) == 0)
  {
    *(*(*(a1 + 64) + 8) + 24) = v11;
  }

  if (((*(**(a1 + 112) + 56))(*(a1 + 112), 318767111) & 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = v47;
  }

  if (((*(**(a1 + 112) + 56))(*(a1 + 112), 167772176) & 1) == 0)
  {
    *(*(*(a1 + 80) + 8) + 24) = v46;
  }

  v20 = *(v7 + 8);
  v21 = ML3CPPBridgeString((*(*(a1 + 32) + 8) + 48), 0);
  v22 = *(a1 + 164);
  if (v22 == 1)
  {
    v23 = ML3CPPBridgeString((*(*(a1 + 48) + 8) + 48), 0);
  }

  else
  {
    v23 = &stru_28408B690;
  }

  v24 = [v20 artistGroupingKeyForArtistName:v21 seriesName:v23];
  v25 = *(*(a1 + 88) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;

  if (v22)
  {
  }

  v27 = *(a1 + 160);
  v28 = *(v7 + 32);
  v29 = HIBYTE(v27);
  v30 = v50;
  PropertyIndex = ML3TrackRulesGetPropertyIndex(HIBYTE(v27), v27);
  if (*(ML3TrackRulesGetRule(v29, PropertyIndex) + 4 * v28) == -1 || ([*(*(*(a1 + 88) + 8) + 40) isEqualToData:v48] & 1) != 0)
  {
    goto LABEL_36;
  }

  v32 = *(a1 + 136);
  v57[0] = *(a1 + 128);
  v57[1] = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(v7, v57, *(a1 + 160));
  v34 = shouldPreserveTrackProperty;
  if (!v32)
  {
    if (!shouldPreserveTrackProperty)
    {
      goto LABEL_51;
    }

LABEL_36:
    if (v49)
    {
      v35 = v49;
      v30 = v50;
      std::string::basic_string[abi:ne200100]<0>(v56, [v49 UTF8String]);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v56, "");
    }

    if (v30)
    {
      v36 = v30;
      std::string::basic_string[abi:ne200100]<0>(v55, [v50 UTF8String]);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v55, "");
    }

    if (v51)
    {
      v37 = v51;
      std::string::basic_string[abi:ne200100]<0>(v54, [v51 UTF8String]);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v54, "");
    }

    if (v52)
    {
      v38 = v52;
      std::string::basic_string[abi:ne200100]<0>(__p, [v52 UTF8String]);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "");
    }

    ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(v7, v55, v56);
    ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(v7, __p, v54);
    operator new();
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  if (v34)
  {
    goto LABEL_36;
  }

LABEL_51:
  if (v10 == *(a1 + 152))
  {
    v39 = *(v7 + 16);
    v40 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 144)];
    v58 = v40;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
    [v39 executeUpdate:@"UPDATE item_artist SET representative_item_pid=0 WHERE item_artist_pid=?" withParameters:v41 error:0];

    *(*(a1 + 112) + 8) = 0;
    v42 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(a1 + 144);
      v43 = *(a1 + 152);
      LODWORD(v59.__r_.__value_.__l.__data_) = 134218240;
      *(v59.__r_.__value_.__r.__words + 4) = v43;
      WORD2(v59.__r_.__value_.__r.__words[1]) = 2048;
      *(&v59.__r_.__value_.__r.__words[1] + 6) = v44;
      _os_log_impl(&dword_22D2FA000, v42, OS_LOG_TYPE_DEFAULT, "Removing trackPersistentID=%lld as the representative item for itemArtistPersistentID=%lld as the groupingKey has changed/can no longer be applied", &v59, 0x16u);
    }
  }
}

void sub_22D5395C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 121) < 0)
  {
    operator delete(*(v37 - 144));
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  std::__shared_weak_count::~__shared_weak_count(v36);
  operator delete(v39);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ML3ArtistImportItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284089800;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void ___ZN16ML3ImportSession41_getArtistImportItemForGroupingKeyAndPIDsEP6NSDataxxRb_block_invoke(uint64_t a1, void *a2)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 48);
  memset(v29, 0, 32);
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  ML3DatabaseRowGetHomogeneousColumns<std::string>(v3, v27, 4uLL);
  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v27[0].__r_.__value_.__l.__data_, v27[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v27[0];
  }

  if (SHIBYTE(v27[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v27[1].__r_.__value_.__l.__data_, v27[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = v27[1];
  }

  if (SHIBYTE(v29[0]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v28, *(&v28 + 1));
  }

  else
  {
    *&v24.__r_.__value_.__l.__data_ = v28;
    v24.__r_.__value_.__r.__words[2] = v29[0];
  }

  if (SHIBYTE(v29[3]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v29[1], v29[2]);
  }

  else
  {
    v23 = *&v29[1];
  }

  [v3 int64ForColumnIndex:4];
  [v3 int64ForColumnIndex:5];
  v5 = [v3 objectAtIndexedSubscript:6];
  if (v5)
  {
    v6 = *(v4 + 3);
    v7 = [v3 objectAtIndexedSubscript:6];
    v8 = [v6 objectForKeyedSubscript:v7];
    v22 = [v8 ML3NameOrderValue];

    v9 = v22 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v3 objectAtIndexedSubscript:6];
  v11 = v10 != 0;

  if (v11 && v9)
  {
    v12 = [v3 objectAtIndexedSubscript:6];
    ML3ImportSession::_getNameOrderForString(v4, v12);
  }

  v13 = [v3 objectAtIndexedSubscript:7];
  if (v13)
  {
    v14 = *(v4 + 3);
    v15 = [v3 objectAtIndexedSubscript:7];
    v16 = [v14 objectForKeyedSubscript:v15];
    v21 = [v16 ML3NameOrderValue];

    v17 = v21 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = [v3 objectAtIndexedSubscript:7];
  v19 = v18 != 0;

  if (v19 && v17)
  {
    v20 = [v3 objectAtIndexedSubscript:7];
    ML3ImportSession::_getNameOrderForString(v4, v20);
  }

  [v3 int64ForColumnIndex:8];
  [v3 intForColumnIndex:9];
  [v3 int64ForColumnIndex:10];
  [v3 dataForColumnIndex:11];
  objc_claimAutoreleasedReturnValue();
  std::allocate_shared[abi:ne200100]<ML3ArtistData,std::allocator<ML3ArtistData>,long long &,std::string &,std::string &,std::string &,std::string &,long long &,ML3NameOrder &,ML3NameOrder &,long long &,std::string,BOOL &,int,int,0>();
}

void sub_22D539D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  std::pair<std::string const,std::shared_ptr<ML3ArtistData>>::~pair(&a19);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (*(v51 - 233) < 0)
  {
    operator delete(*(v51 - 256));
  }

  if (*(v51 - 201) < 0)
  {
    operator delete(*(v51 - 224));
  }

  v53 = 0;
  v54 = v51 - 192;
  while (1)
  {
    if (*(v54 + v53 + 95) < 0)
    {
      operator delete(*(v54 + v53 + 72));
    }

    v53 -= 24;
    if (v53 == -96)
    {

      _Unwind_Resume(a1);
    }
  }
}

void __destroy_helper_block_ea8_112c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE128c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_112c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE128c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE(void *result, void *a2)
{
  v2 = a2[15];
  result[14] = a2[14];
  result[15] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[17];
  result[16] = a2[16];
  result[17] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t ML3ImportSession::updateItemArtist(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 1584) count])
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 1544) != *(a1 + 1536);
  }

  v9 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    (*(**a2 + 88))(v37);
    v10 = v38;
    v11 = v37[0];
    (*(**a3 + 88))(__p);
    v12 = v37;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if (v42 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = *__p;
    }

    *buf = 136446978;
    *&buf[4] = v12;
    v44 = 2082;
    v45 = v13;
    v46 = 1024;
    v47 = a4;
    v48 = 1024;
    v49 = v8;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "updating itemArtist=%{public}s, track=%{public}s, ignoreNonExistingArtist=%{BOOL}u, havePendingTrackModifications=%{BOOL}u", buf, 0x22u);
    if (v42 < 0)
    {
      operator delete(*__p);
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }
  }

  if (v8)
  {
    v14 = ML3ImportSession::flush(a1, 1);
    v15 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v14;
      _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "flushing entities as we have pending track adds/deletes finished with status=%{BOOL}u", buf, 8u);
    }

    if (!v14)
    {
      return 0;
    }
  }

  v16 = a3[1];
  v36[0] = *a3;
  v36[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = ML3ImportSession::_prepareTrackForImport(a1, v36, a4, 1);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (!v17)
  {
    if (*a3 && a4 && !*(*a3 + 8))
    {
      v19 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "Ignoring item artist update as the track does not exist", buf, 2u);
      }
    }

    else
    {
      v18 = a2[1];
      v34 = *a2;
      v35 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = ML3ImportSession::_getGroupingKeyForItemArtistImportItem(a1, &v34);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      v20 = *(*a3 + 8);
      *(*a3 + 16) = 1;
      v21 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v20;
        _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "updating itemArtist with trackPID=%lld", buf, 0xCu);
      }

      v22 = a2[1];
      v33[0] = *a2;
      v33[1] = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = *a3;
      v24 = a3[1];
      v32[0] = v23;
      v32[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ML3ImportSession::_addItemArtist(a1, v33, v19, v32);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v25 = a2[1];
      v31[0] = *a2;
      v31[1] = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ML3ImportSession::_addItemArtistDataToSourceMaps(a1, v31);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }
    }

    a4 = 1;
    goto LABEL_57;
  }

  if (v17 != 1)
  {
    v19 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      (*(**a2 + 88))(buf);
      v26 = SHIBYTE(v46);
      v27 = *buf;
      (*(**a3 + 88))(v37);
      v28 = buf;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if (v38 >= 0)
      {
        v29 = v37;
      }

      else
      {
        v29 = v37[0];
      }

      *__p = 136446466;
      *&__p[4] = v28;
      v40 = 2082;
      v41 = v29;
      _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_ERROR, "Error updating itemArtist=%{public}s. Could not prepare track data for import=%{public}s", __p, 0x16u);
      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      if (SHIBYTE(v46) < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_57:

    return a4;
  }

  return 0;
}

void sub_22D53A4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ImportSession::addTrack(uint64_t a1, uint64_t *a2, int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    (*(**a2 + 88))(__p);
    v7 = v25 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v28 = v7;
    v29 = 1024;
    v30 = a3;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "adding track %{public}s, processCollectionsAsStandaloneEntities=%{BOOL}u", buf, 0x12u);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ([*(a1 + 1584) count])
  {
    if (a3)
    {
      goto LABEL_14;
    }
  }

  else if (*(a1 + 1568) == *(a1 + 1560) || (a3 & 1) != 0)
  {
    goto LABEL_13;
  }

  result = ML3ImportSession::flush(a1, 0);
  if (!result)
  {
    return result;
  }

LABEL_13:
  if (!a3)
  {
    v13 = a2[1];
    v22[0] = *a2;
    v22[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    TrackPersistentID = ML3ImportSession::_getTrackPersistentID(a1, v22);
    v26 = TrackPersistentID;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (TrackPersistentID)
    {
      if (std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a1 + 592), TrackPersistentID))
      {
        v14 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "pid collision detected - flushing", __p, 2u);
        }

        result = ML3ImportSession::flush(a1, 0);
        if (!result)
        {
          return result;
        }

        v15 = a2[1];
        v21[0] = *a2;
        v21[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        TrackPersistentID = ML3ImportSession::_getTrackPersistentID(a1, v21);
        v26 = TrackPersistentID;
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        v16 = TrackPersistentID != 0;
        if (!TrackPersistentID)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v16 = TrackPersistentID != 0;
      }

      ++*(a1 + 164);
LABEL_44:
      v11 = *a2;
      *(v11 + 8) = TrackPersistentID;
      *(v11 + 16) = v16;
      goto LABEL_45;
    }

    v16 = 0;
LABEL_38:
    ++*(a1 + 160);
    v17 = *a2;
    v18 = a2[1];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    TrackPersistentID = ML3ImportSession::_newTrackPersistentID(*(a1 + 72), v17, v18);
    v26 = TrackPersistentID;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    goto LABEL_44;
  }

LABEL_14:
  v9 = a2[1];
  v23[0] = *a2;
  v23[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = ML3ImportSession::_prepareTrackForImport(a1, v23, 0, 0);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!v10)
  {
    v11 = *a2;
    TrackPersistentID = *(*a2 + 8);
    v26 = TrackPersistentID;
    if (*(v11 + 16) == 1)
    {
      ++*(a1 + 164);
    }

    else
    {
      ++*(a1 + 160);
    }

LABEL_45:
    if (*(a1 + 1520) == 1)
    {
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__erase_unique<long long>((a1 + 736), TrackPersistentID);
      v11 = *a2;
    }

    v19 = a2[1];
    v20[0] = v11;
    v20[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    ML3ImportSession::_prepareTrackData(a1, v20);
  }

  return 0;
}

void sub_22D53A9E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ML3ImportSession::_prepareTrackData(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 8);
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2 + 1, 1uLL, memory_order_relaxed);
  }

  ML3ImportSession::_prepareTrackSortData(a1, v3);
}

void sub_22D53BB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  _Block_object_dispose((v62 - 192), 8);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v62 - 144);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ImportSession::_prepareArtwork(uint64_t a1, uint64_t a2, uint64_t a3, std::string::size_type a4)
{
  (*(**a2 + 24))(&v14);
  if (v15 == 1)
  {
    v7 = [ML3MusicLibrary artworkSourceTypeForTrackSource:*(a1 + 32)];
    v8 = *(*a2 + 8);
    v11 = &unk_28408AC60;
    v12 = v15;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v16;
    }

    inserted = ML3ImportSession::_insertIntoArtworkTokenTable(a1, v8, &v11, v7, a4 == 5, a4);
    v11 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    inserted = 1;
  }

  v14 = &unk_28408AC60;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return inserted;
}

void sub_22D53BE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3ImportSession::_prepareArtworkFromSecondarySource(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, std::string::size_type a5)
{
  (*(**a2 + 24))(&v16);
  if (v17 == 1 && (v9 = (*(**a2 + 32))(*a2, a4)) != 0)
  {
    v10 = *(*a2 + 8);
    v13 = &unk_28408AC60;
    v14 = v17;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v18;
    }

    inserted = ML3ImportSession::_insertIntoArtworkTokenTable(a1, v10, &v13, v9, a5 == 5, a5);
    v13 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    inserted = 1;
  }

  v16 = &unk_28408AC60;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return inserted;
}

void sub_22D53C07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__22865(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void ___ZN16ML3ImportSession21_prepareTrackBookletsENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((*(*(a1 + 32) + 8) + 48), [v3 int64ForColumnIndex:0]);
}

uint64_t ML3ImportSession::_insertIntoArtworkTokenTable(uint64_t a1, std::string::size_type a2, uint64_t a3, uint64_t a4, uint64_t a5, std::string::size_type a6)
{
  v67 = *MEMORY[0x277D85DE8];
  if (*(a3 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v49 = *(a3 + 16);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    size = v49.__r_.__value_.__l.__size_;
    operator delete(v49.__r_.__value_.__l.__data_);
    if (size)
    {
LABEL_6:
      std::string::basic_string[abi:ne200100]<0>(__p, "INSERT OR REPLACE INTO artwork_token (artwork_token,artwork_source_type,artwork_type,entity_pid,entity_type,artwork_variant_type)");
      v11 = *(a1 + 1519);
      if (v11 < 0)
      {
        v12 = *(a1 + 1504);
      }

      else
      {
        v12 = *(a1 + 1519);
      }

      v26 = (a1 + 1496);
      if (v12)
      {
        if ((v11 & 0x80) == 0)
        {
LABEL_18:
          *&v45.__r_.__value_.__l.__data_ = *v26;
          v45.__r_.__value_.__r.__words[2] = *(a1 + 1512);
LABEL_38:
          if (!v12 && SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (*(a3 + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&v49, *(a3 + 16), *(a3 + 24));
          }

          else
          {
            v49 = *(a3 + 16);
          }

          *v50 = 3;
          LOBYTE(v51) = 1;
          v52 = a4;
          v53 = 0;
          v54 = 1;
          v55 = a6;
          v56 = 0;
          v57 = 1;
          v58 = a2;
          v59 = 0;
          v60 = 1;
          v61 = a5;
          v62 = 0;
          v63 = 1;
          v64 = 0;
          v65 = 0;
          v66 = 1;
          memset(&v43[1], 0, 24);
          std::vector<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>>::__init_with_size[abi:ne200100]<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*,std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*>();
        }
      }

      else
      {
        if ((v47 & 0x80u) == 0)
        {
          v27 = v47;
        }

        else
        {
          v27 = __p[1];
        }

        if (v27 + 9 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v27 + 9 >= 0x17)
        {
          operator new();
        }

        memset(&__dst, 0, sizeof(__dst));
        *(&__dst.__r_.__value_.__s + 23) = v27 + 9;
        if (v27)
        {
          if ((v47 & 0x80u) == 0)
          {
            v28 = __p;
          }

          else
          {
            v28 = __p[0];
          }

          memmove(&__dst, v28, v27);
        }

        strcpy(&__dst + v27, " VALUES (");
        for (i = 5; ; --i)
        {
          std::string::push_back(&__dst, 63);
          if (!i)
          {
            break;
          }

          std::string::push_back(&__dst, 44);
        }

        std::string::push_back(&__dst, 41);
        if (*(a1 + 1519) < 0)
        {
          operator delete(*v26);
        }

        *(a1 + 1512) = *(&__dst.__r_.__value_.__l + 2);
        *v26 = *&__dst.__r_.__value_.__l.__data_;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        __dst.__r_.__value_.__s.__data_[0] = 0;
        if ((*(a1 + 1519) & 0x80) == 0)
        {
          goto LABEL_18;
        }
      }

      std::string::__init_copy_ctor_external(&v45, *(a1 + 1496), *(a1 + 1504));
      goto LABEL_38;
    }
  }

  else if (*(&v49.__r_.__value_.__s + 23))
  {
    goto LABEL_6;
  }

  v14 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v49.__r_.__value_.__l.__data_) = 134218752;
    *(v49.__r_.__value_.__r.__words + 4) = a2;
    WORD2(v49.__r_.__value_.__r.__words[1]) = 1024;
    *(&v49.__r_.__value_.__r.__words[1] + 6) = a5;
    WORD1(v49.__r_.__value_.__r.__words[2]) = 1024;
    HIDWORD(v49.__r_.__value_.__r.__words[2]) = a4;
    *v50 = 1024;
    *&v50[2] = a6;
    _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "Delete artwork_token: pid=%lld entity_type=%d source=%d type=%d", &v49, 0x1Eu);
  }

  v15 = *(a1 + 16);
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v48[0] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
  v48[1] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v19 = a2;
  v48[2] = v18;
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v48[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  v43[0] = 0;
  LODWORD(v15) = [v15 executeUpdate:@"DELETE FROM artwork_token WHERE artwork_source_type = ? AND artwork_type = ? AND entity_pid = ? AND entity_type = ?" withParameters:v21 error:v43];
  v22 = v43[0];

  v23 = v19;
  if (v15)
  {
    v30 = *(a1 + 712);
    v31 = *(a1 + 720);
    if (v30 >= v31)
    {
      v33 = *(a1 + 704);
      v34 = v30 - v33;
      v35 = (v30 - v33) >> 4;
      v36 = v35 + 1;
      if ((v35 + 1) >> 60)
      {
        std::vector<long long>::__throw_length_error[abi:ne200100]();
      }

      v37 = v31 - v33;
      if (v37 >> 3 > v36)
      {
        v36 = v37 >> 3;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF0)
      {
        v38 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        if (!(v38 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v39 = v35;
      v40 = (16 * v35);
      *v40 = v23;
      v40[1] = a6;
      v32 = 16 * v35 + 16;
      v41 = &v40[-2 * v39];
      memcpy(v41, v33, v34);
      *(a1 + 704) = v41;
      *(a1 + 712) = v32;
      *(a1 + 720) = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v30 = v19;
      *(v30 + 1) = a6;
      v32 = (v30 + 16);
    }

    *(a1 + 712) = v32;
    return 1;
  }

  else
  {
    v24 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v49.__r_.__value_.__l.__data_) = 134217984;
      *(v49.__r_.__value_.__r.__words + 4) = v19;
      _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_ERROR, "failed to update artwork_token entry for track. track_pid=%lld", &v49, 0xCu);
    }

    return 0;
  }
}

void sub_22D53C8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void ML3ImportSession::_getComposerInfo(void *a1, uint64_t a2, void *a3)
{
  v164 = *MEMORY[0x277D85DE8];
  v137 = 0;
  v138 = &v137;
  v139 = 0x4012000000;
  v140 = __Block_byref_object_copy__512;
  v141 = __Block_byref_object_dispose__513;
  v142 = "";
  v143 = 0;
  v144 = 0;
  v131 = 0;
  v132 = &v131;
  v133 = 0x3032000000;
  v134 = __Block_byref_object_copy__413;
  v135 = __Block_byref_object_dispose__414;
  v136 = 0;
  v124 = 0;
  v125 = &v124;
  v126 = 0x4812000000;
  v127 = __Block_byref_object_copy__415;
  v128 = __Block_byref_object_dispose__416;
  v129 = "";
  (*(**a3 + 24))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v130, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v130 = *&buf[16];
  }

  v117 = 0;
  v118 = &v117;
  v119 = 0x4812000000;
  v120 = __Block_byref_object_copy__415;
  v121 = __Block_byref_object_dispose__416;
  v122 = "";
  (*(**a3 + 24))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__p, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    __p = *&buf[16];
  }

  v5 = (*(**a3 + 32))(*a3, 167772178);
  v6 = *a3;
  v101 = v5;
  if (*(*a3 + 16) == 1 && (*(v6 + 17) & 1) == 0)
  {
    v12 = *(v6 + 8);
    v13 = *(a2 + 16);
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
    v160 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:1];
    v16 = [v13 executeQuery:@"SELECT composer_pid FROM item WHERE ROWID = ?" withParameters:v15];

    v17 = [v16 objectForFirstRowAndColumn];
    if ([v17 longLongValue])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      *&buf[24] = 0;
      v18 = (*(**a3 + 56))(*a3, 167772165);
      v19 = (*(**a3 + 56))(*a3, 167772171);
      v20 = *(a2 + 16);
      v159 = v17;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v159 count:1];
      v22 = [v20 executeQuery:@"SELECT composer withParameters:{sort_composer, representative_item_pid, grouping_key, sync_id FROM composer WHERE composer_pid=?", v21}];
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3321888768;
      v104[2] = ___ZN16ML3ImportSession16_getComposerInfoENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke;
      v104[3] = &unk_284088588;
      v115 = v18;
      v116 = v19;
      v106 = &v124;
      v107 = &v117;
      v108 = buf;
      v109 = &v131;
      v24 = *a3;
      v23 = a3[1];
      v111 = a2;
      v112 = v24;
      v113 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v110 = &v137;
      v105 = v17;
      v114 = v12;
      [v22 enumerateRowsWithBlock:v104];

      if (v113)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v113);
      }

      _Block_object_dispose(buf, 8);
    }

    v11 = v101;
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = ML3CPPBridgeString(v125 + 48, 0);
    v9 = [v7 groupingKeyForString:v8];
    v10 = v132[5];
    v132[5] = v9;

    v11 = v101;
    if (![v132[5] length])
    {
      *a1 = 0;
      a1[1] = 0;
      goto LABEL_106;
    }
  }

  if (!v138[6] && [v132[5] length])
  {
    v29 = v132[5];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    *&buf[24] = __Block_byref_object_copy__512;
    *&buf[32] = __Block_byref_object_dispose__513;
    v152 = "";
    v154 = 0;
    v153 = 0;
    if (v11)
    {
      v30 = *(a2 + 944);
      if (v30)
      {
        v31 = vcnt_s8(v30);
        v31.i16[0] = vaddlv_u8(v31);
        if (v31.u32[0] > 1uLL)
        {
          v32 = v11;
          if (v11 >= *&v30)
          {
            v32 = v11 % *&v30;
          }
        }

        else
        {
          v32 = (*&v30 - 1) & v11;
        }

        v53 = *(*(a2 + 936) + 8 * v32);
        if (v53)
        {
          for (i = *v53; i; i = *i)
          {
            v55 = i[1];
            if (v55 == v11)
            {
              if (i[2] == v11)
              {
                v98 = i[3];
                v97 = i[4];
                if (v97)
                {
                  atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
                  v99 = v154;
                  v153 = v98;
                  v154 = v97;
                  if (v99)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v99);
                  }
                }

                else
                {
                  v153 = i[3];
                  v154 = 0;
                }

                break;
              }
            }

            else
            {
              if (v31.u32[0] > 1uLL)
              {
                if (v55 >= *&v30)
                {
                  v55 %= *&v30;
                }
              }

              else
              {
                v55 &= *&v30 - 1;
              }

              if (v55 != v32)
              {
                break;
              }
            }
          }
        }
      }
    }

    if (v29 && !*(*&buf[8] + 48))
    {
      ML3CPPStringFromData(&v145, v29);
      v56 = std::__string_hash<char>::operator()[abi:ne200100](&v145);
      v57 = *(a2 + 1184);
      if (!*&v57)
      {
        goto LABEL_127;
      }

      v58 = v56;
      v59 = vcnt_s8(v57);
      v59.i16[0] = vaddlv_u8(v59);
      v60 = v59.u32[0];
      if (v59.u32[0] > 1uLL)
      {
        v61 = v56;
        if (v56 >= *&v57)
        {
          v61 = v56 % *&v57;
        }
      }

      else
      {
        v61 = (*&v57 - 1) & v56;
      }

      v79 = *(*(a2 + 1176) + 8 * v61);
      if (v79)
      {
        v80 = *v79;
        if (*v79)
        {
          do
          {
            v81 = v80[1];
            if (v81 == v58)
            {
              if (std::equal_to<std::string>::operator()[abi:ne200100](v80 + 2, &v145))
              {
                break;
              }
            }

            else
            {
              if (v60 > 1)
              {
                if (v81 >= *&v57)
                {
                  v81 %= *&v57;
                }
              }

              else
              {
                v81 &= *&v57 - 1;
              }

              if (v81 != v61)
              {
                goto LABEL_127;
              }
            }

            v80 = *v80;
          }

          while (v80);
        }
      }

      else
      {
LABEL_127:
        v80 = 0;
      }

      if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v145.__r_.__value_.__l.__data_);
      }

      if (v80)
      {
        v82 = *&buf[8];
        v84 = v80[5];
        v83 = v80[6];
        if (v83)
        {
          atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
        }

        v85 = *(v82 + 56);
        *(v82 + 48) = v84;
        *(v82 + 56) = v83;
        if (v85)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v85);
        }
      }
    }

    v86 = *&buf[8];
    v87 = *(*&buf[8] + 48);
    if (v87)
    {
      goto LABEL_146;
    }

    v88 = *(a2 + 16);
    if (v29 && v101)
    {
      v89 = [MEMORY[0x277CCABB0] numberWithLongLong:v101];
      v161 = v89;
      v90 = [MEMORY[0x277CCABB0] numberWithLongLong:v101];
      v162 = v90;
      v163 = v29;
      v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v161 count:3];
      v92 = [v88 executeQuery:@"SELECT composer withParameters:{sort_composer, ROWID, IFNULL(sort_composer, ML3SortString(composer)), sync_id FROM composer WHERE (ROWID = ? OR sync_id = ?) OR grouping_key = ?", v91}];
    }

    else
    {
      if (v29)
      {
        v161 = v29;
        v89 = [MEMORY[0x277CBEA60] arrayWithObjects:&v161 count:1];
        v93 = [v88 executeQuery:@"SELECT composer withParameters:{sort_composer, ROWID, IFNULL(sort_composer, ML3SortString(composer)), sync_id FROM composer WHERE grouping_key = (?)", v89}];
LABEL_143:

        if (v93)
        {
          v145.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
          v145.__r_.__value_.__l.__size_ = 3221225472;
          v145.__r_.__value_.__r.__words[2] = ___ZN16ML3ImportSession24_getExistingComposerInfoEP6NSDatax_block_invoke;
          v146 = &unk_278765250;
          v148 = buf;
          v149 = a2;
          v147 = v29;
          v150 = v101;
          [v93 enumerateRowsWithBlock:&v145];
        }

        v86 = *&buf[8];
        v87 = *(*&buf[8] + 48);
LABEL_146:
        v94 = *(v86 + 56);
        if (v94)
        {
          atomic_fetch_add_explicit((v94 + 8), 1uLL, memory_order_relaxed);
        }

        _Block_object_dispose(buf, 8);
        if (v154)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v154);
        }

        *&v95 = v87;
        *(&v95 + 1) = v94;
        v96 = v138[7];
        *(v138 + 3) = v95;
        v11 = v101;
        if (v96)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v96);
        }

        goto LABEL_21;
      }

      v89 = [MEMORY[0x277CCABB0] numberWithLongLong:v101];
      v161 = v89;
      v90 = [MEMORY[0x277CCABB0] numberWithLongLong:v101];
      v162 = v90;
      v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v161 count:2];
      v92 = [v88 executeQuery:@"SELECT composer withParameters:{sort_composer, ROWID, IFNULL(sort_composer, ML3SortString(composer)), sync_id FROM composer WHERE (ROWID = ? OR sync_id = ?)", v91}];
    }

    v93 = v92;

    goto LABEL_143;
  }

LABEL_21:
  if (!v138[6])
  {
    if ([v132[5] length])
    {
      v33 = (*(**a3 + 32))(*a3, 16777217);
      MLMediaTypeByStandardizingMediaType(v33);
      IntegerUUID = v11;
      if (!v11)
      {
        IntegerUUID = ML3CreateIntegerUUID();
      }

      v35 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v125 + 48;
        if (v125[71] < 0)
        {
          v36 = *v36;
        }

        v37 = &v118[2];
        if (SHIBYTE(v118[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v37 = v37->__words[0];
        }

        *buf = 134218498;
        *&buf[4] = IntegerUUID;
        *&buf[12] = 2082;
        *&buf[14] = v36;
        *&buf[22] = 2082;
        *&buf[24] = v37;
        _os_log_impl(&dword_22D2FA000, v35, OS_LOG_TYPE_DEFAULT, "creating new composer entry: pid=%lld, name='%{public}s', sortName='%{public}s'", buf, 0x20u);
      }

      ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(a2, &v118[2], (v125 + 48));
      operator new();
    }

    goto LABEL_104;
  }

  v25 = *(a2 + 32);
  PropertyIndex = ML3TrackRulesGetPropertyIndex(10, 167772171);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__specialRules + 56 * PropertyIndex + 4 * v25) == -1)
  {
    goto LABEL_93;
  }

  v27 = v118;
  v28 = SHIBYTE(v118[2].__r_.__value_.__r.__words[2]);
  if (v28 < 0)
  {
    if (!v118[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_57;
    }
  }

  else if (!*(&v118[2].__r_.__value_.__s + 23))
  {
    goto LABEL_57;
  }

  v38 = v138[6];
  if (v28 >= 0)
  {
    size = SHIBYTE(v118[2].__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v118[2].__r_.__value_.__l.__size_;
  }

  v40 = *(v38 + 55);
  v41 = v40;
  if ((v40 & 0x80u) != 0)
  {
    v40 = *(v38 + 40);
  }

  if (size != v40 || (v28 >= 0 ? (data = v118 + 2) : (data = v118[2].__r_.__value_.__l.__data_), (v45 = *(v38 + 32), v43 = (v38 + 32), v44 = v45, v41 >= 0) ? (v46 = v43) : (v46 = v44), memcmp(data, v46, size)))
  {
LABEL_64:
    v49 = a3[1];
    v103[0] = *a3;
    v103[1] = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(a2, v103, 0xA00000Bu);
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    if ((shouldPreserveTrackProperty & 1) == 0)
    {
      v51 = SHIBYTE(v118[2].__r_.__value_.__r.__words[2]);
      if ((v51 & 0x8000000000000000) != 0)
      {
        v51 = v118[2].__r_.__value_.__l.__size_;
      }

      v52 = *(a2 + 16);
      if (v51)
      {
        ML3CPPBridgeString(&v118[2], 1);
      }

      else
      {
        [MEMORY[0x277CBEB68] null];
      }
      v62 = ;
      v158[0] = v62;
      v63 = [MEMORY[0x277CCABB0] numberWithLongLong:*v138[6]];
      v158[1] = v63;
      v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:2];
      [v52 executeUpdate:@"UPDATE composer SET sort_composer = ? WHERE ROWID = ?" withParameters:v64 error:0];

      std::string::operator=((v138[6] + 32), v118 + 2);
      v65 = ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(a2, &v118[2], (v125 + 48));
      v66 = v138[6];
      *(v66 + 56) = v65;
      *(v66 + 64) = v67;
      v68 = *(a2 + 16);
      v69 = [MEMORY[0x277CCABB0] numberWithLongLong:v65];
      v157[0] = v69;
      v70 = [MEMORY[0x277CCABB0] numberWithInteger:*(v138[6] + 64)];
      v157[1] = v70;
      v71 = [MEMORY[0x277CCABB0] numberWithLongLong:*v138[6]];
      v157[2] = v71;
      v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v157 count:3];
      [v68 executeUpdate:@"UPDATE item SET composer_order=? withParameters:composer_order_section=? WHERE composer_pid=?" error:{v72, 0}];
    }

    goto LABEL_93;
  }

LABEL_57:
  if ((v28 & 0x80000000) != 0)
  {
    if (!v27[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_61;
    }
  }

  else if (!v28)
  {
LABEL_61:
    v47 = v138[6];
    v48 = *(v47 + 55);
    if (v48 < 0)
    {
      v48 = *(v47 + 40);
    }

    if (!v48)
    {
      goto LABEL_93;
    }

    goto LABEL_64;
  }

LABEL_93:
  if (v101 && v101 != *(v138[6] + 72))
  {
    v73 = *(a2 + 32);
    v74 = ML3TrackRulesGetPropertyIndex(20, 335544328);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    if (*(__composerRules + 56 * v74 + 4 * v73) != -1)
    {
      v75 = *a3;
      v76 = a3[1];
      v102[0] = v75;
      v102[1] = v76;
      if (v76)
      {
        atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v77 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v102, 0x14000008u);
      if (v76)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v76);
      }

      if ((v77 & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v145, "UPDATE composer SET sync_id = ? WHERE ROWID = ?");
        *buf = v101;
        *&buf[24] = 0;
        buf[32] = 1;
        v152 = *v138[6];
        v155 = 0;
        v156 = 1;
        v162 = 0;
        v163 = 0;
        v161 = 0;
        std::vector<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>>::__init_with_size[abi:ne200100]<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*,std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*>();
      }
    }
  }

LABEL_104:
  v78 = v138[7];
  *a1 = v138[6];
  a1[1] = v78;
  if (v78)
  {
    atomic_fetch_add_explicit((v78 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_106:
  _Block_object_dispose(&v117, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v124, 8);
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v131, 8);

  _Block_object_dispose(&v137, 8);
  if (v144)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v144);
  }
}

void sub_22D53DCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a72, 8);
  if (STACK[0x228])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x228]);
  }

  _Block_object_dispose(&a30, 8);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a42, 8);
  if (a53 < 0)
  {
    operator delete(a48);
  }

  _Block_object_dispose(&a54, 8);

  _Block_object_dispose(&a60, 8);
  if (a67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a67);
  }

  _Unwind_Resume(a1);
}

void ML3ImportSession::_getDefaultEmptyComposer(ML3ImportSession *this)
{
  {
    __cxa_atexit(std::shared_ptr<ML3ComposerData>::~shared_ptr[abi:ne200100], &ML3ImportSession::_getDefaultEmptyComposer(void)::__emptyComposerData, &dword_22D2FA000);
  }

  if (ML3ImportSession::_getDefaultEmptyComposer(void)::onceToken != -1)
  {
    dispatch_once(&ML3ImportSession::_getDefaultEmptyComposer(void)::onceToken, &__block_literal_global_22977);
  }

  v2 = qword_27D9FD2B0;
  *this = ML3ImportSession::_getDefaultEmptyComposer(void)::__emptyComposerData;
  *(this + 1) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void ML3ImportSession::_getGenreInfo(void *a1, uint64_t a2, void *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  (*(**a3 + 24))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__str, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    __str = *&buf[16];
  }

  v5 = *(a2 + 8);
  v6 = ML3CPPBridgeString(&__str, 0);
  v66 = [v5 groupingKeyForString:v6];

  v7 = (*(**a3 + 32))(*a3, 167772179);
  if ([v66 length])
  {
    v8 = v66;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    *&buf[24] = __Block_byref_object_copy__533;
    *&buf[32] = __Block_byref_object_dispose__534;
    v77 = "";
    v78 = 0;
    v79 = 0;
    if (v7)
    {
      v9 = *(a2 + 904);
      if (v9)
      {
        v10 = vcnt_s8(v9);
        v10.i16[0] = vaddlv_u8(v10);
        if (v10.u32[0] > 1uLL)
        {
          v11 = v7;
          if (v7 >= *&v9)
          {
            v11 = v7 % *&v9;
          }
        }

        else
        {
          v11 = (*&v9 - 1) & v7;
        }

        v12 = *(*(a2 + 896) + 8 * v11);
        if (v12)
        {
          for (i = *v12; i; i = *i)
          {
            v14 = i[1];
            if (v14 == v7)
            {
              if (i[2] == v7)
              {
                v63 = i[3];
                v62 = i[4];
                if (v62)
                {
                  atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
                  v64 = v79;
                  v78 = v63;
                  v79 = v62;
                  if (v64)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
                  }
                }

                else
                {
                  v78 = i[3];
                  v79 = 0;
                }

                break;
              }
            }

            else
            {
              if (v10.u32[0] > 1uLL)
              {
                if (v14 >= *&v9)
                {
                  v14 %= *&v9;
                }
              }

              else
              {
                v14 &= *&v9 - 1;
              }

              if (v14 != v11)
              {
                break;
              }
            }
          }
        }
      }
    }

    if (v8 && !*(*&buf[8] + 48))
    {
      ML3CPPStringFromData(&v70, v8);
      v15 = std::__string_hash<char>::operator()[abi:ne200100](&v70);
      v16 = *(a2 + 1224);
      if (!*&v16)
      {
        goto LABEL_42;
      }

      v17 = v15;
      v18 = vcnt_s8(v16);
      v18.i16[0] = vaddlv_u8(v18);
      v19 = v18.u32[0];
      if (v18.u32[0] > 1uLL)
      {
        v20 = v15;
        if (v15 >= *&v16)
        {
          v20 = v15 % *&v16;
        }
      }

      else
      {
        v20 = (*&v16 - 1) & v15;
      }

      v21 = *(*(a2 + 1216) + 8 * v20);
      if (v21)
      {
        v22 = *v21;
        if (*v21)
        {
          do
          {
            v23 = v22[1];
            if (v23 == v17)
            {
              if (std::equal_to<std::string>::operator()[abi:ne200100](v22 + 2, &v70))
              {
                break;
              }
            }

            else
            {
              if (v19 > 1)
              {
                if (v23 >= *&v16)
                {
                  v23 %= *&v16;
                }
              }

              else
              {
                v23 &= *&v16 - 1;
              }

              if (v23 != v20)
              {
                goto LABEL_42;
              }
            }

            v22 = *v22;
          }

          while (v22);
        }
      }

      else
      {
LABEL_42:
        v22 = 0;
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (v22)
      {
        v24 = *&buf[8];
        v26 = v22[5];
        v25 = v22[6];
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
        }

        v27 = *(v24 + 56);
        *(v24 + 48) = v26;
        *(v24 + 56) = v25;
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }
      }
    }

    v28 = *&buf[8];
    v29 = *(*&buf[8] + 48);
    if (v29)
    {
      goto LABEL_60;
    }

    if (v8 && v7)
    {
      v30 = *(a2 + 16);
      v31 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
      v83[0].super.isa = v31;
      v32 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
      v83[1].super.isa = v32;
      v84 = v8;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];
      v34 = [v30 executeQuery:@"SELECT genre withParameters:{ROWID, sync_id FROM genre WHERE (ROWID=? OR sync_id=?) OR grouping_key = (?)", v33}];
    }

    else
    {
      if (v8)
      {
        v36 = *(a2 + 16);
        v83[0].super.isa = v8;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];
        v35 = [v36 executeQuery:@"SELECT genre withParameters:{ROWID, sync_id FROM genre WHERE grouping_key = (?)", v31}];
LABEL_57:

        if (v35)
        {
          v70.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
          v70.__r_.__value_.__l.__size_ = 3221225472;
          v70.__r_.__value_.__r.__words[2] = ___ZN16ML3ImportSession21_getExistingGenreInfoEP6NSDatax_block_invoke;
          v71 = &unk_278765250;
          v73 = buf;
          v74 = a2;
          v72 = v8;
          v75 = v7;
          [v35 enumerateRowsWithBlock:&v70];
        }

        goto LABEL_59;
      }

      if (!v7)
      {
LABEL_59:
        v28 = *&buf[8];
        v29 = *(*&buf[8] + 48);
LABEL_60:
        v37 = *(v28 + 56);
        if (v37)
        {
          atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
        }

        _Block_object_dispose(buf, 8);
        if (v79)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v79);
        }

        *&v38 = v29;
        *(&v38 + 1) = v37;
        *a1 = v38;
        if (!v29)
        {
          IntegerUUID = v7;
          if (!v7)
          {
            IntegerUUID = ML3CreateIntegerUUID();
          }

          v57 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            p_str = &__str;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            *buf = 134218242;
            *&buf[4] = IntegerUUID;
            *&buf[12] = 2082;
            *&buf[14] = p_str;
            _os_log_impl(&dword_22D2FA000, v57, OS_LOG_TYPE_DEFAULT, "creating new genre entry: pid=%lld, name='%{public}s'", buf, 0x16u);
          }

          (*(**a3 + 144))(buf);
          if ((buf[39] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v70, *&buf[16], *&buf[24]);
          }

          else
          {
            v70 = *&buf[16];
          }

          v59 = ML3CPPBridgeString(&v70, 1);
          if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v70.__r_.__value_.__l.__data_);
          }

          *buf = &unk_28408AC60;
          if ((buf[39] & 0x80000000) != 0)
          {
            operator delete(*&buf[16]);
          }

          v60 = [*(a2 + 24) objectForKeyedSubscript:v59];
          [v60 ML3NameOrderValue];

          operator new();
        }

        v39 = *(a2 + 32);
        PropertyIndex = ML3TrackRulesGetPropertyIndex(10, 167772166);
        if (_ML3InitializeTrackRulesIfNeeded___once != -1)
        {
          dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
        }

        if (*(__specialRules + 56 * PropertyIndex + 4 * v39) != -1)
        {
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __str.__r_.__value_.__l.__size_;
          }

          v42 = *(v29 + 31);
          v43 = v42;
          if ((v42 & 0x80u) != 0)
          {
            v42 = *(v29 + 16);
          }

          if (size != v42 || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v44 = &__str) : (v44 = __str.__r_.__value_.__r.__words[0]), v43 >= 0 ? (v45 = (v29 + 8)) : (v45 = *(v29 + 8)), memcmp(v44, v45, size)))
          {
            v46 = a3[1];
            v68[0] = *a3;
            v68[1] = v46;
            if (v46)
            {
              atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(a2, v68, 0xA000006u);
            if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v46);
            }

            if ((shouldPreserveTrackProperty & 1) == 0)
            {
              v48 = *(a2 + 16);
              v49 = ML3CPPBridgeString(&__str, 1);
              v82[0] = v49;
              v50 = [MEMORY[0x277CCABB0] numberWithLongLong:*v29];
              v82[1] = v50;
              v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
              [v48 executeUpdate:@"UPDATE genre SET genre = ? WHERE ROWID = ?" withParameters:v51 error:0];

              std::string::operator=((v29 + 8), &__str);
            }
          }
        }

        if (v7 && v7 != *(v29 + 48))
        {
          v52 = *(a2 + 32);
          v53 = ML3TrackRulesGetPropertyIndex(21, 352321543);
          if (_ML3InitializeTrackRulesIfNeeded___once != -1)
          {
            dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
          }

          if (*(__genreRules + 56 * v53 + 4 * v52) != -1)
          {
            v54 = a3[1];
            v67[0] = *a3;
            v67[1] = v54;
            if (v54)
            {
              atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v55 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v67, 0x15000007u);
            if (v54)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v54);
            }

            if ((v55 & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(&v70, "UPDATE genre SET sync_id = ? WHERE ROWID = ?");
              *buf = v7;
              *&buf[24] = 0;
              buf[32] = 1;
              v77 = *v29;
              v80 = 0;
              v81 = 1;
              v83[1].super.isa = 0;
              v84 = 0;
              v83[0].super.isa = 0;
              std::vector<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>>::__init_with_size[abi:ne200100]<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*,std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*>();
            }
          }
        }

        goto LABEL_114;
      }

      v61 = *(a2 + 16);
      v31 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
      v83[0].super.isa = v31;
      v32 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
      v83[1].super.isa = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:2];
      v34 = [v61 executeQuery:@"SELECT genre withParameters:{ROWID, sync_id FROM genre WHERE (ROWID=? OR sync_id=?)", v33}];
    }

    v35 = v34;

    goto LABEL_57;
  }

LABEL_114:

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_22D53F01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, std::__shared_weak_count *a47)
{
  _Block_object_dispose(&a37, 8);
  if (a47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a47);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  v52 = *(a13 + 8);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  _Unwind_Resume(a1);
}

void ML3ImportSession::_getDefaultEmptyGenre(ML3ImportSession *this)
{
  {
    __cxa_atexit(std::shared_ptr<ML3GenreData>::~shared_ptr[abi:ne200100], &ML3ImportSession::_getDefaultEmptyGenre(void)::__emptyGenreData, &dword_22D2FA000);
  }

  if (ML3ImportSession::_getDefaultEmptyGenre(void)::onceToken != -1)
  {
    dispatch_once(&ML3ImportSession::_getDefaultEmptyGenre(void)::onceToken, &__block_literal_global_546);
  }

  v2 = qword_27D9FD2D0;
  *this = ML3ImportSession::_getDefaultEmptyGenre(void)::__emptyGenreData;
  *(this + 1) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void ML3ImportSession::_getArtistInfo(void *a1, uint64_t a2, uint64_t **a3)
{
  v268 = *MEMORY[0x277D85DE8];
  v239 = 0;
  v240 = &v239;
  v241 = 0x4012000000;
  v242 = __Block_byref_object_copy__410;
  v243 = __Block_byref_object_dispose__411;
  v244 = "";
  v246 = 0;
  v245 = 0;
  v233 = 0;
  v234 = &v233;
  v235 = 0x3032000000;
  v236 = __Block_byref_object_copy__413;
  v237 = __Block_byref_object_dispose__414;
  v238 = 0;
  v4 = (*(**a3 + 32))(*a3, 167772180);
  v226 = 0;
  v227 = &v226;
  v228 = 0x4812000000;
  v229 = __Block_byref_object_copy__415;
  v230 = __Block_byref_object_dispose__416;
  v231 = "";
  (*(**a3 + 24))(&v221);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v232, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    v221 = &unk_28408AC60;
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v232 = __s;
  }

  v221 = 0;
  v222 = &v221;
  __s.__r_.__value_.__r.__words[0] = 0x4812000000;
  __s.__r_.__value_.__l.__size_ = __Block_byref_object_copy__415;
  __s.__r_.__value_.__r.__words[2] = __Block_byref_object_dispose__416;
  v224 = "";
  (*(**a3 + 168))(&v216);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v225, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v216 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v225 = __p;
  }

  v216 = 0;
  v217 = &v216;
  __p.__r_.__value_.__r.__words[0] = 0x4812000000;
  __p.__r_.__value_.__l.__size_ = __Block_byref_object_copy__415;
  __p.__r_.__value_.__r.__words[2] = __Block_byref_object_dispose__416;
  v219 = "";
  (*(**a3 + 24))(&v211);
  if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v220, v213.__r_.__value_.__l.__data_, v213.__r_.__value_.__l.__size_);
    v211 = &unk_28408AC60;
    if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v213.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v220 = v213;
  }

  v211 = 0;
  v212 = &v211;
  v213.__r_.__value_.__r.__words[0] = 0x4812000000;
  v213.__r_.__value_.__l.__size_ = __Block_byref_object_copy__415;
  v213.__r_.__value_.__r.__words[2] = __Block_byref_object_dispose__416;
  v214 = "";
  (*(**a3 + 176))(buf);
  if ((v265[7] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v215, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((v265[7] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    *&v215.__r_.__value_.__l.__data_ = *&buf[16];
    v215.__r_.__value_.__r.__words[2] = *v265;
  }

  v5 = (*(**a3 + 32))(*a3, 16777217);
  v181 = v4;
  v6 = MLMediaTypeByStandardizingMediaType(v5);
  v7 = (v6 & 8) == 0;
  v8 = (*(**a3 + 32))(*a3, 167772176);
  v9 = *a3;
  v10 = **a3;
  v11 = (*a3)[1];
  v210 = v11;
  v183 = (*(v10 + 32))(v9, 318767118);
  v184 = v8;
  if (*(*a3 + 16) == 1 && (*(*a3 + 17) & 1) == 0)
  {
    v18 = *(a2 + 16);
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
    v257 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v257 count:1];
    v21 = [v18 executeQuery:@"SELECT item_artist_pid FROM item WHERE ROWID = ?" withParameters:v20];

    v22 = [v21 objectForFirstRowAndColumn];
    if ([v22 longLongValue])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      *&buf[24] = 0;
      v180 = v21;
      v23 = (*(**a3 + 56))(*a3, 167772161);
      v24 = (*(**a3 + 56))(*a3, 167772167);
      v25 = (*(**a3 + 56))(*a3, 167772162);
      v26 = (*(**a3 + 56))(*a3, 167772168);
      v27 = *(a2 + 16);
      v256 = v22;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v256 count:1];
      v29 = [v27 executeQuery:@"SELECT item_artist withParameters:{sort_item_artist, series_name, sort_series_name, representative_item_pid, store_id, grouping_key, sync_id, classical_experience_available FROM item_artist WHERE item_artist_pid=?", v28}];
      v192[0] = MEMORY[0x277D85DD0];
      v192[1] = 3321888768;
      v192[2] = ___ZN16ML3ImportSession14_getArtistInfoENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke;
      v192[3] = &unk_284088550;
      v205 = v23;
      v206 = v24;
      v194 = &v226;
      v195 = &v221;
      v207 = v25;
      v208 = v26;
      v196 = &v216;
      v197 = &v211;
      v198 = buf;
      v199 = &v233;
      v209 = v7;
      v31 = *a3;
      v30 = a3[1];
      v201 = a2;
      v202 = v31;
      v203 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v200 = &v239;
      v193 = v22;
      v204 = v11;
      v21 = v180;
      [v29 enumerateRowsWithBlock:v192];

      if (v203)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v203);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v32 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v11;
        _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_ERROR, "No existing artist PID for update item %lli", buf, 0xCu);
      }
    }

    v17 = v184;
  }

  else
  {
    v12 = *(a2 + 8);
    v13 = ML3CPPBridgeString(&v227[2], 0);
    if ((v6 & 8) != 0)
    {
      v14 = &stru_28408B690;
    }

    else
    {
      v14 = ML3CPPBridgeString(v217 + 48, 0);
    }

    v15 = [v12 artistGroupingKeyForArtistName:v13 seriesName:v14];
    v16 = v234[5];
    v234[5] = v15;

    if ((v6 & 8) == 0)
    {
    }

    v17 = v184;
    if (!([v234[5] length] | v184))
    {
      *a1 = 0;
      a1[1] = 0;
      goto LABEL_205;
    }
  }

  if (!v240[6] && [v234[5] length])
  {
    v55 = v234[5];
    v56 = buf;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    *&buf[24] = __Block_byref_object_copy__410;
    *v265 = __Block_byref_object_dispose__411;
    *&v265[8] = "";
    *&v265[16] = 0;
    v266 = 0;
    if (v17)
    {
      v57 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a2 + 976), v17);
      if (v57)
      {
        v59 = v57[3];
        v58 = v57[4];
        if (v58)
        {
          atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
          v60 = v266;
          *&v265[16] = v59;
          v266 = v58;
          if (v60)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }
        }

        else
        {
          *&v265[16] = v57[3];
          v266 = 0;
        }

        v164 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v258.__r_.__value_.__l.__data_) = 134218240;
          *(v258.__r_.__value_.__r.__words + 4) = v55;
          WORD2(v258.__r_.__value_.__r.__words[1]) = 2048;
          *(&v258.__r_.__value_.__r.__words[1] + 6) = v17;
          _os_log_impl(&dword_22D2FA000, v164, OS_LOG_TYPE_DEFAULT, "Found artist with grouping key=%p, sourceID=%lld", &v258, 0x16u);
        }

        v56 = *&buf[8];
        v82 = *(*&buf[8] + 48) == 0;
        v17 = v184;
        if (!v55)
        {
LABEL_231:
          v170 = *(v56 + 6);
          if (v170)
          {
LABEL_239:
            v177 = *(v56 + 7);
            if (v177)
            {
              atomic_fetch_add_explicit((v177 + 8), 1uLL, memory_order_relaxed);
            }

            _Block_object_dispose(buf, 8);
            if (v266)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v266);
            }

            *&v178 = v170;
            *(&v178 + 1) = v177;
            v179 = v240[7];
            *(v240 + 3) = v178;
            if (v179)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v179);
            }

            goto LABEL_37;
          }

          if (v55 && v17)
          {
            v171 = [@"SELECT item_artist sort:series_name item:{sort_series_name, rowid, store_id, IFNULL(sort_item_artist, ML3SortString(item_artist)), IFNULL(IFNULL(sort_series_name, ML3SortString(series_name)), IFNULL(sort_item_artist, ML3SortString(item_artist))), sync_id, classical_experience_available FROM item_artist ", "stringByAppendingString:", @"WHERE (ROWID = ? OR sync_id = ?) OR grouping_key = ?"}artist];
            v172 = [MEMORY[0x277CCABB0] numberWithLongLong:v184];
            v267.__r_.__value_.__r.__words[0] = v172;
            v173 = [MEMORY[0x277CCABB0] numberWithLongLong:v184];
            v267.__r_.__value_.__l.__size_ = v173;
            v267.__r_.__value_.__r.__words[2] = v55;
            v174 = [MEMORY[0x277CBEA60] arrayWithObjects:&v267 count:3];
          }

          else
          {
            if (!v17)
            {
              if (v55)
              {
                v171 = [@"SELECT item_artist sort:series_name item:{sort_series_name, rowid, store_id, IFNULL(sort_item_artist, ML3SortString(item_artist)), IFNULL(IFNULL(sort_series_name, ML3SortString(series_name)), IFNULL(sort_item_artist, ML3SortString(item_artist))), sync_id, classical_experience_available FROM item_artist ", "stringByAppendingString:", @"WHERE grouping_key = ?"}artist];
                v267.__r_.__value_.__r.__words[0] = v55;
                v175 = [MEMORY[0x277CBEA60] arrayWithObjects:&v267 count:1];
              }

              else
              {
                v175 = 0;
                v171 = @"SELECT item_artist, sort_item_artist, series_name, sort_series_name, rowid, store_id, IFNULL(sort_item_artist, ML3SortString(item_artist)), IFNULL(IFNULL(sort_series_name, ML3SortString(series_name)), IFNULL(sort_item_artist, ML3SortString(item_artist))), sync_id, classical_experience_available FROM item_artist ";
              }

              goto LABEL_238;
            }

            v171 = [@"SELECT item_artist sort:series_name item:{sort_series_name, rowid, store_id, IFNULL(sort_item_artist, ML3SortString(item_artist)), IFNULL(IFNULL(sort_series_name, ML3SortString(series_name)), IFNULL(sort_item_artist, ML3SortString(item_artist))), sync_id, classical_experience_available FROM item_artist ", "stringByAppendingString:", @"WHERE(ROWID = ? OR sync_id = ?)"}artist];
            v172 = [MEMORY[0x277CCABB0] numberWithLongLong:v184];
            v267.__r_.__value_.__r.__words[0] = v172;
            v173 = [MEMORY[0x277CCABB0] numberWithLongLong:v184];
            v267.__r_.__value_.__l.__size_ = v173;
            v174 = [MEMORY[0x277CBEA60] arrayWithObjects:&v267 count:2];
          }

          v175 = v174;

LABEL_238:
          v176 = [*(a2 + 16) executeQuery:v171 withParameters:v175];
          v258.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
          v258.__r_.__value_.__l.__size_ = 3221225472;
          v258.__r_.__value_.__r.__words[2] = ___ZN16ML3ImportSession22_getExistingArtistInfoEP6NSDatax_block_invoke;
          v259 = &unk_278765250;
          v262 = a2;
          v261 = buf;
          v260 = v55;
          v263 = v184;
          [v176 enumerateRowsWithBlock:&v258];

          v56 = *&buf[8];
          v170 = *(*&buf[8] + 48);
          goto LABEL_239;
        }

LABEL_220:
        if (v82)
        {
          ML3CPPStringFromData(&v258, v55);
          v165 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a2 + 1096), &v258);
          if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v258.__r_.__value_.__l.__data_);
          }

          v56 = *&buf[8];
          if (v165)
          {
            v167 = v165[5];
            v166 = v165[6];
            if (v166)
            {
              atomic_fetch_add_explicit((v166 + 8), 1uLL, memory_order_relaxed);
            }

            v168 = *(v56 + 7);
            *(v56 + 6) = v167;
            *(v56 + 7) = v166;
            if (v168)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v168);
            }

            v169 = os_log_create("com.apple.amp.medialibrary", "Import");
            if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v258.__r_.__value_.__l.__data_) = 134217984;
              *(v258.__r_.__value_.__r.__words + 4) = v55;
              _os_log_impl(&dword_22D2FA000, v169, OS_LOG_TYPE_DEFAULT, "Found artist with grouping key=%p", &v258, 0xCu);
            }

            v56 = *&buf[8];
            v17 = v184;
          }
        }

        goto LABEL_231;
      }

      v56 = buf;
    }

    v82 = 1;
    if (!v55)
    {
      goto LABEL_231;
    }

    goto LABEL_220;
  }

LABEL_37:
  if (!v240[6])
  {
    if ([v234[5] length])
    {
      IntegerUUID = v184;
      if (!v184)
      {
        IntegerUUID = ML3CreateIntegerUUID();
      }

      v62 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = &v227[2];
        if (SHIBYTE(v227[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v63 = v63->__words[0];
        }

        v64 = v222 + 6;
        if (*(v222 + 71) < 0)
        {
          v64 = *v64;
        }

        v65 = v217 + 6;
        if (*(v217 + 71) < 0)
        {
          v65 = *v65;
        }

        v66 = v212 + 6;
        if (*(v212 + 71) < 0)
        {
          v66 = *v66;
        }

        *buf = 134219010;
        *&buf[4] = IntegerUUID;
        *&buf[12] = 2082;
        *&buf[14] = v63;
        *&buf[22] = 2082;
        *&buf[24] = v64;
        *v265 = 2082;
        *&v265[2] = v65;
        *&v265[10] = 2082;
        *&v265[12] = v66;
        _os_log_impl(&dword_22D2FA000, v62, OS_LOG_TYPE_DEFAULT, "creating new artist entry: pid=%lld, name='%{public}s', sortName='%{public}s', series='%{public}s', sortSeries='%{public}s'", buf, 0x34u);
      }

      ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(a2, (v222 + 6), &v227[2]);
      ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(a2, (v212 + 6), (v217 + 6));
      operator new();
    }

    goto LABEL_203;
  }

  v33 = *(a2 + 32);
  PropertyIndex = ML3TrackRulesGetPropertyIndex(10, 167772161);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__specialRules + 56 * PropertyIndex + 4 * v33) != -1)
  {
    v35 = v240[6];
    v36 = SHIBYTE(v227[2].__r_.__value_.__r.__words[2]);
    if (v36 >= 0)
    {
      size = HIBYTE(v227[2].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v227[2].__r_.__value_.__l.__size_;
    }

    v38 = *(v35 + 31);
    v39 = v38;
    if ((v38 & 0x80u) != 0)
    {
      v38 = *(v35 + 16);
    }

    if (size != v38 || (v36 >= 0 ? (data = v227 + 2) : (data = v227[2].__r_.__value_.__l.__data_), (v43 = *(v35 + 8), v41 = (v35 + 8), v42 = v43, v39 >= 0) ? (v44 = v41) : (v44 = v42), memcmp(data, v44, size)))
    {
      v45 = a3[1];
      v191[0] = *a3;
      v191[1] = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(a2, v191, 0xA000001u);
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      if ((shouldPreserveTrackProperty & 1) == 0)
      {
        v47 = *(a2 + 16);
        v48 = ML3CPPBridgeString(&v227[2], 1);
        v255[0] = v48;
        v49 = [MEMORY[0x277CCABB0] numberWithLongLong:*v240[6]];
        v255[1] = v49;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v255 count:2];
        [v47 executeUpdate:@"UPDATE item_artist SET item_artist = ? WHERE ROWID = ?" withParameters:v50 error:0];

        std::string::operator=((v240[6] + 8), v227 + 2);
      }
    }
  }

  v51 = *(a2 + 32);
  v52 = ML3TrackRulesGetPropertyIndex(10, 167772167);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__specialRules + 56 * v52 + 4 * v51) == -1)
  {
    goto LABEL_120;
  }

  v53 = v222;
  v54 = *(v222 + 71);
  if ((v54 & 0x8000000000000000) != 0)
  {
    if (!v222[7])
    {
      goto LABEL_100;
    }
  }

  else if (!*(v222 + 71))
  {
    goto LABEL_100;
  }

  v67 = v240[6];
  if ((v54 & 0x80000000) == 0)
  {
    v68 = *(v222 + 71);
  }

  else
  {
    v68 = v222[7];
  }

  v69 = *(v67 + 55);
  v70 = v69;
  if ((v69 & 0x80u) != 0)
  {
    v69 = *(v67 + 40);
  }

  if (v68 != v69)
  {
    goto LABEL_106;
  }

  v71 = (v54 & 0x80000000) == 0 ? v222 + 6 : v222[6];
  v74 = *(v67 + 32);
  v72 = v67 + 32;
  v73 = v74;
  v75 = (v70 >= 0 ? v72 : v73);
  if (memcmp(v71, v75, v68))
  {
    goto LABEL_106;
  }

LABEL_100:
  if ((v54 & 0x80000000) != 0)
  {
    v54 = v53[7];
  }

  if (!v54)
  {
    v76 = v240[6];
    v77 = *(v76 + 55);
    if (v77 < 0)
    {
      v77 = *(v76 + 40);
    }

    if (v77)
    {
LABEL_106:
      v78 = a3[1];
      v190[0] = *a3;
      v190[1] = v78;
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v79 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v190, 0xA000007u);
      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }

      if ((v79 & 1) == 0)
      {
        v80 = *(v222 + 71);
        if ((v80 & 0x8000000000000000) != 0)
        {
          v80 = v222[7];
        }

        v81 = *(a2 + 16);
        if (v80)
        {
          ML3CPPBridgeString(v222 + 48, 1);
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v83 = ;
        v254[0] = v83;
        v84 = [MEMORY[0x277CCABB0] numberWithLongLong:*v240[6]];
        v254[1] = v84;
        v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v254 count:2];
        [v81 executeUpdate:@"UPDATE item_artist SET sort_item_artist = ? WHERE ROWID = ?" withParameters:v85 error:0];

        std::string::operator=((v240[6] + 32), v222 + 2);
        v86 = ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(a2, (v222 + 6), &v227[2]);
        v87 = v240[6];
        *(v87 + 112) = v86;
        *(v87 + 120) = v88;
        v89 = *(a2 + 16);
        v90 = [MEMORY[0x277CCABB0] numberWithLongLong:v86];
        v253[0] = v90;
        v91 = [MEMORY[0x277CCABB0] numberWithInteger:*(v240[6] + 120)];
        v253[1] = v91;
        v92 = [MEMORY[0x277CCABB0] numberWithLongLong:*v240[6]];
        v253[2] = v92;
        v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v253 count:3];
        [v89 executeUpdate:@"UPDATE item SET item_artist_order=? withParameters:item_artist_order_section=? WHERE item_artist_pid=?" error:{v93, 0}];
      }
    }
  }

LABEL_120:
  v94 = *(a2 + 32);
  v95 = ML3TrackRulesGetPropertyIndex(10, 167772162);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__specialRules + 56 * v95 + 4 * v94) != -1)
  {
    v96 = v240[6];
    v97 = *(v217 + 71);
    if (v97 >= 0)
    {
      v98 = *(v217 + 71);
    }

    else
    {
      v98 = v217[7];
    }

    v99 = *(v96 + 79);
    v100 = v99;
    if ((v99 & 0x80u) != 0)
    {
      v99 = *(v96 + 64);
    }

    if (v98 != v99 || (v97 >= 0 ? (v101 = v217 + 6) : (v101 = v217[6]), (v104 = *(v96 + 56), v102 = (v96 + 56), v103 = v104, v100 >= 0) ? (v105 = v102) : (v105 = v103), memcmp(v101, v105, v98)))
    {
      v106 = a3[1];
      v189[0] = *a3;
      v189[1] = v106;
      if (v106)
      {
        atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v107 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v189, 0xA000002u);
      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v106);
      }

      if ((v107 & 1) == 0)
      {
        v108 = *(a2 + 16);
        v109 = ML3CPPBridgeString(v217 + 48, 1);
        v252[0] = v109;
        v110 = [MEMORY[0x277CCABB0] numberWithLongLong:*v240[6]];
        v252[1] = v110;
        v111 = [MEMORY[0x277CBEA60] arrayWithObjects:v252 count:2];
        [v108 executeUpdate:@"UPDATE item_artist SET series_name = ? WHERE ROWID = ?" withParameters:v111 error:0];

        std::string::operator=((v240[6] + 56), v217 + 2);
      }
    }
  }

  v112 = *(a2 + 32);
  v113 = ML3TrackRulesGetPropertyIndex(10, 167772168);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__specialRules + 56 * v113 + 4 * v112) == -1)
  {
    goto LABEL_179;
  }

  v114 = v212;
  v115 = *(v212 + 71);
  if ((v115 & 0x8000000000000000) != 0)
  {
    if (!v212[7])
    {
      goto LABEL_162;
    }
  }

  else if (!*(v212 + 71))
  {
    goto LABEL_162;
  }

  v116 = v240[6];
  if ((v115 & 0x80000000) == 0)
  {
    v117 = *(v212 + 71);
  }

  else
  {
    v117 = v212[7];
  }

  v118 = *(v116 + 103);
  v119 = v118;
  if ((v118 & 0x80u) != 0)
  {
    v118 = *(v116 + 88);
  }

  if (v117 == v118)
  {
    v120 = (v115 & 0x80000000) == 0 ? v212 + 6 : v212[6];
    v123 = *(v116 + 80);
    v121 = v116 + 80;
    v122 = v123;
    v124 = (v119 >= 0 ? v121 : v122);
    if (!memcmp(v120, v124, v117))
    {
LABEL_162:
      if ((v115 & 0x80000000) != 0)
      {
        v115 = v114[7];
      }

      if (v115)
      {
        goto LABEL_179;
      }

      v125 = v240[6];
      v126 = *(v125 + 103);
      if (v126 < 0)
      {
        v126 = *(v125 + 88);
      }

      if (!v126)
      {
        goto LABEL_179;
      }
    }
  }

  v127 = a3[1];
  v188[0] = *a3;
  v188[1] = v127;
  if (v127)
  {
    atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v128 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v188, 0xA000008u);
  if (v127)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v127);
  }

  if ((v128 & 1) == 0)
  {
    v129 = *(v212 + 71);
    if ((v129 & 0x8000000000000000) != 0)
    {
      v129 = v212[7];
    }

    v130 = *(a2 + 16);
    if (v129)
    {
      ML3CPPBridgeString(v212 + 48, 1);
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v131 = ;
    v251[0] = v131;
    v132 = [MEMORY[0x277CCABB0] numberWithLongLong:*v240[6]];
    v251[1] = v132;
    v133 = [MEMORY[0x277CBEA60] arrayWithObjects:v251 count:2];
    [v130 executeUpdate:@"UPDATE item_artist SET sort_series_name = ? WHERE ROWID = ?" withParameters:v133 error:0];

    std::string::operator=((v240[6] + 80), v212 + 2);
    v134 = ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(a2, (v212 + 6), (v217 + 6));
    v135 = v240[6];
    *(v135 + 128) = v134;
    *(v135 + 136) = v136;
    v137 = *(a2 + 16);
    v138 = [MEMORY[0x277CCABB0] numberWithLongLong:v134];
    v250[0] = v138;
    v139 = [MEMORY[0x277CCABB0] numberWithInteger:*(v240[6] + 136)];
    v250[1] = v139;
    v140 = [MEMORY[0x277CCABB0] numberWithLongLong:*v240[6]];
    v250[2] = v140;
    v141 = [MEMORY[0x277CBEA60] arrayWithObjects:v250 count:3];
    [v137 executeUpdate:@"UPDATE item SET series_name_order=? withParameters:series_name_order_section=? WHERE item_artist_pid=?" error:{v141, 0}];
  }

LABEL_179:
  if (v181)
  {
    v142 = v240[6];
    if (v181 != *(v142 + 104))
    {
      *(v142 + 104) = v181;
      v143 = *(a2 + 16);
      v144 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
      v249[0] = v144;
      v145 = [MEMORY[0x277CCABB0] numberWithLongLong:*v240[6]];
      v249[1] = v145;
      v146 = [MEMORY[0x277CBEA60] arrayWithObjects:v249 count:2];
      [v143 executeUpdate:@"UPDATE item_artist SET store_id = ? WHERE ROWID = ?" withParameters:v146 error:0];
    }
  }

  if (v184 && v184 != *(v240[6] + 144))
  {
    v147 = *(a2 + 32);
    v148 = ML3TrackRulesGetPropertyIndex(10, 167772176);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    if (*(__specialRules + 56 * v148 + 4 * v147) != -1)
    {
      v149 = a3[1];
      v187[0] = *a3;
      v187[1] = v149;
      if (v149)
      {
        atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v150 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v187, 0xA000010u);
      if (v149)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v149);
      }

      if ((v150 & 1) == 0)
      {
        v151 = *(a2 + 16);
        v152 = [MEMORY[0x277CCABB0] numberWithLongLong:v184];
        v248[0] = v152;
        v153 = [MEMORY[0x277CCABB0] numberWithLongLong:*v240[6]];
        v248[1] = v153;
        v154 = [MEMORY[0x277CBEA60] arrayWithObjects:v248 count:2];
        [v151 executeUpdate:@"UPDATE item_artist SET sync_id = ? WHERE ROWID = ?" withParameters:v154 error:0];

        *(v240[6] + 144) = v184;
      }
    }
  }

  if (*(v240[6] + 176) != (v183 != 0))
  {
    v155 = *(a2 + 32);
    v156 = ML3TrackRulesGetPropertyIndex(19, 318767118);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    if (*(__artistRules + 56 * v156 + 4 * v155) != -1)
    {
      v157 = a3[1];
      v186[0] = *a3;
      v186[1] = v157;
      if (v157)
      {
        atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v158 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v186, 0x1300000Eu);
      if (v157)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v157);
      }

      if ((v158 & 1) == 0)
      {
        v159 = *(a2 + 16);
        v160 = [MEMORY[0x277CCABB0] numberWithBool:v183 != 0];
        v247[0] = v160;
        v161 = [MEMORY[0x277CCABB0] numberWithLongLong:*v240[6]];
        v247[1] = v161;
        v162 = [MEMORY[0x277CBEA60] arrayWithObjects:v247 count:2];
        [v159 executeUpdate:@"UPDATE item_artist SET classical_experience_available = ? WHERE ROWID = ?" withParameters:v162 error:0];

        *(v240[6] + 144) = v184;
      }
    }
  }

LABEL_203:
  v163 = v240[7];
  *a1 = v240[6];
  a1[1] = v163;
  if (v163)
  {
    atomic_fetch_add_explicit((v163 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_205:
  _Block_object_dispose(&v211, 8);
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v215.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v216, 8);
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v220.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v221, 8);
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v225.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v226, 8);
  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v232.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v233, 8);

  _Block_object_dispose(&v239, 8);
  if (v246)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v246);
  }
}

void sub_22D541180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, int a62, __int16 a63)
{
  _Block_object_dispose((v78 - 208), 8);
  v80 = *(v78 - 152);
  if (v80)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v80);
  }

  _Block_object_dispose(&a54, 8);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a66, 8);
  if (a73 < 0)
  {
    operator delete(a72);
  }

  _Block_object_dispose(&a74, 8);
  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  _Block_object_dispose(&STACK[0x240], 8);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  _Block_object_dispose(&STACK[0x288], 8);

  _Block_object_dispose(&STACK[0x2B8], 8);
  if (STACK[0x2F0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2F0]);
  }

  _Unwind_Resume(a1);
}

void ML3ImportSession::_getAlbumArtistInfo(void *a1, uint64_t a2, void *a3)
{
  v218 = *MEMORY[0x277D85DE8];
  v188 = 0;
  v189 = &v188;
  v190 = 0x4012000000;
  v191 = __Block_byref_object_copy__410;
  v192 = __Block_byref_object_dispose__411;
  v193 = "";
  v195 = 0;
  v194 = 0;
  v182 = 0;
  v183 = &v182;
  v184 = 0x3032000000;
  v185 = __Block_byref_object_copy__413;
  v186 = __Block_byref_object_dispose__414;
  v187 = 0;
  v5 = (*(**a3 + 32))(*a3, 167772181);
  v175 = 0;
  v176 = &v175;
  v177 = 0x4812000000;
  v178 = __Block_byref_object_copy__415;
  v179 = __Block_byref_object_dispose__416;
  v180 = "";
  (*(**a3 + 152))(&v170);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v181, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v170 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v181 = __p;
  }

  v170 = 0;
  v171 = &v170;
  __p.__r_.__value_.__r.__words[0] = 0x4812000000;
  __p.__r_.__value_.__l.__size_ = __Block_byref_object_copy__415;
  __p.__r_.__value_.__r.__words[2] = __Block_byref_object_dispose__416;
  v173 = "";
  (*(**a3 + 160))(buf);
  if (SBYTE7(v212) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if (SBYTE7(v212) < 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    *&v174.__r_.__value_.__l.__data_ = *&buf[16];
    v174.__r_.__value_.__r.__words[2] = v212;
  }

  (*(**a3 + 24))(buf);
  v148 = v5;
  if (SBYTE7(v212) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if (SBYTE7(v212) < 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    *&__str.__r_.__value_.__l.__data_ = *&buf[16];
    __str.__r_.__value_.__r.__words[2] = v212;
  }

  v6 = (*(**a3 + 32))(*a3, 167772177);
  v7 = *(*a3 + 8);
  v150 = (*(**a3 + 32))(*a3, 301989901);
  v147 = v150 != 0;
  if (*(*a3 + 16) == 1 && (*(*a3 + 17) & 1) == 0)
  {
    v14 = *(a2 + 16);
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
    v204 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v204 count:1];
    v17 = [v14 executeQuery:@"SELECT album_artist_pid FROM item WHERE ROWID = ?" withParameters:v16];

    v18 = [v17 objectForFirstRowAndColumn];
    if ([v18 longLongValue])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      *&buf[24] = 0;
      v19 = (*(**a3 + 56))(*a3, 167772163);
      v20 = (*(**a3 + 56))(*a3, 167772169);
      v21 = *(a2 + 16);
      v203 = v18;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v203 count:1];
      v23 = [v21 executeQuery:@"SELECT album_artist withParameters:{sort_album_artist, representative_item_pid, store_id, grouping_key, sync_id, cloud_universal_library_id, classical_experience_available, liked_state, liked_state_changed_date FROM album_artist WHERE album_artist_pid=?", v22}];
      v156[0] = MEMORY[0x277D85DD0];
      v156[1] = 3321888768;
      v156[2] = ___ZN16ML3ImportSession19_getAlbumArtistInfoENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke;
      v156[3] = &unk_284088588;
      v167 = v19;
      v168 = v20;
      v158 = &v175;
      v159 = &v170;
      v160 = buf;
      v161 = &v182;
      v25 = *a3;
      v24 = a3[1];
      v163 = a2;
      v164 = v25;
      v165 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v162 = &v188;
      v157 = v18;
      v166 = v7;
      [v23 enumerateRowsWithBlock:v156];

      if (v165)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v165);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v26 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v7;
        _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_ERROR, "No existing albumArtist PID for update item %lli", buf, 0xCu);
      }
    }

    v13 = v6;
  }

  else
  {
    v8 = *(a2 + 8);
    v9 = ML3CPPBridgeString(&v176[2], 0);
    v10 = [v8 groupingKeyForString:v9];
    v11 = v183[5];
    v183[5] = v10;

    size = SHIBYTE(v176[2].__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = v176[2].__r_.__value_.__l.__size_;
    }

    v13 = v6;
    if (!size || !v183[5])
    {
      *a1 = 0;
      a1[1] = 0;
      goto LABEL_160;
    }
  }

  if (!v189[6] && [v183[5] length])
  {
    v49 = v183[5];
    v50 = buf;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    *&buf[24] = __Block_byref_object_copy__410;
    *&v212 = __Block_byref_object_dispose__411;
    *(&v212 + 1) = "";
    v213 = 0;
    v214 = 0;
    if (v13)
    {
      v51 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a2 + 1056), v13);
      if (v51)
      {
        v53 = v51[3];
        v52 = v51[4];
        if (v52)
        {
          atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          v54 = v214;
          v213 = v53;
          v214 = v52;
          if (v54)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v54);
          }
        }

        else
        {
          v213 = v51[3];
          v214 = 0;
        }

        v128 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v205.__r_.__value_.__l.__data_) = 134218240;
          *(v205.__r_.__value_.__r.__words + 4) = v49;
          WORD2(v205.__r_.__value_.__r.__words[1]) = 2048;
          *(&v205.__r_.__value_.__r.__words[1] + 6) = v13;
          _os_log_impl(&dword_22D2FA000, v128, OS_LOG_TYPE_DEFAULT, "Found album artist with grouping key=%p, sourceID=%lld", &v205, 0x16u);
        }

        v50 = *&buf[8];
        v76 = *(*&buf[8] + 48) == 0;
        v13 = v6;
        if (!v49)
        {
LABEL_184:
          v134 = *(v50 + 6);
          if (v134)
          {
LABEL_192:
            v142 = *(v50 + 7);
            if (v142)
            {
              atomic_fetch_add_explicit((v142 + 8), 1uLL, memory_order_relaxed);
            }

            _Block_object_dispose(buf, 8);
            if (v214)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v214);
            }

            *&v143 = v134;
            *(&v143 + 1) = v142;
            v144 = v189[7];
            *(v189 + 3) = v143;
            v13 = v6;
            if (v144)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v144);
            }

            goto LABEL_31;
          }

          if (v49 && v13)
          {
            v135 = [@"SELECT album_artist sort:rowid album:{store_id, IFNULL(sort_album_artist, ML3SortString(album_artist)), sync_id, cloud_universal_library_id, classical_experience_available, liked_state, liked_state_changed_date, sort_order, sort_order_section FROM album_artist ", "stringByAppendingString:", @"WHERE (ROWID = ? OR sync_id = ?) OR grouping_key = ?"}artist];
            v136 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
            v146 = v135;
            v215 = v136;
            v137 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
            v216 = v137;
            v217 = v49;
            v138 = [MEMORY[0x277CBEA60] arrayWithObjects:&v215 count:3];
          }

          else
          {
            if (!v13)
            {
              if (v49)
              {
                v145 = [@"SELECT album_artist sort:rowid album:{store_id, IFNULL(sort_album_artist, ML3SortString(album_artist)), sync_id, cloud_universal_library_id, classical_experience_available, liked_state, liked_state_changed_date, sort_order, sort_order_section FROM album_artist ", "stringByAppendingString:", @"WHERE grouping_key = ?"}artist];
                v215 = v49;
                v140 = [MEMORY[0x277CBEA60] arrayWithObjects:&v215 count:1];
                v146 = v145;
                [*(a2 + 16) executeQuery:v145 withParameters:v140];
              }

              else
              {
                v140 = 0;
                v146 = @"SELECT album_artist, sort_album_artist, rowid, store_id, IFNULL(sort_album_artist, ML3SortString(album_artist)), sync_id, cloud_universal_library_id, classical_experience_available, liked_state, liked_state_changed_date, sort_order, sort_order_section FROM album_artist ";
                [*(a2 + 16) executeQuery:@"SELECT album_artist withParameters:{sort_album_artist, rowid, store_id, IFNULL(sort_album_artist, ML3SortString(album_artist)), sync_id, cloud_universal_library_id, classical_experience_available, liked_state, liked_state_changed_date, sort_order, sort_order_section FROM album_artist ", 0}];
              }

              goto LABEL_191;
            }

            v139 = [@"SELECT album_artist sort:rowid album:{store_id, IFNULL(sort_album_artist, ML3SortString(album_artist)), sync_id, cloud_universal_library_id, classical_experience_available, liked_state, liked_state_changed_date, sort_order, sort_order_section FROM album_artist ", "stringByAppendingString:", @"WHERE (ROWID = ? OR sync_id = ?)"}artist];
            v136 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
            v146 = v139;
            v215 = v136;
            v137 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
            v216 = v137;
            v138 = [MEMORY[0x277CBEA60] arrayWithObjects:&v215 count:2];
          }

          v140 = v138;

          [*(a2 + 16) executeQuery:v146 withParameters:v140];
          v141 = LABEL_191:;
          v205.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
          v205.__r_.__value_.__l.__size_ = 3221225472;
          v205.__r_.__value_.__r.__words[2] = ___ZN16ML3ImportSession27_getExistingAlbumArtistInfoEP6NSDatax_block_invoke;
          v206 = &unk_278765250;
          v209 = a2;
          v208 = buf;
          v207 = v49;
          v210 = v6;
          [v141 enumerateRowsWithBlock:&v205];

          v50 = *&buf[8];
          v134 = *(*&buf[8] + 48);
          goto LABEL_192;
        }

LABEL_173:
        if (v76)
        {
          ML3CPPStringFromData(&v205, v49);
          v129 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a2 + 1136), &v205);
          if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v205.__r_.__value_.__l.__data_);
          }

          v50 = *&buf[8];
          if (v129)
          {
            v131 = v129[5];
            v130 = v129[6];
            if (v130)
            {
              atomic_fetch_add_explicit((v130 + 8), 1uLL, memory_order_relaxed);
            }

            v132 = *(v50 + 7);
            *(v50 + 6) = v131;
            *(v50 + 7) = v130;
            if (v132)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v132);
            }

            v133 = os_log_create("com.apple.amp.medialibrary", "Import");
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v205.__r_.__value_.__l.__data_) = 134217984;
              *(v205.__r_.__value_.__r.__words + 4) = v49;
              _os_log_impl(&dword_22D2FA000, v133, OS_LOG_TYPE_DEFAULT, "Found album artist with grouping key=%p", &v205, 0xCu);
            }

            v50 = *&buf[8];
            v13 = v6;
          }
        }

        goto LABEL_184;
      }

      v50 = buf;
    }

    v76 = 1;
    if (!v49)
    {
      goto LABEL_184;
    }

    goto LABEL_173;
  }

LABEL_31:
  if (!v189[6])
  {
    if ([v183[5] length])
    {
      v55 = (*(**a3 + 32))(*a3, 16777217);
      MLMediaTypeByStandardizingMediaType(v55);
      IntegerUUID = v13;
      if (!v13)
      {
        IntegerUUID = ML3CreateIntegerUUID();
      }

      v57 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = &v176[2];
        if (SHIBYTE(v176[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v58 = v58->__words[0];
        }

        v59 = v171 + 6;
        if (*(v171 + 71) < 0)
        {
          v59 = *v59;
        }

        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        *buf = 134218754;
        *&buf[4] = IntegerUUID;
        *&buf[12] = 2082;
        *&buf[14] = v58;
        *&buf[22] = 2082;
        *&buf[24] = v59;
        LOWORD(v212) = 2082;
        *(&v212 + 2) = p_str;
        _os_log_impl(&dword_22D2FA000, v57, OS_LOG_TYPE_DEFAULT, "creating new album_artist entry: pid=%lld, name='%{public}s', sortName='%{public}s', ulid='%{public}s'", buf, 0x2Au);
      }

      ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(a2, (v171 + 6), &v176[2]);
      operator new();
    }

    goto LABEL_158;
  }

  v27 = *(a2 + 32);
  PropertyIndex = ML3TrackRulesGetPropertyIndex(10, 167772163);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__specialRules + 56 * PropertyIndex + 4 * v27) != -1)
  {
    v29 = v189[6];
    v30 = SHIBYTE(v176[2].__r_.__value_.__r.__words[2]);
    if (v30 >= 0)
    {
      v31 = HIBYTE(v176[2].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v176[2].__r_.__value_.__l.__size_;
    }

    v32 = *(v29 + 31);
    v33 = v32;
    if ((v32 & 0x80u) != 0)
    {
      v32 = *(v29 + 16);
    }

    if (v31 != v32 || (v30 >= 0 ? (data = v176 + 2) : (data = v176[2].__r_.__value_.__l.__data_), (v37 = *(v29 + 8), v35 = (v29 + 8), v36 = v37, v33 >= 0) ? (v38 = v35) : (v38 = v36), memcmp(data, v38, v31)))
    {
      v39 = a3[1];
      v155[0] = *a3;
      v155[1] = v39;
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(a2, v155, 0xA000003u);
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      if ((shouldPreserveTrackProperty & 1) == 0)
      {
        v41 = *(a2 + 16);
        v42 = ML3CPPBridgeString(&v176[2], 1);
        v202[0] = v42;
        v43 = [MEMORY[0x277CCABB0] numberWithLongLong:*v189[6]];
        v202[1] = v43;
        v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v202 count:2];
        [v41 executeUpdate:@"UPDATE album_artist SET album_artist = ? WHERE ROWID = ?" withParameters:v44 error:0];

        std::string::operator=((v189[6] + 8), v176 + 2);
      }
    }
  }

  v45 = *(a2 + 32);
  v46 = ML3TrackRulesGetPropertyIndex(10, 167772169);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__specialRules + 56 * v46 + 4 * v45) != -1)
  {
    v47 = v171;
    v48 = *(v171 + 71);
    if ((v48 & 0x8000000000000000) != 0)
    {
      if (!v171[7])
      {
        goto LABEL_92;
      }
    }

    else if (!*(v171 + 71))
    {
      goto LABEL_92;
    }

    v61 = v189[6];
    if ((v48 & 0x80000000) == 0)
    {
      v62 = *(v171 + 71);
    }

    else
    {
      v62 = v171[7];
    }

    v63 = *(v61 + 55);
    v64 = v63;
    if ((v63 & 0x80u) != 0)
    {
      v63 = *(v61 + 40);
    }

    if (v62 != v63 || ((v48 & 0x80000000) == 0 ? (v65 = v171 + 6) : (v65 = v171[6]), (v68 = *(v61 + 32), v66 = (v61 + 32), v67 = v68, v64 >= 0) ? (v69 = v66) : (v69 = v67), memcmp(v65, v69, v62)))
    {
LABEL_98:
      v72 = a3[1];
      v154[0] = *a3;
      v154[1] = v72;
      if (v72)
      {
        atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v73 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v154, 0xA000009u);
      if (v72)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v72);
      }

      if ((v73 & 1) == 0)
      {
        v74 = *(v171 + 71);
        if ((v74 & 0x8000000000000000) != 0)
        {
          v74 = v171[7];
        }

        v75 = *(a2 + 16);
        if (v74)
        {
          ML3CPPBridgeString(v171 + 48, 1);
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v77 = ;
        v201[0] = v77;
        v78 = [MEMORY[0x277CCABB0] numberWithLongLong:*v189[6]];
        v201[1] = v78;
        v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v201 count:2];
        [v75 executeUpdate:@"UPDATE album_artist SET sort_album_artist = ? WHERE ROWID = ?" withParameters:v79 error:0];

        std::string::operator=((v189[6] + 32), v171 + 2);
        v80 = ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(a2, (v171 + 6), &v176[2]);
        v81 = v189[6];
        *(v81 + 112) = v80;
        *(v81 + 120) = v82;
        v83 = *(a2 + 16);
        v84 = [MEMORY[0x277CCABB0] numberWithLongLong:v80];
        v200[0] = v84;
        v85 = [MEMORY[0x277CCABB0] numberWithInteger:*(v189[6] + 120)];
        v200[1] = v85;
        v86 = [MEMORY[0x277CCABB0] numberWithLongLong:*v189[6]];
        v200[2] = v86;
        v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v200 count:3];
        [v83 executeUpdate:@"UPDATE item SET album_artist_order=? withParameters:album_artist_order_section=? WHERE album_artist_pid=?" error:{v87, 0}];
      }

      goto LABEL_112;
    }

LABEL_92:
    if ((v48 & 0x80000000) != 0)
    {
      v48 = v47[7];
    }

    if (v48)
    {
      goto LABEL_112;
    }

    v70 = v189[6];
    v71 = *(v70 + 55);
    if (v71 < 0)
    {
      v71 = *(v70 + 40);
    }

    if (!v71)
    {
      goto LABEL_112;
    }

    goto LABEL_98;
  }

LABEL_112:
  if (v148)
  {
    v88 = v189[6];
    if (v148 != *(v88 + 104))
    {
      *(v88 + 104) = v148;
      v89 = *(a2 + 16);
      v90 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
      v199[0] = v90;
      v91 = [MEMORY[0x277CCABB0] numberWithLongLong:*v189[6]];
      v199[1] = v91;
      v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v199 count:2];
      [v89 executeUpdate:@"UPDATE album_artist SET store_id = ? WHERE ROWID = ?" withParameters:v92 error:0];
    }
  }

  if (v6 && v6 != *(v189[6] + 144))
  {
    v93 = *(a2 + 32);
    v94 = ML3TrackRulesGetPropertyIndex(18, 301989898);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    if (*(__albumArtistRules + 56 * v94 + 4 * v93) != -1)
    {
      v95 = a3[1];
      v153[0] = *a3;
      v153[1] = v95;
      if (v95)
      {
        atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v96 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v153, 0x1200000Au);
      if (v95)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v95);
      }

      if ((v96 & 1) == 0)
      {
        v97 = *(a2 + 16);
        v98 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
        v198[0] = v98;
        v99 = [MEMORY[0x277CCABB0] numberWithLongLong:*v189[6]];
        v198[1] = v99;
        v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v198 count:2];
        [v97 executeUpdate:@"UPDATE album_artist SET sync_id = ? WHERE ROWID = ?" withParameters:v100 error:0];

        *(v189[6] + 144) = v6;
      }
    }
  }

  v101 = *(a2 + 32);
  v102 = ML3TrackRulesGetPropertyIndex(18, 301989899);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__albumArtistRules + 56 * v102 + 4 * v101) != -1)
  {
    v103 = v189[6];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v104 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v104 = __str.__r_.__value_.__l.__size_;
    }

    v105 = *(v103 + 175);
    v106 = v105;
    if ((v105 & 0x80u) != 0)
    {
      v105 = *(v103 + 160);
    }

    if (v104 != v105 || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v107 = &__str) : (v107 = __str.__r_.__value_.__r.__words[0]), (v110 = *(v103 + 152), v108 = (v103 + 152), v109 = v110, v106 >= 0) ? (v111 = v108) : (v111 = v109), memcmp(v107, v111, v104)))
    {
      v112 = a3[1];
      v152[0] = *a3;
      v152[1] = v112;
      if (v112)
      {
        atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v113 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v152, 0x1200000Bu);
      if (v112)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v112);
      }

      if ((v113 & 1) == 0)
      {
        v114 = *(a2 + 16);
        v115 = ML3CPPBridgeString(&__str, 1);
        v197[0] = v115;
        v116 = [MEMORY[0x277CCABB0] numberWithLongLong:*v189[6]];
        v197[1] = v116;
        v117 = [MEMORY[0x277CBEA60] arrayWithObjects:v197 count:2];
        [v114 executeUpdate:@"UPDATE album_artist SET cloud_universal_library_id = ? WHERE ROWID = ?" withParameters:v117 error:0];

        std::string::operator=((v189[6] + 152), &__str);
      }
    }
  }

  if (*(v189[6] + 176) != v147)
  {
    v118 = *(a2 + 32);
    v119 = ML3TrackRulesGetPropertyIndex(18, 301989901);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    if (*(__albumArtistRules + 56 * v119 + 4 * v118) != -1)
    {
      v120 = *a3;
      v121 = a3[1];
      v151[0] = v120;
      v151[1] = v121;
      if (v121)
      {
        atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v122 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v151, 0x1200000Du);
      if (v121)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v121);
      }

      if ((v122 & 1) == 0)
      {
        v123 = *(a2 + 16);
        v124 = [MEMORY[0x277CCABB0] numberWithBool:v150 != 0];
        v196[0] = v124;
        v125 = [MEMORY[0x277CCABB0] numberWithLongLong:*v189[6]];
        v196[1] = v125;
        v126 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:2];
        [v123 executeUpdate:@"UPDATE album_artist SET classical_experience_available = ? WHERE ROWID = ?" withParameters:v126 error:0];

        *(v189[6] + 176) = v147;
      }
    }
  }

LABEL_158:
  v127 = v189[7];
  *a1 = v189[6];
  a1[1] = v127;
  if (v127)
  {
    atomic_fetch_add_explicit((v127 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_160:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v170, 8);
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v174.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v175, 8);
  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v181.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v182, 8);

  _Block_object_dispose(&v188, 8);
  if (v195)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v195);
  }
}

void sub_22D542F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  _Block_object_dispose((v77 - 208), 8);
  v79 = *(v77 - 152);
  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  if (a52 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a54, 8);
  if (a65 < 0)
  {
    operator delete(a60);
  }

  _Block_object_dispose(&a66, 8);
  if (a73 < 0)
  {
    operator delete(a72);
  }

  _Block_object_dispose(&a74, 8);

  _Block_object_dispose(&STACK[0x210], 8);
  if (STACK[0x248])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x248]);
  }

  _Unwind_Resume(a1);
}

void ML3ImportSession::_getAlbumInfo(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v303 = *MEMORY[0x277D85DE8];
  v281 = a4;
  v273 = 0;
  v274 = &v273;
  v275 = 0x4012000000;
  v276 = __Block_byref_object_copy__482;
  v277 = __Block_byref_object_dispose__483;
  v278 = "";
  v280 = 0;
  v279 = 0;
  v267 = 0;
  v268 = &v267;
  v269 = 0x3032000000;
  v270 = __Block_byref_object_copy__413;
  v271 = __Block_byref_object_dispose__414;
  v272 = 0;
  v260 = 0;
  v261 = &v260;
  v262 = 0x4812000000;
  v263 = __Block_byref_object_copy__415;
  v264 = __Block_byref_object_dispose__416;
  v265 = "";
  (*(**a3 + 24))(buf);
  if (SBYTE7(v289) < 0)
  {
    std::string::__init_copy_ctor_external(&v266, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if (SBYTE7(v289) < 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    *&v266.__r_.__value_.__l.__data_ = *&buf[16];
    v266.__r_.__value_.__r.__words[2] = v289;
  }

  v253 = 0;
  v254 = &v253;
  v255 = 0x4812000000;
  v256 = __Block_byref_object_copy__415;
  v257 = __Block_byref_object_dispose__416;
  v258 = "";
  (*(**a3 + 24))(buf);
  if (SBYTE7(v289) < 0)
  {
    std::string::__init_copy_ctor_external(&v259, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if (SBYTE7(v289) < 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    *&v259.__r_.__value_.__l.__data_ = *&buf[16];
    v259.__r_.__value_.__r.__words[2] = v289;
  }

  v251[0] = 0;
  v251[1] = v251;
  v251[2] = 0x4812000000;
  v251[3] = __Block_byref_object_copy__415;
  v251[4] = __Block_byref_object_dispose__416;
  v251[5] = "";
  (*(**a3 + 24))(buf);
  if (SBYTE7(v289) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if (SBYTE7(v289) < 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *&buf[16];
    __p.__r_.__value_.__r.__words[2] = v289;
  }

  v249[0] = 0;
  v249[1] = v249;
  v249[2] = 0x2020000000;
  v6 = *a3;
  if (*(*a3 + 17))
  {
    v7 = 1;
  }

  else
  {
    v7 = (*(*v6 + 56))(v6, 167772185);
    v6 = *a3;
  }

  v250 = v7;
  v245 = 0;
  v246 = &v245;
  v247 = 0x2020000000;
  v248 = (*(*v6 + 32))(v6, 167772185);
  v241 = 0;
  v242 = &v241;
  v243 = 0x2020000000;
  v244 = (*(**a3 + 32))(*a3, 167772186);
  v237 = 0;
  v238 = &v237;
  v239 = 0x2020000000;
  v240 = (*(**a3 + 32))(*a3, 167772182);
  v233 = 0;
  v234 = &v233;
  v235 = 0x2020000000;
  v236 = (*(**a3 + 32))(*a3, 117440516);
  v229 = 0;
  v230 = &v229;
  v231 = 0x2020000000;
  v232 = (*(**a3 + 32))(*a3, 33554438);
  v225 = 0;
  v226 = &v225;
  v227 = 0x2020000000;
  v228 = (*(**a3 + 32))(*a3, 100663300);
  v221 = 0;
  v222 = &v221;
  v223 = 0x2020000000;
  v224 = (*(**a3 + 32))(*a3, 16777246) != 0;
  (*(**a3 + 24))(buf);
  if (SBYTE7(v289) < 0)
  {
    std::string::__init_copy_ctor_external(&v220, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if (SBYTE7(v289) < 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    *&v220.__r_.__value_.__l.__data_ = *&buf[16];
    v220.__r_.__value_.__r.__words[2] = v289;
  }

  (*(**a3 + 24))(buf);
  if (SBYTE7(v289) < 0)
  {
    std::string::__init_copy_ctor_external(&v219, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if (SBYTE7(v289) < 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    *&v219.__r_.__value_.__l.__data_ = *&buf[16];
    v219.__r_.__value_.__r.__words[2] = v289;
  }

  v8 = (*(**a3 + 32))(*a3, 16777248);
  v215 = 0;
  v216 = &v215;
  v217 = 0x2020000000;
  size = HIBYTE(v220.__r_.__value_.__r.__words[2]);
  if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v220.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v10 = 1;
  }

  else if (v8)
  {
    v11 = HIBYTE(v219.__r_.__value_.__r.__words[2]);
    if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v219.__r_.__value_.__l.__size_;
    }

    v10 = v11 != 0;
  }

  else
  {
    v10 = 0;
  }

  v218 = v10;
  if ((*(**a3 + 56))(*a3, 33554462))
  {
    v170 = 1;
  }

  else
  {
    v170 = (*(**a3 + 56))(*a3, 16777248);
  }

  v12 = (*(**a3 + 32))(*a3, 167772175);
  v172 = *(*a3 + 8);
  v171 = (*(**a3 + 32))(*a3, 285212693) != 0;
  v13 = *a3;
  v174 = v12;
  if (*(*a3 + 16) == 1 && (v13[17] & 1) == 0)
  {
    v21 = *(a2 + 16);
    v22 = [MEMORY[0x277CCABB0] numberWithLongLong:v172];
    v298 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v298 count:1];
    v24 = [v21 executeQuery:@"SELECT album_pid FROM item WHERE ROWID = ?" withParameters:v23];

    v25 = [v24 objectForFirstRowAndColumn];
    if ([v25 longLongValue])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      *&buf[24] = 0;
      v168 = v24;
      v26 = (*(**a3 + 56))(*a3, 167772164);
      v27 = (*(**a3 + 56))(*a3, 167772170);
      v167 = v4;
      v28 = (*(**a3 + 56))(*a3, 167772186);
      v29 = (*(**a3 + 56))(*a3, 167772182);
      v30 = (*(**a3 + 56))(*a3, 16777246);
      v166 = v28;
      v31 = (*(**a3 + 56))(*a3, 33554438);
      v32 = (*(**a3 + 56))(*a3, 100663300);
      v33 = *(a2 + 16);
      v297 = v25;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v297 count:1];
      v35 = [v33 executeQuery:@"SELECT album withParameters:{sort_album, feed_url, user_rating, liked_state, all_compilations, season_number, representative_item_pid, grouping_key, album_year, contains_classical_work, user_rating_is_derived, sync_id, classical_experience_available, liked_state_changed_date, store_id, cloud_library_id, album_artist_pid FROM album WHERE album_pid=?", v34}];
      v185[0] = MEMORY[0x277D85DD0];
      v185[1] = 3321888768;
      v185[2] = ___ZN16ML3ImportSession13_getAlbumInfoENSt3__110shared_ptrI13ML3ImportItemEEx_block_invoke;
      v185[3] = &unk_2840885C0;
      v207 = v26;
      v208 = v27;
      v187 = &v260;
      v188 = &v253;
      v189 = v251;
      v190 = v249;
      v209 = v29;
      v191 = &v245;
      v192 = &v237;
      v210 = v30;
      v193 = &v221;
      v194 = &v233;
      v211 = v31;
      v195 = buf;
      v196 = &v229;
      v212 = v170;
      v213 = v166;
      v197 = &v215;
      v198 = &v241;
      v214 = v32;
      v199 = &v225;
      v200 = &v267;
      v4 = v167;
      v202 = a2;
      v203 = v167;
      v36 = a3[1];
      v204 = *a3;
      v205 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v201 = &v273;
      v186 = v25;
      v206 = v172;
      v24 = v168;
      [v35 enumerateRowsWithBlock:v185];

      if (v205)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v205);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v43 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v172;
        _os_log_impl(&dword_22D2FA000, v43, OS_LOG_TYPE_ERROR, "No existing album PID for update item %lli", buf, 0xCu);
      }
    }
  }

  else
  {
    v14 = (*(*v13 + 32))(v13, 16777217);
    v15 = MLMediaTypeByStandardizingMediaType(v14);
    if (v234[3])
    {
      goto LABEL_39;
    }

    v18 = SHIBYTE(v261[2].__r_.__value_.__r.__words[2]);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v18 = v261[2].__r_.__value_.__l.__size_;
    }

    v19 = (v15 & 0x10042) == 0 || v4 == 0;
    v20 = !v19;
    if (v18 || v20)
    {
LABEL_39:
      v17 = *a3;
      v16 = a3[1];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v17 + 24))(buf, v17, 167772164);
      if (SBYTE7(v289) < 0)
      {
        std::string::__init_copy_ctor_external(&v282, *&buf[16], *&buf[24]);
      }

      else
      {
        *&v282.__r_.__value_.__l.__data_ = *&buf[16];
        v282.__r_.__value_.__r.__words[2] = v289;
      }

      v37 = ML3CPPBridgeString(&v282, 1);
      if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v282.__r_.__value_.__l.__data_);
      }

      *buf = &unk_28408AC60;
      if (SBYTE7(v289) < 0)
      {
        operator delete(*&buf[16]);
      }

      v38 = [*(a2 + 8) groupingKeyForString:v37];
      (*(*v17 + 24))(buf, v17, 100663323);
      if (SBYTE7(v289) < 0)
      {
        std::string::__init_copy_ctor_external(&v282, *&buf[16], *&buf[24]);
      }

      else
      {
        *&v282.__r_.__value_.__l.__data_ = *&buf[16];
        v282.__r_.__value_.__r.__words[2] = v289;
      }

      v39 = ML3CPPBridgeString(&v282, 1);
      if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v282.__r_.__value_.__l.__data_);
      }

      *buf = &unk_28408AC60;
      if (SBYTE7(v289) < 0)
      {
        operator delete(*&buf[16]);
      }

      v40 = (*(*v17 + 32))(v17, 117440516);
      v41 = [[ML3AlbumGroupingIdentifier alloc] initWithAlbumArtistPersistentID:v4 groupingKey:v38 feedURL:v39 seasonNumber:v40 compilation:(*(*v17 + 32))(v17, 16777246) != 0];

      v42 = v268[5];
      v268[5] = v41;

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }
  }

  if (!v274[6])
  {
    v44 = [v268[5] groupingKey];
    if ([v44 length] || objc_msgSend(v268[5], "albumArtistPersistentID"))
    {
    }

    else
    {
      v65 = [v268[5] seasonNumber] == 0;

      if (v65)
      {
        goto LABEL_114;
      }
    }

    v45 = v268[5];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    *&buf[24] = __Block_byref_object_copy__482;
    *&v289 = __Block_byref_object_dispose__483;
    *(&v289 + 1) = "";
    v291 = 0;
    v290 = 0;
    if (v174)
    {
      v46 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a2 + 1016), v174);
      if (v46)
      {
        v48 = v46[3];
        v47 = v46[4];
        if (!v47)
        {
          v290 = v46[3];
          v291 = 0;
          if (v45)
          {
LABEL_88:
            if (!*(*&buf[8] + 48))
            {
              v50 = [v45 keyValue];
              ML3CPPStringFromData(&v282, v50);
              v51 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a2 + 1256), &v282);
              if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v282.__r_.__value_.__l.__data_);
              }

              if (v51)
              {
                v52 = *&buf[8];
                v54 = v51[5];
                v53 = v51[6];
                if (v53)
                {
                  atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
                }

                v55 = *(v52 + 56);
                *(v52 + 48) = v54;
                *(v52 + 56) = v53;
                if (v55)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v55);
                }
              }
            }
          }

LABEL_96:
          v56 = *&buf[8];
          v57 = *(*&buf[8] + 48);
          if (!v57)
          {
            v169 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v45, "albumArtistPersistentID")}];
            v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
            v59 = [CFSTR(""SELECT album sort_album];
            v60 = v59;
            if (v174)
            {
              v61 = [v59 stringByAppendingString:@"(ROWID=? OR sync_id=?) OR"];

              v62 = [MEMORY[0x277CCABB0] numberWithLongLong:v174];
              v300 = v62;
              v63 = [MEMORY[0x277CCABB0] numberWithLongLong:v174];
              v301 = v63;
              v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v300 count:2];
              [v58 addObjectsFromArray:v64];
            }

            else
            {
              v61 = v59;
            }

            v66 = [v45 groupingKey];
            if ([v66 length])
            {
              v67 = [v61 stringByAppendingString:@"(grouping_key IN (?) AND album_artist_pid = ?)"];

              v299[0] = v66;
              v299[1] = v169;
              [MEMORY[0x277CBEA60] arrayWithObjects:v299 count:2];
            }

            else
            {
              v67 = [v61 stringByAppendingString:@"(grouping_key IS NULL AND album_artist_pid = ?)"];

              v299[0] = v169;
              [MEMORY[0x277CBEA60] arrayWithObjects:v299 count:1];
            }
            v68 = ;
            [v58 addObjectsFromArray:v68];
            v69 = v67;

            v70 = [*(a2 + 16) executeQuery:v67 withParameters:v58];
            v282.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
            v282.__r_.__value_.__l.__size_ = 3221225472;
            v282.__r_.__value_.__r.__words[2] = ___ZN16ML3ImportSession21_getExistingAlbumInfoEP26ML3AlbumGroupingIdentifierx_block_invoke;
            v283 = &unk_278765250;
            v286 = a2;
            v285 = buf;
            v284 = v45;
            v287 = v174;
            [v70 enumerateRowsWithBlock:&v282];

            v56 = *&buf[8];
            v57 = *(*&buf[8] + 48);
          }

          v71 = *(v56 + 56);
          if (v71)
          {
            atomic_fetch_add_explicit((v71 + 8), 1uLL, memory_order_relaxed);
          }

          _Block_object_dispose(buf, 8);
          if (v291)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v291);
          }

          *&v72 = v57;
          *(&v72 + 1) = v71;
          v73 = v274[7];
          *(v274 + 3) = v72;
          if (v73)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v73);
          }

          goto LABEL_114;
        }

        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        v49 = v291;
        v290 = v48;
        v291 = v47;
        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }
      }
    }

    if (v45)
    {
      goto LABEL_88;
    }

    goto LABEL_96;
  }

LABEL_114:
  if (!v274[6])
  {
    v96 = (*(**a3 + 32))(*a3, 16777217);
    MLMediaTypeByStandardizingMediaType(v96);
    IntegerUUID = v174;
    if (!v174)
    {
      IntegerUUID = ML3CreateIntegerUUID();
    }

    v299[0] = [v268[5] groupingKey];
    v98 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      v99 = &v261[2];
      if (SHIBYTE(v261[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v99 = v99->__words[0];
      }

      v100 = &v254[2];
      if (SHIBYTE(v254[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v100 = v100->__words[0];
      }

      *buf = 134218754;
      *&buf[4] = IntegerUUID;
      *&buf[12] = 2082;
      *&buf[14] = v99;
      *&buf[22] = 2082;
      *&buf[24] = v100;
      LOWORD(v289) = 2048;
      *(&v289 + 2) = v4;
      _os_log_impl(&dword_22D2FA000, v98, OS_LOG_TYPE_DEFAULT, "creating new album entry: pid=%lld, name='%{public}s', sortName='%{public}s', artistId=%lld", buf, 0x2Au);
    }

    ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(a2, &v254[2], &v261[2]);
    operator new();
  }

  v74 = *(a2 + 32);
  PropertyIndex = ML3TrackRulesGetPropertyIndex(10, 167772164);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__specialRules + 56 * PropertyIndex + 4 * v74) != -1)
  {
    v76 = v274[6];
    v77 = SHIBYTE(v261[2].__r_.__value_.__r.__words[2]);
    if (v77 >= 0)
    {
      v78 = HIBYTE(v261[2].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v78 = v261[2].__r_.__value_.__l.__size_;
    }

    v79 = *(v76 + 31);
    v80 = v79;
    if ((v79 & 0x80u) != 0)
    {
      v79 = *(v76 + 16);
    }

    if (v78 != v79 || (v77 >= 0 ? (data = v261 + 2) : (data = v261[2].__r_.__value_.__l.__data_), (v84 = *(v76 + 8), v82 = (v76 + 8), v83 = v84, v80 >= 0) ? (v85 = v82) : (v85 = v83), memcmp(data, v85, v78)))
    {
      v86 = a3[1];
      v184[0] = *a3;
      v184[1] = v86;
      if (v86)
      {
        atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(a2, v184, 0xA000004u);
      if (v86)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v86);
      }

      if ((shouldPreserveTrackProperty & 1) == 0)
      {
        v88 = *(a2 + 16);
        v89 = ML3CPPBridgeString(&v261[2], 1);
        v296[0] = v89;
        v90 = [MEMORY[0x277CCABB0] numberWithLongLong:*v274[6]];
        v296[1] = v90;
        v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v296 count:2];
        [v88 executeUpdate:@"UPDATE album SET album = ? WHERE ROWID = ?" withParameters:v91 error:0];

        std::string::operator=((v274[6] + 8), v261 + 2);
      }
    }
  }

  v92 = *(a2 + 32);
  v93 = ML3TrackRulesGetPropertyIndex(10, 167772170);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__specialRules + 56 * v93 + 4 * v92) == -1)
  {
    goto LABEL_184;
  }

  v94 = v254;
  v95 = SHIBYTE(v254[2].__r_.__value_.__r.__words[2]);
  if (v95 < 0)
  {
    if (!v254[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_166;
    }

LABEL_153:
    v101 = v274[6];
    if (v95 >= 0)
    {
      v102 = SHIBYTE(v254[2].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v102 = v254[2].__r_.__value_.__l.__size_;
    }

    v103 = *(v101 + 55);
    v104 = v103;
    if ((v103 & 0x80u) != 0)
    {
      v103 = *(v101 + 40);
    }

    if (v102 != v103 || (v95 >= 0 ? (v105 = v254 + 2) : (v105 = v254[2].__r_.__value_.__l.__data_), (v108 = *(v101 + 32), v106 = (v101 + 32), v107 = v108, v104 >= 0) ? (v109 = v106) : (v109 = v107), memcmp(v105, v109, v102)))
    {
LABEL_173:
      v112 = a3[1];
      v183[0] = *a3;
      v183[1] = v112;
      if (v112)
      {
        atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v113 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v183, 0xA00000Au);
      if (v112)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v112);
      }

      if ((v113 & 1) == 0)
      {
        v114 = SHIBYTE(v254[2].__r_.__value_.__r.__words[2]);
        if ((v114 & 0x8000000000000000) != 0)
        {
          v114 = v254[2].__r_.__value_.__l.__size_;
        }

        v115 = *(a2 + 16);
        if (v114)
        {
          ML3CPPBridgeString(&v254[2], 1);
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v116 = ;
        v295[0] = v116;
        v117 = [MEMORY[0x277CCABB0] numberWithLongLong:*v274[6]];
        v295[1] = v117;
        v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v295 count:2];
        [v115 executeUpdate:@"UPDATE album SET sort_album = ? WHERE ROWID = ?" withParameters:v118 error:0];

        std::string::operator=((v274[6] + 32), v254 + 2);
        v119 = ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(a2, &v254[2], &v261[2]);
        v120 = v274[6];
        *(v120 + 72) = v119;
        *(v120 + 80) = v121;
        v122 = *(a2 + 16);
        v123 = [MEMORY[0x277CCABB0] numberWithLongLong:v119];
        v294[0] = v123;
        v124 = [MEMORY[0x277CCABB0] numberWithInteger:*(v274[6] + 80)];
        v294[1] = v124;
        v125 = [MEMORY[0x277CCABB0] numberWithLongLong:*v274[6]];
        v294[2] = v125;
        v126 = [MEMORY[0x277CBEA60] arrayWithObjects:v294 count:3];
        [v122 executeUpdate:@"UPDATE item SET album_order=? withParameters:album_order_section=? WHERE album_pid=?" error:{v126, 0}];
      }

      goto LABEL_184;
    }

    goto LABEL_166;
  }

  if (*(&v254[2].__r_.__value_.__s + 23))
  {
    goto LABEL_153;
  }

LABEL_166:
  if ((v95 & 0x80000000) != 0)
  {
    if (v94[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_184;
    }
  }

  else if (v95)
  {
    goto LABEL_184;
  }

  v110 = v274[6];
  v111 = *(v110 + 55);
  if (v111 < 0)
  {
    v111 = *(v110 + 40);
  }

  if (v111)
  {
    goto LABEL_173;
  }

LABEL_184:
  v127 = v274[6];
  if (v246[3] != *(v127 + 56))
  {
    v128 = *(a2 + 32);
    v129 = ML3TrackRulesGetPropertyIndex(10, 167772185);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    if (*(__specialRules + 56 * v129 + 4 * v128) != -1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v282, "UPDATE album SET user_rating = ? WHERE ROWID = ?");
      *buf = v246[3];
      *&buf[24] = 0;
      LOBYTE(v289) = 1;
      *(&v289 + 1) = *v274[6];
      v292 = 0;
      v293 = 1;
      v301 = 0;
      v302 = 0;
      v300 = 0;
      std::vector<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>>::__init_with_size[abi:ne200100]<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*,std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*>();
    }

    v127 = v274[6];
  }

  if (v242[3] != *(v127 + 60))
  {
    v130 = *(a2 + 32);
    v131 = ML3TrackRulesGetPropertyIndex(10, 167772186);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    if (*(__specialRules + 56 * v131 + 4 * v130) != -1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v282, "UPDATE album SET user_rating_is_derived = ? WHERE ROWID = ?");
      *buf = v242[3];
      *&buf[24] = 0;
      LOBYTE(v289) = 1;
      *(&v289 + 1) = *v274[6];
      v292 = 0;
      v293 = 1;
      v301 = 0;
      v302 = 0;
      v300 = 0;
      std::vector<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>>::__init_with_size[abi:ne200100]<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*,std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*>();
    }
  }

  v132 = *(a2 + 32);
  v133 = ML3TrackRulesGetPropertyIndex(10, 167772182);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__specialRules + 56 * v133 + 4 * v132) != -1 && (*(**a3 + 56))(*a3, 167772182) && v238[3] != *(v274[6] + 64))
  {
    v134 = a3[1];
    v182[0] = *a3;
    v182[1] = v134;
    if (v134)
    {
      atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v135 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v182, 0xA000016u);
    if (v134)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v134);
    }

    if ((v135 & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v282, "UPDATE album SET liked_state = ? WHERE ROWID = ?");
      *buf = v238[3];
      *&buf[24] = 0;
      LOBYTE(v289) = 1;
      *(&v289 + 1) = *v274[6];
      v292 = 0;
      v293 = 1;
      v301 = 0;
      v302 = 0;
      v300 = 0;
      std::vector<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>>::__init_with_size[abi:ne200100]<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*,std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*>();
    }
  }

  v136 = *(a2 + 32);
  v137 = ML3TrackRulesGetPropertyIndex(2, 33554438);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__itemExtraRules + 56 * v137 + 4 * v136) != -1 && (*(**a3 + 56))(*a3, 33554438) && v230[3] != *(v274[6] + 68))
  {
    v138 = a3[1];
    v181[0] = *a3;
    v181[1] = v138;
    if (v138)
    {
      atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v139 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v181, 0x2000006u);
    if (v138)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v138);
    }

    if ((v139 & 1) == 0)
    {
      std::vector<unsigned long long>::push_back[abi:ne200100](a2 + 472, v274[6]);
      *(v274[6] + 68) = v230[3];
    }
  }

  if (((v170 & 1) != 0 || *(*a3 + 16) != 1 || *(*a3 + 17) == 1) && *(v274[6] + 88) != *(v216 + 24))
  {
    v140 = *(a2 + 32);
    v141 = ML3TrackRulesGetPropertyIndex(2, 33554462);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    if (*(__itemExtraRules + 56 * v141 + 4 * v140) != -1)
    {
      v142 = a3[1];
      v180[0] = *a3;
      v180[1] = v142;
      if (v142)
      {
        atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v143 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v180, 0x200001Eu);
      if (v142)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v142);
      }

      if ((v143 & 1) == 0)
      {
        v144 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
        {
          v145 = *v274[6];
          *buf = 134217984;
          *&buf[4] = v145;
          _os_log_impl(&dword_22D2FA000, v144, OS_LOG_TYPE_DEFAULT, "contains_classical_work differs for album %lld", buf, 0xCu);
        }

        std::vector<unsigned long long>::push_back[abi:ne200100](a2 + 496, v274[6]);
        *(v274[6] + 88) = *(v216 + 24);
      }
    }
  }

  v146 = *(a2 + 32);
  v147 = ML3TrackRulesGetPropertyIndex(1, 16777246);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__itemRules + 56 * v147 + 4 * v146) != -1 && (*(**a3 + 56))(*a3, 16777246) && *(v222 + 24) != *(v274[6] + 136))
  {
    v148 = a3[1];
    v179[0] = *a3;
    v179[1] = v148;
    if (v148)
    {
      atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v149 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v179, 0x100001Eu);
    if (v148)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v148);
    }

    if ((v149 & 1) == 0)
    {
      v150 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
      {
        v151 = *v274[6];
        *buf = 134217984;
        *&buf[4] = v151;
        _os_log_impl(&dword_22D2FA000, v150, OS_LOG_TYPE_DEFAULT, "is_compilation differs for album %lld", buf, 0xCu);
      }

      std::vector<unsigned long long>::push_back[abi:ne200100](a2 + 520, v274[6]);
      *(v274[6] + 136) = *(v222 + 24);
    }
  }

  if (v174 && v174 != *(v274[6] + 96))
  {
    v152 = *(a2 + 32);
    v153 = ML3TrackRulesGetPropertyIndex(17, 285212691);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    if (*(__albumRules + 56 * v153 + 4 * v152) != -1)
    {
      v154 = a3[1];
      v178[0] = *a3;
      v178[1] = v154;
      if (v154)
      {
        atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v155 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v178, 0x11000013u);
      if (v154)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v154);
      }

      if ((v155 & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v282, "UPDATE album SET sync_id = ? WHERE ROWID = ?");
        *buf = v174;
        *&buf[24] = 0;
        LOBYTE(v289) = 1;
        *(&v289 + 1) = *v274[6];
        v292 = 0;
        v293 = 1;
        v301 = 0;
        v302 = 0;
        v300 = 0;
        std::vector<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>>::__init_with_size[abi:ne200100]<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*,std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*>();
      }
    }
  }

  v156 = v226[3];
  if (v156 && v156 != *(v274[6] + 104))
  {
    v157 = *(a2 + 32);
    v158 = ML3TrackRulesGetPropertyIndex(17, 285212696);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    if (*(__albumRules + 56 * v158 + 4 * v157) != -1)
    {
      v159 = a3[1];
      v177[0] = *a3;
      v177[1] = v159;
      if (v159)
      {
        atomic_fetch_add_explicit(&v159->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v160 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v177, 0x11000018u);
      if (v159)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v159);
      }

      if ((v160 & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v282, "UPDATE album SET store_id = ? WHERE ROWID = ?");
        *buf = v226[3];
        *&buf[24] = 0;
        LOBYTE(v289) = 1;
        *(&v289 + 1) = *v274[6];
        v292 = 0;
        v293 = 1;
        v301 = 0;
        v302 = 0;
        v300 = 0;
        std::vector<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>>::__init_with_size[abi:ne200100]<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*,std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*>();
      }
    }
  }

  if (*(v274[6] + 137) != v171)
  {
    v161 = *(a2 + 32);
    v162 = ML3TrackRulesGetPropertyIndex(17, 285212693);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    if (*(__albumRules + 56 * v162 + 4 * v161) != -1)
    {
      v163 = a3[1];
      v176[0] = *a3;
      v176[1] = v163;
      if (v163)
      {
        atomic_fetch_add_explicit(&v163->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v164 = ML3ImportSession::_shouldPreserveTrackProperty(a2, v176, 0x11000015u);
      if (v163)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v163);
      }

      if ((v164 & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v282, "UPDATE album SET classical_experience_available = ? WHERE ROWID = ?");
        buf[0] = v171;
        *&buf[24] = 2;
        LOBYTE(v289) = 1;
        *(&v289 + 1) = *v274[6];
        v292 = 0;
        v293 = 1;
        v301 = 0;
        v302 = 0;
        v300 = 0;
        std::vector<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>>::__init_with_size[abi:ne200100]<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*,std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*>();
      }
    }
  }

  v165 = v274[7];
  *a1 = v274[6];
  a1[1] = v165;
  if (v165)
  {
    atomic_fetch_add_explicit((v165 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v215, 8);
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v219.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v220.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v221, 8);
  _Block_object_dispose(&v225, 8);
  _Block_object_dispose(&v229, 8);
  _Block_object_dispose(&v233, 8);
  _Block_object_dispose(&v237, 8);
  _Block_object_dispose(&v241, 8);
  _Block_object_dispose(&v245, 8);
  _Block_object_dispose(v249, 8);
  _Block_object_dispose(v251, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v253, 8);
  if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v259.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v260, 8);
  if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v266.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v267, 8);

  _Block_object_dispose(&v273, 8);
  if (v280)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v280);
  }
}

void sub_22D545D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a71, 8);
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  _Block_object_dispose(&STACK[0x398], 8);
  if (SLOBYTE(STACK[0x3DF]) < 0)
  {
    operator delete(STACK[0x3C8]);
  }

  _Block_object_dispose(&STACK[0x3E0], 8);
  if (SLOBYTE(STACK[0x427]) < 0)
  {
    operator delete(STACK[0x410]);
  }

  _Block_object_dispose(&STACK[0x428], 8);

  _Block_object_dispose(&STACK[0x458], 8);
  if (STACK[0x490])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x490]);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__482(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__483(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN16ML3ImportSession13_getAlbumInfoENSt3__110shared_ptrI13ML3ImportItemEEx_block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 160);
  memset(&v35, 0, sizeof(v35));
  memset(__str, 0, sizeof(__str));
  ML3DatabaseRowGetHomogeneousColumns<std::string>(v3, __str, 3uLL);
  if ((*(a1 + 200) & 1) == 0)
  {
    std::string::operator=((*(*(a1 + 40) + 8) + 48), __str);
  }

  if ((*(a1 + 201) & 1) == 0)
  {
    std::string::operator=((*(*(a1 + 48) + 8) + 48), &__str[1]);
  }

  v5 = *(*(a1 + 56) + 8);
  if ((*(v5 + 71) & 0x8000000000000000) != 0)
  {
    if (*(v5 + 56))
    {
      goto LABEL_10;
    }
  }

  else if (*(v5 + 71))
  {
    goto LABEL_10;
  }

  std::string::operator=((v5 + 48), &v35);
LABEL_10:
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = [v3 intForColumnIndex:3];
  }

  if ((*(a1 + 202) & 1) == 0)
  {
    *(*(*(a1 + 80) + 8) + 24) = [v3 intForColumnIndex:4];
  }

  if ((*(a1 + 203) & 1) == 0)
  {
    *(*(*(a1 + 88) + 8) + 24) = [v3 intForColumnIndex:5] != 0;
  }

  if (!*(*(*(a1 + 96) + 8) + 24))
  {
    *(*(*(a1 + 96) + 8) + 24) = [v3 int64ForColumnIndex:6];
  }

  *(*(*(a1 + 104) + 8) + 24) = [v3 int64ForColumnIndex:7];
  v6 = [v3 dataForColumnIndex:8];
  if ((*(a1 + 204) & 1) == 0)
  {
    *(*(*(a1 + 112) + 8) + 24) = [v3 int64ForColumnIndex:9];
  }

  if ((*(a1 + 205) & 1) == 0)
  {
    *(*(*(a1 + 120) + 8) + 24) = [v3 intForColumnIndex:10] != 0;
  }

  if ((*(a1 + 206) & 1) == 0)
  {
    *(*(*(a1 + 128) + 8) + 24) = [v3 intForColumnIndex:11];
  }

  [v3 int64ForColumnIndex:12];
  [v3 intForColumnIndex:13];
  [v3 int64ForColumnIndex:14];
  if ((*(a1 + 207) & 1) == 0)
  {
    *(*(*(a1 + 136) + 8) + 24) = [v3 int64ForColumnIndex:15];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, [v3 cStringForColumnIndex:16]);
  v7 = [v3 int64ForColumnIndex:17];
  v8 = [ML3AlbumGroupingIdentifier alloc];
  v9 = ML3CPPBridgeString(&v35, 0);
  v10 = -[ML3AlbumGroupingIdentifier initWithAlbumArtistPersistentID:groupingKey:feedURL:seasonNumber:compilation:](v8, "initWithAlbumArtistPersistentID:groupingKey:feedURL:seasonNumber:compilation:", v7, v6, v9, [v3 int64ForColumnIndex:6], objc_msgSend(v3, "intForColumnIndex:", 5) != 0);

  v11 = [ML3AlbumGroupingIdentifier alloc];
  v12 = *(a1 + 168);
  v13 = *(v4 + 8);
  v14 = ML3CPPBridgeString((*(*(a1 + 40) + 8) + 48), 0);
  v15 = [v13 groupingKeyForString:v14];
  v16 = ML3CPPBridgeString((*(*(a1 + 56) + 8) + 48), 0);
  v17 = [(ML3AlbumGroupingIdentifier *)v11 initWithAlbumArtistPersistentID:v12 groupingKey:v15 feedURL:v16 seasonNumber:*(*(*(a1 + 96) + 8) + 24) compilation:*(*(*(a1 + 88) + 8) + 24)];
  v18 = *(*(a1 + 144) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = *(v4 + 32);
  PropertyIndex = ML3TrackRulesGetPropertyIndex(1, 16777225);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__itemRules + 56 * PropertyIndex + 4 * v20) == -1 || ([*(*(*(a1 + 144) + 8) + 40) isEqual:v10] & 1) != 0)
  {
    goto LABEL_34;
  }

  v22 = *(a1 + 184);
  v30[0] = *(a1 + 176);
  v30[1] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(v4, v30, 0x1000009u);
  v24 = shouldPreserveTrackProperty;
  if (!v22)
  {
    if (!shouldPreserveTrackProperty)
    {
      goto LABEL_49;
    }

LABEL_34:
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v29 = __str[0];
    }

    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = __str[1];
    }

    [*(a1 + 32) longLongValue];
    [v3 int64ForColumnIndex:3];
    [v3 intForColumnIndex:11];
    [v3 int64ForColumnIndex:4];
    [v3 int64ForColumnIndex:9];
    ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(v4, &v28, &v29);
    [v3 intForColumnIndex:10];
    [v3 intForColumnIndex:5];
    operator new();
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  if (v24)
  {
    goto LABEL_34;
  }

LABEL_49:
  if (*(*(*(a1 + 104) + 8) + 24) == *(a1 + 192))
  {
    v26 = *(v4 + 16);
    v33 = *(a1 + 32);
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [v26 executeUpdate:@"UPDATE album SET representative_item_pid=0 WHERE album_pid=?" withParameters:v27 error:0];
  }

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = 0; i != -9; i -= 3)
  {
    if (SHIBYTE(v35.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v35.__r_.__value_.__l.__data_ + i * 8));
    }
  }
}

void sub_22D546D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  v57 = 0;
  v58 = v55 - 176;
  while (1)
  {
    if (*(v58 + v57 + 71) < 0)
    {
      operator delete(*(v58 + v57 + 48));
    }

    v57 -= 24;
    if (v57 == -72)
    {

      _Unwind_Resume(a1);
    }
  }
}

void ___ZN16ML3ImportSession21_getExistingAlbumInfoEP26ML3AlbumGroupingIdentifierx_block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 48);
  memset(v29, 0, sizeof(v29));
  ML3DatabaseRowGetHomogeneousColumns<std::string>(v3, v29, 3uLL);
  if (SHIBYTE(v29[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, v29[0].__r_.__value_.__l.__data_, v29[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v28 = v29[0];
  }

  if (SHIBYTE(v29[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v29[1].__r_.__value_.__l.__data_, v29[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v29[1];
  }

  if (SHIBYTE(v29[2].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v29[2].__r_.__value_.__l.__data_, v29[2].__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v29[2];
  }

  v25 = [v3 int64ForColumnIndex:3];
  [v3 objectAtIndexedSubscript:4];
  objc_claimAutoreleasedReturnValue();
  [v3 int64ForColumnIndex:5];
  [v3 intForColumnIndex:6];
  v24 = [v3 intForColumnIndex:7];
  v23 = [v3 intForColumnIndex:8];
  v22 = [v3 intForColumnIndex:9];
  v21 = [v3 intForColumnIndex:10];
  v5 = [v3 objectAtIndexedSubscript:11];
  if (v5)
  {
    v6 = *(v4 + 3);
    v7 = [v3 objectAtIndexedSubscript:11];
    v8 = [v6 objectForKeyedSubscript:v7];
    *&v20 = [v8 ML3NameOrderValue];
    *(&v20 + 1) = v9;

    v10 = v20 == 0;
  }

  else
  {
    v20 = xmmword_22D5C6B00;
    v10 = 1;
  }

  v11 = [v3 objectAtIndexedSubscript:11];
  v12 = v11 != 0;

  if (v12 && v10)
  {
    v13 = [v3 objectAtIndexedSubscript:11];
    *&v20 = ML3ImportSession::_getNameOrderForString(v4, v13);
    *(&v20 + 1) = v14;
  }

  v19 = [v3 intForColumnIndex:12];
  v18 = [v3 intForColumnIndex:13];
  v17 = [v3 int64ForColumnIndex:14];
  v16 = [v3 intForColumnIndex:15] != 0;
  v15[4] = [v3 int64ForColumnIndex:16];
  v15[3] = [v3 int64ForColumnIndex:17];
  std::string::basic_string[abi:ne200100]<0>(v15, [v3 cStringForColumnIndex:18]);
  std::allocate_shared[abi:ne200100]<ML3AlbumData,std::allocator<ML3AlbumData>,long long &,std::string &,std::string &,int &,int &,int &,int &,ML3NameOrder &,int &,long long &,long long &,std::string &,int &,BOOL &,long long &,0>();
}

void sub_22D547438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  std::pair<std::string const,std::shared_ptr<ML3ArtistData>>::~pair(&a23);

  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (*(v54 - 217) < 0)
  {
    operator delete(*(v54 - 240));
  }

  if (*(v54 - 185) < 0)
  {
    operator delete(*(v54 - 208));
  }

  v56 = 0;
  v57 = v54 - 176;
  while (1)
  {
    if (*(v57 + v56 + 71) < 0)
    {
      operator delete(*(v57 + v56 + 48));
    }

    v56 -= 24;
    if (v56 == -72)
    {

      _Unwind_Resume(a1);
    }
  }
}

void __destroy_helper_block_ea8_176c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_176c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 184);
  *(result + 176) = *(a2 + 176);
  *(result + 184) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

__n128 __Block_byref_object_copy__410(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__411(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN16ML3ImportSession19_getAlbumArtistInfoENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 80);
  memset(__str, 0, sizeof(__str));
  ML3DatabaseRowGetHomogeneousColumns<std::string>(v3, __str, 2uLL);
  if ((*(a1 + 112) & 1) == 0)
  {
    std::string::operator=((*(*(a1 + 40) + 8) + 48), __str);
  }

  if ((*(a1 + 113) & 1) == 0)
  {
    std::string::operator=((*(*(a1 + 48) + 8) + 48), &__str[1]);
  }

  *(*(*(a1 + 56) + 8) + 24) = [v3 int64ForColumnIndex:2];
  [v3 int64ForColumnIndex:3];
  v5 = [v3 dataForColumnIndex:4];
  [v3 int64ForColumnIndex:5];
  std::string::basic_string[abi:ne200100]<0>(__p, [v3 cStringForColumnIndex:6]);
  [v3 intForColumnIndex:7];
  [v3 intForColumnIndex:8];
  [v3 int64ForColumnIndex:9];
  v6 = *(v4 + 8);
  v7 = ML3CPPBridgeString((*(*(a1 + 40) + 8) + 48), 0);
  v8 = [v6 groupingKeyForString:v7];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(v4 + 32);
  PropertyIndex = ML3TrackRulesGetPropertyIndex(1, 16777228);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__itemRules + 56 * PropertyIndex + 4 * v11) == -1 || ([*(*(*(a1 + 64) + 8) + 40) isEqualToData:v5] & 1) != 0)
  {
    goto LABEL_13;
  }

  v13 = *(a1 + 96);
  v20[0] = *(a1 + 88);
  v20[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(v4, v20, 0x100000Cu);
  v15 = shouldPreserveTrackProperty;
  if (!v13)
  {
    if (!shouldPreserveTrackProperty)
    {
      goto LABEL_25;
    }

LABEL_13:
    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v19 = __str[1];
    }

    [*(a1 + 32) longLongValue];
    ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(v4, &v19, __str);
    operator new();
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  if (v15)
  {
    goto LABEL_13;
  }

LABEL_25:
  if (*(*(*(a1 + 56) + 8) + 24) == *(a1 + 104))
  {
    v17 = *(v4 + 16);
    v23 = *(a1 + 32);
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    [v17 executeUpdate:@"UPDATE album_artist SET representative_item_pid=0 WHERE album_artist_pid=?" withParameters:v18 error:0];
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = 0; i != 0x1FFFFFFFFFFFFFFALL; i -= 3)
  {
    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(__str[i / 3 + 1].__r_.__value_.__l.__data_);
    }
  }
}

void sub_22D547AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  v45 = 0;
  v46 = v43 - 144;
  while (1)
  {
    if (*(v46 + v45 + 47) < 0)
    {
      operator delete(*(v46 + v45 + 24));
    }

    v45 -= 24;
    if (v45 == -48)
    {

      _Unwind_Resume(a1);
    }
  }
}

void ___ZN16ML3ImportSession27_getExistingAlbumArtistInfoEP6NSDatax_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 48);
  memset(v21, 0, sizeof(v21));
  ML3DatabaseRowGetHomogeneousColumns<std::string>(v3, v21, 2uLL);
  if (SHIBYTE(v21[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v21[0].__r_.__value_.__l.__data_, v21[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v21[0];
  }

  if (SHIBYTE(v21[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v21[1].__r_.__value_.__l.__data_, v21[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v21[1];
  }

  v18 = [v3 int64ForColumnIndex:2];
  v17 = [v3 int64ForColumnIndex:3];
  v5 = [v3 objectAtIndexedSubscript:4];
  if (v5)
  {
    v6 = *(v4 + 3);
    v7 = [v3 objectAtIndexedSubscript:4];
    v8 = [v6 objectForKeyedSubscript:v7];
    *&v16 = [v8 ML3NameOrderValue];
    *(&v16 + 1) = v9;

    v10 = v16 == 0;
  }

  else
  {
    v16 = xmmword_22D5C6B00;
    v10 = 1;
  }

  v11 = [v3 objectAtIndexedSubscript:3];
  v12 = v11 != 0;

  if (v12 && v10)
  {
    v13 = [v3 objectAtIndexedSubscript:4];
    *&v16 = ML3ImportSession::_getNameOrderForString(v4, v13);
    *(&v16 + 1) = v14;
  }

  v15[3] = [v3 int64ForColumnIndex:5];
  std::string::basic_string[abi:ne200100]<0>(v15, [v3 cStringForColumnIndex:6]);
  [v3 intForColumnIndex:7];
  [v3 intForColumnIndex:8];
  [v3 int64ForColumnIndex:9];
  [v3 int64ForColumnIndex:10];
  [v3 intForColumnIndex:11];
  std::allocate_shared[abi:ne200100]<ML3ArtistData,std::allocator<ML3ArtistData>,long long &,std::string &,std::string &,std::string,std::string,long long &,ML3NameOrder &,ML3NameOrder &,long long &,std::string &,BOOL &,int &,long long &,0>();
}

void sub_22D548014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (*(v38 - 153) < 0)
  {
    operator delete(*(v38 - 176));
  }

  v40 = 0;
  v41 = v38 - 144;
  while (1)
  {
    if (*(v41 + v40 + 47) < 0)
    {
      operator delete(*(v41 + v40 + 24));
    }

    v40 -= 24;
    if (v40 == -48)
    {

      _Unwind_Resume(a1);
    }
  }
}

void __destroy_helper_block_ea8_88c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_88c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  *(result + 88) = *(a2 + 88);
  *(result + 96) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN16ML3ImportSession14_getArtistInfoENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 96);
  memset(v26, 0, sizeof(v26));
  memset(__str, 0, sizeof(__str));
  ML3DatabaseRowGetHomogeneousColumns<std::string>(v3, __str, 4uLL);
  if ((*(a1 + 128) & 1) == 0)
  {
    std::string::operator=((*(*(a1 + 40) + 8) + 48), __str);
  }

  if ((*(a1 + 129) & 1) == 0)
  {
    std::string::operator=((*(*(a1 + 48) + 8) + 48), &__str[1]);
  }

  if ((*(a1 + 130) & 1) == 0)
  {
    std::string::operator=((*(*(a1 + 56) + 8) + 48), v26);
  }

  if ((*(a1 + 131) & 1) == 0)
  {
    std::string::operator=((*(*(a1 + 64) + 8) + 48), &v26[1]);
  }

  *(*(*(a1 + 72) + 8) + 24) = [v3 int64ForColumnIndex:4];
  [v3 int64ForColumnIndex:5];
  v20 = [v3 dataForColumnIndex:6];
  [v3 int64ForColumnIndex:7];
  [v3 intForColumnIndex:8];
  v5 = *(v4 + 8);
  v6 = ML3CPPBridgeString((*(*(a1 + 40) + 8) + 48), 0);
  v7 = *(a1 + 132);
  if (v7 == 1)
  {
    v8 = ML3CPPBridgeString((*(*(a1 + 56) + 8) + 48), 0);
  }

  else
  {
    v8 = &stru_28408B690;
  }

  v9 = [v5 artistGroupingKeyForArtistName:v6 seriesName:v8];
  v10 = *(*(a1 + 80) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (v7)
  {
  }

  v12 = *(v4 + 32);
  PropertyIndex = ML3TrackRulesGetPropertyIndex(1, 16777220);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(__itemRules + 56 * PropertyIndex + 4 * v12) == -1 || ([*(*(*(a1 + 80) + 8) + 40) isEqualToData:v20] & 1) != 0)
  {
    goto LABEL_22;
  }

  v14 = *(a1 + 112);
  v23[0] = *(a1 + 104);
  v23[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(v4, v23, 0x1000004u);
  v16 = shouldPreserveTrackProperty;
  if (!v14)
  {
    if (!shouldPreserveTrackProperty)
    {
      goto LABEL_35;
    }

LABEL_22:
    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = __str[1];
    }

    if (SHIBYTE(v26[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, v26[1].__r_.__value_.__l.__data_, v26[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v21 = v26[1];
    }

    ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(v4, &v22, __str);
    ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(v4, &v21, v26);
    [*(a1 + 32) longLongValue];
    operator new();
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  if (v16)
  {
    goto LABEL_22;
  }

LABEL_35:
  if (*(*(*(a1 + 72) + 8) + 24) == *(a1 + 120))
  {
    v18 = *(v4 + 16);
    v24 = *(a1 + 32);
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    [v18 executeUpdate:@"UPDATE item_artist SET representative_item_pid=0 WHERE item_artist_pid=?" withParameters:v19 error:0];
  }

  for (i = 0; i != 0x1FFFFFFFFFFFFFF4; i -= 3)
  {
    if (SHIBYTE(v26[1].__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(v26[i / 3 + 1].__r_.__value_.__l.__data_);
    }
  }
}

void sub_22D548704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  v62 = 0;
  v63 = v60 - 192;
  while (1)
  {
    if (*(v63 + v62 + 95) < 0)
    {
      operator delete(*(v63 + v62 + 72));
    }

    v62 -= 24;
    if (v62 == -96)
    {

      _Unwind_Resume(a1);
    }
  }
}

void ___ZN16ML3ImportSession22_getExistingArtistInfoEP6NSDatax_block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 48);
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  ML3DatabaseRowGetHomogeneousColumns<std::string>(v3, v27, 4uLL);
  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v27[0].__r_.__value_.__l.__data_, v27[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v27[0];
  }

  if (SHIBYTE(v27[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v27[1].__r_.__value_.__l.__data_, v27[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = v27[1];
  }

  if (SBYTE7(v29[0]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v28, *(&v28 + 1));
  }

  else
  {
    *&v24.__r_.__value_.__l.__data_ = v28;
    v24.__r_.__value_.__r.__words[2] = *&v29[0];
  }

  if (SHIBYTE(v29[1]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *(&v29[0] + 1), *&v29[1]);
  }

  else
  {
    v23 = *(v29 + 8);
  }

  [v3 int64ForColumnIndex:4];
  [v3 int64ForColumnIndex:5];
  v5 = [v3 objectAtIndexedSubscript:6];
  if (v5)
  {
    v6 = *(v4 + 3);
    v7 = [v3 objectAtIndexedSubscript:6];
    v8 = [v6 objectForKeyedSubscript:v7];
    v22 = [v8 ML3NameOrderValue];

    v9 = v22 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v3 objectAtIndexedSubscript:6];
  v11 = v10 != 0;

  if (v11 && v9)
  {
    v12 = [v3 objectAtIndexedSubscript:6];
    ML3ImportSession::_getNameOrderForString(v4, v12);
  }

  v13 = [v3 objectAtIndexedSubscript:7];
  if (v13)
  {
    v14 = *(v4 + 3);
    v15 = [v3 objectAtIndexedSubscript:7];
    v16 = [v14 objectForKeyedSubscript:v15];
    v21 = [v16 ML3NameOrderValue];

    v17 = v21 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = [v3 objectAtIndexedSubscript:7];
  v19 = v18 != 0;

  if (v19 && v17)
  {
    v20 = [v3 objectAtIndexedSubscript:7];
    ML3ImportSession::_getNameOrderForString(v4, v20);
  }

  [v3 int64ForColumnIndex:8];
  [v3 intForColumnIndex:9];
  std::allocate_shared[abi:ne200100]<ML3ArtistData,std::allocator<ML3ArtistData>,long long &,std::string &,std::string &,std::string &,std::string &,long long &,ML3NameOrder &,ML3NameOrder &,long long &,std::string,BOOL &,int,int,0>();
}

void sub_22D548D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (*(v53 - 201) < 0)
  {
    operator delete(*(v53 - 224));
  }

  v55 = 0;
  v56 = v53 - 192;
  while (1)
  {
    if (*(v56 + v55 + 95) < 0)
    {
      operator delete(*(v56 + v55 + 72));
    }

    v55 -= 24;
    if (v55 == -96)
    {

      _Unwind_Resume(a1);
    }
  }
}