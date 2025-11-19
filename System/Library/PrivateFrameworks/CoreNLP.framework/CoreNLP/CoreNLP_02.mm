void CoreNLP::KDTree::~KDTree(uint64_t **this)
{
  v2 = *this;
  v3 = this[1];
  if (*this != v3)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        v5 = *(v4 + 16);
        if (v5)
        {
          *(v4 + 24) = v5;
          operator delete(v5);
        }

        MEMORY[0x19EAF8CA0](v4, 0x1080C4054FDDD16);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *this;
    this[1] = *this;
  }

  v6 = this[5];
  if (v6)
  {
    this[6] = v6;
    operator delete(v6);
    v2 = *this;
  }

  if (v2)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>((a2 + 4));

    operator delete(a2);
  }
}

CoreNLP *NLTaggerSetLocaleForRange(CoreNLP *result, void *a2, CFIndex a3, CFIndex a4)
{
  if (result)
  {
    v7 = CoreNLP::unwrapGazetteer(result, a2);
    v8.location = a3;
    v8.length = a4;

    return CoreNLP::TaggerManager::setLocaleForRange(v7, a2, v8);
  }

  return result;
}

uint64_t CoreNLP::CompositeTagger::setLocaleForRange(CoreNLP::CompositeTagger *this, const __CFLocale *a2, CFRange a3)
{
  v5 = *(this + 2);
  *(v5 + 36) = CoreNLP::getLocaleLanguage(a2, a2);
  v6 = *(this + 2);

  return CoreNLP::TaggerContext::setLocale(v6, a2);
}

uint64_t CoreNLP::TaggerManager::setLocaleForRange(uint64_t this, const __CFLocale *a2, CFRange a3)
{
  if ((*(this + 57) & 1) == 0)
  {
    return CoreNLP::CompositeTagger::setLocaleForRange(*(this + 40), a2, a3);
  }

  return this;
}

void LanguageIdentifierModel::LanguageIdentifierModel(LanguageIdentifierModel *this)
{
  *this = 0x1C0000001CLL;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
}

void NLLanguageIdentifierConsumeString(LanguageIdentifierModel *a1, CFStringRef theString, CFIndex a3, CFIndex a4)
{
  if (a1 && theString && a4)
  {
    if (a4 == CFStringGetLength(theString))
    {

      LanguageIdentifierModel::setString(a1, theString);
    }

    else
    {
      v10.location = a3;
      v10.length = a4;
      v8 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], theString, v10);
      LanguageIdentifierModel::setString(a1, v8);

      CFRelease(v8);
    }
  }
}

CFStringRef NLScriptDetector::setString(CFStringRef this, const __CFString *a2)
{
  if (a2)
  {
    p_isa = &this->isa;
    this = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
    *p_isa = this;
  }

  return this;
}

uint64_t NLScriptDetector::getDominantScript(const __CFString **this)
{
  v1 = *this;
  if (*this)
  {
    v19 = this;
    Length = CFStringGetLength(v1);
    v21 = 0u;
    v22 = 0u;
    v23 = 1065353216;
    std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::__rehash<true>(&v21, 0x1DuLL);
    v20 = 0;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 1;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 2;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 3;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 4;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 5;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 6;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 7;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 8;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 9;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 10;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 11;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 12;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 13;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 14;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 15;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 16;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 17;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 18;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 19;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 20;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 21;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 22;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 23;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 24;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 25;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 26;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 27;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    v20 = 28;
    v24 = &v20;
    *(std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20) + 5) = 0;
    if (Length >= 1)
    {
      v3 = 0;
      while (1)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(v1, v3);
        v5 = CharacterAtIndex;
        if (((CharacterAtIndex & 0xFFDF) - 65) <= 0x19u)
        {
          goto LABEL_5;
        }

        if (CharacterAtIndex <= 0x2E && ((1 << CharacterAtIndex) & 0x708000000000) != 0 || CharacterAtIndex == 173 || CharacterAtIndex - 48 < 0xA || (CharacterAtIndex - 188) <= 2u || CharacterAtIndex < 0x20 || (CharacterAtIndex - 127) <= 0x20u || CharacterAtIndex < 0xC0 || (CharacterAtIndex & 0xFFDF) == 0xD7)
        {
          goto LABEL_9;
        }

        if (CharacterAtIndex <= 0x2AF)
        {
          goto LABEL_5;
        }

        if (CharacterAtIndex <= 0x36F)
        {
          goto LABEL_9;
        }

        if (CharacterAtIndex <= 0x3FF)
        {
          goto LABEL_26;
        }

        if (CharacterAtIndex < 0x530 || CharacterAtIndex == 7467)
        {
          v20 = 1;
          v24 = &v20;
          v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
          goto LABEL_10;
        }

        if (CharacterAtIndex < 0x590 || (CharacterAtIndex + 1261) <= 4u)
        {
          v20 = 9;
          v24 = &v20;
          v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
          goto LABEL_10;
        }

        if (CharacterAtIndex < 0x600 || (CharacterAtIndex + 1251) <= 0x32u)
        {
          v20 = 5;
          v24 = &v20;
          v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
          goto LABEL_10;
        }

        if ((CharacterAtIndex + 400) < 0x8Fu || CharacterAtIndex < 0x700 || (CharacterAtIndex + 1200) <= 0x2AFu)
        {
          v20 = 0;
          v24 = &v20;
          v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
          goto LABEL_10;
        }

        v7 = (CharacterAtIndex - 2304) >> 7;
        if (v7 > 5)
        {
          break;
        }

        if (((CharacterAtIndex - 2304) >> 7) > 2u)
        {
          switch(v7)
          {
            case 3u:
              v20 = 12;
              v24 = &v20;
              v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
              goto LABEL_10;
            case 4u:
              v20 = 13;
              v24 = &v20;
              v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
              goto LABEL_10;
            case 5u:
              v20 = 14;
              v24 = &v20;
              v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
              goto LABEL_10;
          }

          goto LABEL_68;
        }

        if ((CharacterAtIndex - 2304) >> 7)
        {
          if (v7 == 1)
          {
            v20 = 10;
          }

          else
          {
            v20 = 11;
          }

          v24 = &v20;
          v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
        }

        else
        {
          if ((CharacterAtIndex & 0x97E) == 0x964)
          {
            v20 = 28;
            v24 = &v20;
            std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
            goto LABEL_11;
          }

          v20 = 2;
          v24 = &v20;
          v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
        }

LABEL_10:
        ++*(v6 + 5);
LABEL_11:
        if (++v3 >= Length)
        {
          goto LABEL_122;
        }
      }

      if (((CharacterAtIndex - 2304) >> 7) > 8u)
      {
        switch(v7)
        {
          case 9u:
            v20 = 18;
            v24 = &v20;
            v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
            goto LABEL_10;
          case 0xAu:
            v20 = 7;
            v24 = &v20;
            v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
            goto LABEL_10;
          case 0xBu:
            v20 = 19;
            v24 = &v20;
            v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
            goto LABEL_10;
        }
      }

      else
      {
        switch(v7)
        {
          case 6u:
            v20 = 15;
            v24 = &v20;
            v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
            goto LABEL_10;
          case 7u:
            v20 = 16;
            v24 = &v20;
            v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
            goto LABEL_10;
          case 8u:
            v20 = 17;
            v24 = &v20;
            v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
            goto LABEL_10;
        }
      }

LABEL_68:
      if (((CharacterAtIndex + 21504) >> 10) < 0xBu || (v8 = CharacterAtIndex & 0xFF00, v8 == 4352) || (CharacterAtIndex - 12593) <= 0x5Du)
      {
        v20 = 8;
        v24 = &v20;
        v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
        goto LABEL_10;
      }

      v9 = vdup_n_s16(CharacterAtIndex);
      if (vmaxv_u16(vcgt_u16(0xFC006002007180, vadd_s16(v9, 0x10001F00700D180))))
      {
        v20 = 3;
        v24 = &v20;
        v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
        goto LABEL_10;
      }

      if (CharacterAtIndex - 8204 < 6 || CharacterAtIndex == 8217 || CharacterAtIndex - 8234 < 5 || (CharacterAtIndex & 0xFFF0) == 0x2060 || CharacterAtIndex == 65279 || (CharacterAtIndex & 0xFFF0) == 0xFE00)
      {
        goto LABEL_9;
      }

      if ((vmaxv_u16(vcgt_u16(0x700E000300026, vadd_s16(v9, 0x50058E0E295E300))) & 1) == 0 && v8 != 7680 && (CharacterAtIndex & 0xFFE0) != 0x2C60)
      {
        if (CharacterAtIndex - 7462 < 5 || v8 == 7936)
        {
LABEL_26:
          v20 = 6;
          v24 = &v20;
          v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
          goto LABEL_10;
        }

        if ((vmaxv_u16(vcgt_u16(0x3000300065003FLL, vadd_s16(v9, 0xDF30DF90E265E2D4))) & 1) == 0 && (CharacterAtIndex & 0xFFE0) != 0xA700 && CharacterAtIndex - 0x2000 >= 0xC00 && CharacterAtIndex <= 0xFFFB && (CharacterAtIndex & 0xFF80) != 0x2E00)
        {
          if (v8 == 3840)
          {
            v20 = 20;
            v24 = &v20;
            v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
          }

          else if (CharacterAtIndex - 4096 > 0x9F)
          {
            if (CharacterAtIndex - 4256 > 0x5F)
            {
              if (CharacterAtIndex - 4608 > 0x19F)
              {
                if (CharacterAtIndex - 5024 > 0x5F)
                {
                  if (CharacterAtIndex - 5120 > 0x27F)
                  {
                    if ((CharacterAtIndex & 0xFF80) == 0x1780)
                    {
                      v20 = 26;
                      v24 = &v20;
                      v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
                    }

                    else
                    {
                      if (CharacterAtIndex - 6144 > 0xAF)
                      {
                        if (CharacterAtIndex >> 10 != 54)
                        {
                          goto LABEL_11;
                        }

                        idx = v3 + 1;
                        if (v3 + 1 >= Length || CFStringGetCharacterAtIndex(v1, idx) >> 10 < 0x37u || CFStringGetCharacterAtIndex(v1, idx) >> 13 > 6u)
                        {
                          goto LABEL_11;
                        }

                        v10 = CFStringGetCharacterAtIndex(v1, v3) + (v5 << 10);
                        if (((v10 + 2106368) & 0x3F0000) == 0x10000)
                        {
                          v20 = 28;
                          v24 = &v20;
                          v11 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
                          goto LABEL_120;
                        }

                        if (!((v10 - 56744960) >> 16))
                        {
                          v20 = 3;
                          v24 = &v20;
                          v11 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
LABEL_120:
                          ++*(v11 + 5);
                        }

                        ++v3;
                        goto LABEL_11;
                      }

                      v20 = 27;
                      v24 = &v20;
                      v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
                    }
                  }

                  else
                  {
                    v20 = 25;
                    v24 = &v20;
                    v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
                  }
                }

                else
                {
                  v20 = 24;
                  v24 = &v20;
                  v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
                }
              }

              else
              {
                v20 = 23;
                v24 = &v20;
                v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
              }
            }

            else
            {
              v20 = 22;
              v24 = &v20;
              v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
            }
          }

          else
          {
            v20 = 21;
            v24 = &v20;
            v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
          }

          goto LABEL_10;
        }

LABEL_9:
        v20 = 28;
        v24 = &v20;
        v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
        goto LABEL_10;
      }

LABEL_5:
      v20 = 4;
      v24 = &v20;
      v6 = std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::__emplace_unique_key_args<NLScriptID,std::piecewise_construct_t const&,std::tuple<NLScriptID&&>,std::tuple<>>(&v21, &v20);
      goto LABEL_10;
    }

LABEL_122:
    v12 = v22;
    if (v22)
    {
      v13 = 0;
      v14 = 28;
      do
      {
        v15 = *(v12 + 4);
        if (v15 != 28)
        {
          v16 = *(v12 + 5);
          if (v16 <= v13)
          {
            v14 = v14;
          }

          else
          {
            v14 = v15;
          }

          if (v16 > v13)
          {
            v13 = *(v12 + 5);
          }
        }

        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v14 = 28;
    }

    std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::~__hash_table(&v21);
    this = v19;
  }

  else
  {
    v14 = 28;
  }

  *(this + 2) = v14;
  return v14;
}

void sub_19D1A3654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::__hash_value_type<NLScriptID,unsigned int>,std::__unordered_map_hasher<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::hash<int>,std::equal_to<NLScriptID>,true>,std::__unordered_map_equal<NLScriptID,std::__hash_value_type<NLScriptID,unsigned int>,std::equal_to<NLScriptID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLScriptID,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void NLScriptDetector::~NLScriptDetector(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void *CoreNLP::MontrealModel::MontrealModel(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  if (CoreNLP::MontrealModel::MontrealModel(std::string const&)::onceToken != -1)
  {
    CoreNLP::MontrealModel::MontrealModel();
  }

  if (CoreNLP::MontrealModel::MontrealModel(std::string const&)::softLinked == 1)
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = CFStringCreateWithCString(0, v4, 0x8000100u);
    v6 = CFURLCreateWithFileSystemPath(0, v5, kCFURLPOSIXPathStyle, 0);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = Mutable;
    if (v6)
    {
      CFDictionaryAddValue(Mutable, @"MRLNeuralNetworkOptionModelURLKey", v6);
      *a1 = CoreNLP::_MRLNeuralNetworkCreate(v8, 0);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    CFRelease(v8);
  }

  return a1;
}

uint64_t CoreNLP::SubWordTagger::enumerateSubTokensOfToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v4 = *(a2 + 8);
  v7[0] = 0;
  v7[1] = v4;
  v7[2] = 0;
  return (*(a4 + 16))(a4, v7, &v6);
}

uint64_t CoreNLP::SubWordTagger::enumerateCJKPersonNamesOfCurrentSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  if (a4 && *(*(a1 + 16) + 24))
  {
    v6 = *(a1 + 8);
    v18 = 0;
    v7 = (*(*a4 + 88))(a4, &v18);
    v17 = v7;
    if (v7)
    {
      v8 = v7;
      v16 = 0;
      if (!*v7)
      {
LABEL_8:
        v4 = v18;
        v17 = 0;
LABEL_11:
        std::default_delete<CoreNLP::NameRanges>::operator()[abi:ne200100](&v17, v8);
        return v4 & 1;
      }

      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = (*(v8 + 8) + v9);
        v12 = *v11;
        v15 = *(v11 + 2);
        v14 = v12;
        *&v14 = v12 + *(v6 + 16);
        (*(a3 + 16))(a3, &v14, &v16);
        if (v16)
        {
          break;
        }

        ++v10;
        v8 = v17;
        v9 += 24;
        if (v10 >= *v17)
        {
          goto LABEL_8;
        }
      }

      v8 = v17;
      v4 = v18;
      v17 = 0;
      if (v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4 & 1;
}

void sub_19D1A422C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a13;
  a13 = 0;
  if (v14)
  {
    std::default_delete<CoreNLP::NameRanges>::operator()[abi:ne200100](&a13, v14);
  }

  _Unwind_Resume(exception_object);
}

void std::default_delete<CoreNLP::NameRanges>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      MEMORY[0x19EAF8C70](v2, 0x1000C80504FFAC1);
    }

    JUMPOUT(0x19EAF8CA0);
  }
}

uint64_t CoreNLP::isWhitespaceOrNewline(const __CFString *this, const __CFString *a2)
{
  result = CFStringGetLength(this);
  if (result)
  {
    v4 = result - 1;
    if (result < 1)
    {
      return 1;
    }

    else
    {
      v5 = 0;
      do
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(this, v5);
        isUWhiteSpace = u_isUWhiteSpace(CharacterAtIndex);
        result = CharacterAtIndex == 8203 || isUWhiteSpace != 0;
      }

      while (result == 1 && v4 != v5++);
    }
  }

  return result;
}

uint64_t CoreNLP::scriptIdForScript(const __CFString *this, const __CFString *a2)
{
  if (CFStringHasPrefix(this, @"Arab"))
  {
    return 0;
  }

  if (CFStringHasPrefix(this, @"Cyrl"))
  {
    return 1;
  }

  if (CFStringHasPrefix(this, @"Deva"))
  {
    return 2;
  }

  if (CFStringHasPrefix(this, @"Hans"))
  {
    return 3;
  }

  if (CFStringHasPrefix(this, @"Latn"))
  {
    return 4;
  }

  if (CFStringHasPrefix(this, @"Hebr"))
  {
    return 5;
  }

  if (CFStringHasPrefix(this, @"Grek"))
  {
    return 6;
  }

  if (CFStringHasPrefix(this, @"Thai"))
  {
    return 7;
  }

  if (CFStringHasPrefix(this, @"Kore"))
  {
    return 8;
  }

  return 28;
}

CFLocaleRef CoreNLP::copyLocaleForLanguageID(int a1)
{
  if (CoreNLP::copyLocaleForLanguageID(NLLanguageID)::onceToken != -1)
  {
    CoreNLP::copyLocaleForLanguageID();
  }

  v2 = *(CoreNLP::copyLocaleForLanguageID(NLLanguageID)::languageLocaleIdentifierMap + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = CoreNLP::copyLocaleForLanguageID(NLLanguageID)::languageLocaleIdentifierMap + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == CoreNLP::copyLocaleForLanguageID(NLLanguageID)::languageLocaleIdentifierMap + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = *(v3 + 40);

  return CFLocaleCreate(v5, v6);
}

void CoreNLP::extractAffix(std::string *a1, std::string::value_type *a2, unsigned int a3, int a4)
{
  v5 = a2[23];
  if (!a4)
  {
    if ((v5 & 0x80) != 0)
    {
      v8 = a2;
      a2 = *a2;
      v5 = *(v8 + 1);
      if (v5 < a3)
      {
        goto LABEL_12;
      }
    }

    else if (v5 < a3)
    {
      goto LABEL_12;
    }

    v9 = a3;
    v7 = &a2[v5];
    a2 = &a2[v5 - v9];
    v5 = v9;
    goto LABEL_10;
  }

  if ((v5 & 0x80) != 0)
  {
    v6 = a2;
    a2 = *a2;
    v5 = *(v6 + 1);
    if (v5 >= a3)
    {
      goto LABEL_9;
    }

LABEL_12:
    v7 = &a2[v5];
    goto LABEL_10;
  }

  if (v5 < a3)
  {
    goto LABEL_12;
  }

LABEL_9:
  v5 = a3;
  v7 = &a2[a3];
LABEL_10:
  std::string::__assign_trivial[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a1, a2, v7, v5);
}

void CoreNLP::extractAffixLetters(std::string *a1, std::string::value_type *a2, int a3, int a4)
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = a2[23];
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 2);
    }

    v4 = v5 - 1;
  }

  v6 = 0;
  if (a3 && (v4 & 0x80000000) == 0)
  {
    LODWORD(v6) = 0;
    v7 = a2[23];
    v8 = (v7 & 0x80u) != 0;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 1);
    }

    if (v8)
    {
      v9 = *a2;
    }

    else
    {
      v9 = a2;
    }

    while (1)
    {
      if (v7 <= v4)
      {
LABEL_21:
        v6 = v6;
        goto LABEL_22;
      }

      if (!a4)
      {
        break;
      }

      v10 = v4 + 1;
      v11 = 1;
      if (v7 > v10)
      {
        goto LABEL_18;
      }

LABEL_19:
      LODWORD(v6) = v6 + 1;
      if (a3)
      {
        v4 += v11;
        if ((v4 & 0x80000000) == 0)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    v11 = -1;
    v10 = v4;
LABEL_18:
    a3 -= (v9[v10] & 0xC0) != 128;
    goto LABEL_19;
  }

LABEL_22:
  v12 = a2[23];
  if (a4)
  {
    if ((v12 & 0x80u) != 0)
    {
      a2 = *a2;
    }

    v13 = &a2[v6];
  }

  else
  {
    v14 = v12;
    v15 = &a2[v12];
    if (v14 >= 0)
    {
      v13 = v15;
    }

    else
    {
      v13 = (*a2 + *(a2 + 1));
    }

    a2 = &v13[-v6];
  }

  std::string::__assign_trivial[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a1, a2, v13, v6);
}

std::string *CoreNLP::extractLetters@<X0>(std::string *__str@<X0>, int a2@<W1>, unsigned int a3@<W2>, std::string *a4@<X8>)
{
  v6 = 0;
  if (a2 && (a3 & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    v9 = a3;
    if ((v8 & 0x80u) == 0)
    {
      v10 = __str;
    }

    else
    {
      v10 = __str->__r_.__value_.__r.__words[0];
    }

    v11 = &v10->__r_.__value_.__s.__data_[1];
    do
    {
      if ((v8 & 0x80) != 0)
      {
        size = __str->__r_.__value_.__l.__size_;
        if (size <= v9)
        {
          break;
        }
      }

      else
      {
        size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
        if (v9 >= v8)
        {
          break;
        }
      }

      if (size > v9 + 1)
      {
        a2 -= (v11[v9] & 0xC0) != 128;
      }

      ++v7;
      ++v9;
    }

    while (a2);
    v6 = v7;
  }

  return std::string::basic_string(a4, __str, a3, v6, &v14);
}

uint64_t CoreNLP::splitOnApostrophe(const __CFString *a1, CFRange *a2, uint64_t a3)
{
  {
    CoreNLP::splitOnApostrophe(__CFString const*,CFRange const&,std::vector<CoreNLP::NLAttributedToken> &)::_apostropheCharacterSet = CFCharacterSetCreateWithCharactersInString(*MEMORY[0x1E695E480], @"'’");
  }

  result = xmmword_19D27D570;
  v24 = xmmword_19D27D570;
  CFStringFindCharacterFromSet(a1, CoreNLP::splitOnApostrophe(__CFString const*,CFRange const&,std::vector<CoreNLP::NLAttributedToken> &)::_apostropheCharacterSet, *a2, 4uLL, &result);
  if (result.length < 1)
  {
    goto LABEL_47;
  }

  v6.location = a2->location;
  if (result.location > a2->location)
  {
    v6.length = a2->length;
    v7 = v6.length + v6.location - (result.location + result.length);
    if (v6.length + v6.location > result.location + result.length)
    {
      if (v7 == 2)
      {
        if (!CFStringFindWithOptions(a1, @"ve", v6, 0xDuLL, 0) && !CFStringFindWithOptions(a1, @"ll", *a2, 0xDuLL, 0) && !CFStringFindWithOptions(a1, @"re", *a2, 0xDuLL, 0))
        {
          goto LABEL_25;
        }

        v9 = -3;
      }

      else
      {
        if (v7 != 1)
        {
          goto LABEL_25;
        }

        if (CFStringFindWithOptions(a1, @"s", v6, 0xDuLL, 0) || CFStringFindWithOptions(a1, @"d", *a2, 0xDuLL, 0) || CFStringFindWithOptions(a1, @"m", *a2, 0xDuLL, 0))
        {
          v8 = 0;
          v9 = -2;
        }

        else
        {
          v8 = 1;
          v9 = 1;
        }

        if (CFStringFindWithOptions(a1, @"t", *a2, 0xDuLL, 0))
        {
          v27.location = a2->location;
          v27.length = a2->length - 2;
          v10 = CFStringFindWithOptions(a1, @"n", v27, 0xDuLL, 0);
          if (v10)
          {
            v11 = 0;
          }

          else
          {
            v11 = v8;
          }

          if (v10)
          {
            v9 = -3;
          }

          if (v11)
          {
            goto LABEL_25;
          }
        }

        else if (v8)
        {
          goto LABEL_25;
        }
      }

      v13 = a2->length + v9;
      v25[0] = a2->location;
      v12 = v25[0];
      v25[1] = v13;
      v14 = CoreNLP::splitOnApostrophe(a1, v25, a3);
      v15 = a2->location - (v13 + v12) + a2->length;
      v21.location = v13 + v12;
      v21.length = v15;
      v22 = 0;
      CoreNLP::NLAttributedToken::NLAttributedToken(v23, &v21);
      std::vector<CoreNLP::NLAttributedToken>::push_back[abi:ne200100](a3, v23);
      CoreNLP::NLAttributedToken::~NLAttributedToken(v23);
      return v14 + 1;
    }
  }

LABEL_25:
  if (result.length >= 1)
  {
    CFStringFindCharacterFromSet(a1, CoreNLP::splitOnApostrophe(__CFString const*,CFRange const&,std::vector<CoreNLP::NLAttributedToken> &)::_apostropheCharacterSet, *a2, 0, &result);
    if (result.length >= 1)
    {
      v17.location = a2->location;
      v18 = result.location - a2->location;
      if (result.location > a2->location)
      {
        v17.length = a2->length;
        if (result.location + result.length < v17.length + v17.location)
        {
          if (v18 == 4)
          {
            if (CFStringFindWithOptions(a1, @"entr", v17, 9uLL, 0))
            {
              v19 = 5;
              goto LABEL_46;
            }
          }

          else if (v18 == 2)
          {
            if (CFStringFindWithOptions(a1, @"qu", v17, 9uLL, 0))
            {
              v19 = 3;
              goto LABEL_46;
            }
          }

          else if (v18 == 1 && (CFStringFindWithOptions(a1, @"c", v17, 9uLL, 0) || CFStringFindWithOptions(a1, @"d", *a2, 9uLL, 0) || CFStringFindWithOptions(a1, @"j", *a2, 9uLL, 0) || CFStringFindWithOptions(a1, @"l", *a2, 9uLL, 0) || CFStringFindWithOptions(a1, @"m", *a2, 9uLL, 0) || CFStringFindWithOptions(a1, @"n", *a2, 9uLL, 0) || CFStringFindWithOptions(a1, @"s", *a2, 9uLL, 0) || CFStringFindWithOptions(a1, @"t", *a2, 9uLL, 0) || CFStringFindWithOptions(a1, @"y", *a2, 9uLL, 0)))
          {
            v19 = 2;
LABEL_46:
            v21.location = a2->location;
            v21.length = v19;
            v22 = 0;
            CoreNLP::NLAttributedToken::NLAttributedToken(v23, &v21);
            std::vector<CoreNLP::NLAttributedToken>::push_back[abi:ne200100](a3, v23);
            CoreNLP::NLAttributedToken::~NLAttributedToken(v23);
            v20 = a2->length - v19;
            *&v24 = a2->location + v19;
            *(&v24 + 1) = v20;
            return CoreNLP::splitOnApostrophe(a1, &v24, a3) + 1;
          }
        }
      }
    }
  }

LABEL_47:
  v21 = *a2;
  v22 = 0;
  CoreNLP::NLAttributedToken::NLAttributedToken(v23, &v21);
  std::vector<CoreNLP::NLAttributedToken>::push_back[abi:ne200100](a3, v23);
  CoreNLP::NLAttributedToken::~NLAttributedToken(v23);
  return 1;
}

uint64_t std::vector<CoreNLP::NLAttributedToken>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<CoreNLP::NLAttributedToken>::__emplace_back_slow_path<CoreNLP::NLAttributedToken>(a1, a2);
  }

  else
  {
    CoreNLP::NLAttributedToken::NLAttributedToken(v3, a2);
    result = v4 + 112;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t CoreNLP::loadLinguisticData(CoreNLP *this)
{
  if (CoreNLP::loadLinguisticData(void)::onceToken != -1)
  {
    CoreNLP::loadLinguisticData();
  }

  return CoreNLP::loadLinguisticData(void)::linguisticDataHandle;
}

void ___ZN7CoreNLP18loadLinguisticDataEv_block_invoke()
{
  CoreNLP::getPathRelativeToPlatformRoot("/System/Library/PrivateFrameworks/LinguisticData.framework/LinguisticData", __p);
  if (v2 >= 0)
  {
    v0 = __p;
  }

  else
  {
    v0 = __p[0];
  }

  CoreNLP::loadLinguisticData(void)::linguisticDataHandle = dlopen(v0, 261);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D1A4DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::loadLexicon(CoreNLP *this)
{
  if (CoreNLP::loadLexicon(void)::onceToken != -1)
  {
    CoreNLP::loadLexicon();
  }

  return CoreNLP::loadLexicon(void)::lexiconHandle;
}

void ___ZN7CoreNLP11loadLexiconEv_block_invoke()
{
  CoreNLP::getPathRelativeToPlatformRoot("/System/Library/PrivateFrameworks/Lexicon.framework/Lexicon", __p);
  if (v2 >= 0)
  {
    v0 = __p;
  }

  else
  {
    v0 = __p[0];
  }

  CoreNLP::loadLexicon(void)::lexiconHandle = dlopen(v0, 261);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D1A4E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::loadEspresso(CoreNLP *this)
{
  if (CoreNLP::loadEspresso(void)::onceToken != -1)
  {
    CoreNLP::loadEspresso();
  }

  return CoreNLP::loadEspresso(void)::EspressoHandle;
}

void ___ZN7CoreNLP12loadEspressoEv_block_invoke()
{
  CoreNLP::getPathRelativeToPlatformRoot("/System/Library/PrivateFrameworks/Espresso.framework/Espresso", __p);
  if (v2 >= 0)
  {
    v0 = __p;
  }

  else
  {
    v0 = __p[0];
  }

  CoreNLP::loadEspresso(void)::EspressoHandle = dlopen(v0, 261);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D1A4F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::loadMontreal(CoreNLP *this)
{
  if (CoreNLP::loadMontreal(void)::onceToken != -1)
  {
    CoreNLP::loadMontreal();
  }

  return CoreNLP::loadMontreal(void)::MontrealHandle;
}

void ___ZN7CoreNLP12loadMontrealEv_block_invoke()
{
  CoreNLP::getPathRelativeToPlatformRoot("/System/Library/PrivateFrameworks/Montreal.framework/Montreal", __p);
  if (v2 >= 0)
  {
    v0 = __p;
  }

  else
  {
    v0 = __p[0];
  }

  CoreNLP::loadMontreal(void)::MontrealHandle = dlopen(v0, 261);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D1A5014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::createExemplarSetForLanguage(CoreNLP *a1)
{
  if (a1 == 4)
  {

    return CoreNLP::createExemplarSetForChineseSimplified(a1);
  }

  else
  {
    if (!CoreNLP::convertLanguageIDToCode(a1))
    {
      return 0;
    }

    v3 = uset_openEmpty();
    v4 = ulocdata_open();
    if (v3)
    {
      MEMORY[0x19EAF9860](v3, 48, 57);
      MEMORY[0x19EAF9860](v3, 97, 122);
      MEMORY[0x19EAF9860](v3, 65, 90);
      MEMORY[0x19EAF9840](v3, 38);
      MEMORY[0x19EAF9840](v3, 46);
      MEMORY[0x19EAF9840](v3, 39);
      MEMORY[0x19EAF9840](v3, 45);
      MEMORY[0x19EAF9840](v3, 8211);
      MEMORY[0x19EAF9840](v3, 8212);
      MEMORY[0x19EAF9840](v3, 8208);
      MEMORY[0x19EAF9840](v3, 96);
      MEMORY[0x19EAF9840](v3, 8216);
      MEMORY[0x19EAF9840](v3, 8217);
      MEMORY[0x19EAF9840](v3, 8242);
      MEMORY[0x19EAF9860](v3, 262, 269);
      MEMORY[0x19EAF9860](v3, 346, 353);
      MEMORY[0x19EAF9860](v3, 377, 382);
      ExemplarSet = ulocdata_getExemplarSet();
      if (ExemplarSet)
      {
        MEMORY[0x19EAF9850](v3, ExemplarSet);
        uset_close();
      }

      v6 = ulocdata_getExemplarSet();
      if (v6)
      {
        MEMORY[0x19EAF9850](v3, v6);
        uset_close();
      }
    }

    if (v4)
    {
      ulocdata_close();
    }

    if (v3)
    {
      MEMORY[0x19EAF9890](v3);
    }

    return v3;
  }
}

uint64_t CoreNLP::createExemplarSetForChineseSimplified(CoreNLP *this)
{
  v15 = *MEMORY[0x1E69E9840];
  pErrorCode = U_ZERO_ERROR;
  v1 = std::string::basic_string[abi:ne200100]<0>(&v11, "[[:Hani:]]");
  MEMORY[0x1EEE9AC00](v1, v2);
  HIDWORD(v10) = 0;
  if ((v13 & 0x80u) == 0)
  {
    v4 = &v11;
  }

  else
  {
    v4 = v11;
  }

  if ((v13 & 0x80u) == 0)
  {
    v5 = v13;
  }

  else
  {
    v5 = v12;
  }

  u_strFromUTF8((&v10 - v3), v5, &v10 + 1, v4, v5, &pErrorCode);
  if (pErrorCode > U_ZERO_ERROR)
  {
    goto LABEL_11;
  }

  v6 = uset_openPattern();
  v7 = v6;
  if (pErrorCode >= U_ILLEGAL_ARGUMENT_ERROR && v6)
  {
    uset_close();
LABEL_11:
    v7 = 0;
  }

  if (v13 < 0)
  {
    operator delete(v11);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void CoreNLP::getTopNIndices(CoreNLP *this@<X0>, unint64_t a2@<X2>, float *a3@<X1>, uint64_t *a4@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v50 = a3;
  if (this == 1)
  {
    v6 = a3;
    if (a2 >= 2)
    {
      v7 = a3 + 1;
      v8 = *a3;
      v9 = 4 * a2 - 4;
      v6 = a3;
      v10 = a3 + 1;
      do
      {
        v11 = *v10++;
        v12 = v11;
        if (v8 < v11)
        {
          v8 = v12;
          v6 = v7;
        }

        v7 = v10;
        v9 -= 4;
      }

      while (v9);
    }

    __src = (v6 - a3);
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a4, &__src, &v53, 1uLL);
  }

  else
  {
    __src = 0;
    v53 = 0;
    v54 = 0;
    v55 = &v50;
    if (a2 >= this)
    {
      v13 = this;
    }

    else
    {
      v13 = a2;
    }

    if (a2)
    {
      v14 = 0;
      for (i = 0; i != a2; i = (i + 1))
      {
        if (v14 >= v54)
        {
          v17 = __src;
          v18 = v14 - __src;
          v19 = (v14 - __src) >> 3;
          v20 = v19 + 1;
          if ((v19 + 1) >> 61)
          {
            std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
          }

          v21 = v54 - __src;
          if ((v54 - __src) >> 2 > v20)
          {
            v20 = v21 >> 2;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFF8)
          {
            v22 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v22);
          }

          v23 = v19;
          v24 = (8 * v19);
          v25 = &v24[-v23];
          *v24 = i;
          v16 = (v24 + 1);
          memcpy(v25, v17, v18);
          v26 = __src;
          __src = v25;
          v53 = v16;
          v54 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v14 = i;
          v16 = (v14 + 8);
        }

        v53 = v16;
        v51 = v55;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,CoreNLP::getTopNIndices(unsigned long,float *,unsigned long)::$_0 &,std::__wrap_iter<unsigned long *>>(__src, v16, &v51, (v16 - __src) >> 3);
        v27 = __src;
        v14 = v53;
        v28 = (v53 - __src) >> 3;
        if (v28 > v13)
        {
          v29 = v55;
          v51 = v55;
          if (v28 >= 2)
          {
            v30 = 0;
            v31 = *__src;
            v32 = __src;
            do
            {
              v33 = v32;
              v32 += 8 * v30 + 8;
              v34 = 2 * v30;
              v30 = (2 * v30) | 1;
              v35 = v34 + 2;
              if (v35 < v28 && *(*v29 + 4 * *v32) > *(*v29 + 4 * *(v32 + 1)))
              {
                v32 += 8;
                v30 = v35;
              }

              *v33 = *v32;
            }

            while (v30 <= ((v28 - 2) >> 1));
            v36 = v14 - 8;
            if (v32 == v14 - 8)
            {
              *v32 = v31;
            }

            else
            {
              *v32 = *v36;
              *v36 = v31;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,CoreNLP::getTopNIndices(unsigned long,float *,unsigned long)::$_0 &,std::__wrap_iter<unsigned long *>>(v27, (v32 + 8), &v51, (v32 + 8 - v27) >> 3);
              v14 = v53;
            }
          }

          v14 -= 8;
          v53 = v14;
        }
      }
    }

    v51 = 0;
    std::vector<unsigned long>::vector[abi:ne200100](a4, v13);
    v37 = __src;
    v38 = v53;
    if (__src != v53)
    {
      v39 = *a4;
      do
      {
        v40 = *v37;
        --v13;
        *(v39 + 8 * v13) = *v37;
        v41 = v55;
        v51 = v55;
        v42 = (v38 - v37) >> 3;
        if (v42 >= 2)
        {
          v43 = 0;
          v44 = v37;
          do
          {
            v45 = v44;
            v44 += 8 * v43 + 8;
            v46 = 2 * v43;
            v43 = (2 * v43) | 1;
            v47 = v46 + 2;
            if (v47 < v42 && *(*v41 + 4 * *v44) > *(*v41 + 4 * *(v44 + 1)))
            {
              v44 += 8;
              v43 = v47;
            }

            *v45 = *v44;
          }

          while (v43 <= ((v42 - 2) >> 1));
          v48 = v38 - 8;
          if (v44 == v38 - 8)
          {
            *v44 = v40;
          }

          else
          {
            *v44 = *v48;
            *v48 = v40;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,CoreNLP::getTopNIndices(unsigned long,float *,unsigned long)::$_0 &,std::__wrap_iter<unsigned long *>>(v37, (v44 + 8), &v51, (v44 + 8 - v37) >> 3);
            v39 = *a4;
            v37 = __src;
            v38 = v53;
          }
        }

        v38 -= 8;
        v53 = v38;
      }

      while (v37 != v38);
    }

    if (v37)
    {
      v53 = v37;
      operator delete(v37);
    }
  }

  v49 = *MEMORY[0x1E69E9840];
}

void sub_19D1A5770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<NLLanguageID,__CFString const*>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::__emplace_hint_unique_key_args<NLLanguageID,std::pair<NLLanguageID const,__CFString const*> const&>(a1, v4, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

void std::string::__assign_trivial[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E76245D0, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t std::vector<CoreNLP::NLAttributedToken>::__emplace_back_slow_path<CoreNLP::NLAttributedToken>(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CoreNLP::NLAttributedToken>>(a1, v6);
  }

  v13 = 0;
  v14 = 112 * v2;
  CoreNLP::NLAttributedToken::NLAttributedToken(112 * v2, a2);
  v15 = (112 * v2 + 112);
  v7 = *(a1 + 8);
  v8 = 112 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CoreNLP::NLAttributedToken>,CoreNLP::NLAttributedToken*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<CoreNLP::NLAttributedToken>::~__split_buffer(&v13);
  return v12;
}

void sub_19D1A5AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CoreNLP::NLAttributedToken>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 CoreNLP::NLAttributedToken::NLAttributedToken(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a1 + 24) = *(a2 + 3);
  v3 = a2 + 2;
  v4 = *(a2 + 4);
  *(a1 + 32) = v4;
  v5 = a1 + 32;
  v6 = *(a2 + 5);
  *(a1 + 40) = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    *(a2 + 3) = v3;
    *v3 = 0;
    *(a2 + 5) = 0;
  }

  else
  {
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = *(a2 + 6);
  v7 = a2 + 7;
  v8 = *(a2 + 7);
  *(a1 + 56) = v8;
  v9 = a1 + 56;
  v10 = *(a2 + 8);
  *(a1 + 64) = v10;
  if (v10)
  {
    *(v8 + 16) = v9;
    *(a2 + 6) = v7;
    *v7 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *(a1 + 48) = v9;
  }

  *(a1 + 72) = *(a2 + 9);
  result = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 80) = result;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 10) = 0;
  *(a1 + 104) = *(a2 + 13);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CoreNLP::NLAttributedToken>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CoreNLP::NLAttributedToken>,CoreNLP::NLAttributedToken*>(uint64_t a1, CoreNLP::NLAttributedToken *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      CoreNLP::NLAttributedToken::NLAttributedToken(a4, v7);
      v7 += 7;
      a4 = v8 + 112;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      CoreNLP::NLAttributedToken::~NLAttributedToken(v6);
      v6 = (v6 + 112);
    }
  }
}

uint64_t std::__split_buffer<CoreNLP::NLAttributedToken>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    CoreNLP::NLAttributedToken::~NLAttributedToken((i - 112));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::set<std::string>::set[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(a1, v4, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void sub_19D1A5E38(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1A5F10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,CoreNLP::getTopNIndices(unsigned long,float *,unsigned long)::$_0 &,std::__wrap_iter<unsigned long *>>(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v8 = *(a2 - 8);
    v6 = (a2 - 8);
    v7 = v8;
    v9 = **a3;
    v10 = *v5;
    v11 = *(v9 + 4 * v8);
    if (*(v9 + 4 * *v5) > v11)
    {
      do
      {
        *v6 = v10;
        v6 = v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v10 = *v5;
      }

      while (*(v9 + 4 * *v5) > v11);
      *v6 = v7;
    }
  }

  return result;
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_19D1A6048(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::AbstractModel::AbstractModel(uint64_t a1, const void ***a2)
{
  *a1 = &unk_1F10ACD60;
  *(a1 + 12) = 0;
  std::map<std::string,int>::map[abi:ne200100]((a1 + 16), a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 100;
  *(a1 + 68) = 0;
  return a1;
}

uint64_t CoreNLP::AbstractModel::AbstractModel(uint64_t this)
{
  *this = &unk_1F10ACD60;
  *(this + 12) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 16) = this + 24;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 100;
  *(this + 68) = 0;
  return this;
}

void *std::map<std::string,int>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,int>,std::__tree_node<std::__value_type<std::string,int>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,int>,std::__tree_node<std::__value_type<std::string,int>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,int> const&>(v5, (v5 + 1), v4 + 4);
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

BOOL corelm::util::startsWith(uint64_t a1, uint64_t a2, char *a3, int64_t a4)
{
  v5[0] = a1;
  v5[1] = a2;
  return std::string_view::find[abi:ne200100](v5, a3, a4, 0) == 0;
}

uint64_t std::string_view::find[abi:ne200100](uint64_t *a1, char *a2, int64_t a3, unint64_t a4)
{
  v4 = a1[1];
  v5 = v4 - a4;
  if (v4 < a4)
  {
    return -1;
  }

  if (a3)
  {
    v7 = *a1;
    v8 = (*a1 + v4);
    if (v5 >= a3)
    {
      v12 = (v7 + a4);
      v13 = *a2;
      do
      {
        v14 = v5 - a3;
        if (v14 == -1)
        {
          break;
        }

        v15 = memchr(v12, v13, v14 + 1);
        if (!v15)
        {
          break;
        }

        v9 = v15;
        if (!memcmp(v15, a2, a3))
        {
          goto LABEL_6;
        }

        v12 = v9 + 1;
        v5 = v8 - (v9 + 1);
      }

      while (v5 >= a3);
    }

    v9 = v8;
LABEL_6:
    if (v9 == v8)
    {
      return -1;
    }

    else
    {
      return &v9[-v7];
    }
  }

  return a4;
}

BOOL corelm::util::endsWith(uint64_t a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a2 < a4)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = a1 + a2;
  v6 = -a4;
  do
  {
    v7 = *a3++;
    result = *(v5 + v6) == v7;
    v8 = *(v5 + v6) != v7 || v6 == -1;
    ++v6;
  }

  while (!v8);
  return result;
}

void corelm::util::split(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, int64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = 0;
  v29 = a1;
  v30 = a2;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  do
  {
    if (v8 >= v30)
    {
      break;
    }

    v9 = std::string_view::find[abi:ne200100](&v29, a3, a4, v8);
    v10 = v9;
    if (v9 != v8)
    {
      if (v30 < v8)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      if (v30 - v8 >= v9 - v8)
      {
        v11 = v9 - v8;
      }

      else
      {
        v11 = v30 - v8;
      }

      memset(&__p, 0, sizeof(__p));
      if (v11)
      {
        v12 = (v29 + v8);
        do
        {
          std::string::push_back(&__p, *v12++);
          --v11;
        }

        while (v11);
      }

      v14 = *(a5 + 8);
      v13 = *(a5 + 16);
      if (v14 >= v13)
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a5) >> 3);
        v17 = v16 + 1;
        if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a5) >> 3);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v17;
        }

        v31.__end_cap_.__value_ = a5;
        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a5, v19);
        }

        v20 = 24 * v16;
        v21 = *&__p.__r_.__value_.__l.__data_;
        *(v20 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v20 = v21;
        memset(&__p, 0, sizeof(__p));
        v22 = 24 * v16 + 24;
        v23 = *(a5 + 8) - *a5;
        v24 = 24 * v16 - v23;
        memcpy((v20 - v23), *a5, v23);
        v25 = *a5;
        *a5 = v24;
        *(a5 + 8) = v22;
        v26 = *(a5 + 16);
        *(a5 + 16) = 0;
        v31.__end_ = v25;
        v31.__end_cap_.__value_ = v26;
        v31.__first_ = v25;
        v31.__begin_ = v25;
        std::__split_buffer<std::string>::~__split_buffer(&v31);
        v27 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(a5 + 8) = v22;
        if (v27 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v15 = *&__p.__r_.__value_.__l.__data_;
        *(v14 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v14 = v15;
        *(a5 + 8) = v14 + 24;
      }
    }

    v8 = v10 + 1;
  }

  while (v10 != -1);
}

void sub_19D1A654C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void corelm::util::strip(std::string *a1)
{
  MEMORY[0x19EAF8BA0](&v11);
  v12 = 0x4000;
  std::locale::locale(&v13, &v11);
  LODWORD(v16.__locale_) = v12;
  std::locale::locale(&v17, &v13);
  boost::algorithm::trim_right_if<std::string,boost::algorithm::detail::is_classifiedF>(a1, &v16);
  std::locale::~locale(&v17);
  v14 = v12;
  std::locale::locale(&v15, &v13);
  v2 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1->__r_.__value_.__r.__words[0];
  }

  if (v2 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v18 = v14;
  std::locale::locale(&v19, &v15);
  if (size)
  {
    v5 = v3 + size;
    v6 = MEMORY[0x1E69E5318];
    v7 = v3;
    while (1)
    {
      v8 = v7->__r_.__value_.__s.__data_[0];
      v9 = std::locale::use_facet(&v19, v6);
      if ((v8 & 0x80) != 0 || (*(&v9[1].~facet + v8) & v18) == 0)
      {
        break;
      }

      v7 = (v7 + 1);
      if (!--size)
      {
        v7 = v5;
        break;
      }
    }
  }

  else
  {
    v7 = v3;
  }

  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = a1->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a1, v3 - v10, v7 - v3);
  std::locale::~locale(&v19);
  std::locale::~locale(&v15);
  std::locale::~locale(&v13);
  std::locale::~locale(&v11);
}

void sub_19D1A66FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(v12 + 1);
  std::locale::~locale(v10);
  std::locale::~locale(v11 + 1);
  std::locale::~locale(&a10);
  _Unwind_Resume(a1);
}

void corelm::util::stripSplit(std::string *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  corelm::util::strip(a1);
  v6 = *(v4 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = v4;
    v4 = *v4;
    v6 = *(v7 + 8);
  }

  v8 = a2[23];
  if (v8 < 0)
  {
    v9 = a2;
    a2 = *a2;
    v8 = *(v9 + 1);
  }

  corelm::util::split(v4, v6, a2, v8, a3);
}

unsigned __int8 *corelm::util::replace(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 23);
  v6 = *a2;
  if (v5 >= 0)
  {
    v6 = a2;
  }

  if (v5 < 0)
  {
    v5 = a2[1];
  }

  *&v17 = v6;
  *(&v17 + 1) = v6 + v5;
  v7 = *(a3 + 23);
  v8 = *a3;
  v9 = *(a3 + 8);
  v19 = v17;
  v20 = v18;
  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 < 0)
  {
    v10 = *(a1 + 8);
  }

  result = boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_equal>::operator()<std::__wrap_iter<char *>>(&v17, v11, &v11[v10]);
  if (result != v13)
  {
    if ((v7 & 0x80u) == 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = v8;
    }

    if ((v7 & 0x80u) == 0)
    {
      v15 = v7;
    }

    else
    {
      v15 = v9;
    }

    v21 = v19;
    v22 = v20;
    result = boost::algorithm::detail::find_format_all_impl2<std::string,boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_equal>,boost::algorithm::detail::const_formatF<boost::iterator_range<std::__wrap_iter<char const*>>>,boost::iterator_range<std::__wrap_iter<char *>>,boost::iterator_range<std::__wrap_iter<char const*>>>(a1, &v21, v14, &v14[v15], result, v13, v14, &v14[v15]);
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x1E69E5568] + 64;
  a1[15] = MEMORY[0x1E69E5568] + 64;
  v7 = *(MEMORY[0x1E69E54E0] + 16);
  v8 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x1E69E5568] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_19D1A6A08(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x19EAF8C10](v1);
  _Unwind_Resume(a1);
}

void corelm::util::getChars(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4812000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = "";
  memset(v14, 0, sizeof(v14));
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  v5 = [v4 length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN6corelm4util8getCharsERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
  v7[3] = &unk_1E76248A0;
  v7[4] = &v8;
  [v4 enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v7}];
  v6 = v9;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, v6[6], v6[7], 0xAAAAAAAAAAAAAAABLL * ((v6[7] - v6[6]) >> 3));
  _Block_object_dispose(&v8, 8);
  v15 = v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
}

void sub_19D1A6B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  *(v8 - 40) = v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v8 - 40));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___ZN6corelm4util8getCharsERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t a1, const __CFString *cf)
{
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = *(*(a1 + 32) + 8);
  CFRetain(cf);
  cfa = cf;
  v4 = CFGetTypeID(cf);
  if (v4 != CFStringGetTypeID())
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v23, "Could not construct");
    __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<std::string,0>(cfa, __p);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  if (v5 >= v6)
  {
    v8 = *(v3 + 48);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v27.__end_cap_.__value_ = (v3 + 48);
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v3 + 48, v12);
    }

    v13 = 24 * v9;
    v14 = *__p;
    *(v13 + 16) = v26;
    *v13 = v14;
    __p[1] = 0;
    v26 = 0;
    __p[0] = 0;
    v15 = 24 * v9 + 24;
    v16 = *(v3 + 48);
    v17 = *(v3 + 56) - v16;
    v18 = 24 * v9 - v17;
    memcpy((v13 - v17), v16, v17);
    v19 = *(v3 + 48);
    *(v3 + 48) = v18;
    *(v3 + 56) = v15;
    v20 = *(v3 + 64);
    *(v3 + 64) = 0;
    v27.__end_ = v19;
    v27.__end_cap_.__value_ = v20;
    v27.__first_ = v19;
    v27.__begin_ = v19;
    std::__split_buffer<std::string>::~__split_buffer(&v27);
    v21 = SHIBYTE(v26);
    *(v3 + 56) = v15;
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v7 = *__p;
    *(v5 + 16) = v26;
    *v5 = v7;
    __p[1] = 0;
    v26 = 0;
    __p[0] = 0;
    *(v3 + 56) = v5 + 24;
  }

  CFRelease(cfa);
}

void sub_19D1A6DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E76245D8, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void boost::algorithm::trim_right_if<std::string,boost::algorithm::detail::is_classifiedF>(std::string *a1, const std::locale *a2)
{
  v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  if (v3 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v6 = &v4[size];
  locale = a2->__locale_;
  std::locale::locale(&v15, a2 + 1);
  v16 = locale;
  std::locale::locale(&v17, &v15);
  v7 = MEMORY[0x1E69E5318];
  while (size)
  {
    v8 = size;
    v9 = v4[size - 1];
    v10 = std::locale::use_facet(&v17, v7);
    if ((v9 & 0x80) != 0)
    {
      v4 = v6;
      break;
    }

    --v6;
    v11 = *(&v10[1].~facet + v9);
    size = v8 - 1;
    if ((v11 & v16) == 0)
    {
      v4 += v8;
      break;
    }
  }

  std::locale::~locale(&v17);
  v12 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v12 & 0x80u) == 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = a1->__r_.__value_.__l.__size_;
  }

  std::string::erase(a1, v4 - v13, &v13[v12] - v4);
  std::locale::~locale(&v15);
}

unsigned __int8 *boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_equal>::operator()<std::__wrap_iter<char *>>(unsigned __int8 **a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = a1[1];
    if (*a1 != v3)
    {
      while (1)
      {
        if (a2 == a3)
        {
          v4 = *a1;
        }

        else
        {
          v4 = *a1;
          v5 = a2;
          do
          {
            if (*v5 != *v4)
            {
              break;
            }

            ++v5;
            ++v4;
            if (v5 == a3)
            {
              break;
            }
          }

          while (v4 != v3);
        }

        if (v4 == v3)
        {
          break;
        }

        if (++a2 == a3)
        {
          return a3;
        }
      }

      return a2;
    }
  }

  return a3;
}

uint64_t boost::algorithm::detail::find_format_all_impl2<std::string,boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_equal>,boost::algorithm::detail::const_formatF<boost::iterator_range<std::__wrap_iter<char const*>>>,boost::iterator_range<std::__wrap_iter<char *>>,boost::iterator_range<std::__wrap_iter<char const*>>>(std::string *a1, unsigned __int8 **a2, char *a3, char *a4, unsigned __int8 *a5, unsigned __int8 *a6, char *a7, char *a8)
{
  v8 = a6;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  LODWORD(v10) = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  v11 = a1->__r_.__value_.__r.__words[0];
  if ((v10 & 0x80000000) == 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = a1->__r_.__value_.__r.__words[0];
  }

  if (a5 == a6)
  {
    v13 = v12;
  }

  else
  {
    v16 = a5;
    v13 = v12;
    v20 = v12;
    do
    {
      v12 = v8;
      v13 = boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(&v43, &v40, a1, v13, v20, v16);
      v21 = (v40.i64[1] + 8 * ((v42 + *(&v42 + 1)) >> 12));
      if (v41 == v40.i64[1])
      {
        v22 = 0;
      }

      else
      {
        v22 = *v21 + ((v42 + WORD4(v42)) & 0xFFF);
      }

      std::deque<char>::__insert_bidirectional[abi:ne200100]<std::__wrap_iter<char const*>>(&v40, v21, v22, a7, a8, a8 - a7);
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v24 = a1;
      }

      else
      {
        v24 = a1->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = a1->__r_.__value_.__l.__size_;
      }

      v16 = boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_equal>::operator()<std::__wrap_iter<char *>>(a2, v12, &v24[size]);
      v8 = v25;
      v20 = v12;
      a7 = a3;
      a8 = a4;
    }

    while (v16 != v25);
    LOBYTE(v10) = *(&a1->__r_.__value_.__s + 23);
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  v10 = v10;
  if ((v10 & 0x80u) == 0)
  {
    v26 = a1;
  }

  else
  {
    v26 = v11;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = a1->__r_.__value_.__l.__size_;
  }

  v27 = boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(&v43, &v40, a1, v13, v12, &v26[v10]);
  v28 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v28 & 0x80u) == 0)
  {
    v29 = a1;
  }

  else
  {
    v29 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v28 & 0x80u) != 0)
  {
    v28 = a1->__r_.__value_.__l.__size_;
  }

  v30 = v29 + v28;
  if (*(&v42 + 1))
  {
    v31 = (v42 >> 9) & 0x7FFFFFFFFFFFF8;
    if (v41 == v40.i64[1])
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v33 = v40.i64[1] + 8 * ((v42 + *(&v42 + 1)) >> 12);
    }

    else
    {
      v32 = ((v42 + *(&v42 + 1)) >> 9) & 0x7FFFFFFFFFFFF8;
      v33 = v40.i64[1] + v32;
      v34 = *(v40.i64[1] + v32) + ((v42 + *(&v42 + 1)) & 0xFFF);
      v35 = ((v42 + *(&v42 + 1)) & 0xFFF) + ((v32 - v31) << 9) - (v42 & 0xFFF);
      v36 = v34;
      v37 = (*(v40.i64[1] + v31) + (v42 & 0xFFF));
      if (v34 == v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = v35;
      }
    }

    std::string::__insert_with_size<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>(a1, v30, (v40.i64[1] + v31), v37, v33, v36, v38);
  }

  else
  {
    std::string::erase(a1, &v27[-v29], v30 - v27);
  }

  return std::deque<char>::~deque[abi:ne200100](&v40);
}

char *boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(int a1, int64x2_t *a2, int a3, char *__dst, char *__src, char *a6)
{
  v8 = __dst;
  v10 = a2[2].i64[1];
  if (v10)
  {
    v11 = __dst == __src;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = __dst + 1;
    do
    {
      *(v12 - 1) = *(*(a2->i64[1] + ((a2[2].i64[0] >> 9) & 0x7FFFFFFFFFFFF8)) + (a2[2].i64[0] & 0xFFF));
      a2[2] = vaddq_s64(a2[2], xmmword_19D27D5D0);
      std::deque<char>::__maybe_remove_front_spare[abi:ne200100](a2, 1);
      v10 = a2[2].i64[1];
      ++v8;
      if (!v10)
      {
        break;
      }

      v11 = v12++ == __src;
    }

    while (!v11);
  }

  if (v10)
  {
    if (v8 != a6)
    {
      do
      {
        std::deque<char>::push_back(a2, v8);
        *v8++ = *(*(a2->i64[1] + ((a2[2].i64[0] >> 9) & 0x7FFFFFFFFFFFF8)) + (a2[2].i64[0] & 0xFFF));
        a2[2] = vaddq_s64(a2[2], xmmword_19D27D5D0);
        std::deque<char>::__maybe_remove_front_spare[abi:ne200100](a2, 1);
      }

      while (v8 != a6);
      return a6;
    }
  }

  else
  {
    if (v8 == __src)
    {
      return a6;
    }

    v13 = a6 - __src;
    if (v13)
    {
      memmove(v8, __src, v13);
    }

    v8 += v13;
  }

  return v8;
}

void *std::deque<char>::push_back(void *result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 9) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = std::deque<char>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 9) & 0x7FFFFFFFFFFFF8)) + (v8 & 0xFFF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<char>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<char *>::emplace_back<char *&>(a1, &v10);
}

void sub_19D1A7848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<char *>::emplace_back<char *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<char *>::emplace_front<char *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<char *>::emplace_back<char *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<char *>::emplace_front<char *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<char>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x1000)
  {
    a2 = 1;
  }

  if (v2 < 0x2000)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 4096;
  }

  return v4 ^ 1u;
}

uint64_t *std::deque<char>::__insert_bidirectional[abi:ne200100]<std::__wrap_iter<char const*>>(int64x2_t *a1, char *a2, uint64_t a3, char *a4, char *a5, unint64_t a6)
{
  v6 = a6;
  v10 = a1[2].u64[0];
  v11 = v10 >> 12;
  v12 = a1->i64[1];
  v13 = a1[1].i64[0];
  v14 = (v12 + 8 * (v10 >> 12));
  if (v13 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14 + (a1[2].i64[0] & 0xFFF);
  }

  if (a3 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = a3 + ((a2 - v14) << 9) - (v15 + *a2) + *v14;
  }

  v17 = a1[2].i64[1];
  if (v16 >= v17 - v16)
  {
    v20 = ((v13 - v12) << 9) - 1;
    if (v13 == v12)
    {
      v20 = 0;
    }

    v21 = v10 + v17;
    v22 = v20 - v21;
    if (a6 > v22)
    {
      std::deque<char>::__add_back_capacity(a1, a6 - v22);
      v17 = a1[2].i64[1];
      v12 = a1->i64[1];
      v13 = a1[1].i64[0];
      v21 = a1[2].i64[0] + v17;
    }

    v23 = (v12 + 8 * (v21 >> 12));
    if (v13 == v12)
    {
      v24 = 0;
    }

    else
    {
      v24 = (*v23 + (v21 & 0xFFF));
    }

    *&v70 = v12 + 8 * (v21 >> 12);
    *(&v70 + 1) = v24;
    v46 = v17 - v16;
    if (v17 - v16 < v6)
    {
      v47 = &a5[-v6];
      if (v46 < v6 >> 1)
      {
        v47 = a4;
      }

      v48 = &v47[v46];
      if (v48 != a5)
      {
        v49 = v48;
        do
        {
          *v24++ = *v49;
          if (&v24[-*v23] == 4096)
          {
            v50 = v23[1];
            ++v23;
            v24 = v50;
          }

          ++v49;
          ++a1[2].i64[1];
        }

        while (v49 != a5);
      }

      a5 = v48;
      v6 = v17 - v16;
    }

    if (v6)
    {
      v51 = std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator-[abi:ne200100](&v70, v6);
      v53 = v51;
      v54 = v52;
      v55 = *(&v70 + 1);
      if (*(&v70 + 1) != v52)
      {
        v56 = v51;
        v57 = v52;
        do
        {
          *v24++ = *v57;
          if (&v24[-*v23] == 4096)
          {
            v58 = v23[1];
            ++v23;
            v24 = v58;
          }

          if (&(++v57)[-*v56] == 4096)
          {
            v59 = v56[1];
            ++v56;
            v57 = v59;
          }

          ++a1[2].i64[1];
          v55 = *(&v70 + 1);
        }

        while (v57 != *(&v70 + 1));
      }

      if (v6 < v46)
      {
        v60 = std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator-[abi:ne200100](&v70, v46);
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>,0>(v60, v61, v53, v54, v70, *(&v70 + 1), &v71);
        v55 = *(&v72 + 1);
        v70 = v72;
      }

      if (a5 != a4)
      {
        v66 = (v70 - 8);
        v65 = *v70;
        while (1)
        {
          v67 = v55 - v65;
          if (a5 - a4 >= v67)
          {
            v68 = v67;
          }

          else
          {
            v68 = a5 - a4;
          }

          a5 -= v68;
          if (v68)
          {
            memmove((v55 - v68), a5, v68);
          }

          if (a5 == a4)
          {
            break;
          }

          v69 = *v66--;
          v65 = v69;
          v55 = v69 + 4096;
        }
      }
    }
  }

  else
  {
    if (a6 > v10)
    {
      std::deque<char>::__add_front_capacity(a1, a6 - v10);
      v10 = a1[2].u64[0];
      v12 = a1->i64[1];
      v13 = a1[1].i64[0];
      v11 = v10 >> 12;
    }

    v18 = (v12 + 8 * v11);
    if (v13 == v12)
    {
      v19 = 0;
    }

    else
    {
      v19 = *v18 + (v10 & 0xFFF);
    }

    *&v70 = v12 + 8 * v11;
    *(&v70 + 1) = v19;
    if (v16 < v6)
    {
      v25 = &a4[v6];
      if (v16 < v6 >> 1)
      {
        v25 = a5;
      }

      v26 = &v25[-v16];
      if (v26 != a4)
      {
        v27 = v26;
        do
        {
          if (v19 == *v18)
          {
            v28 = *--v18;
            v19 = v28 + 4096;
          }

          v29 = *--v27;
          *--v19 = v29;
          a1[2] = vaddq_s64(a1[2], xmmword_19D27D5E0);
        }

        while (v27 != a4);
      }

      a4 = v26;
      v6 = v16;
    }

    if (v6)
    {
      v31 = std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator+[abi:ne200100](&v70, v6);
      v32 = v30;
      v33 = *(&v70 + 1);
      if (*(&v70 + 1) != v30)
      {
        v34 = v31;
        v35 = v30;
        do
        {
          if (v19 == *v18)
          {
            v36 = *--v18;
            v19 = v36 + 4096;
          }

          if (v35 == *v34)
          {
            v37 = *--v34;
            v35 = (v37 + 4096);
          }

          v38 = *--v35;
          *--v19 = v38;
          a1[2] = vaddq_s64(a1[2], xmmword_19D27D5E0);
          v33 = *(&v70 + 1);
        }

        while (v35 != *(&v70 + 1));
      }

      if (v6 < v16)
      {
        v39 = std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator+[abi:ne200100](&v70, v16);
        v71 = v70;
        std::__for_each_segment[abi:ne200100]<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>>(v31, v32, v39, v40, &v71);
        v33 = *(&v71 + 1);
        v70 = v71;
      }

      if (a4 != a5)
      {
        v42 = (v70 + 8);
        v41 = *v70;
        while (1)
        {
          v43 = v41 - v33 + 4096;
          if (a5 - a4 >= v43)
          {
            v44 = v43;
          }

          else
          {
            v44 = a5 - a4;
          }

          if (v44)
          {
            memmove(v33, a4, v44);
          }

          a4 += v44;
          if (a4 == a5)
          {
            break;
          }

          v45 = *v42++;
          v41 = v45;
          v33 = v45;
        }
      }
    }
  }

  v62 = a1->i64[1];
  if (a1[1].i64[0] == v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = *(v62 + 8 * (a1[2].i64[0] >> 12)) + (a1[2].i64[0] & 0xFFF);
  }

  *&v71 = v62 + 8 * (a1[2].i64[0] >> 12);
  *(&v71 + 1) = v63;
  return std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator+[abi:ne200100](&v71, v16);
}

const void **std::deque<char>::__add_front_capacity(const void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = a2;
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v3) << 9) - 1;
  }

  if ((v6 & 0xFFF) != 0)
  {
    v8 = (v6 >> 12) + 1;
  }

  else
  {
    v8 = v6 >> 12;
  }

  v9 = result[4];
  v10 = v7 - &v9[result[5]];
  if (v8 >= v10 >> 12)
  {
    v11 = v10 >> 12;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10 >> 12)
  {
    for (result[4] = &v9[4096 * v11]; v11; --v11)
    {
      v15 = v2[2];
      *&v17[0] = *(v15 - 1);
      v2[2] = v15 - 1;
      result = std::__split_buffer<char *>::emplace_front<char *>(v2, v17);
    }
  }

  else
  {
    v12 = v8 - v11;
    v13 = result[3] - *result;
    if (v8 - v11 > (v13 >> 3) - (v5 >> 3))
    {
      if (v13 >> 2 <= v12 + (v5 >> 3))
      {
        v14 = v12 + (v5 >> 3);
      }

      else
      {
        v14 = v13 >> 2;
      }

      v18 = result;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(result, v14);
      }

      memset(v17, 0, sizeof(v17));
      operator new();
    }

    if (v12)
    {
      if (v3 != *result)
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = &v9[4096 * v11]; v11; --v11)
    {
      v16 = v2[2];
      *&v17[0] = *(v16 - 1);
      v2[2] = v16 - 1;
      result = std::__split_buffer<char *>::emplace_front<char *>(v2, v17);
    }
  }

  return result;
}

void sub_19D1A8484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = *(a1 + 8) - *result + a2;
    if (v4 < 1)
    {
      result -= (4095 - v4) >> 12;
      v6 = *result;
    }

    else
    {
      result += v4 >> 12;
      v5 = *result;
    }
  }

  return result;
}

void *std::deque<char>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0xFFF) != 0)
  {
    v5 = (v4 >> 12) + 1;
  }

  else
  {
    v5 = v4 >> 12;
  }

  v6 = result[4];
  if (v5 >= v6 >> 12)
  {
    v7 = v6 >> 12;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 12)
  {
    for (result[4] = v6 - (v7 << 12); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<char *>::emplace_back<char *&>(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 12; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<char *>::emplace_back<char *&>(v2, v16);
    }
  }

  return result;
}

void sub_19D1A8800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator-[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = *(a1 + 8) - a2 - *result;
    if (v4 < 1)
    {
      result -= (4095 - v4) >> 12;
      v6 = *result;
    }

    else
    {
      result += v4 >> 12;
      v5 = *result;
    }
  }

  return result;
}

void ****std::__for_each_segment[abi:ne200100]<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>>(void *a1, _BYTE *a2, void *a3, _BYTE *a4, void ***a5)
{
  v11 = a5;
  if (a1 != a3)
  {
    v7 = a1 + 1;
    for (i = (*a1 + 4096); ; i = v9 + 4096)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>::operator()[abi:ne200100](&v11, a2, i);
      if (v7 == a3)
      {
        break;
      }

      v9 = *v7++;
      a2 = v9;
    }

    a2 = *v7;
  }

  return std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>::operator()[abi:ne200100](&v11, a2, a4);
}

void ****std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>::operator()[abi:ne200100](void ****result, _BYTE *__src, _BYTE *a3)
{
  v3 = *result;
  v5 = **result;
  v4 = (*result)[1];
  if (__src != a3)
  {
    v7 = __src;
    v8 = result;
    v10 = *v5++;
    v9 = v10;
    while (1)
    {
      v11 = v9 - v4 + 4096;
      if (a3 - v7 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = a3 - v7;
      }

      if (v12)
      {
        result = memmove(v4, v7, v12);
      }

      v7 += v12;
      if (v7 == a3)
      {
        break;
      }

      v13 = *v5++;
      v9 = v13;
      v4 = v13;
    }

    v4 = (v4 + v12);
    if (*(v5 - 1) + 4096 == v4)
    {
      v4 = *v5;
    }

    else
    {
      --v5;
    }

    v3 = *v8;
  }

  *v3 = v5;
  v3[1] = v4;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>,0>@<X0>(const void **a1@<X1>, char *a2@<X2>, const void **a3@<X3>, char *a4@<X4>, const void **a5@<X5>, char *a6@<X6>, const void ***a7@<X8>)
{
  v8 = a5;
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      goto LABEL_46;
    }

    v13 = *a5;
    v14 = a4;
    while (1)
    {
      v15 = &a6[-v13];
      if (v14 - a2 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14 - a2;
      }

      v14 -= v16;
      a6 -= v16;
      if (v16)
      {
        result = memmove(a6, v14, v16);
      }

      if (v14 == a2)
      {
        break;
      }

      v18 = *--v8;
      v13 = v18;
      a6 = (v18 + 4096);
    }

    goto LABEL_44;
  }

  v20 = *a3;
  if (*a3 != a4)
  {
    v21 = *a5;
    v22 = a4;
    while (1)
    {
      v23 = &a6[-v21];
      if (v22 - v20 >= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v22 - v20;
      }

      v22 -= v24;
      a6 -= v24;
      if (v24)
      {
        result = memmove(a6, v22, v24);
      }

      if (v22 == v20)
      {
        break;
      }

      v25 = *--v8;
      v21 = v25;
      a6 = (v25 + 4096);
    }

    if (*v8 + 4096 == a6)
    {
      v26 = v8[1];
      ++v8;
      a6 = v26;
    }
  }

  v27 = a3 - 1;
  if (a3 - 1 != a1)
  {
    v28 = *v8;
    do
    {
      v29 = *v27;
      v30 = *v27 + 4096;
      while (1)
      {
        v31 = (a6 - v28);
        if (v30 - v29 >= v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = v30 - v29;
        }

        v30 -= v32;
        a6 -= v32;
        if (v32)
        {
          result = memmove(a6, v30, v32);
        }

        if (v30 == v29)
        {
          break;
        }

        v33 = *--v8;
        v28 = v33;
        a6 = v33 + 4096;
      }

      v28 = *v8;
      if (*v8 + 4096 == a6)
      {
        v34 = v8[1];
        ++v8;
        v28 = v34;
        a6 = v34;
      }

      --v27;
    }

    while (v27 != a1);
  }

  v35 = *v27 + 4096;
  if (v35 != a2)
  {
    v36 = *v8;
    while (1)
    {
      v37 = &a6[-v36];
      if (v35 - a2 >= v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v35 - a2;
      }

      v35 -= v38;
      a6 -= v38;
      if (v38)
      {
        result = memmove(a6, v35, v38);
      }

      if (v35 == a2)
      {
        break;
      }

      v39 = *--v8;
      v36 = v39;
      a6 = (v39 + 4096);
    }

LABEL_44:
    if (*v8 + 4096 == a6)
    {
      v40 = v8[1];
      ++v8;
      a6 = v40;
    }
  }

LABEL_46:
  *a7 = a3;
  a7[1] = a4;
  a7[2] = v8;
  a7[3] = a6;
  return result;
}

uint64_t std::string::__insert_with_size<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>(std::string *a1, uint64_t a2, void *a3, std::string::value_type *a4, uint64_t a5, std::string::value_type *a6, std::string::size_type a7)
{
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = a1->__r_.__value_.__r.__words[0];
    v9 = a2 - a1->__r_.__value_.__r.__words[0];
    if (!a7)
    {
      return v10 + v9;
    }
  }

  else
  {
    v9 = a2 - a1;
    if (!a7)
    {
      v10 = a1;
      return v10 + v9;
    }
  }

  std::string::__init_with_sentinel[abi:ne200100]<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>(&__p, a3, a4, a5, a6);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v13 = std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a1, a7, v9, p_p, p_p + size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_19D1A8CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, std::string::size_type __n_add, std::string::size_type __n_copy, _BYTE *a4, _BYTE *a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size >= __n_add)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 22;
    v12 = this;
    if (22 - size >= __n_add)
    {
LABEL_7:
      v13 = size - __n_copy;
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + __n_copy + __n_add, v12 + __n_copy, v13);
      }

      goto LABEL_10;
    }
  }

  std::string::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v14 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
  if (a5 != a4)
  {
    memmove(v12 + __n_copy, a4, a5 - a4);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + __n_copy;
}

void std::string::__init_with_sentinel[abi:ne200100]<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>(std::string *this, void *a2, std::string::value_type *a3, uint64_t a4, std::string::value_type *a5)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      std::string::push_back(this, *v6++);
      if (&v6[-*a2] == 4096)
      {
        v9 = a2[1];
        ++a2;
        v6 = v9;
      }
    }

    while (v6 != a5);
  }
}

void sub_19D1A8E5C(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

uint64_t std::deque<char>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 4096;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<char *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<char *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x19EAF8BA0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_19D1A9034(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

_BYTE *applesauce::CF::convert_to<std::string,0>@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  if (!a1 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::details::CFString_get_value<true>(a1, a2);
}

_BYTE *applesauce::CF::details::CFString_get_value<true>@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    maxBufLen = 0;
    v11.location = 0;
    v11.length = Length;
    CFStringGetBytes(a1, v11, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    v7 = maxBufLen;
    if (maxBufLen >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (maxBufLen >= 0x17)
    {
      operator new();
    }

    a2[23] = maxBufLen;
    if (v7)
    {
      bzero(a2, v7);
    }

    a2[v7] = 0;
    if (a2[23] >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v12.location = 0;
    v12.length = Length;
    return CFStringGetBytes(a1, v12, 0x8000100u, 0, 0, v8, maxBufLen, &maxBufLen);
  }
}

void sub_19D1A9384(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1A9408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void sub_19D1A95CC(_Unwind_Exception *a1)
{
  MEMORY[0x19EAF8CA0](v2, 0x1060C40F6749743);
  CoreNLP::SubWordTagger::~SubWordTagger(v1);
  _Unwind_Resume(a1);
}

void *CoreNLP::ParagraphTagger::ParagraphTagger(CoreNLP::ParagraphTagger *this, CoreNLP::TaggerContext *a2, CoreNLP::StringBuffer *a3, uint64_t a4)
{
  result = CoreNLP::Tagger::Tagger(this, a2);
  *result = &unk_1F10ACDE0;
  result[5] = 0;
  result[6] = a3;
  result[7] = 0;
  result[8] = 0;
  result[9] = a4;
  return result;
}

const __CFString *CoreNLP::ParagraphTagger::setString(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, int a5)
{
  CoreNLP::Tagger::setString(a1, a2, a3, a4, a5);
  *(a1 + 64) = 0;
  v10.location = a3;
  v10.length = a4;
  result = CoreNLP::StringBuffer::setString(*(a1 + 48), a2, v10, **(a1 + 32) >> 31);
  *(a1 + 56) = 0;
  return result;
}

uint64_t CoreNLP::ParagraphTagger::getCharacterBuffer(CoreNLP::ParagraphTagger *this)
{
  result = *(this + 7);
  if (!result)
  {
    result = CoreNLP::StringBuffer::getSubStringCharsOfRange(*(this + 6), *(*(this + 4) + 16));
    *(this + 7) = result;
  }

  return result;
}

uint64_t CoreNLP::ParagraphTagger::enumerateTokensInRange(CoreNLP::ParagraphTagger *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  v18[2] = 0;
  result = CoreNLP::ParagraphTagger::getCharacterBuffer(a1);
  if (result)
  {
    v10 = 0;
    v11 = result - 2 * *(*(a1 + 4) + 16) + 2 * a2 + 2;
    v12 = 0;
    do
    {
      if (v10 < a3)
      {
        v13 = -v10;
        v14 = (v11 + 2 * v10);
        while (1)
        {
          v15 = *(v14 - 1);
          if ((v15 - 14) >= 0x201B)
          {
            v16 = v15 == 10 || v15 == 13;
            if (v16 || v15 == 8233)
            {
              break;
            }
          }

          --v13;
          ++v14;
          if (!(a3 + v13))
          {
            v12 = a3;
            goto LABEL_18;
          }
        }

        v12 = 1 - v13;
        if (1 - v13 < a3 - 1 && v15 == 13)
        {
          v12 = (*v14 == 10) - v13 + 1;
        }
      }

LABEL_18:
      v18[0] = v10 + a2;
      v18[1] = v12 - v10;
      result = (*(a5 + 16))(a5, v18, &v19);
      if (v19)
      {
        break;
      }

      v10 = v12;
    }

    while (v12 < a3);
  }

  return result;
}

uint64_t CoreNLP::ParagraphTagger::IsParagraphSeparatorTypeCharacter(CoreNLP::ParagraphTagger *this)
{
  v1 = this == 8233;
  if (this == 13)
  {
    v1 = 1;
  }

  v2 = this == 10 || v1;
  if ((this - 14) >= 0x201B)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

CoreNLP::ParagraphTagger *CoreNLP::ParagraphTagger::fastEnumerateTokens(CoreNLP::ParagraphTagger *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 4);
  if (*(v4 + 32) == 1)
  {
    v6 = *(v4 + 24);
    if (v6)
    {
      return CoreNLP::ParagraphTagger::enumerateTokensInRange(result, *(v4 + 16), v6, a4, a3);
    }
  }

  return result;
}

CoreNLP::ParagraphTagger *CoreNLP::ParagraphTagger::enumerateTokens(CoreNLP::ParagraphTagger *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 4);
  if (*(v5 + 32) == 1)
  {
    v6 = *(v5 + 24);
    v7 = !v6 || a3 == 0;
    if (!v7 && a2 != -1)
    {
      v9 = *(v5 + 16);
      v11 = a2 < v9;
      v10 = v9 + v6;
      v11 = !v11 && a2 + a3 <= v10;
      if (v11)
      {
        return CoreNLP::ParagraphTagger::enumerateTokensInRange(a1, a2, a3, a4, a5);
      }
    }
  }

  return a1;
}

char *CoreNLP::ParagraphTagger::goToTokenAtIndex(CoreNLP::ParagraphTagger *this, unint64_t a2, uint64_t a3)
{
  v3 = *(this + 4);
  v4 = *(v3 + 16);
  v5 = a3 - v4;
  if (a3 < v4 || *(v3 + 24) + v4 <= a3)
  {
    return 0;
  }

  v8 = this + 8;
  v7 = *(this + 1);
  if (v7 <= a3 && *(this + 2) + v7 > a3)
  {
    return v8;
  }

  CharacterBuffer = CoreNLP::ParagraphTagger::getCharacterBuffer(this);
  if (!CharacterBuffer)
  {
    return 0;
  }

  if (v5)
  {
    v10 = (CharacterBuffer + 2 * v5);
    v11 = *v10;
    v12 = *(v10 - 1);
    v13 = (v11 == 10) & (v12 == 13);
    if (v11 == 10 && v12 == 13)
    {
      v14 = v12;
    }

    else
    {
      v14 = v11;
    }

    v15 = v5 - v13;
    if (v5 != v13)
    {
      if ((v14 - 14) < 0x201Bu || (v14 != 10 ? (v16 = v14 == 8233) : (v16 = 1), !v16 ? (v17 = v14 == 13) : (v17 = 1), !v17 || (--v15, v15)))
      {
        while (1)
        {
          v18 = *(CharacterBuffer + 2 * v15);
          if ((v18 - 14) >= 0x201B)
          {
            v19 = v18 == 10 || v18 == 8233;
            if (v19 || v18 == 13)
            {
              break;
            }
          }

          if (!--v15)
          {
            goto LABEL_35;
          }
        }

        ++v15;
      }
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_35:
  v22 = *(v3 + 24);
  if (v5 < v22)
  {
    while (1)
    {
      v23 = *(CharacterBuffer + 2 * v5);
      if ((v23 - 14) >= 0x201B)
      {
        v24 = v23 == 10 || v23 == 13;
        if (v24 || v23 == 8233)
        {
          break;
        }
      }

      if (v22 == ++v5)
      {
        v5 = *(v3 + 24);
        goto LABEL_51;
      }
    }

    ++v5;
  }

  if (v5 < v22 - 1 && *(CharacterBuffer + 2 * v5) == 13 && *(CharacterBuffer + 2 * (v5 + 1)) == 10)
  {
    ++v5;
  }

LABEL_51:
  *(this + 1) = v15 + v4;
  *(this + 2) = v5 - v15;
  *(this + 8) = v5;
  return v8;
}

char *CoreNLP::ParagraphTagger::getNextToken(CoreNLP::ParagraphTagger *this)
{
  v1 = *(this + 4);
  if (*(this + 8) >= *(v1 + 24))
  {
    return 0;
  }

  CharacterBuffer = CoreNLP::ParagraphTagger::getCharacterBuffer(this);
  if (!CharacterBuffer)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(this + 8);
  v6 = (CharacterBuffer + 2 * v5 + 2);
  while (1)
  {
    v7 = v5 + v4;
    if (v5 + v4 >= *(v1 + 24))
    {
      goto LABEL_39;
    }

    v8 = v4;
    v9 = *(v6 - 1);
    if ((v9 - 14) >= 0x201B)
    {
      v10 = v9 == 10 || v9 == 13;
      if (v10 || v9 == 8233)
      {
        break;
      }
    }

    ++v4;
    v12 = *(this + 9);
    if (v12 >= 1 && v4 >= v12)
    {
      if (u_isspace(*(v6 - 1)) || u_ispunct(v9))
      {
        v20 = v5 + v8;
LABEL_38:
        v7 = v20 + 1;
        goto LABEL_39;
      }

      v12 = *(this + 9);
    }

    ++v6;
    if (v12 >= 1 && v4 == v12 + 36)
    {
      v14 = *(v1 + 16);
      v15 = *(v1 + 24);
      RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(*(*(this + 4) + 8), v5 + v4 + v14);
      v7 = v5 + v8 + 1;
      if ((RangeOfComposedCharactersAtIndex.location & 0x8000000000000000) == 0 && RangeOfComposedCharactersAtIndex.length >= 2)
      {
        v7 = RangeOfComposedCharactersAtIndex.location - v14;
        if (RangeOfComposedCharactersAtIndex.location - v14 >= v15 || v7 < v5)
        {
          v7 = v5 + v4;
        }
      }

      goto LABEL_39;
    }
  }

  v7 = v5 + v4 + 1;
  if (v9 == 13 && v7 < *(v1 + 24) - 1)
  {
    if (*v6 == 10)
    {
      v19 = v5 + 1;
    }

    else
    {
      v19 = v5;
    }

    v20 = v19 + v4;
    goto LABEL_38;
  }

LABEL_39:
  *(this + 1) = *(v1 + 16) + v5;
  v18 = this + 8;
  *(v18 + 1) = v7 - v5;
  *(v18 + 7) = v7;
  return v18;
}

void CoreNLP::ParagraphTagger::~ParagraphTagger(CoreNLP::ParagraphTagger *this)
{
  CoreNLP::ParagraphTagger::~ParagraphTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

{
  *this = &unk_1F10ACDE0;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    CoreNLP::StringBuffer::~StringBuffer(v2);
    MEMORY[0x19EAF8CA0]();
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

void *CoreNLP::MeCabImpl::MeCabImpl(void *this)
{
  *this = &unk_1F10ACE98;
  this[1] = 0;
  return this;
}

void CoreNLP::MeCabImpl::~MeCabImpl(CoreNLP::MeCabImpl *this)
{
  *this = &unk_1F10ACE98;
  std::unique_ptr<mecab_t,CoreNLP::MeCabImpl::Deleter>::reset[abi:ne200100](this + 1, 0);
}

{
  *this = &unk_1F10ACE98;
  std::unique_ptr<mecab_t,CoreNLP::MeCabImpl::Deleter>::reset[abi:ne200100](this + 1, 0);

  JUMPOUT(0x19EAF8CA0);
}

BOOL CoreNLP::MeCabImpl::init(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    return 0;
  }

  *(&v16.__r_.__value_.__s + 23) = 3;
  LODWORD(v16.__r_.__value_.__l.__data_) = 2122797;
  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  CoreNLP::getPathRelativeToPlatformRoot(v7, __p);
  if ((v15 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v9 = v15;
  }

  else
  {
    v9 = __p[1];
  }

  std::string::append(&v16, v8, v9);
  if ((v15 & 0x80000000) == 0)
  {
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  operator delete(__p[0]);
  if (a3)
  {
LABEL_18:
    std::string::append(&v16, " -l1");
  }

LABEL_19:
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v16.__r_.__value_.__r.__words[0];
  }

  v12 = MEMORY[0x19EAF9310](v11);
  std::unique_ptr<mecab_t,CoreNLP::MeCabImpl::Deleter>::reset[abi:ne200100]((a1 + 8), v12);
  v10 = *(a1 + 8) != 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_19D1A9E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t std::unique_ptr<mecab_t,CoreNLP::MeCabImpl::Deleter>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return mecab_destroy();
  }

  return result;
}

uint64_t CoreNLP::MeCabImpl::parseToNode(CoreNLP::MeCabImpl *this, const unsigned __int16 *a2)
{
  result = *(this + 1);
  if (result)
  {
    return MEMORY[0x1EEE661C0]();
  }

  return result;
}

uint64_t CoreNLP::MeCabImpl::parseNBestInit(CoreNLP::MeCabImpl *this, const unsigned __int16 *a2)
{
  result = *(this + 1);
  if (result)
  {
    return mecab_nbest_init2() != 0;
  }

  return result;
}

uint64_t CoreNLP::MeCabImpl::nextNode(CoreNLP::MeCabImpl *this)
{
  result = *(this + 1);
  if (result)
  {
    return MEMORY[0x1EEE661B0]();
  }

  return result;
}

uint64_t CoreNLP::MeCabImpl::getLastNameLength(CoreNLP::MeCabImpl *this, const CoreNLP::UStringPiece *a2)
{
  if (!*(this + 1))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a2 + 1);
  v3 = 2 * *(a2 + 3);
  return (mecab_get_lastname_length() >> 1);
}

uint64_t corelm::LanguageModel::LanguageModel(uint64_t a1, CFTypeRef *a2, uint64_t *a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  cf = v5;
  corelm::NeuralNetwork::NeuralNetwork(a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v6 = *a3;
  *a3 = 0;
  *(a1 + 104) = v6;
  *(a1 + 112) = 1065353216;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  return a1;
}

void sub_19D1AA028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void applesauce::CF::URLRef::~URLRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::optional<applesauce::CF::ArrayRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void corelm::LanguageModel::getOutputProbs(corelm::NeuralNetwork *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2;
  }

  v8 = corelm::NeuralNetwork::outputDimension(a1);
  if (a3 == 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (a3 == 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v13.n128_u64[0] = v9;
  v13.n128_u64[1] = v10;
  std::string::basic_string[abi:ne200100]<0>(__p, "output");
  corelm::NeuralNetwork::getOutput<2ul>(__p, a1, &v13, a3, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D1AA1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double corelm::NeuralNetwork::getOutput<2ul>@<D0>(UInt8 *bytes@<X3>, uint64_t *a2@<X0>, __n128 *a3@<X1>, int a4@<W2>, uint64_t a5@<X8>)
{
  v8 = bytes[23];
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (bytes[23])
    {
      v9 = *a2;
      goto LABEL_6;
    }

LABEL_9:
    Output = _MRLNeuralNetworkGetOutput(*a2, 0);
    goto LABEL_10;
  }

  v8 = *(bytes + 1);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = *a2;
  bytes = *bytes;
  if (bytes)
  {
LABEL_6:
    v10 = CFStringCreateWithBytes(0, bytes, v8, 0x8000100u, 0);
    cf = v10;
    if (!v10)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_7;
  }

  v10 = 0;
  cf = 0;
LABEL_7:
  Output = _MRLNeuralNetworkGetOutput(v9, v10);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_10:

  *&result = corelm::util::Matrix<float>::Matrix(a5, Output, a3, a4).n128_u64[0];
  return result;
}

void sub_19D1AA2F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t a1)
{
  v2 = *(a1 + 8);
  __p = 0;
  v31 = 0;
  v32 = 0;
  std::vector<void const*>::reserve(&__p, v2);
  values = 0;
  v28 = 0;
  v29 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = *a1 + 16 * v3;
    do
    {
      v6 = *v4;
      v7 = v31;
      if (v31 >= v32)
      {
        v9 = (v31 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v10 = (v32 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&__p, v11);
        }

        v12 = (8 * v9);
        *v12 = v6;
        v8 = 8 * v9 + 8;
        v13 = v12 - (v31 - __p);
        memcpy(v13, __p, v31 - __p);
        v14 = __p;
        __p = v13;
        v31 = v8;
        v32 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v31 = v6;
        v8 = (v7 + 8);
      }

      v31 = v8;
      v15 = v4[1];
      v16 = v28;
      if (v28 >= v29)
      {
        v18 = v28 - values;
        if ((v18 + 1) >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v19 = (v29 - values) >> 2;
        if (v19 <= v18 + 1)
        {
          v19 = v18 + 1;
        }

        if (v29 - values >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&values, v20);
        }

        v21 = (8 * v18);
        *v21 = v15;
        v17 = 8 * v18 + 8;
        v22 = v21 - (v28 - values);
        memcpy(v22, values, v28 - values);
        v23 = values;
        values = v22;
        v28 = v17;
        v29 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v28 = v15;
        v17 = (v16 + 1);
      }

      v28 = v17;
      v4 += 2;
    }

    while (v4 != v5);
  }

  v24 = CFDictionaryCreate(0, __p, values, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (values)
  {
    v28 = values;
    operator delete(values);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v24;
}

void sub_19D1AA584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void *std::__construct_at[abi:ne200100]<applesauce::CF::ArrayRef,applesauce::CF::ArrayRef const&,applesauce::CF::ArrayRef*>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  return a1;
}

uint64_t _MRLNeuralNetworkGetOutput(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getMRLNeuralNetworkGetOutputSymbolLoc(void)::ptr;
  v11 = getMRLNeuralNetworkGetOutputSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkGetOutputSymbolLoc(void)::ptr)
  {
    v5 = MontrealLibrary();
    v9[3] = dlsym(v5, "MRLNeuralNetworkGetOutput");
    getMRLNeuralNetworkGetOutputSymbolLoc(void)::ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    Output = _MRLNeuralNetworkGetOutput();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(Output);
  }

  return v4(a1, a2, 0);
}

{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getMRLNeuralNetworkGetOutputSymbolLoc(void)::ptr;
  v11 = getMRLNeuralNetworkGetOutputSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkGetOutputSymbolLoc(void)::ptr)
  {
    v5 = MontrealLibrary();
    v9[3] = dlsym(v5, "MRLNeuralNetworkGetOutput");
    getMRLNeuralNetworkGetOutputSymbolLoc(void)::ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    Output = _MRLNeuralNetworkGetOutput();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(Output);
  }

  return v4(a1, a2, 0);
}

void *___ZL37getMRLNeuralNetworkGetOutputSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkGetOutput");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkGetOutputSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MontrealLibrary(void)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MontrealLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL19MontrealLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76248E8;
    v6 = 0;
    MontrealLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = MontrealLibraryCore(char **)::frameworkLibrary;
  v1 = v4[0];
  if (!MontrealLibraryCore(char **)::frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MontrealLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL19MontrealLibraryCorePPc_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7624920;
    v6 = 0;
    MontrealLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = MontrealLibraryCore(char **)::frameworkLibrary;
  v1 = v4[0];
  if (!MontrealLibraryCore(char **)::frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MontrealLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL19MontrealLibraryCorePPc_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7624938;
    v6 = 0;
    MontrealLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = MontrealLibraryCore(char **)::frameworkLibrary;
  v1 = v4[0];
  if (!MontrealLibraryCore(char **)::frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MontrealLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL19MontrealLibraryCorePPc_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7625908;
    v6 = 0;
    MontrealLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = MontrealLibraryCore(char **)::frameworkLibrary;
  v1 = v4[0];
  if (!MontrealLibraryCore(char **)::frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t ___ZL19MontrealLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MontrealLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if ((v9 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
  *this = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_19D1AAAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void corelm::LanguageModel::updateModel<long,void>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "input");
  corelm::NeuralNetwork::setInputTensor<long,void>(a1, a2, a3, __p, 1);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (corelm::util::contains<std::string,char const*,void>((a1 + 8), "position"))
  {
    v19 = 0;
    v16 = (a3 & ~(a3 >> 63));
    v17 = xmmword_19D27D650;
    *__p = xmmword_19D27D560;
    std::vector<long>::vector[abi:ne200100]<corelm::util::NumRange<long>::iterator,0>(&v14, __p, &v16);
    v10 = v14;
    if (v15 != v14)
    {
      v11 = (v15 - v14) >> 3;
      if (v11 <= 1)
      {
        v11 = 1;
      }

      do
      {
        *v10++ += a5;
        --v11;
      }

      while (v11);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "position");
    corelm::NeuralNetwork::setInputTensor<long,void>(a1, v14, (v15 - v14) >> 3, __p, 1);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  if (corelm::util::contains<std::string,char const*,void>((a1 + 8), "temperature"))
  {
    LODWORD(v14) = *(a1 + 112);
    __p[1] = 0;
    v19 = 0;
    __p[0] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__p, &v14, &v14 + 4, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(&v16, "temperature");
    corelm::NeuralNetwork::setInputTensor<float,void>(a1, __p[0], (__p[1] - __p[0]) >> 2, &v16, 1);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  if (corelm::util::contains<std::string,char const*,void>((a1 + 8), "segment"))
  {
    LODWORD(v14) = 0;
    __p[1] = 0;
    v19 = 0;
    __p[0] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__p, &v14, &v14 + 4, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(&v16, "segment");
    corelm::NeuralNetwork::setInputTensor<float,void>(a1, __p[0], (__p[1] - __p[0]) >> 2, &v16, 1);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v12 = 0;
  __p[0] = 0;
  if (*(a4 + 8) == 1)
  {
    v12 = *a4;
    if (*a4)
    {
      CFRetain(*a4);
    }
  }

  cf = v12;
  corelm::NeuralNetwork::predict(a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_19D1AADC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void corelm::NeuralNetwork::setInputTensor<long,void>(corelm::NeuralNetwork *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5 * a3;
  corelm::NeuralNetwork::updateMostRecentInputs<long,void>(a1, a2, a5 * a3, a4);
  v10 = *(std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 56, a4) + 56);
  InputTensor = corelm::NeuralNetwork::createInputTensor(a1, a3, a5);
  *(std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 80, a4) + 56) = InputTensor;
  v12 = std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 80, a4);
  _MRLNeuralNetworkTensorAppendData(*(v12 + 56), v10, 4 * v9);
  v13 = *a1;
  v14 = *(a4 + 23);
  if (v14 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v15)
  {
    if (v14 >= 0)
    {
      v16 = *(a4 + 23);
    }

    else
    {
      v16 = *(a4 + 8);
    }

    v17 = CFStringCreateWithBytes(0, v15, v16, 0x8000100u, 0);
    cf = v17;
    if (!v17)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v17 = 0;
    cf = 0;
  }

  v19 = std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 80, a4);
  _MRLNeuralNetworkSetInputTensor(v13, v17, *(v19 + 56));
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_19D1AB004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

double corelm::NeuralNetwork::updateMostRecentInputs<long,void>(uint64_t a1, uint64_t *a2, unint64_t a3, const void **a4)
{
  std::vector<float>::vector[abi:ne200100](&v14, a3);
  if (a3)
  {
    v8 = v14;
    v9 = 8 * a3;
    do
    {
      v10 = *a2++;
      *v8++ = v10;
      v9 -= 8;
    }

    while (v9);
  }

  v16 = a4;
  v11 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 56, a4);
  v12 = v11[7];
  if (v12)
  {
    v11[8] = v12;
    operator delete(v12);
    v11[7] = 0;
    v11[8] = 0;
    v11[9] = 0;
  }

  result = *&v14;
  *(v11 + 7) = v14;
  v11[9] = v15;
  return result;
}

void sub_19D1AB0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t corelm::NeuralNetwork::createInputTensor(corelm::NeuralNetwork *this, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a2;
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],unsigned long &>(v19, "InputDimension", &v13);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],unsigned long &>(&v20, "SequenceLength", &v14);
  v15 = v19;
  v16 = 2;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v15);
  for (i = 0; i != -4; i -= 2)
  {
    v5 = *(&v21 + i * 8);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = v19[i + 2];
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v7 = getMRLNeuralNetworkTensorCreateSymbolLoc(void)::ptr;
  v18 = getMRLNeuralNetworkTensorCreateSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkTensorCreateSymbolLoc(void)::ptr)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v20 = ___ZL40getMRLNeuralNetworkTensorCreateSymbolLocv_block_invoke;
    v21 = &unk_1E76248C8;
    v22 = &v15;
    v8 = MontrealLibrary();
    v9 = dlsym(v8, "MRLNeuralNetworkTensorCreate");
    v22[1][3] = v9;
    getMRLNeuralNetworkTensorCreateSymbolLoc(void)::ptr = v22[1][3];
    v7 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);
  if (!v7)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v10 = v7(CFDictionaryRef);
  if (CFDictionaryRef)
  {
    CFRelease(CFDictionaryRef);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_19D1AB2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _MRLNeuralNetworkTensorAppendData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getMRLNeuralNetworkTensorAppendDataSymbolLoc(void)::ptr;
  v13 = getMRLNeuralNetworkTensorAppendDataSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkTensorAppendDataSymbolLoc(void)::ptr)
  {
    v7 = MontrealLibrary();
    v11[3] = dlsym(v7, "MRLNeuralNetworkTensorAppendData");
    getMRLNeuralNetworkTensorAppendDataSymbolLoc(void)::ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    Output = _MRLNeuralNetworkGetOutput();
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(Output);
  }

  return v6(a1, a2, a3);
}

uint64_t _MRLNeuralNetworkSetInputTensor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getMRLNeuralNetworkSetInputTensorSymbolLoc(void)::ptr;
  v13 = getMRLNeuralNetworkSetInputTensorSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkSetInputTensorSymbolLoc(void)::ptr)
  {
    v7 = MontrealLibrary();
    v11[3] = dlsym(v7, "MRLNeuralNetworkSetInputTensor");
    getMRLNeuralNetworkSetInputTensorSymbolLoc(void)::ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    Output = _MRLNeuralNetworkGetOutput();
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(Output);
  }

  return v6(a1, a2, a3, 0);
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],unsigned long &>(applesauce::CF::TypeRef *a1, char *a2, uint64_t *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_19D1AB800(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void *___ZL40getMRLNeuralNetworkTensorCreateSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkTensorCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkTensorCreateSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void *___ZL44getMRLNeuralNetworkTensorAppendDataSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkTensorAppendData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkTensorAppendDataSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getMRLNeuralNetworkSetInputTensorSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkSetInputTensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkSetInputTensorSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BOOL corelm::util::contains<std::string,char const*,void>(uint64_t *a1, char *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = __p;
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v6 = v14;
  if (v3 != v4)
  {
    if ((v14 & 0x80u) == 0)
    {
      v7 = v14;
    }

    else
    {
      v7 = __p[1];
    }

    if ((v14 & 0x80u) != 0)
    {
      v5 = __p[0];
    }

    while (1)
    {
      v8 = *(v3 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v3 + 8);
      }

      if (v8 == v7)
      {
        v10 = v9 >= 0 ? v3 : *v3;
        if (!memcmp(v10, v5, v7))
        {
          break;
        }
      }

      v3 += 24;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }
  }

  v11 = a1[1];
  if ((v6 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  return v3 != v11;
}

void *std::vector<long>::vector[abi:ne200100]<corelm::util::NumRange<long>::iterator,0>(void *a1, void *a2, void *a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = a2[1];
  v6 = *a2 + a2[2] * v5;
  v7 = a3[2] * a3[1];
  if (v6 != v7 + *a3)
  {
    v4 = 0;
    v8 = *a3 + v7 - v6;
    do
    {
      ++v4;
      v8 -= v5;
    }

    while (v8);
  }

  v12 = *a2;
  v13 = a2[2];
  v10 = *a3;
  v11 = a3[2];
  std::vector<long>::__init_with_size[abi:ne200100]<corelm::util::NumRange<long>::iterator,corelm::util::NumRange<long>::iterator>(a1, &v12, &v10, v4);
  return a1;
}

uint64_t std::vector<long>::__init_with_size[abi:ne200100]<corelm::util::NumRange<long>::iterator,corelm::util::NumRange<long>::iterator>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1ABB9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void corelm::NeuralNetwork::setInputTensor<float,void>(corelm::NeuralNetwork *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5 * a3;
  corelm::NeuralNetwork::updateMostRecentInputs<float,void>(a1, a2, a5 * a3, a4);
  v10 = *(std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 56, a4) + 56);
  InputTensor = corelm::NeuralNetwork::createInputTensor(a1, a3, a5);
  *(std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 80, a4) + 56) = InputTensor;
  v12 = std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 80, a4);
  _MRLNeuralNetworkTensorAppendData(*(v12 + 56), v10, 4 * v9);
  v13 = *a1;
  v14 = *(a4 + 23);
  if (v14 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v15)
  {
    if (v14 >= 0)
    {
      v16 = *(a4 + 23);
    }

    else
    {
      v16 = *(a4 + 8);
    }

    v17 = CFStringCreateWithBytes(0, v15, v16, 0x8000100u, 0);
    cf = v17;
    if (!v17)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v17 = 0;
    cf = 0;
  }

  v19 = std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 80, a4);
  _MRLNeuralNetworkSetInputTensor(v13, v17, *(v19 + 56));
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_19D1ABD64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

double corelm::NeuralNetwork::updateMostRecentInputs<float,void>(uint64_t a1, uint64_t a2, unint64_t a3, const void **a4)
{
  v9 = 0uLL;
  v10 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v9, a2, a2 + 4 * a3, a3);
  v11 = a4;
  v6 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 56, a4);
  v7 = v6[7];
  if (v7)
  {
    v6[8] = v7;
    operator delete(v7);
    v6[7] = 0;
    v6[8] = 0;
    v6[9] = 0;
  }

  result = *&v9;
  *(v6 + 7) = v9;
  v6[9] = v10;
  return result;
}

void sub_19D1ABE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1ABEA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_19D1ABF1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *Korean::POSID::getPOSCombiningRules(Korean::POSID *this)
{
  v25[2] = *MEMORY[0x1E69E9840];
  {
    v14 = 131076;
    memset(v15, 0, sizeof(v15));
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(v15, &v14, v15, 2);
    v13 = 196612;
    memset(v16, 0, sizeof(v16));
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(v16, &v13, &v14, 2);
    v12 = 589846;
    memset(v17, 0, sizeof(v17));
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(v17, &v12, &v13, 2);
    v11 = 2686998;
    memset(v18, 0, sizeof(v18));
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(v18, &v11, &v12, 2);
    v10 = 589847;
    memset(v19, 0, sizeof(v19));
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(v19, &v10, &v11, 2);
    v9 = 589852;
    memset(v20, 0, sizeof(v20));
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(v20, &v9, &v10, 2);
    v8 = 720924;
    memset(v21, 0, sizeof(v21));
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(v21, &v8, &v9, 2);
    v7 = 786460;
    memset(v22, 0, sizeof(v22));
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(v22, &v7, &v8, 2);
    v6 = 917532;
    memset(v23, 0, sizeof(v23));
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(v23, &v6, &v7, 2);
    v5 = 2687004;
    v25[0] = 0;
    v25[1] = 0;
    v24 = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&v24, &v5, &v6, 2);
    std::set<std::vector<unsigned short>>::set[abi:ne200100](&Korean::POSID::getPOSCombiningRules(void)::posCombiningRules, v15, 10);
    for (i = 0; i != -30; i -= 3)
    {
      v4 = v25[i - 1];
      if (v4)
      {
        v25[i] = v4;
        operator delete(v4);
      }
    }

    __cxa_atexit(std::set<std::vector<unsigned short>>::~set[abi:ne200100], &Korean::POSID::getPOSCombiningRules(void)::posCombiningRules, &dword_19D184000);
  }

  v1 = *MEMORY[0x1E69E9840];
  return &Korean::POSID::getPOSCombiningRules(void)::posCombiningRules;
}

void sub_19D1AC228(_Unwind_Exception *a1)
{
  v3 = (v1 + 224);
  v4 = -240;
  while (1)
  {
    v5 = *(v3 - 1);
    if (v5)
    {
      *v3 = v5;
      operator delete(v5);
    }

    v3 -= 3;
    v4 += 24;
    if (!v4)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t CoreNLP::KoreanLineBreakConnector::connect(CoreNLP::KoreanLineBreakConnector *a1, uint64_t a2, uint64_t a3)
{
  CoreNLP::KoreanLineBreakConnector::connectionRules(a1);
}

uint64_t anonymous namespace::shouldConnect(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if (!v4 || *(v4 + 91) == 3)
  {
    return 0;
  }

  v6 = *(v4 + 82);
  v7 = *(v4 + 80);
  if (v6 != v7)
  {
    return *(*(v4 + 64) - ((v6 - v7) & 0xFFFFFFFFFFFFFFFELL)) == 160;
  }

  v8 = *a1;
  v9 = a1[1];
  if (*a1 == v9)
  {
    return 0;
  }

  do
  {
    result = std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::operator()(v8, a2, v4, a3);
    if (result)
    {
      break;
    }

    v8 += 32;
  }

  while (v8 != v9);
  return result;
}

uint64_t *CoreNLP::KoreanLineBreakConnector::connectionRules(CoreNLP::KoreanLineBreakConnector *this)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    v4[0] = &unk_1F10AD060;
    v4[1] = Korean::twotwoRule;
    v4[3] = v4;
    v5[0] = &unk_1F10AD060;
    v5[3] = v5;
    v6[0] = &unk_1F10AD060;
    v6[3] = v6;
    v7[0] = &unk_1F10AD060;
    v7[3] = v7;
    v8[0] = &unk_1F10AD060;
    v8[1] = Korean::numberRule;
    v8[3] = v8;
    v9[0] = &unk_1F10AD060;
    v9[1] = Korean::lineBreakPosRule;
    v9[3] = v9;
    CoreNLP::KoreanLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable = 0;
    *algn_1EB012728 = 0;
    qword_1EB012730 = 0;
    std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::__init_with_size[abi:ne200100]<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)> const*,std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)> const*>(&CoreNLP::KoreanLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable, v4, &v10, 6uLL);
    for (i = 20; i != -4; i -= 4)
    {
      std::__function::__value_func<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::~__value_func[abi:ne200100](&v4[i]);
    }

    __cxa_atexit(std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::~vector[abi:ne200100], &CoreNLP::KoreanLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable, &dword_19D184000);
  }

  v1 = *MEMORY[0x1E69E9840];
  return &CoreNLP::KoreanLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable;
}

void sub_19D1AC650(_Unwind_Exception *a1)
{
  for (i = 160; i != -32; i -= 32)
  {
    std::__function::__value_func<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::~__value_func[abi:ne200100](v1 + i);
  }

  _Unwind_Resume(a1);
}

BOOL Korean::twotwoRule(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 90) != 3)
  {
    goto LABEL_9;
  }

  v6 = -56613888;
  v7 = *(a2 + 64);
  v8 = *(a2 + 80);
  if (v8 != 2)
  {
    if (v8 != 4)
    {
      v9 = 0;
      goto LABEL_8;
    }

    v6 = v7[1] - 56613888;
  }

  v9 = *v7;
  if ((v9 & 0xF800) == 0xD800)
  {
    v9 = v6 + (v9 << 10);
  }

LABEL_8:
  if (u_ispunct(v9))
  {
    return 0;
  }

LABEL_9:
  if (a1)
  {
    v10 = a1[40];
    if ((v10 & 0xFFFE) == 2 && (!*a1 || *(*a1 + 91) == 2 || a1[41] != v10) && a1[44] != 22)
    {
      return 1;
    }
  }

  v11 = *(a2 + 80);
  if ((v11 & 0xFFFE) != 2)
  {
    goto LABEL_26;
  }

  v12 = *(a2 + 8);
  if (!v12 || *(v12 + 90) != 3)
  {
    goto LABEL_26;
  }

  v13 = -56613888;
  v14 = *(v12 + 64);
  v15 = *(v12 + 80);
  if (v15 == 2)
  {
    goto LABEL_21;
  }

  if (v15 == 4)
  {
    v13 = v14[1] - 56613888;
LABEL_21:
    v16 = *v14;
    if ((v16 & 0xF800) == 0xD800)
    {
      v16 = v13 + (v16 << 10);
    }

    goto LABEL_24;
  }

  v16 = 0;
LABEL_24:
  if (u_ispunct(v16))
  {
    return 1;
  }

  v11 = *(a2 + 80);
LABEL_26:
  if ((v11 & 0xFFFE) != 2)
  {
    if (a3 != 1)
    {
      return 0;
    }

LABEL_38:
    v21 = a1[44] == 22;
    return !v21;
  }

  v17 = *(a2 + 8);
  if (v17 && (*(v17 + 91) == 3 || *(v17 + 82) != *(v17 + 80)) && *(a2 + 88) != 36)
  {
    return 1;
  }

  if (a3 == 1)
  {
    goto LABEL_38;
  }

  v18 = a1[44];
  if (v18 != 41)
  {
    if (v18 == 22)
    {
      if (*(a2 + 88) == 41)
      {
        v19 = *(a2 + 8);
        if (v19)
        {
          return *(v19 + 88) == 9;
        }
      }

      return 0;
    }

    goto LABEL_46;
  }

  if (*a1 && *(*a1 + 88) == 22)
  {
    return 0;
  }

LABEL_46:
  v21 = *(a2 + 88) == 36;
  return !v21;
}

uint64_t anonymous namespace::punctuationRule(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 80) < 2u)
    {
      return 0;
    }

    v4 = u_charType(**(result + 64));
    result = 1;
    v5 = 1 << v4;
    if (((1 << v4) & 0x10100000) == 0)
    {
      if (!a2)
      {
        return 0;
      }

      v6 = *(a2 + 80);
      if (v6 < 2)
      {
        return 0;
      }

      if ((v5 & 0x20200000) == 0)
      {
LABEL_18:
        v12 = u_charType(**(a2 + 64));
        result = 1;
        v13 = 1 << v12;
        if ((v13 & 0x20200000) == 0)
        {
          if ((v13 & 0x10100000) != 0)
          {
            return 0;
          }

          if ((v5 & 0x800000) != 0 && (v13 & 0x200) != 0 && (v14 = *v2) != 0 && *(v14 + 80) >= 2u && u_charType(**(v14 + 64)) == 9)
          {
            return 1;
          }

          else
          {

            return CoreNLP::mecab::isPunctuation(a2);
          }
        }

        return result;
      }

      if (*(a2 + 90) != 3)
      {
        return 0;
      }

      v7 = -56613888;
      v8 = *(a2 + 64);
      if (v6 != 2)
      {
        if (v6 != 4)
        {
          v11 = 0;
          goto LABEL_17;
        }

        v7 = v8[1] - 56613888;
      }

      v9 = *v8;
      v10 = v7 + (v9 << 10);
      if ((v9 & 0xF800) == 0xD800)
      {
        v11 = v10;
      }

      else
      {
        v11 = *v8;
      }

LABEL_17:
      result = u_ispunct(v11);
      if (!result)
      {
        return result;
      }

      goto LABEL_18;
    }
  }

  return result;
}

BOOL anonymous namespace::alphaSymbolRule(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 82);
  if (v2 != *(a2 + 80) || *(a1 + 90) != 5)
  {
    return 0;
  }

  v3 = *(a2 + 90);
  if (v3 == 5)
  {
    return 1;
  }

  v5 = *(a2 + 64);
  if (v3 == 3)
  {
    v6 = -56613888;
    if (v2 != 2)
    {
      if (v2 != 4)
      {
        v7 = 0;
        return u_ispunct(v7) == 0;
      }

      v6 = v5[1] - 56613888;
    }

    v7 = *v5;
    if ((v7 & 0xF800) == 0xD800)
    {
      v7 = v6 + (v7 << 10);
    }

    return u_ispunct(v7) == 0;
  }

  if (v2 != 2)
  {
    return 0;
  }

  v8 = *v5;
  result = 1;
  if (v8 != 45 && v8 != 95)
  {
    return 0;
  }

  return result;
}

BOOL anonymous namespace::numberSymbolRule(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 90) != 4)
  {
    return 0;
  }

  v2 = *(a2 + 64);
  v3 = *(a2 + 80);
  if (*(a2 + 90) == 3)
  {
    v4 = -56613888;
    if (v3 != 2)
    {
      if (v3 != 4)
      {
        v5 = 0;
        return u_ispunct(v5) == 0;
      }

      v4 = v2[1] - 56613888;
    }

    v5 = *v2;
    if ((v5 & 0xF800) == 0xD800)
    {
      v5 = v4 + (v5 << 10);
    }

    return u_ispunct(v5) == 0;
  }

  if (v3 != 2)
  {
    return 0;
  }

  v6 = *v2;
  result = 1;
  if (v6 != 45 && v6 != 95)
  {
    return 0;
  }

  return result;
}

uint64_t Korean::numberRule(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 29)
  {
    v2 = *(a2 + 88);
    v3 = v2 > 0x1C;
    v4 = 0x12F00000u >> v2;
    if (v3)
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t Korean::lineBreakPosRule(Korean::POSID *a1, uint64_t a2)
{
  v3 = a1;
  if (*(a1 + 44) == 29)
  {
    v4 = *(a2 + 64);
    v5 = *(a2 + 80);
    if (*(a2 + 90) != 3)
    {
      if (v5 == 2)
      {
        v8 = *v4;
        v9 = 1;
        if (v8 == 45 || v8 == 95)
        {
          return v9;
        }
      }

      goto LABEL_14;
    }

    v6 = -56613888;
    if (v5 != 2)
    {
      if (v5 != 4)
      {
        v7 = 0;
        goto LABEL_13;
      }

      v6 = v4[1] - 56613888;
    }

    v7 = *v4;
    if ((v7 & 0xF800) == 0xD800)
    {
      v7 = v6 + (v7 << 10);
    }

LABEL_13:
    a1 = u_ispunct(v7);
    if (!a1)
    {
      return 1;
    }
  }

LABEL_14:
  if (*v3)
  {
    if (*(*v3 + 88) == 29)
    {
      if (*(v3 + 90) == 3 || *(v3 + 40) == 2 && ((v10 = **(v3 + 8), v10 == 95) || v10 == 45))
      {
        if (*(a2 + 88) == 8964)
        {
          return 1;
        }
      }
    }
  }

  Korean::POSID::getPOSCombiningRules(a1);
  v11 = *(a2 + 88);
  if (v11 > 0xFF)
  {
    LOWORD(v11) = HIBYTE(*(a2 + 88));
  }

  v13[0] = *(v3 + 88);
  v13[1] = v11;
  v15 = 0;
  v16 = 0;
  __p = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, v13, &__p, 2);
  v9 = std::__tree<std::vector<unsigned short>>::find<std::vector<unsigned short>>(&Korean::POSID::getPOSCombiningRules(void)::posCombiningRules, &__p) != &unk_1EB012708;
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_19D1ACD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t CoreNLP::JapaneseLineBreakConnector::connect(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2 || *(v2 + 91) == 3)
  {
    return 0;
  }

  v5 = *(v2 + 82);
  v6 = *(v2 + 80);
  if (v5 != v6)
  {
    if (*(*(v2 + 64) - ((v5 - v6) & 0xFFFFFFFFFFFFFFFELL)) != 160)
    {
      goto LABEL_22;
    }

    return 1;
  }

  if (*(a2 + 90) != 5)
  {
    goto LABEL_22;
  }

  v7 = *(v2 + 90);
  if (v7 == 5)
  {
    return 1;
  }

  v8 = *(v2 + 64);
  if (v7 == 3)
  {
    v9 = -56613888;
    if (v5 != 2)
    {
      if (v5 != 4)
      {
        v10 = 0;
        goto LABEL_21;
      }

      v9 = v8[1] - 56613888;
    }

    v10 = *v8;
    if ((v10 & 0xF800) == 0xD800)
    {
      v10 = v9 + (v10 << 10);
    }

LABEL_21:
    if (u_ispunct(v10))
    {
      goto LABEL_22;
    }

    return 1;
  }

  if (v5 == 2)
  {
    v11 = *v8;
    result = 1;
    if (v11 == 45 || v11 == 95)
    {
      return result;
    }
  }

LABEL_22:
  v12 = *(a2 + 90);
  if (v12 != 4)
  {
    goto LABEL_36;
  }

  v13 = *(a2 + 8);
  v14 = *(v13 + 64);
  v15 = *(v13 + 80);
  if (*(v13 + 90) != 3)
  {
    if (v15 == 2)
    {
      v18 = *v14;
      result = 1;
      if (v18 == 45 || v18 == 95)
      {
        return result;
      }
    }

LABEL_44:
    v23 = *(a2 + 8);
    if (v23)
    {
      if (CoreNLP::mecab::isPunctuation(v23))
      {
        goto LABEL_46;
      }

      v25 = *(a2 + 8);
    }

    else
    {
      v25 = 0;
    }

    return Japanese::lineBreakPosRule(a2, v25) ^ 1;
  }

  v16 = -56613888;
  if (v15 != 2)
  {
    if (v15 != 4)
    {
      v17 = 0;
      goto LABEL_34;
    }

    v16 = v14[1] - 56613888;
  }

  v17 = *v14;
  if ((v17 & 0xF800) == 0xD800)
  {
    v17 = v16 + (v17 << 10);
  }

LABEL_34:
  if (!u_ispunct(v17))
  {
    return 1;
  }

  v12 = *(a2 + 90);
LABEL_36:
  if (v12 != 3)
  {
    goto LABEL_44;
  }

  v19 = -56613888;
  v20 = *(a2 + 64);
  v21 = *(a2 + 80);
  if (v21 != 2)
  {
    if (v21 != 4)
    {
      v22 = 0;
      goto LABEL_43;
    }

    v19 = v20[1] - 56613888;
  }

  v22 = *v20;
  if ((v22 & 0xF800) == 0xD800)
  {
    v22 = v19 + (v22 << 10);
  }

LABEL_43:
  if (!u_ispunct(v22))
  {
    goto LABEL_44;
  }

LABEL_46:
  v24 = *(a2 + 8);
}

BOOL CoreNLP::mecab::isPunctuation(uint64_t a1)
{
  if (*(a1 + 90) != 3)
  {
    return 0;
  }

  v1 = -56613888;
  v2 = *(a1 + 64);
  v3 = *(a1 + 80);
  if (v3 == 2)
  {
    goto LABEL_5;
  }

  if (v3 == 4)
  {
    v1 = v2[1] - 56613888;
LABEL_5:
    v4 = *v2;
    if ((v4 & 0xF800) == 0xD800)
    {
      v4 = v1 + (v4 << 10);
    }

    return u_ispunct(v4) != 0;
  }

  v4 = 0;
  return u_ispunct(v4) != 0;
}

uint64_t Japanese::lineBreakPosRule(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if (a2)
  {
    v4 = *(a2 + 88);
    if (v3 == 5)
    {
      if (v4 - 1 < 0x15 && ((0x10003Fu >> (v4 - 1)) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if (v3 == 5)
    {
LABEL_9:
      v5 = 1;
      goto LABEL_10;
    }
  }

  v5 = v3 - 1 < 6;
  if (v3 - 1 < 6 || (v3 <= 0x15 ? (v14 = ((1 << v3) & 0x2C0080) == 0) : (v14 = 1), !v14))
  {
    if (v4 - 1 >= 6)
    {
      if (v4 > 0x15 || ((1 << v4) & 0x2C0080) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (v4 == 5)
    {
      goto LABEL_10;
    }

    if ((*(a1 + 80) & 0xFFFE) == 2 || a2 && (*(a2 + 80) & 0xFFFE) == 2)
    {
      return 0;
    }

LABEL_10:
    v6 = memchr(&Japanese::kConclusiveOrAttributiveFormPosIDs, v3, 4uLL);
    if (v6)
    {
      v7 = v6 == &Japanese::kSuffixPosIDs;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return 1;
    }

    if (v5)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v3 <= 0xFF)
  {
    v5 = 0;
    goto LABEL_10;
  }

LABEL_16:
  if (v3 > 0x15 || ((1 << v3) & 0x2C0080) == 0)
  {
    if (v3 > 0x1C)
    {
      return 1;
    }

    goto LABEL_22;
  }

LABEL_18:
  if (v4 > 0xFF)
  {
    return 1;
  }

  v8 = memchr(&Japanese::kSuffixPosIDs, v4, 4uLL);
  result = 1;
  if (v8 && v8 != "NSt3__110__function6__funcIPFbPK12mecab_node_tS4_lENS_9allocatorIS6_EES5_EE" && v3 <= 0x1C)
  {
LABEL_22:
    if (v4 > 0x1C)
    {
      return 1;
    }

    if (!*a1 || *(*a1 + 90) != 4)
    {
      return (((0x1109100uLL >> v3) & 1) == 0) & (0x1F8FF0FFuLL >> v4);
    }

    v10 = *(a1 + 64);
    v11 = *(a1 + 80);
    if (*(a1 + 90) != 3)
    {
      if (v11 != 2)
      {
        return (((0x1109100uLL >> v3) & 1) == 0) & (0x1F8FF0FFuLL >> v4);
      }

      v15 = *v10;
      if (v15 != 45 && v15 != 95)
      {
        return (((0x1109100uLL >> v3) & 1) == 0) & (0x1F8FF0FFuLL >> v4);
      }

LABEL_55:
      if ((0x1109100uLL >> v4))
      {
        return (((0x1109100uLL >> v3) & 1) == 0) & (0x1F8FF0FFuLL >> v4);
      }

      return 1;
    }

    v12 = -56613888;
    if (v11 != 2)
    {
      if (v11 != 4)
      {
        v13 = 0;
        goto LABEL_54;
      }

      v12 = v10[1] - 56613888;
    }

    v13 = *v10;
    if ((v13 & 0xF800) == 0xD800)
    {
      v13 = v12 + (v13 << 10);
    }

LABEL_54:
    if (u_ispunct(v13))
    {
      return (((0x1109100uLL >> v3) & 1) == 0) & (0x1F8FF0FFuLL >> v4);
    }

    goto LABEL_55;
  }

  return result;
}

uint64_t CoreNLP::SimplifiedChineseLineBreakConnector::connect(CoreNLP::SimplifiedChineseLineBreakConnector *a1, uint64_t a2, uint64_t a3)
{
  CoreNLP::SimplifiedChineseLineBreakConnector::connectionRules(a1);
}

uint64_t *CoreNLP::SimplifiedChineseLineBreakConnector::connectionRules(CoreNLP::SimplifiedChineseLineBreakConnector *this)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    v4[0] = &unk_1F10AD060;
    v4[3] = v4;
    v5[0] = &unk_1F10AD060;
    v5[3] = v5;
    v6[0] = &unk_1F10AD060;
    v6[3] = v6;
    v7[0] = &unk_1F10AD060;
    v7[3] = v7;
    v8[0] = &unk_1F10AD060;
    v8[1] = SC::numberMeasureRule;
    v8[3] = v8;
    v9[0] = &unk_1F10AD060;
    v9[1] = SC::auxiliaryDeRule;
    v9[3] = v9;
    v10[0] = &unk_1F10AD060;
    v10[1] = SC::postpositionRule;
    v10[3] = v10;
    CoreNLP::SimplifiedChineseLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable = 0;
    *algn_1EB012748 = 0;
    qword_1EB012750 = 0;
    std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::__init_with_size[abi:ne200100]<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)> const*,std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)> const*>(&CoreNLP::SimplifiedChineseLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable, v4, &v11, 7uLL);
    for (i = 24; i != -4; i -= 4)
    {
      std::__function::__value_func<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::~__value_func[abi:ne200100](&v4[i]);
    }

    __cxa_atexit(std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::~vector[abi:ne200100], &CoreNLP::SimplifiedChineseLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable, &dword_19D184000);
  }

  v1 = *MEMORY[0x1E69E9840];
  return &CoreNLP::SimplifiedChineseLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable;
}

void sub_19D1AD534(_Unwind_Exception *a1)
{
  for (i = 192; i != -32; i -= 32)
  {
    std::__function::__value_func<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::~__value_func[abi:ne200100](v1 + i);
  }

  _Unwind_Resume(a1);
}

uint64_t CoreNLP::TraditionalChineseLineBreakConnector::connect(CoreNLP::TraditionalChineseLineBreakConnector *a1, uint64_t a2, uint64_t a3)
{
  CoreNLP::TraditionalChineseLineBreakConnector::connectionRules(a1);
}

uint64_t *CoreNLP::TraditionalChineseLineBreakConnector::connectionRules(CoreNLP::TraditionalChineseLineBreakConnector *this)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    v4[0] = &unk_1F10AD060;
    v4[3] = v4;
    v5[0] = &unk_1F10AD060;
    v5[3] = v5;
    v6[0] = &unk_1F10AD060;
    v6[3] = v6;
    v7[0] = &unk_1F10AD060;
    v7[3] = v7;
    v8[0] = &unk_1F10AD060;
    v8[1] = TC::numberMeasureRule;
    v8[3] = v8;
    v9[0] = &unk_1F10AD060;
    v9[1] = TC::auxiliaryDeRule;
    v9[3] = v9;
    v10[0] = &unk_1F10AD060;
    v10[1] = TC::postpositionRule;
    v10[3] = v10;
    CoreNLP::TraditionalChineseLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable = 0;
    *algn_1EB012768 = 0;
    qword_1EB012770 = 0;
    std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::__init_with_size[abi:ne200100]<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)> const*,std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)> const*>(&CoreNLP::TraditionalChineseLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable, v4, &v11, 7uLL);
    for (i = 24; i != -4; i -= 4)
    {
      std::__function::__value_func<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::~__value_func[abi:ne200100](&v4[i]);
    }

    __cxa_atexit(std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::~vector[abi:ne200100], &CoreNLP::TraditionalChineseLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable, &dword_19D184000);
  }

  v1 = *MEMORY[0x1E69E9840];
  return &CoreNLP::TraditionalChineseLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable;
}

void sub_19D1AD890(_Unwind_Exception *a1)
{
  for (i = 192; i != -32; i -= 32)
  {
    std::__function::__value_func<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::~__value_func[abi:ne200100](v1 + i);
  }

  _Unwind_Resume(a1);
}

uint64_t CoreNLP::TraditionalCantoneseLineBreakConnector::connect(CoreNLP::TraditionalCantoneseLineBreakConnector *a1, uint64_t a2, uint64_t a3)
{
  CoreNLP::TraditionalCantoneseLineBreakConnector::connectionRules(a1);
}

uint64_t *CoreNLP::TraditionalCantoneseLineBreakConnector::connectionRules(CoreNLP::TraditionalCantoneseLineBreakConnector *this)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    v4[0] = &unk_1F10AD060;
    v4[3] = v4;
    v5[0] = &unk_1F10AD060;
    v5[3] = v5;
    v6[0] = &unk_1F10AD060;
    v6[3] = v6;
    v7[0] = &unk_1F10AD060;
    v7[3] = v7;
    v8[0] = &unk_1F10AD060;
    v8[1] = YUE::numberMeasureRule;
    v8[3] = v8;
    v9[0] = &unk_1F10AD060;
    v9[1] = YUE::auxiliaryDeRule;
    v9[3] = v9;
    v10[0] = &unk_1F10AD060;
    v10[1] = YUE::postpositionRule;
    v10[3] = v10;
    CoreNLP::TraditionalCantoneseLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable = 0;
    *algn_1EB012788 = 0;
    qword_1EB012790 = 0;
    std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::__init_with_size[abi:ne200100]<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)> const*,std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)> const*>(&CoreNLP::TraditionalCantoneseLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable, v4, &v11, 7uLL);
    for (i = 24; i != -4; i -= 4)
    {
      std::__function::__value_func<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::~__value_func[abi:ne200100](&v4[i]);
    }

    __cxa_atexit(std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::~vector[abi:ne200100], &CoreNLP::TraditionalCantoneseLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable, &dword_19D184000);
  }

  v1 = *MEMORY[0x1E69E9840];
  return &CoreNLP::TraditionalCantoneseLineBreakConnector::connectionRules(void)const::kLineBreakRuleTable;
}

void sub_19D1ADBA8(_Unwind_Exception *a1)
{
  for (i = 192; i != -32; i -= 32)
  {
    std::__function::__value_func<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::~__value_func[abi:ne200100](v1 + i);
  }

  _Unwind_Resume(a1);
}

BOOL YUE::auxiliaryDeRule(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 88) != 35 || (*(a2 + 80) & 0xFFFE) != 2)
  {
    return 0;
  }

  v2 = **(a2 + 64);
  if (v2 == 22320 || v2 == 30340)
  {
    return 1;
  }

  return v2 == 24471 || v2 == 22021;
}

uint64_t std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t std::__tree<std::vector<unsigned short>>::find<std::vector<unsigned short>>(uint64_t a1, unsigned __int16 **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::vector<unsigned short>>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::vector<unsigned short>>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

BOOL std::less<std::vector<unsigned short>>::operator()[abi:ne200100](uint64_t a1, unsigned __int16 **a2, unsigned __int16 **a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a3;
  v6 = a3[1];
  v7 = v4 - *a2;
  if (v6 - *a3 >= v7 >> 1)
  {
    v8 = v7 >> 1;
  }

  else
  {
    v8 = v6 - *a3;
  }

  if (v8)
  {
    v9 = 2 * v8;
    v10 = &v3[v8];
    while (*v3 == *v5)
    {
      ++v3;
      ++v5;
      v9 -= 2;
      if (!v9)
      {
        v3 = v10;
        break;
      }
    }
  }

  if (v5 == v6)
  {
    return 0;
  }

  if (v3 == v4)
  {
    return 1;
  }

  return *v3 < *v5;
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1ADF00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::set<std::vector<unsigned short>>::set[abi:ne200100](void *a1, unsigned __int16 **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::vector<unsigned short>>::__emplace_hint_unique_key_args<std::vector<unsigned short>,std::vector<unsigned short> const&>(a1, v4, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::vector<unsigned short>>::__emplace_hint_unique_key_args<std::vector<unsigned short>,std::vector<unsigned short> const&>(void *a1, uint64_t a2, unsigned __int16 **a3)
{
  result = *std::__tree<std::vector<unsigned short>>::__find_equal<std::vector<unsigned short>>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::vector<unsigned short>>::__construct_node<std::vector<unsigned short> const&>();
  }

  return result;
}

uint64_t std::__tree<std::vector<unsigned short>>::__find_equal<std::vector<unsigned short>>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int16 **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::vector<unsigned short>>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::less<std::vector<unsigned short>>::operator()[abi:ne200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
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
      if (!std::less<std::vector<unsigned short>>::operator()[abi:ne200100](a1, a5, v15 + 4))
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
      return v12 + 8;
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
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::vector<unsigned short>>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::vector<unsigned short>>::__find_equal<std::vector<unsigned short>>(a1, a3, a5);
}

void sub_19D1AE24C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::vector<unsigned short>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::vector<unsigned short>>::__find_equal<std::vector<unsigned short>>(uint64_t a1, uint64_t *a2, unsigned __int16 **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::vector<unsigned short>>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::vector<unsigned short>>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::vector<unsigned short>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::vector<unsigned short>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::vector<unsigned short>>::destroy(a1, *a2);
    std::__tree<std::vector<unsigned short>>::destroy(a1, a2[1]);
    v4 = a2[4];
    if (v4)
    {
      a2[5] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t std::__function::__value_func<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<BOOL (*)(mecab_node_t const*,mecab_node_t const*,long),std::allocator<BOOL (*)(mecab_node_t const*,mecab_node_t const*,long)>,BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F10AD060;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(mecab_node_t const*,mecab_node_t const*,long),std::allocator<BOOL (*)(mecab_node_t const*,mecab_node_t const*,long)>,BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::__init_with_size[abi:ne200100]<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)> const*,std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1AE604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>>(a1, a2);
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>,std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)> const*,std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)> const*,std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::__function::__value_func<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::__value_func[abi:ne200100](a4, v6);
      v6 += 32;
      a4 += 32;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_19D1AE708(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      v4 = std::__function::__value_func<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::~__value_func[abi:ne200100](v4) - 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::vector<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void CoreNLP::BERTANEEmbedding::BERTANEEmbedding(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_1F10AD110;
  v8 = a1 + 24;
  v9 = "/ane_embeddings_gec_decoder.espresso.net";
  v10 = "/ane_embeddings_parser.espresso.net";
  v11 = "/ane_sentence_embeddings.espresso.net";
  v12 = "/ane_embeddings.espresso.net";
  v13 = a4 & 0xFFFFFFFE;
  if (a4 == 13)
  {
    v12 = "/ane_search_embeddings.espresso.net";
  }

  if (a4 != 12)
  {
    v11 = v12;
  }

  if (v13 != 10)
  {
    v10 = v11;
  }

  if (v13 != 8)
  {
    v9 = v10;
  }

  if (v13 == 2)
  {
    v14 = "/ane_embeddings_gec_tagger.espresso.net";
  }

  else
  {
    v14 = v9;
  }

  if (*(a2 + 23) >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = strlen(v14);
  v17 = v24;
  std::string::basic_string[abi:ne200100](v24, v15 + v16);
  if (v25 < 0)
  {
    v17 = v24[0];
  }

  if (v15)
  {
    if (*(a2 + 23) >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    memmove(v17, v18, v15);
  }

  v19 = v17 + v15;
  if (v16)
  {
    memcpy(v19, v14, v16);
  }

  v19[v16] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "ANE");
  corelm::NeuralNetwork::NeuralNetwork(v8, v24, __p);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  std::string::basic_string[abi:ne200100]<0>((a1 + 128), "");
  *(a1 + 152) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 216) = a1 + 224;
  *(a1 + 200) = 0;
  *(a1 + 208) = 3;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 8));
  }

  else
  {
    v20 = *a2;
  }

  corelm::util::Directory::Directory<std::string>(&v21, &v20);
  corelm::VocabularyBuilder::makeVocabulary(&v21, 2);
}

void sub_19D1AEB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(v36, *(v35 + 224));
  v39 = *(v35 + 184);
  if (v39)
  {
    *(v35 + 192) = v39;
    operator delete(v39);
  }

  v40 = *(v35 + 160);
  if (v40)
  {
    *(v35 + 168) = v40;
    operator delete(v40);
  }

  v41 = *v37;
  *v37 = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  if (*(v35 + 151) < 0)
  {
    operator delete(*(v35 + 128));
  }

  corelm::NeuralNetwork::~NeuralNetwork(v34);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::BERTANEEmbedding::selectBatchSizeForInput(CoreNLP::BERTANEEmbedding *this, unint64_t a2)
{
  __src = 0;
  v26 = 0;
  v27 = 0;
  std::vector<unsigned long>::reserve(&__src, *(this + 29));
  v4 = *(this + 27);
  v5 = this + 224;
  if (v4 == this + 224)
  {
    v6 = v26;
  }

  else
  {
    v6 = v26;
    do
    {
      if (v6 >= v27)
      {
        v7 = __src;
        v8 = v6 - __src;
        v9 = (v6 - __src) >> 3;
        v10 = v9 + 1;
        if ((v9 + 1) >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v11 = v27 - __src;
        if ((v27 - __src) >> 2 > v10)
        {
          v10 = v11 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v12);
        }

        v13 = v9;
        v14 = (8 * v9);
        v15 = &v14[-v13];
        *v14 = *(v4 + 4);
        v6 = (v14 + 1);
        memcpy(v15, v7, v8);
        v16 = __src;
        __src = v15;
        v26 = v6;
        v27 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6 = *(v4 + 4);
        v6 += 8;
      }

      v26 = v6;
      v17 = *(v4 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v4 + 2);
          v19 = *v18 == v4;
          v4 = v18;
        }

        while (!v19);
      }

      v4 = v18;
    }

    while (v18 != v5);
  }

  v20 = 126 - 2 * __clz((v6 - __src) >> 3);
  if (v6 == __src)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,true>(__src, v6, &v28, v21, 1);
  if (__src == v26)
  {
LABEL_30:
    v23 = 0;
  }

  else
  {
    v22 = __src;
    while (1)
    {
      v23 = *v22;
      if (!(a2 % *v22))
      {
        break;
      }

      if (++v22 == v26)
      {
        goto LABEL_30;
      }
    }
  }

  if (__src)
  {
    v26 = __src;
    operator delete(__src);
  }

  return v23;
}

void sub_19D1AEE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result, a2);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t CoreNLP::BERTANEEmbedding::maxSeqLenSupportedByModel(CoreNLP::BERTANEEmbedding *this, unint64_t a2)
{
  v11 = a2;
  v12 = &v11;
  v2 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(this + 216, &v11);
  v9 = 0;
  v10 = 0;
  v8 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v8, v2[5], v2[6], (v2[6] - v2[5]) >> 3);
  v3 = 126 - 2 * __clz((v9 - v8) >> 3);
  if (v9 == v8)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,true>(v8, v9, &v12, v4, 1);
  if (v8 != v9)
  {
    v5 = *v8;
LABEL_7:
    v9 = v8;
    operator delete(v8);
    return v5;
  }

  v5 = 0;
  v6 = 0;
  if (v8)
  {
    goto LABEL_7;
  }

  return v6;
}

void sub_19D1AEFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t CoreNLP::BERTANEEmbedding::selectSeqLenForInputBatch(CoreNLP::BERTANEEmbedding *this, unint64_t a2, unint64_t a3)
{
  v15 = a2;
  v16 = &v15;
  v4 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(this + 216, &v15);
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v12, v4[5], v4[6], (v4[6] - v4[5]) >> 3);
  v5 = 126 - 2 * __clz((v13 - v12) >> 3);
  if (v13 == v12)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,true>(v12, v13, &v16, v6, 1);
  if (v12 == v13)
  {
    v7 = 0;
    if (!v12)
    {
      return v7;
    }

    goto LABEL_10;
  }

  v7 = 0;
  v8 = v12;
  do
  {
    v10 = *v8++;
    v9 = v10;
    if (v10 >= a3)
    {
      v7 = v9;
    }
  }

  while (v8 != v13);
  if (v12)
  {
LABEL_10:
    v13 = v12;
    operator delete(v12);
  }

  return v7;
}

void sub_19D1AF0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::BERTANEEmbedding::runANEModel(void *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v45 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  __p.n128_u64[0] = &v45;
  v8 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((a1 + 27), &v45);
  v43 = 0;
  v44 = 0;
  v42 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v42, v8[5], v8[6], (v8[6] - v8[5]) >> 3);
  v9 = v45 * a3 * v6[26];
  __p.n128_u32[0] = 0;
  std::vector<float>::assign(v6 + 23, v9, &__p, v10);
  __p.n128_u32[0] = 1065353216;
  std::vector<float>::assign(v6 + 20, a3 * a3 * v45, &__p, v11);
  v12 = v45;
  if (v45)
  {
    v38 = a4;
    v39 = v6;
    v13 = 0;
    v14 = 0;
    v15 = *a2;
    v16 = 4 * a3;
    do
    {
      v17 = *(v15 + 24 * v14 + 8) - *(v15 + 24 * v14);
      if (a3 >= v17 >> 3)
      {
        v18 = v17 >> 3;
      }

      else
      {
        v18 = a3;
      }

      if (v18)
      {
        v19 = 4 * v18;
        v20 = (v39[20] + v13);
        do
        {
          bzero(v20, v19);
          v20 += v16;
          --v18;
        }

        while (v18);
      }

      ++v14;
      v13 += 4 * a3 * a3;
    }

    while (v14 != v12);
    a4 = v38;
    v21 = a2[1];
    v22 = v21 - v15;
    v6 = v39;
    if (v21 != v15)
    {
      v23 = v45;
      if (v45)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 3);
        do
        {
          v27 = *(v15 + 24 * v25);
          v28 = *(v15 + 24 * v25 + 8) - v27;
          if (a3 >= v28 >> 3)
          {
            v29 = v28 >> 3;
          }

          else
          {
            v29 = a3;
          }

          if (v29)
          {
            v30 = 0;
            v31 = v39[26];
            v32 = (v39[23] + v31 * v24 + 8);
            v33 = 4 * v31;
            do
            {
              *(v32 - 2) = *(v27 + 8 * v30);
              *(v32 - 1) = v30;
              *v32 = 0.0;
              ++v30;
              v32 = (v32 + v33);
            }

            while (v29 != v30);
            v23 = v45;
          }

          if (++v25 >= v26)
          {
            break;
          }

          v24 += v16;
        }

        while (v25 < v23);
      }
    }
  }

  v34 = v6[23];
  std::string::basic_string[abi:ne200100]<0>(&__p, "input");
  corelm::NeuralNetwork::setInputTensorANE<float,void>((v6 + 3), v34, a3, &__p, v6[26], v45);
  if (v41 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  v35 = v6[20];
  std::string::basic_string[abi:ne200100]<0>(&__p, "qk_mask");
  corelm::NeuralNetwork::setInputTensorANE<float,void>((v6 + 3), v35, a3, &__p, a3, v45);
  if (v41 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  corelm::NeuralNetwork::predict((v6 + 3));
  v36 = v45;
  v37 = (*(*v6 + 64))(v6);
  __p.n128_u64[0] = v36;
  __p.n128_u64[1] = v37 * a3;
  corelm::NeuralNetwork::getOutput<2ul>(v6 + 128, v6 + 3, &__p, 1, a4);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void sub_19D1AF410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *std::vector<float>::assign(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v8 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v9 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<float>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    v13 = 0;
    a4.i32[0] = *a3;
    v14 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v13);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_19D27D560)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_19D27D820)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v13 += 4;
      v16 += 4;
    }

    while (v14 != v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v10 + 4 * v20;
    a4.i32[0] = *a3;
    v23 = (4 * a2 - (v10 - result) - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v10 + 8);
    do
    {
      v26 = vdupq_n_s64(v21);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_19D27D560)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_19D27D820)))).i32[1])
      {
        *v25 = a4.i32[0];
        v25[1] = a4.i32[0];
      }

      v21 += 4;
      v25 += 4;
    }

    while (((v23 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void corelm::NeuralNetwork::setInputTensorANE<float,void>(corelm::NeuralNetwork *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a5 * a3 * a6;
  corelm::NeuralNetwork::updateMostRecentInputs<float,void>(a1, a2, v10, a4);
  v11 = *(std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 56, a4) + 56);
  InputTensorANE = corelm::NeuralNetwork::createInputTensorANE(a1, a3, a5);
  *(std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 80, a4) + 56) = InputTensorANE;
  v13 = *(std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 80, a4) + 56);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v14 = getMRLNeuralNetworkTensorAppendDataSymbolLoc(void)::ptr;
  v29 = getMRLNeuralNetworkTensorAppendDataSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkTensorAppendDataSymbolLoc(void)::ptr)
  {
    v15 = MontrealLibrary();
    v27[3] = dlsym(v15, "MRLNeuralNetworkTensorAppendData");
    getMRLNeuralNetworkTensorAppendDataSymbolLoc(void)::ptr = v27[3];
    v14 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v14)
  {
    _MRLNeuralNetworkGetOutput();
LABEL_21:
    dlerror();
    abort_report_np();
    __break(1u);
    return;
  }

  v14(v13, v11, 4 * v10);
  v16 = *a1;
  v17 = *(a4 + 23);
  if (v17 >= 0)
  {
    v18 = a4;
  }

  else
  {
    v18 = *a4;
  }

  if (v18)
  {
    if (v17 >= 0)
    {
      v19 = *(a4 + 23);
    }

    else
    {
      v19 = *(a4 + 8);
    }

    v20 = CFStringCreateWithBytes(0, v18, v19, 0x8000100u, 0);
    cf = v20;
    if (!v20)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v20 = 0;
    cf = 0;
  }

  v22 = *(std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 80, a4) + 56);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v23 = getMRLNeuralNetworkSetInputTensorSymbolLoc(void)::ptr;
  v29 = getMRLNeuralNetworkSetInputTensorSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkSetInputTensorSymbolLoc(void)::ptr)
  {
    v24 = MontrealLibrary();
    v27[3] = dlsym(v24, "MRLNeuralNetworkSetInputTensor");
    getMRLNeuralNetworkSetInputTensorSymbolLoc(void)::ptr = v27[3];
    v23 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v23)
  {
    goto LABEL_21;
  }

  v23(v16, v20, v22, 0);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_19D1AFA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::BERTANEEmbedding::fillTokenVectors(CoreNLP::BERTANEEmbedding *this, const __CFArray *a2, unint64_t a3, unsigned int a4, float *a5, const float *a6, const float *a7)
{
  v13 = CoreNLP::BERTANEEmbedding::selectBatchSizeForInput(this, a3);
  v14 = CoreNLP::BERTANEEmbedding::selectSeqLenForInputBatch(this, v13, a4);
  v40 = v14;
  if (v13)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  result = !v15;
  if (!v15)
  {
    v36 = result;
    if (a3)
    {
      v41 = 0;
      v38 = a2;
      v39 = a3;
      v37 = v13;
      do
      {
        v17 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v17 + v41);
          applesauce::CF::convert_to<std::string,0>(ValueAtIndex, &v42);
          (*(**(this + 19) + 16))(&__p);
          v19 = v46;
          if (a4 < ((v46 - __p) >> 3))
          {
            v20 = v46 - __p - 8;
            do
            {
              v19 -= 8;
              v21 = a4 >= (v20 >> 3);
              v20 -= 8;
            }

            while (!v21);
            v46 = v19;
          }

          std::vector<std::vector<long>>::push_back[abi:ne200100](&v47, &__p);
          if (__p)
          {
            v46 = __p;
            operator delete(__p);
          }

          if (v43 < 0)
          {
            operator delete(v42);
          }

          ++v17;
        }

        while (v17 != v13);
        CoreNLP::BERTANEEmbedding::runANEModel(this, &v47, v40, &v42);
        if (v48 != v47)
        {
          v22 = 0;
          do
          {
            v23 = v44;
            v24 = (*(*this + 64))(this);
            v25 = (v47 + 24 * v22);
            v27 = *v25;
            v26 = v25[1];
            v28 = (*(*this + 64))(this);
            memcpy(a5, (v23 + 4 * v22 * v40 * v24), ((v26 - v27) >> 1) * v28);
            v29 = (v47 + 24 * v22);
            v31 = *v29;
            v30 = v29[1];
            a5 += ((v30 - v31) >> 3) * (*(*this + 64))(this);
            v32 = v47;
            v33 = *(v47 + 24 * v22 + 8) - *(v47 + 24 * v22);
            if (a4 > (v33 >> 3))
            {
              v34 = a4 - (v33 >> 3);
              do
              {
                v35 = (*(*this + 64))(this);
                memcpy(a5, a7, 4 * v35);
                a5 += (*(*this + 64))(this);
                --v34;
              }

              while (v34);
              v32 = v47;
            }

            ++v22;
          }

          while (v22 < 0xAAAAAAAAAAAAAAABLL * ((v48 - v32) >> 3));
        }

        v42 = &v47;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v42);
        v13 = v37;
        a2 = v38;
        v41 += v37;
      }

      while (v41 < v39);
    }

    corelm::NeuralNetwork::clear((this + 24));
    return v36;
  }

  return result;
}

void sub_19D1AFE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25)
{
  a15 = &a25;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<long>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<long>>::__emplace_back_slow_path<std::vector<long> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<long>>::__construct_one_at_end[abi:ne200100]<std::vector<long> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

unint64_t CoreNLP::BERTANEEmbedding::fillWordFragmentVectors(CoreNLP::BERTANEEmbedding *this, CFArrayRef theArray, unsigned int a3, unsigned int a4, float *a5, const float *a6, const float *a7, int a8)
{
  v10 = theArray;
  v85 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  result = CoreNLP::BERTANEEmbedding::selectBatchSizeForInput(this, Count);
  if (result)
  {
    v55 = result;
    v58 = CoreNLP::BERTANEEmbedding::maxSeqLenSupportedByModel(this, result);
    if (!Count)
    {
      goto LABEL_71;
    }

    v59 = 0;
    __src = a7;
    v56 = v10;
    v53 = Count;
    while (1)
    {
      v14 = 0;
      v15 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      memset(v78, 0, sizeof(v78));
      memset(v77, 0, sizeof(v77));
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v14 + v59);
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 0;
        v17 = *(this + 19);
        v18 = *(v17 + 31);
        if (v18 < 0)
        {
          v19 = *(v17 + 8);
          v18 = *(v17 + 16);
        }

        else
        {
          v19 = v17 + 8;
        }

        v82 = (*(*v17 + 32))(v17, v19, v18);
        __dst = 0;
        v73 = 0;
        v71 = 0;
        std::vector<long>::__init_with_size[abi:ne200100]<long const*,long const*>(&v71, &v82, &v83, 1uLL);
        for (i = 0; ; ++i)
        {
          v21 = CFArrayGetCount(ValueAtIndex);
          if (a4 == i || v21 <= i)
          {
            break;
          }

          v22 = CFArrayGetValueAtIndex(ValueAtIndex, i);
          applesauce::CF::convert_to<std::string,0>(v22, &v82);
          (*(**(this + 19) + 16))(&__p);
          v68 = (__dst - v71) >> 3;
          std::vector<int>::push_back[abi:ne200100](&v64, &v68);
          v68 = (v70 - __p) >> 3;
          std::vector<int>::push_back[abi:ne200100](&v74, &v68);
          std::vector<long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<long *>,std::__wrap_iter<long *>>(&v71, __dst, __p, v70, (v70 - __p) >> 3);
          if (__p)
          {
            v70 = __p;
            operator delete(__p);
          }

          if (v84 < 0)
          {
            operator delete(v82);
          }
        }

        if (v58 < (__dst - v71) >> 3)
        {
          if (v71)
          {
            __dst = v71;
            operator delete(v71);
          }

          if (v74)
          {
            v75 = v74;
            operator delete(v74);
          }

          if (v64)
          {
            v65 = v64;
            operator delete(v64);
          }

LABEL_68:
          v51 = 0;
          goto LABEL_69;
        }

        std::vector<std::vector<long>>::push_back[abi:ne200100](&v79, &v71);
        std::vector<std::vector<int>>::push_back[abi:ne200100](v78, &v64);
        std::vector<std::vector<int>>::push_back[abi:ne200100](v77, &v74);
        if (v15 <= (__dst - v71) >> 3)
        {
          v15 = (__dst - v71) >> 3;
        }

        if (v71)
        {
          __dst = v71;
          operator delete(v71);
        }

        if (v74)
        {
          v75 = v74;
          operator delete(v74);
        }

        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        ++v14;
      }

      while (v14 != v55);
      v23 = CoreNLP::BERTANEEmbedding::selectSeqLenForInputBatch(this, v55, v15);
      if (!v23)
      {
        goto LABEL_68;
      }

      v54 = v23;
      CoreNLP::BERTANEEmbedding::runANEModel(this, &v79, v23, &v64);
      if (v80 != v79)
      {
        v24 = 0;
        v25 = 0;
        do
        {
          v26 = v78[0];
          v27 = *(v78[0] + 24 * v25);
          v28 = *(v78[0] + 24 * v25 + 8);
          if (a4)
          {
            v29 = v28 == v27;
          }

          else
          {
            v29 = 1;
          }

          v30 = !v29;
          v31 = v25;
          if (*(this + 240))
          {
            if (v30)
            {
              v32 = 0;
              LODWORD(v33) = *(this + 4);
              do
              {
                if (v33 >= 1)
                {
                  v34 = 0;
                  v35 = 0;
                  v36 = *(v27 + 4 * v32);
                  v37 = *(*(v77[0] + 24 * v25) + 4 * v32);
                  do
                  {
                    v38 = v67;
                    v39 = (*(*this + 64))(this);
                    vDSP_meanv((v38 + v34 * 4 + v24 * v39 + 4 * *(this + 4) * v36), *(this + 4), &a5[v34], v37);
                    ++v35;
                    v33 = *(this + 4);
                    ++v34;
                  }

                  while (v35 < v33);
                  v26 = v78[0];
                  a5 = (a5 + v34 * 4);
                  v25 = v31;
                }

                ++v32;
                v27 = *(v26 + 24 * v25);
                v28 = *(v26 + 24 * v25 + 8);
              }

              while (v32 < a4 && (v28 - v27) >> 2 > v32);
            }
          }

          else if (v30)
          {
            v40 = 0;
            v60 = v24;
            v61 = v25 * v54;
            do
            {
              if (a8 >= 1)
              {
                v41 = 0;
                v42 = *(v27 + 4 * v40);
                do
                {
                  if (v41 >= *(*(v77[0] + 24 * v25) + 4 * v40))
                  {
                    v46 = (*(*this + 64))(this);
                    v47 = __src;
                  }

                  else
                  {
                    v43 = v67;
                    v44 = (*(*this + 64))(this);
                    v45 = (*(*this + 64))(this);
                    v46 = (*(*this + 64))(this);
                    v47 = (v43 + 4 * v61 * v44 + 4 * v45 * (v42 + v41));
                  }

                  memcpy(a5, v47, 4 * v46);
                  a5 += (*(*this + 64))(this);
                  ++v41;
                  v25 = v31;
                }

                while (a8 != v41);
                v26 = v78[0];
                v24 = v60;
              }

              ++v40;
              v27 = *(v26 + 24 * v25);
              v28 = *(v26 + 24 * v25 + 8);
            }

            while (v40 < a4 && (v28 - v27) >> 2 > v40);
          }

          v48 = (v28 - v27) >> 2;
          v10 = v56;
          if (v48 < a4)
          {
            do
            {
              v49 = a8;
              if (a8 >= 1)
              {
                do
                {
                  v50 = (*(*this + 64))(this);
                  memcpy(a5, __src, 4 * v50);
                  a5 += (*(*this + 64))(this);
                  --v49;
                }

                while (v49);
              }

              ++v48;
            }

            while (v48 != a4);
          }

          ++v25;
          v24 += 4 * v54;
        }

        while (v25 < 0xAAAAAAAAAAAAAAABLL * ((v80 - v79) >> 3));
      }

      v51 = 1;
LABEL_69:
      v64 = v77;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v64);
      v64 = v78;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v64);
      v64 = &v79;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v64);
      if ((v51 & 1) == 0)
      {
        result = 0;
        break;
      }

      v59 += v55;
      if (v59 >= v53)
      {
LABEL_71:
        corelm::NeuralNetwork::clear((this + 24));
        result = 1;
        break;
      }
    }
  }

  v52 = *MEMORY[0x1E69E9840];
  return result;
}