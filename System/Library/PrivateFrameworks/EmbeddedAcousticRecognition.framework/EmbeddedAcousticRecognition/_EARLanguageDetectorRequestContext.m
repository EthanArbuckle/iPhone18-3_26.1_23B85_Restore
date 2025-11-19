@interface _EARLanguageDetectorRequestContext
+ (id)contextFromLDContext:(const void *)a3;
+ (id)contextFromLDContext:(void *)a1;
- (LDContext)LDContext;
- (id)copyWithZone:(_NSZone *)a3;
- (void)LDContext;
@end

@implementation _EARLanguageDetectorRequestContext

- (LDContext)LDContext
{
  v2 = v1;
  v59 = *MEMORY[0x1E69E9840];
  quasar::LDContext::LDContext(retstr);
  v4 = [v2 languagePriors];
  EARHelpers::DictionaryToMap<quasar::language_detector::Locale,double,[_EARLanguageDetectorRequestContext LDContext]::$_0,[_EARLanguageDetectorRequestContext LDContext]::$_1>(v4, &v55);
  p_var1 = &retstr->var0.var0.var1;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(retstr, retstr->var0.var0.var1.__left_);
  v6 = *(&v55 + 1);
  retstr->var0.var0.var0 = v55;
  retstr->var0.var0.var1.__left_ = v6;
  v7 = v56;
  retstr->var0.var0.var2 = v56;
  if (v7)
  {
    v6[2] = p_var1;
    *&v55 = &v55 + 8;
    *(&v55 + 1) = 0;
    v56 = 0;
    v6 = 0;
  }

  else
  {
    retstr->var0.var0.var0 = p_var1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v55, v6);

  v8 = [v2 dictationLanguages];
  v9 = v8;
  if (v8)
  {
    v43.__end_ = 0;
    v43.__end_cap_.__value_ = 0;
    v43.__begin_ = &v43.__end_;
    *v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:v48 objects:&v55 count:16];
    if (v11)
    {
      v12 = *v49;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v49 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(v48[1] + i);
          v15 = v14;
          if (v14)
          {
            [v14 ear_toString];
          }

          else
          {
            __p = 0;
            v53 = 0;
            v54 = 0;
          }

          quasar::language_detector::Locale::Locale(v44, &__p);
          if (SHIBYTE(v54) < 0)
          {
            operator delete(__p);
          }

          std::__tree<quasar::language_detector::Locale>::__emplace_unique_key_args<quasar::language_detector::Locale,quasar::language_detector::Locale>(&v43, v44);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(v46);
          }

          if (SHIBYTE(v45) < 0)
          {
            operator delete(v44[0]);
          }
        }

        v11 = [v10 countByEnumeratingWithState:v48 objects:&v55 count:16];
      }

      while (v11);
    }

    std::optional<std::set<quasar::language_detector::Locale>>::operator=[abi:ne200100]<std::set<quasar::language_detector::Locale>,void>(&retstr->var1, &v43);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v43, v43.__end_->first.__r_.__value_.__r.__words);
  }

  v16 = [v2 currentDictationLanguage];
  v17 = v16;
  if (v16)
  {
    [v16 ear_toString];
    quasar::language_detector::Locale::Locale(&v55, v48);
    if (SBYTE7(v49) < 0)
    {
      operator delete(v48[0]);
    }

    std::optional<quasar::language_detector::Locale>::operator=[abi:ne200100]<quasar::language_detector::Locale,void>(&retstr->var2, &v55);
    if (v58 < 0)
    {
      operator delete(v57);
    }

    if (SHIBYTE(v56) < 0)
    {
      operator delete(v55);
    }
  }

  v18 = [v2 wasLanguageToggled];
  v19 = v18;
  if (v18)
  {
    LOWORD(retstr[1].var0.var0.var1.__left_) = [v18 BOOLValue] | 0x100;
  }

  v20 = [v2 multilingualKeyboardLanguages];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
    memset(&v43, 0, sizeof(v43));
    *v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:v48 objects:&v55 count:16];
    if (v24)
    {
      v25 = *v49;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v49 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(v48[1] + j);
          v28 = v27;
          if (v27)
          {
            [v27 ear_toString];
          }

          else
          {
            __p = 0;
            v53 = 0;
            v54 = 0;
          }

          quasar::language_detector::Locale::Locale(v44, &__p);
          if (SHIBYTE(v54) < 0)
          {
            operator delete(__p);
          }

          end = v43.__end_;
          if (v43.__end_ >= v43.__end_cap_.__value_)
          {
            v43.__end_ = std::vector<quasar::language_detector::Locale>::__emplace_back_slow_path<quasar::language_detector::Locale>(&v43, v44);
            if (SHIBYTE(v47) < 0)
            {
              operator delete(v46);
            }
          }

          else
          {
            v30 = *v44;
            v43.__end_->first.__r_.__value_.__r.__words[2] = v45;
            *&end->first.__r_.__value_.__l.__data_ = v30;
            v44[1] = 0;
            v45 = 0;
            v44[0] = 0;
            v31 = v47;
            *&end->second.__r_.__value_.__l.__data_ = v46;
            end->second.__r_.__value_.__r.__words[2] = v31;
            v47 = 0;
            v46 = 0uLL;
            v43.__end_ = end + 1;
          }

          if (SHIBYTE(v45) < 0)
          {
            operator delete(v44[0]);
          }
        }

        v24 = [v23 countByEnumeratingWithState:v48 objects:&v55 count:16];
      }

      while (v24);
    }

    std::optional<std::vector<quasar::language_detector::Locale>>::operator=[abi:ne200100]<std::vector<quasar::language_detector::Locale>,void>(&retstr[1].var0.var0.var2, &v43);
    *&v55 = &v43;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v55);
  }

  v32 = [v2 keyboardConvoLanguagePriors];
  v33 = v32;
  if (v32)
  {
    EARHelpers::DictionaryToMap<quasar::language_detector::Locale,double,[_EARLanguageDetectorRequestContext LDContext]::$_0,[_EARLanguageDetectorRequestContext LDContext]::$_1>(v32, &v55);
    std::optional<std::set<quasar::language_detector::Locale>>::operator=[abi:ne200100]<std::set<quasar::language_detector::Locale>,void>(&retstr[1].var1.var1, &v55);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v55, *(&v55 + 1));
  }

  v34 = [v2 keyboardGlobalLanguagePriors];
  v35 = v34;
  if (v34)
  {
    EARHelpers::DictionaryToMap<quasar::language_detector::Locale,double,[_EARLanguageDetectorRequestContext LDContext]::$_0,[_EARLanguageDetectorRequestContext LDContext]::$_1>(v34, &v55);
    std::optional<std::set<quasar::language_detector::Locale>>::operator=[abi:ne200100]<std::set<quasar::language_detector::Locale>,void>(&retstr[1].var2.var1, &v55);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v55, *(&v55 + 1));
  }

  v36 = [v2 previousMessageLanguage];
  v37 = v36;
  if (v36)
  {
    [v36 ear_toString];
    quasar::language_detector::Locale::Locale(&v55, v48);
    if (SBYTE7(v49) < 0)
    {
      operator delete(v48[0]);
    }

    std::optional<quasar::language_detector::Locale>::operator=[abi:ne200100]<quasar::language_detector::Locale,void>(&retstr[2].var0.var0.var1, &v55);
    if (v58 < 0)
    {
      operator delete(v57);
    }

    if (SHIBYTE(v56) < 0)
    {
      operator delete(v55);
    }
  }

  v38 = [v2 globalLastKeyboardUsed];
  v39 = v38;
  if (v38)
  {
    [v38 ear_toString];
    quasar::language_detector::Locale::Locale(&v55, v48);
    if (SBYTE7(v49) < 0)
    {
      operator delete(v48[0]);
    }

    std::optional<quasar::language_detector::Locale>::operator=[abi:ne200100]<quasar::language_detector::Locale,void>(&retstr[2].var2.var0.var1.var0.__rep_.__l.__size_, &v55);
    if (v58 < 0)
    {
      operator delete(v57);
    }

    if (SHIBYTE(v56) < 0)
    {
      operator delete(v55);
    }
  }

  v40 = [v2 dictationLanguagePriors];
  v41 = v40;
  if (v40)
  {
    EARHelpers::DictionaryToMap<quasar::language_detector::Locale,double,[_EARLanguageDetectorRequestContext LDContext]::$_0,[_EARLanguageDetectorRequestContext LDContext]::$_1>(v40, &v55);
    std::optional<std::set<quasar::language_detector::Locale>>::operator=[abi:ne200100]<std::set<quasar::language_detector::Locale>,void>(&retstr[3].var0.var0.var2, &v55);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v55, *(&v55 + 1));
  }

  return result;
}

- (void)LDContext
{
  v3 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x4812000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = &unk_1B5CADD23;
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN10EARHelpers15DictionaryToMapIN6quasar17language_detector6LocaleEdZ47___EARLanguageDetectorRequestContext_LDContext_E3__0Z47___EARLanguageDetectorRequestContext_LDContext_E3__1EENSt3__13mapIT_T0_NS6_4lessIS8_EENS6_9allocatorINS6_4pairIKS8_S9_EEEEEEP12NSDictionaryT1_T2__block_invoke;
  v4[3] = &unk_1E7C1A308;
  v4[4] = &v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
  std::map<quasar::language_detector::Locale,double>::map[abi:ne200100](a2, v6 + 6);
  _Block_object_dispose(&v5, 8);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v11, v12[0]);
}

+ (id)contextFromLDContext:(const void *)a3
{
  v4 = objc_alloc_init(_EARLanguageDetectorRequestContext);
  v5 = EARHelpers::MapToDictionary<quasar::language_detector::Locale,double,+[_EARLanguageDetectorRequestContext contextFromLDContext:]::$_2,+[_EARLanguageDetectorRequestContext contextFromLDContext:]::$_3>(a3);
  [(_EARLanguageDetectorRequestContext *)v4 setLanguagePriors:v5];

  std::__optional_copy_base<std::set<quasar::language_detector::Locale>,false>::__optional_copy_base[abi:ne200100](&v46, a3 + 24);
  if (v47.__r_.__value_.__s.__data_[0] == 1)
  {
    v6 = [MEMORY[0x1E695DFA8] setWithCapacity:v46.__r_.__value_.__r.__words[2]];
    v7 = v46.__r_.__value_.__r.__words[0];
    if (v46.__r_.__value_.__l.__data_ != &v46.__r_.__value_.__r.__words[1])
    {
      do
      {
        v8 = MEMORY[0x1E696AEC0];
        quasar::language_detector::Locale::getSiriLocaleStr(&v7[1].__words[1], &__p);
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

        v11 = [v8 ear_stringWithStringView:{p_p, size}];
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        [v6 addObject:v11];

        v12 = v7->__words[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = v12->__r_.__value_.__r.__words[0];
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v7->__words[2];
            v14 = v13->__r_.__value_.__r.__words[0] == v7;
            v7 = v13;
          }

          while (!v14);
        }

        v7 = v13;
      }

      while (v13 != &v46.__r_.__value_.__r.__words[1]);
    }

    v15 = [v6 copy];

    [(_EARLanguageDetectorRequestContext *)v4 setDictationLanguages:v15];
    if (v47.__r_.__value_.__s.__data_[0])
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v46, v46.__r_.__value_.__l.__size_);
    }
  }

  std::__optional_copy_base<quasar::language_detector::Locale,false>::__optional_copy_base[abi:ne200100](&v46, (a3 + 56));
  if (v48 == 1)
  {
    v16 = MEMORY[0x1E696AEC0];
    quasar::language_detector::Locale::getSiriLocaleStr(&v46, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = __p.__r_.__value_.__l.__size_;
    }

    v19 = [v16 ear_stringWithStringView:{v17, v18}];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    [(_EARLanguageDetectorRequestContext *)v4 setCurrentDictationLanguage:v19];

    if (v48)
    {
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }
    }
  }

  v20 = *(a3 + 56);
  if ((v20 & 0x100) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:v20 & 1];
    [(_EARLanguageDetectorRequestContext *)v4 setWasLanguageToggled:v21];
  }

  std::__optional_copy_base<std::vector<quasar::language_detector::Locale>,false>::__optional_copy_base[abi:ne200100](&__p, a3 + 120);
  if (v45 == 1)
  {
    v22 = [MEMORY[0x1E695DF70] array];
    v24 = __p.__r_.__value_.__l.__size_;
    for (i = __p.__r_.__value_.__r.__words[0]; i != v24; i += 48)
    {
      if (*(i + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v46, *i, *(i + 8));
      }

      else
      {
        v25 = *i;
        v46.__r_.__value_.__r.__words[2] = *(i + 16);
        *&v46.__r_.__value_.__l.__data_ = v25;
      }

      if (*(i + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v47, *(i + 24), *(i + 32));
      }

      else
      {
        v26 = *(i + 24);
        v47.__r_.__value_.__r.__words[2] = *(i + 40);
        *&v47.__r_.__value_.__l.__data_ = v26;
      }

      v27 = MEMORY[0x1E696AEC0];
      quasar::language_detector::Locale::getSiriLocaleStr(&v46, &v49);
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v49;
      }

      else
      {
        v28 = v49.__r_.__value_.__r.__words[0];
      }

      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = v49.__r_.__value_.__l.__size_;
      }

      v30 = [v27 ear_stringWithStringView:{v28, v29}];
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      [v22 addObject:v30];

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }
    }

    v31 = [v22 copy];

    [(_EARLanguageDetectorRequestContext *)v4 setMultilingualKeyboardLanguages:v31];
    if (v45)
    {
      v46.__r_.__value_.__r.__words[0] = &__p;
      std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v46);
    }
  }

  std::__optional_copy_base<std::map<quasar::language_detector::Locale,double>,false>::__optional_copy_base[abi:ne200100](&v46, a3 + 152);
  if (v47.__r_.__value_.__s.__data_[0] == 1)
  {
    v32 = EARHelpers::MapToDictionary<quasar::language_detector::Locale,double,+[_EARLanguageDetectorRequestContext contextFromLDContext:]::$_2,+[_EARLanguageDetectorRequestContext contextFromLDContext:]::$_3>(&v46);
    [(_EARLanguageDetectorRequestContext *)v4 setKeyboardConvoLanguagePriors:v32];

    if (v47.__r_.__value_.__s.__data_[0])
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v46, v46.__r_.__value_.__l.__size_);
    }
  }

  std::__optional_copy_base<std::map<quasar::language_detector::Locale,double>,false>::__optional_copy_base[abi:ne200100](&v46, a3 + 184);
  if (v47.__r_.__value_.__s.__data_[0] == 1)
  {
    v33 = EARHelpers::MapToDictionary<quasar::language_detector::Locale,double,+[_EARLanguageDetectorRequestContext contextFromLDContext:]::$_2,+[_EARLanguageDetectorRequestContext contextFromLDContext:]::$_3>(&v46);
    [(_EARLanguageDetectorRequestContext *)v4 setKeyboardGlobalLanguagePriors:v33];

    if (v47.__r_.__value_.__s.__data_[0])
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v46, v46.__r_.__value_.__l.__size_);
    }
  }

  std::__optional_copy_base<quasar::language_detector::Locale,false>::__optional_copy_base[abi:ne200100](&v46, (a3 + 216));
  if (v48 == 1)
  {
    v34 = MEMORY[0x1E696AEC0];
    quasar::language_detector::Locale::getSiriLocaleStr(&v46, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &__p;
    }

    else
    {
      v35 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v36 = __p.__r_.__value_.__l.__size_;
    }

    v37 = [v34 ear_stringWithStringView:{v35, v36}];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    [(_EARLanguageDetectorRequestContext *)v4 setPreviousMessageLanguage:v37];

    if (v48)
    {
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }
    }
  }

  std::__optional_copy_base<quasar::language_detector::Locale,false>::__optional_copy_base[abi:ne200100](&v46, a3 + 17);
  if (v48 == 1)
  {
    v38 = MEMORY[0x1E696AEC0];
    quasar::language_detector::Locale::getSiriLocaleStr(&v46, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &__p;
    }

    else
    {
      v39 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = __p.__r_.__value_.__l.__size_;
    }

    v41 = [v38 ear_stringWithStringView:{v39, v40}];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    [(_EARLanguageDetectorRequestContext *)v4 setGlobalLastKeyboardUsed:v41];

    if (v48)
    {
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }
    }
  }

  std::__optional_copy_base<std::map<quasar::language_detector::Locale,double>,false>::__optional_copy_base[abi:ne200100](&v46, a3 + 328);
  if (v47.__r_.__value_.__s.__data_[0] == 1)
  {
    v42 = EARHelpers::MapToDictionary<quasar::language_detector::Locale,double,+[_EARLanguageDetectorRequestContext contextFromLDContext:]::$_2,+[_EARLanguageDetectorRequestContext contextFromLDContext:]::$_3>(&v46);
    [(_EARLanguageDetectorRequestContext *)v4 setDictationLanguagePriors:v42];

    if (v47.__r_.__value_.__s.__data_[0])
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v46, v46.__r_.__value_.__l.__size_);
    }
  }

  return v4;
}

+ (id)contextFromLDContext:(void *)a1
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = *a1;
  v3 = (a1 + 1);
  v4 = v5;
  if (v5 != v3)
  {
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:v4[10]];
      v7 = MEMORY[0x1E696AEC0];
      quasar::language_detector::Locale::getSiriLocaleStr((v4 + 4), &__p);
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

      v10 = [v7 ear_stringWithStringView:{p_p, size}];
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      [v2 setObject:v6 forKey:v10];

      v11 = *(v4 + 1);
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
          v12 = *(v4 + 2);
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != v3);
  }

  v14 = [v2 copy];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(_EARLanguageDetectorRequestContext *)self languagePriors];
  [v4 setLanguagePriors:v5];

  v6 = [(_EARLanguageDetectorRequestContext *)self dictationLanguages];
  [v4 setDictationLanguages:v6];

  v7 = [(_EARLanguageDetectorRequestContext *)self currentDictationLanguage];
  [v4 setCurrentDictationLanguage:v7];

  v8 = [(_EARLanguageDetectorRequestContext *)self wasLanguageToggled];
  [v4 setWasLanguageToggled:v8];

  v9 = [(_EARLanguageDetectorRequestContext *)self multilingualKeyboardLanguages];
  [v4 setMultilingualKeyboardLanguages:v9];

  v10 = [(_EARLanguageDetectorRequestContext *)self keyboardConvoLanguagePriors];
  [v4 setKeyboardConvoLanguagePriors:v10];

  v11 = [(_EARLanguageDetectorRequestContext *)self keyboardGlobalLanguagePriors];
  [v4 setKeyboardGlobalLanguagePriors:v11];

  v12 = [(_EARLanguageDetectorRequestContext *)self previousMessageLanguage];
  [v4 setPreviousMessageLanguage:v12];

  v13 = [(_EARLanguageDetectorRequestContext *)self globalLastKeyboardUsed];
  [v4 setGlobalLastKeyboardUsed:v13];

  v14 = [(_EARLanguageDetectorRequestContext *)self dictationLanguagePriors];
  [v4 setDictationLanguagePriors:v14];

  v15 = [(_EARLanguageDetectorRequestContext *)self recentMessages];
  [v4 setRecentMessages:v15];

  return v4;
}

@end