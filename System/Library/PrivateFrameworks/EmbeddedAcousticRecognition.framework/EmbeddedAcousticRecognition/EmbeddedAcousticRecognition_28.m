void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void std::__shared_ptr_emplace<quasar::VocabId>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D05F40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::VocabId::~VocabId(void **this)
{
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 72) == 1)
  {
    v2 = this[7];
    if (v2)
    {
      MEMORY[0x1B8C85310](v2, 0x1000C8077774924);
    }
  }

  v3 = this[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[1];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void std::__shared_ptr_emplace<std::map<std::string,std::vector<int>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D05F90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::QuasarTextProcImpl>::__shared_ptr_emplace[abi:ne200100]<std::vector<std::string> &,std::allocator<quasar::QuasarTextProcImpl>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D05FE0;
  quasar::QuasarTextProcImpl::QuasarTextProcImpl(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::QuasarTextProcImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D05FE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::vector<quasar::InverseTextNormalizer::RegexFeatInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 40;
        std::allocator<quasar::InverseTextNormalizer::RegexFeatInfo>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<quasar::InverseTextNormalizer::RegexFeatInfo>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a2 + 16);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

quasar::LabelTransformer *std::unique_ptr<quasar::LabelTransformer>::reset[abi:ne200100](quasar::LabelTransformer **a1, quasar::LabelTransformer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::LabelTransformer::~LabelTransformer(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void quasar::LabelTransformer::~LabelTransformer(quasar::LabelTransformer *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    operator delete(v2);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 184);
  kaldi::CuMatrix<float>::~CuMatrix(this + 128);
  v3 = *(this + 14);
  if (v3)
  {
    free(v3);
  }

  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  v4 = *(this + 12);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__hash_table<std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>>>::~__hash_table(this + 8);
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

quasar::PunctuationTransformer *std::unique_ptr<quasar::PunctuationTransformer>::reset[abi:ne200100](quasar::PunctuationTransformer **a1, quasar::PunctuationTransformer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::PunctuationTransformer::~PunctuationTransformer(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void quasar::PunctuationTransformer::~PunctuationTransformer(quasar::PunctuationTransformer *this)
{
  if (*(this + 487) < 0)
  {
    operator delete(*(this + 58));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 416);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 376);
  v2 = *(this + 45);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 312);
  v3 = *(this + 38);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 36);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__tree<std::string>::destroy(this + 256, *(this + 33));

  quasar::LabelTransformer::~LabelTransformer(this);
}

quasar::PunctuationTransformer *quasar::PunctuationTransformer::PunctuationTransformer(quasar::PunctuationTransformer *this)
{
  v12 = *MEMORY[0x1E69E9840];
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  quasar::SystemConfig::Version::Version((this + 48));
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  *(this + 16) = &unk_1F2D0EE38;
  *(this + 168) = 0;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 54) = 1065353216;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = this + 264;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  std::string::basic_string[abi:ne200100]<0>(__p, "Emoji");
  std::string::basic_string[abi:ne200100]<0>(v7, "emoji");
  std::string::basic_string[abi:ne200100]<0>(v8, "Emojis");
  std::string::basic_string[abi:ne200100]<0>(v9, "emojis");
  std::string::basic_string[abi:ne200100]<0>(v10, "Emoji's");
  std::string::basic_string[abi:ne200100]<0>(v11, "emoji's");
  std::unordered_set<std::string>::unordered_set(this + 312, __p, 6);
  for (i = 0; i != -144; i -= 24)
  {
    if (v11[i + 23] < 0)
    {
      operator delete(*&v11[i]);
    }
  }

  *(this + 44) = 0;
  *(this + 45) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, ".");
  std::unordered_set<std::string>::unordered_set(this + 376, __p, 1);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, ".");
  std::string::basic_string[abi:ne200100]<0>(v7, "?");
  std::unordered_set<std::string>::unordered_set(this + 416, __p, 2);
  for (j = 0; j != -48; j -= 24)
  {
    if (v7[j + 23] < 0)
    {
      operator delete(*&v7[j]);
    }
  }

  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 60) = 0;
  return this;
}

void sub_1B521DDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = (v16 + 47);
  v19 = -48;
  v20 = v18;
  while (1)
  {
    v21 = *v20;
    v20 -= 24;
    if (v21 < 0)
    {
      operator delete(*(v18 - 23));
    }

    v18 = v20;
    v19 += 24;
    if (!v19)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v15 + 376);
      v22 = *(v15 + 360);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v15 + 312);
      v23 = *(v15 + 304);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      v24 = *(v15 + 288);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      std::__tree<std::string>::destroy(v15 + 256, *(v15 + 264));
      quasar::LabelTransformer::~LabelTransformer(v15);
      _Unwind_Resume(a1);
    }
  }
}

void std::__shared_ptr_emplace<kaldi::quasar::PrefixTree<std::string,std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D06030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t *kaldi::quasar::PrefixTree<std::string,std::string>::~PrefixTree(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = kaldi::quasar::PrefixTree<std::string,std::string>::Node::~Node(v2);
    MEMORY[0x1B8C85350](v3, 0x10B2C4049158C6CLL);
  }

  return a1;
}

uint64_t kaldi::quasar::PrefixTree<std::string,std::string>::Node::~Node(uint64_t a1)
{
  for (i = a1; ; i = v3)
  {
    while (i[3])
    {
      i = *(i[2] + 40);
    }

    if (i == a1)
    {
      break;
    }

    v3 = i[8];
    std::__hash_table<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>>>::erase(v3, *(v3 + 16));
    v4 = kaldi::quasar::PrefixTree<std::string,std::string>::Node::~Node(i);
    MEMORY[0x1B8C85350](v4, 0x10B2C4049158C6CLL);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1);
}

uint64_t std::vector<quasar::InverseTextNormalizer::RegexFeatInfo>::__emplace_back_slow_path<quasar::InverseTextNormalizer::RegexFeatInfo>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::InverseTextNormalizer::RegexFeatInfo>>(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *&v16 = 40 * v2 + 40;
  v8 = a1[1];
  v9 = 40 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::InverseTextNormalizer::RegexFeatInfo>,quasar::InverseTextNormalizer::RegexFeatInfo*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<quasar::InverseTextNormalizer::RegexFeatInfo>::~__split_buffer(&v14);
  return v13;
}

void sub_1B521E190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::InverseTextNormalizer::RegexFeatInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::InverseTextNormalizer::RegexFeatInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::InverseTextNormalizer::RegexFeatInfo>,quasar::InverseTextNormalizer::RegexFeatInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
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
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 8) = *(v7 + 8);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      v7 += 40;
      a4 += 40;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator<quasar::InverseTextNormalizer::RegexFeatInfo>::destroy[abi:ne200100](a1, v5);
      v5 += 40;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::InverseTextNormalizer::RegexFeatInfo>,quasar::InverseTextNormalizer::RegexFeatInfo*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::InverseTextNormalizer::RegexFeatInfo>,quasar::InverseTextNormalizer::RegexFeatInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::InverseTextNormalizer::RegexFeatInfo>,quasar::InverseTextNormalizer::RegexFeatInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::InverseTextNormalizer::RegexFeatInfo>,quasar::InverseTextNormalizer::RegexFeatInfo*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 40;
      std::allocator<quasar::InverseTextNormalizer::RegexFeatInfo>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<quasar::InverseTextNormalizer::RegexFeatInfo>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::InverseTextNormalizer::RegexFeatInfo>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::InverseTextNormalizer::RegexFeatInfo>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 40;
    std::allocator<quasar::InverseTextNormalizer::RegexFeatInfo>::destroy[abi:ne200100](v4, i - 40);
  }
}

uint64_t *std::__tree<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D06080;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(**v9 + 32))();
  *(a1 + 168) = (*(***(a1 + 152) + 32))(**(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(***(a1 + 144) + 40))(**(a1 + 144), v11);
  v14 = (*(***(a1 + 152) + 40))(**(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void sub_1B521E780(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    v8 = a1[20];
    v7 = a1[21];
    v9 = a1[19];
    v10 = a1;
    v11 = a2;
    v12 = v6;
    v13 = v5;
    v14 = 1;
  }

  else
  {
    v7 = a1[20];
    v8 = a1[21];
    v9 = a1[18];
    v10 = a1;
    v11 = a2;
    v12 = v5;
    v13 = v6;
    v14 = 0;
  }

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(v10, v11, v7, v12, v8, v13, v9, v14);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

float fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 12 * a2);
  v4 = (*(***(a1 + 144) + 96))(**(a1 + 144), *v3);
  v5 = v4;
  if (v4 == INFINITY)
  {
    return v4;
  }

  v7 = (*(***(a1 + 152) + 96))(**(a1 + 152), v3[1]);
  if (v7 == INFINITY)
  {
    return INFINITY;
  }

  v6 = NAN;
  if (v5 != -INFINITY && v7 != -INFINITY)
  {
    v6 = INFINITY;
    v8 = v7 == INFINITY || v5 == INFINITY;
    v9 = v5 + v7;
    if (!v8)
    {
      return v9;
    }
  }

  return v6;
}

void *fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::NullComposeFilter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  a1[1] = a5;
  a1[2] = (*(**a4 + 32))();
  a1[3] = (*(**a1[1] + 32))(*a1[1]);
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D06080;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~SequenceComposeFilter(v2);
    MEMORY[0x1B8C85350](v3, 0x60C40FFD3A10ELL);
  }

  v4 = a1[22];
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      *(v4 + 88) = v5;
      operator delete(v5);
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 + 24);
    MEMORY[0x1B8C85350](v4, 0x10E0C406D28CB5CLL);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B521F028(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  v7 = (*(***(a1 + 144) + 104))(**(a1 + 144));
  v8 = (*(***(a1 + 152) + 104))(**(a1 + 152), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v15, __p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  if (v7 == -1)
  {
    return 0;
  }

  return v8 == -1 || v7 <= v8;
}

void sub_1B521F288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  (*(**a7 + 56))(*a7, a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a7, v14, a8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B521F4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, int a2, void *a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      do
      {
        v12 = *(*(**a3 + 80))();
        v18 = *a4;
        v19 = v12;
        if (a5)
        {
          if (DWORD1(v18) == -1)
          {
            goto LABEL_19;
          }

          v13 = v19 == -1 ? -1 : 0;
          v17 = v13;
          if (v19 == -1)
          {
            goto LABEL_19;
          }

          v14 = &v18;
          v15 = &v19;
        }

        else
        {
          if (DWORD1(v19) == -1)
          {
            goto LABEL_19;
          }

          v16 = v18 == -1 ? -1 : 0;
          v17 = v16;
          if (v18 == -1)
          {
            goto LABEL_19;
          }

          v14 = &v19;
          v15 = &v18;
        }

        fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v14, v15, &v17);
LABEL_19:
        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D060F8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Copy();
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    (*(***(result + 32) + 56))(**(result + 32), *v3);
    result = (*(***(v2 + 40) + 56))(**(v2 + 40), v4);
    *(v2 + 64) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 32;
  if (*(a1 + 28))
  {
    v3 = 32;
  }

  else
  {
    v3 = 40;
  }

  if (*(a1 + 28))
  {
    v2 = 40;
  }

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, *(a1 + v2), *(a1 + v3));
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else
  {
    if (*(result + 28))
    {
      v2 = *(result + 32);
      v1 = *(result + 40);
    }

    else
    {
      v1 = *(result + 32);
      v2 = *(result + 40);
    }

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D060F8;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D060F8;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Copy();
}

void sub_1B521FE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = (*(**a3 + 64))();
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = (*(**a3 + 80))();
    (*(**a4 + 64))(*a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, void *a3)
{
  while (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = *(a1 + 28) == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (((*(**a3 + 72))() & 1) == 0)
    {
      v8 = (*(**a2 + 80))();
      v9 = (*(**a3 + 80))();
      (*(**a3 + 88))();
      v10 = *(a1 + 28);
      v11 = v10 == 0;
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      v13 = *v12;
      v14 = v12[1];
      if (v11)
      {
        v15 = v9;
      }

      else
      {
        v15 = v8;
      }

      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, *(a1 + 24), v13, v14, *v15, v15[1]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a3 >= 0xFFFFFFFF00000000 || a5 == -1;
  v7 = !v6;
  if (!v6)
  {
    v8 = *(a1 + 16);
    v12 = __PAIR64__(HIDWORD(a6), HIDWORD(a4));
    v13 = 0;
    *(a1 + 68) = a3;
    *(a1 + 72) = HIDWORD(a5);
    v9 = NAN;
    if (*&a4 != -INFINITY && *&a6 != -INFINITY)
    {
      v9 = INFINITY;
      if (*&a6 != INFINITY && *&a4 != INFINITY)
      {
        v9 = *&a4 + *&a6;
      }
    }

    *(a1 + 76) = v9;
    *(a1 + 80) = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(v8 + 176), &v12, 1);
  }

  return v7;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D06190;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(**v9 + 32))();
  *(a1 + 168) = (*(***(a1 + 152) + 32))(**(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(***(a1 + 144) + 40))(**(a1 + 144), v11);
  v14 = (*(***(a1 + 152) + 40))(**(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void sub_1B52205EC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v17 = *(v4 + 8);
  fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v17);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    v9 = a1[20];
    v8 = a1[21];
    v10 = a1[19];
    v11 = a1;
    v12 = a2;
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

  else
  {
    v8 = a1[20];
    v9 = a1[21];
    v10 = a1[18];
    v11 = a1;
    v12 = a2;
    v13 = v5;
    v14 = v6;
    v15 = 0;
  }

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 12 * a2);
  v4 = *v3;
  v5 = (*(***(a1 + 144) + 96))(**(a1 + 144), *v3);
  v8 = v5;
  if (v5 != INFINITY)
  {
    v6 = v3[1];
    v8 = (*(***(a1 + 152) + 96))(**(a1 + 152), v6);
    if (v8 != INFINITY)
    {
      v7 = *(a1 + 136);
      LOBYTE(v8) = *(v3 + 8);
      fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(v7, v4, v6, &v8);
    }
  }
}

uint64_t fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AltSequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(**a5 + 32))();
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D06190;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~SequenceComposeFilter(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C40AD892F49);
  }

  v4 = a1[22];
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      *(v4 + 88) = v5;
      operator delete(v5);
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 + 24);
    MEMORY[0x1B8C85350](v4, 0x10E0C406D28CB5CLL);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B5220EAC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  v7 = (*(***(a1 + 144) + 104))(**(a1 + 144));
  v8 = (*(***(a1 + 152) + 104))(**(a1 + 152), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v15, __p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  if (v7 == -1)
  {
    return 0;
  }

  return v8 == -1 || v7 <= v8;
}

void sub_1B52210E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  (*(**a7 + 56))(*a7, a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a7, v14, a8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5221310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, int a2, void *a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      do
      {
        v12 = *(*(**a3 + 80))();
        v26 = *a4;
        v27 = v12;
        if (a5)
        {
          v13 = *(a1 + 136);
          if (v27 == -1)
          {
            if ((v13[33] & 1) == 0)
            {
              v14 = (v13[34] & 1) == 0;
LABEL_16:
              v25 = v14;
LABEL_24:
              v20 = &v26;
              v21 = &v27;
              goto LABEL_30;
            }
          }

          else
          {
            if (DWORD1(v26) == -1)
            {
              v17 = v13[32];
              v18 = v17 == 1;
              if (v17 == 1)
              {
                v19 = -1;
              }

              else
              {
                v19 = 0;
              }

              v25 = v19;
              if (v18)
              {
                goto LABEL_31;
              }

              goto LABEL_24;
            }

            if (DWORD1(v26))
            {
              v14 = 0;
              goto LABEL_16;
            }
          }
        }

        else
        {
          v15 = *(a1 + 136);
          if (v26 == -1)
          {
            if ((v15[33] & 1) == 0)
            {
              v16 = (v15[34] & 1) == 0;
LABEL_19:
              v25 = v16;
LABEL_29:
              v20 = &v27;
              v21 = &v26;
LABEL_30:
              fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v20, v21, &v25);
            }
          }

          else
          {
            if (DWORD1(v27) == -1)
            {
              v22 = v15[32];
              v23 = v22 == 1;
              if (v22 == 1)
              {
                v24 = -1;
              }

              else
              {
                v24 = 0;
              }

              v25 = v24;
              if (v23)
              {
                goto LABEL_31;
              }

              goto LABEL_29;
            }

            if (DWORD1(v27))
            {
              v16 = 0;
              goto LABEL_19;
            }
          }
        }

LABEL_31:
        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D06208;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Copy();
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    (*(***(result + 32) + 56))(**(result + 32), *v3);
    result = (*(***(v2 + 40) + 56))(**(v2 + 40), v4);
    *(v2 + 64) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 32;
  if (*(a1 + 28))
  {
    v3 = 32;
  }

  else
  {
    v3 = 40;
  }

  if (*(a1 + 28))
  {
    v2 = 40;
  }

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, *(a1 + v2), *(a1 + v3));
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else
  {
    if (*(result + 28))
    {
      v2 = *(result + 32);
      v1 = *(result + 40);
    }

    else
    {
      v1 = *(result + 32);
      v2 = *(result + 40);
    }

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D06208;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D06208;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Copy();
}

void sub_1B5221D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = (*(**a3 + 64))();
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = (*(**a3 + 80))();
    (*(**a4 + 64))(*a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, void *a3)
{
  while (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = *(a1 + 28) == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (((*(**a3 + 72))() & 1) == 0)
    {
      v8 = (*(**a2 + 80))();
      v9 = (*(**a3 + 80))();
      (*(**a3 + 88))();
      v10 = *(a1 + 28);
      v11 = v10 == 0;
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      v13 = *v12;
      v14 = v12[1];
      if (v11)
      {
        v15 = v9;
      }

      else
      {
        v15 = v8;
      }

      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, *(a1 + 24), v13, v14, *v15, v15[1]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  v7 = *(v6 + 136);
  if (a5 == -1)
  {
    if ((v7[33] & 1) == 0)
    {
      v8 = (v7[34] & 1) == 0;
      goto LABEL_9;
    }

    return 0;
  }

  if (!HIDWORD(a3) || HIDWORD(a3) == -1 && v7[32] == 1)
  {
    return 0;
  }

  v8 = 0;
LABEL_9:
  v13 = __PAIR64__(HIDWORD(a6), HIDWORD(a4));
  v14 = v8;
  *(a1 + 68) = a3;
  *(a1 + 72) = HIDWORD(a5);
  v10 = NAN;
  if (*&a4 != -INFINITY && *&a6 != -INFINITY)
  {
    v10 = INFINITY;
    if (*&a6 != INFINITY && *&a4 != INFINITY)
    {
      v10 = *&a4 + *&a6;
    }
  }

  *(a1 + 76) = v10;
  v9 = 1;
  *(a1 + 80) = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(v6 + 176), &v13, 1);
  return v9;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D062A0;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(**v9 + 32))();
  *(a1 + 168) = (*(***(a1 + 152) + 32))(**(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(***(a1 + 144) + 40))(**(a1 + 144), v11);
  v14 = (*(***(a1 + 152) + 40))(**(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void sub_1B52224EC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v17 = *(v4 + 8);
  fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v17);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    v9 = a1[20];
    v8 = a1[21];
    v10 = a1[19];
    v11 = a1;
    v12 = a2;
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

  else
  {
    v8 = a1[20];
    v9 = a1[21];
    v10 = a1[18];
    v11 = a1;
    v12 = a2;
    v13 = v5;
    v14 = v6;
    v15 = 0;
  }

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 12 * a2);
  v4 = *v3;
  v7 = (*(***(a1 + 144) + 96))(**(a1 + 144), v4);
  if (v7 != INFINITY)
  {
    v5 = v3[1];
    v7 = (*(***(a1 + 152) + 96))(**(a1 + 152), v5);
    if (v7 != INFINITY)
    {
      v6 = *(a1 + 136);
      LOBYTE(v7) = *(v3 + 8);
      fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(v6, v4, v5, &v7);
    }
  }
}

uint64_t fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MatchComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(**a4 + 32))();
  *(a1 + 24) = (*(***(a1 + 8) + 32))(**(a1 + 8));
  *(a1 + 32) = -1;
  *(a1 + 40) = -1;
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D062A0;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~SequenceComposeFilter(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C4035244DBALL);
  }

  v4 = a1[22];
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      *(v4 + 88) = v5;
      operator delete(v5);
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 + 24);
    MEMORY[0x1B8C85350](v4, 0x10E0C406D28CB5CLL);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B5222DE4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 32) != a2 || *(a1 + 36) != a3 || *a4 != *(a1 + 40))
  {
    *(a1 + 32) = a2;
    *(a1 + 36) = a3;
    *(a1 + 40) = *a4;
    v7 = (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
    v8 = (*(**(a1 + 16) + 56))(*(a1 + 16), a2);
    v10 = (*(**(a1 + 16) + 32))(*(a1 + 16), a2) == INFINITY && v7 == v8;
    *(a1 + 41) = v10;
    *(a1 + 43) = v8 == 0;
    v11 = (*(**(a1 + 24) + 40))(*(a1 + 24), a3);
    v12 = (*(**(a1 + 24) + 48))(*(a1 + 24), a3);
    v14 = (*(**(a1 + 24) + 32))(*(a1 + 24), a3) == INFINITY && v11 == v12;
    *(a1 + 42) = v14;
    *(a1 + 44) = v12 == 0;
  }
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  v7 = (*(***(a1 + 144) + 104))(**(a1 + 144));
  v8 = (*(***(a1 + 152) + 104))(**(a1 + 152), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v15, __p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  if (v7 == -1)
  {
    return 0;
  }

  return v8 == -1 || v7 <= v8;
}

void sub_1B5223234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  (*(**a7 + 56))(*a7, a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a7, v14, a8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5223464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, int a2, void *a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      do
      {
        v12 = *(*(**a3 + 80))();
        v16 = *a4;
        v17 = v12;
        if (a5)
        {
          v15 = fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FilterArc(*(a1 + 136), &v16, &v17);
          if (v15 != -1)
          {
            v13 = &v16;
            v14 = &v17;
LABEL_10:
            fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v13, v14, &v15);
          }
        }

        else
        {
          v15 = fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FilterArc(*(a1 + 136), &v17, &v16);
          if (v15 != -1)
          {
            v13 = &v17;
            v14 = &v16;
            goto LABEL_10;
          }
        }

        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

uint64_t fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FilterArc(unsigned __int8 *a1, uint64_t a2, _DWORD *a3)
{
  if (*a3 == -1)
  {
    result = a1[40];
    if (result == 1)
    {
      return result;
    }

    if (result)
    {
      return 255;
    }

    if (a1[44])
    {
      return 0;
    }

    if (a1[42])
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v4 = *(a2 + 4);
    if (v4)
    {
      if (v4 != -1)
      {
        return 0;
      }

      result = a1[40];
      if (result == 2)
      {
        return result;
      }

      if (!result)
      {
        if ((a1[43] & 1) == 0)
        {
          if (a1[41])
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return 2;
          }
        }

        return 0;
      }

      return 255;
    }

    if (a1[40])
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D06318;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Copy();
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    (*(***(result + 32) + 56))(**(result + 32), *v3);
    result = (*(***(v2 + 40) + 56))(**(v2 + 40), v4);
    *(v2 + 64) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 32;
  if (*(a1 + 28))
  {
    v3 = 32;
  }

  else
  {
    v3 = 40;
  }

  if (*(a1 + 28))
  {
    v2 = 40;
  }

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, *(a1 + v2), *(a1 + v3));
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else
  {
    if (*(result + 28))
    {
      v2 = *(result + 32);
      v1 = *(result + 40);
    }

    else
    {
      v1 = *(result + 32);
      v2 = *(result + 40);
    }

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D06318;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D06318;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Copy();
}

void sub_1B5223EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = (*(**a3 + 64))();
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = (*(**a3 + 80))();
    (*(**a4 + 64))(*a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, void *a3)
{
  while (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = *(a1 + 28) == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (((*(**a3 + 72))() & 1) == 0)
    {
      v8 = (*(**a2 + 80))();
      v9 = (*(**a3 + 80))();
      (*(**a3 + 88))();
      v10 = *(a1 + 28);
      v11 = v10 == 0;
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      v13 = *v12;
      v14 = v12[1];
      if (v11)
      {
        v15 = v9;
      }

      else
      {
        v15 = v8;
      }

      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, *(a1 + 24), v13, v14, *v15, v15[1]))
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a3;
  v18 = a4;
  v15 = a5;
  v16 = a6;
  v7 = fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FilterArc(*(*(a1 + 16) + 136), &v17, &v15);
  v8 = v7;
  if (v7 != -1)
  {
    v9 = HIDWORD(v15);
    v13 = __PAIR64__(HIDWORD(v16), HIDWORD(v18));
    v14 = v7;
    *(a1 + 68) = v17;
    *(a1 + 72) = v9;
    v10 = NAN;
    if (*&v18 != -INFINITY)
    {
      v10 = NAN;
      if (*&v16 != -INFINITY)
      {
        v10 = INFINITY;
        if (*&v16 != INFINITY && *&v18 != INFINITY)
        {
          v10 = *&v18 + *&v16;
        }
      }
    }

    *(a1 + 76) = v10;
    *(a1 + 80) = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(*(a1 + 16) + 176), &v13, 1);
  }

  return ~v8 != 0;
}

std::string *std::vector<quasar::Token>::__append(std::string *result, unint64_t a2, quasar::Token *a3)
{
  v5 = result;
  size = result->__r_.__value_.__l.__size_;
  v6 = result->__r_.__value_.__r.__words[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - size) >> 5) >= a2)
  {
    if (a2)
    {
      v12 = (size + 224 * a2);
      v13 = 224 * a2;
      do
      {
        result = quasar::Token::Token(size, a3);
        size = (size + 224);
        v13 -= 224;
      }

      while (v13);
      size = v12;
    }

    v5->__r_.__value_.__l.__size_ = size;
  }

  else
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((size - result->__r_.__value_.__r.__words[0]) >> 5);
    if (v8 + a2 > 0x124924924924924)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v6 - result->__r_.__value_.__r.__words[0]) >> 5);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + a2)
    {
      v10 = v8 + a2;
    }

    if (v9 >= 0x92492492492492)
    {
      v11 = 0x124924924924924;
    }

    else
    {
      v11 = v10;
    }

    v24 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(result, v11);
    }

    v14 = 224 * v8;
    v21 = 0;
    v22 = v14;
    v23 = v14;
    v15 = 224 * a2;
    v16 = (v14 + 224 * a2);
    do
    {
      quasar::Token::Token(v14, a3);
      v14 += 224;
      v15 -= 224;
    }

    while (v15);
    *&v23 = v16;
    v17 = v5->__r_.__value_.__l.__size_;
    v18 = v22 + v5->__r_.__value_.__r.__words[0] - v17;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(v5, v5->__r_.__value_.__l.__data_, v17, v18);
    v19 = v5->__r_.__value_.__r.__words[0];
    v5->__r_.__value_.__r.__words[0] = v18;
    v20 = v5->__r_.__value_.__r.__words[2];
    *&v5->__r_.__value_.__r.__words[1] = v23;
    *&v23 = v19;
    *(&v23 + 1) = v20;
    v21 = v19;
    v22 = v19;
    return std::__split_buffer<quasar::Token>::~__split_buffer(&v21);
  }

  return result;
}

void sub_1B5224510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteStates(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(a1);
  result = (*(*a1 + 24))(a1);
  a1[1] = (*(a1 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

void **std::vector<std::shared_ptr<quasar::CommandTransform>>::__append(void **result, unint64_t a2, void *a3)
{
  v4 = result;
  v5 = result[1];
  v6 = result[2];
  if (a2 <= (v6 - v5) >> 4)
  {
    if (a2)
    {
      v12 = &v5[2 * a2];
      do
      {
        v13 = a3[1];
        *v5 = *a3;
        v5[1] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v5 += 2;
      }

      while (v5 != v12);
      v5 = v12;
    }

    result[1] = v5;
  }

  else
  {
    v7 = v5 - *result;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 4;
    v10 = v6 - *result;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    v24 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>(result, v11);
    }

    v14 = 16 * v9;
    v23 = 0;
    v15 = 16 * v9 + 16 * a2;
    v16 = (16 * v9);
    do
    {
      v17 = a3[1];
      *v16 = *a3;
      v16[1] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v16 += 2;
    }

    while (v16 != v15);
    v18 = result[1] - *result;
    v19 = v14 - v18;
    memcpy((v14 - v18), *result, v18);
    v20 = *v4;
    *v4 = v19;
    v4[1] = v15;
    v21 = v4[2];
    v4[2] = v23;
    v22[2] = v20;
    v23 = v21;
    v22[0] = v20;
    v22[1] = v20;
    return std::__split_buffer<std::shared_ptr<quasar::FeatureExtractor>>::~__split_buffer(v22);
  }

  return result;
}

void *std::vector<quasar::Token>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<quasar::Token>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

std::basic_string<char32_t> *__cdecl std::basic_string<char32_t>::basic_string(std::basic_string<char32_t> *this, const std::basic_string<char32_t> *__str, std::basic_string<char32_t>::size_type __pos, std::basic_string<char32_t>::size_type __n, std::allocator<char32_t> *__a)
{
  v5 = __str;
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __pos)
    {
      goto LABEL_19;
    }

    v5 = __str->__r_.__value_.__r.__words[0];
  }

  else if (size < __pos)
  {
LABEL_19:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v8 = size - __pos;
  if (v8 >= __n)
  {
    v9 = __n;
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 5)
  {
    if ((v9 | 1) == 5)
    {
      v11 = 7;
    }

    else
    {
      v11 = (v9 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v11);
  }

  *(&this->__r_.__value_.__s + 23) = v9;
  if (v9)
  {
    memmove(this, v5 + 4 * __pos, 4 * v9);
  }

  this->__r_.__value_.__s.__data_[v9] = 0;
  return this;
}

uint64_t std::vector<quasar::Token>::__emplace_back_slow_path<std::string,int,int,int,int,BOOL,BOOL &>(uint64_t a1, uint64_t a2, int *a3, int *a4, int *a5, int *a6, std::string::value_type *a7, std::string::value_type *a8)
{
  v8 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5);
  v9 = v8 + 1;
  if ((v8 + 1) > 0x124924924924924)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5) > v9)
  {
    v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
  {
    v12 = 0x124924924924924;
  }

  else
  {
    v12 = v9;
  }

  v22 = a1;
  if (v12)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v12);
  }

  v19 = 0;
  v20 = 224 * v8;
  std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string,int,int,int,int,BOOL,BOOL &>(a1, (224 * v8), a2, a3, a4, a5, a6, a7, a8);
  v21 = (224 * v8 + 224);
  v13 = *(a1 + 8);
  v14 = 224 * v8 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<quasar::Token>::~__split_buffer(&v19);
  return v18;
}

void sub_1B52249DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string,int,int,int,int,BOOL,BOOL &>(uint64_t a1, std::string *a2, uint64_t a3, int *a4, int *a5, int *a6, int *a7, std::string::value_type *a8, std::string::value_type *a9)
{
  v23 = *a3;
  v24 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  v13 = *a7;
  v14 = *a8;
  v15 = *a9;
  std::string::basic_string[abi:ne200100]<0>(v21, "");
  std::string::basic_string[abi:ne200100]<0>(v19, "");
  memset(v18, 0, sizeof(v18));
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::Token::Token(a2, &v23, v10, v11, v12, v14, v15, v21, v13, v19, v18, 0, __p, 0, 0, 0);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v18;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }
}

void sub_1B5224B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = &a21;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token&>(uint64_t a1, const quasar::Token *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v6);
  }

  v13 = 0;
  v14 = 224 * v2;
  quasar::Token::Token((224 * v2), a2);
  v15 = (224 * v2 + 224);
  v7 = *(a1 + 8);
  v8 = 224 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::Token>::~__split_buffer(&v13);
  return v12;
}

void sub_1B5224CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::Token>::__emplace_back_slow_path<std::string,int,int,int,int,BOOL &,BOOL>(uint64_t a1, uint64_t a2, int *a3, int *a4, int *a5, int *a6, std::string::value_type *a7, std::string::value_type *a8)
{
  v8 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5);
  v9 = v8 + 1;
  if ((v8 + 1) > 0x124924924924924)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5) > v9)
  {
    v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
  {
    v12 = 0x124924924924924;
  }

  else
  {
    v12 = v9;
  }

  v22 = a1;
  if (v12)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v12);
  }

  v19 = 0;
  v20 = 224 * v8;
  std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string,int,int,int,int,BOOL &,BOOL>(a1, (224 * v8), a2, a3, a4, a5, a6, a7, a8);
  v21 = (224 * v8 + 224);
  v13 = *(a1 + 8);
  v14 = 224 * v8 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<quasar::Token>::~__split_buffer(&v19);
  return v18;
}

void sub_1B5224E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string,int,int,int,int,BOOL &,BOOL>(uint64_t a1, std::string *a2, uint64_t a3, int *a4, int *a5, int *a6, int *a7, std::string::value_type *a8, std::string::value_type *a9)
{
  v23 = *a3;
  v24 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  v13 = *a7;
  v14 = *a8;
  v15 = *a9;
  std::string::basic_string[abi:ne200100]<0>(v21, "");
  std::string::basic_string[abi:ne200100]<0>(v19, "");
  memset(v18, 0, sizeof(v18));
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::Token::Token(a2, &v23, v10, v11, v12, v14, v15, v21, v13, v19, v18, 0, __p, 0, 0, 0);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v18;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }
}

void sub_1B5224FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = &a21;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(a1);
}

void std::basic_string<char32_t>::__erase_external_with_move(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __pos, std::basic_string<char32_t>::size_type __n)
{
  if (__n)
  {
    v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    size = v4;
    v6 = this;
    if ((v4 & 0x8000000000000000) != 0)
    {
      v6 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
    }

    if (size - __pos >= __n)
    {
      v7 = __n;
    }

    else
    {
      v7 = size - __pos;
    }

    if (size - __pos > __n)
    {
      memmove(v6 + 4 * __pos, v6 + 4 * __pos + 4 * v7, 4 * (size - __pos - v7));
      LOBYTE(v4) = *(&this->__r_.__value_.__s + 23);
    }

    v8 = size - v7;
    if ((v4 & 0x80) != 0)
    {
      this->__r_.__value_.__l.__size_ = v8;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v8 & 0x7F;
    }

    v6->__r_.__value_.__s.__data_[v8] = 0;
  }
}

void std::__shared_ptr_emplace<std::vector<quasar::PreTokenToPostTokenItnMap>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D063B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<std::vector<quasar::PreTokenToPostTokenItnMap>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::vector<quasar::PreTokenToPostTokenItnMap>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void kaldi::CuSubMatrix<double>::~CuSubMatrix(uint64_t a1)
{
  *a1 = &unk_1F2D06400;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D06400;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

void kaldi::CuSubMatrix<double>::Read()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Function not implemented for this class");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void quasar::WlatArcFeatureExtractor::runArcFeatureExtraction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  while (v6 != v7)
  {
    v8 = *v6++;
    kaldi::CuVector<float>::Resize(v8 + 296, a2, 1);
  }

  v9 = *a3;
  v10 = *(a3 + 8);
  if (*a3 == v10)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      (*(**v9 + 24))(*v9, a1, v11);
      v12 = *v9;
      v9 += 2;
      v11 = (*(*v12 + 16))(v12) + v11;
    }

    while (v9 != v10);
  }

  if (v11 != a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "column == arcFeatDims");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }
}

float quasar::WlatArcFeAcousticCost::Run(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  for (i = *(a2 + 48); v3 != i; *(*(v5 + 304) + 4 * a3) = result)
  {
    v5 = *v3++;
    result = *(v5 + 16);
  }

  return result;
}

uint64_t quasar::WlatArcFeKeyword::Run(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v3 != v4)
  {
    v5 = *(result + 8);
    v6 = *(result + 16);
    do
    {
      v7 = *(*v3 + 256);
      v8 = v6;
      if (v7 == v7)
      {
        v8 = v5;
        if (v5 != v6)
        {
          v8 = v5;
          while (*v8 != v7)
          {
            if (++v8 == v6)
            {
              v8 = v6;
              break;
            }
          }
        }
      }

      if (v8 == v6)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      *(*(*v3 + 304) + 4 * a3) = v9;
      v3 += 8;
    }

    while (v3 != v4);
  }

  return result;
}

float quasar::WlatArcFeGraphCost::Run(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  for (i = *(a2 + 48); v3 != i; *(*(v5 + 304) + 4 * a3) = result)
  {
    v5 = *v3++;
    result = *(v5 + 40);
  }

  return result;
}

float quasar::WlatArcFeNumFrames::Run(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  for (i = *(a2 + 48); v3 != i; *(*(v5 + 304) + 4 * a3) = result)
  {
    v5 = *v3++;
    result = *(v5 + 72);
  }

  return result;
}

float quasar::WlatArcFeLogPosterior::Run(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  for (i = *(a2 + 48); v3 != i; *(*(v5 + 304) + 4 * a3) = result)
  {
    v5 = *v3++;
    result = *(v5 + 56);
  }

  return result;
}

float quasar::WlatArcFeLinPosterior::Run(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v3 != v4)
  {
    v5 = a3;
    do
    {
      v6 = *v3++;
      result = exp(*(v6 + 56));
      *(*(v6 + 304) + 4 * v5) = result;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t quasar::WlatArcFeBagOfPhones::Run(quasar::WlatArcFeBagOfPhones *this, const kaldi::WordHypLattice *a2, int a3)
{
  v5 = (*(a2 + 6) - *(a2 + 5)) >> 3;
  v6 = kaldi::nnet1::Nnet::InputDim((this + 8));
  kaldi::CuMatrix<float>::CuMatrix(v32, v5, v6, 0, 0, 0);
  v7 = v5 & 0x7FFFFFFF;
  if (v5 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a2 + 5) + 8 * v8);
      v11 = *(v9 + 104);
      v10 = *(v9 + 112);
      while (v11 != v10)
      {
        LODWORD(v20) = *v11;
        v28[0] = &v20;
        v12 = std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 384, &v20);
        *(*&v32[1] + 4 * v33 * v8 + 4 * *(v12 + 8)) = 1065353216;
        ++v11;
      }

      ++v8;
    }

    while (v8 != v7);
  }

  v13 = kaldi::nnet1::Nnet::OutputDim((this + 8));
  v14 = v13;
  kaldi::CuMatrix<float>::CuMatrix(v28, v5, v13, 1, 0, 0);
  kaldi::nnet1::Nnet::Feedforward(this + 1, v32, v28, 0xFFFFFFFF, 0);
  if (v5 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = *(*(a2 + 5) + 8 * v15);
      v17 = *(v16 + 304) + 4 * a3;
      v27[0] = &unk_1F2CFCA48;
      v27[1] = v17;
      v27[3] = *(v16 + 320);
      v27[2] = v14 + a3;
      *(&v21 + 1) = v14 | 0x100000000;
      LODWORD(v22) = v29;
      DWORD1(v22) = v30 - v29 * v15;
      *(&v22 + 1) = v31;
      v23 = &unk_1F2CFCA48;
      v20 = &unk_1F2CFA908;
      *&v21 = *&v28[1] + 4 * v29 * v15;
      v26 = 0;
      v24 = v21;
      v25 = v14;
      kaldi::CuVectorBase<float>::CopyFromVec(v27, &v23);
      ++v15;
      v23 = &unk_1F2CFCA48;
      v24 = 0;
      LODWORD(v25) = 0;
      v26 = 0;
      v20 = &unk_1F2CFA908;
      v21 = 0u;
      v22 = 0u;
      quasar::Bitmap::~Bitmap(&v20);
    }

    while (v7 != v15);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v28);
  return kaldi::CuMatrix<float>::~CuMatrix(v32);
}

void sub_1B522584C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(v16 - 136);
  _Unwind_Resume(a1);
}

void *quasar::WlatArcFeWordEmbedding::WlatArcFeWordEmbedding(void *result, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v3 = a2[1];
  *result = &unk_1F2D06478;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  result[3] = *a3;
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void quasar::WlatArcFeWordEmbedding::Run(quasar::WlatArcFeWordEmbedding *this, const kaldi::WordHypLattice *a2, int a3)
{
  v3 = *(a2 + 5);
  v4 = *(a2 + 6);
  if (v3 != v4)
  {
    v6 = a3;
    do
    {
      v7 = *v3;
      if ((*(*v3 + 488) & 1) == 0)
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
        v27 = 0u;
        memset(v26, 0, sizeof(v26));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v26, "Coding error. norm_word not found for arc");
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v26);
      }

      v8 = (v7 + 464);
      marisa::Agent::Agent(v26);
      if (*(v7 + 487) < 0)
      {
        v8 = *v8;
      }

      marisa::Agent::set_query(v26, v8);
      if (marisa::Trie::lookup(*(this + 1), v26))
      {
        v9 = DWORD1(v27);
        v10 = (*(*this + 16))(this);
        v11 = *(v7 + 304) + 4 * v6;
        v22 = &unk_1F2CFCA48;
        v23 = v11;
        v24 = v10;
        v25 = *(v7 + 320);
        v12 = *(this + 3);
        v13 = *v12;
        v14 = *(v12 + 16);
        v15 = kaldi::MatrixBase<float>::NumCols(v12);
        v20 = 0;
        v21 = 0;
        v18 = v13 + 4 * v14 * v9;
        v19 = v15;
        kaldi::CuVectorBase<float>::CopyFromVec<float>(&v22, &v18);
      }

      else
      {
        v16 = (*(*this + 16))(this);
        v17 = *(v7 + 304) + 4 * v6;
        v22 = &unk_1F2CFCA48;
        v23 = v17;
        v24 = v16;
        v25 = *(v7 + 320);
        kaldi::CuVectorBase<float>::SetZero(&v22);
      }

      marisa::Agent::~Agent(v26);
      ++v3;
    }

    while (v3 != v4);
  }
}

void sub_1B5225AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  marisa::Agent::~Agent(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::WlatArcFeWordEmbedding::Dim(quasar::WlatArcFeWordEmbedding *this)
{
  if (!kaldi::MatrixBase<float>::NumCols(*(this + 3)))
  {
    memset(v4, 0, sizeof(v4));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Coding error. wordEmbMat not loaded.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v4);
  }

  v2 = *(this + 3);

  return kaldi::MatrixBase<float>::NumCols(v2);
}

void quasar::WlatArcFeIsLme::Run(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  for (i = *(a2 + 48); v3 != i; *(*(v5 + 304) + 4 * a3) = v7)
  {
    v6 = *v3++;
    v5 = v6;
    if (*(v6 + 256) <= 499999999)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }
  }
}

void quasar::WlatArcFeLmeId::Run(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  for (i = *(a2 + 48); v3 != i; *(*(v5 + 304) + 4 * a3) = v8)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *(v6 + 256);
    v8 = (v7 - 999999999);
    if (v7 <= 999999999)
    {
      v8 = 0.0;
    }
  }
}

BOOL quasar::WlatArcFeIsSil::Run(_BOOL8 this, const kaldi::WordHypLattice *a2, int a3)
{
  v3 = *(a2 + 5);
  v4 = *(a2 + 6);
  if (v3 != v4)
  {
    v5 = this;
    v6 = a3;
    do
    {
      v7 = *v3;
      v8 = *(*v3 + 104);
      v9 = 0.0;
      if (*(*v3 + 112) - v8 == 4)
      {
        this = kaldi::SilencePhoneSet::isSilencePhone(*(v5 + 8), *v8);
        if (this)
        {
          v9 = 1.0;
        }

        else
        {
          v9 = 0.0;
        }
      }

      *(*(v7 + 304) + 4 * v6) = v9;
      ++v3;
    }

    while (v3 != v4);
  }

  return this;
}

float quasar::WlatArcFeNumPhones::Run(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  for (i = *(a2 + 48); v3 != i; *(v5[38] + 4 * a3) = result)
  {
    v5 = *v3++;
    result = ((v5[14] - v5[13]) >> 2);
  }

  return result;
}

float quasar::WlatArcFeAcousticCostUnpushed::Run(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  for (i = *(a2 + 48); v3 != i; *(*(v5 + 304) + 4 * a3) = result)
  {
    v5 = *v3++;
    result = *(v5 + 24);
  }

  return result;
}

__n128 quasar::WlatArcFeInBestPath::Run(__n128 result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 40);
  for (i = *(a3 + 48); v4 != i; *(*(v6 + 304) + 4 * a4) = result.n128_u32[0])
  {
    v6 = *v4++;
    result.n128_u8[0] = *(v6 + 49);
    result.n128_f32[0] = result.n128_u32[0];
  }

  return result;
}

void quasar::WlatArcFeScalar::Run(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v3 != v4)
  {
    v6 = a3;
    do
    {
      v7 = *v3++;
      *(*(v7 + 304) + 4 * v6) = (*(*a1 + 32))(a1, v7);
    }

    while (v3 != v4);
  }
}

void quasar::WlatArcFeKeyword::~WlatArcFeKeyword(quasar::WlatArcFeKeyword *this)
{
  *this = &unk_1F2D064A8;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D064A8;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::WlatArcFeBagOfPhones::~WlatArcFeBagOfPhones(quasar::WlatArcFeBagOfPhones *this)
{
  *this = &unk_1F2D06448;
  std::__tree<int>::destroy(this + 384, *(this + 49));
  kaldi::nnet1::Nnet::~Nnet((this + 8));
}

{
  *this = &unk_1F2D06448;
  std::__tree<int>::destroy(this + 384, *(this + 49));
  kaldi::nnet1::Nnet::~Nnet((this + 8));

  JUMPOUT(0x1B8C85350);
}

void quasar::WlatArcFeWordEmbedding::~WlatArcFeWordEmbedding(quasar::WlatArcFeWordEmbedding *this)
{
  *this = &unk_1F2D06478;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_1F2D06478;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1B8C85350);
}

void fst::SymbolTableImpl::MaybeRecomputeCheckSum(fst::SymbolTableImpl *this)
{
  if ((*(this + 172) & 1) == 0)
  {
    fst::CheckSummer::CheckSummer(&v63);
    if (*(this + 7) != *(this + 6))
    {
      v2 = 0;
      do
      {
        fst::internal::DenseSymbolMap::GetSymbol((this + 40), v2, __p);
        v3 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        v4 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        v5 = __p[0].__r_.__value_.__r.__words[0];
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v3 = __p[0].__r_.__value_.__r.__words[1];
        }

        else
        {
          v5 = __p;
        }

        if (v3 >= 1)
        {
          v6 = v3 & 0x7FFFFFFF;
          do
          {
            v8 = v5->__r_.__value_.__s.__data_[0];
            v5 = (v5 + 1);
            v7 = v8;
            v9 = v63++;
            v10 = -v9 < 0;
            v11 = -v9 & 0x1F;
            v12 = v9 & 0x1F;
            if (!v10)
            {
              v12 = -v11;
            }

            if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v13 = &v64;
            }

            else
            {
              v13 = v64.__r_.__value_.__r.__words[0];
            }

            v13->__r_.__value_.__s.__data_[v12] ^= v7;
            --v6;
          }

          while (v6);
          v4 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        }

        ++v63;
        if (v4 < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        ++v2;
      }

      while (v2 < (*(this + 7) - *(this + 6)) >> 3);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(__p, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
    }

    else
    {
      __p[0] = v64;
    }

    if (*(this + 199) < 0)
    {
      operator delete(*(this + 22));
    }

    *(this + 176) = __p[0];
    fst::CheckSummer::CheckSummer(&v61);
    if (*(this + 4) >= 1)
    {
      v14 = 0;
      v15 = *MEMORY[0x1E69E54E8];
      v16 = *(MEMORY[0x1E69E54E8] + 24);
      do
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](__p);
        fst::internal::DenseSymbolMap::GetSymbol((this + 40), v14, &v54);
        if ((v56 & 0x80u) == 0)
        {
          v17 = &v54;
        }

        else
        {
          v17 = v54;
        }

        if ((v56 & 0x80u) == 0)
        {
          v18 = v56;
        }

        else
        {
          v18 = v55;
        }

        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v17, v18);
        LOBYTE(v51) = 9;
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, &v51, 1);
        MEMORY[0x1B8C84C60](v20, v14);
        if (v56 < 0)
        {
          operator delete(v54);
        }

        std::stringbuf::str();
        if ((v56 & 0x80u) == 0)
        {
          v21 = &v54;
        }

        else
        {
          v21 = v54;
        }

        std::stringbuf::str();
        v22 = v53;
        v23 = v53;
        if ((v53 & 0x80u) != 0)
        {
          v22 = v52;
        }

        if (v22 >= 1)
        {
          v24 = v22 & 0x7FFFFFFF;
          do
          {
            v26 = *v21++;
            v25 = v26;
            v27 = v61++;
            v10 = -v27 < 0;
            v28 = -v27 & 0x1F;
            v29 = v27 & 0x1F;
            if (!v10)
            {
              v29 = -v28;
            }

            if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = &v62;
            }

            else
            {
              v30 = v62.__r_.__value_.__r.__words[0];
            }

            v30->__r_.__value_.__s.__data_[v29] ^= v25;
            --v24;
          }

          while (v24);
          v23 = v53;
        }

        if ((v23 & 0x80) != 0)
        {
          operator delete(v51);
        }

        if (v56 < 0)
        {
          operator delete(v54);
        }

        __p[0].__r_.__value_.__r.__words[0] = v15;
        *(__p[0].__r_.__value_.__r.__words + *(v15 - 24)) = v16;
        __p[0].__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
        if (v59 < 0)
        {
          operator delete(v58);
        }

        __p[0].__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&__p[0].__r_.__value_.__r.__words[2]);
        std::ostream::~ostream();
        MEMORY[0x1B8C85200](v60);
        ++v14;
      }

      while (v14 < *(this + 4));
    }

    v31 = *(this + 18);
    if (v31 != (this + 152))
    {
      v32 = *MEMORY[0x1E69E54E8];
      v33 = *(MEMORY[0x1E69E54E8] + 24);
      do
      {
        if (*(v31 + 4) >= *(this + 4))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](__p);
          fst::internal::DenseSymbolMap::GetSymbol((this + 40), *(v31 + 5), &v54);
          if ((v56 & 0x80u) == 0)
          {
            v34 = &v54;
          }

          else
          {
            v34 = v54;
          }

          if ((v56 & 0x80u) == 0)
          {
            v35 = v56;
          }

          else
          {
            v35 = v55;
          }

          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v34, v35);
          LOBYTE(v51) = 9;
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, &v51, 1);
          MEMORY[0x1B8C84C60](v37, *(v31 + 4));
          if (v56 < 0)
          {
            operator delete(v54);
          }

          std::stringbuf::str();
          if ((v56 & 0x80u) == 0)
          {
            v38 = &v54;
          }

          else
          {
            v38 = v54;
          }

          std::stringbuf::str();
          v39 = v53;
          v40 = v53;
          if ((v53 & 0x80u) != 0)
          {
            v39 = v52;
          }

          if (v39 >= 1)
          {
            v41 = v39 & 0x7FFFFFFF;
            do
            {
              v43 = *v38++;
              v42 = v43;
              v44 = v61++;
              v10 = -v44 < 0;
              v45 = -v44 & 0x1F;
              v46 = v44 & 0x1F;
              if (!v10)
              {
                v46 = -v45;
              }

              if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v47 = &v62;
              }

              else
              {
                v47 = v62.__r_.__value_.__r.__words[0];
              }

              v47->__r_.__value_.__s.__data_[v46] ^= v42;
              --v41;
            }

            while (v41);
            v40 = v53;
          }

          if ((v40 & 0x80) != 0)
          {
            operator delete(v51);
          }

          if (v56 < 0)
          {
            operator delete(v54);
          }

          __p[0].__r_.__value_.__r.__words[0] = v32;
          *(__p[0].__r_.__value_.__r.__words + *(v32 - 24)) = v33;
          __p[0].__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
          if (v59 < 0)
          {
            operator delete(v58);
          }

          __p[0].__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(&__p[0].__r_.__value_.__r.__words[2]);
          std::ostream::~ostream();
          MEMORY[0x1B8C85200](v60);
        }

        v48 = *(v31 + 1);
        if (v48)
        {
          do
          {
            v49 = v48;
            v48 = *v48;
          }

          while (v48);
        }

        else
        {
          do
          {
            v49 = *(v31 + 2);
            v50 = *v49 == v31;
            v31 = v49;
          }

          while (!v50);
        }

        v31 = v49;
      }

      while (v49 != (this + 152));
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(__p, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
    }

    else
    {
      __p[0] = v62;
    }

    if (*(this + 223) < 0)
    {
      operator delete(*(this + 25));
    }

    *(this + 200) = __p[0];
    *(this + 172) = 1;
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1B52269C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (*(v18 - 121) < 0)
  {
    operator delete(*(v18 - 144));
  }

  if (*(v18 - 89) < 0)
  {
    operator delete(*(v18 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SymbolTableImpl::GetNthKey(fst::SymbolTableImpl *this, uint64_t a2)
{
  if (a2 < 0)
  {
    return -1;
  }

  v2 = a2;
  if (a2 >= ((*(this + 7) - *(this + 6)) >> 3))
  {
    return -1;
  }

  if (*(this + 4) <= a2)
  {
    fst::internal::DenseSymbolMap::GetSymbol((this + 40), a2, __p);
    v4 = fst::internal::DenseSymbolMap::Find(this + 5, __p);
    v2 = v4;
    if (v4 != -1)
    {
      v5 = *(this + 4);
      v6 = __OFSUB__(v4, v5);
      v7 = v4 - v5;
      if (v7 < 0 == v6)
      {
        v2 = *(*(this + 15) + 8 * v7);
      }
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v2;
}

uint64_t fst::SymbolTableImpl::Read(void *a1)
{
  v8 = 0;
  std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
    LODWORD(v5.__r_.__value_.__l.__data_) = 0;
    std::istream::read();
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v5, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "SymbolTable::Read: read failed", 30);
  fst::LogMessage::~LogMessage(&v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B5226EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
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

  _Unwind_Resume(exception_object);
}

BOOL fst::SymbolTableImpl::Write(uint64_t a1, void *a2)
{
  LODWORD(__p) = 2125658996;
  std::ostream::write();
  LODWORD(v4) = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  LODWORD(__p) = v4;
  std::ostream::write();
  std::ostream::write();
  __p = *(a1 + 24);
  std::ostream::write();
  __p = ((*(a1 + 56) - *(a1 + 48)) >> 3);
  std::ostream::write();
  if (*(a1 + 56) != *(a1 + 48))
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 32);
      v7 = v5;
      if (v5 >= v6)
      {
        v7 = *(*(a1 + 120) - 8 * v6 + 8 * v5);
      }

      fst::internal::DenseSymbolMap::GetSymbol((a1 + 40), v5, &__p);
      v8 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v8 = v14;
      }

      v16 = v8;
      std::ostream::write();
      std::ostream::write();
      if (v15 < 0)
      {
        operator delete(__p);
      }

      __p = v7;
      std::ostream::write();
      ++v5;
    }

    while (v5 < ((*(a1 + 56) - *(a1 + 48)) >> 3));
  }

  std::ostream::flush();
  v9 = *(a2 + *(*a2 - 24) + 32) & 5;
  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v10 = fst::LogMessage::LogMessage(&v16, &__p);
    v11 = fst::cerr(v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "SymbolTable::Write: write failed", 32);
    fst::LogMessage::~LogMessage(&v16);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  return v9 == 0;
}

void sub_1B52271C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::SymbolTable::AddTable(fst::SymbolTable *this, const fst::SymbolTable *a2)
{
  fst::SymbolTable::MutateCheck(this);
  v4 = (*(*a2 + 120))(a2);
  v5 = (*(*a2 + 128))(a2, 0);
  if (v4)
  {
    v6 = v5;
    v7 = 1;
    v8 = v4;
    do
    {
      v9 = *(this + 1);
      (*(*a2 + 88))(__p, a2, v6);
      fst::SymbolTableImpl::AddSymbol(v9, __p, *(v9 + 24));
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 < v4)
      {
        v6 = (*(*a2 + 128))(a2, v7);
      }

      ++v7;
      --v8;
    }

    while (v8);
  }
}

void sub_1B5227340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SymbolTable::MutateCheck(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(v1 + 168);
  if (v2 >= 2)
  {
    *(v1 + 168) = v2 - 1;
    operator new();
  }

  return this;
}

BOOL fst::SymbolTable::WriteText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 31);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 16);
  }

  v23 = v3;
  if (v3)
  {
    v6 = (*(*a1 + 120))(a1);
    v7 = (*(*a1 + 128))(a1, 0);
    if (v6)
    {
      v8 = v7;
      v9 = 0;
      v10 = 1;
      v24 = *(MEMORY[0x1E69E54E8] + 24);
      v25 = *MEMORY[0x1E69E54E8];
      v11 = v6;
      do
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
        if (!((v8 >= 0) | v9 & 1 | *a3 & 1))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "WARNING");
          v12 = fst::LogMessage::LogMessage(&v26, __p);
          v13 = fst::cerr(v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Negative symbol table entry when not allowed", 44);
          fst::LogMessage::~LogMessage(&v26);
          if (v29 < 0)
          {
            operator delete(__p[0]);
          }

          v9 = 1;
        }

        (*(*a1 + 88))(__p, a1, v8);
        if ((v29 & 0x80u) == 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        if ((v29 & 0x80u) == 0)
        {
          v15 = v29;
        }

        else
        {
          v15 = __p[1];
        }

        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, v14, v15);
        v17 = (a3 + 8);
        if (*(a3 + 31) < 0)
        {
          v17 = *(a3 + 8);
        }

        LOBYTE(v26) = *v17;
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, &v26, 1);
        v19 = MEMORY[0x1B8C84C60](v18, v8);
        LOBYTE(v26) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, &v26, 1);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        std::stringbuf::str();
        std::stringbuf::str();
        std::ostream::write();
        if (v27 < 0)
        {
          operator delete(v26);
        }

        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        v30 = v25;
        *(&v30 + *(v25 - 3)) = v24;
        v31 = MEMORY[0x1E69E5548] + 16;
        if (v33 < 0)
        {
          operator delete(v32[7].__locale_);
        }

        v31 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v32);
        std::ostream::~ostream();
        MEMORY[0x1B8C85200](&v34);
        if (v10 < v6)
        {
          v8 = (*(*a1 + 128))(a1, v10);
        }

        ++v10;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v30, "ERROR");
    v20 = fst::LogMessage::LogMessage(__p, &v30);
    v21 = fst::cerr(v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Missing required field separator", 32);
    fst::LogMessage::~LogMessage(__p);
    if (SHIBYTE(v32[0].__locale_) < 0)
    {
      operator delete(v30);
    }
  }

  return v23 != 0;
}

void sub_1B52277F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

fst::internal::DenseSymbolMap *fst::internal::DenseSymbolMap::DenseSymbolMap(fst::internal::DenseSymbolMap *this, const fst::internal::DenseSymbolMap *a2)
{
  *this = -1;
  std::vector<char const*>::vector[abi:ne200100](this + 1, (*(a2 + 2) - *(a2 + 1)) >> 3);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this + 40, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 3);
  *(this + 8) = *(a2 + 8);
  *(this + 18) = *(a2 + 18);
  if (*(this + 2) != *(this + 1))
  {
    strlen(**(a2 + 1));
    operator new[]();
  }

  return this;
}

void sub_1B5227980(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void fst::internal::DenseSymbolMap::~DenseSymbolMap(fst::internal::DenseSymbolMap *this)
{
  v4 = this + 8;
  v2 = *(this + 1);
  v3 = *(v4 + 1);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x1B8C85310](v2[v5], 0x1000C8077774924);
        v2 = *(this + 1);
        v3 = *(this + 2);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  v6 = *(this + 5);
  if (v6)
  {
    *(this + 6) = v6;
    operator delete(v6);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

uint64_t fst::internal::DenseSymbolMap::Find(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a1 + 4), a2);
  v5 = a1[8];
  v6 = a1[5];
  v7 = *a1;
  v8 = v4 & v5;
  v9 = *(v6 + 8 * (v4 & v5));
  if (v9 == *a1)
  {
    return v7;
  }

  v10 = a1[1];
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  while (strcmp(*(v10 + 8 * v9), v2))
  {
    v8 = (v8 + 1) & v5;
    v9 = *(v6 + 8 * v8);
    if (v9 == v7)
    {
      return v7;
    }
  }

  return v9;
}

uint64_t fst::SymbolTable::AddSymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  fst::SymbolTable::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::SymbolTableImpl::AddSymbol(v6, a2, a3);
}

uint64_t fst::SymbolTable::AddSymbol(uint64_t a1, uint64_t a2)
{
  fst::SymbolTable::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4 + 24);

  return fst::SymbolTableImpl::AddSymbol(v4, a2, v5);
}

uint64_t fst::SymbolTable::Find(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  result = fst::internal::DenseSymbolMap::Find(v2 + 5, a2);
  if (result != -1)
  {
    v4 = v2[4];
    v5 = __OFSUB__(result, v4);
    v6 = result - v4;
    if (v6 < 0 == v5)
    {
      return *(v2[15] + 8 * v6);
    }
  }

  return result;
}

fst::CheckSummer *fst::CheckSummer::CheckSummer(fst::CheckSummer *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::string::resize((this + 8), 0x20uLL, 0);
  return this;
}

void sub_1B5227CF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *fst::SymbolTableImpl::SymbolTableImpl(std::string *this, const fst::SymbolTableImpl *a2)
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

  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  fst::internal::DenseSymbolMap::DenseSymbolMap(&this[1].__r_.__value_.__r.__words[2], (a2 + 40));
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&this[5], *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 3);
  std::map<long long,long long>::map[abi:ne200100](this[6].__r_.__value_.__r.__words, a2 + 144);
  LODWORD(this[7].__r_.__value_.__l.__data_) = 1;
  this[7].__r_.__value_.__s.__data_[4] = 0;
  *&this[7].__r_.__value_.__r.__words[1] = 0u;
  *&this[8].__r_.__value_.__l.__data_ = 0u;
  *&this[8].__r_.__value_.__r.__words[2] = 0u;
  return this;
}

void sub_1B5227DC0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  fst::internal::DenseSymbolMap::~DenseSymbolMap((v1 + 40));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *std::map<long long,long long>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<long long,long long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,long long>,std::__tree_node<std::__value_type<long long,long long>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<long long,long long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,long long>,std::__tree_node<std::__value_type<long long,long long>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_hint_unique_key_args<long long,std::pair<long long const,long long> const&>(v5, v5 + 1, v4 + 4);
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

uint64_t std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_hint_unique_key_args<long long,std::pair<long long const,long long> const&>(void *a1, void *a2, uint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__find_equal<long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__find_equal<long long>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void fst::SymbolTableImpl::CheckSum(fst::SymbolTableImpl *this@<X0>, std::string *a2@<X8>)
{
  fst::SymbolTableImpl::MaybeRecomputeCheckSum(this);
  if (*(this + 199) < 0)
  {
    v4 = *(this + 22);
    v5 = *(this + 23);

    std::string::__init_copy_ctor_external(a2, v4, v5);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 11);
    a2->__r_.__value_.__r.__words[2] = *(this + 24);
  }
}

void fst::SymbolTableImpl::LabeledCheckSum(fst::SymbolTableImpl *this@<X0>, std::string *a2@<X8>)
{
  fst::SymbolTableImpl::MaybeRecomputeCheckSum(this);
  if (*(this + 223) < 0)
  {
    v4 = *(this + 25);
    v5 = *(this + 26);

    std::string::__init_copy_ctor_external(a2, v4, v5);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 200);
    a2->__r_.__value_.__r.__words[2] = *(this + 27);
  }
}

uint64_t fst::SymbolTableImpl::Find(fst::SymbolTableImpl *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v3 = fst::internal::DenseSymbolMap::Find(this + 5, __p);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = *(this + 4);
    v6 = __OFSUB__(v3, v5);
    v7 = v3 - v5;
    if (v7 < 0 == v6)
    {
      v4 = *(*(this + 15) + 8 * v7);
    }
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

_BYTE *fst::SymbolTableImpl::GetNthSymbol@<X0>(fst::SymbolTableImpl *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 < 0 || a2 >= ((*(this + 7) - *(this + 6)) >> 3) || *(this + 4) > a2)
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  else
  {
    return fst::internal::DenseSymbolMap::GetSymbol((this + 40), a2, a3);
  }
}

void *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
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
      v5 = v2[4];
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

void quasar::SimpleLmeEnumerationsProcessorBase::~SimpleLmeEnumerationsProcessorBase(quasar::SimpleLmeEnumerationsProcessorBase *this)
{
  *this = &unk_1F2D06BE8;
  std::__tree<int>::destroy(this + 144, *(this + 19));
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void quasar::SimpleLmeEnumerationsProcessorBase::add(uint64_t a1, char **a2, uint64_t **a3)
{
  v59[0] = 0;
  v59[1] = 0;
  v58 = v59;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      __p[0] = v5;
      *(std::__tree<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word const*>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::LmeDataFactoryBase::Word const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v58, v5) + 56) = v5;
      v5 += 80;
    }

    while (v5 != v6);
  }

  v8 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    v43 = a3[1];
    do
    {
      v9 = *v8;
      if (0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 3) >= 2)
      {
        if (*(a1 + 116) < 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = quasar::SimpleLmeEnumerationsProcessorBase::getMinimumNumberOfPhones(a1, v8, &v58) >= *(a1 + 116);
          v9 = *v8;
        }

        v11 = std::stof(v9, 0);
        std::vector<std::vector<quasar::PronChoice>>::vector[abi:ne200100](v57, -1 - 0x5555555555555555 * ((v8[1] - *v8) >> 3));
        memset(&v56, 0, sizeof(v56));
        v12 = *v8;
        if (0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 3) < 2)
        {
LABEL_43:
          std::string::basic_string[abi:ne200100]<0>(__p, ".");
          quasar::PronCombinator::operator()((a1 + 136), v57, v55);
          if (v49 < 0)
          {
            operator delete(__p[0]);
          }

          v54[0] = 0;
          v54[1] = 0;
          v53 = v54;
          v33 = v55[0];
          v34 = v55[1];
          while (v33 != v34)
          {
            v60 = v33 + 8;
            v35 = *(std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v53, (v33 + 8)) + 56);
            v36 = *v33;
            v60 = v33 + 8;
            v37 = std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v53, (v33 + 8));
            if (v36 == 2)
            {
              v38 = v35;
            }

            else
            {
              v38 = 1;
            }

            *(v37 + 56) = v38;
            v33 += 40;
          }

          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v47, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
          }

          else
          {
            v47 = v56;
          }

          std::string::basic_string[abi:ne200100]<0>(v45, "");
          quasar::LmeDataFactoryBase::Word::Word(__p, &v47, v45, 0);
          if (v46 < 0)
          {
            operator delete(v45[0]);
          }

          if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v47.__r_.__value_.__l.__data_);
          }

          v39 = v53;
          if (v53 != v54)
          {
            do
            {
              if (*(v39 + 56))
              {
                v40 = 0;
              }

              else
              {
                v40 = 2;
              }

              quasar::LmeDataFactoryBase::PronSet::insert(v52, v40, (v39 + 4), 0.0);
              v41 = v39[1];
              if (v41)
              {
                do
                {
                  v42 = v41;
                  v41 = *v41;
                }

                while (v41);
              }

              else
              {
                do
                {
                  v42 = v39[2];
                  v24 = *v42 == v39;
                  v39 = v42;
                }

                while (!v24);
              }

              v39 = v42;
            }

            while (v42 != v54);
          }

          *(a1 + 168) = v11 + *(a1 + 168);
          (*(*a1 + 32))(a1, __p, v11);
          std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v52, v52[1]);
          if (v51 < 0)
          {
            operator delete(v50);
          }

          if (v49 < 0)
          {
            operator delete(__p[0]);
          }

          std::__tree<std::string>::destroy(&v53, v54[0]);
          __p[0] = v55;
          std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](__p);
        }

        else
        {
          v13 = 1;
          v44 = v8;
          while (1)
          {
            v14 = v12 + 24 * v13;
            v15 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v58, v14);
            v16 = v15;
            if (v59 == v15)
            {
              break;
            }

            v17 = v57[0];
            v18 = quasar::LmeDataFactoryBase::PronSet::size((*(v15 + 56) + 56));
            std::vector<quasar::PronChoice>::reserve((v17 + 24 * (v13 - 1)), v18);
            quasar::Bitmap::~Bitmap((*(v16 + 56) + 56));
            v21 = v20 + 1;
            v22 = *v20;
            if (*v20 != v20 + 1)
            {
              do
              {
                if (!quasar::pronTypeMatchesPronRequest(*(v22 + 8), *(a1 + 128)))
                {
                  goto LABEL_28;
                }

                v23 = *(v22 + 8);
                if (!v10)
                {
                  v24 = v23 == 2 || v23 == 5;
                  if (v24)
                  {
                    goto LABEL_28;
                  }
                }

                v19 = v13 - 1;
                v25 = v57[0] + 24 * (v13 - 1);
                if ((v23 & 0xFFFFFFFE) == 4)
                {
                  LODWORD(__p[0]) = 3;
                  v26 = *(v25 + 8);
                  if (v26 >= *(v25 + 16))
                  {
                    v27 = std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronType,std::string const&,float const&>((v57[0] + 24 * (v13 - 1)), __p, (v22 + 5), v22 + 16);
                    goto LABEL_27;
                  }

                  std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType,std::string const&,float const&>(v57[0] + 24 * (v13 - 1), *(v25 + 8), __p, (v22 + 5), v22 + 16);
                }

                else
                {
                  v26 = *(v25 + 8);
                  if (v26 >= *(v25 + 16))
                  {
                    v27 = std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronType const&,std::string const&,float const&>((v57[0] + 24 * v19), v22 + 8, (v22 + 5), v22 + 16);
                    goto LABEL_27;
                  }

                  std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType const&,std::string const&,float const&>(v57[0] + 24 * v19, *(v25 + 8), v22 + 8, (v22 + 5), v22 + 16);
                }

                v27 = v26 + 40;
                *(v25 + 8) = v26 + 40;
LABEL_27:
                *(v25 + 8) = v27;
LABEL_28:
                v28 = v22[1];
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
                    v29 = v22[2];
                    v24 = *v29 == v22;
                    v22 = v29;
                  }

                  while (!v24);
                }

                v22 = v29;
              }

              while (v29 != v21);
            }

            v8 = v44;
            if (v13 != 1)
            {
              std::string::append(&v56, "~w00");
            }

            v30 = *(v14 + 23);
            if (v30 >= 0)
            {
              v31 = v14;
            }

            else
            {
              v31 = *v14;
            }

            if (v30 >= 0)
            {
              v32 = *(v14 + 23);
            }

            else
            {
              v32 = *(v14 + 8);
            }

            std::string::append(&v56, v31, v32);
            ++v13;
            v12 = *v44;
            if (0xAAAAAAAAAAAAAAABLL * ((v44[1] - *v44) >> 3) <= v13)
            {
              goto LABEL_43;
            }
          }
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        __p[0] = v57;
        std::vector<std::vector<quasar::PronChoice>>::__destroy_vector::operator()[abi:ne200100](__p);
        v7 = v43;
      }

      v8 += 3;
    }

    while (v8 != v7);
  }

  std::__tree<std::string>::destroy(&v58, v59[0]);
}

void sub_1B5228944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, char *a41, uint64_t a42, char a43)
{
  std::__tree<std::string>::destroy(&a40, a41);
  a27 = &a43;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&a27);
  if (*(v43 - 169) < 0)
  {
    operator delete(*(v43 - 192));
  }

  a27 = (v43 - 168);
  std::vector<std::vector<quasar::PronChoice>>::__destroy_vector::operator()[abi:ne200100](&a27);
  std::__tree<std::string>::destroy(v43 - 144, *(v43 - 136));
  _Unwind_Resume(a1);
}

uint64_t quasar::SimpleLmeEnumerationsProcessorBase::getMinimumNumberOfPhones(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) >= 2)
  {
    LODWORD(v6) = 0;
    v7 = a3 + 8;
    v8 = 1;
    while (1)
    {
      v9 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a3, (v3 + 24 * v8));
      if (v7 == v9)
      {
        break;
      }

      quasar::Bitmap::~Bitmap((*(v9 + 56) + 56));
      v13 = *v10;
      v11 = v10 + 1;
      v12 = v13;
      if (v13 == v11)
      {
        v15 = 0;
      }

      else
      {
        v14 = 0;
        v15 = 0x7FFFFFFF;
        do
        {
          if (*(v12 + 8) == 1)
          {
            v16 = *(v12 + 63);
            if (v16 < 0)
            {
              v17 = v12[5];
              v18 = v12[6];
            }

            else
            {
              v17 = (v12 + 5);
              v18 = *(v12 + 63);
            }

            for (i = 0; v18; --v18)
            {
              v20 = *v17++;
              if (v20 == 46)
              {
                ++i;
              }
            }

            if ((v16 & 0x80000000) != 0)
            {
              v16 = v12[6];
            }

            if (v16)
            {
              v21 = i + 1;
            }

            else
            {
              v21 = i;
            }

            if (v15 >= v21)
            {
              v15 = v21;
            }

            v14 = 1;
          }

          v22 = v12[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v12[2];
              v24 = *v23 == v12;
              v12 = v23;
            }

            while (!v24);
          }

          v12 = v23;
        }

        while (v23 != v11);
        if ((v14 & 1) == 0)
        {
          v15 = 0;
        }
      }

      v6 = (v15 + v6);
      ++v8;
      v3 = *a2;
      if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v8)
      {
        return v6;
      }
    }
  }

  return 0;
}

void *std::vector<quasar::PronChoice>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PronChoice>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B5228C70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word const*>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::LmeDataFactoryBase::Word const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word const*>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::LmeDataFactoryBase::Word const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::LmeDataFactoryBase::Word const*>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1B5228DB8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<quasar::PronChoice>>::vector[abi:ne200100](void *result, unint64_t a2)
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

void std::vector<std::vector<quasar::PronChoice>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronType,std::string const&,float const&>(uint64_t *a1, int *a2, uint64_t a3, int *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PronChoice>>(a1, v8);
  }

  v15 = 0;
  v16 = 40 * v4;
  std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType,std::string const&,float const&>(a1, 40 * v4, a2, a3, a4);
  v17 = 40 * v4 + 40;
  v9 = a1[1];
  v10 = (40 * v4 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PronChoice>,quasar::PronChoice*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(&v15);
  return v14;
}

void sub_1B5229024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType,std::string const&,float const&>(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int *a5)
{
  v7 = *a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v8 = *a5;
  *a2 = v7;
  v9 = (a2 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a2 + 32) = v8;
    if (v10 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(a2 + 24) = *(&__p.__r_.__value_.__l + 2);
    *(a2 + 32) = v8;
  }
}

void sub_1B52290E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronType const&,std::string const&,float const&>(uint64_t *a1, int *a2, uint64_t a3, int *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PronChoice>>(a1, v8);
  }

  v15 = 0;
  v16 = 40 * v4;
  std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType const&,std::string const&,float const&>(a1, 40 * v4, a2, a3, a4);
  v17 = 40 * v4 + 40;
  v9 = a1[1];
  v10 = (40 * v4 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PronChoice>,quasar::PronChoice*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(&v15);
  return v14;
}

void sub_1B522923C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType const&,std::string const&,float const&>(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int *a5)
{
  v7 = *a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v8 = *a5;
  *a2 = v7;
  v9 = (a2 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a2 + 32) = v8;
    if (v10 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(a2 + 24) = *(&__p.__r_.__value_.__l + 2);
    *(a2 + 32) = v8;
  }
}

void sub_1B5229300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1B5229450(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t fst::BackoffArcInfo::BackoffArcInfo(uint64_t this)
{
  *this = &unk_1F2D06C68;
  *(this + 8) = 0;
  return this;
}

double fst::InterpArcInfo::InterpArcInfo(fst::InterpArcInfo *this)
{
  *this = &unk_1F2D06C88;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = -1;
  *(this + 16) = 2139095040;
  return result;
}

void fst::InterpArcInfo::~InterpArcInfo(fst::InterpArcInfo *this)
{
  *this = &unk_1F2D06C88;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = (this + 8);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  fst::InterpArcInfo::~InterpArcInfo(this);

  JUMPOUT(0x1B8C85350);
}

void *quasar::lm::WeightOptimizationStrategy::operator()@<X0>(quasar::lm *a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 2))
  {
    quasar::lm::LogMessage::LogMessage(v8, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/weights.cpp", 10);
    quasar::rescoring::AdapterModel::getFeaturizer(v8);
    quasar::lm::LogMessage::~LogMessage(v8);
  }

  else
  {
    v4 = quasar::lm::nullstream(a1);
  }

  if (*(a1 + 3) <= 0)
  {
    quasar::lm::LogMessage::LogMessage(v8, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/weights.cpp", 12);
    quasar::rescoring::AdapterModel::getFeaturizer(v8);
    quasar::lm::LogMessage::~LogMessage(v8);
  }

  else
  {
    quasar::lm::nullstream(v4);
  }

  v5 = *(a1 + 3);
  v6 = log(v5);
  v8[0] = exp(-v6);
  return std::vector<double>::vector[abi:ne200100](a2, v5);
}

void sub_1B5229780(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL kaldi::ConstIntegerSet<int>::count(uint64_t a1, int a2)
{
  if (a2 < *a1 || *(a1 + 4) < a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    return 1;
  }

  if (*(a1 + 9) == 1)
  {
    return (*(*(a1 + 16) + (((a2 - *a1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (a2 - *a1)) & 1;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v4 == v3)
  {
    return 0;
  }

  v5 = v4 - v3;
  do
  {
    v6 = v5 >> 1;
    v7 = &v3[v5 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v5 += ~(v5 >> 1);
    if (v9 < a2)
    {
      v3 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  while (v5);
  if (v3 == v4)
  {
    return 0;
  }

  return *v3 <= a2;
}

uint64_t kaldi::ReadBasicType<unsigned int>(void *a1, int a2, uint64_t a3)
{
  v16[51] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = std::istream::get();
    if (v4 == -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "ReadBasicType: encountered end of stream.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    v5 = v4;
    if (v4 << 24 != -67108864)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "ReadBasicType: did not get expected integer type, ", 50);
      v12 = MEMORY[0x1B8C84C00](v11, v5);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " vs. ", 5);
      v14 = MEMORY[0x1B8C84C00](v13, 4294967292);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ".  You can change this code to successfully", 43);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, " read it later, if needed.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    result = std::istream::read();
  }

  else
  {
    result = MEMORY[0x1B8C84AF0](a1, a3);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Read failure in ReadBasicType, file position is ", 48);
    std::istream::tellg();
    v8 = MEMORY[0x1B8C84C60](v7, v16[50]);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", next char is ", 15);
    v10 = std::istream::peek();
    MEMORY[0x1B8C84C00](v9, v10);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  return result;
}

void sub_1B5229A18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *kaldi::ConstIntegerSet<int>::~ConstIntegerSet(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void *LHash<unsigned int,Trie<unsigned int,unsigned int>>::alloc(void *a1, unsigned int a2)
{
  v3 = -1;
  do
  {
    v4 = (1 << ++v3);
  }

  while (v4 < a2);
  result = BM_malloc(24 * (v4 - 1) + 32);
  v6 = 0;
  *a1 = result;
  *result = *result & 0xFFFFFFE0 | v3 & 0x1F;
  **a1 &= 0x1Fu;
  do
  {
    v7 = *a1 + v6;
    *(v7 + 24) = -1;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    v6 += 24;
    --v4;
  }

  while (v4);
  return result;
}

void LHash<unsigned int,Trie<unsigned int,unsigned int>>::clear(void *a1, unsigned int a2)
{
  v4 = *a1;
  if (v4)
  {
    BM_free(v4, 24 * ~(-1 << *v4) + 32);
    *a1 = 0;
  }

  if (a2)
  {
    if (a2 >= 8)
    {
      a2 = ((a2 + 1) / 0.8);
    }

    LHash<unsigned int,Trie<unsigned int,unsigned int>>::alloc(a1, a2);
  }
}

void *LHash<unsigned int,Trie<unsigned int,unsigned int>>::operator=(void *a1, _DWORD **a2)
{
  if (a2 != a1)
  {
    if (*a2)
    {
      v4 = 1 << (**a2 & 0x1F);
      LHash<unsigned int,Trie<unsigned int,unsigned int>>::clear(a1, 0);
      LHash<unsigned int,Trie<unsigned int,unsigned int>>::alloc(a1, v4);
      v5 = 0;
      do
      {
        v6 = (*a2)[v5 + 6];
        if (v6 != -1)
        {
          v7 = *a1 + v5 * 4;
          *(v7 + 24) = v6;
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          v8 = &(*a2)[v5];
          v9 = *a1 + v5 * 4;
          LHash<unsigned int,Trie<unsigned int,unsigned int>>::operator=(v9 + 8, v8 + 2);
          *(v9 + 16) = v8[4];
        }

        v5 += 6;
        --v4;
      }

      while (v4);
      **a1 = **a2 & 0xFFFFFFE0 | **a1 & 0x1F;
    }

    else
    {
      LHash<unsigned int,Trie<unsigned int,unsigned int>>::clear(a1, 0);
    }
  }

  return a1;
}

uint64_t LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(_DWORD **a1, unsigned int a2, _DWORD *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = v3 + 2;
  v5 = *v3;
  v6 = v5 & 0x1F;
  if ((*v3 & 0x1Fu) > 2)
  {
    v9 = -1 << v6;
    v7 = ((1103515245 * a2 + 12345) >> (30 - v6)) & ~(-1 << v6);
    v10 = v4[6 * v7 + 4];
    if (v10 == -1)
    {
LABEL_10:
      result = 0;
    }

    else
    {
      v11 = ~v9;
      while (v10 != a2)
      {
        LODWORD(v7) = (v7 + 1) & v11;
        v10 = v4[6 * v7 + 4];
        if (v10 == -1)
        {
          goto LABEL_10;
        }
      }

      result = 1;
    }
  }

  else if (v5 >= 0x20)
  {
    v12 = 0;
    v7 = v5 >> 5;
    v13 = v3 + 6;
    while (1)
    {
      v14 = *v13;
      v13 += 6;
      if (v14 == a2)
      {
        break;
      }

      if (v7 == ++v12)
      {
        goto LABEL_14;
      }
    }

    result = 1;
    LODWORD(v7) = v12;
  }

  else
  {
    LODWORD(v7) = 0;
LABEL_14:
    result = 0;
  }

  *a3 = v7;
  return result;
}

uint64_t LHash<unsigned int,Trie<unsigned int,unsigned int>>::insert(void *a1, unsigned int a2, _BYTE *a3)
{
  if (!*a1)
  {
    LHash<unsigned int,Trie<unsigned int,unsigned int>>::alloc(a1, 1u);
  }

  v24 = 0;
  v6 = LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(a1, a2, &v24);
  *a3 = v6;
  v7 = *a1;
  if (!v6)
  {
    v8 = *v7;
    v9 = 1 << (v8 & 0x1F);
    v10 = v8 >> 5;
    if (v8 >= 0xE0)
    {
      v11 = ((v10 + 2) / 0.8);
    }

    else
    {
      v11 = v10 + 1;
    }

    if (v11 > v9)
    {
      LHash<unsigned int,Trie<unsigned int,unsigned int>>::alloc(a1, v11);
      **a1 = v8 & 0xFFFFFFE0 | **a1 & 0x1F;
      if ((**a1 & 0x1Fu) >= 3)
      {
        v12 = (v7 + 3);
        v13 = 1 << (v8 & 0x1F);
        v14 = (v7 + 3);
        do
        {
          v16 = *v14;
          v14 += 6;
          v15 = v16;
          if (v16 != -1)
          {
            v17 = v12 - 4;
            LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(a1, v15, &v24);
            v18 = *a1 + 24 * v24;
            v19 = *v17;
            *(v18 + 24) = *(v17 + 2);
            *(v18 + 8) = v19;
          }

          v12 = v14;
          --v13;
        }

        while (v13);
      }

      else
      {
        memcpy((*a1 + 8), v7 + 1, 24 * v10);
      }

      BM_free(v7, 24 * (v9 - 1) + 32);
      LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(a1, a2, &v24);
      v7 = *a1;
    }

    LODWORD(v7[3 * v24 + 3]) = a2;
    v20 = 3 * v24;
    v21 = &v7[3 * v24 + 1];
    *v21 = 0;
    v21[1] = 0;
    v22 = *a1 + 8 * v20;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    **a1 += 32;
    v7 = *a1;
  }

  return &v7[3 * v24 + 1];
}

uint64_t LHashIter<unsigned int,Trie<unsigned int,unsigned int>>::LHashIter(uint64_t result, _DWORD **a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + 8) = 0;
  if (v3)
  {
    *(result + 12) = *v3 >> 5;
    *(result + 16) = a3;
    *(result + 24) = 0;
    LHashIter<unsigned int,Trie<unsigned int,unsigned int>>::sortKeys();
  }

  *(result + 12) = 0;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

void sub_1B522A15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x1B8C85310](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LHashIter<unsigned int,Trie<unsigned int,unsigned int>>::next(uint64_t a1, _DWORD *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = 0;
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 12))
  {
    return 0;
  }

  v9 = v2;
  v7 = *(a1 + 24);
  *(a1 + 8) = v4 + 1;
  LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(&v9, *(v7 + 4 * v4), &v10);
  v8 = *a1 + 24 * v10;
  result = v8 + 8;
  *a2 = *(v8 + 24);
  return result;
}

uint64_t Trie<unsigned int,unsigned int>::Trie(uint64_t a1, unsigned int a2)
{
  *a1 = 0;
  if (a2)
  {
    if (a2 >= 8)
    {
      a2 = ((a2 + 1) / 0.8);
    }

    LHash<unsigned int,Trie<unsigned int,unsigned int>>::alloc(a1, a2);
  }

  *(a1 + 8) = 0;
  return a1;
}

_DWORD **Trie<unsigned int,unsigned int>::~Trie(_DWORD **a1)
{
  LHashIter<unsigned int,Trie<unsigned int,unsigned int>>::LHashIter(v4, a1, 0);
  v3 = 0;
  while (LHashIter<unsigned int,Trie<unsigned int,unsigned int>>::next(v4, &v3))
  {
    Trie<unsigned int,unsigned int>::~Trie();
  }

  if (v5)
  {
    MEMORY[0x1B8C85310](v5, 0x1000C8052888210);
  }

  LHash<unsigned int,Trie<unsigned int,unsigned int>>::clear(a1, 0);
  return a1;
}

uint64_t Trie<unsigned int,unsigned int>::findTrie(_DWORD **a1, unsigned int *a2, _BYTE *a3)
{
  v4 = a1;
  if (!a2 || (v6 = *a2, v6 == -1))
  {
    *a3 = 1;
  }

  else
  {
    v8 = 0;
    if (LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(a1, v6, &v8))
    {
      return Trie<unsigned int,unsigned int>::findTrie(*v4 + 24 * v8 + 8, a2 + 1, a3);
    }

    else
    {
      v4 = 0;
      *a3 = 0;
    }
  }

  return v4;
}

uint64_t Trie<unsigned int,unsigned int>::find(_DWORD **a1, unsigned int a2)
{
  v5 = 0;
  if (LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(a1, a2, &v5))
  {
    v3 = &(*a1)[6 * v5 + 2];
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return v3 + 8;
  }

  else
  {
    return 0;
  }
}

void *Trie<unsigned int,unsigned int>::insertTrie(void *result, unsigned int *a2, _BYTE *a3)
{
  if (!a2 || (v5 = *a2, v5 == -1))
  {
LABEL_6:
    *a3 = 1;
  }

  else
  {
    v6 = a2 + 1;
    while (1)
    {
      result = LHash<unsigned int,Trie<unsigned int,unsigned int>>::insert(result, v5, a3);
      if (!*a3)
      {
        break;
      }

      v7 = *v6++;
      v5 = v7;
      if (v7 == -1)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
    return Trie<unsigned int,unsigned int>::insertTrie(result, v6, &v8);
  }

  return result;
}

uint64_t Trie<unsigned int,unsigned int>::dump(_DWORD **a1, int a2)
{
  LHashIter<unsigned int,Trie<unsigned int,unsigned int>>::LHashIter(v12, a1, 0);
  v11 = 0;
  v3 = MEMORY[0x1E69E5300];
  v4 = MEMORY[0x1E69E5318];
  while (1)
  {
    v5 = LHashIter<unsigned int,Trie<unsigned int,unsigned int>>::next(v12, &v11);
    if (!v5)
    {
      break;
    }

    for (i = a2; i; --i)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " ", 1);
    }

    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Key = ", 6);
    v8 = MEMORY[0x1B8C84C10](v7, v11);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v14, v4);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v14);
    std::ostream::put();
    std::ostream::flush();
    Trie<unsigned int,unsigned int>::dump(v5, (a2 + 5));
  }

  result = v13;
  if (v13)
  {
    return MEMORY[0x1B8C85310](v13, 0x1000C8052888210);
  }

  return result;
}

void sub_1B522A5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14)
{
  std::locale::~locale(&a14);
  if (a13)
  {
    MEMORY[0x1B8C85310](a13, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

uint64_t TrieIter2<unsigned int,unsigned int>::TrieIter2(uint64_t a1, _DWORD **a2, _DWORD *a3, int a4, uint64_t a5)
{
  v6 = a3;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  LHashIter<unsigned int,Trie<unsigned int,unsigned int>>::LHashIter(a1 + 32, a2, a5);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (!a4)
  {
    goto LABEL_4;
  }

  if (a4 == 1)
  {
    ++v6;
LABEL_4:
    *v6 = -1;
  }

  return a1;
}

uint64_t TrieIter2<unsigned int,unsigned int>::~TrieIter2(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = TrieIter2<unsigned int,unsigned int>::~TrieIter2();
    MEMORY[0x1B8C85350](v2, 0x10F0C40A7879D68);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    MEMORY[0x1B8C85310](v3, 0x1000C8052888210);
  }

  *(a1 + 56) = 0;
  return a1;
}

uint64_t TrieIter2<unsigned int,unsigned int>::next(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 8);
      v4 = a1 + 32;

      return LHashIter<unsigned int,Trie<unsigned int,unsigned int>>::next(v4, v3);
    }

    else
    {
      v6 = *(a1 + 64);
      if (v6)
      {
        result = TrieIter2<unsigned int,unsigned int>::next(v6);
        if (result)
        {
          return result;
        }

        v7 = *(a1 + 64);
        if (v7)
        {
          v8 = TrieIter2<unsigned int,unsigned int>::~TrieIter2(v7);
          MEMORY[0x1B8C85350](v8, 0x10F0C40A7879D68);
        }

        *(a1 + 64) = 0;
      }

      result = LHashIter<unsigned int,Trie<unsigned int,unsigned int>>::next(a1 + 32, *(a1 + 8));
      if (result)
      {
        operator new();
      }
    }
  }

  else if (*(a1 + 72))
  {
    return 0;
  }

  else
  {
    *(a1 + 72) = 1;
    return *a1;
  }

  return result;
}

uint64_t *std::unique_ptr<quasar::lm::TokenStringAndCount const>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v6 = (v2 + 104);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
    v3 = *(v2 + 80);
    if (v3)
    {
      *(v2 + 88) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      *(v2 + 64) = v4;
      operator delete(v4);
    }

    v6 = (v2 + 32);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x1B8C85350](v2, 0x1032C40D9E35CA9);
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 2;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*(a3 + 16))(*(*a3 + 8 + 24 * *(a2 - 1) + 16), *(*a3 + 8 + 24 * v9->u32[0] + 16));
      if ((result & 0x80000000) != 0)
      {
        v56 = v9->i32[0];
        v9->i32[0] = *(a2 - 1);
        goto LABEL_78;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *,unsigned int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a3 + 16);
    v15 = *a3 + 8;
    if (v12 >= 0x81)
    {
      v16 = v14(*(v15 + 24 * v8[v13] + 16), *(v15 + 24 * *v8 + 16));
      v17 = (*(a3 + 16))(*(*a3 + 8 + 24 * *(a2 - 1) + 16), *(*a3 + 8 + 24 * v8[v13] + 16));
      if (v16 < 0)
      {
        v24 = *v8;
        if (v17 < 0)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v24;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v24;
          if (((*(a3 + 16))(*(*a3 + 8 + 24 * *(a2 - 1) + 16), *(*a3 + 8 + 24 * v24 + 16)) & 0x80000000) != 0)
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v17 < 0)
      {
        v18 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v18;
        if (((*(a3 + 16))(*(*a3 + 8 + 24 * v8[v13] + 16), *(*a3 + 8 + 24 * *v8 + 16)) & 0x80000000) != 0)
        {
          v19 = *v8;
          *v8 = v8[v13];
          v8[v13] = v19;
        }
      }

      v28 = v13 - 1;
      v29 = (*(a3 + 16))(*(*a3 + 8 + 24 * v8[v13 - 1] + 16), *(*a3 + 8 + 24 * v8[1] + 16));
      v30 = (*(a3 + 16))(*(*a3 + 8 + 24 * *(a2 - 2) + 16), *(*a3 + 8 + 24 * v8[v13 - 1] + 16));
      if (v29 < 0)
      {
        v33 = v8[1];
        if (v30 < 0)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v33;
        }

        else
        {
          v8[1] = v8[v28];
          v8[v28] = v33;
          if (((*(a3 + 16))(*(*a3 + 8 + 24 * *(a2 - 2) + 16), *(*a3 + 8 + 24 * v33 + 16)) & 0x80000000) != 0)
          {
            v34 = v8[v28];
            v8[v28] = *(a2 - 2);
            *(a2 - 2) = v34;
          }
        }
      }

      else if (v30 < 0)
      {
        v31 = v8[v28];
        v8[v28] = *(a2 - 2);
        *(a2 - 2) = v31;
        if (((*(a3 + 16))(*(*a3 + 8 + 24 * v8[v28] + 16), *(*a3 + 8 + 24 * v8[1] + 16)) & 0x80000000) != 0)
        {
          v32 = v8[1];
          v8[1] = v8[v28];
          v8[v28] = v32;
        }
      }

      v35 = v13 + 1;
      v36 = (*(a3 + 16))(*(*a3 + 8 + 24 * v8[v13 + 1] + 16), *(*a3 + 8 + 24 * v8[2] + 16));
      v37 = (*(a3 + 16))(*(*a3 + 8 + 24 * *(a2 - 3) + 16), *(*a3 + 8 + 24 * v8[v13 + 1] + 16));
      if (v36 < 0)
      {
        v40 = v8[2];
        if (v37 < 0)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v40;
        }

        else
        {
          v8[2] = v8[v35];
          v8[v35] = v40;
          if (((*(a3 + 16))(*(*a3 + 8 + 24 * *(a2 - 3) + 16), *(*a3 + 8 + 24 * v40 + 16)) & 0x80000000) != 0)
          {
            v41 = v8[v35];
            v8[v35] = *(a2 - 3);
            *(a2 - 3) = v41;
          }
        }
      }

      else if (v37 < 0)
      {
        v38 = v8[v35];
        v8[v35] = *(a2 - 3);
        *(a2 - 3) = v38;
        if (((*(a3 + 16))(*(*a3 + 8 + 24 * v8[v35] + 16), *(*a3 + 8 + 24 * v8[2] + 16)) & 0x80000000) != 0)
        {
          v39 = v8[2];
          v8[2] = v8[v35];
          v8[v35] = v39;
        }
      }

      v42 = (*(a3 + 16))(*(*a3 + 8 + 24 * v8[v13] + 16), *(*a3 + 8 + 24 * v8[v28] + 16));
      v43 = (*(a3 + 16))(*(*a3 + 8 + 24 * v8[v35] + 16), *(*a3 + 8 + 24 * v8[v13] + 16));
      if (v42 < 0)
      {
        v48 = v8[v28];
        if (v43 < 0)
        {
          v8[v28] = v8[v35];
          v8[v35] = v48;
          v44 = v8[v13];
        }

        else
        {
          v8[v28] = v8[v13];
          v8[v13] = v48;
          v49 = (*(a3 + 16))(*(*a3 + 8 + 24 * v8[v35] + 16), *(*a3 + 8 + 24 * v48 + 16));
          v44 = v8[v13];
          if (v49 < 0)
          {
            v47 = v8[v35];
            v8[v13] = v47;
            v8[v35] = v44;
LABEL_57:
            v44 = v47;
          }
        }
      }

      else
      {
        v44 = v8[v13];
        if (v43 < 0)
        {
          v45 = v8[v35];
          v8[v13] = v45;
          v8[v35] = v44;
          v46 = (*(a3 + 16))(*(*a3 + 8 + 24 * v45 + 16), *(*a3 + 8 + 24 * v8[v28] + 16));
          v44 = v8[v13];
          if (v46 < 0)
          {
            v47 = v8[v28];
            v8[v28] = v44;
            v8[v13] = v47;
            goto LABEL_57;
          }
        }
      }

      v50 = *v8;
      *v8 = v44;
      v8[v13] = v50;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v20 = v14(*(v15 + 24 * *v8 + 16), *(v15 + 24 * v8[v13] + 16));
    v21 = (*(a3 + 16))(*(*a3 + 8 + 24 * *(a2 - 1) + 16), *(*a3 + 8 + 24 * *v8 + 16));
    if (v20 < 0)
    {
      v26 = v8[v13];
      if (v21 < 0)
      {
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v26;
LABEL_39:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *v8;
      *v8 = v26;
      if (((*(a3 + 16))(*(*a3 + 8 + 24 * *(a2 - 1) + 16), *(*a3 + 8 + 24 * v26 + 16)) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v27 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v27;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v22 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v22;
      if (((*(a3 + 16))(*(*a3 + 8 + 24 * *v8 + 16), *(*a3 + 8 + 24 * v8[v13] + 16)) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v23 = v8[v13];
      v8[v13] = *v8;
      *v8 = v23;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*(a3 + 16))(*(*a3 + 8 + 24 * *(v8 - 1) + 16), *(*a3 + 8 + 24 * *v8 + 16)) & 0x80000000) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &>(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v51 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &>(v8, a2, a3);
    if ((v52 & 1) == 0)
    {
      goto LABEL_64;
    }

    v53 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *>(v8, v51, a3);
    v9 = (v51 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *>(v51 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v51;
      if (v53)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v53)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *,false>(v8, v51, a3, -v11, a5 & 1);
      v9 = (v51 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *,0>(v9, v9 + 1, &v9[1], a2 - 1, a3);
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *,0>(v9, v9 + 1, &v9[1], &v9[1] + 1, a2 - 1, a3);
    }

    goto LABEL_11;
  }

  v54 = (*(a3 + 16))(*(*a3 + 8 + 24 * v9->u32[1] + 16), *(*a3 + 8 + 24 * v9->u32[0] + 16));
  result = (*(a3 + 16))(*(*a3 + 8 + 24 * *(a2 - 1) + 16), *(*a3 + 8 + 24 * v9->u32[1] + 16));
  if (v54 < 0)
  {
    v57 = v9->i32[0];
    if ((result & 0x80000000) != 0)
    {
      v9->i32[0] = *(a2 - 1);
      *(a2 - 1) = v57;
      return result;
    }

    v9->i32[0] = v9->i32[1];
    v9->i32[1] = v57;
    result = (*(a3 + 16))(*(*a3 + 8 + 24 * *(a2 - 1) + 16), *(*a3 + 8 + 24 * v57 + 16));
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v56 = v9->u32[1];
    v9->i32[1] = *(a2 - 1);
LABEL_78:
    *(a2 - 1) = v56;
    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    v55 = v9->u32[1];
    v9->i32[1] = *(a2 - 1);
    *(a2 - 1) = v55;
    result = (*(a3 + 16))(*(*a3 + 8 + 24 * v9->u32[1] + 16), *(*a3 + 8 + 24 * v9->u32[0] + 16));
    if ((result & 0x80000000) != 0)
    {
      *v9 = vrev64_s32(*v9);
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v10 = (*(a5 + 16))(*(*a5 + 8 + 24 * *a2 + 16), *(*a5 + 8 + 24 * *a1 + 16));
  v11 = (*(a5 + 16))(*(*a5 + 8 + 24 * *a3 + 16), *(*a5 + 8 + 24 * *a2 + 16));
  if (v10 < 0)
  {
    v14 = *a1;
    if (v11 < 0)
    {
      *a1 = *a3;
      *a3 = v14;
    }

    else
    {
      *a1 = *a2;
      *a2 = v14;
      if (((*(a5 + 16))(*(*a5 + 8 + 24 * *a3 + 16), *(*a5 + 8 + 24 * v14 + 16)) & 0x80000000) != 0)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11 < 0)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    if (((*(a5 + 16))(*(*a5 + 8 + 24 * *a2 + 16), *(*a5 + 8 + 24 * *a1 + 16)) & 0x80000000) != 0)
    {
      v13 = *a1;
      *a1 = *a2;
      *a2 = v13;
    }
  }

  result = (*(a5 + 16))(*(*a5 + 8 + 24 * *a4 + 16), *(*a5 + 8 + 24 * *a3 + 16));
  if ((result & 0x80000000) != 0)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*(a5 + 16))(*(*a5 + 8 + 24 * *a3 + 16), *(*a5 + 8 + 24 * *a2 + 16));
    if ((result & 0x80000000) != 0)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*(a5 + 16))(*(*a5 + 8 + 24 * *a2 + 16), *(*a5 + 8 + 24 * *a1 + 16));
      if ((result & 0x80000000) != 0)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *,0>(a1, a2, a3, a4, a6);
  result = (*(a6 + 16))(*(*a6 + 8 + 24 * *a5 + 16), *(*a6 + 8 + 24 * *a4 + 16));
  if ((result & 0x80000000) != 0)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    result = (*(a6 + 16))(*(*a6 + 8 + 24 * *a4 + 16), *(*a6 + 8 + 24 * *a3 + 16));
    if ((result & 0x80000000) != 0)
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      result = (*(a6 + 16))(*(*a6 + 8 + 24 * *a3 + 16), *(*a6 + 8 + 24 * *a2 + 16));
      if ((result & 0x80000000) != 0)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
        result = (*(a6 + 16))(*(*a6 + 8 + 24 * *a2 + 16), *(*a6 + 8 + 24 * *a1 + 16));
        if ((result & 0x80000000) != 0)
        {
          v16 = *a1;
          *a1 = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *>(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 4);
    if ((result + 4) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*(a3 + 16))(*(*a3 + 8 + 24 * v9 + 16), *(*a3 + 8 + 24 * v10 + 16));
        if ((result & 0x80000000) != 0)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 4) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*(a3 + 16))(*(*a3 + 8 + 24 * v11 + 16), *(*a3 + 8 + 24 * *(v4 + v12 - 4) + 16));
            v12 -= 4;
            if ((result & 0x80000000) == 0)
            {
              v13 = (v4 + v12 + 4);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 4;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *>(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 4); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*(a3 + 16))(*(*a3 + 8 + 24 * v7 + 16), *(*a3 + 8 + 24 * v8 + 16));
      if ((result & 0x80000000) != 0)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*(a3 + 16))(*(*a3 + 8 + 24 * v9 + 16), *(*a3 + 8 + 24 * *(v11 - 2) + 16));
        }

        while ((result & 0x80000000) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  if (((*(a3 + 16))(*(*a3 + 8 + 24 * *a1 + 16), *(*a3 + 8 + 24 * *(a2 - 1) + 16)) & 0x80000000) != 0)
  {
    v8 = a1;
    do
    {
      v9 = v8[1];
      ++v8;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 24 * v6 + 16), *(*a3 + 8 + 24 * v9 + 16)) & 0x80000000) == 0);
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v8 = v7;
      if (v7 >= v4)
      {
        break;
      }

      ++v7;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 24 * v6 + 16), *(*a3 + 8 + 24 * *v8 + 16)) & 0x80000000) == 0);
  }

  if (v8 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 24 * v6 + 16), *(*a3 + 8 + 24 * v10 + 16)) & 0x80000000) != 0);
  }

  while (v8 < v4)
  {
    v11 = *v8;
    *v8 = *v4;
    *v4 = v11;
    do
    {
      v12 = v8[1];
      ++v8;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 24 * v6 + 16), *(*a3 + 8 + 24 * v12 + 16)) & 0x80000000) == 0);
    do
    {
      v13 = *--v4;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 24 * v6 + 16), *(*a3 + 8 + 24 * v13 + 16)) & 0x80000000) != 0);
  }

  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 1) = v6;
  return v8;
}

unsigned int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*(a3 + 16))(*(*a3 + 8 + 24 * a1[++v6] + 16), *(*a3 + 8 + 24 * v7 + 16));
  }

  while (v8 < 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 24 * v12 + 16), *(*a3 + 8 + 24 * v7 + 16)) & 0x80000000) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (((*(a3 + 16))(*(*a3 + 8 + 24 * v11 + 16), *(*a3 + 8 + 24 * v7 + 16)) & 0x80000000) == 0);
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*(a3 + 16))(*(*a3 + 8 + 24 * v16 + 16), *(*a3 + 8 + 24 * v7 + 16)) & 0x80000000) != 0);
      do
      {
        v17 = *--v14;
      }

      while (((*(a3 + 16))(*(*a3 + 8 + 24 * v17 + 16), *(*a3 + 8 + 24 * v7 + 16)) & 0x80000000) == 0);
    }

    while (v13 < v14);
    v10 = (v13 - 1);
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = (*(a3 + 16))(*(*a3 + 8 + 24 * a1[1] + 16), *(*a3 + 8 + 24 * *a1 + 16));
        v9 = (*(a3 + 16))(*(*a3 + 8 + 24 * *(a2 - 1) + 16), *(*a3 + 8 + 24 * a1[1] + 16));
        if ((v8 & 0x80000000) == 0)
        {
          if (v9 < 0)
          {
            v10 = a1[1];
            a1[1] = *(a2 - 1);
            *(a2 - 1) = v10;
            if (((*(a3 + 16))(*(*a3 + 8 + 24 * a1[1] + 16), *(*a3 + 8 + 24 * *a1 + 16)) & 0x80000000) != 0)
            {
              *a1 = vrev64_s32(*a1);
            }
          }

          return 1;
        }

        v17 = *a1;
        if (v9 < 0)
        {
          *a1 = *(a2 - 1);
          *(a2 - 1) = v17;
          return 1;
        }

        *a1 = a1[1];
        a1[1] = v17;
        if (((*(a3 + 16))(*(*a3 + 8 + 24 * *(a2 - 1) + 16), *(*a3 + 8 + 24 * v17 + 16)) & 0x80000000) != 0)
        {
          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if (((*(a3 + 16))(*(*a3 + 8 + 24 * *(a2 - 1) + 16), *(*a3 + 8 + 24 * *a1 + 16)) & 0x80000000) != 0)
      {
        v7 = *a1;
        *a1 = *(a2 - 1);
LABEL_6:
        *(a2 - 1) = v7;
        return 1;
      }

      return 1;
    }
  }

  v11 = (*(a3 + 16))(*(*a3 + 8 + 24 * a1[1] + 16), *(*a3 + 8 + 24 * *a1 + 16));
  v12 = a1 + 2;
  v13 = (*(a3 + 16))(*(*a3 + 8 + 24 * a1[2] + 16), *(*a3 + 8 + 24 * a1[1] + 16));
  if (v11 < 0)
  {
    v18 = *a1;
    if (v13 < 0)
    {
      *a1 = a1[2];
      a1[2] = v18;
    }

    else
    {
      v19 = a1[2];
      *a1 = a1[1];
      a1[1] = v18;
      if (((*(a3 + 16))(*(*a3 + 8 + 24 * v19 + 16), *(*a3 + 8 + 24 * v18 + 16)) & 0x80000000) != 0)
      {
        *(a1 + 1) = vrev64_s32(*(a1 + 1));
      }
    }
  }

  else if (v13 < 0)
  {
    v15 = a1[1];
    v14 = a1[2];
    v16 = *a1;
    a1[1] = v14;
    a1[2] = v15;
    if (((*(a3 + 16))(*(*a3 + 8 + 24 * v14 + 16), *(*a3 + 8 + 24 * v16 + 16)) & 0x80000000) != 0)
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v20 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v21 = 0;
  v22 = 0;
  while (1)
  {
    if (((*(a3 + 16))(*(*a3 + 8 + 24 * *v20 + 16), *(*a3 + 8 + 24 * *v12 + 16)) & 0x80000000) != 0)
    {
      v23 = *v20;
      v24 = v21;
      while (1)
      {
        *(a1 + v24 + 12) = *(a1 + v24 + 8);
        if (v24 == -8)
        {
          break;
        }

        v25 = (*(a3 + 16))(*(*a3 + 8 + 24 * v23 + 16), *(*a3 + 8 + 24 * *(a1 + v24 + 4) + 16));
        v24 -= 4;
        if ((v25 & 0x80000000) == 0)
        {
          v26 = (a1 + v24 + 12);
          goto LABEL_36;
        }
      }

      v26 = a1;
LABEL_36:
      *v26 = v23;
      if (++v22 == 8)
      {
        return v20 + 1 == a2;
      }
    }

    v12 = v20;
    v21 += 4;
    if (++v20 == a2)
    {
      return 1;
    }
  }
}

unsigned int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *,unsigned int *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (((*(a4 + 16))(*(*a4 + 8 + 24 * *v12 + 16), *(*a4 + 8 + 24 * *a1 + 16)) & 0x80000000) != 0)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v16 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v9 = (a4 - result) >> 1;
      v10 = v9 + 1;
      v11 = (result + 4 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 < a3 && (*(a2 + 16))(*(*a2 + 8 + 24 * *v11 + 16), *(*a2 + 8 + 24 * v11[1] + 16)) < 0)
      {
        ++v11;
        v10 = v12;
      }

      result = (*(a2 + 16))(*(*a2 + 8 + 24 * *v11 + 16), *(*a2 + 8 + 24 * *v5 + 16));
      if ((result & 0x80000000) == 0)
      {
        v13 = *v5;
        do
        {
          v14 = v11;
          *v5 = *v11;
          if (v16 < v10)
          {
            break;
          }

          v15 = (2 * v10) | 1;
          v11 = (v6 + 4 * v15);
          if (2 * v10 + 2 < a3 && (*(a2 + 16))(*(*a2 + 8 + 24 * *v11 + 16), *(*a2 + 8 + 24 * v11[1] + 16)) < 0)
          {
            ++v11;
            v15 = 2 * v10 + 2;
          }

          result = (*(a2 + 16))(*(*a2 + 8 + 24 * *v11 + 16), *(*a2 + 8 + 24 * v13 + 16));
          v5 = v14;
          v10 = v15;
        }

        while ((result & 0x80000000) == 0);
        *v14 = v13;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*(a2 + 16))(*(*a2 + 8 + 24 * *(v12 - 1) + 16), *(*a2 + 8 + 24 * v13 + 16)) >= 0)
      {
        v6 = v10;
      }

      else
      {
        v9 = v12;
        v6 = v11;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LHashIter<unsigned int,Trie<unsigned int,unsigned int>> &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 4 * (v4 >> 1));
    v9 = (a2 - 4);
    result = (*(a3 + 16))(*(*a3 + 8 + 24 * *v8 + 16), *(*a3 + 8 + 24 * *(a2 - 4) + 16));
    if ((result & 0x80000000) != 0)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 4 * v7);
        result = (*(a3 + 16))(*(*a3 + 8 + 24 * *v8 + 16), *(*a3 + 8 + 24 * v10 + 16));
        v9 = v11;
      }

      while ((result & 0x80000000) != 0);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t Array<char const**>::operator[](int *a1, uint64_t a2)
{
  v2 = a2 - *a1;
  if (v2 >= a1[1])
  {
    a1[1] = v2 + 1;
    if (v2 >= a1[4])
    {
      Array<char const**>::alloc();
    }
  }

  return *(a1 + 1) + 8 * v2;
}

uint64_t quasar::getLmScoreType(uint64_t a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v1 = *(a1 + 23);
    if (v1 != 7)
    {
      v2 = a1;
      if (v1 != 9)
      {
        if (v1 != 10)
        {
          goto LABEL_37;
        }

        if (*a1 != 0x7270676F6C67656ELL || *(a1 + 8) != 25199)
        {
          goto LABEL_37;
        }

        return 0;
      }

      goto LABEL_30;
    }

    if (*a1 != 1885826924 || *(a1 + 3) != 1651470960)
    {
LABEL_37:
      memset(v18, 0, sizeof(v18));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Unknown LM score type ", 23);
      v13 = *(a1 + 23);
      if (v13 >= 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      if (v13 >= 0)
      {
        v15 = *(a1 + 23);
      }

      else
      {
        v15 = *(a1 + 8);
      }

      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v18);
    }

    return 1;
  }

  if (*(a1 + 8) == 10 && **a1 == 0x7270676F6C67656ELL && *(*a1 + 8) == 25199)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5 != 9)
  {
    if (v5 != 7)
    {
      goto LABEL_37;
    }

    if (**a1 != 1885826924 || *(*a1 + 3) != 1651470960)
    {
      goto LABEL_37;
    }

    return 1;
  }

  v2 = *a1;
LABEL_30:
  v9 = *v2;
  v10 = *(v2 + 8);
  if (v9 != 0x6F72703031676F6CLL || v10 != 98)
  {
    goto LABEL_37;
  }

  return 2;
}

_BYTE *quasar::getLmScoreType@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 >= 3)
  {
    memset(v4, 0, sizeof(v4));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Coding error");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v4);
  }

  v2 = off_1E7C1A750[a1];

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void quasar::LmInfo::getScoresFromTokenList(uint64_t a1, const void **a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 8);
  for (i = *(a1 + 16); v4 != i; v4 += 88)
  {
    LODWORD(v12[0]) = *(v4 + 24);
    std::vector<int>::push_back[abi:ne200100](a2, v12);
    if (*(v4 + 37) == 1)
    {
      v9 = *a4;
      v10 = *a3;
      if (*a4 >= ((a3[1] - *a3) >> 2))
      {
        memset(v12, 0, sizeof(v12));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "wrong dimensionality of logScores vector");
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v12);
      }

      v11 = *(v4 + 32);
      *a4 = v9 + 1;
      *(v10 + 4 * v9) = v11;
    }
  }
}

uint64_t quasar::CorpusStats::addUtterance(quasar::CorpusStats *this, quasar::LmInfo *a2)
{
  std::vector<quasar::LmInfo>::push_back[abi:ne200100](this + 9, a2);
  if (*(a2 + 72) != 1)
  {
    goto LABEL_25;
  }

  if (*(*(a2 + 2) - 64))
  {
    v4 = quasar::gLogLevel < 2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    memset(v24, 0, sizeof(v24));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "utterance doesn't end with sentence-end symbol(", 47);
    v6 = MEMORY[0x1B8C84C60](v5, *(*(a2 + 2) - 64));
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ":", 1);
    v8 = *(a2 + 2);
    v11 = *(v8 - 88);
    v9 = v8 - 88;
    v10 = v11;
    v12 = *(v9 + 23);
    if (v12 >= 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }

    if (v12 >= 0)
    {
      v14 = *(v9 + 23);
    }

    else
    {
      v14 = *(v9 + 8);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ")", 1);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(v24);
  }

  if (*(a2 + 36) == 1)
  {
    ++*(this + 2);
    *(this + 1) = *(this + 1) + *(a2 + 8);
    v16 = *(a2 + 1);
    v17 = *(a2 + 2);
    if (v16 == v17)
    {
      goto LABEL_23;
    }

    v18 = 1;
    do
    {
      v19 = *(v16 + 37);
      if (v19)
      {
        v20 = 24;
      }

      else
      {
        v20 = 40;
      }

      ++*(this + v20);
      if (*(v16 + 36) == 1)
      {
        ++*(this + 4);
      }

      v18 &= v19;
      v16 += 88;
    }

    while (v16 != v17);
    if (v18)
    {
LABEL_23:
      quasar::CorpusStats::updateNgramHits(this, a2);
    }

    result = 1;
    v22 = -1;
    v23 = 24;
  }

  else
  {
LABEL_25:
    result = 0;
    v22 = 1;
    v23 = 48;
  }

  *(this + v23) += v22;
  return result;
}

uint64_t std::vector<quasar::LmInfo>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::LmInfo>::__emplace_back_slow_path<quasar::LmInfo const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::LmInfo>::__construct_one_at_end[abi:ne200100]<quasar::LmInfo const&>(a1, a2);
    result = v3 + 104;
  }

  a1[1] = result;
  return result;
}

void quasar::CorpusStats::updateNgramHits(quasar::CorpusStats *this, const quasar::LmInfo *a2)
{
  v4 = *(a2 + 10);
  v5 = *(a2 + 11);
  v6 = a2 + 80;
  if (v4 != v5)
  {
    v9 = *(this + 12);
    v10 = *(this + 13);
    v8 = this + 96;
    if (v9 == v10)
    {
      v11 = v9;
      if (v8 != v6)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v8, v4, v5, (v5 - v4) >> 2);
        v9 = *(this + 12);
        v11 = *(this + 13);
      }

      std::vector<std::vector<int>>::resize(this + 15, (v11 - v9) >> 2);
      v9 = *(this + 12);
      v10 = *(this + 13);
      if (v10 != v9)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          std::vector<double>::resize((*(this + 15) + v12), *&v9[4 * v13++] + 1);
          v9 = *(this + 12);
          v10 = *(this + 13);
          v12 += 24;
        }

        while (v13 < (v10 - v9) >> 2);
      }
    }

    v14 = v10 - v9;
    v15 = *(a2 + 10);
    if (v10 - v9 != *(a2 + 11) - v15 || memcmp(v9, v15, v10 - v9))
    {
      if (quasar::gLogLevel < 2)
      {
        return;
      }

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
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "Ngram orders from previous utterances inconsistent with ones from current utterance", 83);
      goto LABEL_12;
    }

    v16 = *(a2 + 1);
    v17 = *(a2 + 2);
    if (v16 == v17)
    {
LABEL_18:
      if (v10 != v9)
      {
        v19 = 0;
        v20 = v14 >> 2;
        if ((v14 >> 2) <= 1)
        {
          v20 = 1;
        }

        do
        {
          v21 = *&v9[4 * v19];
          if (v21 && v16 != v17)
          {
            v22 = (*(this + 15) + 24 * v19);
            LODWORD(v23) = 1;
            v24 = v16;
            do
            {
              if (v21 >= v23 + 1)
              {
                v25 = v23 + 1;
              }

              else
              {
                v25 = v21;
              }

              v23 = (v25 - *(*(v24 + 64) + 4 * v19));
              if ((v23 & 0x80000000) == 0 && v23 < (v22[1] - *v22) >> 3)
              {
                ++*(*v22 + 8 * v23);
              }

              v24 += 88;
            }

            while (v24 != v17);
          }

          ++v19;
        }

        while (v19 != v20);
      }
    }

    else
    {
      v18 = *(a2 + 1);
      while (*(v18 + 72) - *(v18 + 64) == v14)
      {
        v18 += 88;
        if (v18 == v17)
        {
          goto LABEL_18;
        }
      }

      if (quasar::gLogLevel >= 2)
      {
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
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "Unexpected number of backoffs: ", 31);
        v27 = MEMORY[0x1B8C84C30](v26, (*(v18 + 72) - *(v18 + 64)) >> 2);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " vs ", 4);
        MEMORY[0x1B8C84C30](v28, (*(this + 13) - *(this + 12)) >> 2);
LABEL_12:
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&v29);
      }
    }
  }
}

double quasar::CorpusStats::getPerplexity(quasar::CorpusStats *this, int a2)
{
  v2 = *(this + 3);
  if (a2)
  {
    v2 += *(this + 2);
  }

  result = 1.0e21;
  if (v2 && (*(this + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = *(this + 1) / v2;
    v5 = *this;
    if (*this == 2)
    {
      result = __exp10(-v4);
    }

    else
    {
      if (v5 == 1)
      {
        v4 = -v4;
      }

      else if (v5)
      {
        memset(v6, 0, sizeof(v6));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "Coding error");
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v6);
      }

      result = exp(v4);
    }

    if (result > 1.0e20)
    {
      return 1.0e20;
    }
  }

  return result;
}

BOOL quasar::CorpusStats::computePerplexity(quasar::CorpusStats *this)
{
  Perplexity = quasar::CorpusStats::getPerplexity(this, 1);
  *(this + 7) = Perplexity;
  if (Perplexity == 1.0e21)
  {
    return 0;
  }

  v4 = quasar::CorpusStats::getPerplexity(this, 0);
  *(this + 8) = v4;
  return v4 != 1.0e21;
}

void quasar::CorpusStats::Ptree(quasar::CorpusStats *this@<X0>, int a2@<W1>, quasar::PTree *a3@<X8>)
{
  quasar::PTree::PTree(a3);
  std::string::basic_string[abi:ne200100]<0>(v44, "utterances");
  v6 = *(this + 2);
  LODWORD(v26[0]) = quasar::getType(v6);
  std::to_string((v26 + 8), v6);
  v27 = 0uLL;
  *&v28 = 0;
  BYTE8(v28) = 1;
  quasar::PTree::putChild(a3, v44, v26, 1);
  quasar::PTree::~PTree(v26);
  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v44, "words");
  v7 = *(this + 3);
  LODWORD(v26[0]) = quasar::getType(v7);
  std::to_string((v26 + 8), v7);
  v27 = 0uLL;
  *&v28 = 0;
  BYTE8(v28) = 1;
  quasar::PTree::putChild(a3, v44, v26, 1);
  quasar::PTree::~PTree(v26);
  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v44, "OOVs");
  v8 = *(this + 4);
  LODWORD(v26[0]) = quasar::getType(v8);
  std::to_string((v26 + 8), v8);
  v27 = 0uLL;
  *&v28 = 0;
  BYTE8(v28) = 1;
  quasar::PTree::putChild(a3, v44, v26, 1);
  quasar::PTree::~PTree(v26);
  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v44, "invalidTokens");
  v9 = *(this + 5);
  LODWORD(v26[0]) = quasar::getType(v9);
  std::to_string((v26 + 8), v9);
  v27 = 0uLL;
  *&v28 = 0;
  BYTE8(v28) = 1;
  quasar::PTree::putChild(a3, v44, v26, 1);
  quasar::PTree::~PTree(v26);
  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v44, "invalidUtterances");
  v10 = *(this + 6);
  LODWORD(v26[0]) = quasar::getType(v10);
  std::to_string((v26 + 8), v10);
  v27 = 0uLL;
  *&v28 = 0;
  BYTE8(v28) = 1;
  quasar::PTree::putChild(a3, v44, v26, 1);
  quasar::PTree::~PTree(v26);
  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v44, "scoreType");
  quasar::getLmScoreType(*this, v42);
  quasar::PTree::PTree(v26, v42);
  quasar::PTree::putChild(a3, v44, v26, 1);
  quasar::PTree::~PTree(v26);
  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
    if (!a2)
    {
      goto LABEL_19;
    }
  }

  else if (!a2)
  {
    goto LABEL_19;
  }

  v11 = std::string::basic_string[abi:ne200100]<0>(v44, "logProb");
  v12 = *(this + 1);
  LODWORD(v26[0]) = quasar::getType(v11, *&v12);
  std::to_string((v26 + 8), v12);
  v27 = 0uLL;
  *&v28 = 0;
  BYTE8(v28) = 1;
  quasar::PTree::putChild(a3, v44, v26, 1);
  quasar::PTree::~PTree(v26);
  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

LABEL_19:
  v13 = *(this + 7);
  if (v13 == 1.0e21)
  {
    v14 = quasar::CorpusStats::computePerplexity(this);
    v15 = quasar::gLogLevel < 4 || v14;
    if ((v15 & 1) == 0)
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
      v27 = 0u;
      memset(v26, 0, sizeof(v26));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "perplexity calculation failed, words ", 37);
      v17 = MEMORY[0x1B8C84C70](v16, *(this + 3));
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " logprob = ", 11);
      MEMORY[0x1B8C84BE0](v18, *(this + 1));
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v26);
    }

    v13 = *(this + 7);
  }

  if (v13 != 1.0e21)
  {
    v19 = std::string::basic_string[abi:ne200100]<0>(v44, "PPL");
    v20 = *(this + 7);
    LODWORD(v26[0]) = quasar::getType(v19, *&v20);
    std::to_string((v26 + 8), v20);
    v27 = 0uLL;
    *&v28 = 0;
    BYTE8(v28) = 1;
    quasar::PTree::putChild(a3, v44, v26, 1);
    quasar::PTree::~PTree(v26);
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    v21 = std::string::basic_string[abi:ne200100]<0>(v44, "PPL1");
    v22 = *(this + 8);
    LODWORD(v26[0]) = quasar::getType(v21, *&v22);
    std::to_string((v26 + 8), v22);
    v27 = 0uLL;
    *&v28 = 0;
    BYTE8(v28) = 1;
    quasar::PTree::putChild(a3, v44, v26, 1);
    quasar::PTree::~PTree(v26);
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }
  }

  v23 = *(this + 15);
  v24 = *(this + 16);
  v25 = (this + 120);
  if (v23 != v24)
  {
    std::string::basic_string[abi:ne200100]<0>(v44, "ngramHits");
    quasar::vec2dToPtree<unsigned long long>(v25, v26);
    quasar::PTree::putChild(a3, v44, v26, 1);
    quasar::PTree::~PTree(v26);
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }
  }
}

void quasar::vec2dToPtree<unsigned long long>(quasar ****a1@<X0>, quasar::PTree *a2@<X8>)
{
  quasar::PTree::PTree(a2);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      quasar::PTree::PTree(v15);
      v6 = *v4;
      v7 = v4[1];
      while (v6 != v7)
      {
        v8 = *v6;
        Type = quasar::getType(*v6);
        std::to_string(&v10, v8);
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1;
        quasar::PTree::addChild(v15, &Type);
        quasar::PTree::~PTree(&Type);
        ++v6;
      }

      quasar::PTree::addChild(a2, v15);
      quasar::PTree::~PTree(v15);
      v4 += 3;
    }

    while (v4 != v5);
  }
}

void sub_1B522D50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  quasar::PTree::~PTree(va);
  quasar::PTree::~PTree(v9);
  _Unwind_Resume(a1);
}

void quasar::CorpusStats::print(quasar::CorpusStats *this)
{
  if (quasar::gLogLevel >= 4)
  {
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
    v21 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v21);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Computed perplexity for ", 24);
    v3 = MEMORY[0x1B8C84C70](v2, *(this + 2));
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " sentences, ", 12);
    v5 = MEMORY[0x1B8C84C70](v4, *(this + 3));
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " words, ", 8);
    v7 = MEMORY[0x1B8C84C70](v6, *(this + 4));
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " OOVs, ", 7);
    v9 = MEMORY[0x1B8C84C70](v8, *(this + 5));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " invalid tokens, ", 17);
    v11 = MEMORY[0x1B8C84C70](v10, *(this + 6));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " invalid utterances", 19);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v21);
  }

  if (*(this + 7) == 1.0e21)
  {
    v12 = quasar::CorpusStats::computePerplexity(this);
    v13 = quasar::gLogLevel;
    if (v12 || quasar::gLogLevel < 4)
    {
      goto LABEL_8;
    }

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
    v21 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v21);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "logprob = ", 10);
    v15 = MEMORY[0x1B8C84BE0](v14, *(this + 1));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "perplexity calculation failed", 29);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v21);
  }

  v13 = quasar::gLogLevel;
LABEL_8:
  if (v13 >= 4)
  {
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
    v21 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v21);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "logprob = ", 10);
    v17 = MEMORY[0x1B8C84BE0](v16, *(this + 1));
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " ppl = ", 7);
    v19 = MEMORY[0x1B8C84BE0](v18, *(this + 7));
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " ppl1 = ", 8);
    MEMORY[0x1B8C84BE0](v20, *(this + 8));
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v21);
  }
}

uint64_t quasar::CorpusStats::collectLogScores(uint64_t **a1, uint64_t **a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v7 = *a1;
  v6 = a1[1];
  v8 = **a1;
  v9 = *v8;
  if (*a1 == v6)
  {
LABEL_8:
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 8) = 0u;
    __sz = 0;
    v14 = v8 + 18;
    v13 = *(v8 + 9);
    if (*(v14 + 1) != v13)
    {
      v85 = v9;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = v13 + 104 * v15;
        v18 = (v17 + 40);
        if (quasar::gLogLevel >= 6)
        {
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
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v100 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "aligning scores of utterance ", 29);
          v20 = *(v17 + 63);
          if (v20 >= 0)
          {
            v21 = v17 + 40;
          }

          else
          {
            v21 = *(v17 + 40);
          }

          if (v20 >= 0)
          {
            v22 = *(v17 + 63);
          }

          else
          {
            v22 = *(v17 + 48);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(&v100);
          v7 = *v5;
        }

        v90 = v16;
        v91 = v17;
        v23 = *(v17 + 36);
        v24 = (v5[1] - v7) >> 3;
        if (v24 >= 2)
        {
          v25 = *(v17 + 63);
          if (v25 >= 0)
          {
            v26 = *(v17 + 63);
          }

          else
          {
            v26 = *(v17 + 48);
          }

          v27 = 2;
          v28 = 1;
          while (1)
          {
            v29 = *(*&v7[8 * v28] + 72) + 104 * v15;
            v30 = *(v29 + 63);
            v31 = v30;
            if ((v30 & 0x80u) != 0)
            {
              v30 = *(v29 + 48);
            }

            if (v26 != v30 || (v25 >= 0 ? (v32 = (v17 + 40)) : (v32 = *v18), v31 >= 0 ? (v33 = (v29 + 40)) : (v33 = *(v29 + 40)), memcmp(v32, v33, v26)))
            {
              if (quasar::gLogLevel < 2)
              {
                return 0;
              }

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
              v105 = 0u;
              v106 = 0u;
              v103 = 0u;
              v104 = 0u;
              v101 = 0u;
              v102 = 0u;
              v100 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
              v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Utterance ", 10);
              v57 = *(v29 + 63);
              if (v57 >= 0)
              {
                v58 = v29 + 40;
              }

              else
              {
                v58 = *(v29 + 40);
              }

              if (v57 >= 0)
              {
                v59 = *(v29 + 63);
              }

              else
              {
                v59 = *(v29 + 48);
              }

              v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v58, v59);
              v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " doesn't match ", 15);
              v62 = *(v17 + 63);
              if (v62 >= 0)
              {
                v63 = v17 + 40;
              }

              else
              {
                v63 = *(v17 + 40);
              }

              if (v62 >= 0)
              {
                v64 = *(v17 + 63);
              }

              else
              {
                v64 = *(v17 + 48);
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v63, v64);
              goto LABEL_118;
            }

            if (*(v29 + 36) != v23)
            {
              break;
            }

            v28 = v27;
            if (v24 <= v27++)
            {
              goto LABEL_35;
            }
          }

          if (quasar::gLogLevel < 2)
          {
            return 0;
          }

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
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v100 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
          v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Utterance ", 10);
          v75 = *(v17 + 63);
          if (v75 >= 0)
          {
            v76 = v17 + 40;
          }

          else
          {
            v76 = *(v17 + 40);
          }

          if (v75 >= 0)
          {
            v77 = *(v17 + 63);
          }

          else
          {
            v77 = *(v17 + 48);
          }

          v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v76, v77);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, " doesn't match isValidScore", 27);
LABEL_118:
          quasar::QuasarWarnMessage::~QuasarWarnMessage(&v100);
          return 0;
        }

LABEL_35:
        if (!v23)
        {
          v4 = a2;
          v3 = a3;
          ++*(a3 + 48);
          v5 = a1;
          v54 = v90;
          goto LABEL_71;
        }

        v4 = a2;
        v3 = a3;
        ++*(a3 + 16);
        __p = 0;
        v97 = 0;
        v98 = 0;
        v35 = __sz;
        quasar::LmInfo::getScoresFromTokenList(v17, &__p, *a2, &__sz);
        v5 = a1;
        v36 = *a1;
        v37 = __sz;
        if ((a1[1] - *a1) < 9)
        {
          goto LABEL_65;
        }

        v89 = __sz;
        v38 = 1;
        v39 = 2;
        v40 = 1;
        do
        {
          v94 = 0;
          v95 = v35;
          __s2 = 0;
          v93 = 0;
          quasar::LmInfo::getScoresFromTokenList(*(*&v36[8 * v38] + 72) + 104 * v15, &__s2, &(*a2)[3 * v38], &v95);
          if (!memcmp(__p, __s2, v97 - __p))
          {
            if (v95 == v89)
            {
              v46 = 1;
              goto LABEL_59;
            }

            if (quasar::gLogLevel >= 5)
            {
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
              v105 = 0u;
              v106 = 0u;
              v103 = 0u;
              v104 = 0u;
              v101 = 0u;
              v102 = 0u;
              v100 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
              v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Utterance ", 10);
              v48 = *(v91 + 63);
              if (v48 >= 0)
              {
                v49 = v18;
              }

              else
              {
                v49 = *(v91 + 40);
              }

              if (v48 >= 0)
              {
                v50 = *(v91 + 63);
              }

              else
              {
                v50 = *(v91 + 48);
              }

              v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v49, v50);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, " has non-matching number of token scores", 40);
              goto LABEL_57;
            }
          }

          else if (quasar::gLogLevel >= 5)
          {
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
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v100 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
            v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Utterance ", 10);
            v42 = *(v91 + 63);
            if (v42 >= 0)
            {
              v43 = v18;
            }

            else
            {
              v43 = *(v91 + 40);
            }

            if (v42 >= 0)
            {
              v44 = *(v91 + 63);
            }

            else
            {
              v44 = *(v91 + 48);
            }

            v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " has non-matching token ids", 27);
LABEL_57:
            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v100);
          }

          v40 = 0;
          v46 = 0;
LABEL_59:
          if (__s2)
          {
            v93 = __s2;
            operator delete(__s2);
          }

          if ((v46 & 1) == 0)
          {
            break;
          }

          v38 = v39;
          v36 = *a1;
          ++v39;
        }

        while (v38 < a1[1] - *a1);
        if (v40)
        {
          v37 = __sz;
LABEL_65:
          v52 = __p;
          v53 = *(a3 + 32) - (v37 - v35) + ((v97 - __p) >> 2);
          *(a3 + 24) = v37 - v35 + *(a3 + 24) - 1;
          *(a3 + 32) = v53;
        }

        else
        {
          __sz = v35;
          v52 = __p;
        }

        v54 = v90;
        if (v52)
        {
          v97 = v52;
          operator delete(v52);
        }

        v7 = *a1;
LABEL_71:
        v15 = (v54 + 1);
        v13 = *(*v7 + 72);
        v16 = v54 + 1;
        if (0x4EC4EC4EC4EC4EC5 * ((*(*v7 + 80) - v13) >> 3) <= v15)
        {
          v55 = __sz;
          v9 = v85;
          goto LABEL_88;
        }
      }
    }

    v55 = 0;
LABEL_88:
    v65 = *v4;
    if (v55 < ((*v4)[1] - **v4) >> 2)
    {
      if (quasar::gLogLevel >= 5)
      {
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
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v100 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
        v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "dimensionality of logScores was chosen too big: ", 48);
        v67 = MEMORY[0x1B8C84C30](v66, ((*v4)[1] - **v4) >> 2);
        v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " vs. ", 5);
        MEMORY[0x1B8C84C30](v68, v55);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v100);
        v65 = *v4;
      }

      v69 = v4[1];
      while (v65 != v69)
      {
        std::vector<int>::resize(v65++, v55);
      }
    }

    if (*(v3 + 16) + *(v3 + 24) == v55)
    {
      switch(v9)
      {
        case 2:
          v80 = *v4;
          v81 = v4[1];
          if (*v4 != v81)
          {
            do
            {
              begin = v80->__begin_;
              end = v80->__end_;
              while (begin != end)
              {
                v84 = *begin * 2.30258509;
                *begin++ = v84;
              }

              ++v80;
            }

            while (v80 != v81);
          }

          goto LABEL_125;
        case 1:
LABEL_125:
          result = 1;
          *v3 = 1;
          return result;
        case 0:
          v70 = *v4;
          v71 = v4[1];
          while (v70 != v71)
          {
            v72 = v70->__begin_;
            v73 = v70->__end_;
            while (v72 != v73)
            {
              *v72 = -*v72;
              ++v72;
            }

            ++v70;
          }

          goto LABEL_125;
      }

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
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v100, "unsupported LmScoreType");
    }

    else
    {
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
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v100, "number of collected tokens and utterances inconsistent");
    }

    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v100);
  }

  v10 = 1;
  v11 = *a1;
  while (1)
  {
    if ((v10 & 1) == 0)
    {
      v12 = *v11;
      if (**v11 != v9)
      {
        if (quasar::gLogLevel >= 2)
        {
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
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v100 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Score types do not match", 24);
          goto LABEL_118;
        }

        return 0;
      }

      if (*(v12 + 2) != *(v8 + 2))
      {
        if (quasar::gLogLevel >= 2)
        {
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
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v100 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Number of utterances don't match", 32);
          goto LABEL_118;
        }

        return 0;
      }

      if (*(v12 + 3) != *(v8 + 3))
      {
        break;
      }
    }

    v10 = 0;
    v11 += 8;
    if (v11 == v6)
    {
      goto LABEL_8;
    }
  }

  if (quasar::gLogLevel >= 2)
  {
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
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Number of tokens don't match", 28);
    goto LABEL_118;
  }

  return 0;
}