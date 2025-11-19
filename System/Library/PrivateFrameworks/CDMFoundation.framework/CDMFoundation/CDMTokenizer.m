@interface CDMTokenizer
+ (BOOL)registerTrialAsset:(id)a3;
+ (BOOL)syncTrialAsset:(id)a3;
+ (BOOL)trialAssetUpdate:(id)a3;
+ (id)printableLocales:(id)a3;
+ (id)tokenizerForLocale:(id)a3;
+ (void)analyzerFactory;
+ (void)normalizerFactory;
+ (void)registerMorphunAssetsPathForLocale:(id)a3 withPath:(id)a4;
- (CDMTokenizer)initWithLocale:(id)a3;
- (CDMTokenizer)initWithLocale:(id)a3 maxTokens:(int)a4 maxInputSize:(int)a5;
- (id).cxx_construct;
- (id)createTokenChain:(id)a3;
@end

@implementation CDMTokenizer

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 4) = 0;
  return self;
}

+ (void)analyzerFactory
{
  {
    operator new();
  }

  return +[CDMTokenizer analyzerFactory]::factory;
}

+ (void)normalizerFactory
{
  {
    operator new();
  }

  return +[CDMTokenizer normalizerFactory]::factory;
}

- (id)createTokenChain:(id)a3
{
  v4 = a3;
  v5 = v4;
  memset(&v71, 0, sizeof(v71));
  if (v4)
  {
    Length = CFStringGetLength(v4);
    std::basic_string<char16_t>::resize(&v71, Length, v7);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v71;
    }

    else
    {
      v8 = v71.__r_.__value_.__r.__words[0];
    }

    v73.location = 0;
    v73.length = Length;
    CFStringGetCharacters(v5, v73, v8);
  }

  v65 = v5;

  v9 = (*(*self->_tokenizer.__ptr_ + 24))(self->_tokenizer.__ptr_, &v71);
  v10 = (*(*self->_analyzer + 72))(self->_analyzer, v9);
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  v11 = (*(*self->_normalizer + 72))(self->_normalizer, v10);
  v12 = [CDMTokenChain alloc];
  v66 = v11;
  (**self->_locale.__ptr_)(__p);
  if ((v70 & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if ((v70 & 0x80u) == 0)
  {
    v14 = v70;
  }

  else
  {
    v14 = __p[1];
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithCharacters:v13 length:v14];
  v67 = [(CDMTokenChain *)v12 initWithString:v65 locale:v15];

  if (v70 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = v10[1];
  v17 = v10[2];
  morphun::TokenIterator::TokenIterator();
  v18 = v11[1];
  v19 = v11[2];
  morphun::TokenIterator::TokenIterator();
  v68 = 0;
  v20 = 0;
  while (1)
  {
    v21 = v10[2];
    if (v21)
    {
      morphun::Token::getNext(v21);
      v22 = v10[2];
    }

    morphun::TokenIterator::TokenIterator();
    if (!morphun::TokenIterator::operator!=())
    {
      break;
    }

    v23 = morphun::TokenIterator::operator->();
    if ((morphun::Token::isHead(v23) & 1) == 0)
    {
      v24 = morphun::TokenIterator::operator->();
      if ((morphun::Token::isTail(v24) & 1) == 0)
      {
        while (1)
        {
          v25 = morphun::TokenIterator::operator->();
          v26 = (*(*v25 + 24))(v25);
          v27 = morphun::TokenIterator::operator->();
          if (v26 >= (*(*v27 + 24))(v27))
          {
            v28 = morphun::TokenIterator::operator->();
            if (!morphun::Token::isHead(v28))
            {
              break;
            }
          }

          morphun::TokenIterator::operator++();
        }

        v29 = morphun::TokenIterator::operator*();
        Value = morphun::Token::getValue(v29);
        v31 = *(Value + 23);
        if (v31 >= 0)
        {
          v32 = Value;
        }

        else
        {
          v32 = *Value;
        }

        if (v31 >= 0)
        {
          v33 = *(Value + 23);
        }

        else
        {
          v33 = *(Value + 8);
        }

        v34 = [MEMORY[0x1E696AEC0] stringWithCharacters:v32 length:v33];
        CleanValue = morphun::Token::getCleanValue(v29);
        v36 = *(CleanValue + 23);
        if ((v36 & 0x80u) != 0)
        {
          v36 = *(CleanValue + 8);
        }

        if (v36)
        {
          v37 = morphun::Token::getCleanValue(v29);
          v38 = *(v37 + 23);
          if (v38 >= 0)
          {
            v39 = v37;
          }

          else
          {
            v39 = *v37;
          }

          if (v38 >= 0)
          {
            v40 = *(v37 + 23);
          }

          else
          {
            v40 = *(v37 + 8);
          }

          v41 = [MEMORY[0x1E696AEC0] stringWithCharacters:v39 length:v40];
        }

        else
        {
          v41 = 0;
        }

        v42 = [CDMToken alloc];
        v43 = (*(*v29 + 24))(v29);
        v44 = (*(*v29 + 32))(v29);
        isSignificant = morphun::Token::isSignificant(v29);
        v46 = [(CDMToken *)v42 initWithValue:v34 begin:v43 end:v44 significant:isSignificant whitespace:morphun::Token::isWhitespace(v29) cleanValue:v41 tokenIndex:v68 nonWhitespaceTokenIndex:v20];

        while (1)
        {
          v47 = morphun::TokenIterator::operator->();
          v48 = morphun::Token::getValue(v47);
          v49 = *(v48 + 23);
          v50 = v49 >= 0 ? v48 : *v48;
          v51 = v49 >= 0 ? *(v48 + 23) : *(v48 + 8);
          v52 = [MEMORY[0x1E696AEC0] stringWithCharacters:v50 length:v51];
          v53 = morphun::TokenIterator::operator->();
          v54 = (*(*v53 + 24))(v53);
          v55 = morphun::TokenIterator::operator->();
          v56 = [(CDMToken *)v46 hasValue:v52 from:v54 to:(*(*v55 + 32))(v55)];

          if (!v56)
          {
            break;
          }

          v57 = morphun::TokenIterator::operator->();
          v58 = morphun::Token::getCleanValue(v57);
          v59 = *(v58 + 23);
          if (v59 >= 0)
          {
            v60 = v58;
          }

          else
          {
            v60 = *v58;
          }

          if (v59 >= 0)
          {
            v61 = *(v58 + 23);
          }

          else
          {
            v61 = *(v58 + 8);
          }

          v62 = [MEMORY[0x1E696AEC0] stringWithCharacters:v60 length:v61];
          [(CDMToken *)v46 addNormalizedValue:v62];

          morphun::TokenIterator::operator++();
        }

        [(CDMTokenChain *)v67 addToken:v46];
        v63 = morphun::TokenIterator::operator->();
        ++v68;
        v20 += morphun::Token::isWhitespace(v63) ^ 1;

        v11 = v66;
      }
    }

    morphun::TokenIterator::operator++();
  }

  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  (*(*v10 + 16))(v10);
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  return v67;
}

- (CDMTokenizer)initWithLocale:(id)a3 maxTokens:(int)a4 maxInputSize:(int)a5
{
  v6 = *MEMORY[0x1E69E9840];
  [a3 UTF8String];
  operator new();
}

- (CDMTokenizer)initWithLocale:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CDMTokenizer;
  v5 = [(CDMTokenizer *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.siri.mini.CDMTokenizer", 0);
    morphunForceUpdateQueue = v5->_morphunForceUpdateQueue;
    v5->_morphunForceUpdateQueue = v6;

    v5 = [(CDMTokenizer *)v5 initWithLocale:v4 maxTokens:25 maxInputSize:4096];
  }

  return v5;
}

+ (BOOL)registerTrialAsset:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B2870] getAssetPathForLocale:v4];
  if (v5 || ([a1 trialAssetUpdate:v4] & 1) != 0)
  {
    v6 = [a1 syncTrialAsset:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)registerMorphunAssetsPathForLocale:(id)a3 withPath:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 localeIdentifier];
    *buf = 136315650;
    v29 = "+[CDMTokenizer registerMorphunAssetsPathForLocale:withPath:]";
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s Attempting to register Morphun assets from Trial for locale: %@ with path: %@", buf, 0x20u);
  }

  v9 = [v5 localeIdentifier];
  v10 = v9;
  std::string::basic_string[abi:ne200100]<0>(&v26, [v9 UTF8String]);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  morphun::util::ULocale::ULocale();
  v11 = v6;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v6 UTF8String]);
  morphun::resources::DataRegistrationService::registerDataPathForLocale();
  if (v16 < 0)
  {
    operator delete(__p);
  }

  morphun::util::ULocale::~ULocale(buf);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  v12 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v5 localeIdentifier];
    *buf = 136315650;
    v29 = "+[CDMTokenizer registerMorphunAssetsPathForLocale:withPath:]";
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s Registered Morphun assets from Trial for locale: %@ with path: %@", buf, 0x20u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (BOOL)syncTrialAsset:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v4 localeIdentifier];
    *buf = 136315394;
    v25 = "+[CDMTokenizer syncTrialAsset:]";
    v26 = 2112;
    v27 = v20;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Issuing a blocking synchronous API call to get Morphun assets path using MorphunAssets for locale: %@.", buf, 0x16u);
  }

  v23 = 0;
  v6 = [MEMORY[0x1E69B2870] getAssetPathForLocale:v4 withError:&v23];
  v7 = v23;
  v8 = v7;
  if (!v7)
  {
    v10 = [v6 path];
    if (v10)
    {
      v13 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v4 localeIdentifier];
        *buf = 136315650;
        v25 = "+[CDMTokenizer syncTrialAsset:]";
        v26 = 2112;
        v27 = v10;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s MorphunAssets returns path: %@ for locale: %@", buf, 0x20u);
      }

      [a1 registerMorphunAssetsPathForLocale:v4 withPath:v10];
      goto LABEL_12;
    }

    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = [v4 localeIdentifier];
      *buf = 136315394;
      v25 = "+[CDMTokenizer syncTrialAsset:]";
      v26 = 2112;
      v27 = v21;
      _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: CDM get nil Morphun assets path with no error returned from MorphunAssets for locale: %@.", buf, 0x16u);
    }

    v10 = 0;
LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  v9 = [v7 code];
  if (!v9)
  {
    if ([MEMORY[0x1E69B2870] isLocaleEmbedded:v4])
    {
      v10 = CDMOSLoggerForCategory(0);
      v11 = 1;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      v15 = [v4 localeIdentifier];
      *buf = 136315650;
      v25 = "+[CDMTokenizer syncTrialAsset:]";
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_1DC287000, v10, OS_LOG_TYPE_INFO, "%s [WARN]: [Not Critical] CDM gets Morphun assets path with error: %@ for embedded locale: %@. Skip following code to register Morphun assets path.", buf, 0x20u);

      goto LABEL_12;
    }

    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v22 = [v4 localeIdentifier];
      *buf = 136315650;
      v25 = "+[CDMTokenizer syncTrialAsset:]";
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v22;
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: CDM gets Morphun assets path with error: %@ for non-embedded locale: %@.", buf, 0x20u);
    }

    goto LABEL_23;
  }

  if (v9 != 1)
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = [v4 localeIdentifier];
      *buf = 136315650;
      v25 = "+[CDMTokenizer syncTrialAsset:]";
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v16;
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: CDM gets Morphun assets path with error: %@ for locale: %@.", buf, 0x20u);
    }

    goto LABEL_23;
  }

  v10 = CDMOSLoggerForCategory(0);
  v11 = 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = [v4 localeIdentifier];
    *buf = 136315650;
    v25 = "+[CDMTokenizer syncTrialAsset:]";
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_1DC287000, v10, OS_LOG_TYPE_INFO, "%s [WARN]: CDM gets Morphun assets path with error: %@ for locale: %@. The error code indicates the locale is not supported by MorphunAssets. Skip following code to register Morphun assets path. Morphun will fallback to use assets provided by CoreFoundation / ICU.", buf, 0x20u);

LABEL_12:
    v11 = 1;
  }

LABEL_24:

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)trialAssetUpdate:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v21 = [v4 localeIdentifier];
    v23 = 136315394;
    v24 = "+[CDMTokenizer trialAssetUpdate:]";
    v25 = 2112;
    v26 = v21;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Triggering Morphun assets downloading via MorphunAssets API for locale: %@.", &v23, 0x16u);
  }

  if ([MEMORY[0x1E69B2870] isLocaleDownloadSupported:v4])
  {
    if ([MEMORY[0x1E69B2870] isLocaleEmbedded:v4])
    {
      [MEMORY[0x1E69B2870] onDemandDownloadForLocale:v4 withProgress:0 withCompletion:0];
      v6 = CDMOSLoggerForCategory(0);
      v7 = 1;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = [v4 localeIdentifier];
        v9 = [MEMORY[0x1E69B2870] EmbeddedLocales];
        v10 = [a1 printableLocales:v9];
        v23 = 136315650;
        v24 = "+[CDMTokenizer trialAssetUpdate:]";
        v25 = 2112;
        v26 = v8;
        v27 = 2112;
        v28[0] = v10;
        _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s Issued an non-blocking Morphun Trial asset downloading for %@ as it's part of Morphun embedded locales: %@", &v23, 0x20u);

LABEL_9:
        v7 = 1;
      }
    }

    else
    {
      v6 = [MEMORY[0x1E69B2870] blockingOnDemandDownloadForLocale:v4 withTimeout:dispatch_time(0 withProgress:{180000000000), 0}];
      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v4 localeIdentifier];
        v16 = [MEMORY[0x1E69B2870] EmbeddedLocales];
        v17 = [a1 printableLocales:v16];
        v23 = 136315906;
        v24 = "+[CDMTokenizer trialAssetUpdate:]";
        v25 = 2112;
        v26 = v15;
        v27 = 1024;
        LODWORD(v28[0]) = 180;
        WORD2(v28[0]) = 2112;
        *(v28 + 6) = v17;
        _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s Issued a blocking Morphun Trial asset downloading for %@, with timeout of %d secs. This language is NOT part of Morphun embedded locales: %@", &v23, 0x26u);
      }

      if (!v6)
      {
        v7 = 1;
        goto LABEL_17;
      }

      v18 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = [v4 localeIdentifier];
        v23 = 136315650;
        v24 = "+[CDMTokenizer trialAssetUpdate:]";
        v25 = 2112;
        v26 = v22;
        v27 = 2112;
        v28[0] = v6;
        _os_log_error_impl(&dword_1DC287000, v18, OS_LOG_TYPE_ERROR, "%s [ERR]: Morphun Trial asset downloading timed out for: %@, with error: %@", &v23, 0x20u);
      }

      v7 = 0;
    }
  }

  else
  {
    v6 = CDMOSLoggerForCategory(0);
    v7 = 1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = [v4 localeIdentifier];
      v12 = [MEMORY[0x1E69B2870] SupportedLocales];
      v13 = [a1 printableLocales:v12];
      v23 = 136315650;
      v24 = "+[CDMTokenizer trialAssetUpdate:]";
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28[0] = v13;
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s [WARN]: Current locale: %@ is NOT in MorphunAssets download supported list: %@. Return TRUE so that Morphun will fallback to use Morphun assets provided by CoreFoundation / ICU on device for this locale.", &v23, 0x20u);

      goto LABEL_9;
    }
  }

LABEL_17:
  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)printableLocales:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__CDMTokenizer_printableLocales___block_invoke;
  v7[3] = &unk_1E862F8E0;
  v5 = v4;
  v8 = v5;
  [v3 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __33__CDMTokenizer_printableLocales___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localeIdentifier];
  [v2 addObject:?];
}

+ (id)tokenizerForLocale:(id)a3
{
  v3 = a3;
  v4 = [[CDMTokenizer alloc] initWithLocale:v3];

  return v4;
}

@end