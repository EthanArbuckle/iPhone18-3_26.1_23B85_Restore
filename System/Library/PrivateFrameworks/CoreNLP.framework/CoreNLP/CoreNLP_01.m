void sub_19D19475C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v20 = *(v18 - 136);
  if (v20)
  {
    *(v18 - 128) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

__n128 CoreNLP::WordDispatchTagger::enumerateTokens(void *a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v10 = (a1 + 1);
  v9 = a1[1];
  if (v9 >= a2 && (v11 = a1 + 2, a1[2] + v9 <= a2 + a3))
  {
    (*(a5 + 16))(a5, v10, &v16);
    v15 = v16;
    v10->n128_u64[0] = -1;
    *v11 = 0;
    a1[3] = 0;
    if (v15)
    {
      return result;
    }
  }

  else
  {
    a1[2] = 0;
    a1[3] = 0;
    a1[1] = -1;
  }

  v12 = a2 + a3;
  do
  {
    v13 = (*(*a1 + 128))(a1);
    if (!v13)
    {
      break;
    }

    if (v13->n128_u64[0] >= a2)
    {
      if ((v13->n128_u64[1] + v13->n128_u64[0]) > v12)
      {
        result = *v13;
        *v10 = *v13;
        a1[3] = v13[1].n128_u64[0];
        return result;
      }

      (*(a5 + 16))(a5, v13, &v16);
    }
  }

  while (v16 != 1);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CoreNLP::SubWordTagger *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__tree<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>>>::__emplace_unique_key_args<NLLanguageID,std::piecewise_construct_t const&,std::tuple<NLLanguageID const&>,std::tuple<>>(uint64_t a1, int *a2)
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

uint64_t CoreNLP::TaggingModelManager::loadCRFModel(uint64_t a1, int a2, int a3)
{
  v19 = a3;
  v20 = a2;
  v18 = __PAIR64__(a3, a2);
  v5 = std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>>>::find<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>(a1 + 464, &v18);
  if ((a1 + 472) == v5)
  {
    if ((a2 & 0xFFFFFFFE) != 6)
    {
      goto LABEL_15;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = ___ZN7CoreNLP19TaggingModelManager12loadCRFModelENS_15NLTagSchemeTypeE12NLLanguageID_block_invoke;
    v14[3] = &__block_descriptor_tmp_7;
    v14[4] = v18;
    PersistentResource = CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getPersistentResource(&v18, v14);
    if (!PersistentResource)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v6 = v5;
  v7 = (v5 + 5);
  if (*(v5 + 63) < 0)
  {
    v7 = *v7;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v7);
  CoreNLP::ReadOnlyFile<char>::open(&__p, "r", 1, &v17);
  v8 = v17;
  v17 = 0uLL;
  v9 = v6[9];
  *(v6 + 4) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    if (*(&v17 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
    }
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  PersistentResource = v6[8];
  if (PersistentResource)
  {
LABEL_13:
    if (*PersistentResource)
    {
      v11 = PersistentResource[1];
      operator new();
    }
  }

LABEL_15:
  __p = &v20;
  v12 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType const&>,std::tuple<>>(a1 + 24, &v20);
  __p = &v19;
  std::__tree<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>>>::__emplace_unique_key_args<NLLanguageID,std::piecewise_construct_t const&,std::tuple<NLLanguageID const&>,std::tuple<>>((v12 + 5), &v19)[5] = 0;
  return 0;
}

double CoreNLP::NLAttributedToken::NLAttributedToken(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 32) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = a1 + 32;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a1 + 56;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  return result;
}

uint64_t CoreNLP::TaggingModelManager::getOrLoadModel(uint64_t a1, int a2, int a3)
{
  v15 = a3;
  v16 = a2;
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a1 + 32;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v5 != v4 && *(v5 + 32) <= a2)
    {
      v8 = *(v5 + 48);
      v6 = v5 + 48;
      v7 = v8;
      if (v8)
      {
        v9 = v6;
        do
        {
          if (*(v7 + 32) >= a3)
          {
            v9 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 32) < a3));
        }

        while (v7);
        if (v9 != v6 && *(v9 + 32) <= a3)
        {
          return *(v9 + 40);
        }
      }
    }
  }

  switch(a2)
  {
    case 12:
      CoreNLP::EmotionModel::CreateModel(a3, &v17);
LABEL_21:
      v10 = v17;
      if (!v17)
      {
        return 0;
      }

      v11 = v4 - 8;
      v17 = &v16;
      v12 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType const&>,std::tuple<>>(v11, &v16);
      v17 = &v15;
      std::__tree<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>>>::__emplace_unique_key_args<NLLanguageID,std::piecewise_construct_t const&,std::tuple<NLLanguageID const&>,std::tuple<>>((v12 + 5), &v15)[5] = v10;
      v17 = &v16;
      v13 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType const&>,std::tuple<>>(v11, &v16);
      v17 = &v15;
      return std::__tree<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>>>::__emplace_unique_key_args<NLLanguageID,std::piecewise_construct_t const&,std::tuple<NLLanguageID const&>,std::tuple<>>((v13 + 5), &v15)[5];
    case 9:
      CoreNLP::TopicModel::CreateModel(a3, &v17);
      goto LABEL_21;
    case 8:
      CoreNLP::SentimentModel::CreateModel(a3, &v17);
      goto LABEL_21;
  }

  return CoreNLP::TaggingModelManager::loadCRFModel(a1, a2, a3);
}

uint64_t CoreNLP::TaggerContext::getCurrentDominantScriptID(CoreNLP::TaggerContext *this)
{
  v3 = *(this + 5);
  if (v3)
  {
    Value = CFLocaleGetValue(v3, *MEMORY[0x1E695E6F8]);
    if (Value)
    {

      return CoreNLP::scriptIdForScript(Value, v5);
    }

    return 28;
  }

  v7 = *(this + 6);
  if (!v7)
  {
    return 28;
  }

  return CoreNLP::Orthography::dominantScriptID(v7);
}

uint64_t CoreNLP::SentenceTagger::setString(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, int a5)
{
  CoreNLP::Tagger::setString(a1, a2, a3, a4, a5);
  v6 = *(**(a1 + 48) + 16);

  return v6();
}

uint64_t CoreNLP::quoteStatusForToken(CFStringRef theString, const __CFString *a2, CFRange a3, CoreNLP::NLAttributedToken *a4, int *a5)
{
  if ((*(a3.length + 75) & 0x20) == 0)
  {
    return 0;
  }

  length = a3.length;
  v10 = *(a3.length + 8);
  if (v10 > 1)
  {
    LODWORD(result) = 34;
LABEL_8:
    v11 = 0;
    v12 = "\x02\x03\x01\x04\x01\x03\x01\x04";
    while (1)
    {
      v13 = CoreNLP::openingStrengthForQuoteCharacter(unsigned short,BOOL *)::singleQuotes[v11];
      v14 = v13 != result;
      if (v13 == result)
      {
        break;
      }

      if (CoreNLP::openingStrengthForQuoteCharacter(unsigned short,BOOL *)::doubleQuotes[v11] == result)
      {
        v12 = "\x02\x03\x01\x03\x01\x04\x01\x04";
        break;
      }

      if (++v11 == 9)
      {
        v14 = 0;
        v15 = 2;
        goto LABEL_15;
      }
    }

    v15 = v12[v11];
LABEL_15:
    v16 = CFStringGetLength(theString);
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
    v18 = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
    v19 = CFCharacterSetCreateWithCharactersInString(*MEMORY[0x1E695E480], @"([{</@-=–—");
    if (v15 > 3)
    {
      goto LABEL_18;
    }

    if (!v15)
    {
      v21 = 6;
      goto LABEL_20;
    }

    v20 = *length;
    if (*length == a2)
    {
LABEL_18:
      v21 = 5;
      goto LABEL_20;
    }

    if (v20 <= a2)
    {
      CharacterAtIndex = 0;
    }

    else
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, &v20[-1].length + 7);
      if (CharacterAtIndex)
      {
        v23 = CFCharacterSetIsCharacterMember(Predefined, CharacterAtIndex) != 0;
        goto LABEL_29;
      }
    }

    v23 = 1;
LABEL_29:
    v33 = v23;
    IsCharacterMember = CFCharacterSetIsCharacterMember(v19, CharacterAtIndex);
    v24 = CFCharacterSetIsCharacterMember(v18, CharacterAtIndex);
    v25 = *length + length[1];
    if (v25 >= v16)
    {
      v26 = 0;
    }

    else
    {
      v26 = CFStringGetCharacterAtIndex(theString, v25);
    }

    v27 = CFCharacterSetIsCharacterMember(v18, v26);
    if (v14)
    {
      if (v15 == 2)
      {
        if (CharacterAtIndex == 39)
        {
          v29 = 5;
        }

        else
        {
          v29 = 6;
        }

        if (IsCharacterMember)
        {
          v29 = 5;
        }

        if (v33)
        {
          v21 = 5;
        }

        else
        {
          v21 = v29;
        }

        goto LABEL_20;
      }

      if (v15 == 3)
      {
        if (v27)
        {
          v28 = 1;
        }

        else
        {
          v28 = v24 == 0;
        }

        goto LABEL_44;
      }

      if (v24)
      {
        v30 = 1;
      }

      else
      {
        v30 = v27 == 0;
      }
    }

    else
    {
      if (v24 && v27)
      {
        v21 = 13;
        goto LABEL_20;
      }

      if (v15 == 2)
      {
        v21 = 5;
        if (!v33)
        {
          if (CharacterAtIndex == 34)
          {
            v31 = 5;
          }

          else
          {
            v31 = 6;
          }

          if (IsCharacterMember)
          {
            v21 = 5;
          }

          else
          {
            v21 = v31;
          }
        }

        goto LABEL_20;
      }

      if (v15 == 3)
      {
        v28 = v24 == 0 || v27 != 0;
LABEL_44:
        if (v28)
        {
          v21 = 5;
        }

        else
        {
          v21 = 6;
        }

        goto LABEL_20;
      }

      v30 = v27 == 0 || v24 != 0;
    }

    if (v30)
    {
      v21 = 6;
    }

    else
    {
      v21 = 5;
    }

LABEL_20:
    CFRelease(v19);
    if (a4)
    {
      *a4 = v21;
    }

    return 1;
  }

  if (v10 != 1)
  {
    return 0;
  }

  result = CFStringGetCharacterAtIndex(theString, *a3.length);
  if (result)
  {
    goto LABEL_8;
  }

  return result;
}

BOOL CoreNLP::isExclamation(CoreNLP *this)
{
  v1 = this - 8252;
  v2 = this == 65281;
  if (this == 33)
  {
    v2 = 1;
  }

  v3 = v1 > 0xD;
  v4 = (1 << v1) & 0x3003;
  return !v3 && v4 != 0 || v2;
}

uint64_t CoreNLP::isDash(CoreNLP *this)
{
  v1 = this;
  result = 1;
  if (v1 > 8721)
  {
    if (v1 != 8722 && v1 != 65123 && v1 != 65293)
    {
      return 0;
    }
  }

  else if ((v1 - 8208) >= 2 && v1 != 45)
  {
    return 0;
  }

  return result;
}

BOOL CoreNLP::isOpenQuote(CoreNLP *this)
{
  v1 = this - 8216;
  v2 = this == 12317;
  if (this == 171)
  {
    v2 = 1;
  }

  v3 = v1 > 6;
  v4 = (1 << v1) & 0x55;
  return !v3 && v4 != 0 || v2;
}

uint64_t CoreNLP::isQuote(CoreNLP *this)
{
  v1 = this;
  result = 1;
  if (v1 <= 782)
  {
    if (v1 > 170)
    {
      if (v1 == 171 || v1 == 187 || v1 == 768)
      {
        return result;
      }
    }

    else
    {
      v3 = v1 - 34;
      if (v3 <= 0x3E && ((1 << v3) & 0x4000000000000021) != 0)
      {
        return result;
      }
    }

    return 0;
  }

  if (((v1 - 8216) > 0x22 || ((1 << (v1 - 24)) & 0x6000000FFLL) == 0) && (v1 - 12300) >= 4 && v1 != 783)
  {
    return 0;
  }

  return result;
}

uint64_t CoreNLP::isFullstop(CoreNLP *this)
{
  v1 = this;
  result = 1;
  if (v1 > 5741)
  {
    if (v1 <= 65105)
    {
      if (v1 == 5742)
      {
        return result;
      }

      v3 = 12290;
    }

    else
    {
      if (v1 == 65106 || v1 == 65294)
      {
        return result;
      }

      v3 = 65377;
    }
  }

  else
  {
    if (v1 <= 1747)
    {
      if (v1 != 46 && v1 != 1417)
      {
        return 0;
      }

      return result;
    }

    if (v1 == 1748 || v1 == 2404)
    {
      return result;
    }

    v3 = 4962;
  }

  if (v1 != v3)
  {
    return 0;
  }

  return result;
}

void std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

BOOL CoreNLP::TaggingModelManager::addTask(CoreNLP::TaggingModelManager *this, CoreNLP::AbstractModel *a2)
{
  v17[0] = a2;
  if (a2)
  {
    v4 = *(this + 1);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = (this + 8);
    do
    {
      v6 = v4[4];
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = v4[v8];
    }

    while (v4);
    if (v5 == (this + 8) || v5[4] > a2)
    {
LABEL_10:
      v15 = v17;
      std::__tree<std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::AbstractModel *,std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>,std::less<CoreNLP::AbstractModel *>,true>,std::allocator<std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::AbstractModel *,std::piecewise_construct_t const&,std::tuple<CoreNLP::AbstractModel * const&>,std::tuple<>>(this, v17);
      v9 = *(v17[0] + 12);
      CoreNLP::TaggingFeatureExtractor::dependency(*(v17[0] + 64), &v15);
      v10 = v15;
      v11 = v16;
      if (v15 != v16)
      {
        do
        {
          if (*v10)
          {
            Model = CoreNLP::TaggingModelManager::getOrLoadModel(this, *v10, *(v17[0] + 12));
            if (Model)
            {
              v17[2] = v17;
              v12 = std::__tree<std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::AbstractModel *,std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>,std::less<CoreNLP::AbstractModel *>,true>,std::allocator<std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::AbstractModel *,std::piecewise_construct_t const&,std::tuple<CoreNLP::AbstractModel * const&>,std::tuple<>>(this, v17);
              std::__tree<CoreNLP::AbstractModel *>::__emplace_unique_key_args<CoreNLP::AbstractModel *,CoreNLP::AbstractModel * const&>((v12 + 5), &Model);
              CoreNLP::TaggingModelManager::addTask(this, Model);
            }
          }

          ++v10;
        }

        while (v10 != v11);
        v10 = v15;
      }

      if (v10)
      {
        v16 = v10;
        operator delete(v10);
      }
    }
  }

  return a2 != 0;
}

void sub_19D1959E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CoreNLP::NLAttributedToken>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        CoreNLP::NLAttributedToken::~NLAttributedToken((v4 - 112));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t CoreNLP::TaggingModelManager::tagInstance(uint64_t a1, uint64_t *a2, CFStringRef *this, int a4)
{
  if (!*(a1 + 16) && !*(a1 + 504))
  {
    return 0;
  }

  CurrentDominantLanguageID = CoreNLP::TaggerContext::getCurrentDominantLanguageID(this);
  CoreNLP::TaggingFeatureExtractor::extractSharedData(a1 + 48, a2, this[1], CurrentDominantLanguageID);
  v86[0] = 0;
  v86[1] = 0;
  v85 = v86;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 8);
    v9 = *(a1 + 16);
    do
    {
      v10 = *a1;
      if (*a1 != v8)
      {
        v69 = v7;
        do
        {
          v11 = v10[4];
          v12 = v10[5];
          v84 = v11;
          if (v12 == v10 + 6)
          {
LABEL_22:
            memset(v83, 0, sizeof(v83));
            v21 = *a2;
            v22 = a2[1];
            if (v22 == *a2)
            {
              v24 = (v22 - *a2) >> 3;
            }

            else
            {
              v23 = 0;
              do
              {
                CoreNLP::TaggingFeatureExtractor::extractFeatures((a1 + 48), v84[16], v84[3], a2, v23, this[1], &v81);
                std::vector<std::vector<std::string>>::push_back[abi:ne200100](v83, &v81);
                v88[0] = &v81;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v88);
                ++v23;
                v21 = *a2;
                v22 = a2[1];
                v24 = (v22 - *a2) >> 3;
              }

              while (v24 > v23);
              v11 = v84;
            }

            if (v11[2] == 7)
            {
              if (v21 == v22)
              {
                goto LABEL_47;
              }

              v27 = 0;
              v28 = v21;
              do
              {
                v29 = *v28++;
                v27 += (*(v29 + 72) >> 11) & 1;
              }

              while (v28 != v22);
              if (v27 <= v24 >> 1)
              {
LABEL_47:
                (*(*v11 + 88))(&v81);
                v35 = *a2;
                v36 = a2[1];
                v37 = 0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 3) != (v36 - *a2) >> 3 || v36 == v35;
                if (!v37)
                {
                  v38 = 0;
                  v39 = 0;
                  do
                  {
                    v40 = v81[v38];
                    v41 = *(v35 + 8 * v39);
                    LODWORD(v88[0]) = v84[2];
                    v87 = v88;
                    v42 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v41 + 24, v88);
                    *(v42 + 10) = *v40;
                    v42[6] = v40[1];
                    ++v39;
                    v35 = *a2;
                    v38 += 3;
                  }

                  while (v39 < (a2[1] - *a2) >> 3);
                }

                v88[0] = &v81;
                std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v88);
              }

              else
              {
                __p = 0;
                v79 = 0;
                v80 = 0;
                v30 = std::vector<CoreNLP::NLAttributedToken *>::__init_with_size[abi:ne200100]<CoreNLP::NLAttributedToken **,CoreNLP::NLAttributedToken **>(&__p, v21, v22, v24);
                CoreNLP::TaggingModelManager::applyGazetteer(v30, &__p);
                if (__p)
                {
                  v79 = __p;
                  operator delete(__p);
                }

                v31 = *a2;
                v32 = a2[1];
                while (v31 != v32)
                {
                  v33 = *v31;
                  LODWORD(v81) = v84[2];
                  v88[0] = &v81;
                  std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v33 + 24, &v81)[6] = 0x3FF0000000000000;
                  ++v31;
                }
              }

              v75 = 0;
              v76 = 0;
              v77 = 0;
              std::vector<CoreNLP::NLAttributedToken *>::__init_with_size[abi:ne200100]<CoreNLP::NLAttributedToken **,CoreNLP::NLAttributedToken **>(&v75, *a2, a2[1], (a2[1] - *a2) >> 3);
              CoreNLP::TaggingModelManager::checkInvalidCharInNER(a1, &v75, v84[3], this);
              if (v75)
              {
                v76 = v75;
                operator delete(v75);
              }

              v43 = *a2;
              if ((a2[1] - *a2) >= 9)
              {
                v44 = 0;
                do
                {
                  v45 = *(v43 + 8 * v44);
                  LODWORD(v81) = v84[2];
                  v88[0] = &v81;
                  v46 = *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v45 + 24, &v81) + 10);
                  v47 = *(*a2 + 8 * v44 + 8);
                  LODWORD(v87) = v84[2];
                  v88[0] = &v87;
                  if (v46 == *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v47 + 24, &v87) + 10))
                  {
                    v48 = *(*a2 + 8 * v44);
                    v74 = v84[2];
                    v88[0] = &v74;
                    v49 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v48 + 24, &v74);
                    v43 = *a2;
                    if (*(v49 + 10) != 70)
                    {
                      *(*(v43 + 8 * v44) + 104) = 1;
                    }
                  }

                  else
                  {
                    v43 = *a2;
                  }

                  v50 = v44 + 2;
                  ++v44;
                }

                while (v50 < (a2[1] - v43) >> 3);
              }
            }

            else
            {
              if (v21 == v22)
              {
                v34 = 1;
              }

              else if (*(*v21 + 108) <= 1)
              {
                v34 = 1;
              }

              else
              {
                v34 = *(*v21 + 108);
              }

              (*(*v11 + 88))(&v81);
              v51 = *a2;
              v52 = a2[1];
              if (0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 3) == (v52 - *a2) >> 3 && v52 != v51)
              {
                v70 = v34;
                v54 = 0;
                v55 = 0;
                do
                {
                  v56 = v81[v54];
                  v57 = *(v51 + 8 * v55);
                  LODWORD(v88[0]) = v84[2];
                  v87 = v88;
                  v58 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v57 + 24, v88);
                  *(v58 + 10) = *v56;
                  v58[6] = v56[1];
                  ++v55;
                  v51 = *a2;
                  v52 = a2[1];
                  v54 += 3;
                }

                while (v55 < (v52 - *a2) >> 3);
                v34 = v70;
              }

              if (v34 >= 2 && v52 != v51)
              {
                v59 = 0;
                v60 = 0;
                do
                {
                  v61 = v81;
                  v62 = *(v51 + 8 * v60);
                  LODWORD(v88[0]) = v84[2];
                  v87 = v88;
                  v63 = (std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::vector<std::pair<int,double>>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::vector<std::pair<int,double>>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::vector<std::pair<int,double>>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v62 + 48, v88) + 5);
                  if (&v61[v59] != v63)
                  {
                    std::vector<std::pair<int,double>>::__assign_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(v63, v61[v59], v61[v59 + 1], (v61[v59 + 1] - v61[v59]) >> 4);
                  }

                  ++v60;
                  v51 = *a2;
                  v59 += 3;
                }

                while (v60 < (a2[1] - *a2) >> 3);
              }

              v88[0] = &v81;
              std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v88);
            }

            std::__tree<CoreNLP::AbstractModel *>::__emplace_unique_key_args<CoreNLP::AbstractModel *,CoreNLP::AbstractModel * const&>(&v85, &v84);
            v64 = v10[1];
            v65 = v10;
            if (v64)
            {
              do
              {
                v26 = v64;
                v64 = *v64;
              }

              while (v64);
            }

            else
            {
              do
              {
                v26 = v65[2];
                v37 = *v26 == v65;
                v65 = v26;
              }

              while (!v37);
            }

            std::__tree<std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::AbstractModel *,std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>,std::less<CoreNLP::AbstractModel *>,true>,std::allocator<std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>>>::erase(a1, v10);
            v81 = v83;
            std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v81);
            v8 = (a1 + 8);
          }

          else
          {
            if (v86[0])
            {
              while (1)
              {
                v13 = v12[4];
                v14 = v86;
                v15 = v86[0];
                do
                {
                  v16 = v15[4];
                  v17 = v16 >= v13;
                  v18 = v16 < v13;
                  if (v17)
                  {
                    v14 = v15;
                  }

                  v15 = v15[v18];
                }

                while (v15);
                if (v14 == v86 || v13 < v14[4])
                {
                  break;
                }

                v19 = v12[1];
                if (v19)
                {
                  do
                  {
                    v20 = v19;
                    v19 = *v19;
                  }

                  while (v19);
                }

                else
                {
                  do
                  {
                    v20 = v12[2];
                    v37 = *v20 == v12;
                    v12 = v20;
                  }

                  while (!v37);
                }

                v12 = v20;
                if (v20 == v10 + 6)
                {
                  goto LABEL_22;
                }
              }
            }

            v25 = v10[1];
            if (v25)
            {
              do
              {
                v26 = v25;
                v25 = *v25;
              }

              while (v25);
            }

            else
            {
              do
              {
                v26 = v10[2];
                v37 = *v26 == v10;
                v10 = v26;
              }

              while (!v37);
            }
          }

          v10 = v26;
        }

        while (v26 != v8);
        v9 = *(a1 + 16);
        v7 = v69;
      }

      if (!v9)
      {
        break;
      }

      v37 = v7 == v9;
      v7 = v9;
    }

    while (!v37);
  }

  if (!a4)
  {
    if (*(a1 + 504))
    {
      v71 = 0;
      v72 = 0;
      v73 = 0;
      std::vector<CoreNLP::NLAttributedToken *>::__init_with_size[abi:ne200100]<CoreNLP::NLAttributedToken **,CoreNLP::NLAttributedToken **>(&v71, *a2, a2[1], (a2[1] - *a2) >> 3);
      CoreNLP::TaggingModelManager::applyCustomGazetteer(a1, &v71, CurrentDominantLanguageID);
      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }
    }
  }

  if (*(a1 + 16))
  {
    std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(a1, *(a1 + 8));
    *a1 = a1 + 8;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
  }

  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v85, v86[0]);
  return 1;
}

void sub_19D1961F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(v26 - 136, *(v26 - 128));
  _Unwind_Resume(a1);
}

void CoreNLP::TaggingFeatureExtractor::~TaggingFeatureExtractor(char **this)
{
  *this = &unk_1F10AE280;
  std::__tree<std::string>::destroy((this + 49), this[50]);
  std::__tree<std::string>::destroy((this + 46), this[47]);
  v2 = this[43];
  if (v2)
  {
    this[44] = v2;
    operator delete(v2);
  }

  v3 = this[40];
  if (v3)
  {
    this[41] = v3;
    operator delete(v3);
  }

  v4 = this[37];
  if (v4)
  {
    this[38] = v4;
    operator delete(v4);
  }

  v5 = this[34];
  if (v5)
  {
    this[35] = v5;
    operator delete(v5);
  }

  v6 = this[31];
  if (v6)
  {
    this[32] = v6;
    operator delete(v6);
  }

  v7 = this[28];
  if (v7)
  {
    this[29] = v7;
    operator delete(v7);
  }

  v8 = this[25];
  if (v8)
  {
    this[26] = v8;
    operator delete(v8);
  }

  v9 = this[22];
  if (v9)
  {
    this[23] = v9;
    operator delete(v9);
  }

  v10 = this[19];
  if (v10)
  {
    this[20] = v10;
    operator delete(v10);
  }

  v11 = this[16];
  if (v11)
  {
    this[17] = v11;
    operator delete(v11);
  }

  v12 = this[13];
  if (v12)
  {
    this[14] = v12;
    operator delete(v12);
  }

  v13 = this[10];
  if (v13)
  {
    this[11] = v13;
    operator delete(v13);
  }

  std::__tree<std::__value_type<NLLanguageID,BloomFilter>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,BloomFilter>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,BloomFilter>>>::destroy((this + 7), this[8]);
  std::__tree<std::__value_type<NLLanguageID,BloomFilter>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,BloomFilter>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,BloomFilter>>>::destroy((this + 4), this[5]);
  std::__tree<std::__value_type<NLLanguageID,BloomFilter>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,BloomFilter>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,BloomFilter>>>::destroy((this + 1), this[2]);
}

{
  CoreNLP::TaggingFeatureExtractor::~TaggingFeatureExtractor(this);

  JUMPOUT(0x19EAF8CA0);
}

void CoreNLP::TaggingModelManager::~TaggingModelManager(CoreNLP::TaggingModelManager *this)
{
  v2 = this + 24;
  v3 = *(this + 3);
  v4 = this + 32;
  if (v3 != this + 32)
  {
    do
    {
      LODWORD(__p) = *(v3 + 8);
      std::map<NLLanguageID,CoreNLP::AbstractModel *>::map[abi:ne200100](&v15, (v3 + 40));
      v5 = v15;
      if (v15 != v16)
      {
        do
        {
          v6 = v5[5];
          if (v6)
          {
            (*(*v6 + 8))(v6);
          }

          v7 = v5[1];
          if (v7)
          {
            do
            {
              v8 = v7;
              v7 = *v7;
            }

            while (v7);
          }

          else
          {
            do
            {
              v8 = v5[2];
              v9 = *v8 == v5;
              v5 = v8;
            }

            while (!v9);
          }

          v5 = v8;
        }

        while (v8 != v16);
      }

      std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v15, v16[0]);
      v10 = *(v3 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v3 + 2);
          v9 = *v11 == v3;
          v3 = v11;
        }

        while (!v9);
      }

      v3 = v11;
    }

    while (v11 != v4);
  }

  v12 = getprogname();
  std::string::basic_string[abi:ne200100]<0>(&__p, v12);
  if (SHIBYTE(v16[0]) < 0)
  {
    if (v15 != 8)
    {
      goto LABEL_24;
    }

    p_p = __p;
  }

  else
  {
    if (SHIBYTE(v16[0]) != 8)
    {
      goto LABEL_25;
    }

    p_p = &__p;
  }

  if (*p_p == 0x6474736567677573)
  {
    CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::clearEmptyResources();
    if ((HIBYTE(v16[0]) & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if ((HIBYTE(v16[0]) & 0x80) != 0)
  {
LABEL_24:
    operator delete(__p);
  }

LABEL_25:
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(this + 616, *(this + 78));
  std::__tree<std::string>::destroy(this + 584, *(this + 74));
  std::__tree<std::string>::destroy(this + 560, *(this + 71));
  std::__tree<std::string>::destroy(this + 536, *(this + 68));
  std::__tree<std::string>::destroy(this + 512, *(this + 65));
  std::__tree<std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>>>::destroy(this + 488, *(this + 62));
  std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>>>::destroy(this + 464, *(this + 59));
  CoreNLP::TaggingFeatureExtractor::~TaggingFeatureExtractor((this + 48));
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(v2, *(this + 4));
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(this, *(this + 1));
}

uint64_t std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void CoreNLP::TaggerManager::~TaggerManager(CoreNLP::TaggerManager *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  CoreNLP::TaggerContext::~TaggerContext((this + 64));
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>>>::~__hash_table(this);
}

void CoreNLP::CompositeTagger::~CompositeTagger(CoreNLP::CompositeTagger *this)
{
  *this = &unk_1F10AF0E0;
  v2 = *(this + 119);
  *(this + 119) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 118);
  *(this + 118) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v5 = (this + 912);
  std::vector<CoreNLP::NLAttributedToken>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__list_imp<CoreNLP::NLAttributedToken>::clear(this + 109);
  std::__list_imp<CoreNLP::NLAttributedToken>::clear(this + 106);
  CoreNLP::NLAttributedToken::~NLAttributedToken((this + 736));
  v4 = *(this + 91);
  *(this + 91) = 0;
  if (v4)
  {
    MEMORY[0x19EAF8CA0](v4, 0x60C4044C4A2DFLL);
  }

  std::__tree<std::string>::destroy(this + 688, *(this + 87));
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(this + 664, *(this + 84));
  CoreNLP::TaggingModelManager::~TaggingModelManager((this + 24));
  std::unique_ptr<CoreNLP::SmartTokenizer>::~unique_ptr[abi:ne200100](this + 1);
}

{
  CoreNLP::CompositeTagger::~CompositeTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void CoreNLP::TaggerManagerWrapper::~TaggerManagerWrapper(CoreNLP::TaggerManagerWrapper *this)
{
  *this = &unk_1F10AF358;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

{
  *this = &unk_1F10AF358;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

void std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID> const,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

CoreNLP::SmartTokenizer **std::unique_ptr<CoreNLP::SmartTokenizer>::~unique_ptr[abi:ne200100](CoreNLP::SmartTokenizer **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CoreNLP::SmartTokenizer::~SmartTokenizer(v2);
    MEMORY[0x19EAF8CA0]();
  }

  return a1;
}

void std::__tree<std::__value_type<NLLanguageID,BloomFilter>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,BloomFilter>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,BloomFilter>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NLLanguageID,BloomFilter>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,BloomFilter>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,BloomFilter>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NLLanguageID,BloomFilter>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,BloomFilter>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,BloomFilter>>>::destroy(a1, *(a2 + 1));
    if (a2[143] < 0)
    {
      operator delete(*(a2 + 15));
    }

    if (a2[119] < 0)
    {
      operator delete(*(a2 + 12));
    }

    v4 = *(a2 + 5);
    if (v4)
    {
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__tree<std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType const&>,std::tuple<>>(uint64_t a1, int *a2)
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

uint64_t *std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>>>::find<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 8);
    if (v8 >= v6)
    {
      if (v6 >= v8)
      {
        if (*(v3 + 9) >= v5)
        {
          v7 = v3;
        }

        v3 += *(v3 + 9) < v5;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v9 = *(v7 + 8);
  if (v6 < v9 || v9 >= v6 && v5 < *(v7 + 9))
  {
    return v2;
  }

  return v7;
}

CFStringRef CoreNLP::CompositeTagger::createLanguageTag(uint64_t a1, int a2, uint64_t a3)
{
  if ((a2 - 1) < 2)
  {
    CurrentDominantLanguage = CoreNLP::TaggerContext::getCurrentDominantLanguage(*(a1 + 16));
    if (!CurrentDominantLanguage)
    {
      return 0;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 3)
      {
        v3 = *(a1 + 16);
        v9.location = *(v3 + 24);
        v9.length = *(a1 + 724);
        CoreNLP::Orthography::createOrthography(*(v3 + 8), *(v3 + 16), v9);
      }

      return 0;
    }

    if ((*(a3 + 72) & 8) == 0)
    {
      return 0;
    }

    CurrentDominantLanguage = CoreNLP::TaggerContext::getCurrentDominantLanguageForString(*(a1 + 16), *(*(a1 + 16) + 8), *a3);
    if (!CurrentDominantLanguage)
    {
      return 0;
    }
  }

  v5 = CurrentDominantLanguage;
  v6 = *MEMORY[0x1E695E480];

  return CFStringCreateCopy(v6, v5);
}

void sub_19D196D10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CoreNLP::TaggerContext::TaggerContext(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NLStringTokenizerGoToTokenAtIndex(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) != 1 || (v4 = *(a1 + 24), v5 = a2 < v4, v6 = a2 - v4, v5) || *(a1 + 32) + v4 <= a2)
  {
    result = 0;
    *(a1 + 88) = 0;
  }

  else
  {
    v7 = *(a1 + 88);
    if (v7 && v6 >= *v7 && v6 < v7[1] + *v7)
    {
      return *(a1 + 96);
    }

    else
    {
      result = NLTokenizerGoToTokenAtIndex(*(a1 + 48), v6);
      *(a1 + 88) = result;
      if (result)
      {
        v9 = 17;
        if ((*(result + 16) & 0x20) == 0)
        {
          v9 = 1;
        }

        result = (*(result + 16) >> 2) & 0x20 | *(result + 16) & 0xELL | v9;
        *(a1 + 96) = result;
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NLToken>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t CoreNLP::DefaultSubWordTagger::goToTokenAtIndexWithDecomposedEnglishTokens(CoreNLP::DefaultSubWordTagger *this, uint64_t a2)
{
  v2 = *(this + 10);
  if (*v2 > a2 || (v3 = *(this + 11), *(v3 - 2) + *(v3 - 3) <= a2))
  {
    v11 = 0;
    *(this + 11) = v2;
  }

  else
  {
    v4 = v3 - v2;
    if (v3 == v2)
    {
      return -1;
    }

    v5 = 0;
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    for (i = v2 + 8; ; i += 3)
    {
      v9 = *(i - 1);
      if (v9 > a2)
      {
        break;
      }

      v10 = *i + v9;
      v11 = v5 + 1;
      if (v10 > a2)
      {
        goto LABEL_14;
      }

      ++v5;
      if (v7 == v11)
      {
        return -1;
      }
    }

    v11 = v5;
  }

  v5 = -1;
LABEL_14:
  *(this + 13) = v11;
  return v5;
}

uint64_t CoreNLP::ICUTextBreakWithBuiltInRules::fastEnumerateTokensWithSpecifiedStop(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  result = *(a1 + 8);
  if (result)
  {
    v8 = ubrk_first();
    do
    {
      v9 = *(a1 + 8);
      result = ubrk_next();
      if (result == -1)
      {
        break;
      }

      v10 = result;
      v11 = *(a1 + 8);
      v14[0] = *(a1 + 16) + v8;
      v14[1] = v10 - v8;
      RuleStatus = ubrk_getRuleStatus();
      if (*(a1 + 84) == 1)
      {
        if (RuleStatus >= 0x64)
        {
          if (RuleStatus - 100 >= 0x64)
          {
            v13 = ((RuleStatus - 300 < 0xC8) & *(*(a1 + 56) + 2)) != 0 ? 128 : 0;
          }

          else
          {
            v13 = 8;
          }
        }

        else
        {
          v13 = 32;
        }
      }

      else
      {
        v13 = 0;
      }

      v14[2] = v13;
      result = (*(a4 + 16))(a4, v14, a3);
      v8 = v10;
    }

    while (*a3 != 1);
  }

  return result;
}

uint64_t NLTokenizerEnumerateTokens(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 48))(result, 0, a2);
    }
  }

  return result;
}

CoreNLP::TaggerManager *std::__shared_ptr_pointer<CoreNLP::TaggerManager *,std::shared_ptr<CoreNLP::TaggerManager>::__shared_ptr_default_delete<CoreNLP::TaggerManager,CoreNLP::TaggerManager>,std::allocator<CoreNLP::TaggerManager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    CoreNLP::TaggerManager::~TaggerManager(result);

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

uint64_t NLTaggerCopyAvailableTagSchemes(int a1, CoreNLP::Resource *a2)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = v17;
  if (a2)
  {
    CFArrayAppendValue(v17[3], kNLTagSchemeLanguage[0]);
    CFArrayAppendValue(v17[3], kNLTagSchemeScript[0]);
    if (a1 == 2)
    {
      CoreNLP::Resource::getAssetResource(a2, @"Sentiment", @"sentiment.bundle", 0, &v14);
      if (v14 && CoreNLP::Resource::exists(v14, v8))
      {
        CFArrayAppendValue(v17[3], kNLTagSchemeSentiment[0]);
      }

      CoreNLP::Resource::getAssetResource(a2, @"Emotion", @"emotion.dat", 0, &v13);
      if (v13 && CoreNLP::Resource::exists(v13, v9))
      {
        CFArrayAppendValue(v17[3], kNLTagSchemeEmotion[0]);
      }

      std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](&v13);
      std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](&v14);
    }

    else if (!a1)
    {
      CFArrayAppendValue(v17[3], kNLTagSchemeTokenType[0]);
      v5 = MEMORY[0x19EAF8290](a2);
      v7 = CoreNLP::languageIdForLanguage(v5, v6);
      if (v7 == 4)
      {
        CFArrayAppendValue(v17[3], kNLTagSchemeLexicalClass[0]);
      }

      else
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 0x40000000;
        v15[2] = __NLTaggerCopyAvailableTagSchemes_block_invoke;
        v15[3] = &unk_1E76253C0;
        v15[4] = &v16;
        CoreNLP::Resource::enumerateAssetResources(a2, v15);
      }

      Count = CFArrayGetCount(v17[3]);
      v20.location = 0;
      v20.length = Count;
      if (CFArrayContainsValue(v17[3], v20, kNLTagSchemeLexicalClass[0]))
      {
        v21.location = 0;
        v21.length = Count;
        if (CFArrayContainsValue(v17[3], v21, kNLTagSchemeNamedEntity[0]))
        {
          CFArrayAppendValue(v17[3], kNLTagSchemeNamedEntityOrLexicalClass[0]);
        }
      }

      if (CoreNLP::LemmaTagger::lemmasAvailableForLanguage(v7))
      {
        CFArrayAppendValue(v17[3], kNLTagSchemeLemma[0]);
      }
    }

    v4 = v17;
  }

  v11 = v4[3];
  _Block_object_dispose(&v16, 8);
  return v11;
}

void sub_19D197384(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, CoreNLP::Resource *);
  va_copy(va2, va1);
  v5 = va_arg(va2, CoreNLP::Resource *);
  v7 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](va1);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::languageIdForLanguage(uint64_t this, const __CFString *a2)
{
  if (this)
  {
    v2 = this;
    if (CFStringHasPrefix(this, @"en"))
    {
      return 10;
    }

    else if (CFStringHasPrefix(v2, @"fr"))
    {
      return 12;
    }

    else if (CFStringHasPrefix(v2, @"de"))
    {
      return 13;
    }

    else if (CFStringHasPrefix(v2, @"it"))
    {
      return 19;
    }

    else if (CFStringHasPrefix(v2, @"es"))
    {
      return 29;
    }

    else if (CFStringHasPrefix(v2, @"pt"))
    {
      return 25;
    }

    else if (CFStringHasPrefix(v2, @"nl"))
    {
      return 9;
    }

    else if (CFStringHasPrefix(v2, @"sv"))
    {
      return 30;
    }

    else if (CFStringHasPrefix(v2, @"tr"))
    {
      return 32;
    }

    else if (CFStringHasPrefix(v2, @"ru"))
    {
      return 27;
    }

    else
    {
      return 4 * (CFStringHasPrefix(v2, @"zh-Hans") != 0);
    }
  }

  return this;
}

void CoreNLP::Resource::enumerateAssetResources(uint64_t a1, uint64_t a2)
{
  if (CoreNLP::load(void)::onceToken != -1)
  {
    CoreNLP::Resource::enumerateAssetResources();
  }

  if (CoreNLP::isSoftlinked == 1)
  {
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x2000000000;
    v6 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = ___ZN7CoreNLP8Resource23enumerateAssetResourcesEPK10__CFLocaleU13block_pointerFvNSt3__110unique_ptrIS0_NS4_14default_deleteIS0_EEEEPK10__CFStringPbE_block_invoke;
    v4[3] = &unk_1E7625C10;
    v4[4] = a2;
    v4[5] = v5;
    CoreNLP::_LDEnumerateAssetDataItems(a1, 0, v4);
    _Block_object_dispose(v5, 8);
  }
}

void sub_19D1975FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::getLXLemmatizer(unsigned int a1)
{
  if (a1 < 2)
  {
    return 0;
  }

  if (CoreNLP::loadLexiconAPI(void)::onceToken != -1)
  {
    CoreNLP::getLXLemmatizer();
  }

  if (CoreNLP::loadLexiconAPI(void)::isSoftlinked != 1)
  {
    return 0;
  }

  if (CoreNLP::getLXLemmatizer(NLLanguageID)::onceToken != -1)
  {
    CoreNLP::getLXLemmatizer();
  }

  if (!CoreNLP::getLXLemmatizer(NLLanguageID)::lemmatizerMap)
  {
    return 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  {
    CoreNLP::getLXLemmatizer();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN7CoreNLPL15getLXLemmatizerE12NLLanguageID_block_invoke_2;
  v4[3] = &unk_1E7624FC8;
  v5 = a1;
  v4[4] = &v6;
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

void CoreNLP::Resource::getAssetResource(CoreNLP::Resource *this@<X0>, const __CFLocale *a2@<X1>, const __CFString *a3@<X2>, const __CFString *a4@<X3>, void *a5@<X8>)
{
  v5 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (CoreNLP::load(void)::onceToken != -1)
  {
    CoreNLP::Resource::getAssetResource();
  }

  if (CoreNLP::isSoftlinked == 1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = ___ZN7CoreNLP8Resource16getAssetResourceEPK10__CFLocalePK10__CFStringS6_b_block_invoke;
    v10[3] = &unk_1E7625BE8;
    v10[5] = a2;
    v10[6] = a3;
    v10[4] = &v11;
    CoreNLP::_LDEnumerateAssetDataItems(this, v5, v10);
  }

  *a5 = v12[3];
  _Block_object_dispose(&v11, 8);
}

void sub_19D197868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CoreNLP::Resource **std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](CoreNLP::Resource **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CoreNLP::Resource::~Resource(v2);
    MEMORY[0x19EAF8CA0]();
  }

  return a1;
}

LanguageIdentifierModel *NLLanguageIdentifierRelease(LanguageIdentifierModel *result)
{
  if (result)
  {
    LanguageIdentifierModel::~LanguageIdentifierModel(result);

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

void LanguageIdentifierModel::~LanguageIdentifierModel(LanguageIdentifierModel *this)
{
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    MEMORY[0x19EAF8CA0](v2, 0x1010C40FDD9F14CLL);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    MEMORY[0x19EAF8CA0](v3, 0x1010C40FDD9F14CLL);
  }

  v4 = *(this + 16);
  *(this + 16) = 0;
  if (v4)
  {
    MEMORY[0x19EAF8CA0](v4, 0x1010C40FDD9F14CLL);
  }

  v5 = *(this + 15);
  *(this + 15) = 0;
  if (v5)
  {
    MEMORY[0x19EAF8CA0](v5, 0x1010C40FDD9F14CLL);
  }

  v6 = *(this + 14);
  *(this + 14) = 0;
  if (v6)
  {
    MEMORY[0x19EAF8CA0](v6, 0x1010C40FDD9F14CLL);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
    MEMORY[0x19EAF8CA0](v7, 0x1010C40FDD9F14CLL);
  }

  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](this + 12, 0);
  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](this + 11, 0);
  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](this + 10, 0);
  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](this + 9, 0);
  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](this + 8, 0);
  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](this + 7, 0);
  v8 = *(this + 4);
  if (v8)
  {
    *(this + 5) = v8;
    operator delete(v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    *(this + 2) = v9;
    operator delete(v9);
  }
}

void CoreNLP::MontrealModel::~MontrealModel(const void **this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  nlp::CFScopedPtr<void *>::reset(this + 1, 0);
  nlp::CFScopedPtr<void *>::reset(this + 1, 0);
}

CoreNLP::MontrealModel *std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](CoreNLP::MontrealModel **a1, CoreNLP::MontrealModel *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CoreNLP::MontrealModel::~MontrealModel(result);

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t CoreNLP::ReadOnlyFile<char>::~ReadOnlyFile(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(a1 + 68) == 1)
    {
      munmap(*a1, *(a1 + 8));
    }

    else
    {
      if (*(a1 + 64) != 2)
      {
        goto LABEL_10;
      }

      v3 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v3 = *v3;
      }

      v4 = open(v3, 2);
      v5 = v4;
      v2 = *a1;
      if ((v4 & 0x80000000) == 0)
      {
        write(v4, *a1, *(a1 + 8));
        close(v5);
        v2 = *a1;
      }

      if (v2)
      {
LABEL_10:
        MEMORY[0x19EAF8C70](v2, 0x1000C8077774924);
      }
    }
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void nlp::CFScopedPtr<__CFData const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFLocale const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void std::__tree<std::__value_type<std::string,BloomFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,BloomFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BloomFilter>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,BloomFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,BloomFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BloomFilter>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,BloomFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,BloomFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BloomFilter>>>::destroy(a1, *(a2 + 1));
    if (a2[159] < 0)
    {
      operator delete(*(a2 + 17));
    }

    if (a2[135] < 0)
    {
      operator delete(*(a2 + 14));
    }

    v4 = *(a2 + 7);
    if (v4)
    {
      operator delete(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void CoreNLP::SentenceTagger::~SentenceTagger(CoreNLP::SentenceTagger *this)
{
  CoreNLP::SentenceTagger::~SentenceTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

{
  *this = &unk_1F10AEE18;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

void *std::map<NLLanguageID,CoreNLP::AbstractModel *>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<NLLanguageID,CoreNLP::AbstractModel *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::__tree_node<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void CoreNLP::CRFModel::~CRFModel(CoreNLP::CRFModel *this)
{
  *this = &unk_1F10B00F8;
  CoreNLP::CRFModel::releaseModel(this);
  CoreNLP::CRFModel::releaseTrainer(this);
  std::__tree<std::__value_type<unsigned int,std::set<std::string>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<std::string>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<std::string>>>>::destroy(this + 216, *(this + 28));
  v2 = (this + 192);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  CoreNLP::crfsuite::Instance::~Instance((this + 72));
  CoreNLP::AbstractModel::~AbstractModel(this);
}

{
  CoreNLP::CRFModel::~CRFModel(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t CoreNLP::CRFModel::releaseModel(CoreNLP::CRFModel *this)
{
  *(this + 18) = 0;
  if (*(this + 17))
  {
    crfsuite_model_release();
    *(this + 17) = 0;
  }

  result = *(this + 15);
  if (result)
  {
    result = CFBurstTrieRelease();
    *(this + 15) = 0;
  }

  return result;
}

uint64_t CoreNLP::CRFModel::releaseTrainer(CoreNLP::CRFModel *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    v3 = *(v2 + 24);
    crfsuite_dictionary_release();
    v4 = *(this + 20);
    crfsuite_data_finish();
    v5 = *(this + 20);
    if (v5)
    {
      MEMORY[0x19EAF8CA0](v5, 0x1020C405E66F15BLL);
    }
  }

  result = *(this + 19);
  if (result)
  {

    return MEMORY[0x1EEE61D90]();
  }

  return result;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__tree<std::__value_type<unsigned int,std::set<std::string>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<std::string>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::set<std::string>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<std::string>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::set<std::string>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<std::string>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<std::string>>>>::destroy(a1, a2[1]);
    std::__tree<std::string>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::__emplace_hint_unique_key_args<NLLanguageID,std::pair<NLLanguageID const,__CFString const*> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::__find_equal<NLLanguageID>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void CoreNLP::AbstractModel::~AbstractModel(CoreNLP::AbstractModel *this)
{
  *this = &unk_1F10ACD60;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  std::__tree<std::string>::destroy(this + 16, *(this + 3));
}

void CoreNLP::crfsuite::Instance::~Instance(CoreNLP::crfsuite::Instance *this)
{
  *this = &unk_1F10AE9A8;
  if (*(this + 3))
  {
    if (*(this + 4))
    {
      crfsuite_instance_finish();
    }
  }
}

{
  CoreNLP::crfsuite::Instance::~Instance(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t std::map<NLLanguageID,CoreNLP::AbstractModel *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::__tree_node<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>>>::__emplace_hint_unique_key_args<NLLanguageID,std::pair<NLLanguageID const,CoreNLP::AbstractModel *> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t *std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::__find_equal<NLLanguageID>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
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
    if (*(v10 + 8) < *a5)
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
          v18 = *(v16 + 32);
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

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
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

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::clearEmptyResources()
{
  if (CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::onceToken != -1)
  {
    CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::clearEmptyResources();
  }

  v1 = CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::queue;

  dispatch_sync(v1, &__block_literal_global_7);
}

{
  dispatch_once(&CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::onceToken, &__block_literal_global_101);
}

void ___ZN7CoreNLP24SingletonResourceManagerINSt3__14pairINS_15NLTagSchemeTypeE12NLLanguageIDEENS_12ReadOnlyFileIcEEE19clearEmptyResourcesEv_block_invoke()
{
  if (CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::onceToken != -1)
  {
    ___ZN7CoreNLP24SingletonResourceManagerINSt3__14pairINS_15NLTagSchemeTypeE12NLLanguageIDEENS_12ReadOnlyFileIcEEE19clearEmptyResourcesEv_block_invoke_cold_1();
  }

  v0 = CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache;
  v2 = (CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache + 8);
  v1 = *CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache;
  if (*CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache != (CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache + 8))
  {
    do
    {
      v3 = v1[1];
      if (v1[5])
      {
        if (v3)
        {
          do
          {
            v4 = v3;
            v3 = *v3;
          }

          while (v3);
        }

        else
        {
          do
          {
            v4 = v1[2];
            v5 = *v4 == v1;
            v1 = v4;
          }

          while (!v5);
        }
      }

      else
      {
        v6 = v1;
        if (v3)
        {
          do
          {
            v4 = v3;
            v3 = *v3;
          }

          while (v3);
        }

        else
        {
          do
          {
            v4 = v6[2];
            v5 = *v4 == v6;
            v6 = v4;
          }

          while (!v5);
        }

        std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>>>::__remove_node_pointer(v0, v1);
        operator delete(v1);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }
}

void std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>>::destroy(uint64_t a1, const void **a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>>::destroy(a1, a2[1]);
    nlp::CFScopedPtr<void *>::reset(a2 + 5, 0);

    operator delete(a2);
  }
}

void nlp::CFScopedPtr<void *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t *std::unique_ptr<CoreNLP::Gazetteer>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    nlp::CFScopedPtr<void *>::reset((v2 + 56), 0);
    nlp::CFScopedPtr<__CFLocale const*>::reset((v2 + 48), 0);
    nlp::CFScopedPtr<__CFData const*>::reset((v2 + 40), 0);
    v3 = *(v2 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    std::__tree<std::__value_type<std::string,BloomFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,BloomFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BloomFilter>>>::destroy(v2, *(v2 + 8));

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

void CoreNLP::GazetteerWrapper::~GazetteerWrapper(CoreNLP::GazetteerWrapper *this)
{
  *this = &unk_1F10AD558;
  std::unique_ptr<CoreNLP::Gazetteer>::reset[abi:ne200100](this + 1, 0);

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

{
  *this = &unk_1F10AD558;
  std::unique_ptr<CoreNLP::Gazetteer>::reset[abi:ne200100](this + 1, 0);
  CoreNLP::SubWordTagger::~SubWordTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t std::__shared_ptr_pointer<CoreNLP::ReadOnlyFile<char> *,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>::__shared_ptr_default_delete<CoreNLP::ReadOnlyFile<char>,CoreNLP::ReadOnlyFile<char>>,std::allocator<CoreNLP::ReadOnlyFile<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    CoreNLP::ReadOnlyFile<char>::~ReadOnlyFile(result);

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t CoreNLP::MontrealModel::predict(CoreNLP::MontrealModel *this)
{
  result = *this;
  if (result)
  {
    return CoreNLP::_MRLNeuralNetworkPredict(result, 0, 0);
  }

  return result;
}

CoreNLP *NLTaggerEnumerateTokens(CoreNLP *result, void *a2, CFIndex a3, CFIndex a4, unint64_t a5, uint64_t a6)
{
  if (result)
  {
    v10 = a2;
    v11 = CoreNLP::unwrapGazetteer(result, a2);

    return CoreNLP::TaggerManager::enumerateTokens(v11, v10, a3, a4, a5, a6);
  }

  return result;
}

const __CFString *CoreNLP::TaggerManager::enumerateTokens(uint64_t a1, unsigned int a2, CFIndex a3, CFIndex a4, unint64_t a5, uint64_t a6)
{
  result = *(a1 + 48);
  if (result)
  {
    if ((a3 & 0x8000000000000000) == 0 && (a4 & 0x8000000000000000) == 0)
    {
      result = CFStringGetLength(result);
      if (result)
      {
        result = CFStringGetLength(*(a1 + 48));
        v13 = result;
        if (*(a1 + 57) == 1)
        {
          v14 = *CoreNLP::TaggerManager::getRuleBasedTagger(a1, a2);
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 0x40000000;
          v19[2] = ___ZN7CoreNLP13TaggerManager15enumerateTokensE15NLTokenizerUnit7CFRangemU13block_pointerFv7NLTokenPbE_block_invoke;
          v19[3] = &unk_1E76258C0;
          v19[5] = 0;
          v19[6] = v13;
          v19[4] = a6;
          return (*(*v14 + 56))(v14, a3, a4, a5, v19);
        }

        v15 = *(a1 + 144);
        if (v15 <= 0)
        {
          v20.location = a3;
          v20.length = a4;
          CoreNLP::TaggerManager::loadStringForCompositeTagger(a1, v20);
          v15 = *(a1 + 144);
          v16 = *(a1 + 128);
        }

        else
        {
          v16 = *(a1 + 128);
          if (v16 == -1 || a3 < v16 || a3 + a4 > *(a1 + 136) + v16)
          {
            return result;
          }
        }

        *(a1 + 144) = v15 + 1;
        v17 = *(a1 + 40);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 0x40000000;
        v18[2] = ___ZN7CoreNLP13TaggerManager15enumerateTokensE15NLTokenizerUnit7CFRangemU13block_pointerFv7NLTokenPbE_block_invoke_2;
        v18[3] = &unk_1E76258E8;
        v18[6] = 0;
        v18[7] = v13;
        v18[4] = a6;
        v18[5] = a1;
        result = CoreNLP::CompositeTagger::enumerateTokens(v17, a2, a3 - v16, a4, a5, v18);
        --*(a1 + 144);
      }
    }
  }

  return result;
}

CoreNLP *CoreNLP::CompositeTagger::enumerateTokens(CoreNLP *result, int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a4 >= 1)
  {
    v8 = result;
    v9 = (a5 >> 4) & 1;
    if (a2)
    {
      LODWORD(v9) = 0;
    }

    v23 = v9;
    v10 = (a5 >> 5) & 1;
    if (a2)
    {
      LODWORD(v10) = 0;
    }

    v26 = v10;
    result = CoreNLP::CompositeTagger::getAttributedTokenAtIndex(result);
    if (result)
    {
      v11 = a3 + a4;
      while (1)
      {
        v13 = *result;
        v12 = *(result + 1);
        v14 = *(result + 2);
        result = CoreNLP::skipTokenForOptions(result, a5);
        v15 = result;
        if (v26)
        {
          v16 = *(v8 + 234);
          v19 = v16 > 0x20;
          v17 = 0x12A083400uLL >> v16;
          v18 = v19 ? 0 : v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = a3 > v12 + v13 || v11 <= v12 + v13;
        if (v19)
        {
          break;
        }

        if (v23)
        {
          v27 = v13;
          v28 = v12;
          v29 = v14;
          result = CoreNLP::CompositeTagger::joinNames(v8, &v27, a3, a4, &v30);
          v13 = v30;
          v12 = v31;
          v14 = v32;
          if (a3 > v31 + v30 || v11 <= v31 + v30)
          {
            break;
          }
        }

        if (v18)
        {
          v27 = v13;
          v28 = v12;
          v29 = v14;
          result = CoreNLP::CompositeTagger::joinContractions(v8, &v27, a3, a4, &v30);
          v13 = v30;
          v12 = v31;
          v14 = v32;
          v20 = a3 > v31 + v30 || v11 <= v31 + v30;
LABEL_31:
          if ((v15 & 1) == 0)
          {
LABEL_32:
            LOBYTE(v27) = 0;
            v30 = v13;
            v31 = v12;
            v32 = v14;
            result = (*(a6 + 16))(a6, &v30, &v27);
            if (v27)
            {
              return result;
            }
          }

          if (v20)
          {
            return result;
          }

          goto LABEL_34;
        }

        if ((v15 & 1) == 0)
        {
          v20 = 0;
          goto LABEL_32;
        }

LABEL_34:
        result = CoreNLP::CompositeTagger::getAttributedTokenAtIndex(v8);
        if (!result)
        {
          return result;
        }
      }

      v20 = 1;
      goto LABEL_31;
    }
  }

  return result;
}

uint64_t CoreNLP::NLLangid::getLanguageOfCJString(uint64_t a1, const __CFString *a2, CFIndex *a3, uint64_t a4)
{
  v4 = a4;
  LODWORD(result) = CoreNLP::NLLangid::getLanguageOfString(a1, a2, *a3, a3[1], a4);
  if ((v4 & 0xFFFFFFFE) == 4 || v4 == 54 || v4 == 20)
  {
    v8 = v4;
  }

  else
  {
    v8 = 1;
  }

  if (result > 0x36 || ((1 << result) & 0x40000000100030) == 0)
  {
    return v8;
  }

  else
  {
    return result;
  }
}

uint64_t CoreNLP::WordDispatchTagger::getSubWordTaggerForCJKSubToken(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if ((*(v4 + 2) & 0x80) != 0)
  {
    if ((*(a2 + 17) & 0x10) != 0)
    {
LABEL_8:
      v6 = 21;
      return *CoreNLP::WordDispatchTagger::getSubWordTagger(a1, v6);
    }

    LanguageOfCJKString = CoreNLP::NLLangid::getLanguageOfCJKString(*(a1 + 96), *(v4 + 8), a2, *(v4 + 60));
  }

  else
  {
    LanguageOfCJKString = CoreNLP::NLLangid::getLanguageOfCJString(*(a1 + 96), *(v4 + 8), a2, *(v4 + 60));
  }

  v6 = LanguageOfCJKString;
  if (LanguageOfCJKString == 1)
  {
    if ((*(a2 + 17) & 0x10) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  return *CoreNLP::WordDispatchTagger::getSubWordTagger(a1, v6);
}

void LanguageIdentifierModel::setString(LanguageIdentifierModel *this, const __CFString *a2)
{
  if (a2)
  {
    operator new();
  }
}

void sub_19D199634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (v65 < 0)
  {
    operator delete(v63);
  }

  if (v64 < 0)
  {
    operator delete(v62);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D199864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  MEMORY[0x19EAF8CA0](v15, 0x1010C40FDD9F14CLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    *v14 = 0;
    __cxa_end_catch();
    JUMPOUT(0x19D199850);
  }

  _Unwind_Resume(a1);
}

void *UnicodeTokenIDMap::UnicodeTokenIDMap(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E9820];
  *a1 = 0;
  a1[1] = 0;
  v10[0] = v4;
  v10[1] = 1174405120;
  v10[2] = ___ZN17UnicodeTokenIDMapC2ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
  v10[3] = &__block_descriptor_tmp_21;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  PersistentResource = CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned short>>::getPersistentResource(a2, v10);
  if (!PersistentResource)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v9, "Failed to read UnicodeTokenIDMap data");
    CoreNLP::ResourceCreationException::ResourceCreationException(exception, &v9);
  }

  v6 = PersistentResource[1] >> 1;
  *a1 = *PersistentResource;
  a1[1] = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_19D1999F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      if (a24 < 0)
      {
        operator delete(a19);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

uint64_t ___ZN7CoreNLP24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileItEEE21getPersistentResourceERKS7_U13block_pointerFPS9_vE_block_invoke(void *a1)
{
  if (CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned short>>::getPersistentCache(void)::onceToken != -1)
  {
    ___ZN7CoreNLP24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileItEEE21getPersistentResourceERKS7_U13block_pointerFPS9_vE_block_invoke_cold_1();
  }

  v2 = CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned short>>::getPersistentCache(void)::cache;
  result = std::__tree<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>>>::find<std::string>(CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned short>>::getPersistentCache(void)::cache, a1[6]);
  if (v2 + 8 == result)
  {
    *(*(a1[5] + 8) + 24) = (*(a1[4] + 16))();
    v4 = a1[6];
    v5 = *(*(a1[5] + 8) + 24);
    result = std::__tree<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v2, v4);
    *(result + 56) = v5;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = *(result + 56);
  }

  return result;
}

void sub_19D199B00(void *a1)
{
  __cxa_begin_catch(a1);
  *(*(*(v1 + 40) + 8) + 24) = 0;
  __cxa_end_catch();
  JUMPOUT(0x19D199ABCLL);
}

uint64_t CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned short>>::getPersistentResource(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned short>>::getQueue(void)::onceToken != -1)
  {
    CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned short>>::getPersistentResource();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN7CoreNLP24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileItEEE21getPersistentResourceERKS7_U13block_pointerFPS9_vE_block_invoke;
  block[3] = &unk_1E7624B58;
  block[5] = &v7;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned short>>::getQueue(void)::queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void LanguageIdentifierModel::setStringForModelWithTokenMap(int a1, const void ***a2, UnicodeTokenIDMap **a3, __CFString *a4, int a5)
{
  if (*a2)
  {
    v5 = *a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    prepareInputCFStringToUTF8String(a4, &v20);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v17 = v20;
    }

    prepareUTF8StringToTokens(&v17, a3, a5, &v18);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    v15 = 0;
    v16 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(&__p, v18, v19, (v19 - v18) >> 1);
    CoreNLP::MontrealModel::clear(*a2);
    v9 = *a2;
    v13 = (v15 - __p) >> 2;
    v12 = 0x100000001;
    v11 = xmmword_19D27DB40;
    LOWORD(v10) = 256;
    CoreNLP::MontrealModel::setInputTensor(v9, &v10, __p, 0);
    CoreNLP::MontrealModel::predict(*a2);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19D199D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 - 33) < 0)
  {
    operator delete(*(v22 - 56));
  }

  _Unwind_Resume(exception_object);
}

void prepareInputCFStringToUTF8String(const __CFString *a1@<X0>, uint64_t a2@<X8>)
{
  Length = CFStringGetLength(a1);
  v5 = MEMORY[0x1E695E480];
  if (Length < 101)
  {
    v6 = CFRetain(a1);
  }

  else
  {
    v12.location = 0;
    v12.length = 100;
    v6 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v12);
  }

  v7 = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v6)
  {
    MutableCopy = CFStringCreateMutableCopy(*v5, 0, v6);
    v9 = MutableCopy;
    if (MutableCopy)
    {
      CFStringLowercase(MutableCopy, 0);
      CFStringNormalize(v9, kCFStringNormalizationFormC);
      CoreNLP::getUTF8StringFromCFString(v9, &v10);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v10;
      *(a2 + 16) = v11;
      CFRelease(v9);
    }

    else
    {
      MEMORY[0x19EAF8860](a2, "");
    }

    CFRelease(v7);
  }

  else
  {
    MEMORY[0x19EAF8860](a2, "");
  }
}

void sub_19D199E94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t utf82uni@<X0>(uint64_t *a1@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  v5 = 0;
  *a2 = 0;
  a2[1] = 0;
  v6 = 0x1EB011000uLL;
  v7 = 0x1EB011000uLL;
  a2[2] = 0;
  result = 0x1EB011000uLL;
  v9 = 0x1EB011000uLL;
  v10 = 0x1EB011000uLL;
  v11 = 0x1EB011000uLL;
  while (1)
  {
    v12 = *(a1 + 23);
    v13 = v12 < 0 ? a1[1] : *(a1 + 23);
    v14 = v5;
    if (v13 <= v5)
    {
      break;
    }

    v15 = a1;
    if ((v12 & 0x80000000) != 0)
    {
      v15 = *a1;
    }

    v16 = (*(v6 + 3512) & *(v15 + v14)) == 0;
    v17 = a1;
    if ((v12 & 0x80000000) != 0)
    {
      v17 = *a1;
    }

    if ((*(v7 + 3516) & ~*(v17 + v14)) == 0)
    {
      v16 = 2;
    }

    v18 = a1;
    if ((v12 & 0x80000000) != 0)
    {
      v18 = *a1;
    }

    if ((*(result + 3520) & ~*(v18 + v14)) == 0)
    {
      v16 = 3;
    }

    v19 = a1;
    if ((v12 & 0x80000000) != 0)
    {
      v19 = *a1;
    }

    if ((*(v9 + 3524) & ~*(v19 + v14)) == 0)
    {
      v16 = 4;
    }

    v20 = a1;
    if ((v12 & 0x80000000) != 0)
    {
      v20 = *a1;
    }

    if ((*(v10 + 3528) & ~*(v20 + v14)) == 0)
    {
      v16 = 5;
    }

    v21 = a1;
    if ((v12 & 0x80000000) != 0)
    {
      v21 = *a1;
    }

    if ((*(v11 + 3532) & ~*(v21 + v14)) != 0)
    {
      v22 = v16;
    }

    else
    {
      v22 = 6;
    }

    if (v22)
    {
      v23 = 0;
      v24 = 0;
      v25 = v14;
      do
      {
        v26 = a1;
        if (v23)
        {
          if ((v12 & 0x80000000) != 0)
          {
            v26 = *a1;
          }

          v24 = (v24 << 6) | *(v26 + v25) & 0x3F;
        }

        else
        {
          if ((v12 & 0x80000000) != 0)
          {
            v26 = *a1;
          }

          v24 |= *(v26 + v14) & ~maskHeader[v22 - 1];
        }

        --v23;
        ++v25;
      }

      while (-v22 != v23);
    }

    else
    {
      v24 = 0;
    }

    v27 = a2[2];
    if (v4 >= v27)
    {
      v28 = *a2;
      v29 = v4 - *a2;
      v30 = v29 >> 2;
      v31 = (v29 >> 2) + 1;
      if (v31 >> 62)
      {
        std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
      }

      v32 = v27 - v28;
      if (v32 >> 1 > v31)
      {
        v31 = v32 >> 1;
      }

      v33 = v32 >= 0x7FFFFFFFFFFFFFFCLL;
      v34 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v33)
      {
        v34 = v31;
      }

      if (v34)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2, v34);
      }

      *(4 * v30) = v24;
      v4 = (4 * v30 + 4);
      memcpy(0, v28, v29);
      v35 = *a2;
      *a2 = 0;
      a2[1] = v4;
      a2[2] = 0;
      if (v35)
      {
        operator delete(v35);
      }

      v6 = 0x1EB011000;
      v7 = 0x1EB011000;
      result = 0x1EB011000;
      v9 = 0x1EB011000;
      v10 = 0x1EB011000;
      v11 = 0x1EB011000;
    }

    else
    {
      *v4++ = v24;
    }

    a2[1] = v4;
    v5 = v22 + v14;
  }

  return result;
}

void sub_19D19A154(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void prepareUTF8StringToTokens(uint64_t a1@<X0>, UnicodeTokenIDMap **a2@<X1>, int a3@<W2>, char **a4@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v69, *a1, *(a1 + 8));
  }

  else
  {
    v69 = *a1;
  }

  utf82uni(&v69, &__p);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = *a2;
  if (!*a2)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a4, 1);
  }

  v8 = *(v7 + 1);
  v9 = UnicodeTokenIDMap::tokenToID(v7, 0x20u);
  v10 = v9;
  v11 = __p;
  v12 = v71;
  if (v8 <= v9)
  {
    if (__p != v71)
    {
      do
      {
        v26 = UnicodeTokenIDMap::tokenToID(*a2, *v11);
        if (v8 > v26)
        {
          v27 = v26 + 1;
          v29 = a4[1];
          v28 = a4[2];
          if (v29 >= v28)
          {
            v31 = *a4;
            v32 = v29 - *a4;
            v33 = v32 >> 1;
            if (v32 >> 1 <= -2)
            {
              std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
            }

            v34 = v28 - v31;
            if (v34 <= v33 + 1)
            {
              v35 = v33 + 1;
            }

            else
            {
              v35 = v34;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v36 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v35;
            }

            if (v36)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a4, v36);
            }

            *(2 * v33) = v27;
            v30 = 2 * v33 + 2;
            memcpy(0, v31, v32);
            v37 = *a4;
            *a4 = 0;
            a4[1] = v30;
            a4[2] = 0;
            if (v37)
            {
              operator delete(v37);
            }
          }

          else
          {
            *v29 = v27;
            v30 = (v29 + 2);
          }

          a4[1] = v30;
        }

        v11 += 2;
      }

      while (v11 != v12);
    }

    v38 = *a4;
    v39 = a4[1];
    if (*a4 != v39)
    {
      goto LABEL_82;
    }

    v40 = a4[2];
    if (v38 >= v40)
    {
      v55 = v40 - v38;
      if (v55 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = v55;
      }

      if (v55 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v57 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v57 = v56;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a4, v57);
    }

    *v39 = 1;
    v41 = v39 + 2;
LABEL_81:
    a4[1] = v41;
    goto LABEL_82;
  }

  v67 = a3;
  if (__p == v71)
  {
    v15 = a4[1];
  }

  else
  {
    v68 = v9 + 1;
    do
    {
      v13 = UnicodeTokenIDMap::tokenToID(*a2, *v11);
      if (v8 <= v13)
      {
        v14 = v10;
      }

      else
      {
        v14 = v13;
      }

      v15 = a4[1];
      if (v14 != v10 || v15 != *a4 && v68 != *(v15 - 1))
      {
        v16 = v14 + 1;
        v17 = a4[2];
        if (v15 >= v17)
        {
          v18 = *a4;
          v19 = v15 - *a4;
          v20 = v19 >> 1;
          if (v19 >> 1 <= -2)
          {
            std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
          }

          v21 = v17 - v18;
          if (v21 <= v20 + 1)
          {
            v22 = v20 + 1;
          }

          else
          {
            v22 = v21;
          }

          v23 = v21 >= 0x7FFFFFFFFFFFFFFELL;
          v24 = 0x7FFFFFFFFFFFFFFFLL;
          if (!v23)
          {
            v24 = v22;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a4, v24);
          }

          *(2 * v20) = v16;
          v15 = (2 * v20 + 2);
          memcpy(0, v18, v19);
          v25 = *a4;
          *a4 = 0;
          a4[1] = v15;
          a4[2] = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v15 = v16;
          v15 += 2;
        }

        a4[1] = v15;
      }

      v11 += 2;
    }

    while (v11 != v12);
  }

  v42 = *a4;
  v43 = v10 + 1;
  if (*a4 == v15)
  {
    v45 = v15;
LABEL_59:
    v47 = a4[2];
    if (v45 >= v47)
    {
      v48 = v45 - v42;
      v49 = (v45 - v42) >> 1;
      if (v49 <= -2)
      {
        std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
      }

      v50 = v47 - v42;
      if (v50 <= v49 + 1)
      {
        v51 = v49 + 1;
      }

      else
      {
        v51 = v50;
      }

      v23 = v50 >= 0x7FFFFFFFFFFFFFFELL;
      v52 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v23)
      {
        v52 = v51;
      }

      if (v52)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a4, v52);
      }

      v58 = (v45 - v42) >> 1;
      v59 = (2 * v49);
      v60 = (2 * v49 - 2 * v58);
      *v59 = v43;
      v41 = (v59 + 1);
      memcpy(v60, v42, v48);
      v61 = *a4;
      *a4 = v60;
      a4[1] = v41;
      a4[2] = 0;
      if (v61)
      {
        operator delete(v61);
      }
    }

    else
    {
      *v45 = v43;
      v41 = v45 + 2;
    }

    goto LABEL_81;
  }

  v44 = v15 - v42;
  v45 = v15;
  while (1)
  {
    v46 = *(v45 - 1);
    v45 -= 2;
    if (v43 != v46)
    {
      break;
    }

    a4[1] = v45;
    v44 -= 2;
    v15 = v45;
    if (v45 == v42)
    {
      goto LABEL_59;
    }
  }

  if (v67)
  {
    v53 = a4[2];
    if (v15 >= v53)
    {
      v62 = v44 >> 1;
      if (v44 >> 1 <= -2)
      {
        std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
      }

      v63 = v53 - v42;
      if (v63 <= v62 + 1)
      {
        v64 = v62 + 1;
      }

      else
      {
        v64 = v63;
      }

      v23 = v63 >= 0x7FFFFFFFFFFFFFFELL;
      v65 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v23)
      {
        v65 = v64;
      }

      if (v65)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a4, v65);
      }

      *(2 * v62) = v43;
      v54 = 2 * v62 + 2;
      memcpy(0, v42, v44);
      v66 = *a4;
      *a4 = 0;
      a4[1] = v54;
      a4[2] = 0;
      if (v66)
      {
        operator delete(v66);
      }
    }

    else
    {
      *v15 = v43;
      v54 = (v15 + 2);
    }

    a4[1] = v54;
  }

LABEL_82:
  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }
}

void sub_19D19A674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t UnicodeTokenIDMap::tokenToID(UnicodeTokenIDMap *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = *this;
  if (v2)
  {
    v3 = *this;
    v4 = *(this + 1);
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[v4 >> 1];
      v8 = *v6;
      v7 = v6 + 1;
      v4 += ~(v4 >> 1);
      if (v8 < a2)
      {
        v3 = v7;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
  }

  if (*v3 == a2)
  {
    LOWORD(v2) = (v3 - *this) >> 1;
  }

  return v2;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D19A7D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::MontrealModel::setInputTensor(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  v8 = a2[7];
  std::string::basic_string[abi:ne200100]<0>(__p, "SequenceLength");
  v20 = __p;
  *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v18, __p) + 56) = v8;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a2[2];
  std::string::basic_string[abi:ne200100]<0>(__p, "InputDimension");
  v20 = __p;
  *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v18, __p) + 56) = v9;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = a2[3];
  std::string::basic_string[abi:ne200100]<0>(__p, "Channel");
  v20 = __p;
  *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v18, __p) + 56) = v10;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = a2[4];
  std::string::basic_string[abi:ne200100]<0>(__p, "Width");
  v20 = __p;
  *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v18, __p) + 56) = v11;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = a2[5];
  std::string::basic_string[abi:ne200100]<0>(__p, "Height");
  v20 = __p;
  *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v18, __p) + 56) = v12;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = a2[1];
  std::string::basic_string[abi:ne200100]<0>(__p, "ShapeDimension");
  v20 = __p;
  *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v18, __p) + 56) = v13;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = applesauce::CF::details::make_CFDictionaryRef<std::string,int>(&v18);
  __p[0] = v14;
  v15 = CoreNLP::_MRLNeuralNetworkTensorCreate(v14);
  nlp::CFScopedPtr<void *>::reset((a1 + 8), v15);
  CoreNLP::_MRLNeuralNetworkTensorAppendData(*(a1 + 8), a3, 4 * a2[7] * a2[2] * a2[3] * a2[4] * a2[5]);
  if (*a1)
  {
    CoreNLP::_MRLNeuralNetworkSetInputTensor(*a1, a4, *(a1 + 8), 0);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  std::__tree<std::string>::destroy(&v18, v19[0]);
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<std::string,int>(void *a1)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v11, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v12;
    do
    {
      if (v5 >= v13)
      {
        v5 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,int const&>(&v11, v3 + 32, v3 + 14);
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,int const&>(v5, v3 + 32, v3 + 14);
        v5 += 2;
      }

      v12 = v5;
      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v11);
  v14 = &v11;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v14);
  return CFDictionaryRef;
}

void sub_19D19ACA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *std::vector<applesauce::CF::TypeRefPair>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(result, a2);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_19D19AD7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
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
      *v7 = 0;
      a4[1] = v7[1];
      v7[1] = 0;
      v7 += 2;
      a4 += 2;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,0>(a1, v5);
      v5 += 16;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<applesauce::CF::TypeRefPair>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<applesauce::CF::TypeRefPair>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,0>(v5, v4 - 16);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,int const&>(CFStringRef *a1, const UInt8 *a2, int *a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  valuePtr = *a3;
  v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v8;
  if (!v8)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_19D19B060(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t **a1)
{
  v2 = (a1[1] - *a1) >> 4;
  __p = 0;
  v31 = 0;
  v32 = 0;
  std::vector<void const*>::reserve(&__p, v2);
  values = 0;
  v28 = 0;
  v29 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *v3;
      if (!*v3 || !v3[1])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v6 = v31;
      if (v31 >= v32)
      {
        v8 = (v31 - __p) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v9 = (v32 - __p) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&__p, v10);
        }

        v11 = (8 * v8);
        *v11 = v5;
        v7 = 8 * v8 + 8;
        v12 = v11 - (v31 - __p);
        memcpy(v12, __p, v31 - __p);
        v13 = __p;
        __p = v12;
        v31 = v7;
        v32 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v31 = v5;
        v7 = (v6 + 8);
      }

      v31 = v7;
      v14 = v3[1];
      v15 = v28;
      if (v28 >= v29)
      {
        v17 = v28 - values;
        if ((v17 + 1) >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v18 = (v29 - values) >> 2;
        if (v18 <= v17 + 1)
        {
          v18 = v17 + 1;
        }

        if (v29 - values >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&values, v19);
        }

        v20 = (8 * v17);
        *v20 = v14;
        v16 = 8 * v17 + 8;
        v21 = v20 - (v28 - values);
        memcpy(v21, values, v28 - values);
        v22 = values;
        values = v21;
        v28 = v16;
        v29 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v28 = v14;
        v16 = (v15 + 1);
      }

      v28 = v16;
      v3 += 2;
    }

    while (v3 != v4);
  }

  v23 = CFDictionaryCreate(0, __p, values, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v23)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
    __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
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

  return v23;
}

void sub_19D19B3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

void CoreNLP::MontrealModel::clear(const void **this)
{
  v2 = *this;
  if (v2)
  {
    CoreNLP::_MRLNeuralNetworkClear(v2, 0);
  }

  nlp::CFScopedPtr<void *>::reset(this + 1, 0);
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(result, a2);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<applesauce::CF::TypeRefPair>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<applesauce::CF::TypeRefPair>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,0>(a1, i))
  {
    i -= 16;
  }

  *(a1 + 8) = a2;
}

uint64_t NLLanguageIdentifierGetTopHypotheses(LanguageIdentifierModel *a1, _DWORD *a2, int64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  Constraints = LanguageIdentifierModel::getConstraints(a1);
  if (*(Constraints + 8) - *Constraints == 4)
  {
    *a2 = **Constraints;
    a2[1] = 1065353216;
    return 1;
  }

  v8 = Constraints;
  Type = CoreNLP::ModelContainer::getType(a1);
  FixedLanguageForScript = getFixedLanguageForScript(Type);
  v12 = *v8;
  v11 = *(v8 + 8);
  v13 = v11 - *v8;
  if (FixedLanguageForScript)
  {
    while (v12 != v11)
    {
      if (*v12 == FixedLanguageForScript)
      {
        goto LABEL_9;
      }

      ++v12;
    }

    v12 = *(v8 + 8);
LABEL_9:
    if (v13 < 5 || v12 != v11)
    {
      *a2 = FixedLanguageForScript;
      a2[1] = 1065353216;
      return 1;
    }

    return 0;
  }

  LanguageIdentifierModel::getTopProbabilities(a1, v87);
  OutputSize = LanguageIdentifierModel::getOutputSize(a1, Type);
  DominantScriptOutputMap = getDominantScriptOutputMap(Type);
  v16 = v87[1];
  v17 = v87[0];
  if (v87[0] == v87[1])
  {
    v37 = v87[0];
    goto LABEL_101;
  }

  v18 = DominantScriptOutputMap;
  v19 = v87[0];
  do
  {
    *v19 = log10f(*v19);
    ++v19;
  }

  while (v19 != v16);
  v77 = a3;
  Hints = LanguageIdentifierModel::getHints(a1);
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v22 = *Hints;
  v21 = Hints[1];
  if (*Hints == v21)
  {
    v31 = v87[0];
    v32 = v87[1];
  }

  else
  {
    do
    {
      if (OutputSize)
      {
        v23 = 4 * OutputSize;
        v24 = v18;
        v25 = v18;
        while (*v25 != *v22)
        {
          v25 += 4;
          v24 += 4;
          v23 -= 4;
          if (!v23)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        v24 = v18;
        v25 = v18;
      }

      v26 = (v24 - v18) >> 2;
      if (&v18[4 * OutputSize] == v25)
      {
        v27 = -1;
      }

      else
      {
        v27 = v26;
      }

      LODWORD(v81) = v27;
      if ((v27 & 0x80000000) == 0)
      {
        std::vector<int>::push_back[abi:ne200100](&v84, &v81);
        v28 = log10f(*(v22 + 4));
        *(v87[0] + v81) = v28 + *(v87[0] + v81);
        v21 = Hints[1];
      }

LABEL_28:
      v22 += 8;
    }

    while (v22 != v21);
    v29 = v84;
    v30 = v85;
    v31 = v87[0];
    v32 = v87[1];
    if (v84 != v85 && v87[1] != v87[0])
    {
      v34 = 0;
      v35 = (v87[1] - v87[0]) >> 2;
      if (v35 <= 1)
      {
        v35 = 1;
      }

      do
      {
        v36 = v29;
        while (v34 != *v36)
        {
          if (++v36 == v30)
          {
            goto LABEL_40;
          }
        }

        if (v36 != v30)
        {
          goto LABEL_41;
        }

LABEL_40:
        v31[v34] = -20.0;
LABEL_41:
        ++v34;
      }

      while (v34 != v35);
    }
  }

  if (v31 != v32)
  {
    v38 = 0.0;
    v39 = v31;
    do
    {
      v40 = *v39++;
      v38 = v38 + __exp10f(v40);
    }

    while (v39 != v32);
    do
    {
      v41 = __exp10f(*v31);
      *v31++ = log10f(v41 / v38);
    }

    while (v31 != v32);
  }

  v81 = 0;
  v82 = 0;
  v83 = 0;
  LODWORD(__p) = 0;
  if (OutputSize >= 1)
  {
    v42 = 0;
    v43 = 0;
    do
    {
      v44 = *v8;
      v45 = *(v8 + 8);
      if (*v8 != v45)
      {
        v46 = *&v18[4 * v43];
        while (*v44 != v46)
        {
          if (++v44 == v45)
          {
            v44 = *(v8 + 8);
            break;
          }
        }
      }

      if (v13 >= 5 && v44 == v45)
      {
        std::vector<int>::push_back[abi:ne200100](&v81, &__p);
        v42 = __p;
      }

      LODWORD(__p) = ++v42;
      v43 = v42;
    }

    while (OutputSize > v42);
    v48 = v81;
    v47 = v82;
    if (v82 != v81)
    {
      v49 = 0.0;
      v50 = v87[0];
      do
      {
        v51 = *v48++;
        v49 = v49 + __exp10f(v50[v51]);
        v50[v51] = -3.4028e38;
      }

      while (v48 != v47);
      v52 = v87[1];
      if (v50 != v87[1])
      {
        v53 = 0.0;
        v54 = v50;
        do
        {
          v55 = *v54++;
          v53 = v53 + __exp10f(v55);
        }

        while (v54 != v52);
        do
        {
          v56 = __exp10f(*v50);
          *v50++ = log10f(v56 + ((v56 / v53) * v49));
        }

        while (v50 != v52);
      }
    }
  }

  __p = 0;
  v79 = 0;
  v80 = 0;
  std::vector<unsigned long>::reserve(&__p, OutputSize);
  if (OutputSize >= 1)
  {
    for (i = 0; i != OutputSize; ++i)
    {
      v58 = *(v87[0] + i);
      if (fabsf(v58 + 3.4028e38) > 0.00000011921)
      {
        v59 = *&v18[4 * i];
        v60 = __exp10f(v58);
        v61 = v79;
        if (v79 >= v80)
        {
          v63 = (v79 - __p) >> 3;
          v64 = v63 + 1;
          if ((v63 + 1) >> 61)
          {
            std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
          }

          v65 = v80 - __p;
          if ((v80 - __p) >> 2 > v64)
          {
            v64 = v65 >> 2;
          }

          if (v65 >= 0x7FFFFFFFFFFFFFF8)
          {
            v66 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v66 = v64;
          }

          if (v66)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v66);
          }

          v67 = 8 * v63;
          *v67 = v59;
          *(v67 + 4) = v60;
          v62 = (8 * v63 + 8);
          v68 = (8 * v63 - (v79 - __p));
          memcpy((v67 - (v79 - __p)), __p, v79 - __p);
          v69 = __p;
          __p = v68;
          v79 = v62;
          v80 = 0;
          if (v69)
          {
            operator delete(v69);
          }
        }

        else
        {
          *v79 = v59;
          *(v61 + 1) = v60;
          v62 = (v61 + 8);
        }

        v79 = v62;
      }
    }
  }

  v70 = 126 - 2 * __clz((v79 - __p) >> 3);
  v88 = compareByProbability;
  if (v79 == __p)
  {
    v71 = 0;
  }

  else
  {
    v71 = v70;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*,false>(__p, v79, &v88, v71, 1);
  if (OutputSize >= v77)
  {
    v3 = v77;
  }

  else
  {
    v3 = OutputSize;
  }

  std::vector<NLLanguageHypothesis>::resize(&__p, v3);
  v72 = __p;
  if (v3 >= 1)
  {
    v73 = __p;
    v74 = v3;
    do
    {
      v75 = *v73++;
      *a2 = v75;
      a2 += 2;
      --v74;
    }

    while (v74);
    goto LABEL_95;
  }

  if (__p)
  {
LABEL_95:
    v79 = v72;
    operator delete(v72);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  v37 = v87[0];
LABEL_101:
  if (v37)
  {
    v87[1] = v37;
    operator delete(v37);
  }

  if (v17 == v16)
  {
    return 0;
  }

  return v3;
}

void sub_19D19BB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void LanguageIdentifierModel::getProbabilitiesFromModel(CoreNLP::MontrealModel **a1@<X1>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*a1)
  {
    v4 = CoreNLP::MontrealModel::output(*a1, @"output");
    if (v4)
    {
      v5 = CoreNLP::MontrealModel::outputSize(*a1);
      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = a2[2];
          if (v6 >= v7)
          {
            v8 = *a2;
            v9 = v6 - *a2;
            v10 = v9 >> 2;
            v11 = (v9 >> 2) + 1;
            if (v11 >> 62)
            {
              std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
            }

            v12 = v7 - v8;
            if (v12 >> 1 > v11)
            {
              v11 = v12 >> 1;
            }

            if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v13 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v13 = v11;
            }

            if (v13)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2, v13);
            }

            *(4 * v10) = *v4;
            v6 = (4 * v10 + 4);
            memcpy(0, v8, v9);
            v14 = *a2;
            *a2 = 0;
            a2[1] = v6;
            a2[2] = 0;
            if (v14)
            {
              operator delete(v14);
            }
          }

          else
          {
            *v6 = *v4;
            v6 += 4;
          }

          a2[1] = v6;
          ++v4;
          --v5;
        }

        while (v5);
      }
    }
  }
}

void sub_19D19BD0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double LanguageIdentifierModel::getTopProbabilities@<D0>(LanguageIdentifierModel *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *this;
  if (*this > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = (this + 96);
        break;
      case 4:
        v4 = (this + 56);
        break;
      case 29:
        v4 = (this + 64);
        break;
      default:
        return result;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v4 = (this + 72);
    }

    else
    {
      if (v3 != 2)
      {
        return result;
      }

      v4 = (this + 80);
    }
  }

  else
  {
    v4 = (this + 88);
  }

  LanguageIdentifierModel::getProbabilitiesFromModel(v4, &v7);
  v5 = v8;
  result = *&v7;
  *a2 = v7;
  a2[2] = v5;
  return result;
}

uint64_t CoreNLP::MontrealModel::output(CoreNLP::MontrealModel *this, const __CFString *a2)
{
  result = *this;
  if (result)
  {
    return CoreNLP::_MRLNeuralNetworkGetOutput(result, a2, 0);
  }

  return result;
}

uint64_t getFixedLanguageForScript(int a1)
{
  if ((a1 - 5) > 0x17)
  {
    return 0;
  }

  else
  {
    return dword_19D27DC58[a1 - 5];
  }
}

uint64_t CoreNLP::MontrealModel::outputSize(CoreNLP::MontrealModel *this)
{
  result = *this;
  if (result)
  {
    return CoreNLP::_MRLNeuralNetworkGetOutputDimension(result, 0);
  }

  return result;
}

uint64_t LanguageIdentifierModel::getOutputSize(uint64_t a1, int a2)
{
  v2 = 3;
  v3 = 22;
  v4 = 11;
  if (a2 != 29)
  {
    v4 = 0;
  }

  if (a2 != 4)
  {
    v3 = v4;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  v5 = 2;
  v6 = 4;
  v7 = 2;
  if (a2 != 2)
  {
    v7 = 0;
  }

  if (a2 != 1)
  {
    v6 = v7;
  }

  if (a2)
  {
    v5 = v6;
  }

  if (a2 <= 2)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

void *getDominantScriptOutputMap(int a1)
{
  if (a1 != 29)
  {
    v3 = 0;
  }

  if (a1 != 4)
  {
    v2 = v3;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 != 2)
  {
    v4 = 0;
  }

  if (a1 == 1)
  {
  }

  if (!a1)
  {
  }

  if (a1 <= 2)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

double CoreNLP::TaggingFeatureExtractor::extractSharedData(int a1, uint64_t *a2, CFStringRef theString, int a4)
{
  v6 = *a2;
  if (a2[1] != *a2)
  {
    v18 = v4;
    v19 = v5;
    v10 = 0;
    do
    {
      v11 = *(v6 + 8 * v10);
      v12 = *v11;
      v16 = *(v11 + 2);
      v15 = v12;
      CoreNLP::extractLowercaseUTF8(theString, &v15, a4, &v17);
      v13 = *(*a2 + 8 * v10);
      if (*(v13 + 103) < 0)
      {
        operator delete(*(v13 + 80));
      }

      result = *&v17.__r_.__value_.__l.__data_;
      *(v13 + 80) = v17;
      ++v10;
      v6 = *a2;
    }

    while (v10 < (a2[1] - *a2) >> 3);
  }

  return result;
}

int8x16_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*,false>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v10 = a2 - 3;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:
        v49 = (*a3)(v11 + 1, v11);
        v50 = (*a3)(v8, v11 + 1);
        if (v49)
        {
          v51 = *v11;
          if (v50)
          {
            goto LABEL_78;
          }

          *v11 = v11[1];
          v11[1] = v51;
          if (!(*a3)(v8, v11 + 1))
          {
            return result;
          }

          v51 = v11[1];
          v11[1] = *v8;
LABEL_79:
          *v8 = v51;
          return result;
        }

        if (!v50)
        {
          return result;
        }

        v57 = v11[1];
        v11[1] = *v8;
        *v8 = v57;
        goto LABEL_104;
      case 4uLL:
        v54 = (*a3)(v11 + 1, v11);
        v55 = (*a3)(v11 + 2, v11 + 1);
        if (v54)
        {
          v56 = *v11;
          if (v55)
          {
            *v11 = v11[2];
            v11[2] = v56;
          }

          else
          {
            *v11 = v11[1];
            v11[1] = v56;
            if ((*a3)(v11 + 2, v11 + 1))
            {
              *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
            }
          }
        }

        else if (v55)
        {
          *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
          if ((*a3)(v11 + 1, v11))
          {
            *v11 = vextq_s8(*v11, *v11, 8uLL);
          }
        }

        if (!(*a3)(v8, v11 + 2))
        {
          return result;
        }

        v58 = v11[2];
        v11[2] = *v8;
        *v8 = v58;
        if (!(*a3)(v11 + 2, v11 + 1))
        {
          return result;
        }

        *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
LABEL_104:
        if ((*a3)(v11 + 1, v11))
        {
          result = vextq_s8(*v11, *v11, 8uLL);
          *v11 = result;
        }

        return result;
      case 5uLL:

        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*,0>(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, a3);
        return result;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*>(v11, a2, a3);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*,NLLanguageHypothesis*>(v11, a2, a2, a3);
      }

      return result;
    }

    v15 = &v11[v14 >> 1];
    v16 = *a3;
    if (v14 >= 0x81)
    {
      v17 = v16(&v11[v14 >> 1], v11);
      v18 = (*a3)(a2 - 1, v15);
      if (v17)
      {
        v19 = *a1;
        if (v18)
        {
          *a1 = *v8;
          goto LABEL_27;
        }

        *a1 = *v15;
        *v15 = v19;
        if ((*a3)(a2 - 1, v15))
        {
          v19 = *v15;
          *v15 = *v8;
LABEL_27:
          *v8 = v19;
        }
      }

      else if (v18)
      {
        v23 = *v15;
        *v15 = *v8;
        *v8 = v23;
        if ((*a3)(v15, a1))
        {
          v24 = *a1;
          *a1 = *v15;
          *v15 = v24;
        }
      }

      v27 = v15 - 1;
      v28 = (*a3)(v15 - 1, a1 + 1);
      v29 = (*a3)(a2 - 2, v15 - 1);
      if (v28)
      {
        v30 = a1[1];
        if (v29)
        {
          a1[1] = *v9;
          goto LABEL_39;
        }

        a1[1] = *v27;
        *v27 = v30;
        if ((*a3)(a2 - 2, v15 - 1))
        {
          v30 = *v27;
          *v27 = *v9;
LABEL_39:
          *v9 = v30;
        }
      }

      else if (v29)
      {
        v31 = *v27;
        *v27 = *v9;
        *v9 = v31;
        if ((*a3)(v15 - 1, a1 + 1))
        {
          v32 = a1[1];
          a1[1] = *v27;
          *v27 = v32;
        }
      }

      v33 = (*a3)(v15 + 1, a1 + 2);
      v34 = (*a3)(a2 - 3, v15 + 1);
      if (v33)
      {
        v35 = a1[2];
        if (v34)
        {
          a1[2] = *v10;
          goto LABEL_48;
        }

        a1[2] = v15[1];
        v15[1] = v35;
        if ((*a3)(a2 - 3, v15 + 1))
        {
          v35 = v15[1];
          v15[1] = *v10;
LABEL_48:
          *v10 = v35;
        }
      }

      else if (v34)
      {
        v36 = v15[1];
        v15[1] = *v10;
        *v10 = v36;
        if ((*a3)(v15 + 1, a1 + 2))
        {
          v37 = a1[2];
          a1[2] = v15[1];
          v15[1] = v37;
        }
      }

      v38 = (*a3)(v15, v15 - 1);
      v39 = (*a3)(v15 + 1, v15);
      if (v38)
      {
        v40 = *v27;
        if (v39)
        {
          v41 = *v15;
          *v27 = v15[1];
          v15[1] = v40;
LABEL_58:
          v45 = *a1;
          *a1 = v41;
          *v15 = v45;
          goto LABEL_59;
        }

        *v27 = *v15;
        *v15 = v40;
        v44 = (*a3)(v15 + 1, v15);
        v41 = *v15;
        if (!v44)
        {
          goto LABEL_58;
        }

        v43 = v15[1];
        *v15 = v43;
        v15[1] = v41;
      }

      else
      {
        v41 = *v15;
        if (!v39)
        {
          goto LABEL_58;
        }

        *v15 = v15[1];
        v15[1] = v41;
        v42 = (*a3)(v15, v15 - 1);
        v41 = *v15;
        if (!v42)
        {
          goto LABEL_58;
        }

        v43 = *v27;
        *v27 = v41;
        *v15 = v43;
      }

      v41 = v43;
      goto LABEL_58;
    }

    v20 = v16(v11, &v11[v14 >> 1]);
    v21 = (*a3)(a2 - 1, a1);
    if (v20)
    {
      v22 = *v15;
      if (v21)
      {
        *v15 = *v8;
LABEL_36:
        *v8 = v22;
        goto LABEL_59;
      }

      *v15 = *a1;
      *a1 = v22;
      if ((*a3)(a2 - 1, a1))
      {
        v22 = *a1;
        *a1 = *v8;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v25 = *a1;
      *a1 = *v8;
      *v8 = v25;
      if ((*a3)(a1, v15))
      {
        v26 = *v15;
        *v15 = *a1;
        *a1 = v26;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 1, a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,NLLanguageHypothesis *,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&)>(a1, a2, a3);
      goto LABEL_66;
    }

    v46 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,NLLanguageHypothesis *,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&)>(a1, a2, a3);
    if ((v47 & 1) == 0)
    {
      goto LABEL_64;
    }

    v48 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*>(a1, v46, a3);
    v11 = v46 + 1;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*>(v46 + 1, a2, a3))
    {
      a4 = -v13;
      a2 = v46;
      if (v48)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v48)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*,false>(a1, v46, a3, -v13, a5 & 1);
      v11 = v46 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v14 < 2)
  {
    return result;
  }

  if (v14 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)(a2 - 1, v11))
  {
    v51 = *v11;
LABEL_78:
    *v11 = *v8;
    goto LABEL_79;
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*>(uint64_t result, void *a2, uint64_t (**a3)(void *, void))
{
  if (result != a2)
  {
    v14[7] = v3;
    v14[8] = v4;
    v6 = result;
    v7 = (result + 8);
    if ((result + 8) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v14[0] = *v10;
          v12 = v9;
          while (1)
          {
            *(v6 + v12 + 8) = *(v6 + v12);
            if (!v12)
            {
              break;
            }

            v12 -= 8;
            result = (*a3)(v14, v6 + v12);
            if ((result & 1) == 0)
            {
              v13 = (v6 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v6;
LABEL_10:
          *v13 = v14[0];
        }

        v7 = v10 + 1;
        v9 += 8;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

void CoreNLP::extractLowercaseUTF8(CFStringRef theString@<X1>, CFIndex *a2@<X0>, int a3@<W2>, std::string *a4@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (theString && (v6 = a2[1], v6 >= 1) && (*a2 & 0x8000000000000000) == 0 && (v9 = *a2 + v6, Length = CFStringGetLength(theString), v9 <= Length))
  {
    v13 = 2 * a2[1];
    v14 = MEMORY[0x1EEE9AC00](Length, v11);
    v16 = (v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = a2[1];
    MEMORY[0x1EEE9AC00](v14, v18);
    v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29.location = *a2;
    CFStringGetCharacters(theString, v29, v16);
    if (a3 == 4)
    {
      v21.location = a2[1];
      CoreNLP::getUTF8StringFromCFStringInRange(theString, *a2, v21, a4);
    }

    else
    {
      v22 = a2[1];
      if (v22 >= 1)
      {
        v23 = v20;
        v24 = v22;
        do
        {
          v25 = *v16++;
          *v23++ = CoreNLP::toLowerLatin(v25);
          --v24;
        }

        while (v24);
      }

      a4->__r_.__value_.__r.__words[0] = 0;
      a4->__r_.__value_.__l.__size_ = 0;
      a4->__r_.__value_.__r.__words[2] = 0;
      CoreNLP::convertCharactersToUTF8(v20, v22, a4, 1);
    }

    v26 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = *MEMORY[0x1E69E9840];

    std::string::basic_string[abi:ne200100]<0>(a4, "");
  }
}

void sub_19D19C9FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::toLowerLatin(uint64_t this)
{
  if ((this - 216) < 7 || (this - 65) < 0x1Au || (this - 192) <= 0x16u)
  {
    LOWORD(this) = this | 0x20;
  }

  else if (this == 376)
  {
    LOWORD(this) = 255;
  }

  else if (this)
  {
    if ((this - 313) < 0xF || (this - 377) < 5 || (this - 461) < 0xF)
    {
      LOWORD(this) = this + 1;
    }
  }

  else if ((this - 256) < 0x37 || (this - 330) < 0x2Du || (vmaxv_u16(vcgt_u16(0x9001100270011, vadd_s16(vdup_n_s16(this), 0xFDBAFDDEFE08FE22))) & 1) != 0 || this == 500)
  {
    LOWORD(this) = this | 1;
  }

  return this;
}

void std::vector<NLLanguageHypothesis>::resize(void *a1, unint64_t a2)
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
    std::vector<NLLanguageHypothesis>::__append(a1, a2 - v2);
  }
}

uint64_t CoreNLP::convertCharactersToUTF8(uint64_t a1, int a2, std::string *this, int a4)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  if (a2 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(a1 + 2 * v8);
      v10 = v8 + 1;
      if (v9 >> 10 != 54 || v10 >= a2)
      {
        break;
      }

      v13 = *(a1 + 2 * v10);
      if (v13 >> 10 != 55)
      {
        break;
      }

      v14 = v13 + (v9 << 10) - 56613888;
      std::string::push_back(this, (v14 >> 18) - 16);
      std::string::push_back(this, (v14 >> 12) & 0x3F | 0x80);
      std::string::push_back(this, (v14 >> 6) & 0x3F | 0x80);
      LOBYTE(v9) = v13 & 0x3F | 0x80;
LABEL_29:
      std::string::push_back(this, v9);
      v8 = v10 + 1;
      if (v10 + 1 >= a2)
      {
        return 0;
      }
    }

    if (a4)
    {
      if (v9 >> 2 == 2054)
      {
        LOBYTE(v9) = 39;
LABEL_28:
        LODWORD(v10) = v8;
        goto LABEL_29;
      }

      if ((v9 & 0xFFFFFF7F) == 0x3F)
      {
        LOBYTE(v9) = 63;
        goto LABEL_28;
      }

      if ((v9 & 0xFFFFFF7F) == 0x21)
      {
        LOBYTE(v9) = 33;
        goto LABEL_28;
      }

      if (v9 <= 0x7F)
      {
        goto LABEL_28;
      }

      if (v9 <= 0x7FF)
      {
        v12 = (v9 >> 6) | 0xFFFFFFC0;
        goto LABEL_27;
      }
    }

    else
    {
      if (v9 <= 0x7F)
      {
        goto LABEL_28;
      }

      if (v9 <= 0x7FF)
      {
        v12 = (v9 >> 6) | 0xFFFFFFC0;
LABEL_27:
        std::string::push_back(this, v12);
        LOBYTE(v9) = v9 & 0x3F | 0x80;
        goto LABEL_28;
      }
    }

    std::string::push_back(this, (v9 >> 12) | 0xE0);
    v12 = (v9 >> 6) & 0x3F | 0xFFFFFF80;
    goto LABEL_27;
  }

  return 0;
}

uint64_t std::vector<CoreNLP::NLAttributedToken *>::__init_with_size[abi:ne200100]<CoreNLP::NLAttributedToken **,CoreNLP::NLAttributedToken **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CoreNLP::NLAttributedToken *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D19CD68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

void CoreNLP::Gazetteer::label(CoreNLP::Gazetteer *this@<X0>, __CFString *a2@<X1>, std::string *a3@<X8>)
{
  v5 = *(this + 68);
  if (v5 == 1)
  {
    CoreNLP::getUTF8StringFromCFString(a2, __p);
  }

  else
  {
    CoreNLP::Gazetteer::normalizeEntity(this, a2, v6);
    *__p = *v6;
    v9 = v7;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
  }

  CoreNLP::Gazetteer::label(this, __p, a3);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      return;
    }
  }

  else if (v5)
  {
    return;
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_19D19CE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if ((v18 & 1) == 0)
  {
    CoreNLP::Gazetteer::label(&a9);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::TaggingModelManager::applyCustomGazetteer(uint64_t a1, uint64_t *a2, int a3)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 608);
  __p = 0;
  v87 = 0;
  v88 = 0;
  LODWORD(v91) = 0;
  HIDWORD(v91) = a3;
  memset(&v89, 0, 24);
  std::vector<NLLanguageID>::__init_with_size[abi:ne200100]<NLLanguageID const*,NLLanguageID const*>(&v89, &v91, &v92, 2uLL);
  v77 = v5;
  first = v89.__first_;
  begin = v89.__begin_;
  v80 = a1;
  v9 = 0;
  if (v89.__first_ != v89.__begin_)
  {
    v10 = (a1 + 496);
    do
    {
      v11 = *v10;
      if (*v10)
      {
        data = first->__r_.__value_.__l.__data_;
        v13 = v10;
        do
        {
          if (*(v11 + 32) >= data)
          {
            v13 = v11;
          }

          v11 = *(v11 + 8 * (*(v11 + 32) < data));
        }

        while (v11);
        if (v13 != v10 && data >= *(v13 + 8))
        {
          v14 = v13[5];
          v15 = v13 + 6;
          if (v14 != v13 + 6)
          {
            do
            {
              v16 = v14[5];
              if (v16)
              {
                v17 = CoreNLP::unwrapGazetteer(v16, v6);
                v18 = *(v14 + 8);
                v19 = v87;
                if (v87 >= v88)
                {
                  v20 = (v87 - __p) >> 4;
                  v21 = v20 + 1;
                  if ((v20 + 1) >> 60)
                  {
                    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
                  }

                  v22 = v88 - __p;
                  if ((v88 - __p) >> 3 > v21)
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
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<CoreNLP::NLTagSchemeType,CoreNLP::Gazetteer *>>>(&__p, v23);
                  }

                  v24 = (16 * v20);
                  *v24 = v18;
                  v24[1] = v17;
                  v9 = (16 * v20 + 16);
                  memcpy((16 * v20 - (v87 - __p)), __p, v87 - __p);
                  v25 = __p;
                  __p = (16 * v20 - (v87 - __p));
                  v87 = v9;
                  v88 = 0;
                  if (v25)
                  {
                    operator delete(v25);
                  }
                }

                else
                {
                  *v87 = v18;
                  *(v19 + 1) = v17;
                  v9 = v19 + 16;
                }

                v87 = v9;
              }

              v26 = v14[1];
              if (v26)
              {
                do
                {
                  v27 = v26;
                  v26 = *v26;
                }

                while (v26);
              }

              else
              {
                do
                {
                  v27 = v14[2];
                  v28 = *v27 == v14;
                  v14 = v27;
                }

                while (!v28);
              }

              v14 = v27;
            }

            while (v27 != v15);
          }

          v29 = v77;
          if (*(*(v9 - 1) + 64) > v77)
          {
            v29 = *(*(v9 - 1) + 64);
          }

          v77 = v29;
        }
      }

      first = (first + 4);
    }

    while (first != begin);
    first = v89.__first_;
  }

  if (first)
  {
    v89.__begin_ = first;
    operator delete(first);
    v9 = v87;
  }

  v30 = __p;
  if (__p != v9)
  {
    v31 = *a2;
    v32 = a2[1];
    if (v32 != *a2)
    {
      v33 = 0;
      v34 = v77;
      while (1)
      {
        v35 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v78 = v33;
        LODWORD(v36) = v33;
        if (v34 >= 1 && (v33 & 0x80000000) == 0)
        {
          v36 = v33;
          do
          {
            v37 = v92;
            if (v36 >= (v32 - v31) >> 3)
            {
              goto LABEL_87;
            }

            if (v91 == v92)
            {
              std::vector<std::string>::push_back[abi:ne200100](&v91, (*(v31 + 8 * v36) + 80));
            }

            else
            {
              if (*(v92 - 1) >= 0)
              {
                v38 = *(v92 - 1);
              }

              else
              {
                v38 = *(v92 - 2);
              }

              std::string::basic_string[abi:ne200100](&v85, v38 + 1);
              if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v39 = &v85;
              }

              else
              {
                v39 = v85.__r_.__value_.__r.__words[0];
              }

              if (v38)
              {
                if (*(v37 - 1) >= 0)
                {
                  v40 = v37 - 24;
                }

                else
                {
                  v40 = *(v37 - 3);
                }

                memmove(v39, v40, v38);
              }

              *(&v39->__r_.__value_.__l.__data_ + v38) = 32;
              v41 = *(*a2 + 8 * v36);
              v44 = *(v41 + 80);
              v42 = v41 + 80;
              v43 = v44;
              v45 = *(v42 + 23);
              if (v45 >= 0)
              {
                v46 = v42;
              }

              else
              {
                v46 = v43;
              }

              if (v45 >= 0)
              {
                v47 = *(v42 + 23);
              }

              else
              {
                v47 = *(v42 + 8);
              }

              v48 = std::string::append(&v85, v46, v47);
              v49 = v48->__r_.__value_.__r.__words[0];
              v90[0] = v48->__r_.__value_.__l.__size_;
              *(v90 + 7) = *(&v48->__r_.__value_.__r.__words[1] + 7);
              v50 = HIBYTE(v48->__r_.__value_.__r.__words[2]);
              v48->__r_.__value_.__l.__size_ = 0;
              v48->__r_.__value_.__r.__words[2] = 0;
              v48->__r_.__value_.__r.__words[0] = 0;
              v51 = v92;
              if (v92 >= v93)
              {
                v53 = 0xAAAAAAAAAAAAAAABLL * ((v92 - v91) >> 3);
                v54 = v53 + 1;
                if (v53 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((v93 - v91) >> 3) > v54)
                {
                  v54 = 0x5555555555555556 * ((v93 - v91) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v93 - v91) >> 3) >= 0x555555555555555)
                {
                  v55 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v55 = v54;
                }

                v89.__end_cap_.__value_ = &v91;
                if (v55)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v91, v55);
                }

                v56 = 8 * ((v92 - v91) >> 3);
                *v56 = v49;
                *(v56 + 8) = v90[0];
                *(v56 + 15) = *(v90 + 7);
                *(v56 + 23) = v50;
                v52 = 24 * v53 + 24;
                v57 = (24 * v53 - (v92 - v91));
                memcpy(v57, v91, v92 - v91);
                v58 = v91;
                v59 = v93;
                v91 = v57;
                v92 = v52;
                v93 = 0;
                v89.__end_ = v58;
                v89.__end_cap_.__value_ = v59;
                v89.__first_ = v58;
                v89.__begin_ = v58;
                std::__split_buffer<std::string>::~__split_buffer(&v89);
              }

              else
              {
                *v92 = v49;
                *(v51 + 1) = v90[0];
                *(v51 + 15) = *(v90 + 7);
                v51[23] = v50;
                v52 = (v51 + 24);
              }

              v92 = v52;
              if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v85.__r_.__value_.__l.__data_);
              }
            }

            v31 = *a2;
            v32 = a2[1];
            if (v36 + 1 < (v32 - *a2) >> 3 && (v60 = *(v31 + 8 * v36 + 8), (*(v60 + 73) & 2) != 0) && *(v60 + 8) == 1)
            {
              v34 += 2;
            }

            else
            {
              v61 = *(v31 + 8 * v36);
              if ((*(v61 + 72) & 0x80) != 0 && *(v61 + 8) > 1)
              {
                ++v34;
              }
            }

            ++v36;
            v62 = __OFSUB__(v34--, 1);
          }

          while (!((v34 < 0) ^ v62 | (v34 == 0)));
          v37 = v92;
LABEL_87:
          v35 = -1431655765 * ((v37 - v91) >> 3);
          v33 = v78;
          v34 = v77;
        }

        v63 = (v35 - 1);
        if (v35 < 1)
        {
          goto LABEL_111;
        }

        v64 = v35;
        v82 = 8 * v36 + 8 * v63;
        v79 = ~v63 + v35;
        v65 = v80;
        while (2)
        {
          v66 = __p;
          v83 = v87;
          v84 = v64 - 1;
          if (__p == v87)
          {
            goto LABEL_108;
          }

          v81 = v64;
          v67 = 0;
          do
          {
            *&v85.__r_.__value_.__l.__data_ = *v66;
            CoreNLP::Gazetteer::label(v85.__r_.__value_.__l.__size_, &v91[v84], &v89);
            end_high = HIBYTE(v89.__end_);
            if (SHIBYTE(v89.__end_) < 0)
            {
              end_high = v89.__begin_;
            }

            if (end_high)
            {
              v69 = std::__tree<std::string>::find<std::string>(v65 + 512, &v89.__first_);
              if (v80 + 520 == v69)
              {
                v70 = *(v65 + 528);
                v90[0] = &v89;
                *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v65 + 512, &v89.__first_) + 56) = v70;
                if ((v70 & 0x80000000) != 0)
                {
                  goto LABEL_104;
                }
              }

              else
              {
                LODWORD(v70) = *(v69 + 56);
                if ((v70 & 0x80000000) != 0)
                {
                  goto LABEL_104;
                }
              }

              v71 = v70 + 100;
              v72 = v79;
              v73 = v82;
              v74 = v81;
              do
              {
                v75 = *(*a2 + 0x5555555555555555 * (v92 - v91) + v73);
                v90[0] = &v85;
                *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v75 + 24, &v85) + 10) = v71;
                if (v72)
                {
                  *(*(*a2 + 0x5555555555555555 * (v92 - v91) + v73) + 104) = 1;
                }

                --v74;
                v73 -= 8;
                ++v72;
              }

              while (v74 > 0);
              v67 = 1;
              v65 = v80;
            }

LABEL_104:
            if (SHIBYTE(v89.__end_) < 0)
            {
              operator delete(v89.__first_);
            }

            v66 += 16;
          }

          while (v66 != v83);
          if ((v67 & 1) == 0)
          {
LABEL_108:
            v82 -= 8;
            v64 = v84;
            if (v84 <= 0)
            {
              v34 = v77;
              v33 = v78;
              goto LABEL_111;
            }

            continue;
          }

          break;
        }

        v33 = v78 + v84;
        v34 = v77;
LABEL_111:
        ++v33;
        v89.__first_ = &v91;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v89);
        v31 = *a2;
        v32 = a2[1];
        if (v33 >= ((v32 - *a2) >> 3))
        {
          v30 = __p;
          break;
        }
      }
    }
  }

  if (v30)
  {
    v87 = v30;
    operator delete(v30);
  }

  v76 = *MEMORY[0x1E69E9840];
}

void sub_19D19D598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef NLGazetteerCopyLabel(CoreNLP *a1, __CFString *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = CoreNLP::unwrapGazetteer(a1, a2);
    CoreNLP::Gazetteer::label(v4, a2, &cStr);
    if (SHIBYTE(cStr.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!cStr.__r_.__value_.__l.__size_)
      {
        v2 = 0;
LABEL_12:
        operator delete(cStr.__r_.__value_.__l.__data_);
        return v2;
      }

      p_cStr = cStr.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&cStr.__r_.__value_.__s + 23))
      {
        return 0;
      }

      p_cStr = &cStr;
    }

    v2 = CFStringCreateWithCString(0, p_cStr, 0x8000100u);
    if (SHIBYTE(cStr.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_12;
    }
  }

  return v2;
}

void sub_19D19D6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<NLLanguageID>::__init_with_size[abi:ne200100]<NLLanguageID const*,NLLanguageID const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D19D74C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::Gazetteer::normalizeEntity(CoreNLP::Gazetteer *this@<X0>, __CFString *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (this + 56);
  if (!*(this + 7))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(Mutable, kNLTagSchemeTokenType[0]);
    NLTaggerCreate();
  }

  Mutable = 0;
  p_Mutable = &Mutable;
  v27 = 0x3002000000;
  v28 = __Block_byref_object_copy__6;
  v29 = __Block_byref_object_dispose__6;
  v30 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v8 = *(this + 6);
  if (v8)
  {
    LocaleLanguage = CoreNLP::getLocaleLanguage(v8, v7);
  }

  else
  {
    LocaleLanguage = 0;
  }

  NLTaggerSetString(*v6, a2);
  v10 = *(this + 6);
  if (v10)
  {
    v11 = *v6;
    Length = CFStringGetLength(a2);
    NLTaggerSetLocaleForRange(v11, v10, 0, Length);
  }

  v13 = *v6;
  v14 = CFStringGetLength(a2);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = ___ZN7CoreNLP9Gazetteer15normalizeEntityEPK10__CFString_block_invoke;
  v20[3] = &unk_1E7625C78;
  v20[4] = &Mutable;
  v20[5] = &v21;
  v20[6] = a2;
  NLTaggerEnumerateTokens(v13, 0, 0, v14, 4uLL, v20);
  v15 = CFStringGetLength(p_Mutable[5]);
  v18[0] = 0;
  v18[1] = v15;
  v18[2] = 0;
  CoreNLP::extractLowercaseUTF8(p_Mutable[5], v18, LocaleLanguage, &__p);
  v16 = v22;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a3 + 24) = *(v16 + 6);
    if (v17 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = __p;
    *(a3 + 24) = *(v16 + 6);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&Mutable, 8);
  if (v30)
  {
    CFRelease(v30);
  }
}

void sub_19D19D9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v27 - 112), 8);
  nlp::CFScopedPtr<__CFString *>::reset((v26 + 40), 0);
  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
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

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void CoreNLP::Gazetteer::label(void *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v4 = a1 + 1;
  v5 = *a1;
  if (*a1 == a1 + 1)
  {
LABEL_15:

    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  else
  {
    while (1)
    {
      v7 = *(a2 + 23);
      v8 = v7 >= 0 ? a2 : *a2;
      v9 = v7 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (BloomFilter::possiblyContains((v5 + 7), v8, v9))
      {
        break;
      }

      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
      if (v11 == v4)
      {
        goto LABEL_15;
      }
    }

    if (*(v5 + 55) < 0)
    {
      v14 = v5[4];
      v15 = v5[5];

      std::string::__init_copy_ctor_external(a3, v14, v15);
    }

    else
    {
      v13 = *(v5 + 2);
      a3->__r_.__value_.__r.__words[2] = v5[6];
      *&a3->__r_.__value_.__l.__data_ = v13;
    }
  }
}

uint64_t BloomFilter::possiblyContains(BloomFilter *this, const char *a2, uint64_t a3)
{
  if (*(this + 6) < 1)
  {
    return 0;
  }

  v12[4] = v3;
  v12[5] = v4;
  result = 0;
  if (a3 && a2 && *(this + 5))
  {
    MurmurHash3_x64_128(a2, a3, 0, v12);
    v7 = *(this + 6);
    if (v7 < 1)
    {
      return 1;
    }

    v8 = v12[0];
    v9 = *(this + 1);
    while (1)
    {
      v10 = v8 % (8 * *(this + 5));
      if (v9)
      {
        if (v10 >= v9 || ((*(*this + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v11 = *(this + 4);
        if (!v11 || ((*(v11 + (v10 >> 3)) >> (v10 & 7)) & 1) == 0)
        {
          return 0;
        }
      }

      v8 += v12[1];
      if (!--v7)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t MurmurHash3_x64_128(uint64_t result, int a2, unsigned int a3, unint64_t *a4)
{
  v4 = a3;
  if (a2 < 16)
  {
    v7 = a3;
  }

  else
  {
    v5 = (result + 8);
    v6 = (a2 / 16);
    v7 = v4;
    do
    {
      v4 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * *(v5 - 1)) | ((0x87C37B91114253D5 * *(v5 - 1)) >> 33))) ^ v4, 37) + v7) + 1390208809;
      v7 = 5 * (v4 + __ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * *v5) | ((0x4CF5AD432745937FLL * *v5) >> 31))) ^ v7, 33)) + 944331445;
      v5 += 2;
      --v6;
    }

    while (v6);
  }

  v8 = (result + 16 * (a2 / 16));
  v9 = 0;
  switch(a2 & 0xF)
  {
    case 1:
      goto LABEL_21;
    case 2:
      goto LABEL_20;
    case 3:
      goto LABEL_19;
    case 4:
      goto LABEL_18;
    case 5:
      goto LABEL_17;
    case 6:
      goto LABEL_16;
    case 7:
      goto LABEL_15;
    case 8:
      goto LABEL_14;
    case 9:
      goto LABEL_13;
    case 0xA:
      goto LABEL_12;
    case 0xB:
      goto LABEL_11;
    case 0xC:
      goto LABEL_10;
    case 0xD:
      goto LABEL_9;
    case 0xE:
      goto LABEL_8;
    case 0xF:
      v9 = v8[14] << 48;
LABEL_8:
      v9 |= v8[13] << 40;
LABEL_9:
      v9 ^= v8[12] << 32;
LABEL_10:
      v9 ^= v8[11] << 24;
LABEL_11:
      v9 ^= v8[10] << 16;
LABEL_12:
      v9 ^= v8[9] << 8;
LABEL_13:
      v7 ^= 0x87C37B91114253D5 * ((0x4E8B26FE00000000 * (v9 ^ v8[8])) | ((0x4CF5AD432745937FLL * (v9 ^ v8[8])) >> 31));
LABEL_14:
      v9 = v8[7] << 56;
LABEL_15:
      v9 |= v8[6] << 48;
LABEL_16:
      v9 ^= v8[5] << 40;
LABEL_17:
      v9 ^= v8[4] << 32;
LABEL_18:
      v9 ^= v8[3] << 24;
LABEL_19:
      v9 ^= v8[2] << 16;
LABEL_20:
      v9 ^= v8[1] << 8;
LABEL_21:
      v4 ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * (v9 ^ *v8)) | ((0x87C37B91114253D5 * (v9 ^ *v8)) >> 33));
      break;
    default:
      break;
  }

  v10 = v7 ^ a2;
  v11 = (v4 ^ a2) + v10;
  v12 = v11 + v10;
  v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) >> 33));
  v14 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) >> 33));
  v15 = v14 ^ (v14 >> 33);
  v16 = v15 + (v13 ^ (v13 >> 33));
  *a4 = v16;
  a4[1] = v16 + v15;
  return result;
}

void *___ZN7CoreNLP13TaggerManager15enumerateTokensE15NLTokenizerUnit7CFRangemU13block_pointerFv7NLTokenPbE_block_invoke_2(void *result, __int128 *a2, _BYTE *a3)
{
  if (*a2 == -1 || ((v5 = *(result[5] + 128) + *a2, *a2 = v5, v6 = result[6], v5 != -1) ? (v7 = v6 == -1) : (v7 = 1), v7 || (v5 >= v6 ? (v8 = *(a2 + 1) + v5 <= result[7] + v6) : (v8 = 0), !v8)))
  {
    if (a3)
    {
      *a3 = 1;
    }
  }

  else
  {
    v12 = v3;
    v13 = v4;
    v9 = result[4];
    v11 = *(a2 + 2);
    v10 = *a2;
    return (*(v9 + 16))(v9, &v10, a3);
  }

  return result;
}

__CFString *NLTaggerCopyTagForCurrentToken(__CFString *result, __CFString *a2)
{
  if (result)
  {
    v3 = CoreNLP::unwrapGazetteer(result, a2);

    return CoreNLP::TaggerManager::copyTagForCurrentToken(v3, a2);
  }

  return result;
}

__CFString *CoreNLP::CompositeTagger::copyTagForCurrentToken(CoreNLP::CompositeTagger **this, const __CFString *a2)
{
  v4 = CoreNLP::CompositeTagger::schemeType(this, a2);
  if ((v4 - 8) < 2)
  {
    goto LABEL_4;
  }

  if (!v4)
  {
    return 0;
  }

  if (v4 != 12)
  {
    v7 = this[113];
    if (v7 != (this + 109))
    {
      v5 = (v7 + 16);
      goto LABEL_5;
    }

    return 0;
  }

LABEL_4:
  v5 = (this + 92);
LABEL_5:

  return CoreNLP::CompositeTagger::createTag(this, 0, v5, a2);
}

__CFString *CoreNLP::TaggerManager::copyTagForCurrentToken(CoreNLP::CompositeTagger ***this, const __CFString *a2)
{
  if (*(this + 57))
  {
    return 0;
  }

  else
  {
    return CoreNLP::CompositeTagger::copyTagForCurrentToken(this[5], a2);
  }
}

__CFString *CoreNLP::CompositeTagger::createFixedTag(CoreNLP::CompositeTagger *this, CoreNLP::NLAttributedToken *a2, CFStringRef theString1)
{
  if (CFStringCompare(theString1, kNLTagSchemeInternalClass[0], 0))
  {
    v11 = 1;
    v12 = &v11;
    if (*(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(a2 + 24, &v11) + 10) == 2)
    {
      v5 = NLLexicalClassSentenceTerminator;
      return *v5;
    }

    if ((*(a2 + 76) & 8) == 0)
    {
      v11 = 1;
      v12 = &v11;
      if (*(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(a2 + 24, &v11) + 10) >= 2)
      {
        v10 = 1;
        v12 = &v10;
        if (*(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(a2 + 24, &v10) + 10) <= 13)
        {
          v11 = 1;
          v12 = &v11;
          v8 = *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(a2 + 24, &v11) + 10);
          if (v8 > 7)
          {
            switch(v8)
            {
              case 8:
                v5 = NLLexicalClassCloseParenthesis;
                return *v5;
              case 9:
                v5 = NLLexicalClassWordJoiner;
                return *v5;
              case 11:
                v5 = NLLexicalClassDash;
                return *v5;
            }
          }

          else
          {
            switch(v8)
            {
              case 5:
                v5 = NLLexicalClassOpenQuote;
                return *v5;
              case 6:
                v5 = NLLexicalClassCloseQuote;
                return *v5;
              case 7:
                v5 = NLLexicalClassOpenParenthesis;
                return *v5;
            }
          }

          v5 = NLLexicalClassOtherPunctuation;
          return *v5;
        }
      }

      v11 = 1;
      v12 = &v11;
      if (*(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(a2 + 24, &v11) + 10) == 89)
      {
        v5 = NLTokenTypeWhitespace;
        return *v5;
      }

      v11 = 1;
      v12 = &v11;
      if (*(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(a2 + 24, &v11) + 10) == 90)
      {
        v5 = NLLexicalClassParagraphBreak;
        return *v5;
      }

      if (CFStringCompare(theString1, kNLTagSchemeLexicalClass[0], 0) == kCFCompareEqualTo)
      {
        v5 = NLLexicalClassOtherWord;
        return *v5;
      }
    }

    v5 = NLTokenTypeOther;
    return *v5;
  }

  v6 = *(a2 + 9);
  if ((v6 & 0x2000000) != 0)
  {
    return @".";
  }

  if ((v6 & 0x4000000) != 0)
  {
    return @"?";
  }

  if ((v6 & 0x8000000) != 0)
  {
    return @"!";
  }

  if ((v6 & 0x800000000) != 0)
  {
    return @"SYM";
  }

  v11 = 1;
  v12 = &v11;
  v7 = *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(a2 + 24, &v11) + 10);
  if (v7 > 9)
  {
    if ((v7 - 89) < 2)
    {
      return @" ";
    }

    if (v7 == 10)
    {
      return @",";
    }

    if (v7 == 11)
    {
      return @"-";
    }

    return @"SYM";
  }

  if (v7 <= 6)
  {
    if (v7 == 5)
    {
      return @"“";
    }

    if (v7 == 6)
    {
      return @"”";
    }

    return @"SYM";
  }

  if (v7 == 7)
  {
    return CFSTR("(");
  }

  if (v7 != 8)
  {
    return @"-";
  }

  return @"");
}

void sub_19D19E614(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  std::unique_ptr<CoreNLP::EmbeddingManager>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<CoreNLP::EmbeddingManager>::~unique_ptr[abi:ne200100](&a10);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D19E600);
}

void CoreNLP::EmbeddingManager::EmbeddingManager(CoreNLP::EmbeddingManager *this, const __CFDictionary *a2)
{
  v127[4] = *MEMORY[0x1E69E9840];
  *this = 0;
  v4 = (this + 8);
  v89 = 1;
  v90 = @"embedding.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v91, &v89, 1);
  LODWORD(valuePtr) = 10;
  std::map<long,__CFString const*>::map[abi:ne200100](&valuePtr + 1, &v91);
  v110 = 1;
  v111 = @"embedding.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&buf, &v110, 1);
  v116 = 4;
  std::map<long,__CFString const*>::map[abi:ne200100](v117, &buf);
  v108 = 1;
  v109 = @"embedding.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v87, &v108, 1);
  v118 = 12;
  std::map<long,__CFString const*>::map[abi:ne200100](v119, &v87);
  v106 = 1;
  v107 = @"embedding.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&cf1, &v106, 1);
  v120 = 13;
  std::map<long,__CFString const*>::map[abi:ne200100](v121, &cf1);
  v104 = 1;
  v105 = @"embedding.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v83, &v104, 1);
  v122 = 29;
  std::map<long,__CFString const*>::map[abi:ne200100](v123, &v83);
  v102 = 1;
  v103 = @"embedding.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v81, &v102, 1);
  v124 = 19;
  std::map<long,__CFString const*>::map[abi:ne200100](v125, &v81);
  v100 = 1;
  v101 = @"embedding.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v79, &v100, 1);
  v126 = 25;
  std::map<long,__CFString const*>::map[abi:ne200100](v127, &v79);
  std::map<NLLanguageID,std::map<long,__CFString const*>>::map[abi:ne200100](v4, &valuePtr, 7);
  for (i = 0; i != -28; i -= 4)
  {
    std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v127[i], v127[i + 1]);
  }

  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v79, v80);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v81, v82);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v83, v84);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&cf1, v86);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v87, v88);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&buf, *(&buf + 1));
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v91, *(&v91 + 1));
  v96 = unk_1E7625348;
  v97 = xmmword_1E7625358;
  v98 = unk_1E7625368;
  v99 = xmmword_1E7625378;
  v92 = unk_1E7625308;
  v93 = xmmword_1E7625318;
  v94 = unk_1E7625328;
  v95 = xmmword_1E7625338;
  v91 = xmmword_1E76252F8;
  std::map<long,__CFString const*>::map[abi:ne200100](&buf, &v91, 9);
  LODWORD(valuePtr) = 10;
  std::map<long,__CFString const*>::map[abi:ne200100](&valuePtr + 1, &buf);
  v110 = 1;
  v111 = @"bilm.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v87, &v110, 1);
  v116 = 4;
  std::map<long,__CFString const*>::map[abi:ne200100](v117, &v87);
  v108 = 1;
  v109 = @"bilm.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&cf1, &v108, 1);
  v118 = 12;
  std::map<long,__CFString const*>::map[abi:ne200100](v119, &cf1);
  v106 = 1;
  v107 = @"bilm.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v83, &v106, 1);
  v120 = 29;
  std::map<long,__CFString const*>::map[abi:ne200100](v121, &v83);
  v104 = 1;
  v105 = @"bilm.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v81, &v104, 1);
  v122 = 19;
  std::map<long,__CFString const*>::map[abi:ne200100](v123, &v81);
  v102 = 1;
  v103 = @"bilm.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v79, &v102, 1);
  v124 = 13;
  std::map<long,__CFString const*>::map[abi:ne200100](v125, &v79);
  v100 = 1;
  v101 = @"bilm.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v89, &v100, 1);
  v126 = 25;
  std::map<long,__CFString const*>::map[abi:ne200100](v127, &v89);
  std::map<NLLanguageID,std::map<long,__CFString const*>>::map[abi:ne200100](this + 4, &valuePtr, 7);
  for (j = 0; j != -28; j -= 4)
  {
    std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v127[j], v127[j + 1]);
  }

  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v89, v90);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v79, v80);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v81, v82);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v83, v84);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&cf1, v86);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v87, v88);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&buf, *(&buf + 1));
  v91 = xmmword_1E7625388;
  v92 = unk_1E7625398;
  v93 = xmmword_1E76253A8;
  std::map<long,__CFString const*>::map[abi:ne200100](&buf, &v91, 3);
  LODWORD(valuePtr) = 10;
  std::map<long,__CFString const*>::map[abi:ne200100](&valuePtr + 1, &buf);
  v110 = 1;
  v111 = @"sentence.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v87, &v110, 1);
  v116 = 4;
  std::map<long,__CFString const*>::map[abi:ne200100](v117, &v87);
  v108 = 1;
  v109 = @"sentence.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&cf1, &v108, 1);
  v118 = 12;
  std::map<long,__CFString const*>::map[abi:ne200100](v119, &cf1);
  v106 = 1;
  v107 = @"sentence.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v83, &v106, 1);
  v120 = 29;
  std::map<long,__CFString const*>::map[abi:ne200100](v121, &v83);
  v104 = 1;
  v105 = @"sentence.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v81, &v104, 1);
  v122 = 19;
  std::map<long,__CFString const*>::map[abi:ne200100](v123, &v81);
  v102 = 1;
  v103 = @"sentence.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v79, &v102, 1);
  v124 = 13;
  std::map<long,__CFString const*>::map[abi:ne200100](v125, &v79);
  v100 = 1;
  v101 = @"sentence.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v89, &v100, 1);
  v126 = 25;
  std::map<long,__CFString const*>::map[abi:ne200100](v127, &v89);
  std::map<NLLanguageID,std::map<long,__CFString const*>>::map[abi:ne200100](this + 7, &valuePtr, 7);
  for (k = 0; k != -28; k -= 4)
  {
    std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v127[k], v127[k + 1]);
  }

  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v89, v90);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v79, v80);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v81, v82);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v83, v84);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&cf1, v86);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v87, v88);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&buf, *(&buf + 1));
  *&buf = 1;
  *(&buf + 1) = @"similarity.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v91, &buf, 1);
  LODWORD(valuePtr) = 10;
  std::map<long,__CFString const*>::map[abi:ne200100](&valuePtr + 1, &v91);
  std::map<NLLanguageID,std::map<long,__CFString const*>>::map[abi:ne200100](this + 10, &valuePtr, 1);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&valuePtr + 8, v115);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v91, *(&v91 + 1));
  Value = CFDictionaryGetValue(a2, kNLStringEmbeddingModelType[0]);
  v9 = Value;
  if (!Value || CFEqual(Value, kNLStringEmbeddingModelTypeCompressedWordEmbedding[0]))
  {
    operator new();
  }

  if (!CFEqual(v9, kNLStringEmbeddingModelTypeContextualWordEmbedding[0]))
  {
    if (CFEqual(v9, kNLStringEmbeddingModelTypeSentenceEmbedding[0]))
    {
      v14 = CFDictionaryGetValue(a2, kNLStringEmbeddingModelLocale[0]);
      v87 = v14;
      LocaleLanguage = CoreNLP::getLocaleLanguage(v14, v15);
      LODWORD(v81) = LocaleLanguage;
      LODWORD(v79) = 1;
      v17 = CFDictionaryGetValue(a2, kNLStringEmbeddingContextualModelArchitecture[0]);
      applesauce::CF::StringRef::from_get(v17, &cf1);
      if (cf1 && CFEqual(cf1, kNLStringEmbeddingMultilingualBERT[0]))
      {
        if (CFDictionaryContainsKey(a2, kNLStringEmbeddingModelUseANE[0]))
        {
          v18 = CFDictionaryGetValue(a2, kNLStringEmbeddingModelUseANE[0]);
          CFBooleanGetValue(v18);
        }

        std::string::basic_string[abi:ne200100]<0>(&valuePtr, "");
        if (CFDictionaryContainsKey(a2, kNLStringEmbeddingModelPath[0]))
        {
          v55 = CFDictionaryGetValue(a2, kNLStringEmbeddingModelPath[0]);
          applesauce::CF::convert_to<std::string,0>(v55, &v91);
          if (SHIBYTE(v115) < 0)
          {
            operator delete(valuePtr);
          }

          valuePtr = v91;
          v115 = v92;
          operator new();
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          CoreNLP::EmbeddingManager::EmbeddingManager();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unable to locate mBERT.bundle");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (LocaleLanguage == 10)
      {
        v19 = *(this + 8);
        if (!v19)
        {
          goto LABEL_32;
        }

        v20 = (this + 64);
        do
        {
          if (v19[8] >= 10)
          {
            v20 = v19;
          }

          v19 = *&v19[2 * (v19[8] < 10)];
        }

        while (v19);
        if (v20 == (this + 64) || v20[8] >= 11)
        {
LABEL_32:
          v20 = (this + 64);
        }

        v21 = *(this + 11);
        if (!v21)
        {
          goto LABEL_40;
        }

        v22 = (this + 88);
        do
        {
          if (v21[8] >= 10)
          {
            v22 = v21;
          }

          v21 = *&v21[2 * (v21[8] < 10)];
        }

        while (v21);
        if (v22 == (this + 88) || v22[8] >= 11)
        {
LABEL_40:
          v22 = (this + 88);
        }

        v23 = *(*(v20 + 5) + 40);
        v78 = *(*(v22 + 5) + 40);
        if (CFDictionaryContainsKey(a2, kNLStringEmbeddingModelVersion[0]))
        {
          v24 = CFDictionaryGetValue(a2, kNLStringEmbeddingModelVersion[0]);
          *&valuePtr = 0;
          CFNumberGetValue(v24, kCFNumberCFIndexType, &valuePtr);
          v27 = *(v20 + 6);
          v26 = (v20 + 12);
          v25 = v27;
          if (!v27)
          {
            goto LABEL_49;
          }

          v28 = v26;
          do
          {
            if (*(v25 + 32) >= valuePtr)
            {
              v28 = v25;
            }

            v25 = *(v25 + 8 * (*(v25 + 32) < valuePtr));
          }

          while (v25);
          if (v28 == v26 || valuePtr < *(v28 + 4))
          {
LABEL_49:
            v28 = v26;
          }

          v31 = *(v22 + 6);
          v30 = (v22 + 12);
          v29 = v31;
          if (!v31)
          {
            goto LABEL_57;
          }

          v32 = v30;
          do
          {
            if (*(v29 + 32) >= valuePtr)
            {
              v32 = v29;
            }

            v29 = *(v29 + 8 * (*(v29 + 32) < valuePtr));
          }

          while (v29);
          if (v32 == v30 || valuePtr < *(v32 + 4))
          {
LABEL_57:
            v32 = v30;
          }

          if (v28 == v26)
          {
            v70 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v70, "Unsupported version");
            __cxa_throw(v70, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v33 = v32 != v30;
          if (v32 != v30)
          {
            v78 = *(v32 + 5);
          }

          v23 = *(v28 + 5);
          CFNumberGetValue(v24, kCFNumberSInt32Type, &v79);
        }

        else
        {
          v33 = 1;
        }

        valuePtr = 0uLL;
        v115 = 0;
        if (v79 == 1)
        {
          CoreNLP::Resource::getAssetResource(v14, @"Embedding", v23, 0, &buf);
          if (!buf)
          {
            v73 = MEMORY[0x19EAF8290](v14);
            CoreNLP::getUTF8StringFromCFString(v73, &v91);
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              CoreNLP::EmbeddingManager::EmbeddingManager(&v91);
            }

            v74 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v74, "Unable to locate sentence embedding model");
            __cxa_throw(v74, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          CoreNLP::Resource::path(buf, v56, &v91);
          valuePtr = v91;
          v115 = v92;
          std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](&buf);
        }

        std::string::basic_string[abi:ne200100]<0>(&v91, "");
        if (v33)
        {
          CoreNLP::Resource::getAssetResource(v14, @"Embedding", v78, 0, &v83);
          if (!v83)
          {
            v75 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v75, "Unable to locate similarity model");
            __cxa_throw(v75, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          CoreNLP::Resource::path(v83, v57, &buf);
          if (SBYTE7(v92) < 0)
          {
            operator delete(v91);
          }

          v91 = buf;
          *&v92 = v113;
          std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](&v83);
        }

        operator new();
      }

      std::make_unique[abi:ne200100]<CoreNLP::SentenceEmbedding,__CFLocale const*&,char const(&)[1],char const(&)[1],NLLanguageID &,int &,0>();
    }

    v66 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v66, "Unsupported embedding model type");
    __cxa_throw(v66, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (getModelVersionForContextualEmbedding(__CFDictionary const*)::onceToken != -1)
  {
    CoreNLP::EmbeddingManager::EmbeddingManager();
  }

  *&valuePtr = 1;
  if (CFDictionaryContainsKey(a2, kNLStringEmbeddingModelVersion[0]))
  {
    v10 = CFDictionaryGetValue(a2, kNLStringEmbeddingModelVersion[0]);
    CFNumberGetValue(v10, kCFNumberCFIndexType, &valuePtr);
  }

  v11 = CFDictionaryGetValue(a2, kNLStringEmbeddingContextualModelArchitecture[0]);
  applesauce::CF::StringRef::from_get(v11, &v91);
  if (v91)
  {
    v12 = [getModelVersionForContextualEmbedding(__CFDictionary const*)::mappingArchitectureToVersion objectForKey:?];
    if (v12)
    {
      v13 = [v12 unsignedIntValue];
      *&valuePtr = v13;
    }

    else
    {
      v13 = valuePtr;
    }

    if (v91)
    {
      CFRelease(v91);
    }
  }

  else
  {
    v13 = valuePtr;
  }

  v87 = v13;
  v34 = CFDictionaryGetValue(a2, kNLStringEmbeddingContextualModelArchitecture[0]);
  applesauce::CF::StringRef::from_get(v34, &cf1);
  if (CFDictionaryContainsKey(a2, kNLStringEmbeddingModelUseANE[0]))
  {
    v35 = CFDictionaryGetValue(a2, kNLStringEmbeddingModelUseANE[0]);
    v36 = CFBooleanGetValue(v35) != 0;
  }

  else
  {
    v36 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&valuePtr, "");
  if (CFDictionaryContainsKey(a2, kNLStringEmbeddingModelPath[0]))
  {
    v37 = CFDictionaryGetValue(a2, kNLStringEmbeddingModelPath[0]);
    applesauce::CF::convert_to<std::string,0>(v37, &v91);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(valuePtr);
    }

    valuePtr = v91;
    v115 = v92;
  }

  v38 = v87;
  if (v87 == 1)
  {
    goto LABEL_75;
  }

  if (cf1)
  {
    if (CFEqual(cf1, kNLStringEmbeddingELMo[0]))
    {
LABEL_75:
      if (!v36)
      {
        v39 = CFDictionaryGetValue(a2, kNLStringEmbeddingModelLocale[0]);
        CoreNLP::getLocaleLanguage(v39, v40);
        v41 = HIBYTE(v115);
        if (SHIBYTE(v115) < 0)
        {
          v41 = *(&valuePtr + 1);
        }

        if (!v41)
        {
          v42 = CoreNLP::EmbeddingManager::systemAssetName(this, kNLStringEmbeddingModelTypeContextualWordEmbedding[0], v87, v39);
          CoreNLP::Resource::getAssetResource(v39, @"Embedding", v42, 0, &buf);
          if (!buf)
          {
            v67 = MEMORY[0x19EAF8290](v39);
            CoreNLP::getUTF8StringFromCFString(v67, &v91);
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              CoreNLP::EmbeddingManager::EmbeddingManager(&v91);
            }

            v68 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v68, "Unable to locate model");
            __cxa_throw(v68, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          CoreNLP::Resource::path(buf, v43, &v91);
          if (SHIBYTE(v115) < 0)
          {
            operator delete(valuePtr);
          }

          valuePtr = v91;
          v115 = v92;
          std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](&buf);
        }

        operator new();
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        CoreNLP::EmbeddingManager::EmbeddingManager();
      }

      v65 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v65, "Unable to load ANE version of the model");
      goto LABEL_154;
    }

    v38 = v87;
    v44 = cf1;
  }

  else
  {
    v44 = 0;
  }

  if (requestedEnglishBERT(NSString *,long,BOOL *)::onceToken != -1)
  {
    CoreNLP::EmbeddingManager::EmbeddingManager();
  }

  if (v38 <= 0xB)
  {
    if (((1 << v38) & 0x514) != 0)
    {
      goto LABEL_93;
    }

    if (((1 << v38) & 0xA28) != 0)
    {
      LOBYTE(v36) = 1;
      goto LABEL_93;
    }
  }

  if ([requestedEnglishBERT(NSString * long])
  {
LABEL_93:
    v45 = CFDictionaryGetValue(a2, kNLStringEmbeddingModelLocale[0]);
    LODWORD(v83) = CoreNLP::getLocaleLanguage(v45, v46);
    v47 = HIBYTE(v115);
    v48 = HIBYTE(v115);
    v49 = *(&valuePtr + 1);
    if (SHIBYTE(v115) >= 0)
    {
      v50 = HIBYTE(v115);
    }

    else
    {
      v50 = *(&valuePtr + 1);
    }

    if (!v50)
    {
      CoreNLP::Resource::getAssetResource(v45, @"LanguageModel", @"en.lm", 1, &buf);
      if (!buf)
      {
        v71 = MEMORY[0x19EAF8290](v45);
        CoreNLP::getUTF8StringFromCFString(v71, &v91);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          CoreNLP::EmbeddingManager::EmbeddingManager(&v91);
        }

        v72 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v72, "Unable to locate model");
        __cxa_throw(v72, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      CoreNLP::Resource::path(buf, v51, &v91);
      if (SHIBYTE(v115) < 0)
      {
        operator delete(valuePtr);
      }

      valuePtr = v91;
      v115 = v92;
      std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](&buf);
      v47 = HIBYTE(v115);
      v49 = *(&valuePtr + 1);
      v48 = HIBYTE(v115);
    }

    if (v48 >= 0)
    {
      v52 = v47;
    }

    else
    {
      v52 = v49;
    }

    v53 = &v91;
    std::string::basic_string[abi:ne200100](&v91, v52 + 13);
    if (SBYTE7(v92) < 0)
    {
      v53 = v91;
    }

    if (v52)
    {
      if (SHIBYTE(v115) >= 0)
      {
        p_valuePtr = &valuePtr;
      }

      else
      {
        p_valuePtr = valuePtr;
      }

      memmove(v53, p_valuePtr, v52);
    }

    strcpy(v53 + v52, "/unilm.bundle");
    if (SHIBYTE(v115) < 0)
    {
      operator delete(valuePtr);
    }

    valuePtr = v91;
    v115 = v92;
    if (v36)
    {
      std::make_unique[abi:ne200100]<CoreNLP::BERTANEEmbedding,std::string &,NLLanguageID &,long &,0>();
    }

    std::make_unique[abi:ne200100]<CoreNLP::BERTEmbedding,std::string &,NLLanguageID &,long &,0>();
  }

  v58 = cf1;
  v59 = v87;
  if (requestedMultilingualBERT(NSString *,long)::onceToken != -1)
  {
    CoreNLP::EmbeddingManager::EmbeddingManager();
  }

  if ((v59 > 0xD || ((1 << v59) & 0x30C0) == 0) && ![requestedMultilingualBERT(NSString * long):"containsObject:" :v58multilingualBERT])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v64 = v87;
      applesauce::CF::StringRef_proxy::StringRef_proxy(&v91, &cf1);
      applesauce::CF::details::pretty_print(*v91, &v91);
      CoreNLP::EmbeddingManager::EmbeddingManager(&v91, &buf, v64);
    }

    v65 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v65, "Unsupported embedding model version/architecture");
LABEL_154:
    __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v60 = HIBYTE(v115);
  if (SHIBYTE(v115) < 0)
  {
    v60 = *(&valuePtr + 1);
  }

  if (!v60)
  {
    if (CFDictionaryContainsKey(a2, kNLStringEmbeddingModelLocale[0]) && (v61 = CFDictionaryGetValue(a2, kNLStringEmbeddingModelLocale[0]), (v62 = v61) != 0))
    {
      CoreNLP::Resource::getAssetResource(v61, @"Embedding", @"mBERT.bundle", 0, &buf);
      if (buf)
      {
        CoreNLP::Resource::path(buf, v63, &v91);
        if (SHIBYTE(v115) < 0)
        {
          operator delete(valuePtr);
        }

        valuePtr = v91;
        v115 = v92;
        std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](&buf);
        goto LABEL_144;
      }

      v76 = MEMORY[0x19EAF8290](v62);
      CoreNLP::getUTF8StringFromCFString(v76, &v91);
    }

    else
    {
      *&buf = 0;
      std::string::basic_string[abi:ne200100]<0>(&v91, "unknown");
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CoreNLP::EmbeddingManager::EmbeddingManager(&v91);
    }

    v77 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v77, "Unable to locate mBERT.bundle");
    __cxa_throw(v77, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_144:
  if (v36)
  {
    LODWORD(buf) = 1;
    std::make_unique[abi:ne200100]<CoreNLP::BERTANEEmbedding,std::string &,NLLanguageID,long &,0>();
  }

  LODWORD(buf) = 1;
  std::make_unique[abi:ne200100]<CoreNLP::BERTEmbedding,std::string &,NLLanguageID,long &,0>();
}

void sub_19D19FDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v74);
  if (a72 < 0)
  {
    operator delete(*(v75 + 32));
  }

  applesauce::CF::StringRef::~StringRef(&a24);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy((v72 + 10), v72[11]);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy((v72 + 7), v72[8]);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy((v72 + 4), v72[5]);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(v73, v72[2]);
  v77 = *v72;
  *v72 = 0;
  if (v77)
  {
    (*(*v77 + 8))(v77);
  }

  _Unwind_Resume(a1);
}

void *std::map<long,__CFString const*>::map[abi:ne200100](void *a1, uint64_t *a2, uint64_t a3)
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
      std::__tree<std::__value_type<long,__CFString const*>,std::__map_value_compare<long,std::__value_type<long,__CFString const*>,std::less<long>,true>,std::allocator<std::__value_type<long,__CFString const*>>>::__emplace_hint_unique_key_args<long,std::pair<long const,__CFString const*> const&>(a1, v4, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<long,__CFString const*>,std::__map_value_compare<long,std::__value_type<long,__CFString const*>,std::less<long>,true>,std::allocator<std::__value_type<long,__CFString const*>>>::__emplace_hint_unique_key_args<long,std::pair<long const,__CFString const*> const&>(void *a1, void *a2, uint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<long,__CFString const*>,std::__map_value_compare<long,std::__value_type<long,__CFString const*>,std::less<long>,true>,std::allocator<std::__value_type<long,__CFString const*>>>::__find_equal<long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<long,__CFString const*>,std::__map_value_compare<long,std::__value_type<long,__CFString const*>,std::less<long>,true>,std::allocator<std::__value_type<long,__CFString const*>>>::__find_equal<long>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
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

void *std::map<long,__CFString const*>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<long,__CFString const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long,__CFString const*>,std::__tree_node<std::__value_type<long,__CFString const*>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<long,__CFString const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long,__CFString const*>,std::__tree_node<std::__value_type<long,__CFString const*>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<long,__CFString const*>,std::__map_value_compare<long,std::__value_type<long,__CFString const*>,std::less<long>,true>,std::allocator<std::__value_type<long,__CFString const*>>>::__emplace_hint_unique_key_args<long,std::pair<long const,__CFString const*> const&>(v5, v5 + 1, v4 + 4);
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

void *std::map<NLLanguageID,std::map<long,__CFString const*>>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::__emplace_hint_unique_key_args<NLLanguageID,std::pair<NLLanguageID const,std::map<long,__CFString const*>> const&>(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::__emplace_hint_unique_key_args<NLLanguageID,std::pair<NLLanguageID const,std::map<long,__CFString const*>> const&>(void *a1, uint64_t *a2, int *a3)
{
  result = *std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::__find_equal<NLLanguageID>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::__construct_node<std::pair<NLLanguageID const,std::map<long,__CFString const*>> const&>();
  }

  return result;
}

void sub_19D1A0A5C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *CoreNLP::WordEmbedding::WordEmbedding(std::string *this)
{
  this->__r_.__value_.__r.__words[0] = &unk_1F10AF170;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__l.__size_ = &this->__r_.__value_.__r.__words[2];
  this[1].__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  *&this[1].__r_.__value_.__r.__words[1] = xmmword_19D27FAB0;
  if (SHIBYTE(v5) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, __p[0], __p[1]);
    v2 = SHIBYTE(v5);
    this[3].__r_.__value_.__r.__words[0] = 0;
    LODWORD(this[3].__r_.__value_.__r.__words[1]) = 0;
    if (v2 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&this[2].__r_.__value_.__l.__data_ = *__p;
    this[2].__r_.__value_.__r.__words[2] = v5;
    this[3].__r_.__value_.__r.__words[0] = 0;
    LODWORD(this[3].__r_.__value_.__r.__words[1]) = 0;
  }

  CoreNLP::KDTree::KDTree(&this[3].__r_.__value_.__r.__words[2]);
  CoreNLP::ProductQuantizer::ProductQuantizer(&this[111].__r_.__value_.__r.__words[2]);
  this[115].__r_.__value_.__l.__size_ = 0;
  *&this[114].__r_.__value_.__r.__words[2] = 0u;
  *&this[114].__r_.__value_.__l.__data_ = 0u;
  *&this[113].__r_.__value_.__r.__words[1] = 0u;
  return this;
}

void sub_19D1A0B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v15, *v16);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::KDTree::KDTree(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *(this + 64) = 0;
  v1 = 999;
  v2 = 1;
  v3 = 23;
  *(this + 88) = 999;
  do
  {
    v4 = 1812433253 * (v1 ^ (v1 >> 30));
    v1 = v4 + v2;
    *(this + 4 * v3) = v3 + v4 - 22;
    ++v2;
    ++v3;
  }

  while (v3 != 646);
  *(this + 2584) = 0;
  return this;
}

uint64_t CoreNLP::ProductQuantizer::ProductQuantizer(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t CoreNLP::EmbeddingManager::systemAssetName(CoreNLP::EmbeddingManager *this, const __CFString *a2, uint64_t a3, const __CFLocale *a4)
{
  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Missing locale");
LABEL_24:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LocaleLanguage = CoreNLP::getLocaleLanguage(a4, a2);
  v9 = 32;
  if (kNLStringEmbeddingModelTypeCompressedWordEmbedding[0] == a2)
  {
    v9 = 8;
  }

  v10 = (this + v9 + 8);
  v11 = *v10;
  if (!*v10)
  {
    goto LABEL_19;
  }

  v12 = (this + v9 + 8);
  do
  {
    if (*(v11 + 8) >= LocaleLanguage)
    {
      v12 = v11;
    }

    v11 = *&v11[8 * (*(v11 + 8) < LocaleLanguage)];
  }

  while (v11);
  if (v12 == v10 || LocaleLanguage < *(v12 + 8))
  {
LABEL_19:
    v18 = MEMORY[0x19EAF8290](a4);
    CoreNLP::getUTF8StringFromCFString(v18, v21);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CoreNLP::EmbeddingManager::systemAssetName(v21);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "Unsupported locale");
    __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v15 = v12[6];
  v13 = (v12 + 6);
  v14 = v15;
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = v13;
  do
  {
    if (*(v14 + 4) >= a3)
    {
      v16 = v14;
    }

    v14 = *&v14[8 * (*(v14 + 4) < a3)];
  }

  while (v14);
  if (v16 == v13 || *(v16 + 4) > a3)
  {
LABEL_22:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unsupported version");
    goto LABEL_24;
  }

  return *(v16 + 5);
}

BOOL CoreNLP::WordEmbedding::loadModel(CoreNLP::WordEmbedding *this, const __CFLocale *a2, const __CFString *a3)
{
  LocaleLanguage = CoreNLP::getLocaleLanguage(a2, a2);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZN7CoreNLP13WordEmbedding9loadModelEPK10__CFLocalePK10__CFString_block_invoke;
  v10[3] = &__block_descriptor_tmp_16;
  v11 = LocaleLanguage;
  v10[4] = a2;
  v10[5] = a3;
  PersistentResource = CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentResource(&LocaleLanguage, v10);
  if (PersistentResource)
  {
    v7 = *PersistentResource;
    v8 = *(PersistentResource + 8);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  return CoreNLP::WordEmbedding::initModel(this, v7, a2, v8);
}

uint64_t CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentResource(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::onceToken != -1)
  {
    CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentResource();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN7CoreNLP24SingletonResourceManagerI12NLLanguageIDNS_12ReadOnlyFileIcEEE21getPersistentResourceERKS1_U13block_pointerFPS3_vE_block_invoke;
  block[3] = &unk_1E7625B18;
  block[5] = &v7;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void ___ZN7CoreNLP24SingletonResourceManagerI12NLLanguageIDNS_12ReadOnlyFileIcEEE21getPersistentResourceERKS1_U13block_pointerFPS3_vE_block_invoke(uint64_t a1)
{
  if (CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::onceToken != -1)
  {
    ___ZN7CoreNLP24SingletonResourceManagerI12NLLanguageIDNS_12ReadOnlyFileIcEEE21getPersistentResourceERKS1_U13block_pointerFPS3_vE_block_invoke_cold_1();
  }

  v2 = CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache;
  v3 = *(CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache + 1);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = **(a1 + 48);
  v5 = CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache + 8;
  do
  {
    if (*(v3 + 8) >= v4)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < v4)];
  }

  while (v3);
  if (v5 != CoreNLP::SingletonResourceManager<NLLanguageID,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache + 8 && v4 >= *(v5 + 8))
  {
    *(*(*(a1 + 40) + 8) + 24) = *(v5 + 5);
  }

  else
  {
LABEL_10:
    *(*(*(a1 + 40) + 8) + 24) = (*(*(a1 + 32) + 16))();
    v6 = *(a1 + 48);
    v7 = *(*(*(a1 + 40) + 8) + 24);
    std::__tree<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>>>::__emplace_unique_key_args<NLLanguageID,std::piecewise_construct_t const&,std::tuple<NLLanguageID const&>,std::tuple<>>(v2, v6)[5] = v7;
  }
}

void sub_19D1A107C(void *a1)
{
  __cxa_begin_catch(a1);
  *(*(*(v1 + 40) + 8) + 24) = 0;
  __cxa_end_catch();
  JUMPOUT(0x19D1A1024);
}

BOOL CoreNLP::WordEmbedding::initModel(CoreNLP::WordEmbedding *this, const char *a2, const __CFLocale *a3, unint64_t a4)
{
  result = 0;
  if (a2 && a4 >= 0x3C)
  {
    if (*a2 != 200 && *a2 != 100)
    {
      return 0;
    }

    v8 = *(a2 + 13);
    if ((*(a2 + 14) + v8) > a4)
    {
      return 0;
    }

    v9 = *(a2 + 3);
    *(this + 678) = *(a2 + 2);
    *(this + 340) = &a2[*(a2 + 7)];
    *(this + 341) = &a2[*(a2 + 9)];
    v10 = *(a2 + 11);
    v11 = *(a2 + 12);
    *(this + 342) = &a2[v10];
    *(this + 343) = &a2[(v10 + v11 - 4)];
    CoreNLP::ProductQuantizer::initialize(this + 2680, v9, *(a2 + 4), &a2[*(a2 + 5)]);
    CoreNLP::KDTree::initialize(this + 22, *(a2 + 3));
    v12 = CoreNLP::KDTree::loadFromBuffer((this + 88), *(a2 + 2), &a2[v8], *(a2 + 14));
    v13 = *(a2 + 12);
    v14 = *(a2 + 1);
    v16 = *(this + 16);
    v15 = *(this + 17);
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    LocaleLanguage = CoreNLP::getLocaleLanguage(a3, v17);
    *&v24 = v13;
    DWORD2(v24) = v14;
    HIDWORD(v24) = (v15 - v16) >> 2;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = __p;
    }

    v26 = 0;
    v27 = LocaleLanguage;
    *(this + 2) = v24;
    if (*(this + 71) < 0)
    {
      operator delete(*(this + 6));
    }

    *(this + 3) = *&v25.__r_.__value_.__l.__data_;
    v19 = v25.__r_.__value_.__r.__words[2];
    *(&v25.__r_.__value_.__s + 23) = 0;
    v25.__r_.__value_.__s.__data_[0] = 0;
    v20 = v26;
    *(this + 8) = v19;
    *(this + 9) = v20;
    *(this + 20) = v27;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*a2 == 200)
    {
      *(this + 20) = *(a2 + 15);
    }

    if (v12)
    {
      result = 0;
      v22 = *(a2 + 3);
      v21 = *(a2 + 4);
      if (!(v22 % v21) && v22 >= v21 && v22 >= 1 && v21 >= 1)
      {
        return *(this + 678) > 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19D1A129C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *CoreNLP::KDTree::initialize(_DWORD *this, int a2)
{
  this[17] = a2;
  this[18] = a2;
  this[19] = 4 * a2 + 12;
  this[20] = a2 + 2;
  return this;
}

uint64_t *std::__tree<std::__value_type<NLLanguageID,_LXLemmatizer const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,_LXLemmatizer const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,_LXLemmatizer const*>>>::__emplace_unique_key_args<NLLanguageID,std::piecewise_construct_t const&,std::tuple<NLLanguageID const&>,std::tuple<>>(uint64_t a1, int *a2)
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

uint64_t CoreNLP::ProductQuantizer::initialize(uint64_t this, int a2, int a3, float *a4)
{
  *this = a2;
  *(this + 4) = a3;
  *(this + 16) = a4;
  if (a3)
  {
    v4 = a2 / a3;
  }

  else
  {
    v4 = 0;
  }

  *(this + 8) = v4;
  if (!a4)
  {
    operator new[]();
  }

  *(this + 24) = 0;
  return this;
}

void std::vector<float>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<float>::__append(this, __sz - v2);
  }
}

void std::vector<float>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

BOOL CoreNLP::KDTree::loadFromBuffer(CoreNLP::KDTree *this, int a2, const char *a3, int a4)
{
  v4 = *(this + 19);
  if (v4 >= 1)
  {
    *(this + 16) = a2;
    *(this + 3) = a3;
    *(this + 8) = a4 / v4;
    *(this + 9) = v4;
    v6 = &a3[(a4 / v4 - 1) * v4];
    v8 = *v6;
    v7 = v6 + 4;
    std::vector<float>::resize((this + 40), v8);
    v9 = v8 & ~(v8 >> 31);
    if (v9)
    {
      v10 = 0;
      v11 = *(this + 5);
      do
      {
        *(v11 + 4 * v10) = *&v7[4 * v10];
        ++v10;
      }

      while (v9 != v10);
    }
  }

  return v4 > 0;
}

void ___ZN7CoreNLP9Gazetteer15normalizeEntityEPK10__CFString_block_invoke(uint64_t a1, CFRange *a2)
{
  v3 = CFStringCreateWithSubstring(0, *(a1 + 48), *a2);
  if (CFStringGetLength(*(*(*(a1 + 32) + 8) + 40)) >= 1)
  {
    CFStringAppend(*(*(*(a1 + 32) + 8) + 40), @" ");
  }

  CFStringAppend(*(*(*(a1 + 32) + 8) + 40), v3);
  ++*(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_19D1A16D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::createEmbeddingWrapper(uint64_t **a1)
{
  CFAllocatorGetDefault();
  {
    qword_1EE62CA08 = 0;
    unk_1EE62CA18 = 0u;
    unk_1EE62CA28 = 0u;
    CoreNLP::_CFGetTypeID_EmbeddingWrapper(void)::typeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = *a1;
  *a1 = 0;
  std::unique_ptr<CoreNLP::EmbeddingManager>::reset[abi:ne200100]((Instance + 24), v3);
  return Instance;
}

uint64_t **std::unique_ptr<CoreNLP::EmbeddingManager>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy((v2 + 10), v2[11]);
    std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy((v2 + 7), v2[8]);
    std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy((v2 + 4), v2[5]);
    std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy((v2 + 1), v2[2]);
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

uint64_t CoreNLP::_CFInit_EmbeddingWrapper(uint64_t this, const void *a2)
{
  *(this + 16) = &unk_1F10AF080;
  *(this + 24) = 0;
  return this;
}

uint64_t **std::unique_ptr<CoreNLP::EmbeddingManager>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy((v2 + 10), v2[11]);
    std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy((v2 + 7), v2[8]);
    std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy((v2 + 4), v2[5]);
    std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy((v2 + 1), v2[2]);
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    MEMORY[0x19EAF8CA0](v2, 0x1020C408BDE5273);
  }

  return a1;
}

CoreNLP *NLStringEmbeddingGetDimension(CoreNLP *result, void *a2)
{
  if (result)
  {
    result = *CoreNLP::unwrapGazetteer(result, a2);
    if (result)
    {
      return (*(*result + 64))(result);
    }
  }

  return result;
}

CFDataRef NLStringEmbeddingCopyData(CoreNLP *a1, __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v3 = CoreNLP::unwrapGazetteer(a1, a2);
  CoreNLP::getUTF8StringFromCFString(a2, __p);
  (*(**v3 + 32))(*v3, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v9;
  if (v9 != v10)
  {
    v5 = CFDataCreate(*MEMORY[0x1E695E4A8], v9, v10 - v9);
    v4 = v9;
    if (!v9)
    {
      return v5;
    }

    goto LABEL_9;
  }

  v5 = 0;
  if (v9)
  {
LABEL_9:
    v10 = v4;
    operator delete(v4);
  }

  return v5;
}

void sub_19D1A1A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1A1B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::WordEmbedding::fillStringVector(CoreNLP::WordEmbedding *a1, uint64_t a2, std::vector<int> *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  memset(v8, 0, sizeof(v8));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v8, &v10, &v11, 1uLL);
  AverageEmbedding = CoreNLP::WordEmbedding::getAverageEmbedding(a1, v8, a3);
  v9 = v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
    if (AverageEmbedding)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((AverageEmbedding & 1) == 0)
  {
LABEL_6:
    a3->__end_ = a3->__begin_;
  }

LABEL_7:
  v6 = *MEMORY[0x1E69E9840];
  return AverageEmbedding;
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t CoreNLP::WordEmbedding::getAverageEmbedding(CoreNLP::WordEmbedding *a1, uint64_t *a2, std::vector<int> *a3)
{
  v6 = a3->__end_ - a3->__begin_;
  if ((*(*a1 + 64))(a1) != v6 >> 2)
  {
    v7 = (*(*a1 + 64))(a1);
    std::vector<float>::resize(a3, v7);
    end = a3->__end_;
    if (a3->__begin_ != end)
    {
      bzero(a3->__begin_, end - a3->__begin_);
    }
  }

  v9 = *a2;
  v10 = a2[1] - *a2;
  v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
  if (v10)
  {
    v12 = 0;
    v13 = 0;
    if (v11 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
    }

    do
    {
      v30 = 0;
      v15 = v9 + 24 * v12;
      if (*(v15 + 23) >= 0)
      {
        v16 = (v9 + 24 * v12);
      }

      else
      {
        v16 = *v15;
      }

      if (CoreNLP::WordEmbedding::getWordID(a1, v16, &v30))
      {
        v17 = *(a1 + 672);
        if (v17 >= 1)
        {
          v18 = 0;
          v19 = *(a1 + 340) + v30 * v17;
          v20 = *(a1 + 337);
          v21 = *(a1 + 671);
          v22 = *(a1 + 9);
          begin = a3->__begin_;
          do
          {
            if (v22 >= 1)
            {
              v24 = (v20 + 4 * v21 * (*(v19 + v18) | (v18 << 8)));
              v25 = v22;
              v26 = begin;
              do
              {
                v27 = *v24++;
                *v26 = v27 + *v26;
                ++v26;
                --v25;
              }

              while (v25);
            }

            ++v18;
            begin += v22;
          }

          while (v18 != v17);
        }

        v13 = 1;
      }

      ++v12;
    }

    while (v12 != v14);
  }

  else
  {
    v13 = 0;
  }

  if (v11 >= 2 && (*(*a1 + 64))(a1) >= 1)
  {
    v28 = 0;
    do
    {
      *&a3->__begin_[v28] = *&a3->__begin_[v28] / (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
      ++v28;
    }

    while (v28 < (*(*a1 + 64))(a1));
  }

  return v13 & 1;
}

uint64_t CoreNLP::WordEmbedding::getWordID(CoreNLP::WordEmbedding *this, const char *__s2, int *a3)
{
  v3 = *(this + 341);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 342);
  if (!v4)
  {
    return 0;
  }

  v5 = *(this + 343);
  if (!v5)
  {
    return 0;
  }

  if (v5 == v4)
  {
    v9 = *(this + 342);
  }

  else
  {
    v8 = v5 - v4;
    v9 = *(this + 342);
    do
    {
      v10 = &v9[v8 >> 1];
      v12 = *v10;
      v11 = v10 + 1;
      v13 = strcmp((v3 + v12), __s2);
      if (v13 >= 0)
      {
        v8 >>= 1;
      }

      else
      {
        v8 += ~(v8 >> 1);
      }

      if (v13 < 0)
      {
        v9 = v11;
      }
    }

    while (v8);
  }

  if (v9 == v5 || strcmp((v3 + *v9), __s2))
  {
    return 0;
  }

  *a3 = (v9 - v4) >> 2;
  return 1;
}

void CoreNLP::EmbeddingWrapper::~EmbeddingWrapper(uint64_t **this)
{
  *this = &unk_1F10AF080;
  std::unique_ptr<CoreNLP::EmbeddingManager>::reset[abi:ne200100](this + 1, 0);

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

{
  *this = &unk_1F10AF080;
  std::unique_ptr<CoreNLP::EmbeddingManager>::reset[abi:ne200100](this + 1, 0);
  CoreNLP::SubWordTagger::~SubWordTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

void CoreNLP::WordEmbedding::~WordEmbedding(CoreNLP::WordEmbedding *this)
{
  *this = &unk_1F10AF170;
  nlp::CFScopedPtr<__CFData const*>::reset(this + 346, 0);
  v2 = *(this + 345);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  CoreNLP::ProductQuantizer::~ProductQuantizer((this + 2680));
  CoreNLP::KDTree::~KDTree((this + 88));
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(this + 8, *(this + 2));

  JUMPOUT(0x19EAF8CA0);
}

{
  *this = &unk_1F10AF170;
  nlp::CFScopedPtr<__CFData const*>::reset(this + 346, 0);
  v2 = *(this + 345);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  CoreNLP::ProductQuantizer::~ProductQuantizer((this + 2680));
  CoreNLP::KDTree::~KDTree((this + 88));
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(this + 8, *(this + 2));
}

void CoreNLP::ProductQuantizer::~ProductQuantizer(CoreNLP::ProductQuantizer *this)
{
  if (*(this + 24) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      MEMORY[0x19EAF8C70](v1, 0x1000C8052888210);
    }
  }
}