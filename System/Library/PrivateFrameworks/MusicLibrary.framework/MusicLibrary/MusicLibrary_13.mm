void __destroy_helper_block_ea8_104c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_104c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 112);
  *(result + 104) = *(a2 + 104);
  *(result + 112) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_emplace<ML3GenreData>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void std::__shared_ptr_emplace<ML3GenreData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2840899E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::shared_ptr<ML3GenreData>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<ML3GenreImportItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284089A30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

__n128 __Block_byref_object_copy__533(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__534(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN16ML3ImportSession21_getExistingGenreInfoEP6NSDatax_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 48);
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  ML3DatabaseRowGetHomogeneousColumns<std::string>(v5, v15, 1uLL);
  v8 = [v5 objectAtIndexedSubscript:0];
  if (v8)
  {
    v9 = *(v7 + 3);
    v10 = [v5 objectAtIndexedSubscript:0];
    v11 = [v9 objectForKeyedSubscript:v10];
    v12 = [v11 ML3NameOrderValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 objectAtIndexedSubscript:1];

  if (v13)
  {
    if (!v12)
    {
      v14 = [v5 objectAtIndexedSubscript:0];
      ML3ImportSession::_getNameOrderForString(v7, v14);
    }
  }

  [v5 int64ForColumnIndex:2];
  [v5 objectAtIndexedSubscript:1];
  [objc_claimAutoreleasedReturnValue() longLongValue];
  operator new();
}

void sub_22D549980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,void *>>>>::~unique_ptr[abi:ne200100](&a23);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ML3ComposerData>::__on_zero_shared(uint64_t a1)
{
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

void std::__shared_ptr_emplace<ML3ComposerData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284089940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::shared_ptr<ML3ComposerData>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

__n128 __Block_byref_object_copy__512(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__513(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN16ML3ImportSession16_getComposerInfoENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
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
  v5 = [v3 dataForColumnIndex:3];
  [v3 int64ForColumnIndex:4];
  v6 = *(v4 + 8);
  v7 = ML3CPPBridgeString((*(*(a1 + 40) + 8) + 48), 0);
  v8 = [v6 groupingKeyForString:v7];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(v4 + 32);
  PropertyIndex = ML3TrackRulesGetPropertyIndex(1, 16777231);
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

  shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(v4, v20, 0x100000Fu);
  v15 = shouldPreserveTrackProperty;
  if (!v13)
  {
    if (!shouldPreserveTrackProperty)
    {
      goto LABEL_23;
    }

LABEL_13:
    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __str[1];
    }

    [*(a1 + 32) longLongValue];
    ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(v4, &__p, __str);
    operator new();
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  if (v15)
  {
    goto LABEL_13;
  }

LABEL_23:
  if (*(*(*(a1 + 56) + 8) + 24) == *(a1 + 104))
  {
    v17 = *(v4 + 16);
    v21 = *(a1 + 32);
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [v17 executeUpdate:@"UPDATE composer SET representative_item_pid=0 WHERE composer_pid=?" withParameters:v18 error:0];
  }

  for (i = 0; i != 0x1FFFFFFFFFFFFFFALL; i -= 3)
  {
    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(__str[i / 3 + 1].__r_.__value_.__l.__data_);
    }
  }
}

void sub_22D549FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  v36 = 0;
  while (1)
  {
    if (*(&a32 + v36 + 47) < 0)
    {
      operator delete(*(&a32 + v36 + 24));
    }

    v36 -= 24;
    if (v36 == -48)
    {

      _Unwind_Resume(a1);
    }
  }
}

BOOL std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ComposerData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ComposerData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ComposerData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ComposerData>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<ML3ComposerData>>>(void *a1, void *a2)
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

void sub_22D54A548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ML3ComposerImportItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284089990;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t ML3ComposerData::ML3ComposerData(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v12;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a4, *(a4 + 1));
  }

  else
  {
    v13 = *a4;
    *(a1 + 48) = *(a4 + 2);
    *(a1 + 32) = v13;
  }

  *(a1 + 56) = a5;
  *(a1 + 64) = a6;
  *(a1 + 72) = a7;
  return a1;
}

void sub_22D54A6A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN16ML3ImportSession24_getExistingComposerInfoEP6NSDatax_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 48);
  memset(v18, 0, sizeof(v18));
  ML3DatabaseRowGetHomogeneousColumns<std::string>(v3, v18, 2uLL);
  if (SHIBYTE(v18[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v18[0].__r_.__value_.__l.__data_, v18[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = v18[0];
  }

  if (SHIBYTE(v18[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v18[1].__r_.__value_.__l.__data_, v18[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v18[1];
  }

  v5 = [v3 objectAtIndexedSubscript:2];
  [v5 longLongValue];

  v6 = [v3 objectAtIndexedSubscript:4];
  [v6 longLongValue];

  v7 = [v3 objectAtIndexedSubscript:3];
  if (v7)
  {
    v8 = *(v4 + 3);
    v9 = [v3 objectAtIndexedSubscript:3];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v10 ML3NameOrderValue];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v3 objectAtIndexedSubscript:1];
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = [v3 objectAtIndexedSubscript:3];
    ML3ImportSession::_getNameOrderForString(v4, v15);
  }

  operator new();
}

void sub_22D54AE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v39);
  operator delete(v42);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  v43 = 0;
  v44 = v40 - 144;
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

uint64_t ML3ImportSession::updateTrack(uint64_t a1, void *a2, int a3, int a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    (*(**a2 + 88))(__p);
    v9 = v26 >= 0 ? __p : __p[0];
    *buf = 136446722;
    v28 = v9;
    v29 = 1024;
    v30 = a3;
    v31 = 1024;
    v32 = a4;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "update track %{public}s, processCollectionsAsStandaloneEntities=%{BOOL}u, ignoreNonExistingTrack=%{BOOL}u", buf, 0x18u);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  ++*(a1 + 164);
  if ([*(a1 + 1584) count])
  {
    if (a3)
    {
      goto LABEL_14;
    }
  }

  else if (*(a1 + 1544) == *(a1 + 1536) || (a3 & 1) != 0)
  {
    goto LABEL_13;
  }

  result = ML3ImportSession::flush(a1, 0);
  if (!result)
  {
    return result;
  }

LABEL_13:
  if (a3)
  {
LABEL_14:
    v11 = a2[1];
    v24[0] = *a2;
    v24[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = ML3ImportSession::_prepareTrackForImport(a1, v24, a4, 0);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (!v12)
    {
      v13 = a2[1];
      v23[0] = *a2;
      v23[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      ML3ImportSession::_prepareTrackData(a1, v23);
    }

    return 0;
  }

  v14 = a2[1];
  v22[0] = *a2;
  v22[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TrackPersistentID = ML3ImportSession::_getTrackPersistentID(a1, v22);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (TrackPersistentID)
  {
    v16 = *a2;
    *(v16 + 8) = TrackPersistentID;
    *(v16 + 16) = 1;
    v17 = a2[1];
    v21[0] = v16;
    v21[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    ML3ImportSession::_prepareTrackData(a1, v21);
  }

  v18 = os_log_create("com.apple.amp.medialibrary", "Import");
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  if ((a4 & 1) == 0)
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "updateTrack called for unknown track", buf, 2u);
    }

    return 0;
  }

  if (v19)
  {
    v20 = *(*a2 + 8);
    *buf = 134217984;
    v28 = v20;
    _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "updateTrack ignoring non-existing track with pid %lld", buf, 0xCu);
  }

  return 1;
}

void sub_22D54B48C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3ImportSession::removeTrack(uint64_t a1, uint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(**a2 + 88))(__p);
    v5 = v19 >= 0 ? __p : *__p;
    *buf = 136446210;
    v21 = v5;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "removing track %{public}s", buf, 0xCu);
    if (v19 < 0)
    {
      operator delete(*__p);
    }
  }

  if (*(a1 + 1544) == *(a1 + 1536) && *(a1 + 1568) == *(a1 + 1560))
  {
    v6 = 1;
  }

  else
  {
    v6 = ML3ImportSession::flush(a1, 0);
  }

  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TrackPersistentID = ML3ImportSession::_getTrackPersistentID(a1, &v16);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v9 = os_log_create("com.apple.amp.medialibrary", "Import");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (TrackPersistentID)
  {
    if (v10)
    {
      *__p = 134217984;
      *&__p[4] = TrackPersistentID;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "removing track %lld", __p, 0xCu);
    }

    ++*(a1 + 168);
    if (*(a1 + 1544) == *(a1 + 1536) && *(a1 + 1568) == *(a1 + 1560) || ML3ImportSession::flush(a1, 1))
    {
      v11 = *(a1 + 1592);
      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{TrackPersistentID, v16, v17}];
      [v11 addObject:v12];

      v13 = *(a1 + 1584);
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:TrackPersistentID];
      [v13 addObject:v14];

      if ([*(a1 + 1584) count] < 0x3E8)
      {
        return 1;
      }

      else
      {
        return ML3ImportSession::flush(a1, 1);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v10)
    {
      *__p = 0;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "failed to locate track to delete. oh well", __p, 2u);
    }
  }

  return v6;
}

uint64_t ML3ImportSession::addContainer(uint64_t a1, void *a2)
{
  buf[3] = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(**a2 + 88))(__p);
    v5 = v16 >= 0 ? __p : *__p;
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = v5;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "adding container %{public}s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(*__p);
    }
  }

  if (*(a1 + 1544) == *(a1 + 1536) && *(a1 + 1568) == *(a1 + 1560) && ![*(a1 + 1584) count] && *(a1 + 2440) == *(a1 + 2432) || (result = ML3ImportSession::flush(a1, 1), result))
  {
    v7 = a2[1];
    v14[0] = *a2;
    v14[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ContainerPersistentID = ML3ImportSession::_getContainerPersistentID(a1, v14);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    buf[0] = ContainerPersistentID;
    if (ContainerPersistentID)
    {
      ++*(a1 + 176);
      *(*a2 + 16) = 1;
    }

    else
    {
      ++*(a1 + 172);
      ContainerPersistentID = *(*a2 + 8);
      buf[0] = ContainerPersistentID;
      if (!ContainerPersistentID)
      {
        v9 = a2[1];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ContainerPersistentID = ML3CreateIntegerUUID();
        v10 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 134217984;
          *&__p[4] = ContainerPersistentID;
          _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "created new container pid %lld", __p, 0xCu);
        }

        buf[0] = ContainerPersistentID;
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }
    }

    if (*(a1 + 1520) == 1)
    {
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__erase_unique<long long>((a1 + 776), ContainerPersistentID);
    }

    v11 = *a2;
    v11[1] = ContainerPersistentID;
    v12 = a2[1];
    v13[0] = v11;
    v13[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    ML3ImportSession::_prepareContainerData(a1, v13);
  }

  return result;
}

void sub_22D54BB20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ML3ImportSession::_prepareContainerData(uint64_t a1, void **a2)
{
  v7 = *MEMORY[0x277D85DE8];
  ML3ImportItem::getSanitizedStringValue(buf, *a2, 184549384);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    v3 = v6;
  }

  memset(v2, 0, sizeof(v2));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v2, &v3, &__sz, 1uLL);
}

void sub_22D54DF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ML3ImportItem>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<ML3ImportItem>>>>::~__hash_table(&STACK[0x310]);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&a51);
  a51 = &STACK[0x340];
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&a51);

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  STACK[0x310] = &a48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x310]);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<unsigned long long,long long>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = i[2];
      if (v5 >= *&v6)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
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

    if (v10[2] != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ML3ImportItem>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<ML3ImportItem>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
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

  return v6;
}

void sub_22D54EE44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ML3ImportItem>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<ML3ImportItem>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<ML3ContainerItemImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ContainerItemImportItem>,std::allocator<ML3ContainerItemImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_26ML3ContainerItemImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ContainerItemImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ContainerItemImportItem>,std::allocator<ML3ContainerItemImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ContainerItemImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ContainerItemImportItem>,std::allocator<ML3ContainerItemImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t __Block_byref_object_copy__731(uint64_t result, uint64_t a2)
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

void ___ZN16ML3ImportSession34_prepareContainerAuthorImportItemsENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 int64ForColumnIndex:0];
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 cStringForColumnIndex:1]);
  v8 = *(a1[4] + 8);
  v14 = __p;
  std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v8 + 48), __p)[5] = v7;
  LODWORD(v7) = [v5 intForColumnIndex:2];
  v9 = *(a1[5] + 8);
  v14 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v9 + 48), __p) + 40) = v7 != 0;
  LODWORD(v7) = [v5 intForColumnIndex:3];
  v10 = *(a1[6] + 8);
  v14 = __p;
  std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v10 + 48), __p)[5] = v7;
  LODWORD(v7) = [v5 intForColumnIndex:4];
  v11 = *(a1[7] + 8);
  v14 = __p;
  std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v11 + 48), __p)[5] = v7;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZN16ML3ImportSession34_prepareContainerAuthorImportItemsENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke_741(void *a1, void *a2, int a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a1[9];
  if (!a3)
  {
    v11 = (*(**a2 + 32))(*a2, 251658243);
    (*(**a2 + 72))(&v33);
    v9 = v33;
    if (v33)
    {
      goto LABEL_5;
    }

LABEL_9:
    v31 = 0;
    memset(&__p, 0, sizeof(__p));
    goto LABEL_47;
  }

  v9 = *a2;
  v10 = a2[1];
  *&v33 = *a2;
  *(&v33 + 1) = v10;
  v11 = 0;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_5:
  (*(*v9 + 24))(&v30);
  if ((v31 & 1) == 0)
  {
    goto LABEL_47;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v29 = __p;
  }

  v12 = *(a1[4] + 8);
  *buf = &v29;
  v13 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v12 + 48), &v29)[5];
  v14 = *(&v33 + 1);
  v28 = v33;
  if (*(&v33 + 1))
  {
    atomic_fetch_add_explicit((*(&v33 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  PersonPersistentID = ML3ImportSession::_getPersonPersistentID(v8, &v28);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (!PersonPersistentID)
  {
    v21 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v33 + 88))(buf);
      v22 = v37 >= 0 ? buf : *buf;
      *v41 = 136315138;
      *&v41[4] = v22;
      _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "Adding new person entry for author: %s", v41, 0xCu);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(*buf);
      }
    }

    v23 = *(&v33 + 1);
    v27 = v33;
    if (*(&v33 + 1))
    {
      atomic_fetch_add_explicit((*(&v33 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    ML3ImportSession::addPerson(v8, &v27);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v13)
    {
      goto LABEL_17;
    }

LABEL_38:
    v24 = [*(v8 + 136) nextPersistentID];
    v25 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v33 + 88))(v41);
      v26 = v42 >= 0 ? v41 : *v41;
      *buf = 134218754;
      *&buf[4] = v24;
      v35 = 2080;
      v36 = v26;
      v37 = 2048;
      *v38 = v11;
      *&v38[8] = 1024;
      *&v38[10] = a3;
      _os_log_impl(&dword_22D2FA000, v25, OS_LOG_TYPE_DEFAULT, "Adding new author entry with pid %lld for %s: role=%lld, isPending=%d", buf, 0x26u);
      if (v42 < 0)
      {
        operator delete(*v41);
      }
    }

    operator new();
  }

  if (!v13)
  {
    goto LABEL_38;
  }

LABEL_17:
  v16 = *(a1[5] + 8);
  *buf = &v29;
  if (*(std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v16 + 48), &v29) + 40) != a3 || (v17 = *(a1[6] + 8), *buf = &v29, v11 != std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v17 + 48), &v29)[5]) || (v18 = *(a1[7] + 8), *buf = &v29, std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v18 + 48), &v29)[5] != a4))
  {
    v19 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v33 + 88))(v41);
      if (v42 >= 0)
      {
        v20 = v41;
      }

      else
      {
        v20 = *v41;
      }

      *buf = 134219010;
      *&buf[4] = v13;
      v35 = 2080;
      v36 = v20;
      v37 = 1024;
      *v38 = a3;
      *&v38[4] = 2048;
      *&v38[6] = v11;
      v39 = 2048;
      v40 = a4;
      _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "Updating author entry with pid %lld for %s: isPending=%d, role=%lld, position=%lld", buf, 0x30u);
      if (v42 < 0)
      {
        operator delete(*v41);
      }
    }

    ++*(v8 + 200);
    operator new();
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((*(a1[8] + 8) + 48), &v29);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

LABEL_47:
  v30 = &unk_28408AC60;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(&v33 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
  }
}

void sub_22D54F874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(a1);
}

void ML3ImportSession::addPerson(uint64_t a1, __int128 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(**a2 + 88))(__p);
    v5 = v13.__r_.__value_.__s.__data_[7] >= 0 ? __p : *__p;
    LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
    *(buf.__r_.__value_.__r.__words + 4) = v5;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "adding person %{public}s", &buf, 0xCu);
    if (v13.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(*__p);
    }
  }

  v6 = *(a2 + 1);
  v10 = *a2;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PersonPersistentID = ML3ImportSession::_getPersonPersistentID(a1, &v10);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (PersonPersistentID)
  {
    ++*(a1 + 212);
    *(*a2 + 16) = 1;
  }

  else
  {
    ++*(a1 + 208);
    v8 = *(a2 + 1);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    PersonPersistentID = [*(a1 + 88) nextPersistentID];
    v9 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 134217984;
      *&__p[4] = PersonPersistentID;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "created new person pid %lld", __p, 0xCu);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  *(*a2 + 8) = PersonPersistentID;
  std::vector<std::shared_ptr<ML3ImportItem>>::push_back[abi:ne200100]((a1 + 2576), a2);
  (*(**a2 + 24))(__p);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
    *__p = &unk_28408AC60;
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    buf = v13;
  }

  *__p = &buf;
  std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 2536), &buf)[5] = PersonPersistentID;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_22D54FC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D54FD08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
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

uint64_t std::__shared_ptr_pointer<ML3ContainerAuthorImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ContainerAuthorImportItem>,std::allocator<ML3ContainerAuthorImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_28ML3ContainerAuthorImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ContainerAuthorImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ContainerAuthorImportItem>,std::allocator<ML3ContainerAuthorImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ContainerAuthorImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ContainerAuthorImportItem>,std::allocator<ML3ContainerAuthorImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void ___ZN16ML3ImportSession25_prepareContainerItemDataENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 numberForColumnIndex:0];
  v9 = [v8 longLongValue];

  v15 = v9;
  v10 = [v5 numberForColumnIndex:1];
  v11 = [v10 longLongValue];

  v12 = (*(v7 + 632) + 40 * *(v7 + 32));
  v14 = v11;
  v16 = &v14;
  std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v12, v11)[3] = v9;
  v13 = (*(v7 + 656) + 40 * *(v7 + 32));
  v16 = &v15;
  std::__hash_table<std::__hash_value_type<long long,unsigned long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,unsigned long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,unsigned long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,unsigned long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v13, v9)[3] = v11;
}

uint64_t ML3ImportSession::updateContainer(uint64_t a1, void *a2, char a3)
{
  buf[3] = *MEMORY[0x277D85DE8];
  v6 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    (*(**a2 + 88))(__p);
    v7 = v19 >= 0 ? __p : *__p;
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = v7;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "updating container %{public}s", buf, 0xCu);
    if (v19 < 0)
    {
      operator delete(*__p);
    }
  }

  ++*(a1 + 176);
  if (*(a1 + 1544) == *(a1 + 1536) && *(a1 + 1568) == *(a1 + 1560) && ![*(a1 + 1584) count] && *(a1 + 2416) == *(a1 + 2408) || (result = ML3ImportSession::flush(a1, 0), result))
  {
    v9 = a2[1];
    v17[0] = *a2;
    v17[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ContainerPersistentID = ML3ImportSession::_getContainerPersistentID(a1, v17);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    buf[0] = ContainerPersistentID;
    if (ContainerPersistentID)
    {
      v11 = *a2;
      *(v11 + 16) = 1;
      *(v11 + 8) = ContainerPersistentID;
      v12 = a2[1];
      v16[0] = v11;
      v16[1] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
      }

      ML3ImportSession::_prepareContainerData(a1, v16);
    }

    v13 = os_log_create("com.apple.amp.medialibrary", "Import");
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (a3)
    {
      if (v14)
      {
        v15 = *(*a2 + 8);
        *__p = 134217984;
        *&__p[4] = v15;
        _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "updateContainer ignoring non-existing container with pid %lld", __p, 0xCu);
      }

      return 1;
    }

    else
    {
      if (v14)
      {
        *__p = 0;
        _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "updateContainer called for unknown container", __p, 2u);
      }

      return 0;
    }
  }

  return result;
}

void sub_22D55063C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3ImportSession::removeContainer(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(**a2 + 88))(__p);
    v5 = v17 >= 0 ? __p : *__p;
    *buf = 136446210;
    v19 = v5;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "removing container %{public}s", buf, 0xCu);
    if (v17 < 0)
    {
      operator delete(*__p);
    }
  }

  if (!ML3ImportSession::flush(a1, 0))
  {
    return 0;
  }

  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ContainerPersistentID = ML3ImportSession::_getContainerPersistentID(a1, &v14);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (ContainerPersistentID)
  {
    *(*a2 + 8) = ContainerPersistentID;
    v8 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 134217984;
      *&__p[4] = ContainerPersistentID;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "removing container %lld", __p, 0xCu);
    }

    ++*(a1 + 180);
    v9 = [ML3Container alloc];
    v10 = [(ML3Entity *)v9 initWithPersistentID:ContainerPersistentID inLibrary:*(a1 + 8), v14, v15];
    v11 = [v10 deleteFromLibrary];
    if ((v11 & 1) == 0)
    {
      v12 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "failed to delete playlist", __p, 2u);
      }
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "failed to find playlist to delete - ignoring", __p, 2u);
    }

    v11 = 1;
  }

  return v11;
}

void ML3ImportSession::setMaxAllowedLibraryPinnedEntities(ML3ImportSession *this, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(this + 8) == 2 || MSVDeviceIsWatch() && *(this + 8) == 1)
  {
    *(this + 702) = a2;
    v4 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(this + 702);
      v8 = 67109120;
      v9 = v5;
      v6 = "setting max allowed pins=%d";
LABEL_8:
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, v6, &v8, 8u);
    }
  }

  else
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(this + 8);
      v8 = 67109120;
      v9 = v7;
      v6 = "cannot update pin count for source=%d";
      goto LABEL_8;
    }
  }
}

uint64_t ML3ImportSession::addLibraryPinnedEntity(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) != 2 && (!MSVDeviceIsWatch() || *(a1 + 32) != 1))
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *v64 = 67109120;
      *&v64[4] = v10;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "cannot add pin for source=%d", v64, 8u);
    }

    return 1;
  }

  v4 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(**a2 + 88))(v64);
    v5 = v65.__r_.__value_.__s.__data_[7] >= 0 ? v64 : *v64;
    v6 = *(a1 + 1529);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
    *(buf.__r_.__value_.__r.__words + 4) = v5;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v6;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "adding pinnedEntity=%{public}s, _didFlushBeforeProcessingPinsPayload=%{BOOL}u", &buf, 0x12u);
    if (v65.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(*v64);
    }
  }

  v54 = 0;
  v55 = 0;
  v7 = (*(**a2 + 32))(*a2, 419430402);
  v53 = v7;
  if ((*(**a2 + 56))(*a2, 419430406))
  {
    v8 = (*(**a2 + 32))(*a2, 419430406);
  }

  else
  {
    v8 = *(a1 + 2368);
  }

  v52 = v8;
  v51 = (*(**a2 + 32))(*a2, 419430404);
  v12 = (*(**a2 + 32))(*a2, 419430403);
  (*(**a2 + 24))(v64);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
    *v64 = &unk_28408AC60;
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    buf = v65;
  }

  (*(**a2 + 24))(v64);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
    *v64 = &unk_28408AC60;
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v50 = v65;
  }

  if ((*(a1 + 1529) & 1) != 0 || (*(a1 + 1529) = 1, ML3ImportSession::flush(a1, 1)))
  {
    v11 = 1;
    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v39 = *(a1 + 16);
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = &v50;
        }

        else
        {
          v40 = v50.__r_.__value_.__r.__words[0];
        }

        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:v40];
        v59[0] = v41;
        v59[1] = &unk_2840CA238;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
        v16 = [v39 executeQuery:@"SELECT album_artist.album_artist_pid from album_artist LEFT OUTER JOIN item ON (album_artist.album_artist_pid=item.album_artist_pid) WHERE (album_artist.cloud_universal_library_id=? AND (album_artist.liked_state=? OR in_my_library)) LIMIT 1" withParameters:v42];

        v43 = [v16 int64ValueForFirstRowAndColumn];
        v55 = v43;
        if (v43)
        {
          v44 = *(a1 + 16);
          v58[0] = &unk_2840CA250;
          v45 = [MEMORY[0x277CCABB0] numberWithLongLong:v43];
          v58[1] = v45;
          v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
          v47 = [v44 executeQuery:@"SELECT pin_pid FROM library_pins WHERE entity_type=? AND entity_pid=?" withParameters:v46];

          v54 = [v47 int64ValueForFirstRowAndColumn];
          *v64 = 7;
          std::allocate_shared[abi:ne200100]<ML3LibraryPinsData,std::allocator<ML3LibraryPinsData>,long long &,long long &,ML3EntityType,long long &,long long &,long long &,std::string &,std::string &,0>();
        }

        v48 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *v64 = 0;
          _os_log_impl(&dword_22D2FA000, v48, OS_LOG_TYPE_ERROR, "Could not find album artist to pin", v64, 2u);
        }

        goto LABEL_57;
      }

      if (v12 == 7)
      {
        v22 = *(a1 + 16);
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v50;
        }

        else
        {
          v23 = v50.__r_.__value_.__r.__words[0];
        }

        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:v23];
        v61 = v24;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
        v16 = [v22 executeQuery:@"SELECT item.album_pid FROM item JOIN album ON (item.album_pid=album.album_pid) WHERE (in_my_library AND album.cloud_library_id=?) LIMIT 1" withParameters:v25];

        v26 = [v16 int64ValueForFirstRowAndColumn];
        v55 = v26;
        if (v26)
        {
          v27 = *(a1 + 16);
          v60[0] = &unk_2840CA220;
          v28 = [MEMORY[0x277CCABB0] numberWithLongLong:v26];
          v60[1] = v28;
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
          v30 = [v27 executeQuery:@"SELECT pin_pid FROM library_pins WHERE entity_type=? AND entity_pid=?" withParameters:v29];

          v54 = [v30 int64ValueForFirstRowAndColumn];
          *v64 = 4;
          std::allocate_shared[abi:ne200100]<ML3LibraryPinsData,std::allocator<ML3LibraryPinsData>,long long &,long long &,ML3EntityType,long long &,long long &,long long &,std::string &,std::string &,0>();
        }

        v48 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *v64 = 0;
          _os_log_impl(&dword_22D2FA000, v48, OS_LOG_TYPE_ERROR, "Could not find album to pin", v64, 2u);
        }

        goto LABEL_57;
      }
    }

    else
    {
      if (v12 == 1)
      {
        v31 = *(a1 + 16);
        v32 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
        v63 = v32;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
        v16 = [v31 executeQuery:@"SELECT container_pid FROM container WHERE store_cloud_id=?" withParameters:v33];

        v34 = [v16 int64ValueForFirstRowAndColumn];
        v55 = v34;
        if (v34)
        {
          v35 = *(a1 + 16);
          v62[0] = &unk_2840CA208;
          v36 = [MEMORY[0x277CCABB0] numberWithLongLong:v34];
          v62[1] = v36;
          v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
          v38 = [v35 executeQuery:@"SELECT pin_pid FROM library_pins WHERE entity_type=? AND entity_pid=?" withParameters:v37];

          v54 = [v38 int64ValueForFirstRowAndColumn];
          *v64 = 1;
          std::allocate_shared[abi:ne200100]<ML3LibraryPinsData,std::allocator<ML3LibraryPinsData>,long long &,long long &,ML3EntityType,long long &,long long &,long long &,char const(&)[1],std::string &,0>();
        }

        v48 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *v64 = 0;
          _os_log_impl(&dword_22D2FA000, v48, OS_LOG_TYPE_ERROR, "Could not find playlist to pin", v64, 2u);
        }

        goto LABEL_57;
      }

      if (v12 == 2)
      {
        v13 = *(a1 + 16);
        v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
        v57 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
        v16 = [v13 executeQuery:@"SELECT item_pid FROM item JOIN item_store using(item_pid) WHERE in_my_library AND store_saga_id=?" withParameters:v15];

        v17 = [v16 int64ValueForFirstRowAndColumn];
        v55 = v17;
        if (v17)
        {
          v18 = *(a1 + 16);
          v56[0] = &unk_2840CA268;
          v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v17];
          v56[1] = v19;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
          v21 = [v18 executeQuery:@"SELECT pin_pid FROM library_pins WHERE entity_type=? AND entity_pid=?" withParameters:v20];

          v54 = [v21 int64ValueForFirstRowAndColumn];
          *v64 = 0;
          std::allocate_shared[abi:ne200100]<ML3LibraryPinsData,std::allocator<ML3LibraryPinsData>,long long &,long long &,ML3EntityType,long long &,long long &,long long &,char const(&)[1],std::string &,0>();
        }

        v48 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *v64 = 0;
          _os_log_impl(&dword_22D2FA000, v48, OS_LOG_TYPE_ERROR, "Could not find track to pin", v64, 2u);
        }

LABEL_57:

        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_22D5515A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v22 = *(v20 - 128);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 73) < 0)
  {
    operator delete(*(v20 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_22D551848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_22D551944(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t ML3ImportSession::finish(ML3ImportSession *this)
{
  v2 = ML3ImportSession::flush(this, 1);
  if (v2)
  {
    ML3ImportSession::_finishImport(this);
  }

  return v2;
}

void ML3ImportSession::_finishImport(ML3ImportSession *this)
{
  v406 = *MEMORY[0x277D85DE8];
  v1 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v1, OS_LOG_TYPE_DEFAULT, "finishing import", buf, 2u);
  }

  v2 = this;
  if (*(this + 1520) == 1)
  {
    if (*(this + 105))
    {
      v3 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(this + 105);
        *buf = 134217984;
        *&buf[4] = v4;
        _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "removing %lu album_artists not re-added by the reset import", buf, 0xCu);
      }

      v333 = ML3AlbumArtistRulesRemovalSourceIdentityPropertyForSource(*(this + 8));
      v5 = v333;
      if (v333)
      {
        v326 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE album_artist SET %@='', liked_state=?, liked_state_changed_date=? WHERE album_artist_pid=?", v333];
        v6 = this;
        v330 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE album_artist SET %@=0, liked_state=?, liked_state_changed_date=? WHERE album_artist_pid=?", v333];
        v7 = *(this + 104);
        if (v7)
        {
          while (1)
          {
            v8 = v7[2];
            v9 = *(v6 + 8);
            v10 = *(v6 + 2);
            if (v9 == 2)
            {
              v388[0] = &unk_2840CA268;
              v11 = [MEMORY[0x277CBEAA8] date];
              v388[1] = v11;
              v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
              v388[2] = v12;
              v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v388 count:3];
              v368 = 0;
              v14 = [v10 executeUpdate:v326 withParameters:v13 error:&v368];
              v15 = v368;
            }

            else
            {
              v387[0] = &unk_2840CA268;
              v11 = [MEMORY[0x277CBEAA8] date];
              v387[1] = v11;
              v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
              v387[2] = v12;
              v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v387 count:3];
              v367 = 0;
              v14 = [v10 executeUpdate:v330 withParameters:v13 error:&v367];
              v15 = v367;
            }

            if ((v14 & 1) == 0)
            {
              break;
            }

            v7 = *v7;
            v6 = this;
            if (!v7)
            {
              goto LABEL_14;
            }
          }

          v17 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = v333;
            *&buf[12] = 2048;
            *&buf[14] = v8;
            _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_ERROR, "failed to remove source property=%{public}@ for albumArtistPID=%lld", buf, 0x16u);
          }

          v16 = 0;
        }

        else
        {
LABEL_14:
          v16 = 1;
        }

        v5 = v333;
      }

      else
      {
        v16 = 1;
      }

      v2 = this;
    }

    else
    {
      v16 = 1;
    }

    if (*(v2 + 110))
    {
      v18 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(v2 + 110);
        *buf = 134217984;
        *&buf[4] = v19;
        _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "removing %lu albums not re-added by the reset import", buf, 0xCu);
      }

      v334 = ML3AlbumRulesRemovalSourceIdentityPropertyForSource(*(this + 8));
      v20 = v334;
      if (v334)
      {
        v327 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE album SET %@='', liked_state=?, liked_state_changed_date=? WHERE album_pid=?", v334];
        v21 = this;
        v331 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE album SET %@=0, liked_state=?, liked_state_changed_date=? WHERE album_artist_pid=?", v334];
        v22 = *(this + 109);
        if (v22)
        {
          while (1)
          {
            v23 = v22[2];
            v24 = *(v21 + 8);
            v25 = *(v21 + 2);
            if (v24 == 2)
            {
              v386[0] = &unk_2840CA268;
              v26 = [MEMORY[0x277CBEAA8] date];
              v386[1] = v26;
              v27 = [MEMORY[0x277CCABB0] numberWithLongLong:v23];
              v386[2] = v27;
              v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v386 count:3];
              v366 = 0;
              v29 = [v25 executeUpdate:v327 withParameters:v28 error:&v366];
              v30 = v366;
            }

            else
            {
              v385[0] = &unk_2840CA268;
              v26 = [MEMORY[0x277CBEAA8] date];
              v385[1] = v26;
              v27 = [MEMORY[0x277CCABB0] numberWithLongLong:v23];
              v385[2] = v27;
              v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v385 count:3];
              v365 = 0;
              v29 = [v25 executeUpdate:v331 withParameters:v28 error:&v365];
              v30 = v365;
            }

            if ((v29 & 1) == 0)
            {
              break;
            }

            v22 = *v22;
            v21 = this;
            if (!v22)
            {
              v16 = 1;
              goto LABEL_37;
            }
          }

          v31 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = v334;
            *&buf[12] = 2048;
            *&buf[14] = v23;
            _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_ERROR, "failed to remove source property=%{public}@ for albumPID=%lld", buf, 0x16u);
          }

          v16 = 0;
        }

LABEL_37:

        v20 = v334;
      }

      v2 = this;
    }

    if (*(v2 + 95))
    {
      v32 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(v2 + 95);
        *buf = 134217984;
        *&buf[4] = v33;
        _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_DEFAULT, "removing %lu tracks not re-added by the reset import", buf, 0xCu);
      }

      v335 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(this + 95)];
      v34 = this;
      for (i = *(this + 94); i; v34 = this)
      {
        v36 = [MEMORY[0x277CCABB0] numberWithLongLong:i[2]];
        [(NSArray *)v335 addObject:v36];

        i = *i;
      }

      v37 = v335;
      v16 = ML3ImportSession::_removeTracksFromLibrary(v34, v335);
      if (!v16)
      {
        v38 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2FA000, v38, OS_LOG_TYPE_ERROR, "failed to remove remaining tracks", buf, 2u);
        }

        v37 = v335;
      }

      v2 = this;
    }

    if (*(v2 + 100))
    {
      v39 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(v2 + 100);
        *buf = 134217984;
        *&buf[4] = v40;
        _os_log_impl(&dword_22D2FA000, v39, OS_LOG_TYPE_DEFAULT, "removing %lu containers not re-added by the reset import", buf, 0xCu);
      }

      v2 = this;
      v41 = *(this + 99);
      if (v41)
      {
        while (1)
        {
          v42 = v41[2];
          v336 = [(ML3Entity *)[ML3Container alloc] initWithPersistentID:v42 inLibrary:*(this + 1)];
          if (![(ML3Entity *)v336 deleteFromLibrary])
          {
            break;
          }

          v41 = *v41;
          if (!v41)
          {
            v16 = 1;
            goto LABEL_59;
          }
        }

        v43 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v42;
          _os_log_impl(&dword_22D2FA000, v43, OS_LOG_TYPE_ERROR, "failed to delete container %lld", buf, 0xCu);
        }

        v16 = 0;
LABEL_59:
        v2 = this;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  v44 = *(v2 + 8);
  if (v44 != 2)
  {
    if (v44 != 1)
    {
      goto LABEL_269;
    }

    v2 = this;
    if (!MSVDeviceIsWatch())
    {
      goto LABEL_269;
    }
  }

  v337 = [*(v2 + 8) executeQuery:{@"SELECT pin_pid, entity_pid, entity_type, default_action, position, position_uuid FROM library_pins ORDER BY position"}];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN16ML3ImportSession38_populateExistingLibraryPinnedEntitiesEv_block_invoke;
  v397 = &__block_descriptor_40_e40_v32__0__ML3DatabaseRow_8__NSError_16_B24l;
  *v398 = this;
  [(NSArray *)v337 enumerateRowsWithBlock:buf];

  v324 = [*(this + 8) executeQuery:@"SELECT value FROM _MLDatabaseProperties WHERE key='MLCloudLibraryMaxPinCount'"];
  v45 = [v324 int64ValueForFirstRowAndColumn];
  v46 = this;
  v47 = 0;
  v48 = *(this + 702);
  v49 = 1;
  if (v48 != -1 && v45 != v48)
  {
    v50 = *(this + 2);
    v390[0] = @"MLCloudLibraryMaxPinCount";
    v51 = [MEMORY[0x277CCABB0] numberWithInt:?];
    v390[1] = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v390 count:2];
    v376 = 0;
    LOBYTE(v50) = [v50 executeUpdate:@"INSERT OR REPLACE INTO _MLDatabaseProperties (key withParameters:value) VALUES (? error:{?)", v52, &v376}];
    v47 = v376;

    if (v50)
    {
      v46 = this;
      *(this + 1532) = 1;
    }

    else
    {
      v53 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = *(this + 702);
        *buf = 67109378;
        *&buf[4] = v54;
        *&buf[8] = 2114;
        *&buf[10] = v47;
        _os_log_impl(&dword_22D2FA000, v53, OS_LOG_TYPE_ERROR, "Could not update max allowed pin count to %u, error=%{public}@", buf, 0x12u);
      }

      v49 = 0;
      v46 = this;
    }
  }

  if (!*(v46 + 296) && *(v46 + 291))
  {
    v340 = v47;
    v144 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      v145 = *(v46 + 296);
      v146 = *(v46 + 291);
      *buf = 134218240;
      *&buf[4] = v145;
      *&buf[12] = 2048;
      *&buf[14] = v146;
      _os_log_impl(&dword_22D2FA000, v144, OS_LOG_TYPE_DEFAULT, "Removing all local pinned entities addedLibraryPins.size()=%lu, existingLibraryPinsEntityPidMap.size()=%lu", buf, 0x16u);
    }

    if ([*(this + 2) executeUpdate:@"DELETE FROM library_pins"])
    {
      v147 = *(this + 290);
      if (v147)
      {
        do
        {
          v148 = *v147[3];
          v49 = [objc_opt_class() incrementRevisionWithLibrary:*(this + 1) persistentID:v148 deletionType:1 revisionType:0];
          if ((v49 & 1) == 0)
          {
            v149 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              *&buf[4] = v148;
              _os_log_impl(&dword_22D2FA000, v149, OS_LOG_TYPE_ERROR, "Could not update entity revision for pinPID=%lld", buf, 0xCu);
            }
          }

          v147 = *v147;
        }

        while (v147);
      }

      else
      {
        v49 = 1;
      }

      v155 = this;
      *(this + 63) = *(this + 296);
    }

    else
    {
      v180 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v47;
        _os_log_impl(&dword_22D2FA000, v180, OS_LOG_TYPE_ERROR, "Could not delete existing library pins error=%{public}@", buf, 0xCu);
      }

      v49 = 0;
      v155 = this;
    }

    v157 = v340;
    goto LABEL_259;
  }

  v55 = *(v46 + 290);
  if (!v55)
  {
    v67 = v47;
    goto LABEL_225;
  }

  v338 = v47;
  v322 = (v46 + 2360);
  do
  {
    v56 = *(this + 2352);
    if (!*&v56)
    {
      goto LABEL_89;
    }

    v57 = v55[2];
    v58 = vcnt_s8(v56);
    v58.i16[0] = vaddlv_u8(v58);
    if (v58.u32[0] > 1uLL)
    {
      v59 = v55[2];
      if (v57 >= *&v56)
      {
        v59 = v57 % *&v56;
      }
    }

    else
    {
      v59 = (*&v56 - 1) & v57;
    }

    v60 = *(*(this + 293) + 8 * v59);
    if (!v60 || (v61 = *v60) == 0)
    {
LABEL_89:
      v63 = *(this + 2);
      v64 = [MEMORY[0x277CCABB0] numberWithLongLong:*(v55[3] + 8)];
      v389 = v64;
      v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v389 count:1];
      v375 = v338;
      v66 = [v63 executeUpdate:@"DELETE FROM library_pins WHERE entity_pid=?" withParameters:v65 error:&v375];
      v67 = v375;

      v68 = os_log_create("com.apple.amp.medialibrary", "Default");
      v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
      if (v66)
      {
        if (v69)
        {
          v70 = v55[3];
          v72 = *v70;
          v71 = v70[1];
          v73 = v70[2];
          if (ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::onceToken != -1)
          {
            dispatch_once(&ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::onceToken, &__block_literal_global_885);
          }

          v74 = ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::__pinnedEntityTypeDescription;
          v75 = [MEMORY[0x277CCABB0] numberWithInteger:v73];
          v76 = [v74 objectForKey:v75];

          *buf = 134218498;
          *&buf[4] = v72;
          *&buf[12] = 2048;
          *&buf[14] = v71;
          *&buf[22] = 2114;
          v397 = v76;
          _os_log_impl(&dword_22D2FA000, v68, OS_LOG_TYPE_ERROR, "deleted library pin with pid=%lld, entity_pid=%lld, type=%{public}@", buf, 0x20u);
        }

        if ([objc_opt_class() incrementRevisionWithLibrary:*(this + 1) persistentID:*v55[3] deletionType:1 revisionType:0])
        {
          ++*(this + 63);
          v49 = 1;
          goto LABEL_96;
        }

        v68 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v154 = *v55[3];
          *buf = 134217984;
          *&buf[4] = v154;
          v151 = "Could not update entity revision for pinPID=%lld";
          v152 = v68;
          v153 = 12;
          goto LABEL_223;
        }
      }

      else if (v69)
      {
        v150 = *(v55[3] + 8);
        *buf = 134218242;
        *&buf[4] = v150;
        *&buf[12] = 2114;
        *&buf[14] = v67;
        v151 = "Could not delete library pin with pid=%lld, error=%{public}@";
        v152 = v68;
        v153 = 22;
LABEL_223:
        _os_log_impl(&dword_22D2FA000, v152, OS_LOG_TYPE_ERROR, v151, buf, v153);
      }

      v49 = 0;
      break;
    }

    while (1)
    {
      v62 = v61[1];
      if (v62 == v57)
      {
        break;
      }

      if (v58.u32[0] > 1uLL)
      {
        if (v62 >= *&v56)
        {
          v62 %= *&v56;
        }
      }

      else
      {
        v62 &= *&v56 - 1;
      }

      if (v62 != v59)
      {
        goto LABEL_89;
      }

LABEL_88:
      v61 = *v61;
      if (!v61)
      {
        goto LABEL_89;
      }
    }

    if (v61[2] != v57)
    {
      goto LABEL_88;
    }

    v78 = v55[3];
    v77 = v55[4];
    *v403 = v78;
    *&v403[8] = v77;
    if (v77)
    {
      atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
    }

    v80 = v61[3];
    v79 = v61[4];
    if (v79)
    {
      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v80[2] != v78[2])
    {
      goto LABEL_119;
    }

    v81 = *(v80 + 71);
    if (v81 >= 0)
    {
      v82 = *(v80 + 71);
    }

    else
    {
      v82 = v80[7];
    }

    v83 = *(v78 + 71);
    v84 = v83;
    if ((v83 & 0x80u) != 0)
    {
      v83 = v78[7];
    }

    if (v82 != v83 || (v81 >= 0 ? (v85 = v80 + 6) : (v85 = v80[6]), v84 >= 0 ? (v86 = v78 + 6) : (v86 = v78[6]), memcmp(v85, v86, v82) || v80[3] != v78[3]))
    {
LABEL_119:
      if (v49)
      {
LABEL_120:
        if (*(this + 1520) & 1) != 0 || !CFPreferencesGetAppBooleanValue(@"AutomaticDownloadEnabledForLibraryPins", @"com.apple.mobileipod", 0) || (MSVDeviceIsWatch())
        {
          v90 = 1;
          v49 = 1;
          goto LABEL_126;
        }

        v49 = ML3ImportSession::_setKeepLocalOnPinnedEntity(this, v403);
      }

      else
      {
        v49 = 0;
      }

      v90 = 1;
LABEL_126:
      v67 = v338;
      if (!v79)
      {
        goto LABEL_128;
      }

LABEL_127:
      std::__shared_weak_count::__release_shared[abi:ne200100](v79);
      goto LABEL_128;
    }

    *v80 = *v78;
    v87 = *(this + 2352);
    v88 = v61[1];
    v89 = vcnt_s8(v87);
    v89.i16[0] = vaddlv_u8(v89);
    if (v89.u32[0] > 1uLL)
    {
      if (v88 >= *&v87)
      {
        v88 %= *&v87;
      }
    }

    else
    {
      v88 &= *&v87 - 1;
    }

    v91 = *(this + 293);
    v92 = *(v91 + 8 * v88);
    do
    {
      v93 = v92;
      v92 = *v92;
    }

    while (v92 != v61);
    if (v93 == v322)
    {
      goto LABEL_148;
    }

    v94 = v93[1];
    if (v89.u32[0] > 1uLL)
    {
      if (v94 >= *&v87)
      {
        v94 %= *&v87;
      }
    }

    else
    {
      v94 &= *&v87 - 1;
    }

    if (v94 != v88)
    {
LABEL_148:
      if (!*v61)
      {
        goto LABEL_149;
      }

      v95 = *(*v61 + 8);
      if (v89.u32[0] > 1uLL)
      {
        if (v95 >= *&v87)
        {
          v95 %= *&v87;
        }
      }

      else
      {
        v95 &= *&v87 - 1;
      }

      if (v95 != v88)
      {
LABEL_149:
        *(v91 + 8 * v88) = 0;
      }
    }

    v96 = *v61;
    if (*v61)
    {
      v97 = *(v96 + 8);
      if (v89.u32[0] > 1uLL)
      {
        if (v97 >= *&v87)
        {
          v97 %= *&v87;
        }
      }

      else
      {
        v97 &= *&v87 - 1;
      }

      if (v97 != v88)
      {
        *(*(this + 293) + 8 * v97) = v93;
        v96 = *v61;
      }
    }

    *v93 = v96;
    *v61 = 0;
    --*(this + 296);
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::shared_ptr<ML3LibraryPinsData>>,void *>>>::operator()[abi:ne200100](1, v61);
    v98 = (v80 + 9);
    v99 = *(v80 + 95);
    if (v99 >= 0)
    {
      v100 = *(v80 + 95);
    }

    else
    {
      v100 = v80[10];
    }

    v101 = *(v78 + 95);
    v102 = v101;
    if ((v101 & 0x80u) != 0)
    {
      v101 = v78[10];
    }

    v321 = v79;
    if (v100 != v101 || (v99 >= 0 ? (v103 = v80 + 9) : (v103 = *v98), v102 >= 0 ? (v104 = v78 + 9) : (v104 = v78[9]), memcmp(v103, v104, v100) || v80[5] != v78[5] || v80[4] != v78[4]))
    {
      v118 = *(this + 2);
      v119 = [MEMORY[0x277CCABB0] numberWithLongLong:v80[4]];
      v391 = v119;
      v120 = v80 + 9;
      if (*(v80 + 95) < 0)
      {
        v120 = *v98;
      }

      [MEMORY[0x277CCACA8] stringWithUTF8String:v120];
      v320 = v318 = v80 + 9;
      v392 = v320;
      v121 = [MEMORY[0x277CCABB0] numberWithLongLong:v80[5]];
      v393 = v121;
      v122 = [MEMORY[0x277CCABB0] numberWithLongLong:*v80];
      v319 = v119;
      v394 = v122;
      v123 = [MEMORY[0x277CBEA60] arrayWithObjects:&v391 count:4];
      v374 = v338;
      v124 = [v118 executeUpdate:@"UPDATE library_pins SET position=? withParameters:position_uuid=? error:{default_action=? WHERE pin_pid=?", v123, &v374}];
      v67 = v374;

      v125 = os_log_create("com.apple.amp.medialibrary", "Default");
      v126 = v125;
      if (v124)
      {
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          v128 = v80[4];
          v127 = v80[5];
          if (ML3LibraryPinDefaultActionDescription(long long)::onceToken != -1)
          {
            dispatch_once(&ML3LibraryPinDefaultActionDescription(long long)::onceToken, &__block_literal_global_899);
          }

          v129 = ML3LibraryPinDefaultActionDescription(long long)::__pinnedEntityDefaultActionDescription;
          v130 = [MEMORY[0x277CCABB0] numberWithLongLong:v127];
          v131 = [v129 objectForKey:v130];

          v339 = v131;
          if (*(v80 + 95) < 0)
          {
            v318 = *v318;
          }

          v132 = *v80;
          v133 = v80[2];
          if (ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::onceToken != -1)
          {
            dispatch_once(&ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::onceToken, &__block_literal_global_885);
          }

          v134 = ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::__pinnedEntityTypeDescription;
          v135 = [MEMORY[0x277CCABB0] numberWithInteger:v133];
          v136 = [v134 objectForKey:v135];

          if (*(v80 + 71) < 0)
          {
            v137 = v80[6];
          }

          else
          {
            v137 = v80 + 6;
          }

          v142 = v80[3];
          *buf = 134219522;
          *&buf[4] = v128;
          *&buf[12] = 2114;
          *&buf[14] = v339;
          *&buf[22] = 2080;
          v397 = v318;
          *v398 = 2048;
          *&v398[2] = v132;
          *&v398[10] = 2114;
          *&v398[12] = v136;
          v399 = 2048;
          v400 = v142;
          v401 = 2080;
          v402 = v137;
          _os_log_impl(&dword_22D2FA000, v126, OS_LOG_TYPE_DEFAULT, "updated position=%lld, default_action=%{public}@, position_uuid=%s for for pin_pid=%lld, type=%{public}@, saga_id_id=%lld, cloud_id=%s", buf, 0x48u);
        }

        v79 = v321;
        if ([objc_opt_class() incrementRevisionWithLibrary:*(this + 1) persistentID:*v55[3] deletionType:0 revisionType:0])
        {
          ++*(this + 62);
          v338 = v67;
          goto LABEL_120;
        }

        v126 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_203;
        }

        v143 = *v55[3];
        *buf = 134217984;
        *&buf[4] = v143;
        v139 = v126;
        v140 = "Could not update entity revision for pinPID=%lld";
        v141 = 12;
      }

      else
      {
        if (!os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
        {
LABEL_203:

          v90 = 0;
          v49 = 0;
          goto LABEL_204;
        }

        v138 = *(v55[3] + 8);
        *buf = 134218242;
        *&buf[4] = v138;
        *&buf[12] = 2114;
        *&buf[14] = v67;
        v139 = v126;
        v140 = "Could not update library pin with pid=%lld, error=%{public}@";
        v141 = 22;
      }

      _os_log_impl(&dword_22D2FA000, v139, OS_LOG_TYPE_ERROR, v140, buf, v141);
      goto LABEL_203;
    }

    v105 = _ML3LogCategoryDefault();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      v106 = *v80;
      v107 = v80[2];
      v108 = v80 + 6;
      if (ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::onceToken != -1)
      {
        dispatch_once(&ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::onceToken, &__block_literal_global_885);
      }

      v109 = ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::__pinnedEntityTypeDescription;
      v110 = [MEMORY[0x277CCABB0] numberWithInteger:v107];
      v111 = [v109 objectForKey:v110];

      v112 = v111;
      v113 = v80[5];
      if (ML3LibraryPinDefaultActionDescription(long long)::onceToken != -1)
      {
        dispatch_once(&ML3LibraryPinDefaultActionDescription(long long)::onceToken, &__block_literal_global_899);
      }

      v114 = ML3LibraryPinDefaultActionDescription(long long)::__pinnedEntityDefaultActionDescription;
      v115 = [MEMORY[0x277CCABB0] numberWithLongLong:v113];
      v116 = [v114 objectForKey:v115];

      if (*(v80 + 71) < 0)
      {
        v108 = *v108;
      }

      v117 = v80[3];
      *buf = 134219010;
      *&buf[4] = v106;
      *&buf[12] = 2114;
      *&buf[14] = v112;
      *&buf[22] = 2114;
      v397 = v116;
      *v398 = 2048;
      *&v398[2] = v117;
      *&v398[10] = 2080;
      *&v398[12] = v108;
      _os_log_impl(&dword_22D2FA000, v105, OS_LOG_TYPE_DEFAULT, "Skipping update for pin_pid=%lld, type=%{public}@, default_action=%{public}@, saga_id=%lld, cloud_library_id=%s", buf, 0x34u);
    }

    if (v49)
    {
      v79 = v321;
      goto LABEL_120;
    }

    v49 = 0;
    v90 = 1;
    v67 = v338;
LABEL_204:
    v79 = v321;
    if (v321)
    {
      goto LABEL_127;
    }

LABEL_128:
    if (*&v403[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v403[8]);
    }

    if ((v90 & 1) == 0)
    {
      break;
    }

LABEL_96:
    v55 = *v55;
    v338 = v67;
  }

  while (v55);
LABEL_225:
  v155 = this;
  v156 = *(this + 295);
  if (v156)
  {
    v157 = v67;
    while (1)
    {
      v159 = *(v156 + 24);
      v158 = *(v156 + 32);
      v328 = v156;
      *v369 = v159;
      v370 = v158;
      if (v158)
      {
        atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v160 = [*(v155 + 19) nextPersistentID];
      *v159 = v160;
      v161 = *(v155 + 2);
      *buf = [MEMORY[0x277CCABB0] numberWithLongLong:v160];
      v341 = v157;
      v332 = *buf;
      v162 = [MEMORY[0x277CCABB0] numberWithLongLong:*(v159 + 8)];
      *&buf[8] = v162;
      v163 = [MEMORY[0x277CCABB0] numberWithLongLong:*(v159 + 16)];
      *&buf[16] = v163;
      v164 = [MEMORY[0x277CCABB0] numberWithLongLong:*(v159 + 40)];
      v397 = v164;
      v165 = [MEMORY[0x277CCABB0] numberWithLongLong:*(v159 + 32)];
      *v398 = v165;
      v166 = (v159 + 72);
      if (*(v159 + 95) < 0)
      {
        v166 = *v166;
      }

      v167 = [MEMORY[0x277CCACA8] stringWithUTF8String:v166];
      *&v398[8] = v167;
      v168 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:6];
      v373 = v157;
      v169 = [v161 executeUpdate:@"INSERT OR REPLACE INTO library_pins (pin_pid withParameters:entity_pid error:{entity_type, default_action, position, position_uuid) VALUES (?, ?, ?, ?, ?, ?)", v168, &v373}];
      v157 = v373;

      if (v169)
      {
        v155 = this;
        ++*(this + 61);
        v170 = objc_opt_class();
        v171 = *v369;
        if ([v170 incrementRevisionWithLibrary:*(this + 1) persistentID:**v369 deletionType:0 revisionType:0])
        {
          v49 = (*(this + 1520) & 1) != 0 || !CFPreferencesGetAppBooleanValue(@"AutomaticDownloadEnabledForLibraryPins", @"com.apple.mobileipod", 0) || (MSVDeviceIsWatch() & 1) != 0 || ML3ImportSession::_setKeepLocalOnPinnedEntity(this, v369);
          goto LABEL_246;
        }

        v172 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
        {
          v179 = *v171;
          *v403 = 134217984;
          *&v403[4] = v179;
          _os_log_impl(&dword_22D2FA000, v172, OS_LOG_TYPE_ERROR, "Could not update entity revision for pinPID=%lld", v403, 0xCu);
        }
      }

      else
      {
        v172 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
        {
          v174 = **v369;
          v173 = *(*v369 + 8);
          v175 = *(*v369 + 16);
          if (ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::onceToken != -1)
          {
            dispatch_once(&ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::onceToken, &__block_literal_global_885);
          }

          v176 = ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::__pinnedEntityTypeDescription;
          v177 = [MEMORY[0x277CCABB0] numberWithInteger:v175];
          v178 = [v176 objectForKey:v177];

          *v403 = 134218754;
          *&v403[4] = v174;
          *&v403[12] = 2048;
          *&v403[14] = v173;
          *&v403[22] = 2114;
          *&v403[24] = v178;
          LOWORD(v404) = 2114;
          *(&v404 + 2) = v157;
          _os_log_impl(&dword_22D2FA000, v172, OS_LOG_TYPE_ERROR, "Error inserting pin with pid=%lld, entity_pid=%lld, entity_type=%{public}@, error=%{public}@", v403, 0x2Au);
        }
      }

      v49 = 0;
      v155 = this;
LABEL_246:
      if (v370)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v370);
      }

      if (v49)
      {
        v156 = *v328;
        if (*v328)
        {
          continue;
        }
      }

      goto LABEL_259;
    }
  }

  v157 = v67;
LABEL_259:
  v181 = [*(v155 + 2) executeQuery:@"SELECT value FROM _MLDatabaseProperties WHERE key='MLCloudLibraryMaxPinCount'"];

  v182 = [v181 int64ValueForFirstRowAndColumn];
  v183 = [*(this + 2) executeQuery:@"SELECT COUNT() FROM library_pins"];

  v184 = [v183 int64ValueForFirstRowAndColumn];
  v185 = this;
  if (v184 > v182)
  {
    *(this + 1530) = 1;
    v186 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
    {
      *v403 = 134218240;
      *&v403[4] = v184;
      *&v403[12] = 2048;
      *&v403[14] = v182;
      _os_log_impl(&dword_22D2FA000, v186, OS_LOG_TYPE_ERROR, "We have more pins(%lld) than the max allowed count(%lld)", v403, 0x16u);
    }

    v185 = this;
  }

  *v369 = 0;
  v370 = v369;
  v371 = 0x2020000000;
  v372 = -1;
  v187 = [*(v185 + 2) executeQuery:@"SELECT position from library_pins ORDER BY position ASC"];

  *v403 = MEMORY[0x277D85DD0];
  *&v403[8] = 3221225472;
  *&v403[16] = ___ZN16ML3ImportSession21_reconcileLibraryPinsEv_block_invoke;
  *&v403[24] = &unk_2787653F0;
  *&v404 = v369;
  *(&v404 + 1) = this;
  [v187 enumerateRowsWithBlock:v403];
  _Block_object_dispose(v369, 8);

  if (v49)
  {
    v16 = 1;
  }

  else
  {
    v188 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v188, OS_LOG_TYPE_ERROR, "failed to reconcile library pins", buf, 2u);
    }

    v16 = 0;
  }

  v2 = this;
LABEL_269:
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(v2 + 1096);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(v2 + 1136);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(v2 + 1256);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(v2 + 1176);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(v2 + 1216);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(v2 + 976);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(v2 + 1056);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(v2 + 1016);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(v2 + 936);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(v2 + 896);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(v2 + 1296);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(v2 + 1336);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(v2 + 2304);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(v2 + 2344);
  if (!v16)
  {
    v329 = 0;
    goto LABEL_328;
  }

  if ((ML3ImportSession::_enableTriggers(v2) & 1) == 0)
  {
    v208 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v209 = "failed to re-create triggers";
      goto LABEL_325;
    }

    goto LABEL_326;
  }

  if (*(this + 1521) == 1)
  {
    v189 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v189, OS_LOG_TYPE_DEFAULT, "re-building indexes after large import", buf, 2u);
    }

    v363 = 0u;
    v364 = 0u;
    v361 = 0u;
    v362 = 0u;
    v190 = +[ML3MusicLibrary indexSchemaSQL];
    v191 = [v190 countByEnumeratingWithState:&v361 objects:v384 count:16];
    if (!v191)
    {
LABEL_317:

      v208 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v209 = "failed to re-create indexes";
        goto LABEL_325;
      }

      goto LABEL_326;
    }

    v192 = *v362;
    do
    {
      for (j = 0; j != v191; ++j)
      {
        if (*v362 != v192)
        {
          objc_enumerationMutation(v190);
        }

        if (([*(this + 2) executeUpdate:*(*(&v361 + 1) + 8 * j)] & 1) == 0)
        {
          goto LABEL_317;
        }
      }

      v191 = [v190 countByEnumeratingWithState:&v361 objects:v384 count:16];
    }

    while (v191);

    if (([*(this + 2) executeUpdate:@"PRAGMA analysis_limit=400;"] & 1) == 0)
    {
      v194 = _ML3LogCategoryImport();
      if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v194, OS_LOG_TYPE_ERROR, "failed to set ANALYZE limit", buf, 2u);
      }
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v196 = v195;
    v197 = _ML3LogCategoryImport();
    if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v197, OS_LOG_TYPE_DEFAULT, "Starting to run ANALYZE...", buf, 2u);
    }

    if (([*(this + 2) executeUpdate:@"ANALYZE;"] & 1) == 0)
    {
      v198 = _ML3LogCategoryImport();
      if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v198, OS_LOG_TYPE_ERROR, "failed to perform ANALYZE", buf, 2u);
      }
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v200 = v199;
    v201 = _ML3LogCategoryImport();
    if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v200 - v196;
      _os_log_impl(&dword_22D2FA000, v201, OS_LOG_TYPE_DEFAULT, "Finished running ANALYZE... Took %g", buf, 0xCu);
    }
  }

  memset(v403, 0, sizeof(v403));
  v404 = 0u;
  v405 = 0u;
  v391 = objc_opt_class();
  v392 = objc_opt_class();
  v393 = objc_opt_class();
  v394 = objc_opt_class();
  v395 = objc_opt_class();
  v342 = [MEMORY[0x277CBEA60] arrayWithObjects:&v391 count:5];
  v202 = [(NSArray *)v342 countByEnumeratingWithState:v403 objects:buf count:16];
  if (!v202)
  {
    goto LABEL_307;
  }

  v203 = **&v403[16];
  while (2)
  {
    for (k = 0; k != v202; ++k)
    {
      if (**&v403[16] != v203)
      {
        objc_enumerationMutation(v342);
      }

      v205 = *(*&v403[8] + 8 * k);
      if (*(this + 42) || (*(this + 41) + *(this + 40)) > 0x13)
      {
        if (([v205 canonicalizeCollectionRepresentativeItemsInLibrary:*(this + 1) usingConnection:*(this + 2)] & 1) == 0)
        {
          v316 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (!os_log_type_enabled(v316, OS_LOG_TYPE_ERROR))
          {
LABEL_322:

            p_super = &v342->super;
            goto LABEL_323;
          }

          *v369 = 0;
          v210 = "failed to canonicalize collection representative item pids";
LABEL_321:
          _os_log_impl(&dword_22D2FA000, v316, OS_LOG_TYPE_ERROR, v210, v369, 2u);
          goto LABEL_322;
        }
      }

      else if (([v205 updateRepresentativeItemPersistentIDsInLibrary:*(this + 1) persistentIDs:*(this + 199) usingConnection:*(this + 2)] & 1) == 0)
      {
        v316 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (!os_log_type_enabled(v316, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_322;
        }

        *v369 = 0;
        v210 = "failed to update representative item pids";
        goto LABEL_321;
      }
    }

    v202 = [(NSArray *)v342 countByEnumeratingWithState:v403 objects:buf count:16];
    if (v202)
    {
      continue;
    }

    break;
  }

LABEL_307:

  v206 = this;
  if (((*(this + 1520) & 1) != 0 || *(this + 42) > 0x63u || *(this + 60) || *(this + 57)) && (v207 = [ML3Collection removeOrphanedCollectionsInLibrary:*(this + 1) usingConnection:*(this + 2)], v206 = this, !v207))
  {
    p_super = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *v369 = 0;
      _os_log_impl(&dword_22D2FA000, p_super, OS_LOG_TYPE_ERROR, "failed to de-orphan collections", v369, 2u);
    }

LABEL_323:

    v208 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v209 = "failed to apply finishing collection changes";
      goto LABEL_325;
    }
  }

  else
  {
    if ([*(v206 + 7) commitUpdates])
    {
      v329 = 1;
      goto LABEL_327;
    }

    v208 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v209 = "failed to commit sort map changes";
LABEL_325:
      _os_log_impl(&dword_22D2FA000, v208, OS_LOG_TYPE_ERROR, v209, buf, 2u);
    }
  }

LABEL_326:

  v329 = 0;
LABEL_327:
  v2 = this;
LABEL_328:
  v343 = [*(v2 + 2) executeQuery:@"SELECT value FROM _MLDatabaseProperties WHERE key = 'MLCloudAccountID'"];
  v212 = [(NSArray *)v343 objectForFirstRowAndColumn];
  v213 = [v212 longLongValue];

  v214 = v329;
  if (v213)
  {
    v214 = 0;
  }

  v215 = v343;
  if (v214 == 1 && [*(this + 91) count])
  {
    v216 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
    {
      v217 = [*(this + 91) count];
      *buf = 134217984;
      *&buf[4] = v217;
      _os_log_impl(&dword_22D2FA000, v216, OS_LOG_TYPE_DEFAULT, "inserting %lu tracks into purchase playlist", buf, 0xCu);
    }

    v218 = [*(this + 1) currentDevicePurchasesPlaylist];
    v219 = [v218 appendTracksWithPersistentIDs:*(this + 91) notify:0];

    if ((v219 & 1) == 0)
    {
      v220 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v220, OS_LOG_TYPE_ERROR, "failed to update purchased playlist", buf, 2u);
      }
    }

    v215 = v343;
    [*(this + 91) removeAllObjects];
  }

  v221 = *(this + 1);
  memset(buf, 0, sizeof(buf));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(buf, *(this + 298), *(this + 299), (*(this + 299) - *(this + 298)) >> 3);
  v222 = *(this + 2);
  v356[0] = MEMORY[0x277D85DD0];
  v356[1] = 3321888768;
  v356[2] = ___ZN16ML3ImportSession13_finishImportEv_block_invoke;
  v356[3] = &unk_284088518;
  v359 = 0;
  v360 = 0;
  __p = 0;
  v323 = *buf;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
  v325 = v221;
  v357 = v325;
  [v222 enqueueBlockForTransactionCommit:v356];
  if (*(this + 315))
  {
    v223 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
    {
      v224 = *(this + 315);
      *v403 = 134217984;
      *&v403[4] = v224;
      _os_log_impl(&dword_22D2FA000, v223, OS_LOG_TYPE_DEFAULT, "re-trying %lu orphaned playlists", v403, 0xCu);
    }

    for (m = *(this + 314); m; m = *m)
    {
      v226 = m[2];
      v227 = m[3];
      ContainerPersistentID = ML3ImportSession::_getContainerPersistentID(this, v227);
      if (ContainerPersistentID)
      {
        v229 = *(this + 2);
        v230 = [MEMORY[0x277CCABB0] numberWithLongLong:ContainerPersistentID];
        v383[0] = v230;
        v231 = [MEMORY[0x277CCABB0] numberWithLongLong:v226];
        v383[1] = v231;
        v232 = [MEMORY[0x277CBEA60] arrayWithObjects:v383 count:2];
        [v229 executeUpdate:@"UPDATE container SET parent_pid = ? WHERE container_pid = ?" withParameters:v232 error:0];
      }

      else
      {
        v230 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
        {
          *v403 = 134218240;
          *&v403[4] = v226;
          *&v403[12] = 2048;
          *&v403[14] = v227;
          _os_log_impl(&dword_22D2FA000, v230, OS_LOG_TYPE_ERROR, "failed to find parent of orphaned container. container_pid=%lld, parentSourceId=%lld", v403, 0x16u);
        }
      }
    }
  }

  v233 = *(this + 59);
  v234 = *(this + 60);
  if (v233 == v234)
  {
    v238 = this;
  }

  else
  {
    do
    {
      v235 = [MEMORY[0x277CCABB0] numberWithLongLong:*v233];
      v236 = *(this + 2);
      v382[0] = v235;
      v382[1] = v235;
      v237 = [MEMORY[0x277CBEA60] arrayWithObjects:v382 count:2];
      [v236 executeUpdate:@"UPDATE album SET album_year = (SELECT IFNULL(MAX(year) withParameters:0) FROM item_extra JOIN item USING(item_pid) WHERE item.album_pid = ?) WHERE album_pid = ?" error:{v237, 0}];

      ++v233;
    }

    while (v233 != v234);
    v238 = this;
    v233 = *(this + 59);
  }

  *(v238 + 60) = v233;
  v239 = *(v238 + 62);
  v240 = *(v238 + 63);
  if (v239 == v240)
  {
    v246 = this;
  }

  else
  {
    do
    {
      v241 = *v239;
      v242 = [MEMORY[0x277CCABB0] numberWithLongLong:*v239];
      v243 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
      {
        *v403 = 134217984;
        *&v403[4] = v241;
        _os_log_impl(&dword_22D2FA000, v243, OS_LOG_TYPE_DEFAULT, "updating contains_classical_work for album %lld", v403, 0xCu);
      }

      v244 = *(this + 2);
      v381[0] = v242;
      v381[1] = v242;
      v245 = [MEMORY[0x277CBEA60] arrayWithObjects:v381 count:2];
      [v244 executeUpdate:@"UPDATE album SET contains_classical_work=(CASE WHEN EXISTS (SELECT album_pid FROM item JOIN item_extra USING (item_pid) WHERE album_pid=? AND classical_work!='' OR (show_composer=1 AND grouping!='')) THEN 1 ELSE 0 END) WHERE album_pid=?" withParameters:v245 error:0];

      ++v239;
    }

    while (v239 != v240);
    v246 = this;
    v239 = *(this + 62);
  }

  *(v246 + 63) = v239;
  v247 = *(v246 + 65);
  v248 = *(v246 + 66);
  if (v247 == v248)
  {
    v254 = this;
  }

  else
  {
    do
    {
      v249 = *v247;
      v250 = [MEMORY[0x277CCABB0] numberWithLongLong:*v247];
      v251 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v251, OS_LOG_TYPE_DEFAULT))
      {
        *v403 = 134217984;
        *&v403[4] = v249;
        _os_log_impl(&dword_22D2FA000, v251, OS_LOG_TYPE_DEFAULT, "updating all_compilations for album %lld", v403, 0xCu);
      }

      v252 = *(this + 2);
      v380[0] = v250;
      v380[1] = v250;
      v253 = [MEMORY[0x277CBEA60] arrayWithObjects:v380 count:2];
      [v252 executeUpdate:@"UPDATE album SET all_compilations=(SELECT IFNULL(MIN(is_compilation) withParameters:0) FROM item WHERE item.album_pid = ?) WHERE album_pid = ?" error:{v253, 0}];

      ++v247;
    }

    while (v247 != v248);
    v254 = this;
    v247 = *(this + 65);
  }

  *(v254 + 66) = v247;
  if (*(v254 + 8) != 6)
  {
    if (!v329)
    {
      goto LABEL_381;
    }

LABEL_380:
    [*(v254 + 2) executeUpdate:@"DELETE FROM _MLDatabaseProperties WHERE key = 'MLResetCollectionsOnNextImport'"];
    goto LABEL_381;
  }

  v255 = [MEMORY[0x277CBEB18] array];
  v256 = [*(v254 + 2) executeQuery:{@"SELECT person_pid, cloud_id, name FROM person WHERE NOT EXISTS (SELECT * FROM container_item_person WHERE container_item_person.person_pid = person.person_pid) AND NOT EXISTS (SELECT * FROM container_author WHERE container_author.person_pid = person.person_pid)"}];
  v354[0] = MEMORY[0x277D85DD0];
  v354[1] = 3221225472;
  v354[2] = ___ZN16ML3ImportSession13_finishImportEv_block_invoke_270;
  v354[3] = &unk_278766118;
  v257 = v255;
  v355 = v257;
  [v256 enumerateRowsWithBlock:v354];

  if ([v257 count])
  {
    v258 = +[ML3DatabaseStatementRenderer defaultRenderer];
    v259 = [v258 statementWithPrefix:@"DELETE FROM person WHERE ROWID" inParameterCount:{objc_msgSend(v257, "count")}];
    v260 = *(this + 2);
    v353 = 0;
    v261 = [v260 executeUpdate:v259 withParameters:v257 error:&v353];
    v262 = v353;
    LOBYTE(v329) = v261;
    if ((v261 & 1) == 0)
    {
      v263 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v263, OS_LOG_TYPE_ERROR))
      {
        *v403 = 138543362;
        *&v403[4] = v262;
        _os_log_impl(&dword_22D2FA000, v263, OS_LOG_TYPE_ERROR, "Failed to remove orphaned persons. err=%{public}@", v403, 0xCu);
      }
    }
  }

  v264 = [MEMORY[0x277CBEB18] array];
  v265 = [*(this + 2) executeQuery:{@"SELECT container_item_reaction_pid, container_item_pid, person_pid FROM container_item_reaction WHERE NOT EXISTS (SELECT * FROM container_item WHERE container_item.container_item_pid =container_item_reaction.container_item_pid)"}];
  v351[0] = MEMORY[0x277D85DD0];
  v351[1] = 3221225472;
  v351[2] = ___ZN16ML3ImportSession13_finishImportEv_block_invoke_277;
  v351[3] = &unk_278766118;
  v266 = v264;
  v352 = v266;
  [v265 enumerateRowsWithBlock:v351];

  if ([v266 count])
  {
    v267 = +[ML3DatabaseStatementRenderer defaultRenderer];
    v268 = [v267 statementWithPrefix:@"DELETE FROM container_item_reaction WHERE ROWID" inParameterCount:{objc_msgSend(v266, "count")}];
    v269 = *(this + 2);
    v350 = 0;
    v270 = [v269 executeUpdate:v268 withParameters:v266 error:&v350];
    v271 = v350;
    LOBYTE(v329) = v270;
    if ((v270 & 1) == 0)
    {
      v272 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v272, OS_LOG_TYPE_ERROR))
      {
        *v403 = 138543362;
        *&v403[4] = v271;
        _os_log_impl(&dword_22D2FA000, v272, OS_LOG_TYPE_ERROR, "Failed to remove orphaned reactions. err=%{public}@", v403, 0xCu);
      }
    }
  }

  v254 = this;
  if (v329)
  {
    goto LABEL_380;
  }

LABEL_381:
  v273 = *(v254 + 8);
  if (v273 && v273 != *(v254 + 2))
  {
    [*(v254 + 1) checkInDatabaseConnection:?];
    v274 = *(v254 + 8);
    *(v254 + 8) = 0;

    v254 = this;
  }

  v275 = *(v254 + 7);
  *(v254 + 7) = 0;

  v276 = MEMORY[0x277CCACA8];
  v277 = [*(this + 1) databasePath];
  v278 = [v277 stringByStandardizingPath];
  v279 = [v276 stringWithFormat:@"com.apple.MusicLibrary.importFinished-%@", v278];

  v280 = v279;
  notify_post([v279 UTF8String]);
  v281 = this;
  if (*(this + 56) && *(this + 41) || *(this + 62) + *(this + 61) + *(this + 63) || *(this + 50) + *(this + 49) != -*(this + 51) || *(this + 60) + *(this + 58) + *(this + 43) + *(this + 45) + *(this + 40) + *(this + 42) != -*(this + 48) - (*(this + 46) + *(this + 47)) || *(this + 1532) == 1)
  {
    v282 = *(this + 2);
    v348[0] = MEMORY[0x277D85DD0];
    v348[1] = 3221225472;
    v348[2] = ___ZN16ML3ImportSession13_finishImportEv_block_invoke_284;
    v348[3] = &unk_278765158;
    v349 = v325;
    [v282 enqueueBlockForTransactionCommit:v348];

    v281 = this;
  }

  if (MSVDeviceOSIsInternalInstall())
  {
    CFPreferencesAppSynchronize(@"com.apple.medialibrary");
    if (CFPreferencesGetAppBooleanValue(@"DuplicateVideosAlert", @"com.apple.medialibrary", 0))
    {
      v283 = *(v281 + 2);
      v345[0] = MEMORY[0x277D85DD0];
      v345[1] = 3221225472;
      v345[2] = ___ZN16ML3ImportSession13_finishImportEv_block_invoke_2_291;
      v345[3] = &unk_2787651D0;
      v347 = v281;
      v346 = v325;
      [v283 enqueueBlockForTransactionCommit:v345];

      v281 = this;
    }
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v285 = v284;
  v286 = *(v281 + 32);
  v287 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v287, OS_LOG_TYPE_DEFAULT))
  {
    *v403 = 134218240;
    *&v403[4] = v281;
    *&v403[12] = 2048;
    *&v403[14] = v285 - v286;
    _os_log_impl(&dword_22D2FA000, v287, OS_LOG_TYPE_DEFAULT, "finished import session %p in %.2f seconds", v403, 0x16u);
  }

  v288 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v288, OS_LOG_TYPE_DEFAULT))
  {
    v289 = *(this + 40);
    v290 = *(this + 41);
    v291 = *(this + 42);
    *v403 = 67109632;
    *&v403[4] = v289;
    *&v403[8] = 1024;
    *&v403[10] = v290;
    *&v403[14] = 1024;
    *&v403[16] = v291;
    _os_log_impl(&dword_22D2FA000, v288, OS_LOG_TYPE_DEFAULT, "    tracks: %d adds %d updates %d deletes", v403, 0x14u);
  }

  v292 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v292, OS_LOG_TYPE_DEFAULT))
  {
    v293 = *(this + 43);
    v294 = *(this + 44);
    v295 = *(this + 45);
    *v403 = 67109632;
    *&v403[4] = v293;
    *&v403[8] = 1024;
    *&v403[10] = v294;
    *&v403[14] = 1024;
    *&v403[16] = v295;
    _os_log_impl(&dword_22D2FA000, v292, OS_LOG_TYPE_DEFAULT, "    containers: %d adds %d updates %d deletes", v403, 0x14u);
  }

  v296 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
  {
    v297 = *(this + 55);
    v298 = *(this + 56);
    v299 = *(this + 57);
    *v403 = 67109632;
    *&v403[4] = v297;
    *&v403[8] = 1024;
    *&v403[10] = v298;
    *&v403[14] = 1024;
    *&v403[16] = v299;
    _os_log_impl(&dword_22D2FA000, v296, OS_LOG_TYPE_DEFAULT, "    albums: %d adds %d updates %d deletes", v403, 0x14u);
  }

  v300 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v300, OS_LOG_TYPE_DEFAULT))
  {
    v301 = *(this + 58);
    v302 = *(this + 59);
    v303 = *(this + 60);
    *v403 = 67109632;
    *&v403[4] = v301;
    *&v403[8] = 1024;
    *&v403[10] = v302;
    *&v403[14] = 1024;
    *&v403[16] = v303;
    _os_log_impl(&dword_22D2FA000, v300, OS_LOG_TYPE_DEFAULT, "    artists: %d adds %d updates %d deletes", v403, 0x14u);
  }

  v304 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
  {
    v305 = *(this + 52);
    v306 = *(this + 53);
    v307 = *(this + 54);
    *v403 = 67109632;
    *&v403[4] = v305;
    *&v403[8] = 1024;
    *&v403[10] = v306;
    *&v403[14] = 1024;
    *&v403[16] = v307;
    _os_log_impl(&dword_22D2FA000, v304, OS_LOG_TYPE_DEFAULT, "    persons: %d adds %d updates %d deletes", v403, 0x14u);
  }

  v308 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
  {
    v309 = *(this + 61);
    v310 = *(this + 62);
    v311 = *(this + 63);
    *v403 = 67109632;
    *&v403[4] = v309;
    *&v403[8] = 1024;
    *&v403[10] = v310;
    *&v403[14] = 1024;
    *&v403[16] = v311;
    _os_log_impl(&dword_22D2FA000, v308, OS_LOG_TYPE_DEFAULT, "    pins: %d adds %d updates %d deletes", v403, 0x14u);
  }

  if (*(this + 1530) == 1)
  {
    v312 = MEMORY[0x277D27EF0];
    v377 = @"importSource";
    v313 = [MEMORY[0x277CCABB0] numberWithInt:*(this + 8)];
    v378 = v313;
    v314 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v378 forKeys:&v377 count:1];
    v379 = v314;
    v315 = [MEMORY[0x277CBEA60] arrayWithObjects:&v379 count:1];
    [v312 snapshotWithDomain:*MEMORY[0x277D27EC0] type:@"Bug" subType:@"Invalid Import State" context:@"Error importing payload" triggerThresholdValues:0 events:v315 completion:0];
  }

  if (__p)
  {
    v359 = __p;
    operator delete(__p);
  }

  if (v323)
  {
    operator delete(v323);
  }
}

void sub_22D554DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  v34 = *(v33 - 184);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN16ML3ImportSession13_finishImportEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v3 != v2)
  {
    v4 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3321888768;
    v6[2] = ___ZN16ML3ImportSession13_finishImportEv_block_invoke_2;
    v6[3] = &__block_descriptor_56_ea8_32c39_ZTSNSt3__16vectorIxNS_9allocatorIxEEEE_e31_v16__0__ML3DatabaseConnection_8l;
    v8 = 0;
    v9 = 0;
    __p = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v2, v3, (v3 - v2) >> 3);
    [v4 databaseConnectionAllowingWrites:1 withBlock:v6];
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  return [*(a1 + 32) notifyContentsDidChange];
}

void sub_22D555498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN16ML3ImportSession13_finishImportEv_block_invoke_270(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 numberForColumnIndex:0];
  v5 = [v3 stringForColumnIndex:1];
  v6 = [v3 stringForColumnIndex:2];
  v7 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543874;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "purging orphaned person %{public}@: %{public}@, %{public}@", &v8, 0x20u);
  }

  [*(a1 + 32) addObject:v4];
}

void ___ZN16ML3ImportSession13_finishImportEv_block_invoke_277(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 numberForColumnIndex:0];
  v5 = [v3 numberForColumnIndex:1];
  v6 = [v3 numberForColumnIndex:2];
  v7 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543874;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "purging orphaned reaaction pid %{public}@; container_item_pid=%{public}@, person_pid=%{public}@", &v8, 0x20u);
  }

  [*(a1 + 32) addObject:v4];
}

uint64_t ___ZN16ML3ImportSession13_finishImportEv_block_invoke_284(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) notifyEntitiesAddedOrRemoved];
    v3 = *(v2 + 32);

    return [v3 notifyAssistantContentsDidChange];
  }

  return result;
}

void ___ZN16ML3ImportSession13_finishImportEv_block_invoke_2_291(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "Checking for Duplicate Videos...", buf, 2u);
    }

    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 0;
    v5 = [MEMORY[0x277CCAB68] string];
    v6 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN16ML3ImportSession13_finishImportEv_block_invoke_293;
    v13[3] = &unk_2787651A8;
    v15 = buf;
    v7 = v5;
    v14 = v7;
    [v6 databaseConnectionAllowingWrites:0 withBlock:v13];
    v8 = v17[24];
    v9 = os_log_create("com.apple.amp.medialibrary", "Import");
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = *(v3 + 32);
        *v20 = 67109378;
        v21 = v11;
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "Duplicate Videos Detected after source %d import!\n%@", v20, 0x12u);
      }

      ML3ShowFileRadarAlert(@"Duplicate Video Detected", @"The media library service has detected that a duplicate video has been imported.", v7);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v3 + 32);
        *v20 = 67109120;
        v21 = v12;
        _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "No Duplicate Videos found after source %d import.", v20, 8u);
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

void sub_22D555A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN16ML3ImportSession13_finishImportEv_block_invoke_293(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:{@"SELECT store_item_id, title, media_type FROM item JOIN item_store USING(item_pid) JOIN item_extra USING(item_pid) WHERE store_item_id IN (SELECT store_item_id FROM item JOIN item_store USING(item_pid) GROUP BY store_item_id HAVING COUNT() > 1 AND store_item_id !=0 AND media_type IN (512, 2048)) AND is_ota_purchased = 1 AND purchase_history_id = 0"}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZN16ML3ImportSession13_finishImportEv_block_invoke_2_297;
  v6[3] = &unk_278765180;
  v5 = *(a1 + 32);
  v4 = v5;
  v7 = v5;
  [v3 enumerateRowsWithBlock:v6];
}

void ___ZN16ML3ImportSession13_finishImportEv_block_invoke_2_297(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5 && !a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v6 = *(a1 + 32);
  v10 = v5;
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v10 objectAtIndexedSubscript:1];
  v9 = [v10 objectAtIndexedSubscript:2];
  [v6 appendFormat:@"%@ | %@ | %@\n", v7, v8, v9];
}

void __destroy_helper_block_ea8_40c39_ZTSNSt3__16vectorIxNS_9allocatorIxEEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void __copy_helper_block_ea8_40c39_ZTSNSt3__16vectorIxNS_9allocatorIxEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
}

void ___ZN16ML3ImportSession13_finishImportEv_block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = *(a1 + 32);
  for (i = *(a1 + 40); v4 != i; ++v4)
  {
    [ML3Container reloadContainedMediaTypesForContainerWithPersistID:*v4 usingConnection:v5];
  }
}

void __destroy_helper_block_ea8_32c39_ZTSNSt3__16vectorIxNS_9allocatorIxEEEE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

void __copy_helper_block_ea8_32c39_ZTSNSt3__16vectorIxNS_9allocatorIxEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
}

uint64_t ML3ImportSession::_setKeepLocalOnPinnedEntity(uint64_t a1, uint64_t **a2)
{
  v59[5] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = (*a2)[2];
  if (v5 <= 3)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = *(a1 + 16);
        v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v4[1]];
        v57 = v7;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
        v9 = [v6 executeQuery:@"SELECT smart_criteria FROM container WHERE container_pid=?" withParameters:v8];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v56 = 0;
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = ___ZN16ML3ImportSession27_setKeepLocalOnPinnedEntityERKNSt3__110shared_ptrI18ML3LibraryPinsDataEE_block_invoke;
        v46[3] = &unk_2787653C8;
        v46[4] = buf;
        [v9 enumerateRowsWithBlock:v46];
        v10 = *(a1 + 16);
        v54[0] = &unk_2840CA280;
        v11 = [MEMORY[0x277CCABB0] numberWithLongLong:(*a2)[1]];
        v54[1] = v11;
        v54[2] = &unk_2840CA1F0;
        v54[3] = &unk_2840CA2B0;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
        v45 = 0;
        LODWORD(v10) = [v10 executeUpdate:@"UPDATE container set keep_local=? WHERE (container_pid=? AND keep_local IN (? withParameters:?))" error:{v12, &v45}];
        v13 = v45;

        if (v10)
        {
          if (*(*&buf[8] + 24))
          {
            v14 = 1;
LABEL_31:
            _Block_object_dispose(buf, 8);
            goto LABEL_38;
          }

          v37 = *(a1 + 16);
          v53[0] = &unk_2840CA1F0;
          v53[1] = &unk_2840CA298;
          v53[2] = &unk_2840CA2E0;
          v38 = [MEMORY[0x277CCABB0] numberWithLongLong:(*a2)[1]];
          v53[3] = v38;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
          v44 = v13;
          LOBYTE(v37) = [v37 executeUpdate:@"UPDATE item SET keep_local=? withParameters:keep_local_constraints=? WHERE item_pid IN (SELECT item.item_pid FROM item JOIN container_item ON (item.item_pid=container_item.item_pid) WHERE (item.keep_local < ? AND container_pid=?))" error:{v39, &v44}];
          v36 = v44;

          if (v37)
          {
            v14 = 1;
            goto LABEL_30;
          }

          v35 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *v51 = 138543362;
            v52 = v36;
            _os_log_impl(&dword_22D2FA000, v35, OS_LOG_TYPE_ERROR, "Could not set keep local for container items, error=%{public}@", v51, 0xCu);
          }
        }

        else
        {
          v35 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *v51 = 138543362;
            v52 = v13;
            _os_log_impl(&dword_22D2FA000, v35, OS_LOG_TYPE_ERROR, "Could not set keep local on container, error=%{public}@", v51, 0xCu);
          }

          v36 = v13;
        }

        v14 = 0;
LABEL_30:
        v13 = v36;
        goto LABEL_31;
      }

      goto LABEL_13;
    }

    v22 = *(a1 + 16);
    v59[0] = &unk_2840CA280;
    v59[1] = &unk_2840CA298;
    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:v4[1]];
    v59[2] = v23;
    v59[3] = &unk_2840CA1F0;
    v59[4] = &unk_2840CA2B0;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:5];
    v48 = 0;
    LOBYTE(v22) = [v22 executeUpdate:@"UPDATE item set keep_local=? withParameters:keep_local_constraints=? WHERE (item_pid=? AND (keep_local IN (? error:{?)))", v24, &v48}];
    v13 = v48;

    if ((v22 & 1) == 0)
    {
      v25 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v13;
        _os_log_impl(&dword_22D2FA000, v25, OS_LOG_TYPE_ERROR, "Could not set keep local on track, error=%{public}@", buf, 0xCu);
      }

      goto LABEL_37;
    }

    goto LABEL_22;
  }

  if (v5 != 4)
  {
    if (v5 != 7)
    {
LABEL_13:
      v19 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = (*a2)[2];
        v21 = **a2;
        *buf = 67109376;
        *&buf[4] = v20;
        *&buf[8] = 2048;
        *&buf[10] = v21;
        _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_ERROR, "Could not set keep local on unknown entity type=%d, pid=%lld", buf, 0x12u);
      }

      v13 = 0;
LABEL_37:
      v14 = 0;
      v9 = 0;
      goto LABEL_38;
    }

    v15 = *(a1 + 16);
    v58[0] = &unk_2840CA280;
    v58[1] = &unk_2840CA298;
    v58[2] = &unk_2840CA1F0;
    v58[3] = &unk_2840CA2B0;
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v4[1]];
    v58[4] = v16;
    v58[5] = &unk_2840CA2C8;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:6];
    v47 = 0;
    LOBYTE(v15) = [v15 executeUpdate:@"UPDATE item set keep_local=? withParameters:keep_local_constraints=? WHERE (in_my_library AND keep_local IN (? error:{?) AND item.album_artist_pid=? AND media_type & ? != 0)", v17, &v47}];
    v13 = v47;

    if ((v15 & 1) == 0)
    {
      v18 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v13;
        _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "Could not set keep local for album artist items, error=%{public}@", buf, 0xCu);
      }

      goto LABEL_37;
    }

    goto LABEL_22;
  }

  v26 = *(a1 + 16);
  v50[0] = &unk_2840CA280;
  v27 = [MEMORY[0x277CCABB0] numberWithLongLong:v4[1]];
  v50[1] = v27;
  v50[2] = &unk_2840CA1F0;
  v50[3] = &unk_2840CA2B0;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
  v43 = 0;
  LODWORD(v26) = [v26 executeUpdate:@"UPDATE album set keep_local=? WHERE (album_pid=? AND keep_local IN (? withParameters:?))" error:{v28, &v43}];
  v29 = v43;

  if (v26)
  {
    v30 = *(a1 + 16);
    v49[0] = &unk_2840CA1F0;
    v49[1] = &unk_2840CA298;
    v49[2] = &unk_2840CA2E0;
    v31 = [MEMORY[0x277CCABB0] numberWithLongLong:(*a2)[1]];
    v49[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
    v42 = v29;
    v33 = [v30 executeUpdate:@"UPDATE item SET keep_local=? withParameters:keep_local_constraints=? WHERE item_pid IN (SELECT item_pid FROM item WHERE (in_my_library AND keep_local < ? AND item.album_pid=?))" error:{v32, &v42}];
    v13 = v42;

    if ((v33 & 1) == 0)
    {
      v40 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v13;
        _os_log_impl(&dword_22D2FA000, v40, OS_LOG_TYPE_ERROR, "Could not set keep local for album items, error=%{public}@", buf, 0xCu);
      }

      goto LABEL_37;
    }

LABEL_22:
    v9 = 0;
    v14 = 1;
    goto LABEL_38;
  }

  v34 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = v29;
    _os_log_impl(&dword_22D2FA000, v34, OS_LOG_TYPE_ERROR, "Could not set keep local for album, error=%{public}@", buf, 0xCu);
  }

  v14 = 0;
  v9 = 0;
  v13 = v29;
LABEL_38:

  return v14;
}

void sub_22D556538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);

  _Unwind_Resume(a1);
}

void ___ZN16ML3ImportSession21_reconcileLibraryPinsEv_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 40);
  v8 = [v6 intForColumnIndex:0];
  if (*(*(*(a1 + 32) + 8) + 24) + 1 != v8)
  {
    *(v7 + 1530) = 1;
    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(*(a1 + 32) + 8) + 24);
      v11[0] = 67109376;
      v11[1] = v10;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "We have holes in pin positions currentPosition=%d, position=%d", v11, 0xEu);
    }

    if (a4)
    {
      *a4 = 1;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;
}

void ___ZN16ML3ImportSession27_setKeepLocalOnPinnedEntityERKNSt3__110shared_ptrI18ML3LibraryPinsDataEE_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 dataForColumnIndex:0];
  *(*(*(a1 + 32) + 8) + 24) = v3 != 0;
}

void ___ZL37ML3LibraryPinDefaultActionDescriptionx_block_invoke_23231()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2840CA208;
  v2[1] = &unk_2840CA3A0;
  v3[0] = @"Play";
  v3[1] = @"Drillin";
  v2[2] = &unk_2840CA238;
  v3[2] = @"Shuffle";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = ML3LibraryPinDefaultActionDescription(long long)::__pinnedEntityDefaultActionDescription;
  ML3LibraryPinDefaultActionDescription(long long)::__pinnedEntityDefaultActionDescription = v0;
}

void ___ZL37ML3LibraryPinnedEntityTypeDescription13ML3EntityType_block_invoke_23236()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2840CA268;
  v2[1] = &unk_2840CA220;
  v3[0] = @"Track";
  v3[1] = @"Album";
  v2[2] = &unk_2840CA250;
  v2[3] = &unk_2840CA208;
  v3[2] = @"Artist";
  v3[3] = @"Playlist";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::__pinnedEntityTypeDescription;
  ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::__pinnedEntityTypeDescription = v0;
}

void sub_22D556A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23316(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D556C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D558014(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__CFString *ML3ContainerItemOccurrencePrefix(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v35 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = v13;
  if (a1 && a5 == 8 && a6)
  {
    v15 = &v35 + 1;
    quot = a1;
    do
    {
      v17 = lldiv(quot, 10);
      quot = v17.quot;
      if (v17.rem >= 0)
      {
        LOBYTE(v18) = v17.rem;
      }

      else
      {
        v18 = -v17.rem;
      }

      *(v15 - 2) = v18 + 48;
      v19 = (v15 - 2);
      --v15;
    }

    while (v17.quot);
LABEL_18:
    if (a1 < 0)
    {
      *(v15 - 2) = 45;
      v19 = (v15 - 2);
    }

    v23 = (&v35 - v19);
    goto LABEL_21;
  }

  if (a1 && a7 == 3 && (a6 & 1) == 0)
  {
    v15 = &v35 + 1;
    v20 = a1;
    do
    {
      v21 = lldiv(v20, 10);
      v20 = v21.quot;
      if (v21.rem >= 0)
      {
        LOBYTE(v22) = v21.rem;
      }

      else
      {
        v22 = -v21.rem;
      }

      *(v15 - 2) = v22 + 48;
      v19 = (v15 - 2);
      --v15;
    }

    while (v21.quot);
    goto LABEL_18;
  }

  if ([v13 length])
  {
    v24 = v14;
    goto LABEL_22;
  }

  if (a3)
  {
    v27 = &v35 + 1;
    v28 = a3;
    do
    {
      v29 = lldiv(v28, 10);
      v28 = v29.quot;
      if (v29.rem >= 0)
      {
        LOBYTE(v30) = v29.rem;
      }

      else
      {
        v30 = -v29.rem;
      }

      *(v27 - 2) = v30 + 48;
      v19 = (v27 - 2);
      --v27;
    }

    while (v29.quot);
    if (a3 < 0)
    {
      *(v27 - 2) = 45;
      v19 = (v27 - 2);
    }

LABEL_44:
    v23 = (&v35 - v19);
LABEL_21:
    v24 = CFStringCreateWithBytes(0, v19, v23, 0x8000100u, 0);
LABEL_22:
    v25 = v24;
    goto LABEL_23;
  }

  if (a4)
  {
    v31 = &v35 + 1;
    v32 = a4;
    do
    {
      v33 = lldiv(v32, 10);
      v32 = v33.quot;
      if (v33.rem >= 0)
      {
        LOBYTE(v34) = v33.rem;
      }

      else
      {
        v34 = -v33.rem;
      }

      *(v31 - 2) = v34 + 48;
      v19 = (v31 - 2);
      --v31;
    }

    while (v33.quot);
    if (a4 < 0)
    {
      *(v31 - 2) = 45;
      v19 = (v31 - 2);
    }

    goto LABEL_44;
  }

  v25 = @"0";
LABEL_23:

  return v25;
}

id ML3DatabaseImportDataForDAAPFilePaths(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    v5 = 0x277CCA000uLL;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(v1);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = [*(v5 + 2192) currentHandler];
          [MEMORY[0x277CCACA8] stringWithUTF8String:"NSData *ML3DatabaseImportDataForDAAPFilePaths(NSArray *__strong)"];
          v9 = v8 = v5;
          [v7 handleFailureInFunction:v9 file:@"ML3DatabaseImport.m" lineNumber:288 description:@"DAAP file path must be a string."];

          v5 = v8;
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [v1 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v3);
  }

  v14 = 0;
  v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v1 format:200 options:0 error:&v14];
  v11 = v14;
  if (v11)
  {
    v12 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "Failed to encode DAAP file paths with error: %{public}@", buf, 0xCu);
    }
  }

  return v10;
}

uint64_t ML3ContainerItemReactionImportItem::getIntegerValue(ML3ContainerItemReactionImportItem *this, int a2)
{
  if ((a2 - 268435459) > 2)
  {
    return 0;
  }

  else
  {
    return *(this + *&aP_3[8 * (a2 - 268435459)]);
  }
}

std::string *ML3ContainerItemReactionImportItem::getStringValue@<X0>(std::string *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (a2 == 268435458)
  {
    this = std::string::operator=((a3 + 16), (this + 88));
    *(a3 + 8) = 1;
  }

  return this;
}

void sub_22D55A250(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 39) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(exception_object);
}

void ML3ContainerItemReactionImportItem::~ML3ContainerItemReactionImportItem(void **this)
{
  ML3ContainerItemReactionImportItem::~ML3ContainerItemReactionImportItem(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_284089C28;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

uint64_t ML3ContainerItemReactionImportItem::ML3ContainerItemReactionImportItem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  *(a1 + 16) = 256;
  *(a1 + 18) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *a1 = &unk_284089C28;
  *(a1 + 8) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *a5, *(a5 + 1));
  }

  else
  {
    v9 = *a5;
    *(a1 + 104) = *(a5 + 2);
    *(a1 + 88) = v9;
  }

  *(a1 + 112) = a6;
  *(a1 + 8) = a2;
  return a1;
}

void sub_22D55A3D8(_Unwind_Exception *a1)
{
  *v1 = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

BOOL ML3RestrictionRankInfoIsRestrictedLevel(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2 <= *a1)
  {
    return 1;
  }

  v3 = a1[2];
  if (v2 < a2)
  {
    v6 = __OFSUB__(v3, a2);
    v4 = v3 == a2;
    v5 = v3 - a2 < 0;
  }

  else
  {
    v6 = 0;
    v4 = 1;
    v5 = 0;
  }

  return !(v5 ^ v6 | v4);
}

uint64_t ML3RestrictionInfoUninitialize()
{
  pthread_mutex_lock(&sRestrictionSettingsLock);
  sRestrictionSettingsInfo = 0;

  return pthread_mutex_unlock(&sRestrictionSettingsLock);
}

id ML3FairPlayHardwareID()
{
  v9[3] = *MEMORY[0x277D85DE8];
  v0 = MGCopyAnswer();
  v1 = v0;
  if (!v0)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_8;
  }

  memset(v9, 0, 24);
  zxcm2Qme0x([v0 UTF8String], objc_msgSend(v0, "length"), v9);
  v3 = v2;
  if (v2)
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "Library");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = v3;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "ML3FairPlayHardwareID failed. err=%ld", &v7, 0xCu);
    }

    goto LABEL_6;
  }

  v5 = [MEMORY[0x277CBEA90] dataWithBytes:v9 + 4 length:LODWORD(v9[0])];
LABEL_8:

  return v5;
}

id ML3TrackIntegrityComputeFromTrackData(unsigned int a1, unint64_t a2, void *a3, unint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  CC_SHA1_Init(&c);
  data = bswap64(a2);
  CC_SHA1_Update(&c, &data, 8u);
  data = bswap64(a1);
  CC_SHA1_Update(&c, &data, 8u);
  v8 = v7;
  CC_SHA1_Update(&c, [v7 UTF8String], objc_msgSend(v7, "length"));
  data = bswap64(a4);
  CC_SHA1_Update(&c, &data, 8u);
  CC_SHA1_Final(md, &c);
  v17 = 57;
  v9 = ML3FairPlayHardwareID();
  v10 = v9;
  gDmCYFQnze(4, 0, [v9 bytes], objc_msgSend(v9, "length"), md, 20, v26, &v17);
  v12 = v11;
  if (v11)
  {
    v13 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v9 length];
      *buf = 134218496;
      v21 = v12;
      v22 = 2048;
      v23 = v14;
      v24 = 1024;
      v25 = 20;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "FairPlayCandyBarCompute failed with %ld on sugar of %ld length for digest of %d length", buf, 0x1Cu);
    }

    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:v26 length:v17];
  }

  return v15;
}

void ML3IsCurrentlyRestrictedMedia(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v3 = a3;
  v5 = sqlite3_value_int(*a3);
  v6 = sqlite3_value_int(v3[1]);
  v7 = sqlite3_value_int(v3[2]);
  LODWORD(v3) = sqlite3_value_int(v3[3]);
  ML3RestrictionInfoInitializeIfNecessary();
  if (!v3)
  {
    v8 = (v5 & 4) != 0 || (v5 & 0x2800) == 0;
    v9 = v8 && (v5 & 0x200) == 0;
    v10 = v9 && (v5 & 2) == 0;
    if (v10 && (v6 & 0xFFFFFFFD) != 0)
    {
      goto LABEL_48;
    }
  }

  if (byte_280B5EE6B != 1 || (v5 & 2) == 0 || v6 == 0)
  {
    if ((v5 & 0x2800) == 0 || (v5 & 4) != 0)
    {
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v15 = v6 != 2;
    if (v6 != 2)
    {
      goto LABEL_43;
    }

    if ((v5 & 0x2800) == 0 || (v5 & 4) != 0)
    {
      goto LABEL_43;
    }
  }

  if (qword_280B5EE78 <= qword_280B5EE70)
  {
    goto LABEL_48;
  }

  v15 = qword_280B5EE78 < v7 && qword_280B5EE80 > v7;
LABEL_43:
  if (v15 || (v5 & 0x200) == 0)
  {
    if (!v15)
    {
      goto LABEL_50;
    }

LABEL_48:
    v18 = 1;
    goto LABEL_53;
  }

LABEL_45:
  if (qword_280B5EE90 <= qword_280B5EE88 || qword_280B5EE90 < v7 && qword_280B5EE98 > v7)
  {
    goto LABEL_48;
  }

LABEL_50:
  if ((v5 & 0x400) != 0)
  {
    v18 = byte_280B5EE6C;
  }

  else
  {
    v18 = 0;
  }

LABEL_53:

  sqlite3_result_int(a1, v18);
}

void ML3TrackDigestCompute(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v5 = *MEMORY[0x277D85DE8];
  _ML3GetDigestFromSqlite3Values(v4, a2, a3);
  sqlite3_result_blob(a1, v4, 20, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t _ML3GetDigestFromSqlite3Values(unsigned __int8 *a1, int a2, sqlite3_value **a3)
{
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  if (a2 >= 1)
  {
    for (i = a2; i; --i)
    {
      v7 = *a3;
      v8 = sqlite3_value_type(*a3);
      if (v8 <= 2)
      {
        if (v8 == 1)
        {
          v11 = bswap64(sqlite3_value_int64(v7));
LABEL_15:
          data = v11;
          p_data = &data;
          v10 = 8;
LABEL_16:
          CC_SHA1_Update(&c, p_data, v10);
          goto LABEL_17;
        }

        if (v8 == 2)
        {
          data = 0;
          v11 = bswap64(COERCE_UNSIGNED_INT64(sqlite3_value_double(v7)));
          goto LABEL_15;
        }
      }

      else
      {
        switch(v8)
        {
          case 3:
            v12 = sqlite3_value_text(v7);
LABEL_13:
            v13 = v12;
            v10 = sqlite3_value_bytes(v7);
            p_data = v13;
            goto LABEL_16;
          case 4:
            v12 = sqlite3_value_blob(v7);
            goto LABEL_13;
          case 5:
            LOBYTE(data) = 0;
            p_data = &data;
            v10 = 1;
            goto LABEL_16;
        }
      }

LABEL_17:
      ++a3;
    }
  }

  return CC_SHA1_Final(a1, &c);
}

void ML3TrackIntegrityCompute(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v18 = *MEMORY[0x277D85DE8];
  _ML3GetDigestFromSqlite3Values(v17, a2, a3);
  v9 = 57;
  v4 = ML3FairPlayHardwareID();
  gDmCYFQnze(4, 0, [v4 bytes], objc_msgSend(v4, "length"), v17, 20, v16, &v9);
  if (v5)
  {
    v6 = v5;
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 length];
      *buf = 134218496;
      v11 = v6;
      v12 = 2048;
      v13 = v8;
      v14 = 1024;
      v15 = 20;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "FairPlayCandyBarCompute failed with %ld on sugar of %ld length for digest of %d length", buf, 0x1Cu);
    }

    sqlite3_result_null(a1);
  }

  else
  {
    sqlite3_result_blob(a1, v16, v9, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void ML3TrackIntegrityVerify(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2 <= 0)
  {

    sqlite3_result_error(a1, "", 1);
  }

  else
  {
    _ML3GetDigestFromSqlite3Values(v12, a2 - 1, a3 + 1);
    sqlite3_value_blob(*a3);
    sqlite3_value_bytes(*a3);
    v5 = ML3FairPlayHardwareID();
    if ([v5 length])
    {
      [v5 bytes];
      [v5 length];
      zLTj();
      v7 = v6;
      if (v6)
      {
        v8 = os_log_create("com.apple.amp.medialibrary", "Library");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 134217984;
          v11 = v7;
          _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "ML3TrackIntegrityVerify failed. err=%ld", &v10, 0xCu);
        }
      }

      v9 = v7 != -42022;
    }

    else
    {
      v9 = 1;
    }

    sqlite3_result_int(a1, v9);
  }
}

void ML3CompoundSortKey(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  if (a2 >= 1)
  {
    v7 = a2;
    while (1)
    {
      v8 = *a3;
      v9 = sqlite3_value_type(*a3);
      if ((v9 - 1) < 2)
      {
        break;
      }

      if (v9 == 3)
      {
        v10 = sqlite3_value_text(v8);
LABEL_9:
        v14 = v10;
        v13 = sqlite3_value_bytes(v8);
        v12 = v6;
        v11 = v14;
LABEL_10:
        [v12 appendBytes:v11 length:v13];
        goto LABEL_11;
      }

      if (v9 == 4)
      {
        v10 = sqlite3_value_blob(v8);
        goto LABEL_9;
      }

LABEL_11:
      ++a3;
      if (!--v7)
      {
        goto LABEL_12;
      }
    }

    v15 = bswap64(sqlite3_value_int64(v8));
    v11 = &v15;
    v12 = v6;
    v13 = 8;
    goto LABEL_10;
  }

LABEL_12:
  sqlite3_result_blob(a1, [v6 bytes], objc_msgSend(v6, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

void ML3SearchStringMatch(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v16 = sqlite3_get_auxdata(a1, 0);
  v5 = sqlite3_value_text(*a3);
  if (!v16)
  {
    v16 = objc_alloc_init(ML3MatcherAuxData);
    sqlite3_set_auxdata(a1, 0, v16, _ML3DestroyCFObjectContext);
    searchUTF8String = v16->_searchUTF8String;
    if (!searchUTF8String)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  searchUTF8String = v16->_searchUTF8String;
  if (!strcmp(searchUTF8String, v5))
  {
    goto LABEL_9;
  }

  if (searchUTF8String)
  {
LABEL_4:
    free(searchUTF8String);
  }

LABEL_5:
  v16->_searchUTF8String = strdup(v5);
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v5];
  v8 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v9 = [v7 rangeOfCharacterFromSet:v8];

  v10 = objc_alloc(MEMORY[0x277CEC5C0]);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*MEMORY[0x277CEC5F0] | *MEMORY[0x277CEC5E8]) | *MEMORY[0x277CEC5F8];
  }

  v12 = [v10 initWithSearchString:v7 options:v11];
  searchMatcher = v16->_searchMatcher;
  v16->_searchMatcher = v12;

LABEL_9:
  v14 = sqlite3_value_text(a3[1]);
  if (v14)
  {
    v15 = [(CPSearchMatcher *)v16->_searchMatcher matchesUTF8String:v14];
  }

  else
  {
    v15 = 0;
  }

  sqlite3_result_int(a1, v15);
}

void _ML3DestroyCFObjectContext(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void ML3SeasonDisplayName(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v4 = sqlite3_value_int(*a3);
  if (v4 < 1)
  {

    sqlite3_result_null(a1);
  }

  else
  {
    v6 = MLLocalizedSeasonDisplayStringForSeasonNumber(v4);
    v5 = ML3CopyUTF8StringFromCFString(v6);
    sqlite3_result_text(a1, v5, -1, MEMORY[0x277D86138]);
  }
}

void ML3SortString(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_value_text(*a3)];
  v7 = [v5 MLSortString];

  if (v7)
  {
    v6 = ML3CopyUTF8StringFromCFString(v7);
    sqlite3_result_text(a1, v6, -1, MEMORY[0x277D86138]);
  }

  else
  {
    sqlite3_result_value(a1, *a3);
  }
}

void ML3SortStringWithPrefix(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_value_text(*a3)];
  v7 = [v5 MLSortStringWithPrefix];

  if (v7)
  {
    v6 = ML3CopyUTF8StringFromCFString(v7);
    sqlite3_result_text(a1, v6, -1, MEMORY[0x277D86138]);
  }

  else
  {
    sqlite3_result_value(a1, *a3);
  }
}

uint64_t ML3ItemDatabaseImportDataSource::hasValueForKey(uint64_t a1, void *a2, uint64_t a3)
{
  switch(a3)
  {
    case 16777218:
    case 16777219:
      if (*(*a2 + 17))
      {
        return 1;
      }

      v7 = *(**a2 + 56);
      goto LABEL_22;
    case 16777220:
    case 16777225:
    case 16777228:
    case 16777231:
    case 16777234:
      v4 = a2[1];
      v12 = *a2;
      v13 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      hasValueForKey = (*(*a1 + 80))(a1, &v12) != 0;
      v6 = v13;
      if (v13)
      {
        goto LABEL_5;
      }

      return hasValueForKey;
    case 16777221:
    case 16777222:
      v8 = *a2;
      if (*(*a2 + 17))
      {
        return 1;
      }

      goto LABEL_21;
    case 16777223:
    case 16777224:
      if (*(*a2 + 17))
      {
        return 1;
      }

      v7 = *(**a2 + 56);
      goto LABEL_22;
    case 16777226:
    case 16777227:
      if (*(*a2 + 17))
      {
        return 1;
      }

      v7 = *(**a2 + 56);
      goto LABEL_22;
    case 16777229:
    case 16777230:
      if (*(*a2 + 17) & 1) != 0 || ((*(**a2 + 56))(*a2, 167772163))
      {
        return 1;
      }

      v8 = *a2;
LABEL_21:
      v7 = *(*v8 + 56);
      goto LABEL_22;
    case 16777232:
    case 16777233:
      if (*(*a2 + 17))
      {
        return 1;
      }

      v7 = *(**a2 + 56);
      goto LABEL_22;
    case 16777235:
    case 16777236:
      if (*(*a2 + 17))
      {
        return 1;
      }

      v7 = *(**a2 + 56);
      goto LABEL_22;
    case 16777239:
      if ((*(**a2 + 56))(*a2, 16777239) & 1) != 0 || ((*(**a2 + 56))(*a2, 16777238))
      {
        return 1;
      }

      else
      {
        v7 = *(**a2 + 56);
LABEL_22:

        return v7();
      }

    default:
      v10 = a2[1];
      v11[0] = *a2;
      v11[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      hasValueForKey = ML3DatabaseImportDataSource::hasValueForKey(a1, v11, a3);
      if (v10)
      {
        v6 = v10;
LABEL_5:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      return hasValueForKey;
  }
}

void sub_22D55C488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3ItemDatabaseImportDataSource::integerValueForKey(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = 0;
  switch(a3)
  {
    case 16777217:
      v4 = (*(**a2 + 32))(*a2, 16777217);
      return MLMediaTypeByStandardizingMediaType(v4);
    case 16777218:
      return *(a1 + 152);
    case 16777219:
      if (!*(a1 + 152))
      {
        return *(a1 + 168);
      }

      return *(a1 + 160);
    case 16777220:
      v11 = *(a1 + 72);
      return *v11;
    case 16777221:
      v12 = *(a1 + 72);
      return *(v12 + 112);
    case 16777222:
      v13 = *(a1 + 72);
      goto LABEL_27;
    case 16777223:
      return *(*(a1 + 72) + 128);
    case 16777224:
      v14 = *(a1 + 72);
      if (!*(v14 + 128))
      {
        return *(a1 + 168);
      }

      return *(v14 + 136);
    case 16777225:
      v11 = *(a1 + 104);
      return *v11;
    case 16777226:
      return *(*(a1 + 104) + 72);
    case 16777227:
      v7 = *(a1 + 104);
      if (!*(v7 + 72))
      {
        return *(a1 + 168);
      }

      return *(v7 + 80);
    case 16777228:
      v11 = *(a1 + 88);
      return *v11;
    case 16777229:
      v12 = *(a1 + 88);
      return *(v12 + 112);
    case 16777230:
      v13 = *(a1 + 88);
LABEL_27:
      if (!*(v13 + 112))
      {
        return *(a1 + 168);
      }

      return *(v13 + 120);
    case 16777231:
      v11 = *(a1 + 120);
      return *v11;
    case 16777232:
      return *(*(a1 + 120) + 56);
    case 16777233:
      v5 = *(a1 + 120);
      if (!*(v5 + 56))
      {
        return *(a1 + 168);
      }

      return *(v5 + 64);
    case 16777234:
      v11 = *(a1 + 136);
      return *v11;
    case 16777235:
      return *(*(a1 + 136) + 32);
    case 16777236:
      v6 = *(a1 + 136);
      if (*(v6 + 32))
      {
        return *(v6 + 40);
      }

      else
      {
        return *(a1 + 168);
      }

    case 16777239:
      v9 = *a2;
      v8 = a2[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v3 = (*(*v9 + 32))(v9, 16777239);
      if (v3)
      {
        goto LABEL_35;
      }

      v3 = (*(*v9 + 32))(v9, 16777238);
      if (v3)
      {
        goto LABEL_35;
      }

      v10 = (*(*v9 + 32))(v9, 117440517);
LABEL_34:
      v3 = v10;
LABEL_35:
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      return v3;
    case 16777240:
    case 16777241:
      return v3;
    default:
      v15 = *a2;
      v8 = a2[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = (*(*v15 + 32))(v15, a3);
      goto LABEL_34;
  }
}

void sub_22D55C748(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ML3ItemDatabaseImportDataSource::prepareColumns(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v12.__r_.__value_.__r.__words[0] = *(*a2 + 8);
  v10 = &v12;
  v5 = std::__hash_table<std::__hash_value_type<long long,ML3CollectionInfoSet>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3CollectionInfoSet>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v4 + 352), v12.__r_.__value_.__r.__words[0]);
  ML3CollectionInfoSet::operator=((a1 + 72), v5 + 3);
  (*(**a2 + 144))(&v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = __p;
  }

  v6 = ML3CPPBridgeString(&v12, 1);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v10 = &unk_28408AC60;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = *(*(a1 + 24) + 24);
  v8 = [v7 objectForKey:v6];
  *(a1 + 152) = [v8 ML3NameOrderValue];
  *(a1 + 160) = v9;

  *(a1 + 168) = *(*(a1 + 24) + 268);
}

void sub_22D55C8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ML3ItemDatabaseImportDataSource::~ML3ItemDatabaseImportDataSource(ML3ItemDatabaseImportDataSource *this)
{
  *this = &unk_284089D28;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_284089D28;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);
}

uint64_t ML3HomeSharingContainerImportItem::hasValue(ML3HomeSharingContainerImportItem *this, uint64_t a2)
{
  result = 1;
  if (a2 > 184549399)
  {
    switch(a2)
    {
      case 0xB000018:
        v4 = *(this + 8) + 96;
        v5 = 1634030407;
        return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v5) != 0;
      case 0xB00001F:
        v4 = *(this + 8) + 96;
        v5 = 1634030416;
        return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v5) != 0;
      case 0xB000025:
        return result;
    }
  }

  else
  {
    switch(a2)
    {
      case 0xB000001:
        v4 = *(this + 8) + 96;
        v5 = 1835624804;
        return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v5) != 0;
      case 0xB000013:
        return result;
      case 0xB000015:
        v4 = *(this + 8) + 96;
        v5 = 1720542056;
        return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v5) != 0;
    }
  }

  return ML3DAAPContainerImportItem::hasValue(this, a2);
}

void ML3HomeSharingContainerImportItem::getDataValue(ML3HomeSharingContainerImportItem *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = this;
  v4 = a3;
  if (a2 == 184549407)
  {
    if (std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(*(this + 8) + 96, 0x61655350u))
    {
      operator new();
    }

    a3 = v4;
    this = v3;
    a2 = 184549407;
  }

  ML3DAAPContainerImportItem::getDataValue(this, a2, a3);
}

uint64_t ML3HomeSharingContainerImportItem::getIntegerValue(ML3HomeSharingContainerImportItem *this, uint64_t a2)
{
  if (a2 <= 184549396)
  {
    if (a2 != 184549377)
    {
      if (a2 == 184549395)
      {
        if ((*(*this + 32))(this, 184549377) == *(this + 36))
        {
          return 1;
        }

        ML3CPP::Element::childElementForCode(&v9, *(this + 8), 0x61655053u);
        if (v9)
        {
          v2 = ML3CPP::Element::integerValue(v9) - 10 < 0xFFFFFFFE;
        }

        else
        {
          v2 = 0;
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        return v2;
      }

      goto LABEL_19;
    }

    v5 = *(this + 8);
    v6 = 1835624804;
    goto LABEL_13;
  }

  switch(a2)
  {
    case 0xB000015:
      v5 = *(this + 8);
      v6 = 1720542056;
      goto LABEL_13;
    case 0xB000018:
      v5 = *(this + 8);
      v6 = 1634030407;
LABEL_13:
      ML3CPP::Element::childElementForCode(&v9, v5, v6);
      v7 = v9;
      if (v9)
      {
        v2 = ML3CPP::Element::integerValue(v9);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (v7)
      {
        return v2;
      }

      break;
    case 0xB000025:
      return 3;
  }

LABEL_19:

  return ML3DAAPContainerImportItem::getIntegerValue(this, a2);
}

void ML3HomeSharingContainerImportItem::~ML3HomeSharingContainerImportItem(ML3HomeSharingContainerImportItem *this)
{
  ML3DAAPContainerImportItem::~ML3DAAPContainerImportItem(this);

  JUMPOUT(0x2318CD250);
}

id ML3HomeSharingTrackImportItem::getDeduplicationPredicates(ML3HomeSharingTrackImportItem *this)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  v3 = (*(*this + 32))(this, 100663309);
  if (v3)
  {
    v4 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.home_sharing_id" equalToInt64:v3];
    [v2 addObject:v4];
  }

  return v2;
}

uint64_t ML3HomeSharingTrackImportItem::getDescription(ML3HomeSharingTrackImportItem *this)
{
  (*(*this + 32))(this, 100663309);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "<ML3HomeSharingTrackImportItem ", 31);
  *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v6, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " homeSharingId=", 15);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v4 = MEMORY[0x2318CD140]();
  v11 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v11, 1);
  std::stringbuf::str();
  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v10);
}

void sub_22D55D194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9);
  MEMORY[0x2318CD1F0](v9 + 112);
  _Unwind_Resume(a1);
}

void ML3HomeSharingTrackImportItem::getStringValue(ML3HomeSharingTrackImportItem *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (a2 > 100663305)
  {
    if (a2 == 100663306)
    {
LABEL_14:
      std::string::basic_string[abi:ne200100]<0>(&__str, "");
      std::string::operator=(v4, &__str);
      *(a3 + 8) = 1;
      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      v5 = __str.__r_.__value_.__r.__words[0];
      goto LABEL_16;
    }

    if (a2 != 167772173)
    {
LABEL_12:
      ML3DAAPImportItem::getStringValue(this, a2, &__str);
      *(a3 + 8) = __str.__r_.__value_.__s.__data_[8];
      std::string::operator=(v4, &__str.__r_.__value_.__r.__words[2]);
      __str.__r_.__value_.__r.__words[0] = &unk_28408AC60;
      if ((v7 & 0x80000000) == 0)
      {
        return;
      }

      v5 = __str.__r_.__value_.__r.__words[2];
LABEL_16:
      operator delete(v5);
      return;
    }
  }

  else if (a2 != 33554439)
  {
    if (a2 == 100663304)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  ML3CPP::Element::childElementForCode(&v8, *(this + 8), 0x6173666Du);
  if (v8)
  {
    ML3CPP::Element::stringValue(&__str, *(v8 + 48), *(v8 + 64));
    std::string::operator=(v4, &__str);
    *(a3 + 8) = 1;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_22D55D364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *v22 = v23;
  if (*(v22 + 39) < 0)
  {
    operator delete(*v24);
  }

  _Unwind_Resume(exception_object);
}

void ML3HomeSharingTrackImportItem::~ML3HomeSharingTrackImportItem(ML3DAAPImportItem *this)
{
  ML3DAAPImportItem::~ML3DAAPImportItem(this);

  JUMPOUT(0x2318CD250);
}

id ML3MemorySQLiteDatabasePathWithName(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *ML3MemorySQLiteDatabasePathWithName(NSString *__strong)"];
    [v5 handleFailureInFunction:v6 file:@"ML3SqliteUtilities.m" lineNumber:19 description:@"invalid parameter"];
  }

  v2 = [v1 stringByReplacingOccurrencesOfString:@":" withString:@"_"];

  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"file:%@?mode=memory&cache=shared", v2];

  return v3;
}

BOOL ML3IsMemorySQLiteDatabasePath(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@":memory:"])
  {
    v2 = 1;
  }

  else
  {
    [v1 rangeOfString:@"mode=memory"];
    v2 = v3 != 0;
  }

  return v2;
}

BOOL ML3TruncateDatabase(void *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  ppDb = 0;
  if (sqlite3_open_v2([v3 fileSystemRepresentation], &ppDb, 16777218, 0))
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "** COULD NOT DELETE DATABASE! **", buf, 2u);
    }

    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "MusicLibrary couldn't create a SQLite handle to truncate.", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    if (a2)
    {
      v7 = 129;
    }

    else
    {
      v7 = 128;
    }

    v13 = v7;
    v8 = sqlite3_file_control(ppDb, 0, 101, &v13);
    v6 = v8 == 0;
    if (v8)
    {
      v9 = v8;
      v10 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = sqlite3_errmsg(ppDb);
        *buf = 138543874;
        v16 = v3;
        v17 = 2082;
        v18 = v11;
        v19 = 1024;
        v20 = v9;
        _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Could not truncate database at path: %{public}@. %{public}s (%d)", buf, 0x1Cu);
      }
    }

    sqlite3_close(ppDb);
  }

  return v6;
}

BOOL ML3CopyDatabase(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v20 = 0;
  ppDb = 0;
  v7 = sqlite3_open_v2([v5 fileSystemRepresentation], &ppDb, 16777217, 0);
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not open original database. %s (%d)", sqlite3_errmsg(ppDb), v7];
    v10 = 0;
    goto LABEL_8;
  }

  v11 = sqlite3_open_v2([v6 fileSystemRepresentation], &v20, 16777222, 0);
  if (v11)
  {
    v8 = v11;
    [MEMORY[0x277CCACA8] stringWithFormat:@"Could not open database copy. %s (%d)", sqlite3_errmsg(v20), v11];
    v9 = LABEL_7:;
    v10 = 0;
    goto LABEL_8;
  }

  v12 = sqlite3_file_control(v20, 0, 102, ppDb);
  if (v12)
  {
    v8 = v12;
    [MEMORY[0x277CCACA8] stringWithFormat:@"Could not perform copy: %s (%d)", sqlite3_errmsg(v20), v12];
    goto LABEL_7;
  }

  v19 = sqlite3_exec(v20, "PRAGMA wal_checkpoint(RESTART);", 0, 0, 0);
  if (v19)
  {
    v8 = v19;
  }

  else
  {
    v8 = 0;
  }

  if (v19)
  {
    v9 = @"Warning: could not checkpoint copied SQLite file.";
  }

  else
  {
    v9 = 0;
  }

  v10 = v19 == 0;
LABEL_8:
  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

  if (v20)
  {
    sqlite3_close(v20);
  }

  if (v9)
  {
    v13 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = v5;
      v26 = 2114;
      v27 = v9;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "Could not copy database file at path %{public}@. %{public}@", buf, 0x16u);
    }

    if (a3)
    {
      v14 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v23 = v9;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v16 = [v14 errorWithDomain:@"ML3DatabaseErrorDomain" code:v8 userInfo:v15];

      v17 = v16;
      *a3 = v16;
    }
  }

  return v10;
}

id ML3NonQualifiedColumnNameFromProperty(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"."];
  v3 = v1;
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v1 substringFromIndex:v2 + 1];
  }

  return v3;
}

uint64_t ML3ContainerSeedDatabaseImportDataSource::hasValueForKey(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 == 201326593)
  {
    v3 = a2[1];
    v8[0] = *a2;
    v8[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    hasValueForKey = ML3DatabaseImportDataSource::hasValueForKey(a1, v8, 201326593);
  }

  else
  {
    v3 = a2[1];
    v7[0] = *a2;
    v7[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    hasValueForKey = ML3DatabaseImportDataSource::hasValueForKey(a1, v7, a3);
  }

  v5 = hasValueForKey;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v5;
}

void sub_22D55E2EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t ML3ContainerSeedDatabaseImportDataSource::integerValueForKey(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  if (a3 == 201326593)
  {
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = (*(*v4 + 32))(v4, 201326593);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (v6)
    {
      std::unordered_map<unsigned long long,long long>::unordered_map(v10, *(*(a1 + 24) + 632) + 40 * *(*(a1 + 24) + 32));
      v7 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>(v10, v6);
      if (v7)
      {
        v6 = v7[3];
      }

      else
      {
        v8 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v12 = v6;
          _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "failed to map container_seed item_pid %lld", buf, 0xCu);
        }
      }

      std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10);
    }
  }

  else
  {
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = (*(*v4 + 32))(v4, a3);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return v6;
}

void ML3ContainerSeedDatabaseImportDataSource::~ML3ContainerSeedDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

void ___ZL23TranslateDictionaryKeysP12NSDictionaryS0_P19NSMutableDictionary_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_22D55FD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_22D55FDDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ML3ITunesSyncContainerImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncContainerImportItem>,std::allocator<ML3ITunesSyncContainerImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_32ML3ITunesSyncContainerImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ITunesSyncContainerImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncContainerImportItem>,std::allocator<ML3ITunesSyncContainerImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ITunesSyncContainerImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncContainerImportItem>,std::allocator<ML3ITunesSyncContainerImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D560058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  v16 = v15;

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_22D5605D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

void sub_22D560D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_22D560E40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ML3ITunesSyncTrackImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncTrackImportItem>,std::allocator<ML3ITunesSyncTrackImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_28ML3ITunesSyncTrackImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ITunesSyncTrackImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncTrackImportItem>,std::allocator<ML3ITunesSyncTrackImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ITunesSyncTrackImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncTrackImportItem>,std::allocator<ML3ITunesSyncTrackImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D56155C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26)
{
  v31 = *(v29 - 104);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v29 - 88);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(a1);
}

void sub_22D5617B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D561850(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ML3ITunesSyncAlbumImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncAlbumImportItem>,std::allocator<ML3ITunesSyncAlbumImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_28ML3ITunesSyncAlbumImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ITunesSyncAlbumImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncAlbumImportItem>,std::allocator<ML3ITunesSyncAlbumImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ITunesSyncAlbumImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncAlbumImportItem>,std::allocator<ML3ITunesSyncAlbumImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ITunesSyncArtistImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncArtistImportItem>,std::allocator<ML3ITunesSyncArtistImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_29ML3ITunesSyncArtistImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ITunesSyncArtistImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncArtistImportItem>,std::allocator<ML3ITunesSyncArtistImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ITunesSyncArtistImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncArtistImportItem>,std::allocator<ML3ITunesSyncArtistImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D561F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26)
{
  v31 = *(v29 - 104);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v29 - 88);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(a1);
}

void sub_22D56328C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  ML3ImportSession::~ML3ImportSession(&STACK[0x3B0]);

  _Unwind_Resume(a1);
}

void sub_22D563EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ML3SubscriptionContainerImportItem::_createImportItemValue(unsigned int a1@<W1>, void *a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (a1 == 218103812)
  {
    operator new();
  }

  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  ML3DAAPContainerImportItem::_createImportItemValue(a1, v4, &v5);
}

void sub_22D564288(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D564314(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ML3SubscriptionImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3SubscriptionImportItem>,std::allocator<ML3SubscriptionImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_25ML3SubscriptionImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3SubscriptionImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3SubscriptionImportItem>,std::allocator<ML3SubscriptionImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3SubscriptionImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3SubscriptionImportItem>,std::allocator<ML3SubscriptionImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void ML3SubscriptionImportItem::_createImportItemValue(unsigned int a1@<W1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (a1 == 218103812)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  ML3DAAPImportItem::_createImportItemValue(a1, &v4);
}

void sub_22D5644E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

id ML3SubscriptionImportItem::getDeduplicationPredicates(ML3SubscriptionImportItem *this)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v3 = (*(*this + 32))(this, 100663305);
  if (v3)
  {
    v4 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:v3];
    [v2 addObject:v4];
  }

  v5 = (*(*this + 32))(this, 100663297);
  if (v5)
  {
    v6 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:v5];
    if (v3)
    {
      v30[0] = v6;
      v7 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:0];
      v30[1] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
      v9 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v8];
      [v2 addObject:v9];

      v10 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.subscription_store_item_id" equalToInt64:v5];
      v29[0] = v10;
      v11 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:0];
      v29[1] = v11;
      v12 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:0];
      v29[2] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
      v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v13];
      [v2 addObject:v14];
    }

    else
    {
      [v2 addObject:v6];

      v10 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.subscription_store_item_id" equalToInt64:v5];
      v28[0] = v10;
      v11 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:0];
      v28[1] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      v13 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v12];
      [v2 addObject:v13];
    }
  }

  v15 = (*(*this + 32))(this, 100663337);
  if (v15)
  {
    if (v3)
    {
      v16 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.subscription_store_item_id" equalToInt64:v15];
      v27[0] = v16;
      v17 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:0];
      v27[1] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
      v19 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v18];
      [v2 addObject:v19];

      if (v5)
      {
        goto LABEL_15;
      }

      v20 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:v15];
      v21 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:0, v20];
      v26[1] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
      v23 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v22];
      [v2 addObject:v23];
    }

    else
    {
      v24 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.subscription_store_item_id" equalToInt64:v15];
      [v2 addObject:v24];

      if (v5)
      {
        goto LABEL_15;
      }

      v20 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:v15];
      [v2 addObject:v20];
    }
  }

LABEL_15:

  return v2;
}

void sub_22D564C48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3SubscriptionImportItem::getDescription(ML3SubscriptionImportItem *this)
{
  (*(*this + 32))(this, 100663305);
  v2 = (*(*this + 32))(this, 100663297);
  v3 = (*(*this + 32))(this, 100663337);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "<ML3SubscriptionImportItem ", 27);
  *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  v4 = MEMORY[0x2318CD100](&v12, this);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " sagaId=", 8);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 2;
  v6 = MEMORY[0x2318CD140]();
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", storeId=", 10);
  v8 = MEMORY[0x2318CD140](v7, v2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", subscriptionId=", 17);
  v10 = MEMORY[0x2318CD140](v9, v3);
  v17 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v17, 1);
  std::stringbuf::str();
  v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x277D82828] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v16);
}

unint64_t ML3SubscriptionImportItem::getIntegerValue(ML3SubscriptionImportItem *this, uint64_t a2)
{
  if (a2 == 100663345)
  {
    return 1;
  }

  if (a2 == 234881030)
  {
    return (*(*this + 32))(this, 234881032);
  }

  return ML3DAAPTrackImportItem::getIntegerValue(this, a2);
}

void ML3SubscriptionImportItem::getStringValue(ML3DAAPImportItem *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (a2 != 167772183)
  {
    ML3DAAPImportItem::getStringValue(this, a2, &v7);
    *(a3 + 8) = BYTE8(v7);
    std::string::operator=(v5, &v8);
    *&v7 = &unk_28408AC60;
    if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v6 = v8.__r_.__value_.__r.__words[0];
    goto LABEL_14;
  }

  memset(&__str, 0, sizeof(__str));
  ML3CPP::Element::childElementForCode(&v12, *(this + 8), 0x61654361u);
  if (v12)
  {
    ML3CPP::Element::stringValue(&v7, *(v12 + 48), *(v12 + 64));
    *&__str.__r_.__value_.__l.__data_ = v7;
    __str.__r_.__value_.__r.__words[2] = v8.__r_.__value_.__r.__words[0];
  }

  else
  {
    ML3CPP::Element::childElementForCode(&v10, *(this + 8), 0x61654354u);
    if (v10)
    {
      ML3CPP::Element::stringValue(&v7, *(v10 + 48), *(v10 + 64));
      *&__str.__r_.__value_.__l.__data_ = v7;
      __str.__r_.__value_.__r.__words[2] = v8.__r_.__value_.__r.__words[0];
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::string::operator=(v5, &__str);
  *(a3 + 8) = 1;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = __str.__r_.__value_.__r.__words[0];
LABEL_14:
    operator delete(v6);
  }
}

void sub_22D565130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  v31 = *(v29 - 56);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  *v26 = v27;
  if (*(v26 + 39) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void ML3SubscriptionImportItem::~ML3SubscriptionImportItem(ML3DAAPImportItem *this)
{
  ML3DAAPImportItem::~ML3DAAPImportItem(this);

  JUMPOUT(0x2318CD250);
}

id ML3SubscriptionContainerImportItem::getDeduplicationPredicates(ML3SubscriptionContainerImportItem *this)
{
  v2 = MEMORY[0x277CBEB18];
  v3 = ML3DAAPContainerImportItem::getDeduplicationPredicates(this);
  v4 = [v2 arrayWithArray:v3];

  v5 = (*(*this + 32))(this, 184549408);
  if (v5)
  {
    v6 = [ML3ComparisonPredicate predicateWithProperty:@"store_cloud_id" equalToInt64:v5];
    [v4 addObject:v6];
  }

  (*(*this + 24))(&v12, this, 184549417);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v12 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14 = __p;
  }

  size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  v8 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v9 = ML3CPPBridgeString(&v14, 1);
    v10 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_global_id" equalToValue:v9];
    [v4 addObject:v10];

    v8 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  if (v8 < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_22D565428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ML3SubscriptionContainerImportItem::getDescription(ML3SubscriptionContainerImportItem *this)
{
  (*(*this + 24))(&v19);
  (*(*this + 32))(this, 184549408);
  (*(*this + 24))(&v12, this, 184549417);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v12 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = __p;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "<ML3SubscriptionContainerImportItem ", 36);
  *(&v12 + *(v12 - 3) + 8) = *(&v12 + *(v12 - 3) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v12, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " global_id=", 11);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v18;
  }

  else
  {
    v4 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, size);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " cloud_id=", 10);
  *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 2;
  v8 = MEMORY[0x2318CD140]();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", name=", 7);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = v20;
  }

  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v11;
  }

  else
  {
    v9 = v11.__r_.__value_.__r.__words[0];
  }

  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v11.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  v21 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v21, 1);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 3)) = *(MEMORY[0x277D82828] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&__p);
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](&v17);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v19 = &unk_28408AC60;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_22D56588C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::ostringstream::~ostringstream(&a15);
  if (*(v22 - 105) < 0)
  {
    operator delete(*(v22 - 128));
  }

  *(v22 - 96) = &unk_28408AC60;
  if (*(v22 - 57) < 0)
  {
    operator delete(*(v22 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t ML3SubscriptionContainerImportItem::getIntegerValue(ML3DAAPImportItem *this, uint64_t a2)
{
  if (a2 == 184549426)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    return v4;
  }

  else
  {

    return ML3DAAPContainerImportItem::getIntegerValue(this, a2);
  }
}

void ML3SubscriptionContainerImportItem::getStringValue(ML3DAAPImportItem *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (a2 != 184549450)
  {
    ML3DAAPImportItem::getStringValue(this, a2, &v7);
    *(a3 + 8) = BYTE8(v7);
    std::string::operator=(v5, &v8);
    *&v7 = &unk_28408AC60;
    if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v6 = v8.__r_.__value_.__r.__words[0];
    goto LABEL_14;
  }

  memset(&__str, 0, sizeof(__str));
  ML3CPP::Element::childElementForCode(&v12, *(this + 8), 0x61654361u);
  if (v12)
  {
    ML3CPP::Element::stringValue(&v7, *(v12 + 48), *(v12 + 64));
    *&__str.__r_.__value_.__l.__data_ = v7;
    __str.__r_.__value_.__r.__words[2] = v8.__r_.__value_.__r.__words[0];
  }

  else
  {
    ML3CPP::Element::childElementForCode(&v10, *(this + 8), 0x61654354u);
    if (v10)
    {
      ML3CPP::Element::stringValue(&v7, *(v10 + 48), *(v10 + 64));
      *&__str.__r_.__value_.__l.__data_ = v7;
      __str.__r_.__value_.__r.__words[2] = v8.__r_.__value_.__r.__words[0];
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::string::operator=(v5, &__str);
  *(a3 + 8) = 1;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = __str.__r_.__value_.__r.__words[0];
LABEL_14:
    operator delete(v6);
  }
}

void sub_22D565B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  v31 = *(v29 - 56);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  *v26 = v27;
  if (*(v26 + 39) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3SubscriptionContainerImportItem::isValid(ML3DAAPImportItem *this)
{
  v6 = *MEMORY[0x277D85DE8];
  result = ML3DAAPContainerImportItem::isValid(this);
  if (result)
  {
    if (ML3DAAPImportItem::getIntegerValue(this, 184549408) == 1)
    {
      v3 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 134217984;
        v5 = 1;
        _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "ignoring container with cloud id %lld", &v4, 0xCu);
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void ML3SubscriptionContainerImportItem::~ML3SubscriptionContainerImportItem(ML3SubscriptionContainerImportItem *this)
{
  ML3DAAPContainerImportItem::~ML3DAAPContainerImportItem(this);

  JUMPOUT(0x2318CD250);
}

sqlite3 **DestroySQLExtensions(sqlite3 **pApp)
{
  if (pApp)
  {
    v1 = pApp;
    v2 = *pApp;
    if (v2)
    {
      sqlite3_create_function(v2, "FindRowForRunningSum_UInt64", 2, 2049, v1, 0, 0, 0);
      sqlite3_create_function(*v1, "CFTimeRelativeToStartOfToday", 1, 2049, v1, 0, 0, 0);
      sqlite3_create_function(*v1, "CFTimeRelativeToEndOfToday", 1, 2049, v1, 0, 0, 0);
    }

    *v1 = 0;

    JUMPOUT(0x2318CD250);
  }

  return pApp;
}

void ML3SQLiteExtensions::CFTimeRelativeToEndOfToday(ML3SQLiteExtensions *this, sqlite3_context *a2, sqlite3_value **a3, sqlite3_value **a4)
{
  v6 = sqlite3_user_data(this);
  if (v6)
  {
    v7 = v6;
    v8 = sqlite3_value_int64(*a3);
    v9 = ML3SQLiteExtensions::CFTimeRelativeToToday(v7, v8, 0);

    sqlite3_result_int64(this, v9);
  }
}

uint64_t ML3SQLiteExtensions::CFTimeRelativeToToday(CFAbsoluteTime *this, uint64_t a2, int a3)
{
  if ((this[6] & 1) == 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = CFCalendarCreateWithIdentifier(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE80]);
    v11 = 0;
    v10 = 0;
    CFCalendarDecomposeAbsoluteTime(v7, Current, "yMd", &v11 + 4, &v11, &v10);
    CFCalendarComposeAbsoluteTime(v7, this + 4, "yMdHms", HIDWORD(v11), v11, v10, 0, 0, 0);
    CFCalendarComposeAbsoluteTime(v7, this + 5, "yMdHms", HIDWORD(v11), v11, v10, 23, 59, 59);
    CFRelease(v7);
    *(this + 48) = 1;
  }

  v8 = 5;
  if (a3)
  {
    v8 = 4;
  }

  return this[v8] + a2;
}

void ML3SQLiteExtensions::CFTimeRelativeToStartOfToday(ML3SQLiteExtensions *this, sqlite3_context *a2, sqlite3_value **a3, sqlite3_value **a4)
{
  v6 = sqlite3_user_data(this);
  if (v6)
  {
    v7 = v6;
    v8 = sqlite3_value_int64(*a3);
    v9 = ML3SQLiteExtensions::CFTimeRelativeToToday(v7, v8, 1);

    sqlite3_result_int64(this, v9);
  }
}

void ML3SQLiteExtensions::Final_FindRowForRunningSum_UInt64(ML3SQLiteExtensions *this, sqlite3_context *a2)
{
  v3 = sqlite3_aggregate_context(this, 56);
  if (v3)
  {
    v4 = v3;
    sqlite3_result_int64(this, v3[3]);
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 0;
  }
}

unint64_t ML3SQLiteExtensions::Step_FindRowForRunningSum_UInt64(ML3SQLiteExtensions *this, sqlite3_context *a2, sqlite3_value **a3, sqlite3_value **a4)
{
  v5 = a2;
  result = sqlite3_aggregate_context(this, 56);
  if (v5 >= 1)
  {
    v7 = result;
    if (result)
    {
      if (!*(result + 16))
      {
        *(result + 8) = 0;
      }

      v8 = sqlite3_value_int64(*a3);
      v9 = vdupq_n_s64(1uLL);
      v9.i64[0] = v8;
      v10 = vaddq_s64(*(v7 + 8), v9);
      *(v7 + 8) = v10;
      result = sqlite3_value_int64(a3[1]);
      if (v10.i64[0] <= result)
      {
        *(v7 + 24) = *(v7 + 16);
      }
    }
  }

  return result;
}

void ML3GenreDatabaseImportDataSource::~ML3GenreDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

void ___ZN18ML3VirtualTableRowC2EP16ML3DatabaseTable_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (([v3 columnConstraints] & 1) == 0)
  {
    v5 = [v3 datatype];
    v26[0] = 0;
    v27 = 0;
    v28 = 1;
    v7 = v4[2];
    v6 = v4[3];
    if (v7 >= v6)
    {
      v9 = v4[1];
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 4);
      if (v10 + 1 > 0x555555555555555)
      {
        std::vector<long long>::__throw_length_error[abi:ne200100]();
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 4);
      v12 = 2 * v11;
      if (2 * v11 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x2AAAAAAAAAAAAAALL)
      {
        v13 = 0x555555555555555;
      }

      else
      {
        v13 = v12;
      }

      v32 = v4 + 1;
      if (v13)
      {
        if (v13 <= 0x555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v29 = 0;
      v30 = 48 * v10;
      v31 = 48 * v10;
      *v30 = v5;
      std::__optional_copy_base<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,false>::__optional_copy_base[abi:ne200100](48 * v10 + 8, v26);
      *&v31 = v31 + 48;
      v15 = v4[1];
      v14 = v4[2];
      v16 = v30 + v15 - v14;
      if (v15 != v14)
      {
        v23 = v4;
        v24 = v3;
        v17 = 0;
        do
        {
          v18 = v16 + v17;
          v19 = v15 + v17;
          *v18 = *(v15 + v17);
          *(v16 + v17 + 8) = 0;
          *(v18 + 40) = 0;
          if (*(v15 + v17 + 40) == 1)
          {
            *(v16 + v17 + 8) = 0;
            *(v18 + 32) = -1;
            std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v16 + v17 + 8);
            v20 = *(v19 + 32);
            if (v20 != -1)
            {
              v33 = v16 + v17 + 8;
              (off_28408A6E0[v20])(&v33, v15 + v17 + 8);
              *(v18 + 32) = v20;
            }

            *(v18 + 40) = 1;
          }

          v17 += 48;
        }

        while (v19 + 48 != v14);
        v4 = v23;
        v3 = v24;
        do
        {
          if (*(v15 + 40) == 1)
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v15 + 8);
          }

          v15 += 48;
        }

        while (v15 != v14);
      }

      v21 = v4[1];
      v4[1] = v16;
      v22 = v4[3];
      v25 = v31;
      v30 = v21;
      *&v31 = v21;
      *(v4 + 1) = v25;
      *(&v31 + 1) = v22;
      v29 = v21;
      std::__split_buffer<ML3VirtualTableColumn>::~__split_buffer(&v29);
      v8 = v25;
    }

    else
    {
      *v7 = v5;
      std::__optional_copy_base<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,false>::__optional_copy_base[abi:ne200100]((v7 + 1), v26);
      v8 = v7 + 6;
      v4[2] = v7 + 6;
    }

    v4[2] = v8;
    if (v28 == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v26);
    }
  }
}

void sub_22D5668B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::__split_buffer<ML3VirtualTableColumn>::~__split_buffer(va1);
  if (v13 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<ML3VirtualTableColumn>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 8) == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 - 40);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

float std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>> &&>(_DWORD **a1, float *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void sub_22D567354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 208), 8);
  _Block_object_dispose((v32 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25156(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D567CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22D56810C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25234(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D5690F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25336(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ML3ItemSearchDatabaseImportDataSource::hasValueForKey(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if ((a3 - 67108865) <= 4)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    hasValueForKey = (*(*a1 + 80))(a1, &v8) != 0;
    v5 = v9;
    if (!v9)
    {
      return hasValueForKey;
    }

LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    return hasValueForKey;
  }

  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  hasValueForKey = ML3DatabaseImportDataSource::hasValueForKey(a1, v7, a3);
  if (v5)
  {
    goto LABEL_9;
  }

  return hasValueForKey;
}

void sub_22D5698B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D5698CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    JUMPOUT(0x22D5698C4);
  }

  JUMPOUT(0x22D5698BCLL);
}

uint64_t ML3ItemSearchDatabaseImportDataSource::integerValueForKey(void *a1, uint64_t *a2, uint64_t a3)
{
  if (a3 <= 67108866)
  {
    if (a3 == 67108865)
    {
      return a1[9];
    }

    if (a3 == 67108866)
    {
      return a1[11];
    }
  }

  else
  {
    switch(a3)
    {
      case 0x4000003:
        return a1[13];
      case 0x4000004:
        return a1[15];
      case 0x4000005:
        return a1[17];
    }
  }

  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = (*(*v4 + 32))(v4, a3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v3;
}

void sub_22D5699D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ML3ItemSearchDatabaseImportDataSource::prepareColumns(void *a1, void **a2)
{
  ML3ImportItem::getSanitizedStringValue(v20, *a2, 33554433);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = __p;
  }

  v4 = ML3CPPBridgeString(&v22, 1);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v20[0] = &unk_28408AC60;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ML3ImportItem::getSanitizedStringValue(v20, *a2, 167772161);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = __p;
  }

  v5 = ML3CPPBridgeString(&v22, 1);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v20[0] = &unk_28408AC60;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ML3ImportItem::getSanitizedStringValue(v20, *a2, 167772164);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = __p;
  }

  v6 = ML3CPPBridgeString(&v22, 1);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v20[0] = &unk_28408AC60;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ML3ImportItem::getSanitizedStringValue(v20, *a2, 167772165);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = __p;
  }

  v7 = ML3CPPBridgeString(&v22, 1);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v20[0] = &unk_28408AC60;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(**a2 + 152))(v20);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = __p;
  }

  v8 = ML3CPPBridgeString(&v22, 1);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v20[0] = &unk_28408AC60;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = *(a1[3] + 24);
  v10 = [v9 objectForKey:v4];
  a1[9] = [v10 ML3NameOrderValue];
  a1[10] = v11;

  v12 = [v9 objectForKey:v6];
  a1[11] = [v12 ML3NameOrderValue];
  a1[12] = v13;

  v14 = [v9 objectForKey:v5];
  a1[13] = [v14 ML3NameOrderValue];
  a1[14] = v15;

  v16 = [v9 objectForKey:v7];
  a1[15] = [v16 ML3NameOrderValue];
  a1[16] = v17;

  v18 = [v9 objectForKey:v8];
  a1[17] = [v18 ML3NameOrderValue];
  a1[18] = v19;
}

void sub_22D569DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22D569EB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a14) < 0)
  {
    operator delete(a12);
  }

  JUMPOUT(0x22D569E54);
}

void sub_22D569F08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a14) < 0)
  {
    operator delete(a12);
  }

  JUMPOUT(0x22D569E58);
}

void sub_22D569F58(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a14) < 0)
  {
    operator delete(a12);
  }

  JUMPOUT(0x22D569E5CLL);
}

void sub_22D569FA8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a14) < 0)
  {
    operator delete(a12);
  }

  JUMPOUT(0x22D569E60);
}

void ML3ItemSearchDatabaseImportDataSource::~ML3ItemSearchDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

void sub_22D56AE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25535(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D56B474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D56BBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MLDUpdateSpotlightIndexVersionForBundle(uint64_t a1)
{
  if (a1 == 1)
  {
    return 6;
  }

  v6 = v1;
  v7 = v2;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Trying get the current index version from an unknown bundle", v5, 2u);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

void sub_22D56F254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 224), 8);
  _Block_object_dispose((v51 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25846(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D572D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D575678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26244(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ML3DatabaseCreateDiskIOError()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA450];
  v4[0] = @"Unrecoverable SQLITE_IOERR detected";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ML3DatabaseErrorDomain" code:500 userInfo:v0];

  return v1;
}

id ML3DatabaseCreateCorruptionError()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA450];
  v4[0] = @"Database corruption has been detected.";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ML3DatabaseErrorDomain" code:400 userInfo:v0];

  return v1;
}

void sub_22D579134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D57F13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MIPArtistReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v59[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59[0] & 0x7F) << v5;
        if ((v59[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        break;
      }

      if (v13 <= 8)
      {
        switch(v13)
        {
          case 6:
            v28 = PBReaderReadString();
            v29 = 56;
            goto LABEL_83;
          case 7:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 96) |= 0x20u;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v59[0] & 0x7F) << v36;
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_102;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v38;
            }

LABEL_102:
            *(a1 + 72) = v42;
            goto LABEL_120;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 96) |= 1u;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v59[0] & 0x7F) << v14;
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_114;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_114:
            v56 = 8;
LABEL_119:
            *(a1 + v56) = v20;
            goto LABEL_120;
        }

LABEL_93:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_120;
      }

      if (v13 == 9)
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 96) |= 4u;
        while (1)
        {
          LOBYTE(v59[0]) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v59[0] & 0x7F) << v50;
          if ((v59[0] & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_118;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v52;
        }

LABEL_118:
        v56 = 24;
        goto LABEL_119;
      }

      if (v13 == 10)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 96) |= 8u;
        while (1)
        {
          LOBYTE(v59[0]) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v59[0] & 0x7F) << v43;
          if ((v59[0] & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_106;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v45;
        }

LABEL_106:
        v56 = 32;
        goto LABEL_119;
      }

      if (v13 != 50)
      {
        goto LABEL_93;
      }

      v27 = objc_alloc_init(MIPLibraryIdentifier);
      [a1 addLibraryIdentifiers:v27];
      v59[0] = 0;
      v59[1] = 0;
      if (!PBReaderPlaceMark() || !MIPLibraryIdentifierReadFrom(v27, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_120:
      v57 = [a2 position];
      if (v57 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 2)
    {
      if (v13 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 96) |= 0x10u;
        while (1)
        {
          LOBYTE(v59[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v59[0] & 0x7F) << v30;
          if ((v59[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v32;
        }

LABEL_98:
        v56 = 40;
        goto LABEL_119;
      }

      if (v13 == 2)
      {
        v28 = PBReaderReadString();
        v29 = 80;
LABEL_83:
        v49 = *(a1 + v29);
        *(a1 + v29) = v28;

        goto LABEL_120;
      }
    }

    else
    {
      switch(v13)
      {
        case 3:
          v28 = PBReaderReadString();
          v29 = 88;
          goto LABEL_83;
        case 4:
          v28 = PBReaderReadString();
          v29 = 48;
          goto LABEL_83;
        case 5:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 96) |= 2u;
          while (1)
          {
            LOBYTE(v59[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v59[0] & 0x7F) << v21;
            if ((v59[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_110;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_110:
          v56 = 16;
          goto LABEL_119;
      }
    }

    goto LABEL_93;
  }

  return [a2 hasError] ^ 1;
}

void sub_22D581E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  (*(*v20 + 8))(v20);
  *(v22 - 72) = &a10;
  std::vector<std::unordered_set<std::string>>::__destroy_vector::operator()[abi:ne200100]((v22 - 72));
  if (v21)
  {
    operator delete(v21);
    if (!v19)
    {
      goto LABEL_3;
    }
  }

  else if (!v19)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
LABEL_3:
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3SubscriptionContainerImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3SubscriptionContainerImportItem>,std::allocator<ML3SubscriptionContainerImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_34ML3SubscriptionContainerImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3SubscriptionContainerImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3SubscriptionContainerImportItem>,std::allocator<ML3SubscriptionContainerImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3SubscriptionContainerImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3SubscriptionContainerImportItem>,std::allocator<ML3SubscriptionContainerImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D582108(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3SubscriptionImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3SubscriptionImportItem>,std::allocator<ML3SubscriptionImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_25ML3SubscriptionImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3SubscriptionImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3SubscriptionImportItem>,std::allocator<ML3SubscriptionImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3SubscriptionImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3SubscriptionImportItem>,std::allocator<ML3SubscriptionImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D582A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D582E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D58672C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28328(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D58697C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D586EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MIPMediaItemReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v344) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v344 & 0x7F) << v5;
        if ((v344 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 199)
      {
        break;
      }

      if (v13 <= 399)
      {
        switch(v13)
        {
          case 200:
            v21 = objc_alloc_init(MIPLibraryIdentifier);
            [a1 addLibraryIdentifiers:v21];
            v344 = 0;
            v345 = 0;
            if (!PBReaderPlaceMark() || (MIPLibraryIdentifierReadFrom(v21, a2) & 1) == 0)
            {
              goto LABEL_734;
            }

            goto LABEL_452;
          case 201:
            v314 = 0;
            v315 = 0;
            v316 = 0;
            *(a1 + 496) |= 0x80000uLL;
            while (1)
            {
              LOBYTE(v344) = 0;
              v317 = [a2 position] + 1;
              if (v317 >= [a2 position] && (v318 = objc_msgSend(a2, "position") + 1, v318 <= objc_msgSend(a2, "length")))
              {
                v319 = [a2 data];
                [v319 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v316 |= (v344 & 0x7F) << v314;
              if ((v344 & 0x80) == 0)
              {
                break;
              }

              v314 += 7;
              v11 = v315++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_717;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v316;
            }

LABEL_717:
            v341 = 160;
            goto LABEL_731;
          case 202:
            v296 = 0;
            v297 = 0;
            v298 = 0;
            *(a1 + 496) |= 0x200000uLL;
            while (1)
            {
              LOBYTE(v344) = 0;
              v299 = [a2 position] + 1;
              if (v299 >= [a2 position] && (v300 = objc_msgSend(a2, "position") + 1, v300 <= objc_msgSend(a2, "length")))
              {
                v301 = [a2 data];
                [v301 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v298 |= (v344 & 0x7F) << v296;
              if ((v344 & 0x80) == 0)
              {
                break;
              }

              v296 += 7;
              v11 = v297++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_705;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v298;
            }

LABEL_705:
            v341 = 176;
            goto LABEL_731;
          case 203:
            v302 = 0;
            v303 = 0;
            v304 = 0;
            *(a1 + 496) |= 1uLL;
            while (1)
            {
              LOBYTE(v344) = 0;
              v305 = [a2 position] + 1;
              if (v305 >= [a2 position] && (v306 = objc_msgSend(a2, "position") + 1, v306 <= objc_msgSend(a2, "length")))
              {
                v307 = [a2 data];
                [v307 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v304 |= (v344 & 0x7F) << v302;
              if ((v344 & 0x80) == 0)
              {
                break;
              }

              v302 += 7;
              v11 = v303++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_709;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v304;
            }

LABEL_709:
            v341 = 8;
            goto LABEL_731;
          case 204:
            v284 = 0;
            v285 = 0;
            v286 = 0;
            *(a1 + 496) |= 0x8000uLL;
            while (1)
            {
              LOBYTE(v344) = 0;
              v287 = [a2 position] + 1;
              if (v287 >= [a2 position] && (v288 = objc_msgSend(a2, "position") + 1, v288 <= objc_msgSend(a2, "length")))
              {
                v289 = [a2 data];
                [v289 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v286 |= (v344 & 0x7F) << v284;
              if ((v344 & 0x80) == 0)
              {
                break;
              }

              v284 += 7;
              v11 = v285++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_697;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v286;
            }

LABEL_697:
            v341 = 128;
            goto LABEL_731;
          case 205:
            v320 = 0;
            v321 = 0;
            v322 = 0;
            *(a1 + 496) |= 0x800000000uLL;
            while (1)
            {
              LOBYTE(v344) = 0;
              v323 = [a2 position] + 1;
              if (v323 >= [a2 position] && (v324 = objc_msgSend(a2, "position") + 1, v324 <= objc_msgSend(a2, "length")))
              {
                v325 = [a2 data];
                [v325 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v322 |= (v344 & 0x7F) << v320;
              if ((v344 & 0x80) == 0)
              {
                break;
              }

              v320 += 7;
              v11 = v321++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_721;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v322;
            }

LABEL_721:
            v342 = 376;
LABEL_722:
            *(a1 + v342) = v20;
            goto LABEL_732;
          case 206:
            v36 = PBReaderReadString();
            v37 = 368;
            goto LABEL_538;
          case 207:
            v308 = 0;
            v309 = 0;
            v310 = 0;
            *(a1 + 496) |= 0x40000uLL;
            while (1)
            {
              LOBYTE(v344) = 0;
              v311 = [a2 position] + 1;
              if (v311 >= [a2 position] && (v312 = objc_msgSend(a2, "position") + 1, v312 <= objc_msgSend(a2, "length")))
              {
                v313 = [a2 data];
                [v313 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v310 |= (v344 & 0x7F) << v308;
              if ((v344 & 0x80) == 0)
              {
                break;
              }

              v308 += 7;
              v11 = v309++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_713;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v310;
            }

LABEL_713:
            v341 = 152;
            goto LABEL_731;
          case 208:
            v36 = PBReaderReadString();
            v37 = 384;
            goto LABEL_538;
          case 209:
            v36 = PBReaderReadString();
            v37 = 456;
            goto LABEL_538;
          case 210:
            v332 = 0;
            v333 = 0;
            v334 = 0;
            *(a1 + 496) |= 0x400000uLL;
            while (1)
            {
              LOBYTE(v344) = 0;
              v335 = [a2 position] + 1;
              if (v335 >= [a2 position] && (v336 = objc_msgSend(a2, "position") + 1, v336 <= objc_msgSend(a2, "length")))
              {
                v337 = [a2 data];
                [v337 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v334 |= (v344 & 0x7F) << v332;
              if ((v344 & 0x80) == 0)
              {
                break;
              }

              v332 += 7;
              v11 = v333++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_730;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v334;
            }

LABEL_730:
            v341 = 184;
            goto LABEL_731;
          case 211:
            v36 = PBReaderReadString();
            v37 = 232;
LABEL_538:
            v338 = *(a1 + v37);
            *(a1 + v37) = v36;

            goto LABEL_732;
          case 212:
            v290 = 0;
            v291 = 0;
            v292 = 0;
            *(a1 + 496) |= 0x20000uLL;
            while (1)
            {
              LOBYTE(v344) = 0;
              v293 = [a2 position] + 1;
              if (v293 >= [a2 position] && (v294 = objc_msgSend(a2, "position") + 1, v294 <= objc_msgSend(a2, "length")))
              {
                v295 = [a2 data];
                [v295 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v292 |= (v344 & 0x7F) << v290;
              if ((v344 & 0x80) == 0)
              {
                break;
              }

              v290 += 7;
              v11 = v291++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_701;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v292;
            }

LABEL_701:
            v341 = 144;
            goto LABEL_731;
          case 213:
            v326 = 0;
            v327 = 0;
            v328 = 0;
            *(a1 + 496) |= 2uLL;
            break;
          default:
            goto LABEL_539;
        }

        while (1)
        {
          LOBYTE(v344) = 0;
          v329 = [a2 position] + 1;
          if (v329 >= [a2 position] && (v330 = objc_msgSend(a2, "position") + 1, v330 <= objc_msgSend(a2, "length")))
          {
            v331 = [a2 data];
            [v331 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v328 |= (v344 & 0x7F) << v326;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v326 += 7;
          v11 = v327++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_726;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v328;
        }

LABEL_726:
        v341 = 16;
        goto LABEL_731;
      }

      if (v13 <= 401)
      {
        if (v13 == 400)
        {
          v21 = objc_alloc_init(MIPSong);
          objc_storeStrong((a1 + 424), v21);
          v344 = 0;
          v345 = 0;
          if (!PBReaderPlaceMark() || (MIPSongReadFrom(v21, a2) & 1) == 0)
          {
LABEL_734:

            return 0;
          }
        }

        else
        {
          v21 = objc_alloc_init(MIPMovie);
          objc_storeStrong((a1 + 336), v21);
          v344 = 0;
          v345 = 0;
          if (!PBReaderPlaceMark() || (MIPMovieReadFrom(v21, a2) & 1) == 0)
          {
            goto LABEL_734;
          }
        }
      }

      else
      {
        switch(v13)
        {
          case 0x192:
            v21 = objc_alloc_init(MIPTVShow);
            objc_storeStrong((a1 + 472), v21);
            v344 = 0;
            v345 = 0;
            if (!PBReaderPlaceMark() || (MIPTVShowReadFrom(v21, a2) & 1) == 0)
            {
              goto LABEL_734;
            }

            break;
          case 0x193:
            v21 = objc_alloc_init(MIPPodcast);
            objc_storeStrong((a1 + 360), v21);
            v344 = 0;
            v345 = 0;
            if (!PBReaderPlaceMark() || (MIPPodcastReadFrom(v21, a2) & 1) == 0)
            {
              goto LABEL_734;
            }

            break;
          case 0x194:
            v21 = objc_alloc_init(MIPAudiobook);
            objc_storeStrong((a1 + 200), v21);
            v344 = 0;
            v345 = 0;
            if (!PBReaderPlaceMark() || (MIPAudiobookReadFrom(v21, a2) & 1) == 0)
            {
              goto LABEL_734;
            }

            break;
          default:
LABEL_539:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_732;
        }
      }

LABEL_452:
      PBReaderRecallMark();

LABEL_732:
      v343 = [a2 position];
      if (v343 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 496) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v344 & 0x7F) << v14;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_636;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_636:
        v342 = 328;
        goto LABEL_722;
      case 2:
        v36 = PBReaderReadString();
        v37 = 464;
        goto LABEL_538;
      case 3:
        v36 = PBReaderReadString();
        v37 = 432;
        goto LABEL_538;
      case 4:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        *(a1 + 496) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            v151 = [a2 data];
            [v151 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (v344 & 0x7F) << v146;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v11 = v147++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_612;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v148;
        }

LABEL_612:
        v341 = 136;
        goto LABEL_731;
      case 5:
        v176 = 0;
        v177 = 0;
        v178 = 0;
        *(a1 + 496) |= 8uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v179 = [a2 position] + 1;
          if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
          {
            v181 = [a2 data];
            [v181 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v178 |= (v344 & 0x7F) << v176;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v176 += 7;
          v11 = v177++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_632;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v178;
        }

LABEL_632:
        v341 = 32;
        goto LABEL_731;
      case 6:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        *(a1 + 496) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v344 & 0x7F) << v98;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v11 = v99++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_582;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v100;
        }

LABEL_582:
        v341 = 112;
        goto LABEL_731;
      case 7:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        *(a1 + 496) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            v169 = [a2 data];
            [v169 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (v344 & 0x7F) << v164;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v11 = v165++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_624;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v166;
        }

LABEL_624:
        v341 = 80;
        goto LABEL_731;
      case 8:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *(a1 + 496) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v131 = [a2 position] + 1;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
          {
            v133 = [a2 data];
            [v133 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v130 |= (v344 & 0x7F) << v128;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v11 = v129++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_600;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v130;
        }

LABEL_600:
        v341 = 64;
        goto LABEL_731;
      case 9:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        *(a1 + 496) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v161 = [a2 position] + 1;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
          {
            v163 = [a2 data];
            [v163 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v160 |= (v344 & 0x7F) << v158;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v11 = v159++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_620;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v160;
        }

LABEL_620:
        v342 = 248;
        goto LABEL_722;
      case 10:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 496) |= 0x40000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v344 & 0x7F) << v86;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v11 = v87++ >= 9;
          if (v11)
          {
            LOBYTE(v28) = 0;
            goto LABEL_574;
          }
        }

        v28 = (v88 != 0) & ~[a2 hasError];
LABEL_574:
        v340 = 485;
        goto LABEL_685;
      case 11:
        v36 = PBReaderReadString();
        v37 = 408;
        goto LABEL_538;
      case 12:
        v36 = PBReaderReadString();
        v37 = 320;
        goto LABEL_538;
      case 13:
        v36 = PBReaderReadString();
        v37 = 256;
        goto LABEL_538;
      case 14:
        v36 = PBReaderReadString();
        v37 = 192;
        goto LABEL_538;
      case 15:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        *(a1 + 496) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            v145 = [a2 data];
            [v145 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (v344 & 0x7F) << v140;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v11 = v141++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_608;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v142;
        }

LABEL_608:
        v342 = 480;
        goto LABEL_722;
      case 16:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 496) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            v127 = [a2 data];
            [v127 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v124 |= (v344 & 0x7F) << v122;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v11 = v123++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_596;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v124;
        }

LABEL_596:
        v342 = 252;
        goto LABEL_722;
      case 17:
        v36 = PBReaderReadString();
        v37 = 240;
        goto LABEL_538;
      case 18:
        v194 = 0;
        v195 = 0;
        v196 = 0;
        *(a1 + 496) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v197 = [a2 position] + 1;
          if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 1, v198 <= objc_msgSend(a2, "length")))
          {
            v199 = [a2 data];
            [v199 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v196 |= (v344 & 0x7F) << v194;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v194 += 7;
          v11 = v195++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_646;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v196;
        }

LABEL_646:
        v342 = 280;
        goto LABEL_722;
      case 19:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 496) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v344 & 0x7F) << v74;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_568;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v76;
        }

LABEL_568:
        v341 = 72;
        goto LABEL_731;
      case 20:
        v188 = 0;
        v189 = 0;
        v190 = 0;
        *(a1 + 496) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v191 = [a2 position] + 1;
          if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 1, v192 <= objc_msgSend(a2, "length")))
          {
            v193 = [a2 data];
            [v193 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v190 |= (v344 & 0x7F) << v188;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v188 += 7;
          v11 = v189++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_642;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v190;
        }

LABEL_642:
        v342 = 264;
        goto LABEL_722;
      case 21:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 496) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v344 & 0x7F) << v80;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_572;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v82;
        }

LABEL_572:
        v341 = 56;
        goto LABEL_731;
      case 22:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 496) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v344 & 0x7F) << v92;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v11 = v93++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_578;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v94;
        }

LABEL_578:
        v341 = 40;
        goto LABEL_731;
      case 23:
        v212 = 0;
        v213 = 0;
        v214 = 0;
        *(a1 + 496) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v215 = [a2 position] + 1;
          if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 1, v216 <= objc_msgSend(a2, "length")))
          {
            v217 = [a2 data];
            [v217 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v214 |= (v344 & 0x7F) << v212;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v212 += 7;
          v11 = v213++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_656;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v214;
        }

LABEL_656:
        v341 = 48;
        goto LABEL_731;
      case 24:
        v36 = PBReaderReadString();
        v37 = 208;
        goto LABEL_538;
      case 25:
        v36 = PBReaderReadString();
        v37 = 440;
        goto LABEL_538;
      case 26:
        v36 = PBReaderReadString();
        v37 = 272;
        goto LABEL_538;
      case 27:
        v224 = 0;
        v225 = 0;
        v226 = 0;
        *(a1 + 496) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v227 = [a2 position] + 1;
          if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 1, v228 <= objc_msgSend(a2, "length")))
          {
            v229 = [a2 data];
            [v229 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v226 |= (v344 & 0x7F) << v224;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v224 += 7;
          v11 = v225++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_664;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v226;
        }

LABEL_664:
        v341 = 120;
        goto LABEL_731;
      case 28:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 496) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v344 & 0x7F) << v134;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v11 = v135++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_604;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v136;
        }

LABEL_604:
        v342 = 224;
        goto LABEL_722;
      case 29:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 496) |= 0x100000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v113 = [a2 position] + 1;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
          {
            v115 = [a2 data];
            [v115 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v112 |= (v344 & 0x7F) << v110;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v11 = v111++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_590;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v112;
        }

LABEL_590:
        v342 = 344;
        goto LABEL_722;
      case 30:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 496) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v173 = [a2 position] + 1;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
          {
            v175 = [a2 data];
            [v175 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v172 |= (v344 & 0x7F) << v170;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v11 = v171++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_628;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v172;
        }

LABEL_628:
        v342 = 348;
        goto LABEL_722;
      case 31:
        v206 = 0;
        v207 = 0;
        v208 = 0;
        *(a1 + 496) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v209 = [a2 position] + 1;
          if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
          {
            v211 = [a2 data];
            [v211 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v208 |= (v344 & 0x7F) << v206;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v206 += 7;
          v11 = v207++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_652;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v208;
        }

LABEL_652:
        v341 = 88;
        goto LABEL_731;
      case 32:
        v230 = 0;
        v231 = 0;
        v232 = 0;
        *(a1 + 496) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v233 = [a2 position] + 1;
          if (v233 >= [a2 position] && (v234 = objc_msgSend(a2, "position") + 1, v234 <= objc_msgSend(a2, "length")))
          {
            v235 = [a2 data];
            [v235 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v232 |= (v344 & 0x7F) << v230;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v230 += 7;
          v11 = v231++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_668;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v232;
        }

LABEL_668:
        v342 = 416;
        goto LABEL_722;
      case 33:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 496) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v344 & 0x7F) << v56;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_558;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v58;
        }

LABEL_558:
        v342 = 420;
        goto LABEL_722;
      case 34:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 496) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            v109 = [a2 data];
            [v109 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v106 |= (v344 & 0x7F) << v104;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v11 = v105++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_586;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v106;
        }

LABEL_586:
        v341 = 96;
        goto LABEL_731;
      case 35:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 496) |= 0x8000000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            v121 = [a2 data];
            [v121 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v344 & 0x7F) << v116;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v11 = v117++ >= 9;
          if (v11)
          {
            LOBYTE(v28) = 0;
            goto LABEL_592;
          }
        }

        v28 = (v118 != 0) & ~[a2 hasError];
LABEL_592:
        v340 = 494;
        goto LABEL_685;
      case 36:
        v218 = 0;
        v219 = 0;
        v220 = 0;
        *(a1 + 496) |= 4uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v221 = [a2 position] + 1;
          if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
          {
            v223 = [a2 data];
            [v223 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v220 |= (v344 & 0x7F) << v218;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v218 += 7;
          v11 = v219++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_660;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v220;
        }

LABEL_660:
        v341 = 24;
        goto LABEL_731;
      case 37:
        v200 = 0;
        v201 = 0;
        v202 = 0;
        *(a1 + 496) |= 0x200000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v203 = [a2 position] + 1;
          if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 1, v204 <= objc_msgSend(a2, "length")))
          {
            v205 = [a2 data];
            [v205 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v202 |= (v344 & 0x7F) << v200;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v200 += 7;
          v11 = v201++ >= 9;
          if (v11)
          {
            LOBYTE(v28) = 0;
            goto LABEL_648;
          }
        }

        v28 = (v202 != 0) & ~[a2 hasError];
LABEL_648:
        v340 = 488;
        goto LABEL_685;
      case 38:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 496) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v70 |= (v344 & 0x7F) << v68;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v11 = v69++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_564;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v70;
        }

LABEL_564:
        v341 = 168;
        goto LABEL_731;
      case 39:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 496) |= 0x100000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v344 & 0x7F) << v38;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            LOBYTE(v28) = 0;
            goto LABEL_548;
          }
        }

        v28 = (v40 != 0) & ~[a2 hasError];
LABEL_548:
        v340 = 487;
        goto LABEL_685;
      case 40:
        v36 = PBReaderReadString();
        v37 = 296;
        goto LABEL_538;
      case 41:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        *(a1 + 496) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            v157 = [a2 data];
            [v157 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v154 |= (v344 & 0x7F) << v152;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v11 = v153++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_616;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v154;
        }

LABEL_616:
        v342 = 312;
        goto LABEL_722;
      case 43:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 496) |= 0x4000000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v344 & 0x7F) << v44;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            LOBYTE(v28) = 0;
            goto LABEL_550;
          }
        }

        v28 = (v46 != 0) & ~[a2 hasError];
LABEL_550:
        v340 = 493;
        goto LABEL_685;
      case 44:
        v182 = 0;
        v183 = 0;
        v184 = 0;
        *(a1 + 496) |= 0x2000000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v185 = [a2 position] + 1;
          if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
          {
            v187 = [a2 data];
            [v187 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v184 |= (v344 & 0x7F) << v182;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v182 += 7;
          v11 = v183++ >= 9;
          if (v11)
          {
            LOBYTE(v28) = 0;
            goto LABEL_638;
          }
        }

        v28 = (v184 != 0) & ~[a2 hasError];
LABEL_638:
        v340 = 492;
        goto LABEL_685;
      case 45:
        v248 = 0;
        v249 = 0;
        v250 = 0;
        *(a1 + 496) |= 0x800000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v251 = [a2 position] + 1;
          if (v251 >= [a2 position] && (v252 = objc_msgSend(a2, "position") + 1, v252 <= objc_msgSend(a2, "length")))
          {
            v253 = [a2 data];
            [v253 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v250 |= (v344 & 0x7F) << v248;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v248 += 7;
          v11 = v249++ >= 9;
          if (v11)
          {
            LOBYTE(v28) = 0;
            goto LABEL_674;
          }
        }

        v28 = (v250 != 0) & ~[a2 hasError];
LABEL_674:
        v340 = 490;
        goto LABEL_685;
      case 46:
        v236 = 0;
        v237 = 0;
        v238 = 0;
        *(a1 + 496) |= 0x20000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v239 = [a2 position] + 1;
          if (v239 >= [a2 position] && (v240 = objc_msgSend(a2, "position") + 1, v240 <= objc_msgSend(a2, "length")))
          {
            v241 = [a2 data];
            [v241 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v238 |= (v344 & 0x7F) << v236;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v236 += 7;
          v11 = v237++ >= 9;
          if (v11)
          {
            LOBYTE(v28) = 0;
            goto LABEL_670;
          }
        }

        v28 = (v238 != 0) & ~[a2 hasError];
LABEL_670:
        v340 = 484;
        goto LABEL_685;
      case 47:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 496) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v344 & 0x7F) << v50;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_554;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v52;
        }

LABEL_554:
        v342 = 448;
        goto LABEL_722;
      case 48:
        v266 = 0;
        v267 = 0;
        v268 = 0;
        *(a1 + 496) |= 0x10000000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v269 = [a2 position] + 1;
          if (v269 >= [a2 position] && (v270 = objc_msgSend(a2, "position") + 1, v270 <= objc_msgSend(a2, "length")))
          {
            v271 = [a2 data];
            [v271 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v268 |= (v344 & 0x7F) << v266;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v266 += 7;
          v11 = v267++ >= 9;
          if (v11)
          {
            LOBYTE(v28) = 0;
            goto LABEL_684;
          }
        }

        v28 = (v268 != 0) & ~[a2 hasError];
LABEL_684:
        v340 = 495;
        goto LABEL_685;
      case 49:
        v260 = 0;
        v261 = 0;
        v262 = 0;
        *(a1 + 496) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v263 = [a2 position] + 1;
          if (v263 >= [a2 position] && (v264 = objc_msgSend(a2, "position") + 1, v264 <= objc_msgSend(a2, "length")))
          {
            v265 = [a2 data];
            [v265 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v262 |= (v344 & 0x7F) << v260;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v260 += 7;
          v11 = v261++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_682;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v262;
        }

LABEL_682:
        v342 = 220;
        goto LABEL_722;
      case 50:
        v278 = 0;
        v279 = 0;
        v280 = 0;
        *(a1 + 496) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v281 = [a2 position] + 1;
          if (v281 >= [a2 position] && (v282 = objc_msgSend(a2, "position") + 1, v282 <= objc_msgSend(a2, "length")))
          {
            v283 = [a2 data];
            [v283 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v280 |= (v344 & 0x7F) << v278;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v278 += 7;
          v11 = v279++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_693;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v280;
        }

LABEL_693:
        v342 = 352;
        goto LABEL_722;
      case 51:
        v272 = 0;
        v273 = 0;
        v274 = 0;
        *(a1 + 496) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v275 = [a2 position] + 1;
          if (v275 >= [a2 position] && (v276 = objc_msgSend(a2, "position") + 1, v276 <= objc_msgSend(a2, "length")))
          {
            v277 = [a2 data];
            [v277 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v274 |= (v344 & 0x7F) << v272;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v272 += 7;
          v11 = v273++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_689;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v274;
        }

LABEL_689:
        v342 = 216;
        goto LABEL_722;
      case 52:
        v242 = 0;
        v243 = 0;
        v244 = 0;
        *(a1 + 496) |= 0x400000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v245 = [a2 position] + 1;
          if (v245 >= [a2 position] && (v246 = objc_msgSend(a2, "position") + 1, v246 <= objc_msgSend(a2, "length")))
          {
            v247 = [a2 data];
            [v247 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v244 |= (v344 & 0x7F) << v242;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v242 += 7;
          v11 = v243++ >= 9;
          if (v11)
          {
            LOBYTE(v28) = 0;
            goto LABEL_672;
          }
        }

        v28 = (v244 != 0) & ~[a2 hasError];
LABEL_672:
        v340 = 489;
        goto LABEL_685;
      case 53:
        v254 = 0;
        v255 = 0;
        v256 = 0;
        *(a1 + 496) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v257 = [a2 position] + 1;
          if (v257 >= [a2 position] && (v258 = objc_msgSend(a2, "position") + 1, v258 <= objc_msgSend(a2, "length")))
          {
            v259 = [a2 data];
            [v259 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v256 |= (v344 & 0x7F) << v254;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v254 += 7;
          v11 = v255++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_678;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v256;
        }

LABEL_678:
        v342 = 400;
        goto LABEL_722;
      case 54:
        v36 = PBReaderReadString();
        v37 = 392;
        goto LABEL_538;
      case 55:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 496) |= 0x80000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v344 & 0x7F) << v62;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            LOBYTE(v28) = 0;
            goto LABEL_560;
          }
        }

        v28 = (v64 != 0) & ~[a2 hasError];
LABEL_560:
        v340 = 486;
        goto LABEL_685;
      case 56:
        v36 = PBReaderReadData();
        v37 = 288;
        goto LABEL_538;
      case 57:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 496) |= 0x1000000000000uLL;
        while (1)
        {
          LOBYTE(v344) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v344 & 0x7F) << v22;
          if ((v344 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            LOBYTE(v28) = 0;
            goto LABEL_542;
          }
        }

        v28 = (v24 != 0) & ~[a2 hasError];
LABEL_542:
        v340 = 491;
LABEL_685:
        *(a1 + v340) = v28;
        goto LABEL_732;
      case 58:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 496) |= 0x1000uLL;
        break;
      default:
        goto LABEL_539;
    }

    while (1)
    {
      LOBYTE(v344) = 0;
      v32 = [a2 position] + 1;
      if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
      {
        v34 = [a2 data];
        [v34 getBytes:&v344 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v31 |= (v344 & 0x7F) << v29;
      if ((v344 & 0x80) == 0)
      {
        break;
      }

      v29 += 7;
      v11 = v30++ >= 9;
      if (v11)
      {
        v35 = 0;
        goto LABEL_546;
      }
    }

    if ([a2 hasError])
    {
      v35 = 0;
    }

    else
    {
      v35 = v31;
    }

LABEL_546:
    v341 = 104;
LABEL_731:
    *(a1 + v341) = v35;
    goto LABEL_732;
  }

  return [a2 hasError] ^ 1;
}

id ML3StoreContainerImportItem::getDeduplicationPredicates(id *this)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [this[8] objectForKey:&unk_2840CA4D8];
  v4 = [v3 longLongValue];

  if (v4)
  {
    v5 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:v4];
    [v2 addObject:v5];
  }

  v6 = [this[8] objectForKey:&unk_2840CA4F0];
  if (v6)
  {
    v7 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_global_id" equalToValue:v6];
    [v2 addObject:v7];
  }

  return v2;
}

void sub_22D592704(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ML3StoreContainerImportItem::getDescription(ML3StoreContainerImportItem *this)
{
  (*(*this + 24))(&v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v11 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = __p;
  }

  (*(*this + 24))(&v11, this, 184549417);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v11 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = __p;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "<ML3StoreContainerImportItem ", 29);
  *(&v11 + *(v11 - 3) + 8) = *(&v11 + *(v11 - 3) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v11, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " name=", 7);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v18;
  }

  else
  {
    v4 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, size);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", globalID=", 13);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v17;
  }

  else
  {
    v8 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v17.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ">", 2);
  std::stringbuf::str();
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 3)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&__p);
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](&v16);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_22D592A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 - 57) < 0)
  {
    operator delete(*(v17 - 80));
  }

  _Unwind_Resume(exception_object);
}

void ML3StoreContainerImportItem::getImportItemArrayValue(id *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if ((a2 - 218103813) >= 2)
  {
    if (a2 == 218103812)
    {
      [this[8] objectForKeyedSubscript:@"childrenIds"];
      v4 = memset(v7, 0, sizeof(v7));
      if ([v4 countByEnumeratingWithState:v7 objects:v8 count:16])
      {
        operator new();
      }
    }

    else
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual std::vector<std::shared_ptr<ML3ImportItem>> ML3StoreContainerImportItem::getImportItemArrayValue(MLImportPropertyKey) const"];
      [v6 handleFailureInFunction:v5 file:@"ML3StoreContainerImportItem.mm" lineNumber:111 description:{@"getImportItemArrayValue called with unknown property key %x", a2}];
    }
  }
}

uint64_t std::__shared_ptr_pointer<ML3StoreContainerTrackItemImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3StoreContainerTrackItemImportItem>,std::allocator<ML3StoreContainerTrackItemImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_36ML3StoreContainerTrackItemImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3StoreContainerTrackItemImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3StoreContainerTrackItemImportItem>,std::allocator<ML3StoreContainerTrackItemImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3StoreContainerTrackItemImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3StoreContainerTrackItemImportItem>,std::allocator<ML3StoreContainerTrackItemImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t ML3StoreContainerTrackItemImportItem::getDescription(ML3StoreContainerTrackItemImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "<ML3StoreContainerTrackItemImportItem ", 38);
  *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v6, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " sync_id=", 9);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v4 = MEMORY[0x2318CD140]();
  v11 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v11, 1);
  std::stringbuf::str();
  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v10);
}

uint64_t ML3StoreContainerTrackItemImportItem::getIntegerValue(ML3StoreContainerTrackItemImportItem *this, uint64_t a2)
{
  if (a2 == 234881030)
  {
    return *(this + 8);
  }

  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual int64_t ML3StoreContainerTrackItemImportItem::getIntegerValue(MLImportPropertyKey) const"];
  [v4 handleFailureInFunction:v5 file:@"ML3StoreContainerImportItem.mm" lineNumber:158 description:{@"ML3StoreContainerTrackItemImportItem::getIntegerValue called with unknown property key %x", a2}];

  return 0;
}

void ML3StoreContainerTrackItemImportItem::getStringValue(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = &unk_28408AC60;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if ((a1 - 234881028) > 6 || ((1 << (a1 - 4)) & 0x43) == 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual ML3ImportStringValue ML3StoreContainerTrackItemImportItem::getStringValue(MLImportPropertyKey) const"];
    [v6 handleFailureInFunction:v5 file:@"ML3StoreContainerImportItem.mm" lineNumber:143 description:{@"ML3StoreContainerTrackItemImportItem::getStringValue called with unknown property key %x", a1}];
  }
}

void sub_22D5933FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  *v10 = v11;
  if (*(v10 + 39) < 0)
  {
    operator delete(*v13);
  }

  _Unwind_Resume(a1);
}

void ML3StoreContainerTrackItemImportItem::~ML3StoreContainerTrackItemImportItem(ML3StoreContainerTrackItemImportItem *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);

  JUMPOUT(0x2318CD250);
}

{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);
}

BOOL ML3StoreContainerImportItem::hasValue(id *this, uint64_t a2)
{
  if (a2 == 218103812)
  {
    v2 = [this[8] objectForKeyedSubscript:@"childrenIds"];
    v3 = [v2 count] != 0;

    return v3;
  }

  else
  {

    return ML3StoreImportItem::hasValue(this, a2);
  }
}

uint64_t ML3StoreContainerImportItem::getIntegerValue(ML3StoreContainerImportItem *this, uint64_t a2)
{
  if (a2 == 184549413)
  {
    return 2;
  }

  if (a2 == 184549395)
  {
    return *(this + 18) ^ 1;
  }

  return ML3StoreImportItem::getIntegerValue(this, a2);
}

void ML3StoreContainerImportItem::~ML3StoreContainerImportItem(id *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));

  JUMPOUT(0x2318CD250);
}

{

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

uint64_t __Block_byref_object_copy__29153(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ML3ArtworkOriginalArtworkDirectory()
{
  v0 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v1 = [v0 artworkDirectory];

  return v1;
}

id ML3ArtworkRootArtworkCacheDirectory()
{
  v0 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v1 = [v0 rootArtworkCacheDirectory];

  return v1;
}

id ML3ArtworkDirectory()
{
  v0 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v1 = [v0 artworkDirectory];

  return v1;
}

id ML3ArtworkArtworkCacheDirectoryForSize(double a1, double a2)
{
  v4 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v5 = [v4 artworkCacheDirectoryForSize:{a1, a2}];

  return v5;
}

id ML3ArtworkArtworkCacheDirectoryForEffect(void *a1)
{
  v1 = a1;
  v2 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v3 = [v2 artworkCacheDirectoryForEffect:v1];

  return v3;
}

uint64_t ML3ArtworkHasOriginalArtwork(void *a1)
{
  v1 = a1;
  v2 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v3 = [v2 hasOriginalArtworkForRelativePath:v1];

  return v3;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x28210F308](calendar, v3, at);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7910]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7930]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202960](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202968](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}