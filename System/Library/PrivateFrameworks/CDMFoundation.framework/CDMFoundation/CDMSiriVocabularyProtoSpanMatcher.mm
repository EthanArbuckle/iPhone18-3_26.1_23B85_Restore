@interface CDMSiriVocabularyProtoSpanMatcher
+ (id)convertSEMResultToNLUTypesMatchingSpan:(id)a3 tokenChain:(id)a4;
+ (id)convertSEMSpanResults:(id)a3 tokenChain:(id)a4;
+ (void)getFirstEntitySpanFromGraph:(id)a3;
- (CDMSiriVocabularyProtoSpanMatcher)initWithOverrideSpans:(id)a3;
- (CDMSiriVocabularyProtoSpanMatcher)initWithSEMSpanMatcher:(id)a3;
- (CDMSiriVocabularyProtoSpanMatcher)initWithSandboxId:(id)a3;
- (id)callSEMSpanMatcher:(id)a3 asrHypothesis:(id)a4;
- (id)createFiltersForItemTypes;
- (id)getItemTypes;
- (id)matchSpansForTokenChain:(id)a3 asrHypothesis:(id)a4;
- (id)semSandboxId;
- (void)dealloc;
@end

@implementation CDMSiriVocabularyProtoSpanMatcher

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CDMSiriVocabularyProtoSpanMatcher;
  [(CDMSiriVocabularyProtoSpanMatcher *)&v2 dealloc];
}

- (id)matchSpansForTokenChain:(id)a3 asrHypothesis:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_overrideSpans)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v20 = 136315138;
      v21 = "[CDMSiriVocabularyProtoSpanMatcher matchSpansForTokenChain:asrHypothesis:]";
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s SiriVocabularyProtoSpanMatcher is returning override spans!", &v20, 0xCu);
    }

    v9 = self->_overrideSpans;
  }

  else
  {
    v10 = os_signpost_id_generate(CDMLogContext);
    v11 = CDMLogContext;
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v20 = 138543362;
      v21 = v14;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SpanMatcher", "%{public}@", &v20, 0xCu);
    }

    v15 = [(CDMSiriVocabularyProtoSpanMatcher *)self callSEMSpanMatcher:v6 asrHypothesis:v7];
    v9 = [CDMSiriVocabularyProtoSpanMatcher convertSEMSpanResults:v15 tokenChain:v6];
    v16 = CDMLogContext;
    v17 = v16;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v17, OS_SIGNPOST_INTERVAL_END, v10, "SpanMatcher", "", &v20, 2u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)callSEMSpanMatcher:(id)a3 asrHypothesis:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v33 = a4;
  v6 = MEMORY[0x1E695DF58];
  v36 = v5;
  v7 = [v5 locale];
  v34 = [v6 localeWithLocaleIdentifier:v7];

  if (+[CDMFeatureFlags isPhoneticSpanMatchingEnabled])
  {
    v35 = v33;
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v46 = "[CDMSiriVocabularyProtoSpanMatcher callSEMSpanMatcher:asrHypothesis:]";
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Creating SEMSpanMatchQueryBuilder with asrHypothesis for Phonetic Span Matching", buf, 0xCu);
    }
  }

  else
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v46 = "[CDMSiriVocabularyProtoSpanMatcher callSEMSpanMatcher:asrHypothesis:]";
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Creating SEMSpanMatchQueryBuilder without Phonetic Span Matching", buf, 0xCu);
    }

    v35 = 0;
  }

  v9 = objc_alloc(MEMORY[0x1E69CE400]);
  v10 = [v5 string];
  v39 = [v9 initWithLocale:v34 originalText:v10 asrHypothesis:v35];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = [v5 tokens];
  obj = v11;
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v12)
  {
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        v16 = [v15 value];
        v17 = [v15 cleanValue];
        v18 = [v15 normalizedValues];
        v19 = [v15 begin];
        v20 = [v15 end];
        v21 = [v15 isSignificant];
        LOBYTE(v32) = [v15 isWhiteSpace];
        [v39 addTokenWithValue:v16 cleanValue:v17 normalizedValues:v18 beginIndex:v19 endIndex:v20 isSignificant:v21 isWhitespace:v32];
      }

      v11 = obj;
      v12 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v12);
  }

  v22 = [v39 build];
  v23 = [(CDMSiriVocabularyProtoSpanMatcher *)self createFiltersForItemTypes];
  [v22 setEntityFilters:v23];
  if (self->_semSandbox)
  {
    v24 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v31 = [(CDMSiriVocabularyProtoSpanMatcher *)self semSandboxId];
      *buf = 136315394;
      v46 = "[CDMSiriVocabularyProtoSpanMatcher callSEMSpanMatcher:asrHypothesis:]";
      v47 = 2112;
      v48 = v31;
      _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s SiriVocabulary matching spans with Siri Entity Matcher sandbox ID: %@", buf, 0x16u);
    }
  }

  semSpanMatcher = self->_semSpanMatcher;
  v40 = 0;
  v26 = [(SEMSpanMatcher *)semSpanMatcher matchSpans:v22 error:&v40];
  v27 = v40;
  if (!v26)
  {
    v28 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v46 = "[CDMSiriVocabularyProtoSpanMatcher callSEMSpanMatcher:asrHypothesis:]";
      v47 = 2112;
      v48 = v27;
      _os_log_impl(&dword_1DC287000, v28, OS_LOG_TYPE_INFO, "%s [WARN]: Nil span match results returned: %@", buf, 0x16u);
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)createFiltersForItemTypes
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(CDMSiriVocabularyProtoSpanMatcher *)self getItemTypes];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v4 = v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v5)
  {
    v7 = 0;
    v8 = *v19;
    *&v6 = 136315650;
    v16 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v18 + 1) + 8 * i) intValue];

        v11 = objc_alloc(MEMORY[0x1E69CE3F0]);
        v17 = 0;
        v12 = [v11 initWithItemType:v10 error:&v17];
        v7 = v17;
        if (v7)
        {
          v13 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v16;
            v23 = "[CDMSiriVocabularyProtoSpanMatcher createFiltersForItemTypes]";
            v24 = 1024;
            v25 = v10;
            v26 = 2112;
            v27 = v7;
            _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s [WARN]: SEM Filter creation error for type %d: %@", buf, 0x1Cu);
          }
        }

        else
        {
          [v3 addObject:v12];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)getItemTypes
{
  if ([CDMSiriVocabularyProtoSpanMatcher getItemTypes]::onceToken != -1)
  {
    dispatch_once(&[CDMSiriVocabularyProtoSpanMatcher getItemTypes]::onceToken, &__block_literal_global_10518);
  }

  v3 = [CDMSiriVocabularyProtoSpanMatcher getItemTypes]::itemTypes;

  return v3;
}

uint64_t __49__CDMSiriVocabularyProtoSpanMatcher_getItemTypes__block_invoke()
{
  -[CDMSiriVocabularyProtoSpanMatcher getItemTypes]::itemTypes = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F5819D68, &unk_1F5819D80, &unk_1F5819D98, &unk_1F5819DB0, &unk_1F5819DC8, &unk_1F5819DE0, &unk_1F5819DF8, &unk_1F5819E10, &unk_1F5819E28, &unk_1F5819E40, &unk_1F5819E58, &unk_1F5819E70, &unk_1F5819E88, &unk_1F5819EA0, &unk_1F5819EB8, &unk_1F5819ED0, &unk_1F5819EE8, &unk_1F5819F00, &unk_1F5819F18, &unk_1F5819F30, &unk_1F5819F48, &unk_1F5819F60, &unk_1F5819F78, &unk_1F5819F90, &unk_1F5819FA8, &unk_1F5819FC0, &unk_1F5819FD8, &unk_1F5819FF0, &unk_1F581A008, &unk_1F581A020, &unk_1F581A038, &unk_1F581A050, &unk_1F581A068, &unk_1F581A080, &unk_1F581A098, &unk_1F581A0B0, &unk_1F581A0C8, &unk_1F581A0E0, &unk_1F581A0F8, 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)semSandboxId
{
  semSandbox = self->_semSandbox;
  if (semSandbox)
  {
    semSandbox = [semSandbox sandboxId];
    v2 = vars8;
  }

  return semSandbox;
}

- (CDMSiriVocabularyProtoSpanMatcher)initWithOverrideSpans:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMSiriVocabularyProtoSpanMatcher;
  v6 = [(CDMSiriVocabularyProtoSpanMatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_overrideSpans, a3);
  }

  return v7;
}

- (CDMSiriVocabularyProtoSpanMatcher)initWithSandboxId:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CDMSiriVocabularyProtoSpanMatcher;
  v5 = [(CDMSiriVocabularyProtoSpanMatcher *)&v18 init];
  if (!v5)
  {
LABEL_6:
    v13 = v5;
    goto LABEL_10;
  }

  v17 = 0;
  v6 = [MEMORY[0x1E69CE3F8] loadWithSandboxId:v4 error:&v17];
  v7 = v17;
  semSandbox = v5->_semSandbox;
  v5->_semSandbox = v6;

  v9 = v5->_semSandbox;
  if (v9)
  {
    v10 = [(SEMSandbox *)v9 indexMatcher];
    semSpanMatcher = v5->_semSpanMatcher;
    v5->_semSpanMatcher = v10;

    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v20 = "[CDMSiriVocabularyProtoSpanMatcher initWithSandboxId:]";
      v21 = 2112;
      v22 = v4;
      _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s SiriVocabulary span matcher initialized with sandbox Id %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v20 = "[CDMSiriVocabularyProtoSpanMatcher initWithSandboxId:]";
    v21 = 2112;
    v22 = v7;
    _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: Error when loading Siri Entity Matcher Sandbox for SiriVocabulary: %@", buf, 0x16u);
  }

  v13 = 0;
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (CDMSiriVocabularyProtoSpanMatcher)initWithSEMSpanMatcher:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMSiriVocabularyProtoSpanMatcher;
  v6 = [(CDMSiriVocabularyProtoSpanMatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_semSpanMatcher, a3);
  }

  return v7;
}

+ (id)convertSEMSpanResults:(id)a3 tokenChain:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "+[CDMSiriVocabularyProtoSpanMatcher convertSEMSpanResults:tokenChain:]";
    v16 = 2048;
    v17 = [v5 count];
    _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s SiriVocabulary matched %tu spanResults", buf, 0x16u);
  }

  for (i = 0; [v5 count] > i; ++i)
  {
    v10 = [v5 objectAtIndexedSubscript:i];
    v11 = [CDMSiriVocabularyProtoSpanMatcher convertSEMResultToNLUTypesMatchingSpan:v10 tokenChain:v6];

    if (v11)
    {
      [v7 addObject:v11];
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)getFirstEntitySpanFromGraph:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 getCppGraph])
  {
    siri::ontology::UsoGraph::getNodes(&__p, [v4 getCppGraph]);
    v5 = __p;
    v6 = v15;
    if (__p != v15)
    {
      v7 = MEMORY[0x1E69D2618];
      do
      {
        v8 = ***v5;
        if (v9)
        {
          siri::ontology::UsoEntityNode::getEntitySpans(&v12, v9);
          if (v13 != v12)
          {
            v10 = *v12;
            v13 = v12;
            operator delete(v12);
            goto LABEL_13;
          }

          if (v13)
          {
            v13 = v12;
            operator delete(v12);
          }
        }

        ++v5;
      }

      while (v5 != v6);
    }

    v10 = 0;
LABEL_13:
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)convertSEMResultToNLUTypesMatchingSpan:(id)a3 tokenChain:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v33 = 0;
  v7 = [v5 toOntologyGraph:&v33];
  v31 = v33;
  if (!v7)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "+[CDMSiriVocabularyProtoSpanMatcher convertSEMResultToNLUTypesMatchingSpan:tokenChain:]";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v31;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: No ontologyGraph from spanMatchResult: %@", &buf, 0x16u);
    }
  }

  *(&v32.__r_.__value_.__s + 23) = 0;
  v32.__r_.__value_.__s.__data_[0] = 0;
  v9 = [CDMSiriVocabularyProtoSpanMatcher getFirstEntitySpanFromGraph:v7];
  if (v9)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&buf, (v9 + 40));
    if (v35 == 1)
    {
      std::string::operator=(&v32, &buf);
      if ((v35 & 1) != 0 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    v10 = [v5 spanInfo];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 spanRange];
      v14 = v13;
      v15 = [v6 string];
      if (v12 >= [v15 length])
      {
      }

      else
      {
        v16 = [v6 string];
        v17 = v14 > [v16 length] - v12;

        if (!v17)
        {
          if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &v32;
          }

          else
          {
            v18 = v32.__r_.__value_.__r.__words[0];
          }

          v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
          v19 = [v6 string];
          v20 = [v19 substringWithRange:{v12, v14}];
          LODWORD(v29) = 2;
          v21 = +[CDMProtoSpanMatcherHelper buildMatchingSpanProtoWithLabel:inputStringForDebug:startTokenIndex:endTokenIndex:startCharIndex:endCharIndex:spanMatcherName:](CDMProtoSpanMatcherHelper, "buildMatchingSpanProtoWithLabel:inputStringForDebug:startTokenIndex:endTokenIndex:startCharIndex:endCharIndex:spanMatcherName:", v30, v20, [v6 tokenIndexFromCharacterIndex:v12], objc_msgSend(v6, "tokenIndexFromCharacterIndex:", (v12 + v14 - 1)) + 1, v12, (v12 + v14), v29);

          v22 = objc_alloc_init(MEMORY[0x1E69D12E0]);
          v23 = objc_alloc_init(MEMORY[0x1E69D13B8]);
          [v11 matchScore];
          [v23 setMatchScore:v24];
          [v22 setSiriVocabularySpanData:v23];
          [v21 setInternalSpanData:v22];
          if (v7)
          {
            v25 = [MEMORY[0x1E69D1410] convertCppGraph:{objc_msgSend(v7, "getCppGraph")}];
            [v21 setUsoGraph:v25];
          }

          goto LABEL_28;
        }
      }

      v22 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v38.location = v12;
        v38.length = v14;
        v26 = NSStringFromRange(v38);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "+[CDMSiriVocabularyProtoSpanMatcher convertSEMResultToNLUTypesMatchingSpan:tokenChain:]";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v26;
        _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, "%s [WARN]: Invalid SEMSpanInfo in SEMSpanMatchResult, so unable to populate SIRINLUINTERNALMatchingSpan indexes. Given range %@", &buf, 0x16u);
      }
    }

    else
    {
      v22 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = "+[CDMSiriVocabularyProtoSpanMatcher convertSEMResultToNLUTypesMatchingSpan:tokenChain:]";
        _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, "%s [WARN]: No valid SEMSpanInfo in SEMSpanMatchResult, so unable to populate SIRINLUINTERNALMatchingSpan indexes", &buf, 0xCu);
      }
    }

    v21 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = "+[CDMSiriVocabularyProtoSpanMatcher convertSEMResultToNLUTypesMatchingSpan:tokenChain:]";
    _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s [WARN]: No valid UsoEntitySpan in SEMSpanMatchResult graph, so unable to populate span label. Skip adding this span", &buf, 0xCu);
  }

  v21 = 0;
LABEL_29:

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v21;
}

@end