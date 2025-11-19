float std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    a1 += 8 * v3 + 8;
    v5 = 2 * v3;
    v3 = (2 * v3) | 1;
    v6 = v5 + 2;
    if (v6 < a3)
    {
      v7 = *(a1 + 8);
      if (*a1 < v7 || v7 >= *a1 && *(a1 + 4) < *(a1 + 12))
      {
        a1 += 8;
        v3 = v6;
      }
    }

    result = *a1;
    *v4 = *a1;
    v4[1] = *(a1 + 4);
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

void sub_19D2126F0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  __cxa_begin_catch(a1);
  if (a2 == 2 && v10)
  {
    *v10 = CFErrorCreate(0, kNLModelContainerErrorDomain, 3, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x19D2126D0);
}

void sub_19D21281C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a2 == 4)
  {
    __cxa_begin_catch(a1);
    if (v10)
    {
      v13 = CFErrorCreate(0, kNLModelContainerErrorDomain, 1, 0);
LABEL_12:
      *v10 = v13;
    }
  }

  else if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    if (v10)
    {
      v13 = CFErrorCreate(0, kNLModelContainerErrorDomain, 2, 0);
      goto LABEL_12;
    }
  }

  else
  {
    __cxa_begin_catch(a1);
    if (a2 == 2 && v10)
    {
      v13 = CFErrorCreate(0, kNLModelContainerErrorDomain, 5, 0);
      goto LABEL_12;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x19D212804);
}

void sub_19D2129B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  switch(a2)
  {
    case 5:
      __cxa_begin_catch(a1);
      if (v10)
      {
        v13 = CFErrorCreate(0, kNLModelContainerErrorDomain, 3, 0);
LABEL_15:
        *v10 = v13;
      }

      break;
    case 4:
      __cxa_begin_catch(a1);
      if (v10)
      {
        v13 = CFErrorCreate(0, kNLModelContainerErrorDomain, 1, 0);
        goto LABEL_15;
      }

      break;
    case 3:
      __cxa_begin_catch(a1);
      if (v10)
      {
        v13 = CFErrorCreate(0, kNLModelContainerErrorDomain, 2, 0);
        goto LABEL_15;
      }

      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 == 2 && v10)
      {
        v13 = CFErrorCreate(0, kNLModelContainerErrorDomain, 5, 0);
        goto LABEL_15;
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x19D21299CLL);
}

void sub_19D212B84(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  switch(a2)
  {
    case 5:
      __cxa_begin_catch(a1);
      if (v10)
      {
        v13 = CFErrorCreate(0, kNLModelContainerErrorDomain, 3, 0);
LABEL_15:
        *v10 = v13;
      }

      break;
    case 4:
      __cxa_begin_catch(a1);
      if (v10)
      {
        v13 = CFErrorCreate(0, kNLModelContainerErrorDomain, 1, 0);
        goto LABEL_15;
      }

      break;
    case 3:
      __cxa_begin_catch(a1);
      if (v10)
      {
        v13 = CFErrorCreate(0, kNLModelContainerErrorDomain, 2, 0);
        goto LABEL_15;
      }

      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 == 2 && v10)
      {
        v13 = CFErrorCreate(0, kNLModelContainerErrorDomain, 5, 0);
        goto LABEL_15;
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x19D212B6CLL);
}

CoreNLP *NLModelContainerWriteToURL(CoreNLP *result, void *a2, char a3)
{
  if (result)
  {
    v5 = CoreNLP::unwrapGazetteer(result, a2);
    return CoreNLP::ModelContainer::writeToURL(v5, a2, a3);
  }

  return result;
}

CoreNLP *NLModelContainerCopyContainerData(CoreNLP *result, void *a2)
{
  if (result)
  {
    v2 = CoreNLP::unwrapGazetteer(result, a2);
    return CoreNLP::ModelContainer::copyContainerData(v2);
  }

  return result;
}

void sub_19D212DB4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D212DA8);
}

CoreNLP *NLModelContainerCopySplitContainerData(CoreNLP *result, void *a2)
{
  if (result)
  {
    v3 = CoreNLP::unwrapGazetteer(result, a2);
    return CoreNLP::ModelContainer::copySplitContainerData(v3, a2);
  }

  return result;
}

CoreNLP *NLModelContainerGetType(CoreNLP *result, void *a2)
{
  if (result)
  {
    v2 = CoreNLP::unwrapGazetteer(result, a2);

    return CoreNLP::ModelContainer::getType(v2);
  }

  return result;
}

CoreNLP *NLModelContainerGetSubtype(CoreNLP *result, void *a2)
{
  if (result)
  {
    v2 = CoreNLP::unwrapGazetteer(result, a2);

    return CoreNLP::ModelContainer::getSubtype(v2);
  }

  return result;
}

uint64_t NLModelContainerGetRevision(CoreNLP *a1, void *a2)
{
  if (!a1)
  {
    return kNLModelUnknownRevision;
  }

  v2 = CoreNLP::unwrapGazetteer(a1, a2);

  return CoreNLP::ModelContainer::getRevision(v2);
}

CoreNLP *NLModelContainerCopyInfoDictionary(CoreNLP *result, void *a2)
{
  if (result)
  {
    v2 = CoreNLP::unwrapGazetteer(result, a2);

    return CoreNLP::ModelContainer::copyInfoDictionary(v2);
  }

  return result;
}

CoreNLP *NLModelContainerGetModelDataCount(CoreNLP *result, void *a2)
{
  if (result)
  {
    v2 = CoreNLP::unwrapGazetteer(result, a2);

    return CoreNLP::ModelContainer::getModelDataCount(v2);
  }

  return result;
}

CoreNLP *NLModelContainerCopyModelDataAtIndex(CoreNLP *result, void *a2)
{
  if (result)
  {
    v3 = CoreNLP::unwrapGazetteer(result, a2);
    return CoreNLP::ModelContainer::copyModelDataAtIndex(v3, a2);
  }

  return result;
}

void sub_19D212FE4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D212FD4);
}

void std::shared_ptr<CoreNLP::ModelContainer>::shared_ptr[abi:ne200100]<CoreNLP::ModelContainer,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_19D213074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CoreNLP::ModelContainer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

CoreNLP::ModelContainer **std::unique_ptr<CoreNLP::ModelContainer>::~unique_ptr[abi:ne200100](CoreNLP::ModelContainer **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CoreNLP::ModelContainer::~ModelContainer(v2);
    MEMORY[0x19EAF8CA0]();
  }

  return a1;
}

void std::__shared_ptr_pointer<CoreNLP::ModelContainer *,std::shared_ptr<CoreNLP::ModelContainer>::__shared_ptr_default_delete<CoreNLP::ModelContainer,CoreNLP::ModelContainer>,std::allocator<CoreNLP::ModelContainer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAF8CA0);
}

CoreNLP::ModelContainer *std::__shared_ptr_pointer<CoreNLP::ModelContainer *,std::shared_ptr<CoreNLP::ModelContainer>::__shared_ptr_default_delete<CoreNLP::ModelContainer,CoreNLP::ModelContainer>,std::allocator<CoreNLP::ModelContainer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    CoreNLP::ModelContainer::~ModelContainer(result);

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CoreNLP::ModelContainer *,std::shared_ptr<CoreNLP::ModelContainer>::__shared_ptr_default_delete<CoreNLP::ModelContainer,CoreNLP::ModelContainer>,std::allocator<CoreNLP::ModelContainer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void CoreNLP::ModelContainer::~ModelContainer(CoreNLP::ModelContainer *this)
{
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    CoreNLP::ModelContainerMMap::~ModelContainerMMap(v2);
    MEMORY[0x19EAF8CA0]();
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    CFRelease(v5);
  }
}

void *CoreNLP::TaggerManager::getRuleBasedTagger(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  v11 = a2;
  if (!std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(a1, &v11))
  {
    switch(a2)
    {
      case 0u:
        if (*(a1 + 56) == 1)
        {
          *(a1 + 64) = 4;
        }

        CoreNLP::WordTagger::createWordTagger((a1 + 64), v5);
      case 1u:
        CoreNLP::SentenceTagger::createSentenceTagger((a1 + 64), v5);
      case 2u:
        CoreNLP::ParagraphTagger::createParagraphTagger((a1 + 64), v5);
    }

    if (*(a1 + 48))
    {
      v10 = v4;
      v11 = &v10;
      v6 = std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(a1, &v10)[3];
      v7 = *(a1 + 48);
      Length = CFStringGetLength(v7);
      (*(*v6 + 40))(v6, v7, 0, Length, 0);
    }
  }

  v10 = v4;
  v11 = &v10;
  return std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(a1, &v10) + 3;
}

void sub_19D21340C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *___ZN7CoreNLP13TaggerManager15enumerateTokensE15NLTokenizerUnit7CFRangemU13block_pointerFv7NLTokenPbE_block_invoke(void *result, uint64_t *a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = result[5];
  v7 = *a2 == -1 || v6 == -1;
  if (!v7 && (v5 >= v6 ? (v8 = a2[1] + v5 <= result[6] + v6) : (v8 = 0), v8))
  {
    v12 = v3;
    v13 = v4;
    v9 = result[4];
    v11 = a2[2];
    v10 = *a2;
    return (*(v9 + 16))(v9, &v10, a3);
  }

  else if (a3)
  {
    *a3 = 1;
  }

  return result;
}

__CFDictionary *CoreNLP::TaggerManager::copyTagAndProbabilityForCurrentToken(CoreNLP::CompositeTagger ***this, const __CFString *a2)
{
  if (*(this + 57))
  {
    return 0;
  }

  else
  {
    return CoreNLP::CompositeTagger::copyTagAndProbabilityForCurrentToken(this[5], a2);
  }
}

__CFDictionary *CoreNLP::TaggerManager::copyTagAndProbabilityAtIndex(uint64_t a1, int a2, CFIndex a3, CFStringRef theString1, uint64_t a5)
{
  v10 = CoreNLP::CompositeTagger::schemeType(*(a1 + 40), theString1);
  v42 = v10;
  v11 = *(a1 + 40);
  if (a5 >= 2 && v10 == 12)
  {
    *(v11 + 844) = a5;
  }

  v12 = CoreNLP::TaggerManager::copyTagAtIndex(a1, a2, a3, theString1);
  key = v12;
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  AttributedTokenAtIndex = CoreNLP::CompositeTagger::getAttributedTokenAtIndex(*(a1 + 40));
  valuePtr = 0x3FF0000000000000;
  if ((v42 - 5) > 0xFFFFFFFD || CFEqual(theString1, kNLTagSchemeLemma[0]))
  {
    goto LABEL_7;
  }

  v27 = (AttributedTokenAtIndex + 32);
  v26 = *(AttributedTokenAtIndex + 32);
  for (i = v42; v26; v26 = *v26)
  {
    v29 = *(v26 + 8);
    if (v42 >= v29)
    {
      if (v29 >= v42)
      {
        v37 = &v42;
        valuePtr = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(AttributedTokenAtIndex + 24, &v42)[6];
        i = v42;
        break;
      }

      ++v26;
    }
  }

  if (i != 7)
  {
    goto LABEL_39;
  }

  v30 = *v27;
  if (!*v27)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v31 = *(v30 + 8);
    if (v31 <= 6)
    {
      break;
    }

LABEL_35:
    v30 = *v30;
    if (!v30)
    {
      goto LABEL_39;
    }
  }

  if (v31 != 6)
  {
    ++v30;
    goto LABEL_35;
  }

  if (!CoreNLP::CompositeTagger::isNERTag(*(a1 + 40), v13))
  {
    LODWORD(v43) = 6;
    v37 = &v43;
    valuePtr = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(AttributedTokenAtIndex + 24, &v43)[6];
  }

LABEL_39:
  if (*(v11 + 936) == 4)
  {
    valuePtr = 0x3FF0000000000000;
    if (v42 == 7)
    {
      for (j = *(v11 + 912); j != *(v11 + 920); j += 14)
      {
        if (*j <= a3 && j[1] + *j > a3)
        {
          v37 = &v42;
          valuePtr = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>((j + 3), &v42)[6];
          break;
        }
      }
    }
  }

  if (CFEqual(theString1, kNLTagSchemeNamedEntityOrLexicalClass[0]))
  {
    v33 = 212;
  }

  else
  {
    v34 = CFEqual(theString1, kNLTagSchemeLemma[0]);
    v33 = v42 + 201;
    if (v34)
    {
      v33 = 211;
    }
  }

  v35 = *v27;
  if (*v27)
  {
    v36 = AttributedTokenAtIndex + 32;
    do
    {
      if (*(v35 + 32) >= v33)
      {
        v36 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v33));
    }

    while (v35);
    if (v36 != v27 && v33 >= *(v36 + 32))
    {
      valuePtr = 0x3FF0000000000000;
    }
  }

LABEL_7:
  v15 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a5 >= 2 && v42 == 12)
  {
    v43 = &v42;
    v17 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::vector<std::pair<int,double>>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::vector<std::pair<int,double>>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::vector<std::pair<int,double>>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(AttributedTokenAtIndex + 48, &v42);
    v38 = 0;
    v39 = 0;
    v37 = 0;
    std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(&v37, v17[5], v17[6], (v17[6] - v17[5]) >> 4);
    v18 = v37;
    v19 = v38;
    if (v37 != v38)
    {
      do
      {
        EmotionLabelFromTagID = CoreNLP::CompositeTagger::getEmotionLabelFromTagID(*(a1 + 40), *v18);
        v21 = v18 + 2;
        v22 = CFNumberCreate(v15, kCFNumberDoubleType, v21);
        v43 = v22;
        CFDictionaryAddValue(Mutable, EmotionLabelFromTagID, v22);
        if (v22)
        {
          CFRelease(v22);
        }

        v18 = v21 + 2;
      }

      while (v18 != v19);
      v18 = v37;
    }

    if (v18)
    {
      v38 = v18;
      operator delete(v18);
    }

    v23 = key;
  }

  else
  {
    v24 = CFNumberCreate(v15, kCFNumberDoubleType, &valuePtr);
    v37 = v24;
    v23 = key;
    CFDictionaryAddValue(Mutable, key, v24);
    if (v24)
    {
      CFRelease(v24);
    }
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return Mutable;
}

__CFDictionary *CoreNLP::TaggerManager::copyLanguageMapAtIndex(uint64_t a1, int a2, CFIndex a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  if (!v4 || CFStringGetLength(v4) <= a3 || (*(a1 + 57) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 144) <= 0)
  {
    v11.location = a3;
    v11.length = 1;
    CoreNLP::TaggerManager::loadStringForCompositeTagger(a1, v11);
    v8 = *(a1 + 128);
  }

  else
  {
    v8 = *(a1 + 128);
    if (v8 > a3 || *(a1 + 136) + v8 <= a3)
    {
      return 0;
    }
  }

  v9 = *(a1 + 40);

  return CoreNLP::CompositeTagger::copyLanguageMapAtIndex(v9, a2, a3 - v8);
}

CoreNLP::CompositeTagger *CoreNLP::TaggerManager::setGazetteers(CoreNLP::TaggerManager *this, const __CFArray *a2, const __CFString *a3)
{
  result = *(this + 5);
  if (result)
  {
    return CoreNLP::CompositeTagger::setGazetteers(result, a2, a3);
  }

  return result;
}

void corelm::modelPathToOptions(uint64_t a1@<X0>, uint64_t a2@<X1>, CFDictionaryRef *a3@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v6 = getkMRLNeuralNetworkOptionModelURLKeySymbolLoc(void)::ptr;
  v34 = getkMRLNeuralNetworkOptionModelURLKeySymbolLoc(void)::ptr;
  if (!getkMRLNeuralNetworkOptionModelURLKeySymbolLoc(void)::ptr)
  {
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = ___ZL46getkMRLNeuralNetworkOptionModelURLKeySymbolLocv_block_invoke;
    v38 = &unk_1E76248C8;
    v39 = &v31;
    v7 = MontrealLibrary();
    v8 = dlsym(v7, "kMRLNeuralNetworkOptionModelURLKey");
    v39[1][3] = v8;
    getkMRLNeuralNetworkOptionModelURLKeySymbolLoc(void)::ptr = v39[1][3];
    v6 = *(v32 + 24);
  }

  _Block_object_dispose(&v31, 8);
  if (!v6)
  {
    _MRLNeuralNetworkGetOutput();
    goto LABEL_50;
  }

  applesauce::CF::StringRef::from_get(*v6, &cf);
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  v29 = CFURLCreateWithBytes(0, v10, v11, 0, 0);
  if (!v29)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v12 = getkMRLNeuralNetworkOptionEngineKeySymbolLoc(void)::ptr;
  v34 = getkMRLNeuralNetworkOptionEngineKeySymbolLoc(void)::ptr;
  if (!getkMRLNeuralNetworkOptionEngineKeySymbolLoc(void)::ptr)
  {
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = ___ZL44getkMRLNeuralNetworkOptionEngineKeySymbolLocv_block_invoke;
    v38 = &unk_1E76248C8;
    v39 = &v31;
    v13 = MontrealLibrary();
    v14 = dlsym(v13, "kMRLNeuralNetworkOptionEngineKey");
    v39[1][3] = v14;
    getkMRLNeuralNetworkOptionEngineKeySymbolLoc(void)::ptr = v39[1][3];
    v12 = *(v32 + 24);
  }

  _Block_object_dispose(&v31, 8);
  if (!v12)
  {
    dlerror();
    abort_report_np();
LABEL_50:
    __break(1u);
  }

  applesauce::CF::StringRef::from_get(*v12, &v28);
  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if (v16)
  {
    if (v15 >= 0)
    {
      v17 = *(a2 + 23);
    }

    else
    {
      v17 = *(a2 + 8);
    }

    v27 = CFStringCreateWithBytes(0, v16, v17, 0x8000100u, 0);
    if (!v27)
    {
      v18 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v18, "Could not construct");
      __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v27 = 0;
  }

  v19 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v35 = v19;
  v20 = v29;
  if (v29)
  {
    CFRetain(v29);
  }

  v36 = v20;
  v21 = v28;
  if (v28)
  {
    CFRetain(v28);
  }

  v37 = v21;
  if (v27)
  {
    CFRetain(v27);
  }

  v38 = v27;
  v31 = &v35;
  v32 = 2;
  v22 = 0;
  *a3 = applesauce::CF::details::make_CFDictionaryRef(&v31);
  do
  {
    v23 = *(&v38 + v22);
    if (v23)
    {
      CFRelease(v23);
    }

    v24 = *(&v37 + v22);
    if (v24)
    {
      CFRelease(v24);
    }

    v22 -= 16;
  }

  while (v22 != -32);
  if (v27)
  {
    CFRelease(v27);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_19D213E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  applesauce::CF::URLRef::~URLRef(va2);
  applesauce::CF::StringRef::~StringRef(va3);
  _Unwind_Resume(a1);
}

uint64_t corelm::NeuralNetwork::NeuralNetwork(uint64_t a1, uint64_t a2, uint64_t a3)
{
  corelm::modelPathToOptions(a2, a3, &v8);
  v4 = v8;
  v6 = _MRLNeuralNetworkCreate(v8, v5);
  corelm::NeuralNetwork::NeuralNetwork(a1, v6);
  if (v4)
  {
    CFRelease(v4);
  }

  return a1;
}

void sub_19D213F70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t corelm::NeuralNetwork::NeuralNetwork(uint64_t a1, const __CFDictionary **a2)
{
  v3 = _MRLNeuralNetworkCreate(*a2, a2);

  return corelm::NeuralNetwork::NeuralNetwork(a1, v3);
}

uint64_t _MRLNeuralNetworkCreate(const __CFDictionary *a1, __CFError **a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getMRLNeuralNetworkCreateSymbolLoc(void)::ptr;
  v10 = getMRLNeuralNetworkCreateSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkCreateSymbolLoc(void)::ptr)
  {
    v4 = MontrealLibrary();
    v8[3] = dlsym(v4, "MRLNeuralNetworkCreate");
    getMRLNeuralNetworkCreateSymbolLoc(void)::ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    Output = _MRLNeuralNetworkGetOutput();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(Output);
  }

  return v3(a1, 0);
}

uint64_t corelm::NeuralNetwork::NeuralNetwork(uint64_t a1, const void *a2)
{
  *(a1 + 32) = 0u;
  v4 = (a1 + 32);
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  v5 = (a1 + 8);
  *(a1 + 72) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  nlp::CFScopedPtr<MontrealNeuralNetwork *>::reset(a1, a2);
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "MRLNeuralNetworkCreate returned nullptr");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  corelm::getNames<__CFDictionary const* (*)(MontrealNeuralNetwork *)>(_MRLNeuralNetworkCopyInputNamesAndDimensions, *a1, &v8);
  std::vector<std::string>::__vdeallocate(v5);
  *(a1 + 8) = v8;
  *(a1 + 24) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
  corelm::getNames<__CFDictionary const* (*)(MontrealNeuralNetwork *)>(_MRLNeuralNetworkCopyOutputNamesAndDimensions, *a1, &v8);
  std::vector<std::string>::__vdeallocate(v4);
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
  return a1;
}

void sub_19D214230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__tree<std::string>::destroy(v11, *(v9 + 88));
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v10, *(v9 + 64));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  nlp::CFScopedPtr<MontrealNeuralNetwork *>::reset(v9, 0);
  _Unwind_Resume(a1);
}

void corelm::getNames<__CFDictionary const* (*)(MontrealNeuralNetwork *)>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = a1(a2);
  v28 = v4;
  if (v4)
  {
    v5 = CFGetTypeID(v4);
    if (v5 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = v28;
    if (v28)
    {
      CFRetain(v28);
      CFRelease(v28);
    }
  }

  else
  {
    v6 = 0;
  }

  applesauce::CF::DictionaryRef_iterator<std::string,std::vector<long>>::DictionaryRef_iterator(&v22, v6);
  applesauce::CF::DictionaryRef_iterator<std::string,std::vector<long>>::DictionaryRef_iterator(&v16, v6);
  v17 = (v19 - v18) >> 3;
  while (1)
  {
    if (v22 && v23 != (v25 - v24) >> 3)
    {
      v7 = v16;
      goto LABEL_13;
    }

    v7 = v16;
    if (!v16 || v17 == (v19 - v18) >> 3)
    {
      break;
    }

LABEL_13:
    if (v22 == v7 && v23 == v17)
    {
      break;
    }

    applesauce::CF::DictionaryRef_iterator<std::string,std::vector<long>>::dereference(&v22, v12);
    v8 = *(a3 + 8);
    if (v8 >= *(a3 + 16))
    {
      v10 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(a3, v12);
    }

    else
    {
      if (SHIBYTE(v13) < 0)
      {
        std::string::__init_copy_ctor_external(*(a3 + 8), v12[0], v12[1]);
      }

      else
      {
        v9 = *v12;
        *(v8 + 16) = v13;
        *v8 = v9;
      }

      v10 = (v8 + 24);
    }

    *(a3 + 8) = v10;
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }

    ++v23;
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v28)
  {
    CFRelease(v28);
  }
}

void sub_19D2144A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  __cxa_free_exception(v17);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef((v18 - 40));
  *(v18 - 104) = v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v18 - 104));
  _Unwind_Resume(a1);
}

uint64_t _MRLNeuralNetworkCopyInputNamesAndDimensions(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getMRLNeuralNetworkCopyInputNamesAndDimensionsSymbolLoc(void)::ptr;
  v9 = getMRLNeuralNetworkCopyInputNamesAndDimensionsSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkCopyInputNamesAndDimensionsSymbolLoc(void)::ptr)
  {
    v3 = MontrealLibrary();
    v7[3] = dlsym(v3, "MRLNeuralNetworkCopyInputNamesAndDimensions");
    getMRLNeuralNetworkCopyInputNamesAndDimensionsSymbolLoc(void)::ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    Output = _MRLNeuralNetworkGetOutput();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(Output);
  }

  return v2(a1);
}

uint64_t _MRLNeuralNetworkCopyOutputNamesAndDimensions(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getMRLNeuralNetworkCopyOutputNamesAndDimensionsSymbolLoc(void)::ptr;
  v9 = getMRLNeuralNetworkCopyOutputNamesAndDimensionsSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkCopyOutputNamesAndDimensionsSymbolLoc(void)::ptr)
  {
    v3 = MontrealLibrary();
    v7[3] = dlsym(v3, "MRLNeuralNetworkCopyOutputNamesAndDimensions");
    getMRLNeuralNetworkCopyOutputNamesAndDimensionsSymbolLoc(void)::ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    Output = _MRLNeuralNetworkGetOutput();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(Output);
  }

  return v2(a1);
}

void sub_19D214760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

void corelm::NeuralNetwork::predict(uint64_t *a1, uint64_t *a2)
{
  _MRLNeuralNetworkPredict(*a1, *a2);

  corelm::NeuralNetwork::releaseInputTensor(a1);
}

uint64_t _MRLNeuralNetworkPredict(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getMRLNeuralNetworkPredictSymbolLoc(void)::ptr;
  v11 = getMRLNeuralNetworkPredictSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkPredictSymbolLoc(void)::ptr)
  {
    v5 = MontrealLibrary();
    v9[3] = dlsym(v5, "MRLNeuralNetworkPredict");
    getMRLNeuralNetworkPredictSymbolLoc(void)::ptr = v9[3];
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

void corelm::NeuralNetwork::clear(corelm::NeuralNetwork *this)
{
  v2 = *this;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = getMRLNeuralNetworkClearSymbolLoc(void)::ptr;
  v9 = getMRLNeuralNetworkClearSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkClearSymbolLoc(void)::ptr)
  {
    v4 = MontrealLibrary();
    v7[3] = dlsym(v4, "MRLNeuralNetworkClear");
    getMRLNeuralNetworkClearSymbolLoc(void)::ptr = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    Output = _MRLNeuralNetworkGetOutput();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(Output);
  }

  v3(v2, 0);
  corelm::NeuralNetwork::releaseInputTensor(this);
}

uint64_t corelm::NeuralNetwork::outputDimension(uint64_t *a1, CFStringRef a2)
{
  v2 = a2;
  v3 = *a1;
  data_high = HIBYTE(a2->data);
  if ((data_high & 0x80u) != 0)
  {
    a2 = a2->isa;
  }

  if (a2)
  {
    info = v2->info;
    if ((data_high & 0x80u) == 0)
    {
      v6 = data_high;
    }

    else
    {
      v6 = info;
    }

    a2 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    cf = a2;
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  OutputDimension = _MRLNeuralNetworkGetOutputDimension(v3, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return OutputDimension;
}

void sub_19D214AA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t _MRLNeuralNetworkGetOutputDimension(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getMRLNeuralNetworkGetOutputDimensionSymbolLoc(void)::ptr;
  v11 = getMRLNeuralNetworkGetOutputDimensionSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkGetOutputDimensionSymbolLoc(void)::ptr)
  {
    v5 = MontrealLibrary();
    v9[3] = dlsym(v5, "MRLNeuralNetworkGetOutputDimension");
    getMRLNeuralNetworkGetOutputDimensionSymbolLoc(void)::ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    Output = _MRLNeuralNetworkGetOutput();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(Output);
  }

  return v4(a1, a2);
}

const void *corelm::NeuralNetwork::copyStates@<X0>(corelm::NeuralNetwork *this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getMRLNeuralNetworkCopyStatesSymbolLoc(void)::ptr;
  v12 = getMRLNeuralNetworkCopyStatesSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkCopyStatesSymbolLoc(void)::ptr)
  {
    v5 = MontrealLibrary();
    v10[3] = dlsym(v5, "MRLNeuralNetworkCopyStates");
    getMRLNeuralNetworkCopyStatesSymbolLoc(void)::ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    _MRLNeuralNetworkGetOutput();
    goto LABEL_8;
  }

  result = v4(v3, 0);
  *a2 = result;
  if (result)
  {
    v7 = CFGetTypeID(result);
    result = CFArrayGetTypeID();
    if (v7 != result)
    {
LABEL_8:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_19D214D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  __cxa_free_exception(v16);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v15);
  _Unwind_Resume(a1);
}

void *___ZL46getkMRLNeuralNetworkOptionModelURLKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "kMRLNeuralNetworkOptionModelURLKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRLNeuralNetworkOptionModelURLKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL19MontrealLibraryCorePPc_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MontrealLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *___ZL44getkMRLNeuralNetworkOptionEngineKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "kMRLNeuralNetworkOptionEngineKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRLNeuralNetworkOptionEngineKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL34getMRLNeuralNetworkCreateSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkCreateSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL55getMRLNeuralNetworkCopyInputNamesAndDimensionsSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkCopyInputNamesAndDimensions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkCopyInputNamesAndDimensionsSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL56getMRLNeuralNetworkCopyOutputNamesAndDimensionsSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkCopyOutputNamesAndDimensions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkCopyOutputNamesAndDimensionsSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL35getMRLNeuralNetworkPredictSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkPredict");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkPredictSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL33getMRLNeuralNetworkClearSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkClear");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkClearSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getMRLNeuralNetworkGetOutputDimensionSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkGetOutputDimension");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkGetOutputDimensionSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL38getMRLNeuralNetworkCopyStatesSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkCopyStates");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkCopyStatesSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *applesauce::CF::DictionaryRef_iterator<std::string,std::vector<long>>::~DictionaryRef_iterator(void *a1)
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
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t applesauce::CF::DictionaryRef_iterator<std::string,std::vector<long>>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

void std::vector<void const*>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<void const*>::__append(a1, a2 - v2);
  }
}

void std::vector<void const*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
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

double applesauce::CF::DictionaryRef_iterator<std::string,std::vector<long>>::dereference@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 0x8000000000000000) != 0 || (v5 = a1[2], v3 >= (a1[3] - v5) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "DictionaryRef_iterator iterator out of range.");
    __cxa_throw(exception, off_1E76245D8, MEMORY[0x1E69E5280]);
  }

  applesauce::CF::convert_to<std::string,0>(*(v5 + 8 * v3), &v10);
  applesauce::CF::convert_to<std::vector<long>,0>(*(a1[5] + 8 * a1[1]), &v8);
  *a2 = v10;
  *(a2 + 16) = v11;
  result = *&v8;
  *(a2 + 24) = v8;
  *(a2 + 40) = v9;
  return result;
}

void sub_19D2154C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::mecab::KoreanWordConnector::connect(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  if (!v3 || *(v3 + 91) == 3 || a1 && ((*(a2 + 64) - a1) >> 1) + (*(a2 + 80) >> 1) != (*(v3 + 64) - a1) >> 1)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    if (result)
    {
      break;
    }
  }

  while (v4++ != 23);
  return result;
}

BOOL CoreNLP::mecab::anonymous namespace::PosRule1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  v3 = v2 - 8;
  v4 = v2 - 2048;
  return v3 < 9 || v4 < 0x900;
}

BOOL CoreNLP::mecab::anonymous namespace::PosRule2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  v3 = v2 - 1;
  v4 = v2 - 256;
  return v3 < 6 || v4 < 0x600;
}

BOOL CoreNLP::mecab::anonymous namespace::PosRule7(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) != 39)
  {
    return 0;
  }

  v2 = *(a2 + 88);
  v4 = (v2 - 40) >= 3;
  v3 = v2 - 10240;
  v4 = v4 && v3 >= 0x300;
  return !v4;
}

BOOL CoreNLP::mecab::anonymous namespace::PosRule8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v18 = 5636182;
  v19 = 4259926;
  v17 = 5767254;
  v3 = *(a1 + 88);
  if ((v3 - 8) < 9 || (v3 - 2048) < 0x900)
  {
    return v2;
  }

  v4 = *(a2 + 72);
  for (i = (v4 + 2); ; ++i)
  {
    v6 = *(i - 1);
    if (v6 == 43)
    {
      break;
    }

    if (!*(i - 1) || v6 == 44)
    {
      return 0;
    }

LABEL_9:
    ;
  }

  if (*i != 69)
  {
    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(v4 + v7);
    if (!*(v4 + v7))
    {
      break;
    }

    if (v9 == 44)
    {
      break;
    }

    if (v9 != *(&v19 + v7))
    {
      break;
    }

    v8 = v7 != 0;
    v7 += 2;
  }

  while (v7 != 4);
  if (v8)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = *(v4 + v10);
    if (!*(v4 + v10))
    {
      break;
    }

    if (v12 == 44)
    {
      break;
    }

    if (v12 != *(&v18 + v10))
    {
      break;
    }

    v11 = v10 != 0;
    v10 += 2;
  }

  while (v10 != 4);
  if (v11)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = *(v4 + v14);
    if (!*(v4 + v14))
    {
      break;
    }

    if (v16 == 44)
    {
      break;
    }

    if (v16 != *(&v17 + v14))
    {
      break;
    }

    v15 = v14 != 0;
    v14 += 2;
  }

  while (v14 != 4);
  return !v15;
}

BOOL CoreNLP::mecab::anonymous namespace::PosRule9(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 86) != 1093)
  {
    return 0;
  }

  v2 = *(a2 + 88);
  v4 = (v2 - 40) >= 3;
  v3 = v2 - 10240;
  v4 = v4 && v3 >= 0x300;
  return !v4;
}

BOOL CoreNLP::mecab::anonymous namespace::PosRule10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (v2 == 35 || (v2 & 0xFF00) == 8960)
  {
    return 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 72);
    do
    {
      v8 = *(v7 + 2 * v6);
      if (!*(v7 + 2 * v6))
      {
        break;
      }

      if (v8 == 44)
      {
        break;
      }

      if (v8 != aVcpvcn[v6])
      {
        break;
      }

      v5 = v6++ > 1;
    }

    while (v6 != 3);
  }

  return v5;
}

uint64_t CoreNLP::mecab::anonymous namespace::LexicalRule1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80) >> 1;
  v3 = *(a2 + 64);
  if (v2 == 3)
  {
    v6 = *v3;
    if (v6 == 51060)
    {
      if (v3[1] == 45768)
      {
        v4 = v3[2];
        v5 = 44620;
        return v4 == v5;
      }
    }

    else if (v6 == 51064 && v3[1] == 45936 && v3[2] == 50836)
    {
      return 1;
    }
  }

  else if (v2 == 2 && *v3 == 51064)
  {
    v4 = v3[1];
    v5 = 45936;
    return v4 == v5;
  }

  return 0;
}

BOOL CoreNLP::mecab::anonymous namespace::LexicalRule2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80) >> 1;
  v3 = *(a2 + 64);
  if (v2 == 3)
  {
    if (*v3 != 51064 || v3[1] != 44032)
    {
      return 0;
    }

    v4 = v3[2];
    v5 = 50836;
  }

  else
  {
    if (v2 != 2 || *v3 != 51064)
    {
      return 0;
    }

    v4 = v3[1];
    v5 = 44032;
  }

  if (v4 == v5)
  {
    return *(a2 + 88) - 20 < 6;
  }

  return 0;
}

BOOL CoreNLP::mecab::anonymous namespace::LexicalRule3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80) >> 1;
  if (v2 - 4 < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  v4 = *(a2 + 64);
  v5 = *v4;
  if (v2 != 1)
  {
    if (v5 == 44032 && v4[1] == 50836)
    {
      return *(a2 + 88) - 20 < 6;
    }

    return 0;
  }

  if (v5 != 51424)
  {
    return 0;
  }

  return *(a2 + 88) - 20 < 6;
}

BOOL CoreNLP::mecab::anonymous namespace::LexicalRule4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2 == 34 || (v2 - 38) <= 0xFFFFFFFA)
  {
    v4 = *(a1 + 72);
    if (*v4 != 86)
    {
      return 0;
    }

    v5 = 0;
    for (i = 0; i != 3; ++i)
    {
      v7 = v4[i];
      if (!v4[i])
      {
        break;
      }

      if (v7 == 44)
      {
        break;
      }

      if (v7 != aVcpvcn[i + 3])
      {
        break;
      }

      v5 = i > 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return (*(a2 + 80) & 0xFFFE) == 2 && **(a2 + 64) == 47564;
}

BOOL CoreNLP::mecab::anonymous namespace::LexicalRule6(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 80) & 0xFFFE) == 4 && (v2 = *(a1 + 64), *v2 == 54596) && v2[1] == 50836)
  {
    return *(a2 + 88) == 33;
  }

  else
  {
    return 0;
  }
}

uint64_t CoreNLP::mecab::anonymous namespace::LexicalRule8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 88) != 37)
  {
    return 0;
  }

  v2 = 0;
  v3 = *(a1 + 88);
  if ((v3 - 1) >= 6 && (v3 - 256) >= 0x600)
  {
    if (v3 != 34 && (v3 - 38) > 0xFFFFFFFA)
    {
      return 0;
    }

    v5 = *(a1 + 72);
    if (*v5 == 86)
    {
      v6 = 0;
      for (i = 0; i != 3; ++i)
      {
        v8 = v5[i];
        if (!v5[i])
        {
          break;
        }

        if (v8 == 44)
        {
          break;
        }

        if (v8 != aVcpvcn[i + 3])
        {
          break;
        }

        v6 = i > 1;
      }

      if (!v6)
      {
        return 0;
      }
    }

    v2 = 0;
    if ((v3 - 40) >= 3 && (v3 - 10240) >= 0x300)
    {
      v2 = 0;
      if ((v3 - 8) >= 9 && (v3 - 2048) >= 0x900)
      {
        v2 = 0;
        if (v3 != 7 && v3 != 17)
        {
          if ((*(a1 + 80) & 0xFFFE) != 4)
          {
            return 0;
          }

          v9 = *(a1 + 64);
          v10 = *v9;
          switch(v10)
          {
            case 51652:
              return v9[1] != 51676;
            case 51228:
              v11 = v9[1];
              v12 = 51068;
              break;
            case 51221:
              v11 = v9[1];
              v12 = 47568;
              break;
            default:
              return 1;
          }

          return v11 != v12;
        }
      }
    }
  }

  return v2;
}

uint64_t CoreNLP::mecab::anonymous namespace::LexicalRule9(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 88) - 38 > 4)
  {
    return 0;
  }

  v3 = *(a2 + 64);
  v4 = *v3;
  if (v4 == 12622)
  {
    return 0;
  }

  result = 0;
  v7 = *(a1 + 88);
  if ((v7 - 26) >= 6 && (v7 - 8) >= 9 && (v7 - 2048) >= 0x900)
  {
    result = 0;
    if ((v7 - 1) >= 6 && (v7 - 256) >= 0x600)
    {
      result = 0;
      if ((v7 - 40) >= 3 && (v7 - 10240) >= 0x300)
      {
        {
          return 0;
        }

        result = 0;
        if (v7 != 7 && v7 != 17)
        {
          if ((*(a2 + 80) & 0xFFFE) != 4)
          {
            return 0;
          }

          switch(v4)
          {
            case 51652:
              return v3[1] != 51676;
            case 51228:
              v9 = v3[1];
              v10 = 51068;
              break;
            case 51221:
              v9 = v3[1];
              v10 = 47568;
              break;
            default:
              return 1;
          }

          return v9 != v10;
        }
      }
    }
  }

  return result;
}

BOOL CoreNLP::mecab::anonymous namespace::LexicalRule10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if ((v2 - 1) >= 6 && (v2 - 256) > 0x5FF)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 88);
  if ((v4 - 8) >= 9 && (v4 - 2048) >= 0x900)
  {
    v5 = v4 == 7 || v4 == 17;
    if (!v5 && (*(a1 + 80) & 0xFFFE) == 4)
    {
      v7 = *(a1 + 64);
      v8 = *v7;
      switch(v8)
      {
        case 51652:
          v9 = v7[1];
          v10 = 51676;
          break;
        case 51228:
          v9 = v7[1];
          v10 = 51068;
          break;
        case 51221:
          v9 = v7[1];
          v10 = 47568;
          break;
        default:
          return v4 != 29;
      }

      if (v9 != v10)
      {
        return v4 != 29;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t CoreNLP::mecab::anonymous namespace::LexicalRule11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (v2 != 35 && (v2 & 0xFF00) != 8960)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 72);
    do
    {
      v7 = *(v6 + 2 * v5);
      if (!*(v6 + 2 * v5))
      {
        break;
      }

      if (v7 == 44)
      {
        break;
      }

      if (v7 != aVcpvcn[v5])
      {
        break;
      }

      v4 = v5++ > 1;
    }

    while (v5 != 3);
    if (!v4)
    {
      return 0;
    }
  }

  v8 = 0;
  v9 = *(a1 + 88);
  if ((v9 - 8) >= 9 && (v9 - 2048) >= 0x900)
  {
    v8 = 0;
    if ((v9 - 1) >= 6 && (v9 - 256) >= 0x600)
    {
      v8 = 0;
      if (v9 != 7 && v9 != 17)
      {
        if ((*(a1 + 80) & 0xFFFE) != 4)
        {
          return 0;
        }

        v10 = *(a1 + 64);
        v11 = *v10;
        switch(v11)
        {
          case 51652:
            return v10[1] != 51676;
          case 51228:
            v12 = v10[1];
            v13 = 51068;
            break;
          case 51221:
            v12 = v10[1];
            v13 = 47568;
            break;
          default:
            return 1;
        }

        return v12 != v13;
      }
    }
  }

  return v8;
}

BOOL CoreNLP::mecab::anonymous namespace::LexicalRule12(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 88) != 36 || (*(a2 + 80) & 0xFFFE) != 2)
  {
    return 0;
  }

  v2 = **(a2 + 64);
  return v2 == 51064 || v2 == 51077;
}

BOOL CoreNLP::mecab::anonymous namespace::LexicalRule13(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 80) & 0xFFFE) == 6 && (v2 = *(a2 + 64), *v2 == 51077) && v2[1] == 45768)
  {
    return v2[2] == 45796;
  }

  else
  {
    return 0;
  }
}

uint64_t CoreNLP::mecab::anonymous namespace::IsTagStartsWithVExceptVCN(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 != 34 && (v1 - 38) > 0xFFFFFFFA)
  {
    v7 = 1;
  }

  else
  {
    v3 = *(a1 + 72);
    if (*v3 == 86)
    {
      v4 = 0;
      for (i = 0; i != 3; ++i)
      {
        v6 = v3[i];
        if (!v3[i])
        {
          break;
        }

        if (v6 == 44)
        {
          break;
        }

        if (v6 != aVcpvcn[i + 3])
        {
          break;
        }

        v4 = i > 1;
      }

      v7 = !v4;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t CoreNLP::ICUTextBreakWithCustomizedRules::fastEnumerateTokensWithSpecifiedStop(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (*(result + 8))
  {
    v6 = result;
    v7 = 0;
    v13 = 0;
    v10 = 0;
    do
    {
      result = MEMORY[0x19EAF9830](*(v6 + 8), 1, v11, &v13);
      if (!result)
      {
        return result;
      }

      v11[0] += *(v6 + 16);
      if (*(v6 + 97) == 1)
      {
        v12 = v13 | 0x20000000;
        v8 = *(v6 + 112);
        if ((v8 & 2) != 0 && ((v8 & 8) != 0 || *(*(v6 + 56) + 60) == 13))
        {
          v12 = v13 | 0x20000600;
        }

        goto LABEL_16;
      }

      if (*(v6 + 96) == 1)
      {
        CoreNLP::ICUTextBreakWithCustomizedRules::setTokenAttributes(v6, v13, &v12, &v10);
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      else if ((v7 & 1) == 0)
      {
LABEL_11:
        v7 = 0;
LABEL_16:
        result = (*(a4 + 16))(a4, v11, a3);
        continue;
      }

      v9 = *(v6 + 88);
      if (!v9)
      {
        v7 = 1;
        goto LABEL_16;
      }

      result = (*(v9 + 16))(v9, v11[0], v11[1], a3, a4);
      v7 = 1;
    }

    while (*a3 != 1);
  }

  return result;
}

void ___ZN12_GLOBAL__N_115GetCompoundTrieEv_block_invoke()
{
  CoreNLP::getPathRelativeToPlatformRoot("/System/Library/LinguisticData/en/tokcompound.dat", &__p);
  if ((__p.st_gid & 0x80000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = *&__p.st_dev;
  }

  v1 = open(p_p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  if (v1 != -1)
  {
    fstat(v1, &__p);
    v2 = mmap(0, __p.st_size, 1, 1, v1, 0);
    close(v1);
    if (v2 == -1)
    {
      v4 = 0;
    }

    else
    {
      st_size = __p.st_size;
      v4 = malloc_type_malloc(0x58uLL, 0x10B0040A3C4D6A3uLL);
      if (v4)
      {
        v4[4] = 0;
        v4[5] = 0;
        *v4 = v2 + 4;
        *(v4 + 20) = 0;
        if ((st_size & 0xFFFFFFFFFFFFFFF0) == 0x10)
        {
          v5 = 0;
          v4[1] = 0;
          *(v4 + 4) = 0;
        }

        else
        {
          v4[1] = v2 + 8;
          if (v2[4] == 1953655141)
          {
            v6 = v2[7];
          }

          else
          {
            v6 = 0;
          }

          *(v4 + 4) = v6;
          v5 = (st_size - 32) >> 3;
        }

        v4[3] = v5;
      }
    }
  }
}

void sub_19D21650C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFString *CoreNLP::Orthography::getDominantLanguageTag(CoreNLP::Orthography *this)
{
  v1 = *(this + 2);
  v2 = CoreNLP::Orthography::dominantLanguageIDForScriptID(this, v1);
  if ((v2 - 2) <= 0x36)
  {
    return CoreNLP::_languageTags[v2 - 2];
  }

  if (v2 != 1 || v1 == 28)
  {
    return 0;
  }

  else
  {
    return @"und";
  }
}

__CFString *CoreNLP::Orthography::getDominantScriptTag(CoreNLP::Orthography *this)
{
  v1 = *(this + 2);
  v2 = CoreNLP::Orthography::dominantLanguageIDForScriptID(this, *(this + 2));
  if (v1 == 3)
  {
    switch(v2)
    {
      case 5:
        return @"Hant";
      case 20:
        return @"Jpan";
      case 54:
        return @"Hant";
      default:
        return @"Hans";
    }
  }

  else if (v1 > 0x1B)
  {
    return 0;
  }

  else
  {
    return CoreNLP::_scriptTags[v1];
  }
}

__CFString *CoreNLP::Orthography::getLanguageTagForString(CoreNLP::Orthography *this, CFStringRef theString, CFRange a3)
{
  location = a3.location;
  a3.location = a3.length;
  v6 = CoreNLP::Orthography::dominantScriptIDForString(theString, location, a3);
  v7 = CoreNLP::Orthography::dominantLanguageIDForScriptID(this, v6);
  if ((v7 - 2) <= 0x36)
  {
    return CoreNLP::_languageTags[v7 - 2];
  }

  if (v7 != 1 || v6 == 28)
  {
    return 0;
  }

  else
  {
    return @"und";
  }
}

__CFDictionary *CoreNLP::Orthography::copyLanguageMap(CoreNLP::Orthography *this)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = MEMORY[0x1E695E9C0];
    while (!*(v3 + 5))
    {
LABEL_23:
      v3 = *v3;
      if (!v3)
      {
        return Mutable;
      }
    }

    v5 = *(v3 + 4);
    v6 = CoreNLP::Orthography::dominantLanguageIDForScriptID(this, *(v3 + 4));
    if (v5 == 3)
    {
      if (v6 == 5)
      {
        goto LABEL_8;
      }

      if (v6 == 20)
      {
        v7 = @"Jpan";
        goto LABEL_20;
      }

      v7 = @"Hans";
      if (v6 == 54)
      {
LABEL_8:
        v7 = @"Hant";
LABEL_20:
        v8 = v6 - 2;
        goto LABEL_21;
      }
    }

    else if (v5 > 0x1B)
    {
      v7 = 0;
    }

    else
    {
      v7 = CoreNLP::_scriptTags[v5];
    }

    v8 = v6 - 2;
    if ((v6 - 2) > 0x36)
    {
      if (v6 != 1 || v5 == 28)
      {
        v10 = 0;
      }

      else
      {
        v10 = @"und";
      }

      goto LABEL_22;
    }

LABEL_21:
    v10 = CoreNLP::_languageTags[v8];
LABEL_22:
    values = v10;
    v11 = CFArrayCreate(0, &values, 1, v4);
    CFDictionaryAddValue(Mutable, v7, v11);
    CFRelease(v11);
    goto LABEL_23;
  }

  return Mutable;
}

void ___ZN7CoreNLPL17_languageIDForTagEPK10__CFString_block_invoke()
{
  v0 = 0;
  __src = 0;
  v13 = 0;
  v1 = 2;
  v14 = 0;
  do
  {
    if (v0 >= v14)
    {
      v2 = __src;
      v3 = v0 - __src;
      v4 = (v0 - __src) >> 3;
      v5 = v4 + 1;
      if ((v4 + 1) >> 61)
      {
        std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
      }

      v6 = v14 - __src;
      if ((v14 - __src) >> 2 > v5)
      {
        v5 = v6 >> 2;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        v7 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = v5;
      }

      if (v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v7);
      }

      v8 = (v0 - __src) >> 3;
      v9 = (8 * v4);
      v10 = (8 * v4 - 8 * v8);
      *v9 = v1;
      v0 = v9 + 1;
      memcpy(v10, v2, v3);
      v11 = __src;
      __src = v10;
      v13 = v0;
      v14 = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v0++ = v1;
    }

    v13 = v0;
    ++v1;
  }

  while (v1 != 57);
  CoreNLP::_languageIDForTag(__CFString const*)::dictionary = CFDictionaryCreate(0, CoreNLP::_languageTags, __src, (v0 - __src) >> 3, MEMORY[0x1E695E528], 0);
  if (__src)
  {
    v13 = __src;
    operator delete(__src);
  }
}

void sub_19D216980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

dispatch_queue_t ___ZN7CoreNLPL20_getOrthographyQueueEv_block_invoke()
{
  result = dispatch_queue_create("com.apple.CoreNLP.Orthography", 0);
  CoreNLP::_getOrthographyQueue(void)::queue = result;
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NLScriptID,std::vector<unsigned short>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t CoreNLP::CNNModel::CreateCNNModel@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  if (result == 2)
  {
    operator new();
  }

  if (result == 1)
  {
    operator new();
  }

  return result;
}

void sub_19D216E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v36 - 73) < 0)
  {
    operator delete(*(v36 - 96));
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  MEMORY[0x19EAF8CA0](v35, 0x10F3C405A2BBF4ALL);
  *v34 = 0;
  _Unwind_Resume(a1);
}

void sub_19D216F08()
{
  *v0 = 0;
  (*(*v1 + 8))(v1);
  JUMPOUT(0x19D216EF4);
}

BOOL CoreNLP::CNNModel::loadModel(CoreNLP::CNNModel *this)
{
  if (CoreNLP::loadEspressoAPI(void)::onceToken != -1)
  {
    CoreNLP::CNNModel::loadModel();
  }

  if (CoreNLP::loadEspressoAPI(void)::isSoftlinked != 1)
  {
    return 0;
  }

  if (*(this + 2) && CoreNLP::_espresso_plan_destroy)
  {
    CoreNLP::_espresso_plan_destroy();
  }

  if (*(this + 1) && CoreNLP::_espresso_context_destroy)
  {
    CoreNLP::_espresso_context_destroy();
  }

  if (*(this + 79) < 0)
  {
    v2 = *(this + 8);
    if (v2)
    {
      std::string::__init_copy_ctor_external(&v15, *(this + 7), v2);
      goto LABEL_15;
    }

    return 0;
  }

  if (!*(this + 79))
  {
    return 0;
  }

  v15 = *(this + 56);
LABEL_15:
  std::string::basic_string[abi:ne200100]<0>(v13, ".net");
  std::string::basic_string[abi:ne200100]<0>(__p, ".shape");
  CoreNLP::stringReplace(&v15, v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v15;
  }

  else
  {
    v3 = v15.__r_.__value_.__r.__words[0];
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4];
  v6 = [objc_msgSend(MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:{0), "copy"}];
  *(this + 24) = v6;
  v7 = [objc_msgSend(objc_msgSend(objc_msgSend(v6 objectForKeyedSubscript:{@"layer_shapes", "objectForKeyedSubscript:", @"input1", "objectForKeyedSubscript:", @"seq", "unsignedIntegerValue"}];
  v8 = *(this + 11);
  if (v8 == 2)
  {
    *(this + 10) = v7;
    NSLog(&cfstr_LoadingAWordBa.isa);
    CoreNLP::CNNModel::loadWordBasedModel(this);
  }

  if (v8 == 1)
  {
    *(this + 10) = v7;
    NSLog(&cfstr_LoadingACharac.isa);
    CharacterBasedModel = CoreNLP::CNNModel::loadCharacterBasedModel(this);
  }

  else
  {
    CharacterBasedModel = 0;
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return CharacterBasedModel;
}

void sub_19D217128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::CNNModel::CNNModel(uint64_t a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t *a7)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F10AF690;
  *(a1 + 40) = 0;
  *(a1 + 44) = a2;
  *(a1 + 48) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(a1 + 72) = *(a4 + 2);
    *(a1 + 56) = v11;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    *(a1 + 96) = *(a5 + 2);
    *(a1 + 80) = v12;
  }

  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), *a6, *(a6 + 1));
  }

  else
  {
    v13 = *a6;
    *(a1 + 120) = *(a6 + 2);
    *(a1 + 104) = v13;
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 128, *a7, a7[1], 0xAAAAAAAAAAAAAAABLL * ((a7[1] - *a7) >> 3));
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  return a1;
}

void sub_19D2172A0(_Unwind_Exception *a1)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  nlp::CFScopedPtr<__CFLocale const*>::reset(v2, 0);
  _Unwind_Resume(a1);
}

void CoreNLP::CNNModel::~CNNModel(CoreNLP::CNNModel *this)
{
  *this = &unk_1F10AF690;
  if (*(this + 2))
  {
    v2 = CoreNLP::_espresso_plan_destroy == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    CoreNLP::_espresso_plan_destroy();
  }

  if (*(this + 1))
  {
    v3 = CoreNLP::_espresso_context_destroy == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    CoreNLP::_espresso_context_destroy();
  }

  v4 = *(this + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 23);
  if (v5)
  {
    CFRelease(v5);
  }

  std::__tree<std::string>::destroy(this + 160, *(this + 21));
  v6 = *(this + 19);
  *(this + 19) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = (this + 128);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
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

  nlp::CFScopedPtr<__CFLocale const*>::reset(this + 6, 0);
}

{
  CoreNLP::CNNModel::~CNNModel(this);

  JUMPOUT(0x19EAF8CA0);
}

CFDictionaryRef CoreNLP::CNNModel::copyFeatureRepresentationLayers(id *this)
{
  v1 = [this[24] objectForKeyedSubscript:@"layer_shapes"];

  return CFDictionaryCreateCopy(0, v1);
}

std::string *CoreNLP::stringReplace(std::string *this, char *a2, uint64_t a3)
{
  v4 = this;
  v5 = 0;
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v7 = this;
  }

  else
  {
    v7 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v8 = a2[23];
  v9 = *(a2 + 1);
  if ((v8 & 0x80000000) == 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if ((v8 & 0x80000000) == 0)
  {
    v11 = a2[23];
  }

  else
  {
    v11 = *(a2 + 1);
  }

  v22 = v8 >> 63;
  while (!v11)
  {
LABEL_23:
    if (v5 != -1)
    {
      if (v22)
      {
        v16 = v9;
      }

      else
      {
        v16 = v8;
      }

      v17 = *(a3 + 23);
      if (v17 >= 0)
      {
        v18 = a3;
      }

      else
      {
        v18 = *a3;
      }

      if (v17 >= 0)
      {
        v19 = *(a3 + 23);
      }

      else
      {
        v19 = *(a3 + 8);
      }

      this = std::string::replace(v4, v5, v16, v18, v19);
      v20 = *(a3 + 23);
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(a3 + 8);
      }

      v5 += v20;
      size = HIBYTE(v4->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = v4->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = v4->__r_.__value_.__l.__size_;
      }

      v8 = a2[23];
      v22 = v8 >> 63;
      v9 = *(a2 + 1);
      v10 = (v8 & 0x80000000) == 0 ? a2 : *a2;
      v11 = (v8 & 0x80000000) == 0 ? a2[23] : *(a2 + 1);
      if (size >= v5)
      {
        continue;
      }
    }

    return this;
  }

  v12 = size - v5;
  if ((size - v5) >= v11)
  {
    v13 = (v7 + size);
    this = (v7 + v5);
    v14 = *v10;
    do
    {
      if (v12 - v11 == -1)
      {
        break;
      }

      this = memchr(this, v14, v12 - v11 + 1);
      if (!this)
      {
        break;
      }

      v15 = this;
      this = memcmp(this, v10, v11);
      if (!this)
      {
        if (v15 == v13)
        {
          return this;
        }

        v5 = v15 - v7;
        goto LABEL_23;
      }

      this = (&v15->__r_.__value_.__l.__data_ + 1);
      v12 = v13 - (&v15->__r_.__value_.__l.__data_ + 1);
    }

    while (v12 >= v11);
  }

  return this;
}

BOOL CoreNLP::CNNModel::loadCharacterBasedModel(CoreNLP::CNNModel *this)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(this + 103) >= 0)
  {
    v2 = this + 80;
  }

  else
  {
    v2 = *(this + 10);
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3];
  v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [objc_msgSend(v5 objectForKeyedSubscript:{v9), "unsignedIntegerValue"}];
        std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
        v22 = __p;
        *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 160, __p) + 56) = v10;
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "PAD");
  v11 = std::__tree<std::string>::find<std::string>(this + 160, __p);
  v12 = this + 168;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 == v11)
  {
    NSLog(&cfstr_CannotFindTheP.isa);
LABEL_22:
    result = 0;
    goto LABEL_23;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "UNK");
  v13 = std::__tree<std::string>::find<std::string>(this + 160, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 == v13)
  {
    NSLog(&cfstr_CannotFindTheU.isa);
    goto LABEL_22;
  }

  result = CoreNLP::CNNModel::initInference(this);
LABEL_23:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D217850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CoreNLP::CNNModel::initInference(CoreNLP::CNNModel *this)
{
  *(this + 1) = CoreNLP::_espresso_create_context(0, 0xFFFFFFFFLL);
  *(this + 2) = CoreNLP::_espresso_create_plan();
  if (*(this + 79) < 0)
  {
    v2 = *(this + 7);
  }

  v3 = CoreNLP::_espresso_plan_add_network();
  CoreNLP::_espresso_network_declare_input(*(this + 3), *(this + 4), "input1");
  CoreNLP::_espresso_network_declare_output(*(this + 3), *(this + 4), "output1");
  v4 = *(this + 16);
  v5 = *(this + 17);
  while (v4 != v5)
  {
    v6 = v4;
    if (*(v4 + 23) < 0)
    {
      v6 = *v4;
    }

    CoreNLP::_espresso_network_declare_output(*(this + 3), *(this + 4), v6);
    v4 += 3;
  }

  return (v3 | CoreNLP::_espresso_plan_build(*(this + 2))) == 0;
}

void CoreNLP::CNNModel::prepareCharacterFeatureVector(uint64_t a1, std::vector<std::string> *this)
{
  v3.__i_ = this->__begin_;
  end = this->__end_;
  v6 = *(a1 + 40);
  if (0xAAAAAAAAAAAAAAABLL * ((end - v3.__i_) >> 3) <= v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&__x, "PAD");
    for (i = *(a1 + 40) + 0x5555555555555555 * ((this->__end_ - this->__begin_) >> 3); i; --i)
    {
      v10.__i_ = this->__begin_;
      std::vector<std::string>::insert(this, v10, &__x);
    }

    if (SHIBYTE(__x.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__x.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    v7.__i_ = &end[-v6];
    std::vector<std::string>::erase(this, v3, v7);
  }
}

void sub_19D217BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<std::string>::iterator std::vector<std::string>::erase(std::vector<std::string> *this, std::vector<std::string>::const_iterator __first, std::vector<std::string>::const_iterator __last)
{
  if (__last.__i_ != __first.__i_)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v10, __last.__i_, this->__end_, __first.__i_);
    v6 = v5;
    end = this->__end_;
    if (end != v5)
    {
      do
      {
        v8 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
        --end;
        if (v8 < 0)
        {
          operator delete(end->__r_.__value_.__l.__data_);
        }
      }

      while (end != v6);
    }

    this->__end_ = v6;
  }

  return __first.__i_;
}

std::vector<std::string>::iterator std::vector<std::string>::insert(std::vector<std::string> *this, std::vector<std::string>::const_iterator __position, std::vector<std::string>::const_reference __x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3) + 1;
    }

    if (v13 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v14;
    }

    v24.__end_cap_.__value_ = this;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v15);
    }

    v24.__first_ = 0;
    v24.__begin_ = (8 * (v12 >> 3));
    v24.__end_ = v24.__begin_;
    v24.__end_cap_.__value_ = 0;
    std::__split_buffer<std::string>::emplace_back<std::string const&>(&v24, __x);
    v16 = v24.__begin_;
    memcpy(v24.__end_, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v24.__begin_;
    v24.__end_ = (v24.__end_ + this->__end_ - i);
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = *&v24.__end_;
    v24.__end_ = v21;
    v24.__end_cap_.__value_ = v22;
    v24.__first_ = v21;
    v24.__begin_ = v21;
    std::__split_buffer<std::string>::~__split_buffer(&v24);
    return v16;
  }

  else if (__position.__i_ == end)
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(this, __x);
  }

  else
  {
    std::vector<std::string>::__move_range(this, __position.__i_, end, &__position.__i_[1]);
    v8 = this->__end_ <= __x || i > __x;
    v9 = 1;
    if (v8)
    {
      v9 = 0;
    }

    std::string::operator=(i, &__x[v9]);
  }

  return i;
}

void CoreNLP::CNNModel::fillCharacterInput(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 40))
  {
    v6 = 0;
    v7 = 0;
    v8 = a1 + 168;
    do
    {
      v9 = (*a2 + v6);
      if (*(v9 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v13, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v13.__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v13.__r_.__value_.__l.__data_ = v10;
      }

      if (v8 == std::__tree<std::string>::find<std::string>(a1 + 160, &v13.__r_.__value_.__l.__data_))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "UNK");
        v14 = __p;
        *(*a3 + 4 * v7) = *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 160, __p) + 56);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        __p[0] = &v13;
        *(*a3 + 4 * v7) = *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 160, &v13.__r_.__value_.__l.__data_) + 56);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      ++v7;
      v6 += 24;
    }

    while (v7 < *(a1 + 40));
  }
}

void sub_19D217F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::CNNModel::prepareWordFeatureData(uint64_t a1, std::vector<std::string> **a2)
{
  v3 = *a2;
  v4 = a2[1];
  v6 = *(a1 + 40);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) <= v6)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "PAD");
    std::vector<std::string>::vector[abi:ne200100](v11, 1uLL);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    for (i = *(a1 + 40) + 0x5555555555555555 * ((a2[1] - *a2) >> 3); i; --i)
    {
      std::vector<std::vector<std::string>>::insert(a2, *a2, v11);
    }

    __p[0] = v11;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  else
  {

    std::vector<std::vector<std::string>>::erase(a2, v3, &v4[-v6]);
  }
}

void sub_19D21807C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<std::string> *std::vector<std::vector<std::string>>::erase(uint64_t a1, std::vector<std::string> *this, std::vector<std::string> *a3)
{
  if (a3 != this)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(&v9, a3, *(a1 + 8), this);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 3;
        v10 = v7;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return this;
}

std::vector<std::string> *std::vector<std::vector<std::string>>::insert(void *a1, std::vector<std::string> *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    v15 = 2 * v14;
    if (2 * v14 <= v12)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v14 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v15;
    }

    v28 = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(a1, v16);
    }

    v25 = 0;
    v26 = 8 * (v13 >> 3);
    v27 = v26;
    std::__split_buffer<std::vector<std::string>>::emplace_back<std::vector<std::string> const&>(&v25, a3);
    v17 = v26;
    memcpy(v27, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v26;
    *&v27 = v27 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = (v19 - (v4 - v18));
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v27;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v25 = v22;
    v26 = v22;
    std::__split_buffer<std::vector<std::string>>::~__split_buffer(&v25);
    return v17;
  }

  else if (a2 == v6)
  {
    std::vector<std::vector<std::string>>::__construct_one_at_end[abi:ne200100]<std::vector<std::string> const&>(a1, a3);
  }

  else
  {
    std::vector<std::vector<std::string>>::__move_range(a1, a2, v6, &a2[1]);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 3;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    if (v4 != v10)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v4, *v10, v10[1], 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 3));
    }
  }

  return v4;
}

void sub_19D2182E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void CoreNLP::CNNModel::fillWordInput(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(*a2 + 24 * v7);
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        v24.__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v24.__r_.__value_.__l.__data_ = v9;
      }

      v10 = [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 192) objectForKeyedSubscript:{@"layer_shapes", "objectForKeyedSubscript:", @"input1", "objectForKeyedSubscript:", @"k", "unsignedIntegerValue"}];
      LODWORD(v22[0]) = 0;
      std::vector<float>::vector[abi:ne200100](&v23, v10);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v24;
      }

      else
      {
        v11 = v24.__r_.__value_.__r.__words[0];
      }

      std::string::basic_string[abi:ne200100]<0>(__p, [objc_msgSend(objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{v11), "lowercaseString"), "UTF8String"}]);
      memset(v22, 0, sizeof(v22));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v22, __p, &v27, 1uLL);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (CoreNLP::WordEmbedding::getAverageEmbedding(*(a1 + 152), v22, &v23))
      {
        begin = v23.__begin_;
        if (v23.__end_ != v23.__begin_)
        {
          v13 = v23.__end_ - v23.__begin_;
          if (v13 <= 1)
          {
            v13 = 1;
          }

          v14 = (*a3 + v10 * v6);
          do
          {
            v15 = *begin++;
            *v14++ = v15;
            --v13;
          }

          while (v13);
        }
      }

      else
      {
        v16 = [*(a1 + 184) objectForKey:@"UNK"];
        if (v23.__end_ != v23.__begin_)
        {
          v17 = v16;
          v18 = 0;
          v19 = v10 * v6;
          do
          {
            [objc_msgSend(v17 objectAtIndex:{v18), "floatValue"}];
            *(*a3 + v19) = v20;
            ++v18;
            v19 += 4;
          }

          while (v18 < v23.__end_ - v23.__begin_);
        }
      }

      __p[0] = v22;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      if (v23.__begin_)
      {
        v23.__end_ = v23.__begin_;
        operator delete(v23.__begin_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      ++v7;
      v6 += 4;
    }

    while (v7 < *(a1 + 40));
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t CoreNLP::CNNModel::featureRepresentation(uint64_t a1, std::vector<std::string> **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 44);
  if (v5 == 2)
  {
    CoreNLP::CNNModel::prepareWordFeatureData(a1, a2);
    v7 = CoreNLP::CNNModel::computeFeatureVectorWordBased(a1, a2);
  }

  else if (v5 == 1)
  {
    v6 = *a2;
    memset(&v9, 0, sizeof(v9));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v9, v6->__begin_, v6->__end_, 0xAAAAAAAAAAAAAAABLL * ((v6->__end_ - v6->__begin_) >> 3));
    CoreNLP::CNNModel::prepareCharacterFeatureVector(a1, &v9);
    v7 = CoreNLP::CNNModel::computeFeatureVectorCharBased(a1, &v9);
    v10 = &v9;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_19D2186B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::CNNModel::computeFeatureVectorCharBased(void *a1, void *a2)
{
  v15[0] = 0;
  v15[1] = 0;
  v14 = v15;
  v4 = a1[16];
  for (i = a1[17]; v4 != i; v4 += 24)
  {
    v13[0] = v4;
    std::__tree<std::__value_type<std::string,espresso_buffer_t>,std::__map_value_compare<std::string,std::__value_type<std::string,espresso_buffer_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v14, v4);
    v6 = v4;
    if (*(v4 + 23) < 0)
    {
      v6 = *v4;
    }

    v7 = CoreNLP::_espresso_network_bind_buffer;
    v8 = a1[3];
    v9 = a1[4];
    v13[0] = v4;
    v10 = std::__tree<std::__value_type<std::string,espresso_buffer_t>,std::__map_value_compare<std::string,std::__value_type<std::string,espresso_buffer_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v14, v4);
    v7(v8, v9, v6, v10 + 56, 0x20000, 0x10000, 0x10000);
  }

  CoreNLP::_espresso_network_bind_buffer(a1[3], a1[4], "input1", v13, 0x10000, 0x10000, 0x10000);
  CoreNLP::CNNModel::fillCharacterInput(a1, a2, v13);
  if (CoreNLP::_espresso_plan_execute_sync(a1[2]))
  {
    NSLog(&cfstr_FailedToExecut.isa);
    v11 = 0;
  }

  else
  {
    v11 = CoreNLP::CNNModel::fillTheResults(a1, &v14);
  }

  std::__tree<std::string>::destroy(&v14, v15[0]);
  return v11;
}

uint64_t CoreNLP::CNNModel::computeFeatureVectorWordBased(void *a1, void *a2)
{
  v15[0] = 0;
  v15[1] = 0;
  v14 = v15;
  v4 = a1[16];
  for (i = a1[17]; v4 != i; v4 += 24)
  {
    v13[0] = v4;
    std::__tree<std::__value_type<std::string,espresso_buffer_t>,std::__map_value_compare<std::string,std::__value_type<std::string,espresso_buffer_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v14, v4);
    v6 = v4;
    if (*(v4 + 23) < 0)
    {
      v6 = *v4;
    }

    v7 = CoreNLP::_espresso_network_bind_buffer;
    v8 = a1[3];
    v9 = a1[4];
    v13[0] = v4;
    v10 = std::__tree<std::__value_type<std::string,espresso_buffer_t>,std::__map_value_compare<std::string,std::__value_type<std::string,espresso_buffer_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v14, v4);
    v7(v8, v9, v6, v10 + 56, 0x20000, 0x10000, 0x10000);
  }

  CoreNLP::_espresso_network_bind_buffer(a1[3], a1[4], "input1", v13, 0x10000, 0x10000, 0x10000);
  CoreNLP::CNNModel::fillWordInput(a1, a2, v13);
  if (CoreNLP::_espresso_plan_execute_sync(a1[2]))
  {
    NSLog(&cfstr_FailedToExecut_0.isa);
    v11 = 0;
  }

  else
  {
    v11 = CoreNLP::CNNModel::fillTheResults(a1, &v14);
  }

  std::__tree<std::string>::destroy(&v14, v15[0]);
  return v11;
}

uint64_t CoreNLP::CNNModel::fillTheResults(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 == v5)
  {
LABEL_50:

    return [v4 copy];
  }

  else
  {
    v45 = v3;
    v46 = v5;
    while (1)
    {
      v8 = [*(a1 + 192) objectForKeyedSubscript:@"layer_shapes"];
      v9 = v6 + 4;
      if (*(v6 + 55) < 0)
      {
        v9 = v6[4];
      }

      v10 = [v8 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v9)}];
      v11 = [objc_msgSend(v10 objectForKeyedSubscript:{@"k", "unsignedIntegerValue"}];
      v12 = [objc_msgSend(v10 objectForKeyedSubscript:{@"w", "unsignedIntegerValue"}];
      v13 = [objc_msgSend(v10 objectForKeyedSubscript:{@"n", "unsignedIntegerValue"}];
      v14 = v10;
      v15 = v11;
      v16 = [objc_msgSend(v14 objectForKeyedSubscript:{@"h", "unsignedIntegerValue"}];
      v17 = !v11 || v12 == 0;
      v18 = v17 || v13 == 0;
      if (v18 || v16 == 0)
      {
        break;
      }

      v20 = v16;
      v48 = v6 + 4;
      v21 = v16 * v13 * v15;
      if (v16 * v13 * v12 == 1 || v13 * v12 * v15 == 1 || v16 * v12 * v15 == 1 || v21 == 1)
      {
        v25 = [MEMORY[0x1E695DF70] array];
        v27 = v21 * v12;
        if (v27)
        {
          for (i = 0; i != v27; ++i)
          {
            LODWORD(v26) = *(v6[7] + 4 * i);
            [v25 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v26)}];
          }
        }

        if (*(v6 + 55) < 0)
        {
          v29 = *v48;
        }

        else
        {
          v29 = v6 + 4;
        }

        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v29];
        v31 = v4;
        v32 = v25;
      }

      else
      {
        v52 = v12;
        v49 = v15;
        v50 = [MEMORY[0x1E695DF70] array];
        v33 = 0;
        v34 = 0;
        do
        {
          v51 = v33;
          v53 = [MEMORY[0x1E695DF70] array];
          v35 = 0;
          do
          {
            v36 = [MEMORY[0x1E695DF70] array];
            v37 = 0;
            do
            {
              v38 = [MEMORY[0x1E695DF70] array];
              v40 = v20;
              do
              {
                LODWORD(v39) = *(v6[7] + 4 * v34++);
                [v38 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v39)}];
                --v40;
              }

              while (v40);
              [v36 addObject:v38];
              ++v37;
            }

            while (v37 != v13);
            [v53 addObject:v36];
            ++v35;
          }

          while (v35 != v52);
          [v50 addObject:v53];
          v33 = v51 + 1;
        }

        while (v51 + 1 != v49);
        if (*(v6 + 55) < 0)
        {
          v41 = *v48;
          v4 = v45;
          v5 = v46;
        }

        else
        {
          v4 = v45;
          v5 = v46;
          v41 = v6 + 4;
        }

        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v41];
        v31 = v4;
        v32 = v50;
      }

      [v31 setObject:v32 forKeyedSubscript:v30];
      v42 = v6[1];
      if (v42)
      {
        do
        {
          v43 = v42;
          v42 = *v42;
        }

        while (v42);
      }

      else
      {
        do
        {
          v43 = v6[2];
          v17 = *v43 == v6;
          v6 = v43;
        }

        while (!v17);
      }

      v6 = v43;
      if (v43 == v5)
      {
        goto LABEL_50;
      }
    }

    NSLog(&cfstr_CannotExtractO.isa);
    return 0;
  }
}

void *___ZN7CoreNLPL15loadEspressoAPIEv_block_invoke(CoreNLP *a1)
{
  result = CoreNLP::loadEspresso(a1);
  if (result)
  {
    v2 = result;
    CoreNLP::_espresso_create_context = dlsym(result, "espresso_create_context");
    CoreNLP::_espresso_context_destroy = dlsym(v2, "espresso_context_destroy");
    CoreNLP::_espresso_create_plan = dlsym(v2, "espresso_create_plan");
    CoreNLP::_espresso_plan_destroy = dlsym(v2, "espresso_plan_destroy");
    CoreNLP::_espresso_plan_add_network = dlsym(v2, "espresso_plan_add_network");
    CoreNLP::_espresso_plan_build = dlsym(v2, "espresso_plan_build");
    CoreNLP::_espresso_network_bind_buffer = dlsym(v2, "espresso_network_bind_buffer");
    CoreNLP::_espresso_plan_execute_sync = dlsym(v2, "espresso_plan_execute_sync");
    CoreNLP::_espresso_network_declare_output = dlsym(v2, "espresso_network_declare_output");
    result = dlsym(v2, "espresso_network_declare_input");
    CoreNLP::_espresso_network_declare_input = result;
    if (CoreNLP::_espresso_create_context)
    {
      v3 = CoreNLP::_espresso_context_destroy == 0;
    }

    else
    {
      v3 = 1;
    }

    v12 = !v3 && CoreNLP::_espresso_create_plan != 0 && CoreNLP::_espresso_plan_destroy != 0 && CoreNLP::_espresso_plan_add_network != 0 && CoreNLP::_espresso_plan_build != 0 && CoreNLP::_espresso_network_bind_buffer != 0 && CoreNLP::_espresso_plan_execute_sync != 0 && CoreNLP::_espresso_network_declare_output != 0 && result != 0;
    CoreNLP::loadEspressoAPI(void)::isSoftlinked = v12;
  }

  return result;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v7 = __from_s + end - __to;
  v8 = end;
  if (v7 < __from_e)
  {
    v9 = v7;
    v8 = this->__end_;
    do
    {
      v10 = *v9;
      v8->__r_.__value_.__r.__words[2] = *(v9 + 16);
      *&v8->__r_.__value_.__l.__data_ = v10;
      ++v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < __from_e);
  }

  this->__end_ = v8;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v11, __from_s, v7, end);
}

void std::__split_buffer<std::string>::emplace_back<std::string const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a1 + 24))
  {
    v5 = *(a1 + 8);
    if (v5 <= *a1)
    {
      v10 = v4 - *a1;
      v9 = v10 == 0;
      v11 = 0x5555555555555556 * (v10 >> 3);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = *(a1 + 32);
      v15.__end_cap_.__value_ = *(a1 + 32);
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v13, v12);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v15, v5, v4, v5 - 24 * (v6 >> 1));
    v4 = v8;
    *(a1 + 8) += 8 * v7;
    *(a1 + 16) = v8;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
  }

  else
  {
    v14 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v14;
  }

  *(a1 + 16) += 24;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(int a1, uint64_t a2, uint64_t a3, std::vector<std::string> *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      std::vector<std::string>::__vdeallocate(this);
      *&this->__begin_ = *v5;
      this->__end_cap_.__value_ = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      ++this;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<std::vector<std::string>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v9;
      v8[2] = v9[2];
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      v9 += 3;
      v8 += 3;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(&v11, a2, v7, v6);
}

uint64_t std::__split_buffer<std::vector<std::string>>::emplace_back<std::vector<std::string> const&>(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      v10 = v4 - *a1;
      v9 = v10 == 0;
      v11 = 0x5555555555555556 * (v10 >> 3);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = a1[4];
      v15[4] = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(v13, v12);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(v15, v5, v4, (v5 - 24 * (v6 >> 1)));
    v4 = v8;
    a1[1] += 8 * v7;
    a1[2] = v8;
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  a1[2] += 24;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 24);
    v7 = a3;
    do
    {
      std::vector<std::string>::__vdeallocate(v6);
      v8 = *(v7 - 3);
      v7 -= 3;
      *&v6->__begin_ = v8;
      v6->__end_cap_.__value_ = v7[2];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      --v6;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t std::__tree<std::__value_type<std::string,espresso_buffer_t>,std::__map_value_compare<std::string,std::__value_type<std::string,espresso_buffer_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,espresso_buffer_t>,std::__map_value_compare<std::string,std::__value_type<std::string,espresso_buffer_t>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,espresso_buffer_t>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_19D2195F8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::isChineseCompoundLastName(CoreNLP *this, const CoreNLP::UStringPiece *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 3) >= 2uLL;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = *v2;
  v6 = 29;
  v7 = 14;
  while (1)
  {
    v8 = (&CoreNLP::kChineseCompoundLastNames + 4 * v7);
    v9 = *v8;
    if (v9 > v5)
    {
      goto LABEL_8;
    }

    if (v9 != v5)
    {
      break;
    }

    v10 = v8[1];
    v11 = v2[1];
    if (v10 <= v11)
    {
      if (v11 <= v10)
      {
        return 1;
      }

      goto LABEL_14;
    }

LABEL_8:
    v6 = v7 - 1;
LABEL_15:
    v7 = (v6 + v4) / 2;
    if (v4 > v6)
    {
      return 0;
    }
  }

  if (v5 > v9)
  {
LABEL_14:
    v4 = v7 + 1;
    goto LABEL_15;
  }

  return 1;
}

uint64_t CoreNLP::_CFInit_DepParserWrapper(uint64_t this, const void *a2)
{
  *(this + 16) = &unk_1F10AF780;
  *(this + 24) = 0;
  return this;
}

uint64_t CoreNLP::createParserWrapper(uint64_t *a1)
{
  CFAllocatorGetDefault();
  {
    qword_1EE62C858 = 0;
    unk_1EE62C868 = 0u;
    unk_1EE62C878 = 0u;
    CoreNLP::_CFGetTypeID_DepParserWrapper(void)::typeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = *a1;
  *a1 = 0;
  std::unique_ptr<CoreNLP::DepParserManager>::reset[abi:ne200100]((Instance + 24), v3);
  return Instance;
}

void CoreNLP::DepParserWrapper::~DepParserWrapper(CoreNLP::DepParserWrapper *this)
{
  *this = &unk_1F10AF780;
  std::unique_ptr<CoreNLP::DepParserManager>::reset[abi:ne200100](this + 1, 0);

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

{
  *this = &unk_1F10AF780;
  std::unique_ptr<CoreNLP::DepParserManager>::reset[abi:ne200100](this + 1, 0);
  CoreNLP::SubWordTagger::~SubWordTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t *std::unique_ptr<CoreNLP::DepParserManager>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v3)
    {
      v4 = std::unique_ptr<CoreNLP::MontrealModel>::~unique_ptr[abi:ne200100](v3);
      MEMORY[0x19EAF8CA0](v4, 0x1020C402EB40689);
    }

    v5 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v5)
    {
      v6 = std::unique_ptr<CoreNLP::MontrealModel>::~unique_ptr[abi:ne200100](v5);
      MEMORY[0x19EAF8CA0](v6, 0x1020C407DA8769ALL);
    }

    nlp::CFScopedPtr<void *>::reset((v2 + 8), 0);
    nlp::CFScopedPtr<void *>::reset(v2, 0);

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

uint64_t MurmurHash3_x86_32(uint64_t result, int a2, int a3, unsigned int *a4)
{
  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 3;
  }

  v5 = (result + (v4 & 0xFFFFFFFC));
  if ((a2 + 3) >= 7)
  {
    v6 = -(v4 >> 2);
    do
    {
      HIDWORD(v7) = (461845907 * ((380141568 * *&v5[4 * v6]) | ((-862048943 * *&v5[4 * v6]) >> 17))) ^ a3;
      LODWORD(v7) = HIDWORD(v7);
      a3 = 5 * (v7 >> 19) - 430675100;
    }

    while (!__CFADD__(v6++, 1));
  }

  v9 = 0;
  if ((a2 & 3u) > 1)
  {
    if ((a2 & 3) != 2)
    {
      v9 = v5[2] << 16;
    }

    v9 |= v5[1] << 8;
  }

  else if ((a2 & 3) == 0)
  {
    goto LABEL_15;
  }

  a3 ^= 461845907 * ((380141568 * (v9 ^ *v5)) | ((-862048943 * (v9 ^ *v5)) >> 17));
LABEL_15:
  v10 = -2048144789 * (a3 ^ a2 ^ ((a3 ^ a2) >> 16));
  *a4 = (-1028477387 * (v10 ^ (v10 >> 13))) ^ ((-1028477387 * (v10 ^ (v10 >> 13))) >> 16);
  return result;
}

void *CoreNLP::_CFInit_CNNModelWrapper(void *this, const void *a2)
{
  this[3] = 0;
  this[4] = 0;
  this[2] = &unk_1F10AF7E0;
  return this;
}

uint64_t CoreNLP::createCNNModelWrapper(uint64_t *a1)
{
  CFAllocatorGetDefault();
  {
    qword_1EE62CAC8 = 0;
    unk_1EE62CAD8 = 0u;
    unk_1EE62CAE8 = 0u;
    CoreNLP::_CFGetTypeID_CNNModelWrapper(void)::typeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(Instance + 32);
  *(v3 + 24) = v5;
  *(v3 + 32) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void CoreNLP::CNNModelWrapper::~CNNModelWrapper(CoreNLP::CNNModelWrapper *this)
{
  *this = &unk_1F10AF7E0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

{
  *this = &unk_1F10AF7E0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

void sub_19D219C58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::unique_ptr<CoreNLP::DepParserManager>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<CoreNLP::DepParserManager>::~unique_ptr[abi:ne200100](&a10);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D219C44);
}

uint64_t *std::unique_ptr<CoreNLP::DepParserManager>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v3)
    {
      v4 = std::unique_ptr<CoreNLP::MontrealModel>::~unique_ptr[abi:ne200100](v3);
      MEMORY[0x19EAF8CA0](v4, 0x1020C402EB40689);
    }

    v5 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v5)
    {
      v6 = std::unique_ptr<CoreNLP::MontrealModel>::~unique_ptr[abi:ne200100](v5);
      MEMORY[0x19EAF8CA0](v6, 0x1020C407DA8769ALL);
    }

    nlp::CFScopedPtr<void *>::reset((v2 + 8), 0);
    nlp::CFScopedPtr<void *>::reset(v2, 0);
    MEMORY[0x19EAF8CA0](v2, 0x10A0C4054680CF9);
  }

  return a1;
}

uint64_t NLDependencyParserCopyParseFromSentence(__CFString *a1, CoreNLP *a2)
{
  if (a2)
  {
    CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v5 = CoreNLP::unwrapGazetteer(a2, v4);
    CoreNLP::DepParserManager::getParse(v5, a1);
  }

  return 0;
}

void sub_19D219F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  CoreNLP::ParseStructure::~ParseStructure(va);
  _Unwind_Resume(a1);
}

void CoreNLP::ParseStructure::~ParseStructure(CoreNLP::ParseStructure *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  v6 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
}

uint64_t NLDependencyParserCopyNounPhrasesFromSentence(__CFString *a1, CoreNLP *a2)
{
  if (a2)
  {
    CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v5 = CoreNLP::unwrapGazetteer(a2, v4);
    CoreNLP::DepParserManager::getParse(v5, a1);
  }

  return 0;
}

void sub_19D21A2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  CoreNLP::ParseStructure::~ParseStructure(va);
  _Unwind_Resume(a1);
}

uint64_t toVector@<X0>(const __CFArray *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  result = [(__CFArray *)a1 countByEnumeratingWithState:&v26 objects:v31 count:16];
  v5 = result;
  if (result)
  {
    v6 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(a1);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, [*(*(&v26 + 1) + 8 * v7) UTF8String]);
        v9 = *(a2 + 8);
        v8 = *(a2 + 16);
        if (v9 >= v8)
        {
          v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a2) >> 3);
          v12 = v11 + 1;
          if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
          }

          v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3);
          if (2 * v13 > v12)
          {
            v12 = 2 * v13;
          }

          if (v13 >= 0x555555555555555)
          {
            v14 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v14 = v12;
          }

          v30.__end_cap_.__value_ = a2;
          if (v14)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v14);
          }

          v15 = 24 * v11;
          v16 = *__p;
          *(v15 + 16) = v25;
          *v15 = v16;
          __p[1] = 0;
          v25 = 0;
          __p[0] = 0;
          v17 = 24 * v11 + 24;
          v18 = *(a2 + 8) - *a2;
          v19 = 24 * v11 - v18;
          memcpy((v15 - v18), *a2, v18);
          v20 = *a2;
          *a2 = v19;
          *(a2 + 8) = v17;
          v21 = *(a2 + 16);
          *(a2 + 16) = 0;
          v30.__end_ = v20;
          v30.__end_cap_.__value_ = v21;
          v30.__first_ = v20;
          v30.__begin_ = v20;
          std::__split_buffer<std::string>::~__split_buffer(&v30);
          v22 = SHIBYTE(v25);
          *(a2 + 8) = v17;
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v10 = *__p;
          *(v9 + 16) = v25;
          *v9 = v10;
          *(a2 + 8) = v9 + 24;
        }

        ++v7;
      }

      while (v5 != v7);
      result = [(__CFArray *)a1 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v5 = result;
    }

    while (result);
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void NLCNNModelCreateWithModel(int a1, int a2, CFURLRef anURL)
{
  v4 = CFURLCopyPath(anURL);
  std::string::basic_string[abi:ne200100]<0>(&__p, -[__CFString UTF8String](v4, "UTF8String"));
  operator new();
}

void sub_19D21A6E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, const void *a20)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a20, 0);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D21A6C0);
}

CoreNLP *NLCNNModelCopyFeatureRepresentation(CoreNLP *result, __CFString *a2)
{
  if (result)
  {
    v3 = CoreNLP::unwrapGazetteer(result, a2);
    return CoreNLP::CNNModelHandler::copyFeatureRepresentation(v3, a2);
  }

  return result;
}

void sub_19D21A7E0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D21A7D0);
}

CoreNLP *NLCNNModelCopyFeatureRepresentationLayers(CoreNLP *result, void *a2)
{
  if (result)
  {
    v2 = CoreNLP::unwrapGazetteer(result, a2);
    return CoreNLP::CNNModelHandler::copyFeatureRepresentationLayers(v2);
  }

  return result;
}

void sub_19D21A814(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D21A808);
}

void std::shared_ptr<CoreNLP::CNNModelHandler>::shared_ptr[abi:ne200100]<CoreNLP::CNNModelHandler,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_19D21A8A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CoreNLP::CNNModelHandler>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

CoreNLP::CNNModelHandler **std::unique_ptr<CoreNLP::CNNModelHandler>::~unique_ptr[abi:ne200100](CoreNLP::CNNModelHandler **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CoreNLP::CNNModelHandler::~CNNModelHandler(v2);
    MEMORY[0x19EAF8CA0]();
  }

  return a1;
}

void std::__shared_ptr_pointer<CoreNLP::CNNModelHandler *,std::shared_ptr<CoreNLP::CNNModelHandler>::__shared_ptr_default_delete<CoreNLP::CNNModelHandler,CoreNLP::CNNModelHandler>,std::allocator<CoreNLP::CNNModelHandler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAF8CA0);
}

CoreNLP::CNNModelHandler *std::__shared_ptr_pointer<CoreNLP::CNNModelHandler *,std::shared_ptr<CoreNLP::CNNModelHandler>::__shared_ptr_default_delete<CoreNLP::CNNModelHandler,CoreNLP::CNNModelHandler>,std::allocator<CoreNLP::CNNModelHandler>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    CoreNLP::CNNModelHandler::~CNNModelHandler(result);

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CoreNLP::CNNModelHandler *,std::shared_ptr<CoreNLP::CNNModelHandler>::__shared_ptr_default_delete<CoreNLP::CNNModelHandler,CoreNLP::CNNModelHandler>,std::allocator<CoreNLP::CNNModelHandler>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

corelm::AbstractVocabulary *corelm::AbstractVocabulary::AbstractVocabulary(corelm::AbstractVocabulary *this)
{
  *this = &unk_1F10AFAE8;
  v2 = this + 32;
  std::string::basic_string[abi:ne200100]<0>(this + 8, "<s>");
  std::string::basic_string[abi:ne200100]<0>(v2, "</s>");
  std::string::basic_string[abi:ne200100]<0>(this + 56, "<unk>");
  std::string::basic_string[abi:ne200100]<0>(this + 80, "<pad>");
  return this;
}

void sub_19D21AA4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void corelm::TokenListVocabulary::determineUnkTokenID(corelm::TokenListVocabulary *this)
{
  if (*(this + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 7), *(this + 8));
  }

  else
  {
    __p = *(this + 56);
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

  Token = corelm::TokenIDMap::queryToken(this + 104, p_p, size);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(this + 200) = Token & 1;
  *(this + 24) = v6;
}

void corelm::AbstractVocabulary::~AbstractVocabulary(void **this)
{
  *this = &unk_1F10AFAE8;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void corelm::TokenListVocabulary::TokenListVocabulary(corelm::AbstractVocabulary *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  corelm::AbstractVocabulary::AbstractVocabulary(a1);
  *a1 = &unk_1F10AF8B8;
  *(a1 + 14) = a1 + 136;
  operator new();
}

void sub_19D21AFB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t corelm::TokenIDMap::queryToken(uint64_t a1, std::string::value_type *a2, uint64_t a3)
{
  memset(&v9, 0, sizeof(v9));
  if (a3)
  {
    v4 = a3;
    do
    {
      std::string::push_back(&v9, *a2++);
      --v4;
    }

    while (v4);
  }

  v6 = boost::bimaps::container_adaptor::associative_container_adaptor<boost::multi_index::detail::ordered_index<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::left>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::left,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>,boost::bimaps::detail::map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,boost::bimaps::detail::const_map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,std::string const,boost::bimaps::container_adaptor::support::iterator_facade_to_base<boost::bimaps::detail::map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,boost::bimaps::detail::const_map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>>,mpl_::na,boost::bimaps::relation::detail::pair_to_relation_functor<boost::bimaps::relation::member_at::left,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>,boost::bimaps::relation::support::get_pair_functor<boost::bimaps::relation::member_at::left,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>,mpl_::na,boost::mpl::v_item<boost::bimaps::container_adaptor::detail::iterator_from_base_identity<boost::iterators::reverse_iterator<boost::multi_index::detail::bidir_node_iterator<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>>,boost::bimaps::detail::reverse_map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,boost::iterators::reverse_iterator<boost::multi_index::detail::bidir_node_iterator<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>>,boost::bimaps::detail::const_reverse_map_view_iterator<boost::bimaps::relation::member_at::left,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>>,boost::mpl::vector<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,1>>::find<std::string>( (a1 + 48),  &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (*(*(a1 + 48) - 8) == v6)
  {
    return 0;
  }

  v7 = v6[3];
  return 1;
}

void corelm::TokenListVocabulary::idToToken(corelm::TokenListVocabulary *this@<X0>, std::logic_error_vtbl *a2@<X1>, std::string *a3@<X8>)
{
  v13 = a2;
  v6 = *(this + 20);
  v11[0] = a2;
  if (*(*(this + 20) - 8) == boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::find<long>(v6, v11))
  {
    corelm::util::strCat<char [18],long>("Unknown TokenID: ", &v13);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      corelm::TokenListVocabulary::idToToken(v11);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v8 = exception;
    if ((v12 & 0x80u) == 0)
    {
      v9 = v11;
    }

    else
    {
      v9 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v10 = v12;
    }

    else
    {
      v10 = v11[1];
    }

    corelm::OutOfVocabularyError::OutOfVocabularyError(exception, v9, v10);
  }

  corelm::TokenIDMap::idToToken((this + 104), a2, a3);
}

void sub_19D21B184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t corelm::util::strCat<char [18],long>(const char *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  v4 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v4);
  MEMORY[0x19EAF8A90](&v6, *a2);
  std::stringbuf::str();
  v6 = *MEMORY[0x1E69E54E8];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x19EAF8C10](&v10);
}

void sub_19D21B31C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void corelm::OutOfVocabularyError::~OutOfVocabularyError(std::exception *this)
{
  this->__vftable = &unk_1F10AFB60;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F10AFB60;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x19EAF8CA0);
}

void corelm::TokenIDMap::idToToken(corelm::TokenIDMap *this@<X0>, std::logic_error_vtbl *a2@<X1>, std::string *a3@<X8>)
{
  v6 = a2;
  v4 = boost::bimaps::detail::non_mutable_data_unique_map_view_access<boost::bimaps::views::map_view<boost::bimaps::relation::member_at::right,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>,boost::bimaps::relation::member_at::right,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>>::at<long>(this + 7, &v6);
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    a3->__r_.__value_.__r.__words[2] = *(v4 + 16);
    *&a3->__r_.__value_.__l.__data_ = v5;
  }
}

uint64_t corelm::TokenListVocabulary::tokenToID(uint64_t a1, char *__s, uint64_t a3)
{
  v24[0] = __s;
  v24[1] = a3;
  if (!*(a1 + 184))
  {
    goto LABEL_7;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  v6 = std::__tree<std::string>::find<std::string>(a1 + 168, &__p);
  if (SHIBYTE(v28[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 176 == v6)
  {
LABEL_7:
    if (corelm::TokenIDMap::queryToken(a1 + 104, __s, a3))
    {
      return v7;
    }

    else
    {
      if ((*(a1 + 200) & 1) == 0)
      {
        corelm::util::strCat<char [16],std::string_view>("Unknown Token: ", v24);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          corelm::TokenListVocabulary::idToToken(&__p);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        v9 = exception;
        if (SHIBYTE(v28[0].__locale_) >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (SHIBYTE(v28[0].__locale_) >= 0)
        {
          locale_high = HIBYTE(v28[0].__locale_);
        }

        else
        {
          locale_high = v27;
        }

        corelm::OutOfVocabularyError::OutOfVocabularyError(exception, p_p, locale_high);
      }

      return *(a1 + 192);
    }
  }

  else
  {
    if (*(v6 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *(v6 + 56), *(v6 + 64));
    }

    else
    {
      v23 = *(v6 + 56);
    }

    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v23;
    }

    else
    {
      v12 = v23.__r_.__value_.__r.__words[0];
    }

    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    if ((corelm::TokenIDMap::queryToken(a1 + 104, v12, size) & 1) == 0)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      v25[0] = "Special token ";
      v25[1] = &v23;
      v25[2] = " not found in vocab!";
      v21[0] = &__p;
      corelm::util::tuple_for_each<std::tuple<char const(&)[15],std::string const&,char const(&)[21]>,std::string corelm::util::strCat<char [15],std::string,char [21]>(char [15],std::string,char [21] const&)::{lambda(std::tuple<char const(&)[15],std::string const&,char const(&)[21]> const&)#1},0ul>(v25, v21);
      std::stringbuf::str();
      __p = *MEMORY[0x1E69E54E8];
      *(&__p + *(__p - 3)) = *(MEMORY[0x1E69E54E8] + 24);
      v27 = MEMORY[0x1E69E5548] + 16;
      if (v29 < 0)
      {
        operator delete(v28[7].__locale_);
      }

      v27 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v28);
      std::ostream::~ostream();
      MEMORY[0x19EAF8C10](&v30);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        corelm::TokenListVocabulary::idToToken(v21);
      }

      v15 = __cxa_allocate_exception(0x20uLL);
      v16 = v15;
      if ((v22 & 0x80u) == 0)
      {
        v17 = v21;
      }

      else
      {
        v17 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v18 = v22;
      }

      else
      {
        v18 = v21[1];
      }

      corelm::OutOfVocabularyError::OutOfVocabularyError(v15, v17, v18);
    }

    v19 = v14;
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  return v19;
}

void sub_19D21B738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t corelm::util::strCat<char [16],std::string_view>(const char *a1, uint64_t *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  v4 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, *a2, a2[1]);
  std::stringbuf::str();
  v6 = *MEMORY[0x1E69E54E8];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x19EAF8C10](&v10);
}

void sub_19D21B924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void corelm::TokenListVocabulary::idsToText(void *a1)
{
  v1 = a1[26];
  (*(*a1 + 80))(v2);
  (*(*v1 + 24))(v1, v2);
  v3 = v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void sub_19D21B9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void corelm::TokenListVocabulary::textToIDs(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = (a1 + 8);
  v8 = *(a1 + 31);
  if (v8 < 0)
  {
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
  }

  else
  {
    v9 = (a1 + 8);
  }

  if (corelm::util::startsWith(a2, a3, v9, v8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Input text should not contain BOS token!");
    __cxa_throw(exception, off_1E76245E0, MEMORY[0x1E69E5298]);
  }

  (*(**(a1 + 208) + 16))(&__position);
  if (a4)
  {
    v10.__i_ = __position.__begin_;
    std::vector<std::string>::insert(&__position, v10, v7);
  }

  (*(*a1 + 88))(a1, &__position);
  p_position = &__position;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_position);
}

void sub_19D21BB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

_BYTE *corelm::Custom1PreProcessor::preProcess@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v6 = *v6;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  v10 = *(a1 + 56);
  [v9 length];
  NLTokenizerSetString(v10);
  v11 = [MEMORY[0x1E696AD60] string];
  v12 = *(a1 + 56);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___ZNK6corelm19Custom1PreProcessor10preProcessERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
  v14[3] = &unk_1E7625AD0;
  v14[4] = v9;
  v14[5] = v11;
  v14[6] = v7;
  v14[7] = @" ";
  v14[8] = a1;
  NLTokenizerEnumerateTokens(v12, v14);
  return std::string::basic_string[abi:ne200100]<0>(a3, [v11 UTF8String]);
}

uint64_t ___ZNK6corelm19Custom1PreProcessor10preProcessERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v4 = [objc_msgSend(*(a1 + 32) substringWithRange:{*a2, a2[1]), "stringByReplacingOccurrencesOfString:withString:", @" ", &stru_1F10B2700}];
  result = [v4 length];
  if (result)
  {
    if ([objc_msgSend(v4 "capitalizedString")] && (objc_msgSend(objc_msgSend(v4, "lowercaseString"), "isEqual:", v4) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
      v6 = std::__tree<std::string>::find<std::string>(v3 + 8, __p);
      v7 = v3 + 16;
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 == v6)
      {
        [*(a1 + 40) appendString:*(a1 + 48)];
        v4 = [v4 lowercaseString];
      }
    }

    [*(a1 + 40) appendString:v4];
    return [*(a1 + 40) appendString:*(a1 + 56)];
  }

  return result;
}

void sub_19D21BD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::Custom1PreProcessor::postProcess(std::string *__str@<X1>, uint64_t a2@<X0>, std::string *a3@<X8>)
{
  v4 = a2;
  v6 = (a2 + 32);
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v8 = __str;
  }

  else
  {
    v8 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v9 = *(a2 + 55);
  if (v9 >= 0)
  {
    v10 = (a2 + 32);
  }

  else
  {
    v10 = *(a2 + 32);
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 55);
  }

  else
  {
    v11 = *(a2 + 40);
  }

  if (v11)
  {
    v13 = a3;
    if (size >= v11)
    {
      v38 = v8 + size;
      v39 = *v10;
      v40 = v8;
      do
      {
        v41 = size - v11;
        if (v41 == -1)
        {
          break;
        }

        v42 = memchr(v40, v39, v41 + 1);
        if (!v42)
        {
          break;
        }

        v43 = v42;
        if (!memcmp(v42, v10, v11))
        {
          if (v43 == v38)
          {
            break;
          }

          v15 = v43 - v8;
          a3 = v13;
          v13->__r_.__value_.__r.__words[0] = 0;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v4 = a2;
          if (v15 == -1)
          {
            v14 = 0;
            goto LABEL_58;
          }

          goto LABEL_16;
        }

        v40 = (v43 + 1);
        size = v38 - (v43 + 1);
      }

      while (size >= v11);
    }

    v14 = 0;
    a3 = v13;
    v13->__r_.__value_.__r.__words[0] = 0;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v15 = 0;
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
LABEL_16:
    v14 = 0;
    v44 = v4;
    while (1)
    {
      std::string::basic_string(&v45, __str, v14, v15 - v14, &v46);
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v45;
      }

      else
      {
        v16 = v45.__r_.__value_.__r.__words[0];
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = v45.__r_.__value_.__l.__size_;
      }

      std::string::append(a3, v16, v17);
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      v18 = *(v4 + 55);
      if (v18 < 0)
      {
        v18 = *(v4 + 40);
      }

      v19 = v18 + v15;
      v20 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = __str->__r_.__value_.__l.__size_;
      }

      if (v19 >= v20)
      {
        break;
      }

      if (v21 >= 0)
      {
        v22 = __str;
      }

      else
      {
        v22 = __str->__r_.__value_.__r.__words[0];
      }

      v23 = __toupper(v22->__r_.__value_.__s.__data_[v19]);
      std::string::push_back(a3, v23);
      v24 = a3;
      v14 = v19 + 1;
      v25 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      if ((v25 & 0x80u) == 0)
      {
        v26 = __str;
      }

      else
      {
        v26 = __str->__r_.__value_.__r.__words[0];
      }

      if ((v25 & 0x80u) != 0)
      {
        v25 = __str->__r_.__value_.__l.__size_;
      }

      v27 = *(v4 + 55);
      if (v27 >= 0)
      {
        v28 = v6;
      }

      else
      {
        v28 = *(v4 + 32);
      }

      if (v27 >= 0)
      {
        v29 = *(v4 + 55);
      }

      else
      {
        v29 = *(v4 + 40);
      }

      if (v25 <= v19)
      {
        goto LABEL_57;
      }

      v15 = v19 + 1;
      if (v29)
      {
        v30 = v25 - v14;
        if ((v25 - v14) >= v29)
        {
          v31 = v26 + v25;
          v32 = v26 + v14;
          v33 = *v28;
          do
          {
            if (v30 - v29 == -1)
            {
              break;
            }

            v34 = memchr(v32, v33, v30 - v29 + 1);
            if (!v34)
            {
              break;
            }

            v35 = v34;
            if (!memcmp(v34, v28, v29))
            {
              if (v35 == v31)
              {
                break;
              }

              v15 = v35 - v26;
              v4 = v44;
              goto LABEL_55;
            }

            v32 = v35 + 1;
            v30 = v31 - (v35 + 1);
          }

          while (v30 >= v29);
        }

LABEL_57:
        a3 = v24;
        goto LABEL_58;
      }

LABEL_55:
      a3 = v24;
      if (v15 == -1)
      {
        goto LABEL_58;
      }
    }

    v14 = v19;
  }

LABEL_58:
  std::string::basic_string(&v45, __str, v14, 0xFFFFFFFFFFFFFFFFLL, &v46);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &v45;
  }

  else
  {
    v36 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = v45.__r_.__value_.__l.__size_;
  }

  std::string::append(a3, v36, v37);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }
}

void sub_19D21C074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *corelm::Custom2PreProcessor::preProcess@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v6 = *v6;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  v10 = *(a1 + 80);
  [v9 length];
  NLTokenizerSetString(v10);
  v11 = [MEMORY[0x1E696AD60] string];
  v12 = *(a1 + 80);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___ZNK6corelm19Custom2PreProcessor10preProcessERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
  v14[3] = &unk_1E7625AD0;
  v14[4] = v9;
  v14[5] = v11;
  v14[6] = v7;
  v14[7] = @" ";
  v14[8] = a1;
  NLTokenizerEnumerateTokens(v12, v14);
  return std::string::basic_string[abi:ne200100]<0>(a3, [v11 UTF8String]);
}

unint64_t ___ZNK6corelm19Custom2PreProcessor10preProcessERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v4 = [objc_msgSend(*(a1 + 32) substringWithRange:{*a2, a2[1]), "stringByReplacingOccurrencesOfString:withString:", @" ", &stru_1F10B2700}];
  v5 = [MEMORY[0x1E695DF70] array];
  result = [v4 length];
  if (result)
  {
    if (([v4 hasSuffix:@"'s"] & 1) != 0 || objc_msgSend(v4, "hasSuffix:", @"’s"))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, [objc_msgSend(v4 "lowercaseString")]);
      v7 = std::__tree<std::string>::find<std::string>(v3 + 56, __p);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (v3 + 64 == v7)
      {
        [v5 insertObject:objc_msgSend(v4 atIndex:{"substringFromIndex:", objc_msgSend(v4, "length") - 2), 0}];
        v4 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 2}];
      }
    }

    if ([v4 containsString:@"."] && objc_msgSend(v4, "length") >= 2)
    {
      v8 = [v4 componentsSeparatedByString:@"."];
      if ([v8 count])
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = [v8 objectAtIndexedSubscript:v9];
          if ([v11 length])
          {
            [v5 insertObject:v11 atIndex:v10++];
          }

          if ([v8 count] > ++v9)
          {
            [v5 insertObject:@"." atIndex:v10++];
          }
        }

        while ([v8 count] > v9);
      }
    }

    else if ([v4 length])
    {
      [v5 insertObject:v4 atIndex:0];
    }

    result = [v5 count];
    if (result)
    {
      for (i = 0; i < result; ++i)
      {
        v13 = [v5 objectAtIndexedSubscript:i];
        if ([objc_msgSend(v13 "capitalizedString")] && (objc_msgSend(objc_msgSend(v13, "lowercaseString"), "isEqual:", v13) & 1) == 0 && objc_msgSend(v13, "length") >= 2)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, [v13 UTF8String]);
          v14 = std::__tree<std::string>::find<std::string>(v3 + 8, __p);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }

          if (v3 + 16 == v14)
          {
            [*(a1 + 40) appendString:*(a1 + 48)];
            v13 = [v13 lowercaseString];
          }
        }

        if ([v13 isEqualToString:@"s"] && objc_msgSend(*(a1 + 40), "length") >= 3)
        {
          if ([objc_msgSend(*(a1 + 40) substringFromIndex:{objc_msgSend(*(a1 + 40), "length") - 3), "isEqualToString:", @" ' "}])
          {
            [*(a1 + 40) deleteCharactersInRange:{objc_msgSend(*(a1 + 40), "length") - 1, 1}];
          }
        }

        [*(a1 + 40) appendString:v13];
        [*(a1 + 40) appendString:*(a1 + 56)];
        result = [v5 count];
      }
    }
  }

  return result;
}

void sub_19D21C524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::Custom2PreProcessor::postProcess(std::string *__str@<X1>, uint64_t a2@<X0>, std::string *a3@<X8>)
{
  v4 = a2;
  v6 = (a2 + 32);
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v8 = __str;
  }

  else
  {
    v8 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v9 = *(a2 + 55);
  if (v9 >= 0)
  {
    v10 = (a2 + 32);
  }

  else
  {
    v10 = *(a2 + 32);
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 55);
  }

  else
  {
    v11 = *(a2 + 40);
  }

  if (v11)
  {
    v13 = a3;
    if (size >= v11)
    {
      v38 = v8 + size;
      v39 = *v10;
      v40 = v8;
      do
      {
        v41 = size - v11;
        if (v41 == -1)
        {
          break;
        }

        v42 = memchr(v40, v39, v41 + 1);
        if (!v42)
        {
          break;
        }

        v43 = v42;
        if (!memcmp(v42, v10, v11))
        {
          if (v43 == v38)
          {
            break;
          }

          v15 = v43 - v8;
          a3 = v13;
          v13->__r_.__value_.__r.__words[0] = 0;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v4 = a2;
          if (v15 == -1)
          {
            v14 = 0;
            goto LABEL_58;
          }

          goto LABEL_16;
        }

        v40 = (v43 + 1);
        size = v38 - (v43 + 1);
      }

      while (size >= v11);
    }

    v14 = 0;
    a3 = v13;
    v13->__r_.__value_.__r.__words[0] = 0;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v15 = 0;
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
LABEL_16:
    v14 = 0;
    v44 = v4;
    while (1)
    {
      std::string::basic_string(&v45, __str, v14, v15 - v14, &v46);
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v45;
      }

      else
      {
        v16 = v45.__r_.__value_.__r.__words[0];
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = v45.__r_.__value_.__l.__size_;
      }

      std::string::append(a3, v16, v17);
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      v18 = *(v4 + 55);
      if (v18 < 0)
      {
        v18 = *(v4 + 40);
      }

      v19 = v18 + v15;
      v20 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = __str->__r_.__value_.__l.__size_;
      }

      if (v19 >= v20)
      {
        break;
      }

      if (v21 >= 0)
      {
        v22 = __str;
      }

      else
      {
        v22 = __str->__r_.__value_.__r.__words[0];
      }

      v23 = __toupper(v22->__r_.__value_.__s.__data_[v19]);
      std::string::push_back(a3, v23);
      v24 = a3;
      v14 = v19 + 1;
      v25 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      if ((v25 & 0x80u) == 0)
      {
        v26 = __str;
      }

      else
      {
        v26 = __str->__r_.__value_.__r.__words[0];
      }

      if ((v25 & 0x80u) != 0)
      {
        v25 = __str->__r_.__value_.__l.__size_;
      }

      v27 = *(v4 + 55);
      if (v27 >= 0)
      {
        v28 = v6;
      }

      else
      {
        v28 = *(v4 + 32);
      }

      if (v27 >= 0)
      {
        v29 = *(v4 + 55);
      }

      else
      {
        v29 = *(v4 + 40);
      }

      if (v25 <= v19)
      {
        goto LABEL_57;
      }

      v15 = v19 + 1;
      if (v29)
      {
        v30 = v25 - v14;
        if ((v25 - v14) >= v29)
        {
          v31 = v26 + v25;
          v32 = v26 + v14;
          v33 = *v28;
          do
          {
            if (v30 - v29 == -1)
            {
              break;
            }

            v34 = memchr(v32, v33, v30 - v29 + 1);
            if (!v34)
            {
              break;
            }

            v35 = v34;
            if (!memcmp(v34, v28, v29))
            {
              if (v35 == v31)
              {
                break;
              }

              v15 = v35 - v26;
              v4 = v44;
              goto LABEL_55;
            }

            v32 = v35 + 1;
            v30 = v31 - (v35 + 1);
          }

          while (v30 >= v29);
        }

LABEL_57:
        a3 = v24;
        goto LABEL_58;
      }

LABEL_55:
      a3 = v24;
      if (v15 == -1)
      {
        goto LABEL_58;
      }
    }

    v14 = v19;
  }

LABEL_58:
  std::string::basic_string(&v45, __str, v14, 0xFFFFFFFFFFFFFFFFLL, &v46);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &v45;
  }

  else
  {
    v36 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = v45.__r_.__value_.__l.__size_;
  }

  std::string::append(a3, v36, v37);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }
}

void sub_19D21C834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

void corelm::Custom2ASRPreProcessor::preProcess(uint64_t a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  std::string::basic_string[abi:ne200100](&__str, v6 + 1);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(p_str, v8, v6);
  }

  *(&p_str->__r_.__value_.__l.__data_ + v6) = 32;
  v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v10 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  size = __str.__r_.__value_.__l.__size_;
  v11 = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__str;
  }

  else
  {
    v13 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = __str.__r_.__value_.__l.__size_;
  }

  if (v14 >= 1)
  {
    v15 = v13 + v14;
    v16 = v13;
    while (1)
    {
      v17 = memchr(v16, 32, v14);
      if (!v17)
      {
        goto LABEL_76;
      }

      if (*v17 == 32)
      {
        break;
      }

      v16 = (v17 + 1);
      v14 = v15 - v16;
      if (v15 - v16 < 1)
      {
        goto LABEL_76;
      }
    }

    if (v17 == v15)
    {
      goto LABEL_76;
    }

    v18 = v17 - v13;
    if (v18 == -1)
    {
      goto LABEL_76;
    }

    v19 = 0;
LABEL_27:
    v20 = &__str;
    if (v10)
    {
      v20 = v11;
    }

    v21 = v20->__r_.__value_.__s.__data_[v19];
    if (v21 != 39)
    {
      if (v21 == 95)
      {
        v20->__r_.__value_.__s.__data_[v19++] = 32;
        goto LABEL_56;
      }

      if (v21 == 92)
      {
        std::string::basic_string(&v37, &__str, v19, v18 - v19, &v39);
        v22 = std::__tree<std::string>::find<std::string>(a1 + 88, &v37.__r_.__value_.__l.__data_);
        v23 = v22;
        if (a1 + 96 == v22)
        {
          std::string::replace(&__str, v19, v18 - v19, "");
        }

        else
        {
          v24 = *(v22 + 79);
          if (v24 >= 0)
          {
            v25 = (v22 + 56);
          }

          else
          {
            v25 = *(v22 + 56);
          }

          if (v24 >= 0)
          {
            v26 = *(v22 + 79);
          }

          else
          {
            v26 = *(v22 + 64);
          }

          std::string::replace(&__str, v19, v18 - v19, v25, v26);
          v27 = *(v23 + 79);
          if (v27 < 0)
          {
            v27 = *(v23 + 64);
          }

          v19 += v27;
        }

        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          v29 = v37.__r_.__value_.__r.__words[0];
LABEL_55:
          operator delete(v29);
          goto LABEL_56;
        }
      }

      goto LABEL_56;
    }

    if (!v19)
    {
      goto LABEL_56;
    }

    v28 = v10 ? size : v9;
    if (v19 + 2 >= v28)
    {
      goto LABEL_56;
    }

    std::string::basic_string(&v37, &__str, v19 - 1, 4uLL, &v39);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      v29 = v37.__r_.__value_.__r.__words[0];
      if (v37.__r_.__value_.__l.__size_ != 4)
      {
        goto LABEL_55;
      }

      v36 = *v37.__r_.__value_.__l.__data_;
      operator delete(v37.__r_.__value_.__l.__data_);
      if (v36 != 1551050528)
      {
LABEL_56:
        ++v19;
        v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v10 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
        size = __str.__r_.__value_.__l.__size_;
        v11 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &__str;
        }

        else
        {
          v30 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v31 = __str.__r_.__value_.__l.__size_;
        }

        v32 = v31 - v19;
        if (v31 >= v19 && v32 >= 1)
        {
          v33 = v30 + v31;
          v34 = v30 + v19;
          while (1)
          {
            v35 = memchr(v34, 32, v32);
            if (!v35)
            {
              break;
            }

            if (*v35 == 32)
            {
              if (v31 > v19 && v35 != v33)
              {
                v18 = v35 - v30;
                if (v18 != -1)
                {
                  goto LABEL_27;
                }
              }

              goto LABEL_76;
            }

            v34 = v35 + 1;
            v32 = v33 - v34;
            if (v33 - v34 < 1)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_76;
      }
    }

    else if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) != 4 || LODWORD(v37.__r_.__value_.__l.__data_) != 1551050528)
    {
      goto LABEL_56;
    }

    std::string::replace(&__str, v19 - 1, v18 - v19 + 1, "'s");
    v19 += 2;
    goto LABEL_56;
  }

LABEL_76:
  corelm::Custom2PreProcessor::preProcess(a1, &__str, a3);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_19D21CBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::SentencePieceVocabulary::SentencePieceVocabulary(corelm::AbstractVocabulary *a1, uint64_t a2)
{
  v4 = corelm::AbstractVocabulary::AbstractVocabulary(a1);
  *v4 = &unk_1F10AF948;
  v5 = v4 + 104;
  sentencepiece::SentencePieceProcessor::SentencePieceProcessor((v4 + 104));
  *(a1 + 28) = 0;
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

  sentencepiece::SentencePieceProcessor::Load(v5, v7, v8);
  if (!v13.__r_.__value_.__r.__words[0])
  {
    sentencepiece::util::Status::~Status(&v13);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sentencepiece::util::Status::ToString(&v13, v11);
  if (v12 >= 0)
  {
    v10 = v11;
  }

  else
  {
    v10 = v11[0];
  }

  std::runtime_error::runtime_error(exception, v10);
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_19D21CD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  v18 = *(v15 + 224);
  *(v15 + 224) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  sentencepiece::SentencePieceProcessor::~SentencePieceProcessor(v16);
  corelm::AbstractVocabulary::~AbstractVocabulary(v15);
  _Unwind_Resume(a1);
}

uint64_t corelm::SentencePieceVocabulary::setPreProcessor(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 224);
  *(a1 + 224) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

const void *corelm::SentencePieceVocabulary::idToToken@<X0>(corelm::SentencePieceVocabulary *this@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v14 = a2;
  if ((a2 & 0x8000000000000000) != 0 || (*(*this + 96))(this) <= a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    corelm::util::strCat<long>(&v14);
    if ((v13 & 0x80u) == 0)
    {
      v10 = v12;
    }

    else
    {
      v10 = v12[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v11 = v13;
    }

    else
    {
      v11 = v12[1];
    }

    corelm::OutOfVocabularyError::OutOfVocabularyError(exception, v10, v11);
  }

  result = sentencepiece::SentencePieceProcessor::IdToPiece((this + 104), a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  a3[23] = v7;
  if (v7)
  {
    result = memmove(a3, result, v7);
  }

  a3[v8] = 0;
  return result;
}

void sub_19D21CFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t corelm::util::strCat<long>(void *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v3);
  MEMORY[0x19EAF8A90](&v3, *a1);
  std::stringbuf::str();
  v3 = *MEMORY[0x1E69E54E8];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v4 = MEMORY[0x1E69E5548] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x19EAF8C10](&v7);
}

void sub_19D21D128(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t corelm::SentencePieceVocabulary::tokenToID(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  memset(&v27, 0, sizeof(v27));
  if (a3)
  {
    v6 = a3;
    v7 = a2;
    do
    {
      std::string::push_back(&v27, *v7++);
      --v6;
    }

    while (v6);
  }

  if (corelm::util::startsWith(a2, a3, "<", 1) && corelm::util::endsWith(a2, a3, ">", 1uLL))
  {
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v27;
    }

    else
    {
      v8 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    v10 = sentencepiece::SentencePieceProcessor::PieceToId((a1 + 104), v8, size);
    goto LABEL_25;
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v27;
  }

  else
  {
    v11 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v27.__r_.__value_.__l.__size_;
  }

  sentencepiece::SentencePieceProcessor::Encode(a1 + 104, v11, v12, &__p, &v23);
  if (v23.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sentencepiece::util::Status::ToString(&v23, buf);
    if (v31 >= 0)
    {
      v20 = buf;
    }

    else
    {
      v20 = *buf;
    }

    std::runtime_error::runtime_error(exception, v20);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sentencepiece::util::Status::~Status(&v23);
  v13 = __p;
  v14 = v25 - __p;
  if (v25 - __p == 4)
  {
    v10 = *__p;
LABEL_24:
    v25 = v13;
    operator delete(v13);
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v27;
    }

    else
    {
      v17 = v27.__r_.__value_.__r.__words[0];
    }

    std::string::basic_string[abi:ne200100]<0>(v21, " ");
    corelm::util::join<std::vector<int> &>(&__p, v21, &v23);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v23;
    }

    else
    {
      v18 = v23.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v17;
    v29 = 2048;
    v30 = v14 >> 2;
    v31 = 2080;
    v32 = v18;
    _os_log_error_impl(&dword_19D184000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Expected token=%s to get converted into single TokenID, but got %zu tokenIDs: %s. Returning UNK TokenID as fallback.", buf, 0x20u);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }
  }

  v10 = sentencepiece::SentencePieceProcessor::PieceToId((a1 + 104), "<unk>", 5);
  v13 = __p;
  if (__p)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_19D21D408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t corelm::util::join<std::vector<int> &>@<X0>(unsigned int **a1@<X0>, std::string::size_type a2@<X1>, std::string *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 - v6;
  if (v8 == 1)
  {
    MEMORY[0x19EAF8A70](&v14, *v6);
    std::stringbuf::str();
  }

  else if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    __str.__r_.__value_.__r.__words[0] = &v14;
    __str.__r_.__value_.__l.__size_ = v9;
    while (v6 != v7)
    {
      std::ostream_iterator<int &,char,std::char_traits<char>>::operator=[abi:ne200100](&__str, v6++);
    }

    std::stringbuf::str();
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v11 = *(a2 + 23);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 8);
    }

    std::string::basic_string(a3, &__str, 0, size - v11, &v19);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }

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
  return MEMORY[0x19EAF8C10](&v18);
}

void sub_19D21D6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void corelm::SentencePieceVocabulary::copyTokenToID(corelm::SentencePieceVocabulary *this@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v4 = (*(*this + 96))(this);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      (*(*this + 40))(__p, this, v5);
      v8 = __p;
      *(std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p) + 56) = v5;
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      ++v5;
    }

    while (v4 != v5);
  }
}

__n128 corelm::SentencePieceVocabulary::copyIDToToken@<Q0>(corelm::SentencePieceVocabulary *this@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v4 = (*(*this + 96))(this);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v11[0] = v6;
      (*(*this + 40))(&v9, this, v6);
      v11[2] = v11;
      v7 = std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(a2, v11);
      v8 = v7;
      if (*(v7 + 63) < 0)
      {
        operator delete(v7[5]);
      }

      result = v9;
      *(v8 + 5) = v9;
      v8[7] = v10;
      ++v6;
    }

    while (v4 != v6);
  }

  return result;
}

void corelm::SentencePieceVocabulary::textToIDs(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v7 = a2;
  v10 = a1 + 8;
  v11 = *(a1 + 31);
  if (v11 < 0)
  {
    v12 = *(a1 + 8);
    v11 = *(a1 + 16);
  }

  else
  {
    v12 = (a1 + 8);
  }

  if (corelm::util::startsWith(a2, a3, v12, v11))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Input text should not contain BOS token!");
    __cxa_throw(exception, off_1E76245E0, MEMORY[0x1E69E5298]);
  }

  memset(&v30, 0, sizeof(v30));
  v13 = *(a1 + 224);
  memset(&v27, 0, sizeof(v27));
  for (; a3; --a3)
  {
    std::string::push_back(&v27, *v7++);
  }

  (*(*v13 + 16))(__p, v13, &v27);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

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

  sentencepiece::SentencePieceProcessor::Encode(a1 + 104, v14, v15, &v30, &v26);
  if (v26)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    sentencepiece::util::Status::ToString(&v26, &v27);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v27;
    }

    else
    {
      v24 = v27.__r_.__value_.__r.__words[0];
    }

    std::runtime_error::runtime_error(v23, v24);
    __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sentencepiece::util::Status::~Status(&v26);
  if (a4)
  {
    v16 = *(a1 + 31);
    if (v16 < 0)
    {
      v10 = *(a1 + 8);
      v16 = *(a1 + 16);
    }

    begin = v30.__begin_;
    LODWORD(v27.__r_.__value_.__l.__data_) = (*(*a1 + 32))(a1, v10, v16);
    v18.__i_ = begin;
    std::vector<int>::insert(&v30, v18, &v27);
  }

  std::vector<long>::vector[abi:ne200100](a5, v30.__end_ - v30.__begin_);
  v19 = v30.__begin_;
  end = v30.__end_;
  if (v30.__begin_ != v30.__end_)
  {
    v21 = *a5;
    do
    {
      v22 = *v19++;
      *v21++ = v22;
    }

    while (v19 != end);
  }

  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v30.__begin_)
  {
    v30.__end_ = v30.__begin_;
    operator delete(v30.__begin_);
  }
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::value_type *__x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    std::__split_buffer<int>::emplace_back<int>(&v24, __x);
    v16.__i_ = v25;
    memcpy(v26, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v25;
    *&v26 = v26 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
    }

    *i = *__x;
  }

  return i;
}

void sub_19D21DDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::SentencePieceVocabulary::idsToText(uint64_t a1, uint64_t **a2)
{
  *&v12.__r_.__value_.__r.__words[1] = 0uLL;
  v13 = 0;
  std::vector<int>::vector[abi:ne200100](__p, a2[1] - *a2);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = __p[0];
    do
    {
      v7 = *v4++;
      *v6++ = v7;
    }

    while (v4 != v5);
  }

  sentencepiece::SentencePieceProcessor::Decode(a1 + 104, __p, &v12.__r_.__value_.__l.__size_, &v12);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sentencepiece::util::Status::ToString(&v12, __p);
    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    std::runtime_error::runtime_error(exception, v9);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sentencepiece::util::Status::~Status(&v12);
  (*(**(a1 + 224) + 24))(*(a1 + 224), &v12.__r_.__value_.__l.__size_);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__size_);
  }
}

void sub_19D21DF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::Custom1PreProcessor::~Custom1PreProcessor(corelm::Custom1PreProcessor *this)
{
  corelm::Custom1PreProcessor::~Custom1PreProcessor(this);

  JUMPOUT(0x19EAF8CA0);
}

{
  *this = &unk_1F10AF9C0;
  NLTokenizerRelease(*(this + 7));
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  std::__tree<std::string>::destroy(this + 8, *(this + 2));
}

void corelm::Custom2ASRPreProcessor::~Custom2ASRPreProcessor(corelm::Custom2ASRPreProcessor *this)
{
  *this = &unk_1F10AFA60;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 88, *(this + 12));

  corelm::Custom2PreProcessor::~Custom2PreProcessor(this);
}

{
  *this = &unk_1F10AFA60;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 88, *(this + 12));
  corelm::Custom2PreProcessor::~Custom2PreProcessor(this);

  JUMPOUT(0x19EAF8CA0);
}

void corelm::TokenListVocabulary::~TokenListVocabulary(corelm::TokenListVocabulary *this)
{
  *this = &unk_1F10AF8B8;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 168, *(this + 22));
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(this + 120);

  corelm::AbstractVocabulary::~AbstractVocabulary(this);
}

{
  *this = &unk_1F10AF8B8;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 168, *(this + 22));
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(this + 120);
  corelm::AbstractVocabulary::~AbstractVocabulary(this);

  JUMPOUT(0x19EAF8CA0);
}

void corelm::AbstractVocabulary::preProcess(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void corelm::AbstractVocabulary::idsToTokens(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(&v7, *a2, a2[1], (a2[1] - *a2) >> 3);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = v7;
  v6 = v8;
  v12 = a3;
  if (v7 != v8)
  {
    do
    {
      (*(*a1 + 40))(__p, a1, *v5);
      std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](&v12, __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = v7;
  }

  if (v5)
  {
    v8 = v5;
    operator delete(v5);
  }
}

void sub_19D21E364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  *(v18 - 40) = v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v18 - 40));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void corelm::AbstractVocabulary::tokensToIDs(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  std::transform[abi:ne200100]<std::__wrap_iter<std::string *>,std::back_insert_iterator<std::vector<long>>,corelm::AbstractVocabulary::tokensToIDs(std::vector<std::string> const&)::{lambda(std::__wrap_iter<std::string *>)#1}>(v5, v6, a3, a1);
  v8 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
}

void sub_19D21E42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
  }

  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void corelm::SentencePieceVocabulary::~SentencePieceVocabulary(corelm::SentencePieceVocabulary *this)
{
  *this = &unk_1F10AF948;
  v2 = *(this + 28);
  *(this + 28) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sentencepiece::SentencePieceProcessor::~SentencePieceProcessor((this + 104));

  corelm::AbstractVocabulary::~AbstractVocabulary(this);
}

{
  *this = &unk_1F10AF948;
  v2 = *(this + 28);
  *(this + 28) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sentencepiece::SentencePieceProcessor::~SentencePieceProcessor((this + 104));
  corelm::AbstractVocabulary::~AbstractVocabulary(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 56);
  if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL) - 56;
  }

  else
  {
    v3 = 0;
  }

  boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::delete_all_nodes(a1 + 16, v3);
  operator delete(*(a1 + 8));
  return a1;
}

void boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::delete_all_nodes(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 64);
    if (v4)
    {
      v5 = v4 - 56;
    }

    else
    {
      v5 = 0;
    }

    boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::delete_all_nodes(a1, v5);
    v6 = *(a2 + 72);
    if (v6)
    {
      v7 = v6 - 56;
    }

    else
    {
      v7 = 0;
    }

    boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::delete_all_nodes(a1, v7);

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::delete_node_(a1 - 16, a2);
  }
}

void boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::delete_node_(int a1, void **__p)
{
  if (*(__p + 23) < 0)
  {
    operator delete(*__p);
  }

  operator delete(__p);
}

unint64_t *boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  result = boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::insert_<boost::multi_index::detail::lvalue_tag>(a1 + 16, a2, &v4);
  if (result == v4)
  {
    ++*(a1 + 24);
  }

  return result;
}

unint64_t *boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  if (boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::link_point(a1, *(a2 + 24), &v8))
  {
    v6 = boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::left>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::left,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::insert_<boost::multi_index::detail::lvalue_tag>(a1, a2);
    if (v6 == *a3)
    {
      boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::link(*a3 + 56, v8, v9, (*(a1 - 8) + 56));
    }
  }

  else if (v9)
  {
    return v9 - 7;
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::link_point(uint64_t a1, int64_t a2, uint64_t a3)
{
  v5 = *(a1 - 8);
  v6 = v5;
  v7 = v5[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
    v6 = (v7 - 56);
    v8 = *(v7 - 32);
    if (v8 <= a2)
    {
      v9 = 9;
    }

    else
    {
      v9 = 8;
    }

    v7 = v6[v9];
  }

  while (v7);
  if (v8 <= a2)
  {
    v13 = 1;
    v14 = v6;
  }

  else
  {
LABEL_7:
    v10 = v5[8];
    v11 = (v10 - 56);
    if (!v10)
    {
      v11 = 0;
    }

    v12 = v6 + 7;
    if (v6 == v11)
    {
      *a3 = 0;
      goto LABEL_18;
    }

    v16 = v6 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v16);
    v13 = 0;
    if (v16)
    {
      v14 = v16 - 7;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v14[3] < a2)
  {
    *a3 = v13;
    v12 = v6 + 7;
LABEL_18:
    result = 1;
    goto LABEL_19;
  }

  result = 0;
  v12 = v14 + 7;
LABEL_19:
  *(a3 + 8) = v12;
  return result;
}

uint64_t boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::left>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::left,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t a1, const void **a2)
{
  v4 = 0;
  if (boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::left>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::left,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::link_point(a1, a2, &v4))
  {
    boost::multi_index::detail::index_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_();
  }

  if (v5)
  {
    return v5 - 32;
  }

  else
  {
    return 0;
  }
}

unint64_t *boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::link(unint64_t a1, int a2, unint64_t *a3, unint64_t *a4)
{
  if (a2)
  {
    a3[2] = a1;
    v6 = a4 + 2;
    v7 = a4[2];
  }

  else
  {
    a3[1] = a1;
    if (a3 == a4)
    {
      *a4 = *a4 & 1 | a1;
      v6 = a4 + 2;
LABEL_8:
      *v6 = a1;
      goto LABEL_9;
    }

    v6 = a4 + 1;
    v7 = a4[1];
  }

  if (v7 == a3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10[1] = v4;
  v10[2] = v5;
  v8 = *a1 & 1 | a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v8;
  v10[0] = a4;
  return boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rebalance(a1, v10);
}

unint64_t **boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(unint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if ((v2 & 1) == 0 && v1 == (*v2 & 0xFFFFFFFFFFFFFFFELL))
  {
    v4 = v1[2];
  }

  else
  {
    v3 = v1[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = v3[2];
      }

      while (v3);
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFFFELL;
      if (v1 == *(v4 + 8))
      {
        v5 = v4;
        do
        {
          *result = v5;
          v4 = *v5 & 0xFFFFFFFFFFFFFFFELL;
          v6 = v5 == *(v4 + 8);
          v5 = v4;
        }

        while (v6);
      }
    }
  }

  *result = v4;
  return result;
}

BOOL boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::left>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::left,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::link_point(uint64_t a1, const void **a2, uint64_t a3)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
    v6 = v7 - 32;
    v8 = std::less<std::string>::operator()[abi:ne200100](a1 + 1, a2, (v7 - 32));
    if (v8)
    {
      v9 = 40;
    }

    else
    {
      v9 = 48;
    }

    v7 = *(v6 + v9);
  }

  while (v7);
  if (!v8)
  {
    v13 = 1;
    v14 = v6;
  }

  else
  {
LABEL_7:
    v10 = *(*(a1 - 8) + 40);
    v11 = v10 - 32;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = (v6 + 32);
    if (v6 == v11)
    {
      *a3 = 0;
      goto LABEL_18;
    }

    v16 = (v6 + 32);
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v16);
    v13 = 0;
    if (v16)
    {
      v14 = (v16 - 4);
    }

    else
    {
      v14 = 0;
    }
  }

  result = std::less<std::string>::operator()[abi:ne200100](a1 + 1, v14, a2);
  if (result)
  {
    *a3 = v13;
    v12 = (v6 + 32);
LABEL_18:
    result = 1;
    goto LABEL_19;
  }

  v12 = v14 + 4;
LABEL_19:
  *(a3 + 8) = v12;
  return result;
}

void sub_19D21ECDC(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(*v1);
  __cxa_rethrow();
}

unint64_t *boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rebalance(unint64_t *result, unint64_t **a2)
{
  *result &= ~1uLL;
  v2 = *a2;
  v3 = (**a2 & 0xFFFFFFFFFFFFFFFELL);
  if (v3 != result)
  {
    v4 = result;
    v5 = (*result & 0xFFFFFFFFFFFFFFFELL);
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      while (1)
      {
        v8 = *(v6 + 8);
        if (v8 == v5)
        {
          v8 = *(v6 + 16);
          if (!v8 || (*v8 & 1) != 0)
          {
            if (v4 == v5[2])
            {
              v13 = v2;
              boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_left(v5, &v13);
              v2 = *a2;
              v10 = (*v5 & 0xFFFFFFFFFFFFFFFELL);
              v4 = v5;
            }

            else
            {
              v10 = v5;
              v5 = v4;
            }

            *v10 |= 1uLL;
            *(*(*v5 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
            v12 = *(*v5 & 0xFFFFFFFFFFFFFFFELL);
            v13 = v2;
            result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_right((v12 & 0xFFFFFFFFFFFFFFFELL), &v13);
            goto LABEL_17;
          }
        }

        else if (!v8 || (*v8 & 1) != 0)
        {
          if (v4 == v5[1])
          {
            v13 = v2;
            boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_right(v5, &v13);
            v2 = *a2;
            v9 = (*v5 & 0xFFFFFFFFFFFFFFFELL);
            v4 = v5;
          }

          else
          {
            v9 = v5;
            v5 = v4;
          }

          *v9 |= 1uLL;
          *(*(*v5 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
          v11 = *(*v5 & 0xFFFFFFFFFFFFFFFELL);
          v13 = v2;
          result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_left((v11 & 0xFFFFFFFFFFFFFFFELL), &v13);
          goto LABEL_17;
        }

        *v5 = v6 | 1;
        *v8 |= 1uLL;
        *(*(*v4 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
        v4 = (*(*v4 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL);
LABEL_17:
        v2 = *a2;
        v3 = (**a2 & 0xFFFFFFFFFFFFFFFELL);
        if (v4 != v3)
        {
          v5 = (*v4 & 0xFFFFFFFFFFFFFFFELL);
          v6 = *v5;
          if ((*v5 & 1) == 0)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  *v3 |= 1uLL;
  return result;
}

unint64_t *boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_left(unint64_t *result, unint64_t **a2)
{
  v2 = result[2];
  v3 = *(v2 + 8);
  result[2] = v3;
  if (v3)
  {
    *v3 = *v3 & 1 | result;
  }

  *v2 = *result & 0xFFFFFFFFFFFFFFFELL | *v2 & 1;
  if ((**a2 & 0xFFFFFFFFFFFFFFFELL) == result)
  {
    **a2 = **a2 & 1 | v2;
    v4 = *result;
  }

  else
  {
    v4 = *result;
    v5 = *result & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 8) == result)
    {
      *(v5 + 8) = v2;
    }

    else
    {
      *(v5 + 16) = v2;
    }
  }

  *(v2 + 8) = result;
  *result = v4 & 1 | v2;
  return result;
}

unint64_t *boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_right(unint64_t *result, unint64_t **a2)
{
  v2 = result[1];
  v3 = *(v2 + 16);
  result[1] = v3;
  if (v3)
  {
    *v3 = *v3 & 1 | result;
  }

  *v2 = *result & 0xFFFFFFFFFFFFFFFELL | *v2 & 1;
  if ((**a2 & 0xFFFFFFFFFFFFFFFELL) == result)
  {
    **a2 = **a2 & 1 | v2;
    v4 = *result;
  }

  else
  {
    v4 = *result;
    v5 = *result & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 16) == result)
    {
      *(v5 + 16) = v2;
    }

    else
    {
      *(v5 + 8) = v2;
    }
  }

  *(v2 + 16) = result;
  *result = v4 & 1 | v2;
  return result;
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::copy_construct_from(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6 = *(a1 + 8);
  v12[1] = v4;
  v12[3] = v4;
  if (v4)
  {
    if (!(v4 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = v5;
  v12[4] = 0;
  v12[5] = 0;
  v12[6] = v5;
  v12[7] = v6;
  v13 = 0;
  v8 = *(v5 + 64);
  if (v8)
  {
    v9 = v8 - 56;
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v7)
  {
    boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::clone<boost::multi_index::detail::copy_map_value_copier>(v12, v9);
  }

  boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::copy_(a1 + 16, a2 + 16, v12);
  v13 = 1;
  *(a1 + 24) = *(a2 + 24);
  result = boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(v12);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D21F234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  _Unwind_Resume(a1);
}

unint64_t boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,long,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<long>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::copy_(unint64_t result, uint64_t a2, void *a3)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 56);
  v6 = *(result - 8);
  v7 = (v6 + 56);
  if (v5 > 1)
  {
    *v7 = *v7 & 0xFFFFFFFFFFFFFFFELL | *(v4 + 56) & 1;
    v8 = *(v4 + 56);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFELL) - 56;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFELL) == 0;
    v11 = v5 & 1;
    if (v10)
    {
      v9 = 0;
    }

    v12 = a3[6];
    if (v12 == v9)
    {
      v19 = a3 + 7;
    }

    else
    {
      v13 = a3[4];
      v14 = a3[5];
      while (v14)
      {
        v15 = v14 >> 1;
        v16 = &v13[2 * (v14 >> 1)];
        v18 = *v16;
        v17 = v16 + 2;
        v14 += ~(v14 >> 1);
        if (v18 < v9)
        {
          v13 = v17;
        }

        else
        {
          v14 = v15;
        }
      }

      v19 = v13 + 1;
    }

    *v7 = v11 | (*v19 + 56);
    v20 = *(v4 + 64);
    v21 = v20 - 56;
    if (!v20)
    {
      v21 = 0;
    }

    if (v12 == v21)
    {
      v28 = a3 + 7;
    }

    else
    {
      v22 = a3[4];
      v23 = a3[5];
      while (v23)
      {
        v24 = v23 >> 1;
        v25 = &v22[2 * (v23 >> 1)];
        v27 = *v25;
        v26 = v25 + 2;
        v23 += ~(v23 >> 1);
        if (v27 < v21)
        {
          v22 = v26;
        }

        else
        {
          v23 = v24;
        }
      }

      v28 = v22 + 1;
    }

    *(v6 + 64) = *v28 + 56;
    v29 = *(*(a2 - 8) + 72);
    if (v29)
    {
      v30 = v29 - 56;
    }

    else
    {
      v30 = 0;
    }

    if (a3[6] == v30)
    {
      v38 = a3 + 7;
      v31 = a3[5];
    }

    else
    {
      v32 = a3[4];
      v31 = a3[5];
      if (v31)
      {
        v33 = a3[5];
        do
        {
          v34 = v33 >> 1;
          v35 = &v32[2 * (v33 >> 1)];
          v37 = *v35;
          v36 = v35 + 2;
          v33 += ~(v33 >> 1);
          if (v37 < v30)
          {
            v32 = v36;
          }

          else
          {
            v33 = v34;
          }
        }

        while (v33);
      }

      v38 = v32 + 1;
    }

    *(*(result - 8) + 72) = *v38 + 56;
    if (v31)
    {
      v39 = a3[4];
      v40 = &v39[2 * v31];
      do
      {
        v42 = *v39;
        v41 = v39[1];
        v43 = (*v39 + 56);
        v44 = v41 + 7;
        v45 = *v43 & 1;
        v41[7] = v41[7] & 0xFFFFFFFFFFFFFFFELL | v45;
        v46 = *v43 & 0xFFFFFFFFFFFFFFFELL;
        if (v46)
        {
          v47 = a3 + 7;
          if (a3[6] != v46 - 56)
          {
            v48 = a3[4];
            v49 = a3[5];
            while (v49)
            {
              v50 = v49 >> 1;
              v51 = &v48[2 * (v49 >> 1)];
              v53 = *v51;
              v52 = v51 + 2;
              v49 += ~(v49 >> 1);
              if (v53 < v46 - 56)
              {
                v48 = v52;
              }

              else
              {
                v49 = v50;
              }
            }

            v47 = v48 + 1;
          }

          v54 = *v47;
          *v44 = v45 | (*v47 + 56);
          if (*(v46 + 8) == v43)
          {
            *(v54 + 64) = v44;
          }

          else if (*(v46 + 16) == v43)
          {
            *(v54 + 72) = v44;
          }
        }

        else
        {
          *v44 = v45;
        }

        if (!*(v42 + 64))
        {
          v41[8] = 0;
        }

        if (!*(v42 + 72))
        {
          v41[9] = 0;
        }

        v39 += 2;
      }

      while (v39 != v40);
    }
  }

  else
  {
    *(v6 + 56) = 0;
    *(v6 + 64) = v7;
    *(*(result - 8) + 72) = *(result - 8) + 56;
  }

  return boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,true>::left>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<std::string,long,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::left,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::copy_(result, a2, a3);
}

void sub_19D21F59C(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(*(*(v1 + 32) + 16 * *(v1 + 40) + 8));
  __cxa_rethrow();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,false>(unint64_t *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v48 = a2[-1].n128_u64[0];
        v46 = a2 - 1;
        if (v48 >= *v12)
        {
          return result;
        }

LABEL_77:
        v77 = *v12;
        *v12 = *v46;
        result = v77;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v43 = (v12 + 2);
      v44 = v12[2];
      v47 = a2[-1].n128_u64[0];
      v46 = a2 - 1;
      v45 = v47;
      if (v44 < *v12)
      {
        if (v45 < v44)
        {
          goto LABEL_77;
        }

        v76 = *v12;
        *v12 = *v43;
        result = v76;
        *v43 = v76;
        if (v46->n128_u64[0] >= v12[2])
        {
          return result;
        }

        result = *v43;
        *v43 = *v46;
LABEL_78:
        *v46 = result;
        return result;
      }

      if (v45 >= v44)
      {
        return result;
      }

      result = *v43;
      *v43 = *v46;
      *v46 = result;
      goto LABEL_109;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,0>(v12, v12 + 1, v12 + 4, v12 + 3, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(v12, a2->n128_u64);
      }

      else if (v12 != a2)
      {
        v52 = (v12 + 2);
        while (v52 != a2)
        {
          v53 = v52;
          v54 = a1[2];
          if (v54 < *a1)
          {
            v55 = a1[3];
            v56 = v53;
            do
            {
              result = v56[-1];
              *v56 = result;
              v57 = v56[-2].n128_u64[0];
              --v56;
            }

            while (v54 < v57);
            v56->n128_u64[0] = v54;
            v56->n128_u64[1] = v55;
          }

          v52 = v53 + 1;
          a1 = v53;
        }
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(v12, a2->n128_u64, a2->n128_u64, a3);
      }

      return result;
    }

    v16 = &v12[2 * (v15 >> 1)];
    v17 = v16;
    v18 = v9->n128_u64[0];
    if (v15 >= 0x81)
    {
      v19 = *v16;
      if (*v16 >= *v12)
      {
        if (v18 < v19)
        {
          v61 = *v16;
          *v16 = *v9;
          *v9 = v61;
          if (*v16 < *v12)
          {
            v62 = *v12;
            *v12 = *v16;
            *v16 = v62;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v65 = *v12;
          *v12 = *v16;
          *v16 = v65;
          if (v9->n128_u64[0] >= *v16)
          {
            goto LABEL_28;
          }

          v59 = *v16;
          *v16 = *v9;
        }

        else
        {
          v59 = *v12;
          *v12 = *v9;
        }

        *v9 = v59;
      }

LABEL_28:
      v21 = (v12 + 2);
      v22 = (v16 - 2);
      v23 = *(v16 - 2);
      v24 = v10->n128_u64[0];
      if (v23 >= v12[2])
      {
        if (v24 < v23)
        {
          v66 = *v22;
          *v22 = *v10;
          *v10 = v66;
          if (v22->n128_u64[0] < v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (v10->n128_u64[0] >= v22->n128_u64[0])
          {
            goto LABEL_40;
          }

          v68 = *v22;
          *v22 = *v10;
          v25 = v68;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = (v12 + 4);
      v31 = v16[2];
      v29 = (v16 + 2);
      v30 = v31;
      v32 = v11->n128_u64[0];
      if (v31 >= v12[4])
      {
        if (v32 < v30)
        {
          v69 = *v29;
          *v29 = *v11;
          *v11 = v69;
          if (v29->n128_u64[0] < v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v30)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (v11->n128_u64[0] >= v29->n128_u64[0])
          {
            goto LABEL_49;
          }

          v70 = *v29;
          *v29 = *v11;
          v33 = v70;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = *v17;
      v37 = v29->n128_u64[0];
      if (*v17 >= v22->n128_u64[0])
      {
        if (v37 < v36)
        {
          v72 = *v17;
          *v17 = *v29;
          *v29 = v72;
          if (*v17 < v22->n128_u64[0])
          {
            v73 = *v22;
            *v22 = *v17;
            *v17 = v73;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v74 = *v22;
        *v22 = *v17;
        *v17 = v74;
        if (v29->n128_u64[0] >= *v17)
        {
LABEL_58:
          v75 = *v12;
          *v12 = *v17;
          *v17 = v75;
          goto LABEL_59;
        }

        v71 = *v17;
        *v17 = *v29;
      }

      else
      {
        v71 = *v22;
        *v22 = *v29;
      }

      *v29 = v71;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v12 >= *v17)
    {
      if (v18 < v20)
      {
        v63 = *v12;
        *v12 = *v9;
        *v9 = v63;
        if (*v12 < *v17)
        {
          v64 = *v17;
          *v17 = *v12;
          *v12 = v64;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v60 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v60;
        goto LABEL_59;
      }

      v67 = *v17;
      *v17 = *v12;
      *v12 = v67;
      if (v9->n128_u64[0] < *v12)
      {
        v60 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *(v12 - 2) >= *v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,std::__less<void,void> &>(v12, a2->n128_u64);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,std::__less<void,void> &>(v12, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

    v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(v12, v38, v39);
    v12 = (v38 + 1);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>((v38 + 1), a2, v42))
    {
      a4 = -v14;
      a2 = v38;
      if (v41)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v41)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,false>(a1, v38, a3, -v14, a5 & 1);
      v12 = (v38 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v43 = (v12 + 2);
  v49 = v12[2];
  v50 = (v12 + 4);
  v51 = v12[4];
  if (v49 >= *v12)
  {
    if (v51 < v49)
    {
      result = *v43;
      *v43 = *v50;
      *v50 = result;
      if (v12[2] < *v12)
      {
        v79 = *v12;
        *v12 = *v43;
        result = v79;
        *v43 = v79;
      }
    }
  }

  else
  {
    if (v51 < v49)
    {
      v78 = *v12;
      *v12 = *v50;
      result = v78;
      goto LABEL_105;
    }

    v80 = *v12;
    *v12 = *v43;
    result = v80;
    *v43 = v80;
    if (v51 < v12[2])
    {
      result = *v43;
      *v43 = *v50;
LABEL_105:
      *v50 = result;
    }
  }

  if (v9->n128_u64[0] >= v50->n128_u64[0])
  {
    return result;
  }

  result = *v50;
  *v50 = *v9;
  *v9 = result;
  if (v50->n128_u64[0] >= v43->n128_u64[0])
  {
    return result;
  }

  result = *v43;
  *v43 = *v50;
  *v50 = result;
LABEL_109:
  if (v12[2] < *v12)
  {
    v81 = *v12;
    *v12 = *v43;
    result = v81;
    *v43 = v81;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,0>(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

unint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (v6 < *v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 16);
            v8 -= 16;
            if (v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (*a1 >= *(a2 - 2))
  {
    v6 = a1 + 2;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 += 2;
    }

    while (v3 >= *v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[2];
      v4 += 2;
    }

    while (v3 >= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2 - 2);
      a2 -= 2;
    }

    while (v3 < v7);
  }

  while (v4 < a2)
  {
    v11 = *v4;
    *v4 = *a2;
    *a2 = v11;
    do
    {
      v8 = v4[2];
      v4 += 2;
    }

    while (v3 >= v8);
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (v3 < v9);
  }

  if (v4 - 2 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,std::__less<void,void> &>(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  do
  {
    v5 = *&a1[++v2];
  }

  while (v5 < v4);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *(a2-- - 2);
    }

    while (v9 >= v4);
  }

  else
  {
    do
    {
      v8 = *(a2-- - 2);
    }

    while (v8 >= v4);
  }

  if (v6 < a2)
  {
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        v13 = *(v10++ + 2);
      }

      while (v13 < v4);
      do
      {
        v14 = *(v11-- - 2);
      }

      while (v14 >= v4);
    }

    while (v10 < v11);
    v7 = v10 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u64[0] >= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v41 = *a1;
        *a1 = *v6;
        *v6 = v41;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u64[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v38 = *a1;
      *a1 = *v6;
      *v6 = v38;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_u64[0] >= v18->n128_u64[0])
    {
      return 1;
    }

    v39 = *v18;
    *v18 = *v20;
    *v20 = v39;
    if (v18->n128_u64[0] >= v6->n128_u64[0])
    {
      return 1;
    }

    v40 = *v6;
    *v6 = *v18;
    *v18 = v40;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u64[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = v30->n128_u64[0];
    if (v30->n128_u64[0] < v11->n128_u64[0])
    {
      v34 = v30->n128_i64[1];
      v35 = v31;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = *(a1 + v35 + 16);
        v35 -= 16;
        if (v33 >= v36)
        {
          v37 = (a1 + v35 + 48);
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      *v37 = v33;
      v37[1] = v34;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 < *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v30 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = v16 + 2;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[4];
            v19 = v16 + 4;
            if (*(v19 - 2) >= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v17 == v6)
        {
          *v17 = v30;
        }

        else
        {
          *v17 = *v6;
          *v6 = v30;
          v21 = (v17 - a1 + 16) >> 4;
          v22 = v21 < 2;
          v23 = v21 - 2;
          if (!v22)
          {
            v24 = v23 >> 1;
            v25 = &a1[2 * v24];
            v26 = *v17;
            if (*v25 < *v17)
            {
              v27 = v17[1];
              do
              {
                v28 = v17;
                v17 = v25;
                *v28 = *v25;
                if (!v24)
                {
                  break;
                }

                v24 = (v24 - 1) >> 1;
                v25 = &a1[2 * v24];
              }

              while (*v25 < v26);
              *v17 = v26;
              v17[1] = v27;
            }
          }
        }

        v22 = v8-- <= 2;
      }

      while (!v22);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<long const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        if (*v8 < v8[2])
        {
          v10 = v8[2];
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *a4;
      if (v10 >= *a4)
      {
        v12 = a4[1];
        do
        {
          v13 = a4;
          a4 = v8;
          *v13 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + 16 * v14);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v15 = *v8;
            v7 = v14;
          }

          else
          {
            v15 = *v8;
            if (*v8 >= v8[2])
            {
              v7 = v14;
            }

            else
            {
              v15 = v8[2];
              v8 += 2;
            }
          }
        }

        while (v15 >= v11);
        *a4 = v11;
        a4[1] = v12;
      }
    }
  }

  return result;
}

uint64_t boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::increment(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    do
    {
      *result = v2;
      v2 = *(v2 + 8);
    }

    while (v2);
  }

  else
  {
    v3 = (*v1 & 0xFFFFFFFFFFFFFFFELL);
    if (v1 == v3[2])
    {
      do
      {
        v5 = v3;
        *result = v3;
        v3 = (*v3 & 0xFFFFFFFFFFFFFFFELL);
      }

      while (v5 == v3[2]);
      v4 = v5[2];
    }

    else
    {
      v4 = 0;
    }

    if (v4 != v3)
    {
      *result = v3;
    }
  }

  return result;
}