@interface _EARUserProfileBuilder
+ (BOOL)isEasyToRecognizeWord:(id)a3 forLocale:(id)a4;
+ (void)initialize;
- (BOOL)_writeProfileToStream:(void *)a3;
- (BOOL)writeProfileToFile:(id)a3 protectionClass:(int64_t)a4 coordinated:(BOOL)a5 length:(unint64_t *)a6 error:(id *)a7;
- (NSDictionary)templateToVersion;
- (NSSet)experimentIds;
- (_EARPeopleSuggesterConfig)peopleSuggesterConfig;
- (_EARUserProfileBuilder)initWithConfig:(id)a3 language:(id)a4 overrides:(id)a5 textNormalizationModelRoot:(id)a6 sdapiOverrides:(id)a7 emptyVoc:(id)a8 pgVoc:(id)a9 paramsetHolder:(id)a10 isJit:(BOOL)a11 error:(id *)a12;
- (_EARUserProfileBuilder)initWithConfiguration:(id)a3 language:(id)a4 overrides:(id)a5 sdapiOverrides:(id)a6 generalVoc:(id)a7 emptyVoc:(id)a8 pgVoc:(id)a9 lexiconEnh:(id)a10 tokenEnh:(id)a11 paramsetHolder:(id)a12 isJit:(BOOL)a13;
- (_EARUserProfileBuilder)initWithConfiguration:(id)a3 withLanguage:(id)a4 withSdapiOverrides:(id)a5 withSdapiConfig:(id)a6;
- (id)createInlineLmeUserDataForContextData:(id)a3 speechProfile:(id)a4;
- (id)dataProfile;
- (id)pronunciationsForOrthography:(id)a3;
- (id)sanitizedStringWithString:(id)a3;
- (void)_embeddingsForOrthography:(const void *)a3 templateName:(const void *)a4 embeddings:(void *)a5 pronRequest:(int)a6;
- (void)_logLmeSlotUpdatedEventsWithLanguage:()basic_string<char numEnumeratedEntries:()std:(std::allocator<char>> *)a3 :char_traits<char>;
- (void)_logSpeechProfileUpdatedEventWithLmeData:(shared_ptr<quasar:(int)a4 :()map<std:()int :()std:(std:(int>>> *)a5 :allocator<std::pair<const)std::string :less<std::string> string LmeData>)a3 sizeInBytes:numEnumeratedEntries:;
- (void)_pronunciationsForOrthography:(const void *)a3 phoneticOrthography:(const void *)a4 templateName:(const void *)a5 pronunciations:(void *)a6 pronRequest:(int)a7 outOrthography:(void *)a8;
- (void)addPersonalizationData:(id)a3;
- (void)addPersonalizationJsonData:(id)a3;
- (void)addWordWithParts:(id)a3 templateName:(id)a4;
- (void)createInlineLmeUserDataForContextStrings:(id)a3;
- (void)createInlineLmeUserDataForWordsWithMetadata:(id)a3;
- (void)readUserProfile:(id)a3;
- (void)readUserProfileWithPath:(id)a3;
- (void)removeLmeDataForTemplateName:(id)a3;
- (void)setExperimentIds:(id)a3;
- (void)setTemplateToVersion:(id)a3;
- (void)signalEndOfUserData;
- (void)writeOutUserDataToJson:(id)a3 withConfig:(id)a4;
@end

@implementation _EARUserProfileBuilder

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == a1)
  {
    EARLogger::initializeLogging(v3);

    +[EARSdapiHelper EnsureSDAPIInitialized];
  }
}

+ (BOOL)isEasyToRecognizeWord:(id)a3 forLocale:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 UTF8String];
  v8 = [v6 localeIdentifier];
  v9 = [v8 UTF8String];
  LOBYTE(v7) = quasar::wordIsNativeScriptForLocale(v7, v9, v10);

  return v7;
}

- (_EARUserProfileBuilder)initWithConfiguration:(id)a3 withLanguage:(id)a4 withSdapiOverrides:(id)a5 withSdapiConfig:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = _EARUserProfileBuilder;
  if ([(_EARUserProfileBuilder *)&v17 init])
  {
    v16.__r_.__value_.__r.__words[0] = [v10 fileSystemRepresentation];
    std::make_unique[abi:ne200100]<quasar::LmeDataFactory,char const*,0>();
  }

  v14 = 0;

  return v14;
}

- (_EARUserProfileBuilder)initWithConfiguration:(id)a3 language:(id)a4 overrides:(id)a5 sdapiOverrides:(id)a6 generalVoc:(id)a7 emptyVoc:(id)a8 pgVoc:(id)a9 lexiconEnh:(id)a10 tokenEnh:(id)a11 paramsetHolder:(id)a12 isJit:(BOOL)a13
{
  v18 = a3;
  v19 = a4;
  v31 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = [_EARQuasarTokenizer extractModelRootFromNcsResourcePaths:v21 lexiconEnh:v24 tokenEnh:v25 itnEnh:0];
  LOBYTE(v30) = a13;
  v28 = [(_EARUserProfileBuilder *)self initWithConfiguration:v18 language:v19 overrides:v31 sdapiOverrides:v20 emptyVoc:v22 pgVoc:v23 paramsetHolder:v26 isJit:v30];

  return v28;
}

- (_EARUserProfileBuilder)initWithConfig:(id)a3 language:(id)a4 overrides:(id)a5 textNormalizationModelRoot:(id)a6 sdapiOverrides:(id)a7 emptyVoc:(id)a8 pgVoc:(id)a9 paramsetHolder:(id)a10 isJit:(BOOL)a11 error:(id *)a12
{
  v31 = *MEMORY[0x1E69E9840];
  v29 = a3;
  obj = a4;
  v24 = a4;
  v28 = a5;
  v18 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v19 = a10;
  v30.receiver = self;
  v30.super_class = _EARUserProfileBuilder;
  if ([(_EARUserProfileBuilder *)&v30 init])
  {
    v20 = v29;
    [v29 fileSystemRepresentation];
    std::make_unique[abi:ne200100]<quasar::LmeDataFactory,char const*,0>();
  }

  v21 = 0;

  return v21;
}

- (void)addWordWithParts:(id)a3 templateName:(id)a4
{
  v108 = *MEMORY[0x1E69E9840];
  v72 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    [v6 ear_toString];
  }

  else
  {
    v102[0] = 0;
    v102[1] = 0;
    v103 = 0;
  }

  quasar::SystemConfig::aceCatToQuasarTemplate(self->_dataFactory.__ptr_ + 184, v102, &v101);
  if ((quasar::LmeDataFactory::isSupportedCategory(self->_dataFactory.__ptr_, &v101, 1) & 1) == 0)
  {
    goto LABEL_109;
  }

  MaxEntityCountFromQuasarTemplate = quasar::LmeDataFactory::getMaxEntityCountFromQuasarTemplate(self->_dataFactory.__ptr_, &v101.__r_.__value_.__l.__data_);
  if ((MaxEntityCountFromQuasarTemplate & 0x80000000) == 0)
  {
    v94 = &v101;
    if (*(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->_quasarTemplate2Count.__table_.__bucket_list_.__ptr_, &v101.__r_.__value_.__l.__data_) + 10) >= MaxEntityCountFromQuasarTemplate)
    {
      goto LABEL_109;
    }
  }

  MaxOrthographyLengthFromQuasarTemplate = quasar::LmeDataFactory::getMaxOrthographyLengthFromQuasarTemplate(self->_dataFactory.__ptr_, &v101.__r_.__value_.__l.__data_);
  if ((MaxOrthographyLengthFromQuasarTemplate & 0x80000000) != 0)
  {
LABEL_17:
    isContactTemplate = quasar::LmeDataFactory::isContactTemplate(self->_dataFactory.__ptr_, &v101.__r_.__value_.__l.__data_);
    if (!isContactTemplate || (MaxNumEnumeratedContacts = quasar::LmeDataFactory::getMaxNumEnumeratedContacts(self->_dataFactory.__ptr_), (MaxNumEnumeratedContacts & 0x80000000) != 0) || self->_contactEnumSet.__tree_.__size_ < MaxNumEnumeratedContacts)
    {
      v94 = &v101;
      v20 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->_quasarTemplate2Count.__table_.__bucket_list_.__ptr_, &v101.__r_.__value_.__l.__data_);
      ++*(v20 + 10);
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v93[0] = 0;
      v93[1] = 0;
      v92 = v93;
      quasar::LmeDataFactory::getNameEnumeratorFromAceCategory(self->_dataFactory.__ptr_, v102, &lpsrc);
      v70 = v7;
      memset(&v89, 0, sizeof(v89));
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      obj = v72;
      v21 = [obj countByEnumeratingWithState:&v85 objects:v106 count:16];
      v69 = self;
      if (!v21)
      {

LABEL_117:
        if (lpsrc)
        {
          (*(*lpsrc + 32))(lpsrc, &v94);
        }

LABEL_119:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v57 = v94;
        v56 = v95;
        v58 = v69;
        if (v94 != v95)
        {
          do
          {
            memset(&__p, 0, sizeof(__p));
            v59 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v92, v57);
            if (v93 != v59)
            {
              std::string::operator=(&__p, (v59 + 56));
            }

            memset(&v76, 0, sizeof(v76));
            [(_EARUserProfileBuilder *)v58 _pronunciationsForOrthography:v57 phoneticOrthography:&__p templateName:&v101 pronunciations:v57 + 56 pronRequest:3 outOrthography:&v76, v69];
            std::string::operator=(v57, &v76);
            if (!quasar::LmeDataFactoryBase::PronSet::empty((v57 + 56)))
            {
              v60 = v83;
              if (v83 >= v84)
              {
                v61 = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string &,std::string &,int &,quasar::LmeDataFactoryBase::PronSet &>(&v82, v57, v57 + 24, (v57 + 48), v57 + 56);
              }

              else
              {
                std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,std::string &,int &,quasar::LmeDataFactoryBase::PronSet &>(&v82, v83, v57, v57 + 24, (v57 + 48), v57 + 56);
                v61 = v60 + 80;
              }

              v83 = v61;
            }

            if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v76.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v57 += 80;
          }

          while (v57 != v56);
        }

        v7 = v70;
        quasar::LmePackedUserData::addUnpackedEntity(&v58->_userData, v102, &v82);
        ++v58->_wordsAccepted;
        if (isContactTemplate && lpsrc && (*(*lpsrc + 24))(lpsrc))
        {
          MaxPronLen = quasar::LmeDataFactory::getMaxPronLen(v58->_dataFactory.__ptr_, &v101.__r_.__value_.__l.__data_);
          quasar::LmeDataFactory::encodeAndFilterEntity(&v82, MaxPronLen, &__p);
          size = __p.__r_.__value_.__l.__size_;
          if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
          {
            v64 = __p.__r_.__value_.__r.__words[0] + 24;
            do
            {
              v65 = *(v64 + 23);
              if (v65 >= 0)
              {
                v66 = v64;
              }

              else
              {
                v66 = *v64;
              }

              if (v65 >= 0)
              {
                v67 = *(v64 + 23);
              }

              else
              {
                v67 = *(v64 + 8);
              }

              std::string::append((v64 - 24), v66, v67);
              v68 = v64 + 56;
              v64 += 80;
            }

            while (v68 != size);
          }

          (*(*lpsrc + 16))(lpsrc, &__p, &v58->_contactEnumSet);
          v76.__r_.__value_.__r.__words[0] = &__p;
          std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v76);
        }

        quasar::LmeDataFactoryBase::PronSet::PronSet(&__p);
        [(_EARUserProfileBuilder *)v58 _embeddingsForOrthography:&v89 templateName:&v101 embeddings:&__p pronRequest:2];
        std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&__p, __p.__r_.__value_.__l.__size_);
        __p.__r_.__value_.__r.__words[0] = &v82;
        std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        if (v91)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v91);
        }

        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v92, v93[0]);
        v92 = &v94;
        std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v92);
        goto LABEL_110;
      }

      v22 = *v86;
      v74 = 1;
LABEL_22:
      v23 = 0;
      while (1)
      {
        if (*v86 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v85 + 1) + 8 * v23);
        v83 = 0;
        v84 = 0;
        v82 = &v83;
        v25 = [v24 pronunciations];
        v26 = v25 == 0;

        if (!v26)
        {
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v27 = [v24 pronunciations];
          v28 = [v27 countByEnumeratingWithState:&v78 objects:v105 count:16];
          if (v28)
          {
            v29 = *v79;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v79 != v29)
                {
                  objc_enumerationMutation(v27);
                }

                v31 = *(*(&v78 + 1) + 8 * i);
                if (v31)
                {
                  [v31 ear_toString];
                }

                else
                {
                  memset(&__p, 0, sizeof(__p));
                }

                std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v82, &__p.__r_.__value_.__l.__data_);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              v28 = [v27 countByEnumeratingWithState:&v78 objects:v105 count:16];
            }

            while (v28);
          }
        }

        v32 = [v24 tagName];
        v33 = v32;
        if (v32)
        {
          [v32 ear_toString];
        }

        else
        {
          memset(&__p, 0, sizeof(__p));
        }

        v34 = [v24 orthography];
        v35 = v34;
        if (v34)
        {
          [v34 ear_toString];
        }

        else
        {
          memset(&v76, 0, sizeof(v76));
        }

        v36 = SHIBYTE(v76.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v36 = v76.__r_.__value_.__l.__size_;
          if (!v76.__r_.__value_.__l.__size_)
          {
            v74 = 0;
LABEL_102:
            operator delete(v76.__r_.__value_.__l.__data_);
            goto LABEL_103;
          }

          v37 = v76.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (!*(&v76.__r_.__value_.__s + 23))
          {
            v74 = 0;
            goto LABEL_103;
          }

          v37 = &v76;
        }

        if (utf8::find_invalid<std::__wrap_iter<char const*>>(v37, v37 + v36) != v37 + v36)
        {
          v74 = 0;
          goto LABEL_101;
        }

        v38 = [v24 phoneticOrthography];
        v39 = v38;
        if (v38)
        {
          [v38 ear_toString];
        }

        else
        {
          memset(&__str, 0, sizeof(__str));
        }

        v40 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
          break;
        }

        v40 = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__l.__size_)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
LABEL_62:
          if (utf8::find_invalid<std::__wrap_iter<char const*>>(p_str, p_str + v40) == p_str + v40)
          {
            v104 = &v76;
            v42 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v92, &v76.__r_.__value_.__l.__data_);
            std::string::operator=((v42 + 56), &__str);
          }

          if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_66;
          }
        }

        operator delete(__str.__r_.__value_.__l.__data_);
LABEL_66:
        if (v84)
        {
          __str.__r_.__value_.__r.__words[0] = [v24 frequency];
          v43 = v95;
          if (v95 >= v96)
          {
            v44 = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string &,std::string &,unsigned long,std::set<std::string> &>(&v94, &v76, &__p, &__str, &v82);
          }

          else
          {
            std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,std::string &,unsigned long,std::set<std::string> &>(&v94, v95, &v76, &__p, &__str, &v82);
            v44 = v43 + 80;
          }

          v74 = 0;
          v95 = v44;
        }

        else
        {
          *&__str.__r_.__value_.__r.__words[1] = 0uLL;
          __str.__r_.__value_.__r.__words[0] = &__str.__r_.__value_.__l.__size_;
          {
            v46 = v91;
            if (v91)
            {
              atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v45 + 40))(v45, &v76, &__str);
            if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v46);
            }
          }

          else
          {
            std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&__str, &v76.__r_.__value_.__l.__data_);
          }

          v47 = __str.__r_.__value_.__r.__words[0];
          if (__str.__r_.__value_.__l.__data_ != &__str.__r_.__value_.__r.__words[1])
          {
            do
            {
              v104 = [v24 frequency];
              v48 = v95;
              if (v95 >= v96)
              {
                v49 = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string const&,std::string&,unsigned long,std::set<std::string> &>(&v94, v47 + 32, &__p, &v104, &v82);
              }

              else
              {
                std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,std::string&,unsigned long,std::set<std::string> &>(&v94, v95, v47 + 32, &__p, &v104, &v82);
                v49 = v48 + 80;
              }

              v95 = v49;
              v50 = *(v47 + 8);
              if (v50)
              {
                do
                {
                  v51 = v50;
                  v50 = v50->__r_.__value_.__r.__words[0];
                }

                while (v50);
              }

              else
              {
                do
                {
                  v51 = *(v47 + 16);
                  v52 = v51->__r_.__value_.__r.__words[0] == v47;
                  v47 = v51;
                }

                while (!v52);
              }

              v47 = v51;
            }

            while (v51 != &__str.__r_.__value_.__r.__words[1]);
          }

          v53 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v53 = v89.__r_.__value_.__l.__size_;
          }

          if (v53)
          {
            std::string::append(&v89, " ");
          }

          if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v54 = &v76;
          }

          else
          {
            v54 = v76.__r_.__value_.__r.__words[0];
          }

          if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v55 = v76.__r_.__value_.__l.__size_;
          }

          std::string::append(&v89, v54, v55);
          std::__tree<std::string>::destroy(&__str, __str.__r_.__value_.__l.__size_);
        }

LABEL_101:
        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_102;
        }

LABEL_103:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::__tree<std::string>::destroy(&v82, v83);
        if (++v23 == v21)
        {
          v21 = [obj countByEnumeratingWithState:&v85 objects:v106 count:16];
          if (!v21)
          {

            if ((v74 & 1) == 0)
            {
              goto LABEL_119;
            }

            goto LABEL_117;
          }

          goto LABEL_22;
        }
      }

      if (!*(&__str.__r_.__value_.__s + 23))
      {
        goto LABEL_66;
      }

      p_str = &__str;
      goto LABEL_62;
    }

LABEL_109:
    ++self->_wordsRejected;
    goto LABEL_110;
  }

  v10 = v7;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v11 = v72;
  v12 = [v11 countByEnumeratingWithState:&v97 objects:v107 count:16];
  v13 = self;
  if (!v12)
  {
    goto LABEL_16;
  }

  v14 = *v98;
  v15 = MaxOrthographyLengthFromQuasarTemplate;
LABEL_10:
  v16 = 0;
  while (1)
  {
    if (*v98 != v14)
    {
      objc_enumerationMutation(v11);
    }

    v17 = [*(*(&v97 + 1) + 8 * v16) orthography];
    v18 = [v17 length] > v15;

    if (v18)
    {
      break;
    }

    if (v12 == ++v16)
    {
      v12 = [v11 countByEnumeratingWithState:&v97 objects:v107 count:16];
      if (!v12)
      {
LABEL_16:

        v7 = v10;
        self = v13;
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  ++v13->_wordsRejected;

  v7 = v10;
LABEL_110:
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v103) < 0)
  {
    operator delete(v102[0]);
  }
}

- (void)removeLmeDataForTemplateName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    ptr = self->_quasarLmeData.__ptr_;
    if (ptr)
    {
      [v4 ear_toString];
      quasar::LmeData::removeFstData(ptr, &__p);
      if (v8 < 0)
      {
        operator delete(__p);
      }
    }
  }
}

- (NSDictionary)templateToVersion
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:self->_templateToVersion.__tree_.__size_];
  begin_node = self->_templateToVersion.__tree_.__begin_node_;
  p_end_node = &self->_templateToVersion.__tree_.__end_node_;
  if (begin_node != &self->_templateToVersion.__tree_.__end_node_)
  {
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithLongLong:begin_node[7].__left_];
      v7 = begin_node + 4;
      if (SHIBYTE(begin_node[6].__left_) < 0)
      {
        v7 = v7->__left_;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      [v3 setValue:v6 forKey:v8];

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v10 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v10 = begin_node[2].__left_;
          v11 = v10->__left_ == begin_node;
          begin_node = v10;
        }

        while (!v11);
      }

      begin_node = v10;
    }

    while (v10 != p_end_node);
  }

  return v3;
}

- (void)setTemplateToVersion:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  std::__tree<std::string>::destroy(&self->_templateToVersion, self->_templateToVersion.__tree_.__end_node_.__left_);
  self->_templateToVersion.__tree_.__end_node_.__left_ = 0;
  self->_templateToVersion.__tree_.__size_ = 0;
  self->_templateToVersion.__tree_.__begin_node_ = &self->_templateToVersion.__tree_.__end_node_;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        if (v9)
        {
          [*(*(&v18 + 1) + 8 * i) ear_toString];
        }

        else
        {
          *v13 = 0uLL;
          v14 = 0;
        }

        v10 = [v5 objectForKeyedSubscript:v9];
        v11 = [v10 longLongValue];
        *__p = *v13;
        v12 = v14;
        v14 = 0;
        *v13 = 0uLL;
        v16 = v12;
        v17 = v11;
        std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,long long>>(&self->_templateToVersion, __p);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }
}

- (NSSet)experimentIds
{
  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:self->_experimentIds.__tree_.__size_];
  begin_node = self->_experimentIds.__tree_.__begin_node_;
  p_end_node = &self->_experimentIds.__tree_.__end_node_;
  if (begin_node != &self->_experimentIds.__tree_.__end_node_)
  {
    do
    {
      left_high = SHIBYTE(begin_node[6].__left_);
      if ((left_high & 0x8000000000000000) != 0)
      {
        left = begin_node[4].__left_;
        left_high = begin_node[5].__left_;
      }

      else
      {
        left = begin_node + 4;
      }

      v8 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{left, left_high}];
      [v3 addObject:v8];

      v9 = begin_node[1].__left_;
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = v9->__left_;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = begin_node[2].__left_;
          v11 = v10->__left_ == begin_node;
          begin_node = v10;
        }

        while (!v11);
      }

      begin_node = v10;
    }

    while (v10 != p_end_node);
  }

  return v3;
}

- (void)setExperimentIds:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  std::__tree<std::string>::destroy(&self->_experimentIds, self->_experimentIds.__tree_.__end_node_.__left_);
  self->_experimentIds.__tree_.__end_node_.__left_ = 0;
  self->_experimentIds.__tree_.__size_ = 0;
  self->_experimentIds.__tree_.__begin_node_ = &self->_experimentIds.__tree_.__end_node_;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (v9)
        {
          [v9 ear_toString];
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v11 = 0;
        }

        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&self->_experimentIds, __p);
        if (SHIBYTE(v11) < 0)
        {
          operator delete(__p[0]);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (BOOL)_writeProfileToStream:(void *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3 + *(*a3 - 24);
  if ((v4[32] & 5) == 0)
  {
    (*(**(v4 + 5) + 32))(&__str);
  }

  if (self->_reuseProfile)
  {
    ptr = self->_quasarLmeData.__ptr_;
    if (ptr)
    {
      cntrl = self->_quasarLmeData.__cntrl_;
      v10 = self->_quasarLmeData.__ptr_;
      if (cntrl)
      {
        atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
      }

      if ((ptr + 344) != &self->_templateToVersion)
      {
        std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,long long>,std::__tree_node<std::__value_type<std::string,long long>,void *> *,long>>(ptr + 43, self->_templateToVersion.__tree_.__begin_node_, &self->_templateToVersion.__tree_.__end_node_.__left_);
        ptr = v10;
      }

      quasar::SystemConfig::getLmeCompatibilityKey((self->_dataFactory.__ptr_ + 184), &__str);
      std::string::operator=((ptr + 296), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      language = self->_language;
      if (language)
      {
        [(NSString *)language ear_toString];
      }

      else
      {
        memset(&__str, 0, sizeof(__str));
      }

      std::string::operator=((v10 + 320), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v8 = v10;
      if ((v10 + 368) != &self->_experimentIds)
      {
        std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v10 + 46, self->_experimentIds.__tree_.__begin_node_, &self->_experimentIds.__tree_.__end_node_.__left_);
        v8 = v10;
      }

      quasar::WordPronCache::removeWordsWithoutTemplates((v8 + 16));
    }
  }

  _ZNSt3__115allocate_sharedB8ne200100IN6quasar7LmeDataENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

- (id)dataProfile
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  if ([(_EARUserProfileBuilder *)self _writeProfileToStream:&v11])
  {
    std::stringbuf::str();
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

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v3 length:v4];
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = 0;
  }

  v10[0] = *MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v11 = v6;
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](&v15);

  return v5;
}

- (BOOL)writeProfileToFile:(id)a3 protectionClass:(int64_t)a4 coordinated:(BOOL)a5 length:(unint64_t *)a6 error:(id *)a7
{
  v9 = a5;
  v63 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = v12;
  if (a6)
  {
    *a6 = 0;
  }

  if ([v12 length])
  {
    *buf = 0;
    v45 = buf;
    v46 = 0x14812000000;
    v47 = __Block_byref_object_copy__95;
    v48 = __Block_byref_object_dispose__96;
    v49 = &unk_1B5CADD23;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v50);
    if ([(_EARUserProfileBuilder *)self _writeProfileToStream:v45 + 64])
    {
      if (v13)
      {
        [v13 ear_toString];
        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v43.__r_.__value_.__l.__size_;
        }
      }

      else
      {
        size = 0;
        memset(&v43, 0, sizeof(v43));
      }

      v17 = &v42;
      std::string::basic_string[abi:ne200100](&v42, size + 4);
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v17 = v42.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v43;
        }

        else
        {
          v18 = v43.__r_.__value_.__r.__words[0];
        }

        memmove(v17, v18, size);
      }

      strcpy(v17 + size, ".tmp");
      is_directory = quasar::filesystem::is_directory(&v43);
      if (is_directory)
      {
        v20 = EARLogger::QuasarOSLogger(is_directory);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *v55 = 0;
          _os_log_impl(&dword_1B501D000, v20, OS_LOG_TYPE_INFO, "Cannot write profile: path points to a directory", v55, 2u);
        }

        v16 = 0;
      }

      else
      {
        quasar::filesystem::remove(&v42);
        v38 = 0;
        v39 = &v38;
        v40 = 0x2020000000;
        v41 = 0;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3321888768;
        v28[2] = __86___EARUserProfileBuilder_writeProfileToFile_protectionClass_coordinated_length_error___block_invoke;
        v28[3] = &unk_1F2D01EC0;
        v30 = buf;
        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v32, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
        }

        else
        {
          v32 = v42;
        }

        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v43;
        }

        v34 = a4;
        v35 = a6;
        v31 = &v38;
        v37 = v9;
        v21 = v13;
        v29 = v21;
        v36 = a7;
        v22 = MEMORY[0x1B8C868A0](v28);
        v23 = ConvertCXXExceptionToNSError(v22);
        if (v23 && (v39[3] & 1) != 0)
        {
          v24 = EARLogger::QuasarOSLogger(v23);
          v16 = 1;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *v55 = 138478339;
            v56 = v21;
            v57 = 2048;
            v58 = a4;
            v59 = 1024;
            LODWORD(v60) = v9;
            _os_log_impl(&dword_1B501D000, v24, OS_LOG_TYPE_INFO, "Persisted speech profile to path=%{private}@ protectionClass=%ld coordinated=%d", v55, 0x1Cu);
          }
        }

        else
        {
          v24 = EARLogger::QuasarOSLogger(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            if (a7)
            {
              v27 = *a7;
            }

            else
            {
              v27 = 0;
            }

            *v55 = 138478595;
            v56 = v21;
            v57 = 2114;
            v58 = v27;
            v59 = 2048;
            v60 = a4;
            v61 = 1024;
            v62 = v9;
            _os_log_error_impl(&dword_1B501D000, v24, OS_LOG_TYPE_ERROR, "Persisting speech profile to path=%{private}@ failed with error=%{public}@ protectionClass=%ld coordinated=%d", v55, 0x26u);
          }

          v16 = 0;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        _Block_object_dispose(&v38, 8);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v16 = 0;
    }

    _Block_object_dispose(buf, 8);
    v50[0] = *MEMORY[0x1E69E54D8];
    v25 = *(MEMORY[0x1E69E54D8] + 72);
    *(v50 + *(v50[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v50[2] = v25;
    v51 = MEMORY[0x1E69E5548] + 16;
    if (v53 < 0)
    {
      operator delete(v52[7].__locale_);
    }

    v51 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v52);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C85200](&v54);
  }

  else
  {
    v15 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_INFO, "Cannot write profile: path is empty", buf, 2u);
    }

    v16 = 0;
  }

  return v16;
}

- (void)readUserProfile:(id)a3
{
  v4 = a3;
  if (v4)
  {
    std::__tree<std::string>::destroy(&self->_templateToVersion, self->_templateToVersion.__tree_.__end_node_.__left_);
    self->_templateToVersion.__tree_.__end_node_.__left_ = 0;
    self->_templateToVersion.__tree_.__size_ = 0;
    self->_templateToVersion.__tree_.__begin_node_ = &self->_templateToVersion.__tree_.__end_node_;
    std::__tree<std::string>::destroy(&self->_experimentIds, self->_experimentIds.__tree_.__end_node_.__left_);
    self->_experimentIds.__tree_.__end_node_.__left_ = 0;
    self->_experimentIds.__tree_.__size_ = 0;
    self->_experimentIds.__tree_.__begin_node_ = &self->_experimentIds.__tree_.__end_node_;
    EARHelpers::createNSDataInputStream(v4, v5);
  }
}

- (void)readUserProfileWithPath:(id)a3
{
  v7[72] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    std::__tree<std::string>::destroy(&self->_templateToVersion, self->_templateToVersion.__tree_.__end_node_.__left_);
    self->_templateToVersion.__tree_.__end_node_.__left_ = 0;
    self->_templateToVersion.__tree_.__size_ = 0;
    self->_templateToVersion.__tree_.__begin_node_ = &self->_templateToVersion.__tree_.__end_node_;
    std::__tree<std::string>::destroy(&self->_experimentIds, self->_experimentIds.__tree_.__end_node_.__left_);
    self->_experimentIds.__tree_.__end_node_.__left_ = 0;
    self->_experimentIds.__tree_.__size_ = 0;
    self->_experimentIds.__tree_.__begin_node_ = &self->_experimentIds.__tree_.__end_node_;
    [v4 ear_toString];
    std::ifstream::basic_ifstream(v7);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    _ZNSt3__115allocate_sharedB8ne200100IN6quasar7LmeDataENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }
}

- (void)addPersonalizationData:(id)a3
{
  v5 = a3;
  if (self->_personalizationRecipe.__ptr_)
  {
    if (!self->_tokenizer.__ptr_)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"EARUserProfileBuilder.mm" lineNumber:1013 description:@"Tokenizer is invoked after explicit release!"];
    }

    EARHelpers::StdPersonalizedInputFromEARPersonalizedInput(v5, v17);
    ptr = self->_personalizationRecipe.__ptr_;
    std::map<std::string,std::map<std::string,int>>::map[abi:ne200100](v14, v17);
    quasar::PersonalizationRecipe::getPersonalizedData(ptr, v14, &v15);
    std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::destroy(v14, v14[1]);
    v7 = v15;
    if (v15 != v16)
    {
      do
      {
        std::pair<std::string const,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>::pair[abi:ne200100](&__p, v7 + 2);
        quasar::LmePackedUserData::addUnpackedEntities(&self->_userData, &__p.__r_.__value_.__l.__data_, v13);
        v18 = v13;
        std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__destroy_vector::operator()[abi:ne200100](&v18);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v8 = *(v7 + 1);
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = *(v7 + 2);
            v10 = *v9 == v7;
            v7 = v9;
          }

          while (!v10);
        }

        v7 = v9;
      }

      while (v9 != v16);
    }

    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::destroy(&v15, v16[0]);
    std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::destroy(v17, v17[1]);
  }
}

- (void)addPersonalizationJsonData:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_personalizationRecipe.__ptr_)
  {
    if (self->_tokenizer.__ptr_)
    {
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"EARUserProfileBuilder.mm" lineNumber:1030 description:@"Tokenizer is invoked after explicit release!"];

      if (!v6)
      {
LABEL_6:
        quasar::getInputDataFromJson();
      }
    }

    [v6 ear_toString];
    goto LABEL_6;
  }
}

- (void)writeOutUserDataToJson:(id)a3 withConfig:(id)a4
{
  v5 = a3;
  v6 = a4;
  quasar::SystemConfig::SystemConfig(v7);
}

- (id)pronunciationsForOrthography:(id)a3
{
  v4 = a3;
  v26 = v4;
  EARHelpers::truncateFromFirstNull(&v26);
  v5 = v26;

  quasar::LmeDataFactoryBase::PronSet::PronSet(v25);
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  if (v5)
  {
    [v5 ear_toString];
  }

  else
  {
    v21[0] = 0;
    v21[1] = 0;
    v22 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v19, "");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  [(_EARUserProfileBuilder *)self _pronunciationsForOrthography:v21 phoneticOrthography:v19 templateName:__p pronunciations:v25 pronRequest:0 outOrthography:v23];
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  v6 = [MEMORY[0x1E695DFA8] set];
  quasar::Bitmap::~Bitmap(v25);
  v8 = v7 + 1;
  v9 = *v7;
  if (*v7 != v7 + 1)
  {
    do
    {
      v10 = *(v9 + 63);
      if (v10 < 0)
      {
        v11 = v9[5];
        v10 = v9[6];
      }

      else
      {
        v11 = v9 + 5;
      }

      v12 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v11, v10}];
      [v6 addObject:v12];

      v13 = v9[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v9[2];
          v15 = *v14 == v9;
          v9 = v14;
        }

        while (!v15);
      }

      v9 = v14;
    }

    while (v14 != v8);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v25, v25[1]);

  return v6;
}

- (void)_pronunciationsForOrthography:(const void *)a3 phoneticOrthography:(const void *)a4 templateName:(const void *)a5 pronunciations:(void *)a6 pronRequest:(int)a7 outOrthography:(void *)a8
{
  v9 = *&a7;
  std::string::operator=(a8, a3);
  v16 = *(a3 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a3 + 1);
  }

  if (v16)
  {
    v105 = 0;
    v106 = 0;
    v107 = 0;
    quasar::Bitmap::~Bitmap(a6);
    v18 = v17 + 1;
    v19 = *v17;
    if (*v17 != v17 + 1)
    {
      do
      {
        if (*(v19 + 8) == 1)
        {
          std::vector<std::string>::push_back[abi:ne200100](&v105, (v19 + 5));
        }

        v20 = v19[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v19[2];
            v22 = *v21 == v19;
            v19 = v21;
          }

          while (!v22);
        }

        v19 = v21;
      }

      while (v21 != v18);
    }

    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *a3, *(a3 + 1));
    }

    else
    {
      __str = *a3;
    }

    if (v105 == v106)
    {
      v27 = *(a4 + 23);
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(a4 + 1);
      }

      if (v27)
      {
        std::operator+<char>();
        if (v96 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v96 >= 0)
        {
          v29 = HIBYTE(v96);
        }

        else
        {
          v29 = *(&__p + 1);
        }

        std::string::append(&__str, p_p, v29);
        if (SHIBYTE(v96) < 0)
        {
          operator delete(__p);
        }

        std::string::operator=(a8, &__str);
      }
    }

    else
    {
      v103.__r_.__value_.__r.__words[0] = "-";
      v103.__r_.__value_.__l.__size_ = 1;
      quasar::join<std::vector<std::string>>(&v105, &v103);
      v23 = std::string::insert(&v83, 0, "\\\\"");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v96 = v23->__r_.__value_.__r.__words[2];
      __p = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (v96 >= 0)
      {
        v25 = &__p;
      }

      else
      {
        v25 = __p;
      }

      if (v96 >= 0)
      {
        v26 = HIBYTE(v96);
      }

      else
      {
        v26 = *(&__p + 1);
      }

      std::string::append(&__str, v25, v26);
      if (SHIBYTE(v96) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }
    }

    ptr = self->_outPronCache.__ptr_;
    if (ptr)
    {
      quasar::WordPronCache::addTemplateForWord(ptr, a5, &__str, 1);
      quasar::WordPronCache::addTemplateForWord(self->_outPronCache.__ptr_, a5, a3, 1);
    }

    quasar::LmeDataFactoryBase::PronSet::clear(a6);
    v31 = *(a4 + 23);
    v32 = v31;
    v33 = *(a4 + 1);
    if ((v31 & 0x80u) == 0)
    {
      v34 = *(a4 + 23);
    }

    else
    {
      v34 = *(a4 + 1);
    }

    if (v34)
    {
      v35 = a4;
    }

    else
    {
      v35 = a3;
    }

    if (SHIBYTE(v35->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v103, v35->__r_.__value_.__l.__data_, v35->__r_.__value_.__l.__size_);
      v31 = *(a4 + 23);
      v33 = *(a4 + 1);
      v32 = *(a4 + 23);
    }

    else
    {
      v103 = *v35;
    }

    if (v32 < 0)
    {
      v31 = v33;
    }

    if (v31)
    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v102, *a3, *(a3 + 1));
      }

      else
      {
        v102 = *a3;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v102, "");
    }

    if (self->_outPronCache.__ptr_)
    {
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v94, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
      }

      else
      {
        v94 = __str;
      }

      std::string::basic_string[abi:ne200100]<0>(v92, "");
      quasar::LmeDataFactoryBase::Word::Word(&__p, &v94, v92, 0);
      if (v93 < 0)
      {
        operator delete(v92[0]);
      }

      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }

      if (quasar::WordPronCache::lookupWord(self->_outPronCache.__ptr_, &__p, 1, a6))
      {
        ++self->_outPronCacheHits;
        quasar::LmeDataFactoryBase::PronSet::toPronChoices(a6, v9, &v90);
        quasar::LmeDataFactoryBase::PronSet::PronSet(&v83, &v90);
LABEL_192:
        v67 = a6 + 8;
        std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(a6, *(a6 + 1));
        size = v83.__r_.__value_.__l.__size_;
        *a6 = v83.__r_.__value_.__r.__words[0];
        *(a6 + 1) = size;
        v69 = v83.__r_.__value_.__r.__words[2];
        *(a6 + 2) = *(&v83.__r_.__value_.__l + 2);
        if (v69)
        {
          *(size + 16) = v67;
          v83.__r_.__value_.__r.__words[0] = &v83.__r_.__value_.__l.__size_;
          *&v83.__r_.__value_.__r.__words[1] = 0uLL;
          size = 0;
        }

        else
        {
          *a6 = v67;
        }

        std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v83, size);
        v108 = &v90;
        std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v108);
        std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v100, v101);
        if (v99 < 0)
        {
          operator delete(v97);
        }

        if (SHIBYTE(v96) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_199;
      }

      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v100, v101);
      if (v99 < 0)
      {
        operator delete(v97);
      }

      if (SHIBYTE(v96) < 0)
      {
        operator delete(__p);
      }
    }

    if (self->_quasarLmeData.__ptr_)
    {
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v89, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
      }

      else
      {
        v89 = __str;
      }

      std::string::basic_string[abi:ne200100]<0>(v87, "");
      quasar::LmeDataFactoryBase::Word::Word(&__p, &v89, v87, 0);
      if (v88 < 0)
      {
        operator delete(v87[0]);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (quasar::LmeData::lookupWordPronCache(self->_quasarLmeData.__ptr_, &__p, 1, a6))
      {
        if (v9 == 3)
        {
          v36 = self->_outPronCache.__ptr_;
          if (v36)
          {
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v82, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
            }

            else
            {
              v82 = __str;
            }

            std::string::basic_string[abi:ne200100]<0>(v80, "");
            quasar::LmeDataFactoryBase::Word::Word(&v83, &v82, v80, 1, a6);
            quasar::WordPronCache::addWord(v36, &v83, 1);
            std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v86, v86[1]);
            if (v85 < 0)
            {
              operator delete(v84);
            }

            if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v83.__r_.__value_.__l.__data_);
            }

            if (v81 < 0)
            {
              operator delete(v80[0]);
            }

            if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v82.__r_.__value_.__l.__data_);
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v60 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v60 = __str.__r_.__value_.__l.__size_;
            }

            v61 = *(a3 + 23);
            v62 = v61;
            v63 = *(a3 + 1);
            if ((v61 & 0x80u) != 0)
            {
              v61 = *(a3 + 1);
            }

            if (v60 != v61 || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), v62 >= 0 ? (v65 = a3) : (v65 = *a3), memcmp(p_str, v65, v60)))
            {
              v66 = self->_outPronCache.__ptr_;
              if (v62 < 0)
              {
                std::string::__init_copy_ctor_external(&v79, *a3, v63);
              }

              else
              {
                v79 = *a3;
              }

              std::string::basic_string[abi:ne200100]<0>(v77, "");
              quasar::LmeDataFactoryBase::Word::Word(&v83, &v79, v77, 1, a6);
              quasar::WordPronCache::addWord(v66, &v83, 1);
              quasar::LmeDataFactoryBase::Word::~Word(&v83);
              if (v78 < 0)
              {
                operator delete(v77[0]);
              }

              if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v79.__r_.__value_.__l.__data_);
              }
            }

            ++self->_outPronCacheHits;
          }
        }

        quasar::LmeDataFactoryBase::PronSet::toPronChoices(a6, v9, &v90);
        quasar::LmeDataFactoryBase::PronSet::PronSet(&v83, &v90);
        goto LABEL_192;
      }

      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v100, v101);
      if (v99 < 0)
      {
        operator delete(v97);
      }

      if (SHIBYTE(v96) < 0)
      {
        operator delete(__p);
      }
    }

    if (!self->_tokenizer.__ptr_)
    {
      v70 = [MEMORY[0x1E696AAA8] currentHandler];
      [v70 handleFailureInMethod:a2 object:self file:@"EARUserProfileBuilder.mm" lineNumber:1163 description:@"Tokenizer is invoked after explicit release!"];
    }

    if (v105 == v106)
    {
      quasar::getPronunciationsFromOrthography(&v103, &self->_sanitizer, self->_tokenizer.__ptr_, self->_g2p.__ptr_, v9, &__p);
      v40 = a6 + 8;
      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(a6, *(a6 + 1));
      v41 = *(&__p + 1);
      *a6 = __p;
      *(a6 + 1) = v41;
      v42 = v96;
      *(a6 + 2) = v96;
      if (v42)
      {
        *(v41 + 16) = v40;
        *&__p = &__p + 8;
        *(&__p + 1) = 0;
        v96 = 0;
        v41 = 0;
      }

      else
      {
        *a6 = v40;
      }

      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&__p, v41);
      if (!v9)
      {
LABEL_157:
        ++self->_outPronCacheMisses;
        quasar::LmeDataFactoryBase::PronSet::toPronChoices(a6, v9, &v83);
        quasar::LmeDataFactoryBase::PronSet::PronSet(&__p, &v83);
        v57 = a6 + 8;
        std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(a6, *(a6 + 1));
        v58 = *(&__p + 1);
        *a6 = __p;
        *(a6 + 1) = v58;
        v59 = v96;
        *(a6 + 2) = v96;
        if (v59)
        {
          *(v58 + 16) = v57;
          *&__p = &__p + 8;
          *(&__p + 1) = 0;
          v96 = 0;
          v58 = 0;
        }

        else
        {
          *a6 = v57;
        }

        std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&__p, v58);
        v90 = &v83;
        std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v90);
LABEL_199:
        if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v102.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        *&__p = &v105;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
        return;
      }

      if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v102.__r_.__value_.__l.__size_;
      }

      if (v44)
      {
        v45 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v45 = v103.__r_.__value_.__l.__size_;
        }

        if (v44 != v45 || ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v46 = &v102) : (v46 = v102.__r_.__value_.__r.__words[0]), (v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v47 = &v103) : (v47 = v103.__r_.__value_.__r.__words[0]), memcmp(v46, v47, v44)))
        {
          quasar::getPronunciationsFromOrthography(&v102, &self->_sanitizer, self->_tokenizer.__ptr_, self->_g2p.__ptr_, 1, &v83);
          quasar::LmeDataFactoryBase::PronSet::toPronChoices(&v83, 1, &v90);
          p_data = &v90->__r_.__value_.__l.__data_;
          v49 = &v91->__r_.__value_.__l.__data_;
          if (v90 != v91)
          {
            do
            {
              quasar::PronChoice::PronChoice(&__p, p_data);
              if (__p == 4)
              {
                quasar::LmeDataFactoryBase::PronSet::insert(a6, 4, &__p + 8, v98);
              }

              if (SHIBYTE(v97) < 0)
              {
                operator delete(*(&__p + 1));
              }

              p_data += 5;
            }

            while (p_data != v49);
          }

          *&__p = &v90;
          std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&__p);
          std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v83, v83.__r_.__value_.__l.__size_);
        }
      }
    }

    else
    {
      (*(*self->_g2p.__ptr_ + 32))(&v83);
      quasar::LmeDataFactoryBase::PronSet::PronSet(&__p, &v83);
      v37 = a6 + 8;
      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(a6, *(a6 + 1));
      v38 = *(&__p + 1);
      *a6 = __p;
      *(a6 + 1) = v38;
      v39 = v96;
      *(a6 + 2) = v96;
      if (v39)
      {
        *(v38 + 16) = v37;
        *&__p = &__p + 8;
        *(&__p + 1) = 0;
        v96 = 0;
        v38 = 0;
      }

      else
      {
        *a6 = v37;
      }

      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&__p, v38);
      v90 = &v83;
      std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v90);
    }

    if (v9 == 3)
    {
      v43 = self->_outPronCache.__ptr_;
      if (v43)
      {
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v76, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          v76 = __str;
        }

        std::string::basic_string[abi:ne200100]<0>(v74, "");
        quasar::LmeDataFactoryBase::Word::Word(&__p, &v76, v74, 1, a6);
        quasar::WordPronCache::addWord(v43, &__p, 1);
        std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v100, v101);
        if (v99 < 0)
        {
          operator delete(v97);
        }

        if (SHIBYTE(v96) < 0)
        {
          operator delete(__p);
        }

        if (v75 < 0)
        {
          operator delete(v74[0]);
        }

        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v76.__r_.__value_.__l.__data_);
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v50 = __str.__r_.__value_.__l.__size_;
        }

        v51 = *(a3 + 23);
        v52 = v51;
        v53 = *(a3 + 1);
        if ((v51 & 0x80u) != 0)
        {
          v51 = *(a3 + 1);
        }

        if (v50 != v51 || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v54 = &__str) : (v54 = __str.__r_.__value_.__r.__words[0]), v52 >= 0 ? (v55 = a3) : (v55 = *a3), memcmp(v54, v55, v50)))
        {
          v56 = self->_outPronCache.__ptr_;
          if (v52 < 0)
          {
            std::string::__init_copy_ctor_external(&v73, *a3, v53);
          }

          else
          {
            v73 = *a3;
          }

          std::string::basic_string[abi:ne200100]<0>(v71, "");
          quasar::LmeDataFactoryBase::Word::Word(&__p, &v73, v71, 1, a6);
          quasar::WordPronCache::addWord(v56, &__p, 1);
          std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v100, v101);
          if (v99 < 0)
          {
            operator delete(v97);
          }

          if (SHIBYTE(v96) < 0)
          {
            operator delete(__p);
          }

          if (v72 < 0)
          {
            operator delete(v71[0]);
          }

          if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v73.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    goto LABEL_157;
  }
}

- (void)_embeddingsForOrthography:(const void *)a3 templateName:(const void *)a4 embeddings:(void *)a5 pronRequest:(int)a6
{
  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 1);
  }

  if (v6)
  {
    quasar::TextSanitizer::sanitize(&self->_sanitizer, a3);
  }
}

- (id)sanitizedStringWithString:(id)a3
{
  v4 = a3;
  v5 = v4;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  if (v4)
  {
    [v4 ear_toString];
  }

  else
  {
    __p = 0;
    v10 = 0;
    v11 = 0;
  }

  quasar::TextSanitizer::sanitize(&self->_sanitizer, &__p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  if (v13 >= 0)
  {
    v6 = v12;
  }

  else
  {
    v6 = v12[0];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v6, __p, v10, v11}];
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  return v7;
}

- (void)signalEndOfUserData
{
  ptr = self->_tokenizer.__ptr_;
  self->_tokenizer.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))();
  }
}

- (void)createInlineLmeUserDataForContextStrings:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(_EARUserProfileBuilder *)self removeAllWords];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [_EARWordPart alloc];
        v10 = [MEMORY[0x1E695DFD8] set];
        v11 = [(_EARWordPart *)v9 initWithOrthography:v8 pronunciations:v10 tag:7];

        v19 = v11;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"\\NT-inline"];
        [(_EARUserProfileBuilder *)self addWordWithParts:v12 templateName:v13];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v5);
  }
}

- (void)createInlineLmeUserDataForWordsWithMetadata:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = a3;
  [(_EARUserProfileBuilder *)self removeAllWords];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v10;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v15 = *(*(&v11 + 1) + 8 * v7);
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"\\NT-inline"];
        [(_EARUserProfileBuilder *)self addWordWithParts:v8 templateName:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)createInlineLmeUserDataForContextData:(id)a3 speechProfile:(id)a4
{
  v116[1] = *MEMORY[0x1E69E9840];
  v68 = a3;
  v67 = a4;
  v113 = 0;
  v114 = 0;
  v112 = &v113;
  if (self->_g2emb.__ptr_)
  {
    operator new();
  }

  if ([v68 hasVisualContext])
  {
    cntrl = self->_dataFactory.__cntrl_;
    ptr = self->_dataFactory.__ptr_;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    v66 = cntrl;
    v7 = v68;
    v8 = v7;
    *v72 = 0u;
    v73 = 0u;
    LODWORD(v74) = 1065353216;
    if (!v7)
    {
      v9 = 0;
      v106 = 0;
      v105 = 0;
      v107[0].__locale_ = 0;
      goto LABEL_10;
    }

    [v7 getWords];
    v9 = v105;
    if (v105 == &v106)
    {
LABEL_59:
      std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::destroy(&v105, v106);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v72);

      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      }

      goto LABEL_61;
    }

    while (1)
    {
LABEL_10:
      std::string::basic_string[abi:ne200100]<0>(__p, "\\NT-contact");
      quasar::LmeDataFactory::getNameEnumeratorFromAceCategory(ptr, __p, &v110);
      if (SBYTE7(v94) < 0)
      {
        operator delete(__p[0]);
      }

      v11 = v9[7];
      v10 = v9[8];
      v70 = v9;
      v71 = v10;
LABEL_13:
      if (v11 != v10)
      {
        break;
      }

      if (v111[0])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v111[0]);
      }

      v31 = v70;
      v32 = v70[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v31[2];
          v19 = *v33 == v31;
          v31 = v33;
        }

        while (!v19);
      }

      v9 = v33;
      if (v33 == &v106)
      {
        goto LABEL_59;
      }
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v94 = 0;
    std::vector<quasar::LmeDataFactoryBase::Word>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::Word*,quasar::LmeDataFactoryBase::Word*>(__p, *v11, v11[1], 0xCCCCCCCCCCCCCCCDLL * ((v11[1] - *v11) >> 4));
    v12 = __p[0];
    v13 = __p[1];
    while (1)
    {
      if (v12 == v13)
      {
        *&v100 = __p;
        std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v100);
        v11 += 3;
        v10 = v71;
        goto LABEL_13;
      }

      v14 = v12 + 24;
      v15 = v12[47];
      if (v15 < 0)
      {
        if (*(v12 + 4) != 18)
        {
          goto LABEL_49;
        }

        v14 = *v14;
      }

      else if (v15 != 18)
      {
        goto LABEL_49;
      }

      v16 = *v14;
      v17 = *(v14 + 1);
      v18 = *(v14 + 8);
      v19 = v16 == 0x436C61757369765CLL && v17 == 0x6A2D747865746E6FLL;
      if (v19 && v18 == 29801)
      {
        break;
      }

LABEL_49:
      v12 += 80;
    }

    *&v101 = 0;
    v100 = 0uLL;
    v21 = v12[23];
    if (v21 < 0)
    {
      v21 = *(v12 + 1);
      if (v21)
      {
        v22 = *v12;
LABEL_34:
        if (utf8::find_invalid<std::__wrap_iter<char const*>>(v22, &v22[v21]) == &v22[v21])
        {
          v23 = *(&v100 + 1);
          if (*(&v100 + 1) >= v101)
          {
            v24 = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string const&,char const*&,int const&>(&v100, v12, &quasar::LME_TAG_CONTACT_FIRST_NAME, v12 + 12);
          }

          else
          {
            std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,char const*&,int const&>(&v100, *(&v100 + 1), v12, &quasar::LME_TAG_CONTACT_FIRST_NAME, v12 + 12);
            v24 = v23 + 80;
          }

          *(&v100 + 1) = v24;
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v72, v12);
        }
      }
    }

    else if (v12[23])
    {
      v22 = v12;
      goto LABEL_34;
    }

    if (v110)
    {
      (*(*v110 + 4))(v110, &v100);
      v26 = *(&v100 + 1);
      for (i = v100; i != v26; i += 10)
      {
        if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v72, i))
        {
          v27 = *(i + 23);
          if (v27 < 0)
          {
            v28 = *i;
            v27 = i[1];
          }

          else
          {
            v28 = i;
          }

          v29 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v28, v27}];
          v115 = @"sourceFramework";
          v116[0] = &unk_1F2D54158;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:&v115 count:1];
          [v8 addNamedEntity:v29 metadata:v30];

          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v72, i);
        }
      }
    }

    v103 = &v100;
    std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v103);
    goto LABEL_49;
  }

LABEL_61:
  if (!v68)
  {
    v34 = 0;
    v72[0] = 0;
    v72[1] = 0;
    *&v73 = 0;
    goto LABEL_69;
  }

  [v68 getWords];
  v34 = v72[0];
  if (v72[0] != &v72[1])
  {
    while (1)
    {
LABEL_69:
      if (!self->_tokenizer.__ptr_)
      {
        v55 = [MEMORY[0x1E696AAA8] currentHandler];
        [v55 handleFailureInMethod:a2 object:self file:@"EARUserProfileBuilder.mm" lineNumber:1322 description:@"Tokenizer is invoked after explicit release!"];
      }

      quasar::LmeDataFactory::getNameEnumeratorFromAceCategory(self->_dataFactory.__ptr_, (v34 + 4), &v103);
      v36 = v34[7];
      v37 = v34[8];
LABEL_72:
      if (v36 != v37)
      {
        break;
      }

      if (v104[0])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v104[0]);
      }

      v53 = v34[1];
      if (v53)
      {
        do
        {
          v54 = v53;
          v53 = *v53;
        }

        while (v53);
      }

      else
      {
        do
        {
          v54 = v34[2];
          v19 = *v54 == v34;
          v34 = v54;
        }

        while (!v19);
      }

      v34 = v54;
      if (v54 == &v72[1])
      {
        goto LABEL_63;
      }
    }

    v106 = 0;
    v105 = 0;
    v107[0].__locale_ = 0;
    __p[0] = 0;
    __p[1] = 0;
    *&v94 = 0;
    v39 = *v36;
    v38 = v36[1];
    while (1)
    {
      if (v39 == v38)
      {
        if (v103)
        {
          (*(*v103 + 4))(v103, &v105);
        }

        v100 = 0uLL;
        *&v101 = 0;
        v48 = v105;
        v49 = v106;
        while (v48 != v49)
        {
          quasar::getPronunciationsFromOrthography(v48, &self->_sanitizer, self->_tokenizer.__ptr_, self->_g2p.__ptr_, 3, &v110);
          if (quasar::LmeDataFactoryBase::PronSet::size(&v110))
          {
            v50 = *(&v100 + 1);
            if (*(&v100 + 1) >= v101)
            {
              v51 = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string &,std::string &,int &,quasar::LmeDataFactoryBase::PronSet &>(&v100, v48, v48 + 24, (v48 + 48), &v110);
            }

            else
            {
              std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,std::string &,int &,quasar::LmeDataFactoryBase::PronSet &>(&v100, *(&v100 + 1), v48, v48 + 24, (v48 + 48), &v110);
              v51 = v50 + 80;
            }

            *(&v100 + 1) = v51;
          }

          std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v110, v111[0]);
          v48 += 80;
        }

        v116[0] = v34 + 4;
        v52 = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v112, v34 + 4);
        std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::push_back[abi:ne200100](v52 + 56, &v100);
        v110 = &v100;
        std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v110);
        if (SBYTE7(v94) < 0)
        {
          operator delete(__p[0]);
        }

        __p[0] = &v105;
        std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](__p);
        v36 += 3;
        goto LABEL_72;
      }

      v40 = *(v39 + 23);
      if (v40 < 0)
      {
        v40 = *(v39 + 8);
        if (!v40)
        {
          goto LABEL_95;
        }

        v41 = *v39;
      }

      else
      {
        if (!*(v39 + 23))
        {
          goto LABEL_95;
        }

        v41 = v39;
      }

      if (utf8::find_invalid<std::__wrap_iter<char const*>>(v41, &v41[v40]) == &v41[v40])
      {
        v42 = v106;
        if (v106 >= v107[0].__locale_)
        {
          v43 = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string const&,std::string const&,int const&>(&v105, v39, v39 + 24, (v39 + 48));
        }

        else
        {
          std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,std::string const&,int const&>(&v105, v106, v39, v39 + 24, (v39 + 48));
          v43 = (v42 + 80);
        }

        v106 = v43;
        v44 = BYTE7(v94);
        if (SBYTE7(v94) < 0)
        {
          v44 = __p[1];
        }

        if (v44)
        {
          std::string::append(__p, " ");
        }

        v45 = *(v39 + 23);
        if (v45 >= 0)
        {
          v46 = v39;
        }

        else
        {
          v46 = *v39;
        }

        if (v45 >= 0)
        {
          v47 = *(v39 + 23);
        }

        else
        {
          v47 = *(v39 + 8);
        }

        std::string::append(__p, v46, v47);
      }

LABEL_95:
      v39 += 80;
    }
  }

LABEL_63:
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::destroy(v72, v72[1]);
  if (v114)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v105);
    v111[0] = 0;
    v111[1] = 0;
    v110 = v111;
    v104[1] = 0;
    v104[0] = 0;
    v103 = v104;
    v100 = 0u;
    v101 = 0u;
    v102 = 1065353216;
    v35 = self->_dataFactory.__ptr_;
    v98 = 0;
    v99 = 0;
    (*(*v35 + 48))(v35, &v98);
    if (v99)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v99);
    }

    *__p = 0u;
    v94 = 0u;
    memset(v96, 0, sizeof(v96));
    v95 = 1065353216;
    v97 = 1065353216;
    if (v68)
    {
      [v68 getTemplateToAverageCost];
    }

    else
    {
      *&v74 = 0;
      *v72 = 0uLL;
      v73 = 0uLL;
    }

    std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__move_assign(v96, v72);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v72);
    if (v68)
    {
      [v68 getTemplateToDeviationCost];
    }

    else
    {
      *&v74 = 0;
      *v72 = 0u;
      v73 = 0u;
    }

    std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__move_assign(__p, v72);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v72);
    v57 = self->_dataFactory.__ptr_;
    LODWORD(v72[0]) = 1;
    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v58 = (*(*v57 + 56))(v57, &v112, 0, v72, __p, &v105, &v110, &v103, &v100, &v92, &v90, 0, &v89);
    v59 = v89;
    v89 = 0;
    if (v59)
    {
      (*(*v59 + 8))(v59);
    }

    if (v91)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v91);
    }

    v60 = v92;
    v92 = 0;
    if (v60)
    {
      (*(*v60 + 8))(v60);
    }

    if (v58)
    {
      if (quasar::gLogLevel >= 4)
      {
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
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
        *v72 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v72);
        v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "Could not get LME data", 22);
        MEMORY[0x1B8C84C00](v61, v58);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(v72);
      }

      v56 = 0;
    }

    else
    {
      std::stringbuf::str();
      if ((SBYTE7(v73) & 0x80u) == 0)
      {
        v62 = v72;
      }

      else
      {
        v62 = v72[0];
      }

      if ((SBYTE7(v73) & 0x80u) == 0)
      {
        v63 = BYTE7(v73);
      }

      else
      {
        v63 = v72[1];
      }

      v56 = [MEMORY[0x1E695DEF0] dataWithBytes:v62 length:v63];
      if (SBYTE7(v73) < 0)
      {
        operator delete(v72[0]);
      }
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v96);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(__p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v100);
    std::__tree<std::string>::destroy(&v103, v104[0]);
    std::__tree<std::string>::destroy(&v110, v111[0]);
    v105 = *MEMORY[0x1E69E54E8];
    *(&v105 + *(v105 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
    v106 = (MEMORY[0x1E69E5548] + 16);
    if (v108 < 0)
    {
      operator delete(v107[7].__locale_);
    }

    v106 = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(v107);
    std::ostream::~ostream();
    MEMORY[0x1B8C85200](&v109);
  }

  else
  {
    v56 = 0;
  }

  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::destroy(&v112, v113);

  return v56;
}

- (_EARPeopleSuggesterConfig)peopleSuggesterConfig
{
  ptr = self->_dataFactory.__ptr_;
  v3 = [[_EARPeopleSuggesterConfig alloc] initWithContactsCount:*(ptr + 548) bestContactsCount:*(ptr + 549) bestContactsBonus:*(ptr + 550)];

  return v3;
}

- (void)_logSpeechProfileUpdatedEventWithLmeData:(shared_ptr<quasar:(int)a4 :()map<std:()int :()std:(std:(int>>> *)a5 :allocator<std::pair<const)std::string :less<std::string> string LmeData>)a3 sizeInBytes:numEnumeratedEntries:
{
  if (SLODWORD(a3.__cntrl_) < 1)
  {
    return;
  }

  ptr = a3.__ptr_;
  if (!*a3.__ptr_)
  {
    return;
  }

  v6 = *&a4;
  cntrl = a3.__cntrl_;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:cntrl];
  [v8 setObject:v9 forKeyedSubscript:@"sizeInBytes"];

  v10 = *ptr;
  v11 = *(*ptr + 343);
  if (v11 < 0)
  {
    v12 = *(v10 + 320);
    v11 = *(v10 + 328);
  }

  else
  {
    v12 = v10 + 320;
  }

  v13 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v12, v11}];
  [v8 setObject:v13 forKeyedSubscript:@"language"];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:*(*ptr + 8)];
  [v8 setObject:v14 forKeyedSubscript:@"formatVersion"];

  v15 = [MEMORY[0x1E696AD98] numberWithInt:*(*ptr + 264)];
  [v8 setObject:v15 forKeyedSubscript:@"g2pModelVersion"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(*ptr + 56)];
  [v8 setObject:v16 forKeyedSubscript:@"pronunciationCacheSize"];

  v17 = [MEMORY[0x1E696AE30] processInfo];
  v18 = [v17 processName];
  [v8 setObject:v18 forKeyedSubscript:@"process"];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v6 + 16)];
  [v8 setObject:v19 forKeyedSubscript:@"numLmeSlotsUpdated"];

  v21 = *(*ptr + 224);
  v20 = *(*ptr + 232);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    if (v21)
    {
      v21 = *(*ptr + 224);
      v22 = *(*ptr + 232);
      v23 = MEMORY[0x1E696AD98];
      if (v22)
      {
        v24 = 0;
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_13;
      }

LABEL_12:
      v24 = 1;
LABEL_13:
      v25 = [v23 numberWithUnsignedLong:quasar::QsrTextSymbolTable::NumSymbols(v21)];
      [v8 setObject:v25 forKeyedSubscript:@"totalEntityCount"];

      if ((v24 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }
    }
  }

  else if (v21)
  {
    v22 = 0;
    v23 = MEMORY[0x1E696AD98];
    goto LABEL_12;
  }

  v34 = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = __100___EARUserProfileBuilder__logSpeechProfileUpdatedEventWithLmeData_sizeInBytes_numEnumeratedEntries___block_invoke;
  v37 = &unk_1E7C1A2E0;
  v26 = v8;
  v38 = v26;
  AnalyticsSendEventLazy();
  if (quasar::gLogLevel >= 4)
  {
    memset(v33, 0, sizeof(v33));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Wrote ", 6);
    [@"com.apple.siri.embeddedspeech.SpeechProfileUpdated" ear_toString];
    if ((v32 & 0x80u) == 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    if ((v32 & 0x80u) == 0)
    {
      v29 = v32;
    }

    else
    {
      v29 = __p[1];
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " event to CoreAnalytics.", 24);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(v33);
  }
}

- (void)_logLmeSlotUpdatedEventsWithLanguage:()basic_string<char numEnumeratedEntries:()std:(std::allocator<char>> *)a3 :char_traits<char>
{
  v25 = v3;
  v4 = v3 + 1;
  v5 = *v3;
  if (*v3 != v3 + 1)
  {
    do
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = *(v5 + 55);
      if (v8 < 0)
      {
        v9 = v5[4];
        v8 = v5[5];
      }

      else
      {
        v9 = v5 + 4;
      }

      v10 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v9, v8, v25}];
      [v7 setObject:v10 forKeyedSubscript:@"lmeSlot"];

      v11 = [MEMORY[0x1E696AD98] numberWithInt:*(v5 + 14)];
      [v7 setObject:v11 forKeyedSubscript:@"entityCount"];

      data = a3;
      if (*(&a3->__rep_.__l + 23) < 0)
      {
        data = a3->__rep_.__l.__data_;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:data];
      [v7 setObject:v13 forKeyedSubscript:@"language"];

      v14 = [MEMORY[0x1E696AE30] processInfo];
      v15 = [v14 processName];
      [v7 setObject:v15 forKeyedSubscript:@"process"];

      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __84___EARUserProfileBuilder__logLmeSlotUpdatedEventsWithLanguage_numEnumeratedEntries___block_invoke;
      v32 = &unk_1E7C1A2E0;
      v33 = v7;
      AnalyticsSendEventLazy();

      v16 = v5[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v5[2];
          v18 = *v17 == v5;
          v5 = v17;
        }

        while (!v18);
      }

      v5 = v17;
    }

    while (v17 != v4);
  }

  if (quasar::gLogLevel > 3)
  {
    memset(v28, 0, sizeof(v28));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Wrote ", 6);
    v20 = MEMORY[0x1B8C84C30](v19, v25[2]);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " ", 1);
    [@"com.apple.siri.embeddedspeech.SpeechProfileLmeSlotUpdated" ear_toString];
    if ((v27 & 0x80u) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v23 = v27;
    }

    else
    {
      v23 = __p[1];
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " events to CoreAnalytics.", 25);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(v28);
  }
}

- (void)initWithConfig:language:overrides:textNormalizationModelRoot:sdapiOverrides:emptyVoc:pgVoc:paramsetHolder:isJit:error:.cold.3()
{
  OUTLINED_FUNCTION_0();
  (*(v0 + 16))();
  OUTLINED_FUNCTION_3(&dword_1B501D000, v1, v2, "Can't init LmeDataFactory: %s", v3, v4, v5, v6, 2u);
}

- (void)_writeProfileToStream:(void *)a3 .cold.1(std::__shared_weak_count **a1, uint64_t *a2, void **a3, uint64_t a4)
{
  v7 = *a1;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *a2;
  *a2 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::destroy(a4, *a3);
}

- (uint64_t)createInlineLmeUserDataForContextData:(uint64_t)a1 speechProfile:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

@end