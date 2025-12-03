@interface LuceneContextRequest
+ (BOOL)_looksLikeTitleBarUIElement:(id)element;
+ (id)hostToCapitalizedName:(id)name;
+ (id)lookupTreasureMapForDomainHierarchy:(id)hierarchy fromTreasureMap:(id)map intoSet:(id)set isRelaxedMatchOut:(BOOL *)out;
+ (id)reverseFQDN:(id)n;
+ (id)setOfLinewiseStringsFromFieldValue:(id)value;
+ (id)stripHostToDomain:(id)domain level:(unint64_t)level;
+ (void)_addTopicsForUrl:(id)url withEngine:(id)engine documentVisitor:(id)visitor toResponse:(id)response;
+ (void)addTopicsForURL:(id)l withEngine:(id)engine toResponse:(id)response;
+ (void)initialize;
- (BOOL)_isIntermediateNameBigramCandidate:(id)candidate tokenB:(id)b bothStartUppercase:(BOOL)uppercase;
- (BOOL)_isLikelyLabel:(id)label;
- (BOOL)_isRelevantUIForExtraction:(id)extraction;
- (BOOL)isLanguageSupported:(id)supported;
- (LuceneContextEngine)engine;
- (LuceneContextRequest)initWithEngine:(id)engine forRequest:(id)request;
- (id)_addHomeAppExtractionResults:(id)results;
- (id)_bestTypeVariantForTokenInfo:(id)info allowingAllCaps:(BOOL)caps;
- (id)_constructQuery;
- (id)_determineTitleFromUIElements:(id)elements;
- (id)_getTagTypeForExtractionItemType:(unint64_t)type;
- (id)_lookupBigramTermForTokenA:(id)a tokenB:(id)b tokenTypeOut:(unint64_t *)out docIdOut:(int *)idOut;
- (id)_readTermInfo:(id)info tokenTypeOut:(unint64_t *)out weightOut:(float *)weightOut docIdOut:(int *)idOut;
- (id)_resultForBigramInfo:(id)info minPrefix:(int64_t)prefix;
- (id)_resultForTokenInfo:(id)info minPrefix:(int64_t)prefix;
- (id)_sortGroupFilterUIElements;
- (id)_tokenInfoForToken:(id)token;
- (id)_tokenStringForText:(id)text;
- (id)inspectTitle:(id)title titleForTokenization:(id)tokenization conditionals:(id)conditionals;
- (id)mergeDuplicateResults:(id)results;
- (id)simplifiedDesiredLanguageTags;
- (id)textTermsEnum;
- (void)_addTermResults;
- (void)_blendResults;
- (void)_determineSurroundingEntities:(id)entities withUIElementToResultsMapping:(id)mapping;
- (void)_discardTokenInfos;
- (void)_processResults:(id)results topK:(unint64_t)k;
- (void)_rerankFoldedResults:(id)results;
- (void)_searchTopKWithQuery:(id)query topK:(unint64_t)k;
- (void)_tokenizeText;
- (void)addCoreNLPTags;
- (void)addDebugStringTo:(id)to withPrefix:(id)prefix forQuery:(id)query;
- (void)addExtraQueryCompletions;
- (void)addRequestFingerprint;
- (void)addStructuredExtraction;
- (void)augmentResultsWithTags;
- (void)configAnalyzerForLanguage:(id)language;
- (void)dealloc;
- (void)discard;
- (void)filterResultsByTags:(id)tags;
- (void)findResultsWithReply:(id)reply;
- (void)postprocessAddQuery:(id)query;
@end

@implementation LuceneContextRequest

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v42 = +[OrgApacheLuceneSearchBooleanClause_OccurEnum values];
    v2 = [v42 objectAtIndex:0];
    v3 = qword_100557240;
    qword_100557240 = v2;

    v4 = [v42 objectAtIndex:1];
    v5 = qword_100557248;
    qword_100557248 = v4;

    v6 = [v42 objectAtIndex:2];
    v7 = qword_100557250;
    qword_100557250 = v6;

    [OrgApacheLuceneSearchBooleanQuery setMaxClauseCountWithInt:2048];
    v8 = ContextKitErrorDomain;
    v9 = [NSDictionary dictionaryWithObject:@"Input language is not supported" forKey:NSLocalizedFailureReasonErrorKey];
    v10 = [NSError errorWithDomain:v8 code:4 userInfo:v9];
    v11 = qword_100557258;
    qword_100557258 = v10;

    v12 = +[NSCharacterSet lowercaseLetterCharacterSet];
    v13 = qword_100557260;
    qword_100557260 = v12;

    v14 = +[NSCharacterSet uppercaseLetterCharacterSet];
    v15 = qword_100557268;
    qword_100557268 = v14;

    v16 = +[NSCharacterSet alphanumericCharacterSet];
    v17 = qword_100557238;
    qword_100557238 = v16;

    v18 = +[NSMutableCharacterSet alphanumericCharacterSet];
    v19 = +[NSCharacterSet punctuationCharacterSet];
    [v18 formUnionWithCharacterSet:v19];

    v20 = qword_100557270;
    qword_100557270 = v18;
    v21 = v18;

    v22 = +[NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
    v23 = qword_100557278;
    qword_100557278 = v22;

    v24 = qword_100557278;
    v25 = +[NSCharacterSet punctuationCharacterSet];
    [v24 formUnionWithCharacterSet:v25];

    v26 = +[TokenInfo ignoreUnknownTokenSentinel];
    v27 = qword_100557280;
    qword_100557280 = v26;

    v28 = +[TokenInfo ignoreStopwordTokenSentinel];
    v29 = qword_100557288;
    qword_100557288 = v28;

    v30 = +[BigramInfo ignoreUnknownBigramSentinel];
    v31 = qword_100557290;
    qword_100557290 = v30;

    v32 = +[BigramInfo ignoreStopwordBigramSentinel];
    v33 = qword_100557298;
    qword_100557298 = v32;

    v34 = [[OrgApacheLuceneIndexTerm alloc] initWithNSString:@"text" withNSString:@"I"];
    v35 = qword_1005572A0;
    qword_1005572A0 = v34;

    v36 = [NSSet setWithArray:&off_1004A9E68];
    v37 = qword_1005572A8;
    qword_1005572A8 = v36;

    v38 = [NSSet setWithArray:&off_1004A9E80];
    v39 = qword_1005572B0;
    qword_1005572B0 = v38;

    v40 = [NSSet setWithArray:&__NSArray0__struct];
    v41 = qword_1005572B8;
    qword_1005572B8 = v40;
  }
}

- (void)_discardTokenInfos
{
  [(NSMapTable *)self->_tokenInfos removeAllObjects];
  [(NSMapTable *)self->_bigramInfos removeAllObjects];
  tokenInfos = self->_tokenInfos;
  self->_tokenInfos = 0;

  bigramInfos = self->_bigramInfos;
  self->_bigramInfos = 0;

  tokenInfosSequence = self->_tokenInfosSequence;
  self->_tokenInfosSequence = 0;

  bigramInfosSequence = self->_bigramInfosSequence;
  self->_bigramInfosSequence = 0;
}

- (void)discard
{
  [(LuceneContextRequest *)self _discardTokenInfos];
  textTermsEnum = self->_textTermsEnum;
  self->_textTermsEnum = 0;

  request = self->_request;
  self->_request = 0;

  response = self->_response;
  self->_response = 0;

  objc_storeWeak(&self->_engine, 0);
  searcher = self->_searcher;
  self->_searcher = 0;

  [(OrgApacheLuceneAnalysisAnalyzer *)self->_analyzer close];
  analyzer = self->_analyzer;
  self->_analyzer = 0;

  weakKeywordTermResults = self->_weakKeywordTermResults;
  if (weakKeywordTermResults)
  {
    [(NSMutableDictionary *)weakKeywordTermResults removeAllObjects];
    v9 = self->_weakKeywordTermResults;
    self->_weakKeywordTermResults = 0;
  }

  termResults = self->_termResults;
  if (termResults)
  {
    [(NSMutableArray *)termResults removeAllObjects];
    v11 = self->_termResults;
    self->_termResults = 0;
  }

  termResultsWithDocument = self->_termResultsWithDocument;
  if (termResultsWithDocument)
  {
    [(NSMutableArray *)termResultsWithDocument removeAllObjects];
    v13 = self->_termResultsWithDocument;
    self->_termResultsWithDocument = 0;
  }

  termQueryInterceptor = self->_termQueryInterceptor;
  self->_termQueryInterceptor = 0;

  phraseQueryInterceptor = self->_phraseQueryInterceptor;
  self->_phraseQueryInterceptor = 0;

  secondaryInterceptor = self->_secondaryInterceptor;
  self->_secondaryInterceptor = 0;

  perDocumentObjects = self->_perDocumentObjects;
  if (perDocumentObjects)
  {
    NSFreeMapTable(perDocumentObjects);
    v18 = self->_perDocumentObjects;
    self->_perDocumentObjects = 0;
  }

  hashesTokenReuse = self->_hashesTokenReuse;
  self->_hashesTokenReuse = 0;

  extractTermsReuse = self->_extractTermsReuse;
  if (extractTermsReuse)
  {
    [(NSMutableSet *)extractTermsReuse removeAllObjects];
    v21 = self->_extractTermsReuse;
    self->_extractTermsReuse = 0;
  }

  fingerprints = self->_fingerprints;
  if (fingerprints)
  {
    [(NSMutableDictionary *)fingerprints removeAllObjects];
    v23 = self->_fingerprints;
    self->_fingerprints = 0;
  }

  fingerprintsPrimary = self->_fingerprintsPrimary;
  if (fingerprintsPrimary)
  {
    [(NSMutableDictionary *)fingerprintsPrimary removeAllObjects];
    v25 = self->_fingerprintsPrimary;
    self->_fingerprintsPrimary = 0;
  }

  free(self->_charBuffer);
  self->_charBuffer = 0;
}

- (void)dealloc
{
  [(LuceneContextRequest *)self discard];
  v3.receiver = self;
  v3.super_class = LuceneContextRequest;
  [(LuceneContextRequest *)&v3 dealloc];
}

- (LuceneContextRequest)initWithEngine:(id)engine forRequest:(id)request
{
  engineCopy = engine;
  requestCopy = request;
  v78.receiver = self;
  v78.super_class = LuceneContextRequest;
  v8 = [(LuceneContextRequest *)&v78 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_request, request);
    debug = [requestCopy debug];
    v9->_debug = debug;
    if (debug)
    {
      timing = 1;
    }

    else
    {
      timing = [requestCopy timing];
    }

    v9->_timing = timing;
    v9->_debugLogEnabled = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    v12 = objc_storeWeak(&v9->_engine, engineCopy);
    v9->_nMaxDoc = [engineCopy maxDoc];

    WeakRetained = objc_loadWeakRetained(&v9->_engine);
    v9->_nTerms = [WeakRetained numTerms];

    v14 = objc_loadWeakRetained(&v9->_engine);
    bloomFilter = [v14 bloomFilter];
    bloomFilter = v9->_bloomFilter;
    v9->_bloomFilter = bloomFilter;

    v17 = objc_loadWeakRetained(&v9->_engine);
    v9->_useBloomFilter = [v17 useBloomFilter];

    v18 = +[ContextConfiguration sharedInstance];
    config = v9->_config;
    v9->_config = v18;

    fingerprintMax = [requestCopy fingerprintMax];
    maxFingerprints = [(ContextConfiguration *)v9->_config maxFingerprints];
    if (fingerprintMax >= maxFingerprints)
    {
      fingerprintMax = maxFingerprints;
    }

    if (fingerprintMax)
    {
      v22 = [(OrgApacheLuceneUtilPriorityQueue *)[LeastNumberPriorityQueue alloc] initWithInt:fingerprintMax withBoolean:1];
      minHashPriorityQueue = v9->_minHashPriorityQueue;
      v9->_minHashPriorityQueue = v22;
    }

    v24 = [[ComAppleContextkitUtilBytesRefPool alloc] initWithInt:0x8000];
    bytesRefPool = v9->_bytesRefPool;
    v9->_bytesRefPool = v24;

    v26 = objc_alloc_init(OrgApacheLuceneDocumentDocumentStoredFieldVisitor);
    docVisitor = v9->_docVisitor;
    v9->_docVisitor = v26;

    v28 = v9->_docVisitor;
    v29 = [[OrgApacheLuceneUtilBytesRef alloc] initWithInt:4096];
    [(OrgApacheLuceneIndexStoredFieldVisitor *)v28 setReusableBytesRefWithOrgApacheLuceneUtilBytesRef:v29];

    newHashesArray = [(_PASBloomFilter *)v9->_bloomFilter newHashesArray];
    hashesTokenReuse = v9->_hashesTokenReuse;
    v9->_hashesTokenReuse = newHashesArray;

    v32 = [OrgApacheLuceneSearchIndexSearcher alloc];
    v33 = objc_loadWeakRetained(&v9->_engine);
    reader = [v33 reader];
    v35 = [(OrgApacheLuceneSearchIndexSearcher *)v32 initWithOrgApacheLuceneIndexIndexReader:reader];
    searcher = v9->_searcher;
    v9->_searcher = v35;

    v37 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:0];
    tokenInfos = v9->_tokenInfos;
    v9->_tokenInfos = v37;

    v39 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:0];
    bigramInfos = v9->_bigramInfos;
    v9->_bigramInfos = v39;

    v41 = objc_opt_new();
    tokenInfosSequence = v9->_tokenInfosSequence;
    v9->_tokenInfosSequence = v41;

    v43 = objc_opt_new();
    bigramInfosSequence = v9->_bigramInfosSequence;
    v9->_bigramInfosSequence = v43;

    v45 = objc_opt_new();
    termResults = v9->_termResults;
    v9->_termResults = v45;

    v47 = [[NSMutableDictionary alloc] initWithCapacity:5];
    weakKeywordTermResults = v9->_weakKeywordTermResults;
    v9->_weakKeywordTermResults = v47;

    v49 = objc_opt_new();
    termResultsWithDocument = v9->_termResultsWithDocument;
    v9->_termResultsWithDocument = v49;

    v51 = [ScoreInterceptTargetWithCallback alloc];
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_1002AB204;
    v76[3] = &unk_100483F48;
    v52 = v9;
    v77 = v52;
    v53 = [(ScoreInterceptTargetWithCallback *)v51 initWithCallback:v76];
    phraseQueryInterceptor = v52->_phraseQueryInterceptor;
    v52->_phraseQueryInterceptor = v53;

    v55 = [ScoreInterceptTargetWithCallback alloc];
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_1002AB2C8;
    v74[3] = &unk_100483F48;
    v56 = v52;
    v75 = v56;
    v57 = [(ScoreInterceptTargetWithCallback *)v55 initWithCallback:v74];
    termQueryInterceptor = v56->_termQueryInterceptor;
    v56->_termQueryInterceptor = v57;

    v59 = [ScoreInterceptTargetWithCallback alloc];
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_1002AB38C;
    v72[3] = &unk_100483F48;
    v60 = v56;
    v73 = v60;
    v61 = [(ScoreInterceptTargetWithCallback *)v59 initWithCallback:v72];
    secondaryInterceptor = v60->_secondaryInterceptor;
    v60->_secondaryInterceptor = v61;

    v60->_charBuffer = malloc_type_calloc(1uLL, 0x100uLL, 0x6B5106AEuLL);
    nGramBreakingSeparators = [engineCopy nGramBreakingSeparators];
    nGramBreakingSeparators = v60->_nGramBreakingSeparators;
    v60->_nGramBreakingSeparators = nGramBreakingSeparators;

    allowedNGramSeparators = [engineCopy allowedNGramSeparators];
    allowedNGramSeparators = v60->_allowedNGramSeparators;
    v60->_allowedNGramSeparators = allowedNGramSeparators;

    quotedTokenCharacterSet = [engineCopy quotedTokenCharacterSet];
    quotedTokenCharacterSet = v60->_quotedTokenCharacterSet;
    v60->_quotedTokenCharacterSet = quotedTokenCharacterSet;

    partialNGramCharacterSet = [engineCopy partialNGramCharacterSet];
    partialNGramCharacterSet = v60->_partialNGramCharacterSet;
    v60->_partialNGramCharacterSet = partialNGramCharacterSet;
  }

  return v9;
}

- (BOOL)isLanguageSupported:(id)supported
{
  supportedCopy = supported;
  luceneSupportedLanguages = [(ContextConfiguration *)self->_config luceneSupportedLanguages];
  if ([luceneSupportedLanguages count])
  {
    if (!supportedCopy)
    {
      v6 = 0;
      goto LABEL_7;
    }

    if (([luceneSupportedLanguages containsObject:supportedCopy] & 1) == 0)
    {
      v7 = [LanguageUtilities simplifyLanguageTag:supportedCopy];

      v6 = [luceneSupportedLanguages containsObject:v7];
      supportedCopy = v7;
      goto LABEL_7;
    }
  }

  v6 = 1;
LABEL_7:

  return v6;
}

- (void)configAnalyzerForLanguage:(id)language
{
  languageCopy = language;
  if ([LanguageUtilities isChineseLanguageTag:?]|| [LanguageUtilities isJapaneseLanguageTag:languageCopy])
  {
    v4 = objc_opt_new();
    analyzer = self->_analyzer;
    self->_analyzer = v4;

    *&self->_minTokenLength = 0x2000000001;
    v6 = 2;
  }

  else
  {
    v7 = objc_opt_new();
    v8 = self->_analyzer;
    self->_analyzer = v7;

    *&self->_minTokenLength = 0x2000000003;
    v6 = 5;
  }

  self->_minTokenLengthPrimary = v6;
}

- (id)simplifiedDesiredLanguageTags
{
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  desiredLanguageTags = [(CKContextRequest *)self->_request desiredLanguageTags];
  v5 = [desiredLanguageTags countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(desiredLanguageTags);
        }

        v9 = [LanguageUtilities simplifyLanguageTag:*(*(&v11 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [desiredLanguageTags countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)findResultsWithReply:(id)reply
{
  replyCopy = reply;
  v158 = mach_absolute_time();
  v152 = 0;
  v153 = &v152;
  v154 = 0x3032000000;
  v155 = sub_1002AA110;
  v156 = sub_1002AA120;
  selfCopy = self;
  languageTag = [(CKContextRequest *)self->_request languageTag];
  selfCopy2 = self;
  v5 = [CKContextResponse alloc];
  v6 = objc_opt_new();
  v7 = [v5 initWithResults:v6 requestType:{-[CKContextRequest type](selfCopy2->_request, "type")}];
  response = selfCopy2->_response;
  selfCopy2->_response = v7;

  v9 = selfCopy2;
  v10 = selfCopy2->_response;
  [(ContextConfiguration *)selfCopy2->_config hideCompletionsTimeLimit];
  [(CKContextResponse *)v10 setHideCompletionsTimeLimit:?];
  [(CKContextResponse *)selfCopy2->_response setMustPrefixMatchLength:[(ContextConfiguration *)selfCopy2->_config mustPrefixMatchLength]];
  if ([(CKContextRequest *)selfCopy2->_request textIsRaw]&& ![(ContextConfiguration *)selfCopy2->_config rawTextEnabled]&& [(CKContextRequest *)selfCopy2->_request type]!= 2)
  {
    if (selfCopy2->_debug)
    {
      [(CKContextResponse *)selfCopy2->_response addDebug:@"RawText mode is disabled"];
    }

    v11 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1002BB720();
    }

    v9 = selfCopy;
    [(CKContextRequest *)selfCopy->_request setText:0];
  }

  text = [(CKContextRequest *)v9->_request text];
  v13 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v14 = [text length];
    type = [(CKContextRequest *)selfCopy->_request type];
    languageTag2 = [(CKContextRequest *)selfCopy->_request languageTag];
    sub_1002BB764(languageTag2, v169, v14, type);
  }

  v146 = 0;
  v147 = &v146;
  v148 = 0x3032000000;
  v149 = sub_1002AA110;
  v150 = sub_1002AA120;
  v151 = 0;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_engine);
  if ([WeakRetained fallbackModeEnabled])
  {
    fallbackModeQuerySuggestionsEnabled = [(ContextConfiguration *)selfCopy->_config fallbackModeQuerySuggestionsEnabled];

    if ((fallbackModeQuerySuggestionsEnabled & 1) == 0)
    {
      v19 = selfCopy;
      if (selfCopy->_debug)
      {
        v20 = @"Fallback mode; query suggestions are disabled";
LABEL_28:
        [(CKContextResponse *)v19->_response addDebug:v20];
        v120 = 0;
        goto LABEL_62;
      }

      goto LABEL_29;
    }
  }

  else
  {
  }

  v19 = selfCopy;
  if ([text length] < 3)
  {
    if (selfCopy->_timing)
    {
      v20 = @"tSearch:0";
      goto LABEL_28;
    }

LABEL_29:
    v120 = 0;
    goto LABEL_62;
  }

  v21 = objc_autoreleasePoolPush();
  debugForceLanguageTag = [(ContextConfiguration *)selfCopy->_config debugForceLanguageTag];

  if (debugForceLanguageTag)
  {
    debugForceLanguageTag2 = [(ContextConfiguration *)selfCopy->_config debugForceLanguageTag];
    v24 = v153[5];
    v153[5] = debugForceLanguageTag2;
  }

  v142[0] = _NSConcreteStackBlock;
  v142[1] = 3221225472;
  v142[2] = sub_1002ACBCC;
  v142[3] = &unk_100483F70;
  v145 = debugForceLanguageTag == 0;
  v144 = &v152;
  v142[4] = selfCopy;
  v25 = text;
  v143 = v25;
  [Util elapsedMillisForBlock:v142 enableTiming:selfCopy->_timing];
  v27 = v26;
  v120 = [(LuceneContextRequest *)selfCopy isLanguageSupported:v153[5]];
  v28 = [v153[5] copy];
  [(CKContextResponse *)selfCopy->_response setLanguageTag:v28];

  languageTag3 = [(CKContextResponse *)selfCopy->_response languageTag];
  [(LuceneContextRequest *)selfCopy configAnalyzerForLanguage:languageTag3];

  v30 = v27;
  if (v120)
  {
    v141[0] = _NSConcreteStackBlock;
    v141[1] = 3221225472;
    v141[2] = sub_1002ACCE4;
    v141[3] = &unk_100483968;
    v141[4] = selfCopy;
    [Util elapsedMillisForBlock:v141 enableTiming:selfCopy->_timing];
    v32 = v31;
    if (selfCopy->_debugLogEnabled)
    {
      v33 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        [Util elapsedMillisSinceMachAbsolute:v158 nowTarget:&v158];
        sub_1002BB7D8(v168, v36, v34, v35);
      }
    }

    v140[0] = _NSConcreteStackBlock;
    v140[1] = 3221225472;
    v140[2] = sub_1002ACCEC;
    v140[3] = &unk_1003E9488;
    v37 = selfCopy;
    v140[4] = selfCopy;
    v140[5] = &v146;
    [Util elapsedMillisForBlock:v140 enableTiming:selfCopy->_timing];
    if (selfCopy->_timing)
    {
      v39 = v32;
      v40 = v38;
      [(CKContextResponse *)selfCopy->_response addDebug:@"tLanguageDetect:%f (%@), tTokenize:%f, tConstructQuery:%f", v30, v153[5], v39, v40];
    }
  }

  else
  {
    [(CKContextResponse *)selfCopy->_response setError:qword_100557258];
    type2 = [(CKContextRequest *)selfCopy->_request type];
    if (type2 == 15 || type2 == 1)
    {
      v42 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Safari request with unsupported language", buf, 2u);
      }
    }

    v37 = selfCopy;
    if (selfCopy->_timing)
    {
      [(CKContextResponse *)selfCopy->_response addDebug:@"tLanguageDetect:%f (%@)", v30, v153[5]];
    }
  }

  [(LuceneContextRequest *)v37 addRequestFingerprint];
  if (v37->_debug && selfCopy->_timing)
  {
    *buf = 0;
    v163 = buf;
    v164 = 0x3032000000;
    v165 = sub_1002AA110;
    v166 = sub_1002AA120;
    v167 = 0;
    v137[0] = _NSConcreteStackBlock;
    v137[1] = 3221225472;
    v137[2] = sub_1002ACD38;
    v137[3] = &unk_1003E9488;
    v139 = buf;
    v138 = v25;
    [Util elapsedMillisForBlock:v137 enableTiming:selfCopy->_timing];
    v44 = v43;
    v45 = [(LuceneContextRequest *)selfCopy isLanguageSupported:*(v163 + 5)];
    v46 = v44;
    [(CKContextResponse *)selfCopy->_response addDebug:@"tLanguageDetectLangId:%f (%@) mismatch:%i", v46, *(v163 + 5), v120 ^ v45];

    _Block_object_dispose(buf, 8);
  }

  v47 = v21;
  v48 = selfCopy;
  objc_autoreleasePoolPop(v47);
  if (selfCopy->_debugLogEnabled)
  {
    v49 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      [Util elapsedMillisSinceMachAbsolute:v158 nowTarget:&v158];
      sub_1002BB81C(buf, v52, v50, v51);
    }

    v48 = selfCopy;
  }

  if (!v147[5])
  {
    if (v120)
    {
      [(LuceneContextRequest *)v48 _addTermResults];
      if (v48->_timing)
      {
        [(CKContextResponse *)v48->_response addDebug:@"tSearch:0"];
      }
    }

    goto LABEL_58;
  }

  LODWORD(v53) = [(CKContextRequest *)v48->_request topk];
  config = v48->_config;
  if (!v53)
  {
    luceneQueryDefaultNumResults = [(ContextConfiguration *)config luceneQueryDefaultNumResults];
    goto LABEL_52;
  }

  v53 = v53;
  if ([(ContextConfiguration *)config luceneQueryMaxNumResults]< v53)
  {
    luceneQueryDefaultNumResults = [(ContextConfiguration *)v48->_config luceneQueryMaxNumResults];
LABEL_52:
    v53 = luceneQueryDefaultNumResults;
  }

  [(LuceneContextRequest *)v48 _searchTopKWithQuery:v147[5] topK:v53 + 20];
  results = [(CKContextResponse *)v48->_response results];
  if ([(NSMutableArray *)v48->_termResultsWithDocument count])
  {
    [results addObjectsFromArray:v48->_termResultsWithDocument];
    v57 = [(LuceneContextRequest *)v48 mergeDuplicateResults:results];

    v48 = selfCopy;
    [(CKContextResponse *)selfCopy->_response setResults:v57];
    results = v57;
  }

  if ([results count] > v53)
  {
    [results removeObjectsInRange:{v53, objc_msgSend(results, "count") - v53}];
  }

  [(LuceneContextRequest *)v48 _blendResults];
  [(LuceneContextRequest *)v48 _addTermResults];

  v48 = selfCopy;
LABEL_58:
  if (v48->_debugLogEnabled)
  {
    v58 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      [Util elapsedMillisSinceMachAbsolute:v158 nowTarget:&v158];
      sub_1002BB8D0(v161, v61, v59, v60);
    }
  }

LABEL_62:
  _Block_object_dispose(&v146, 8);

  if (selfCopy->_forceNoResults)
  {
    [(CKContextResponse *)selfCopy->_response setResults:&__NSArray0__struct];
    if (selfCopy->_debug)
    {
      [(CKContextResponse *)selfCopy->_response addDebug:@"forceNoResults triggered"];
    }
  }

  [(CKContextResponse *)selfCopy->_response results];
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  obj = v134 = 0u;
  v62 = [obj countByEnumeratingWithState:&v133 objects:v160 count:16];
  if (v62)
  {
    v122 = *v134;
    do
    {
      v123 = v62;
      for (i = 0; i != v123; i = i + 1)
      {
        if (*v134 != v122)
        {
          objc_enumerationMutation(obj);
        }

        v64 = *(*(&v133 + 1) + 8 * i);
        v65 = objc_autoreleasePoolPush();
        if ([v64 minPrefix] >= 1)
        {
          [(CKContextResponse *)selfCopy->_response setResultsNeedFiltering:1];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v66 = v64;
          v67 = objc_opt_new();
          relatedItems = [v66 relatedItems];
          if (relatedItems)
          {
            [v67 unionOrderedSet:relatedItems];
          }

          v69 = objc_opt_class();
          relatedField = [v66 relatedField];
          v71 = [v69 setOfLinewiseStringsFromFieldValue:relatedField];

          if (v71 && [v71 count])
          {
            [v67 unionOrderedSet:v71];
          }

          topicId = [v66 topicId];
          if ([topicId length])
          {
            title = [v66 title];
            v74 = [title length] == 0;

            if (!v74)
            {
              topicId = [v66 title];
              v75 = +[NSCharacterSet URLPathAllowedCharacterSet];
              v76 = [topicId stringByAddingPercentEncodingWithAllowedCharacters:v75];
              v77 = [NSString stringWithFormat:@"wiki\thttps://en.wikipedia.org/wiki/%@", v76];
              [v67 addObject:v77];

              goto LABEL_81;
            }
          }

          else
          {
LABEL_81:
          }

          if ([v67 count])
          {
            v78 = v67;
          }

          else
          {
            v78 = 0;
          }

          [v66 setRelatedItems:v78];
        }

        objc_autoreleasePoolPop(v65);
      }

      v62 = [obj countByEnumeratingWithState:&v133 objects:v160 count:16];
    }

    while (v62);
  }

  v79 = selfCopy;
  if ([(CKContextRequest *)selfCopy->_request includeHigherLevelTopics])
  {
    v80 = [(CKContextRequest *)selfCopy->_request url];
    if ([v80 length])
    {
      v81 = [NSURL URLWithString:v80];
      v82 = objc_opt_class();
      v83 = objc_loadWeakRetained(&selfCopy->_engine);
      [v82 _addTopicsForUrl:v81 withEngine:v83 documentVisitor:selfCopy->_docVisitor toResponse:selfCopy->_response];
    }

    v79 = selfCopy;
  }

  if ([(CKContextRequest *)v79->_request maxConstellationTopics]>= 1)
  {
    itemIds = [(CKContextRequest *)v79->_request itemIds];
    v84 = [itemIds count];
    if (v84)
    {
      if (v84 >= 0x1F5)
      {
        allKeys = [itemIds allKeys];
        v86 = [allKeys sortedArrayUsingSelector:"compare:"];

        v87 = objc_alloc_init(NSMutableDictionary);
        for (j = 0; j != 500; ++j)
        {
          v89 = [v86 objectAtIndexedSubscript:j];
          v90 = [itemIds objectForKeyedSubscript:v89];
          [v87 setObject:v90 forKeyedSubscript:v89];
        }

        v91 = [v87 copy];

LABEL_112:
LABEL_114:
        if ([v91 count])
        {
          v127[0] = _NSConcreteStackBlock;
          v127[1] = 3221225472;
          v127[2] = sub_1002ACDCC;
          v127[3] = &unk_100483B68;
          v127[4] = selfCopy;
          v128 = v91;
          [Util elapsedMillisForBlock:v127 enableTiming:selfCopy->_timing];
          if (selfCopy->_timing)
          {
            v104 = v103;
            [(CKContextResponse *)selfCopy->_response addDebug:@"tConstellation:%f", v104];
          }
        }

        v79 = selfCopy;
        goto LABEL_119;
      }
    }

    else
    {
      results2 = [(CKContextResponse *)v79->_response results];
      v93 = [results2 count] == 0;

      if (!v93)
      {
        v94 = objc_opt_new();
        v132 = 0u;
        v130 = 0u;
        v131 = 0u;
        v129 = 0u;
        results3 = [(CKContextResponse *)selfCopy->_response results];
        v96 = [results3 countByEnumeratingWithState:&v129 objects:v159 count:16];
        if (v96)
        {
          v97 = *v130;
          do
          {
            for (k = 0; k != v96; k = k + 1)
            {
              if (*v130 != v97)
              {
                objc_enumerationMutation(results3);
              }

              topicId2 = [*(*(&v129 + 1) + 8 * k) topicId];
              if (topicId2)
              {
                v100 = [v94 objectForKey:topicId2];
                v101 = v100;
                if (v100)
                {
                  v102 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v100 intValue] + 1);
                }

                else
                {
                  v102 = &off_1004A9F98;
                }

                [v94 setObject:v102 forKey:topicId2];
              }
            }

            v96 = [results3 countByEnumeratingWithState:&v129 objects:v159 count:16];
          }

          while (v96);
        }

        v86 = v94;
        v91 = v86;
        v87 = itemIds;
        goto LABEL_112;
      }
    }

    v91 = itemIds;
    goto LABEL_114;
  }

LABEL_119:
  if ([(ContextConfiguration *)v79->_config extraQueryCompletionsEnabled])
  {
    v105 = objc_autoreleasePoolPush();
    v79 = selfCopy;
    [(LuceneContextRequest *)selfCopy addExtraQueryCompletions];
    objc_autoreleasePoolPop(v105);
  }

  if ([(ContextConfiguration *)v79->_config coreNLPTaggingEnabled]|| [(CKContextRequest *)v79->_request overrideEnableCoreNLPTagging])
  {
    v126[0] = _NSConcreteStackBlock;
    v126[1] = 3221225472;
    v126[2] = sub_1002AD27C;
    v126[3] = &unk_100483968;
    v126[4] = v79;
    [Util elapsedMillisForBlock:v126 enableTiming:v79->_timing];
    if (v79->_timing)
    {
      v107 = v106;
      [(CKContextResponse *)v79->_response addDebug:@"tCoreNLP:%f", v107];
    }
  }

  if ([(ContextConfiguration *)v79->_config tagsEnabled])
  {
    [(LuceneContextRequest *)v79 augmentResultsWithTags];
  }

  if ([(CKContextRequest *)v79->_request includeStructuredExtractionResults])
  {
    [(LuceneContextRequest *)v79 addStructuredExtraction];
  }

  allowedTopicTypeTags = [(CKContextRequest *)v79->_request allowedTopicTypeTags];
  v109 = [allowedTopicTypeTags count] == 0;

  if (!v109)
  {
    allowedTopicTypeTags2 = [(CKContextRequest *)selfCopy->_request allowedTopicTypeTags];
    [(LuceneContextRequest *)selfCopy filterResultsByTags:allowedTopicTypeTags2];
  }

  v111 = os_transaction_create();
  (replyCopy)[2](replyCopy, selfCopy->_response);
  v112 = +[MetricsLogging instance];
  text2 = [(CKContextRequest *)selfCopy->_request text];
  v114 = [text2 length];
  v115 = v153[5];
  type3 = [(CKContextRequest *)selfCopy->_request type];
  v117 = objc_loadWeakRetained(&selfCopy->_engine);
  indexId = [v117 indexId];
  [v112 recordInputLength:v114 languageTag:v115 languageSupported:v120 requestType:type3 indexId:indexId];

  _Block_object_dispose(&v152, 8);
}

- (void)addExtraQueryCompletions
{
  type = [(CKContextRequest *)self->_request type];
  if (type <= 0xF && ((1 << type) & 0x803A) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_engine);
    qidToQueriesMap = [WeakRetained qidToQueriesMap];

    v7 = objc_loadWeakRetained(&self->_engine);
    queriesArray = [v7 queriesArray];

    v71 = qidToQueriesMap;
    if (qidToQueriesMap)
    {
      if (queriesArray)
      {
        results = [(CKContextResponse *)self->_response results];
        v10 = [results count];

        if (v10)
        {
          v59 = queriesArray;
          results2 = [(CKContextResponse *)self->_response results];
          v12 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", 3 * [results2 count]);

          v72 = +[NSMutableSet set];
          simplifiedDesiredLanguageTags = [(LuceneContextRequest *)self simplifiedDesiredLanguageTags];
          extraQueryCompletionsTopKLanguages = [(ContextConfiguration *)self->_config extraQueryCompletionsTopKLanguages];
          results3 = [(CKContextResponse *)self->_response results];
          v61 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [results3 count]);

          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          selfCopy = self;
          obj = [(CKContextResponse *)self->_response results];
          v67 = [obj countByEnumeratingWithState:&v85 objects:v92 count:16];
          if (v67)
          {
            v64 = *v86;
            do
            {
              for (i = 0; i != v67; i = i + 1)
              {
                if (*v86 != v64)
                {
                  objc_enumerationMutation(obj);
                }

                v16 = *(*(&v85 + 1) + 8 * i);
                topicId = [v16 topicId];
                if ([topicId length])
                {
                  [v72 removeAllObjects];
                  v18 = [v71 objectsForKey:topicId intoSet:v72 keepWalkingOut:0];
                  if ([simplifiedDesiredLanguageTags count])
                  {
                    v62 = v16;
                    v83 = 0u;
                    v84 = 0u;
                    v81 = 0u;
                    v82 = 0u;
                    v19 = simplifiedDesiredLanguageTags;
                    v20 = [v19 countByEnumeratingWithState:&v81 objects:v91 count:16];
                    if (v20)
                    {
                      v21 = v20;
                      v69 = 0;
                      v22 = *v82;
LABEL_17:
                      v23 = 0;
                      v24 = v69 + 1;
                      v69 += v21;
                      while (1)
                      {
                        if (*v82 != v22)
                        {
                          objc_enumerationMutation(v19);
                        }

                        if (v24 > extraQueryCompletionsTopKLanguages)
                        {
                          break;
                        }

                        v25 = [NSString stringWithFormat:@"%@:%@", topicId, *(*(&v81 + 1) + 8 * v23)];
                        v26 = [v71 objectsForKey:v25 intoSet:v72 keepWalkingOut:0];

                        v23 = v23 + 1;
                        ++v24;
                        if (v21 == v23)
                        {
                          v21 = [v19 countByEnumeratingWithState:&v81 objects:v91 count:16];
                          if (v21)
                          {
                            goto LABEL_17;
                          }

                          break;
                        }
                      }
                    }

                    v16 = v62;
                  }

                  title = [v16 title];

                  if (title)
                  {
                    title2 = [v16 title];
                    lowercaseString = [title2 lowercaseString];
                    [v61 addObject:lowercaseString];
                  }

                  v79 = 0u;
                  v80 = 0u;
                  v77 = 0u;
                  v78 = 0u;
                  v30 = v72;
                  v31 = [v30 countByEnumeratingWithState:&v77 objects:v90 count:16];
                  if (v31)
                  {
                    v32 = v31;
                    v33 = *v78;
                    do
                    {
                      for (j = 0; j != v32; j = j + 1)
                      {
                        if (*v78 != v33)
                        {
                          objc_enumerationMutation(v30);
                        }

                        v35 = *(*(&v77 + 1) + 8 * j);
                        v36 = [v12 objectForKey:v35];

                        if (!v36)
                        {
                          v37 = [v35 copy];
                          [v12 setObject:topicId forKey:v37];
                        }
                      }

                      v32 = [v30 countByEnumeratingWithState:&v77 objects:v90 count:16];
                    }

                    while (v32);
                  }
                }
              }

              v67 = [obj countByEnumeratingWithState:&v85 objects:v92 count:16];
            }

            while (v67);
          }

          queriesArray = v59;
          v38 = v61;
          if ([v12 count])
          {
            allKeys = [v12 allKeys];
            v65 = [allKeys sortedArrayUsingSelector:"compare:"];

            results4 = [(CKContextResponse *)selfCopy->_response results];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v41 = [results4 mutableCopy];

              [(CKContextResponse *)selfCopy->_response setResults:v41];
              results4 = v41;
            }

            [(CKContextResponse *)selfCopy->_response setResultsNeedFiltering:1];
            v42 = [[ComAppleContextkitUtilObjcIterator alloc] initWithId:v65];
            v43 = [v59 lookupWithComAppleContextkitUtilSpindleArray_State:0 withJavaUtilList:0 withJavaUtilIterator:v42];

            v44 = [v12 count];
            v45 = [v43 size];
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v46 = v43;
            v68 = [v46 countByEnumeratingWithState:&v73 objects:v89 count:16];
            if (v68)
            {
              v47 = *v74;
              v70 = -1;
              v63 = *v74;
              do
              {
                for (k = 0; k != v68; k = k + 1)
                {
                  if (*v74 != v47)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v49 = *(*(&v73 + 1) + 8 * k);
                  ++v70;
                  lowercaseString2 = [v49 lowercaseString];
                  if (([v38 containsObject:lowercaseString2] & 1) == 0)
                  {
                    [v38 addObject:lowercaseString2];
                    v51 = [[CKContextResult alloc] initWithTitle:v49 query:0 url:0 category:0];
                    [v51 setCategory:@"(query completion)"];
                    [v51 setMinPrefix:1];
                    if (v45 == v44)
                    {
                      v52 = [v65 objectAtIndexedSubscript:v70];
                      [v12 objectForKey:v52];
                      v53 = v46;
                      v54 = v45;
                      v55 = v44;
                      v57 = v56 = results4;
                      [v51 setTopicId:v57];

                      results4 = v56;
                      v44 = v55;
                      v45 = v54;
                      v46 = v53;
                      v47 = v63;

                      v38 = v61;
                    }

                    [results4 addObject:v51];
                  }
                }

                v68 = [v46 countByEnumeratingWithState:&v73 objects:v89 count:16];
              }

              while (v68);
            }

            queriesArray = v59;
          }
        }
      }
    }
  }
}

- (void)addCoreNLPTags
{
  selfCopy = self;
  type = [(CKContextRequest *)self->_request type];
  if (type <= 0x14 && ((1 << type) & 0x1A803A) != 0)
  {
    text = [(CKContextRequest *)selfCopy->_request text];
    if (text)
    {
      v62 = text;
      v65 = [TopEntityHelper findNamedEntities:text];
      results = [(CKContextResponse *)selfCopy->_response results];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = results;
      }

      else
      {
        v8 = [results mutableCopy];

        [(CKContextResponse *)selfCopy->_response setResults:v8];
        v7 = v8;
      }

      v76 = v7;
      v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v7 count]);
      v70 = v9;
      if (!selfCopy->_debug)
      {
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v10 = v76;
        v11 = [v10 countByEnumeratingWithState:&v91 objects:v99 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v92;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v92 != v13)
              {
                objc_enumerationMutation(v10);
              }

              title = [*(*(&v91 + 1) + 8 * i) title];
              lowercaseString = [title lowercaseString];
              [v70 addObject:lowercaseString];
            }

            v12 = [v10 countByEnumeratingWithState:&v91 objects:v99 count:16];
          }

          while (v12);
        }

        v9 = v70;
      }

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v97[0] = NSLinguisticTagOrganizationName;
      v97[1] = NSLinguisticTagPlaceName;
      v97[2] = NSLinguisticTagPersonalName;
      obj = [NSArray arrayWithObjects:v97 count:3];
      v66 = [obj countByEnumeratingWithState:&v87 objects:v98 count:16];
      if (v66)
      {
        v64 = *v88;
        v69 = selfCopy;
        do
        {
          for (j = 0; j != v66; j = j + 1)
          {
            if (*v88 != v64)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v87 + 1) + 8 * j);
            v19 = [v65 objectForKeyedSubscript:v18];
            if (v19)
            {
              v68 = j;
              if ([v18 isEqual:NSLinguisticTagPersonalName])
              {
                v20 = 1;
              }

              else
              {
                v20 = 2;
              }

              v67 = v19;
              allValues = [v19 allValues];
              v22 = CKContextExecutor_ptr;
              v23 = [TopEntityHelper mergeAndSort:allValues usingMergeType:v20];

              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v24 = v23;
              v25 = [v24 countByEnumeratingWithState:&v83 objects:v96 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v84;
                v73 = v24;
                v74 = v18;
                v72 = *v84;
                do
                {
                  v28 = 0;
                  v75 = v26;
                  do
                  {
                    if (*v84 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = *(*(&v83 + 1) + 8 * v28);
                    if (selfCopy->_debug || ([*(*(&v83 + 1) + 8 * v28) score], v31 = v30, -[ContextConfiguration coreNLPMinScore](selfCopy->_config, "coreNLPMinScore"), v31 >= v32))
                    {
                      v78 = v28;
                      name = [v29 name];
                      lowercaseString2 = [name lowercaseString];

                      if (([v9 containsObject:lowercaseString2] & 1) == 0)
                      {
                        v77 = lowercaseString2;
                        [v9 addObject:lowercaseString2];
                        v35 = objc_alloc(v22[16]);
                        name2 = [v29 name];
                        v37 = [v35 initWithTitle:name2 query:0 url:0 category:v18];

                        [v29 score];
                        v39 = v38;
                        [(ContextConfiguration *)selfCopy->_config coreNLPRelevantScore];
                        [v37 setMinPrefix:v39 <= v40];
                        v41 = v76;
                        if (selfCopy->_debug)
                        {
                          v42 = [v29 count];
                          firstOccurrence = [v29 firstOccurrence];
                          [v29 score];
                          v45 = v44;
                          sourceNamedEntities = [v29 sourceNamedEntities];
                          v47 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"count: %lu, firstOccur: %lu, score: %f, sourceEntities: %lu", v42, firstOccurrence, *&v45, [sourceNamedEntities count]);

                          sourceNamedEntities2 = [v29 sourceNamedEntities];
                          v49 = [sourceNamedEntities2 count];

                          if (v49 >= 2)
                          {
                            v71 = v37;
                            v81 = 0u;
                            v82 = 0u;
                            v79 = 0u;
                            v80 = 0u;
                            sourceNamedEntities3 = [v29 sourceNamedEntities];
                            v51 = [sourceNamedEntities3 countByEnumeratingWithState:&v79 objects:v95 count:16];
                            if (v51)
                            {
                              v52 = v51;
                              v53 = *v80;
                              do
                              {
                                v54 = 0;
                                v55 = v47;
                                do
                                {
                                  if (*v80 != v53)
                                  {
                                    objc_enumerationMutation(sourceNamedEntities3);
                                  }

                                  v56 = *(*(&v79 + 1) + 8 * v54);
                                  name3 = [v56 name];
                                  v58 = [v56 count];
                                  firstOccurrence2 = [v56 firstOccurrence];
                                  [v56 score];
                                  v61 = [NSString stringWithFormat:@"\n  sourceEntity: %@ \t count: %lu, firstOccur: %lu, score: %f", name3, v58, firstOccurrence2, v60];
                                  v47 = [v55 stringByAppendingString:v61];

                                  v54 = v54 + 1;
                                  v55 = v47;
                                }

                                while (v52 != v54);
                                v52 = [sourceNamedEntities3 countByEnumeratingWithState:&v79 objects:v95 count:16];
                              }

                              while (v52);
                            }

                            selfCopy = v69;
                            v9 = v70;
                            v41 = v76;
                            v22 = CKContextExecutor_ptr;
                            v37 = v71;
                          }

                          [v37 setDebug:v47];

                          v24 = v73;
                          v18 = v74;
                          v27 = v72;
                        }

                        [v41 addObject:v37];

                        v26 = v75;
                        lowercaseString2 = v77;
                      }

                      v28 = v78;
                    }

                    v28 = v28 + 1;
                  }

                  while (v28 != v26);
                  v26 = [v24 countByEnumeratingWithState:&v83 objects:v96 count:16];
                }

                while (v26);
              }

              v19 = v67;
              j = v68;
            }
          }

          v66 = [obj countByEnumeratingWithState:&v87 objects:v98 count:16];
        }

        while (v66);
      }

      text = v62;
    }
  }
}

- (void)augmentResultsWithTags
{
  type = [(CKContextRequest *)self->_request type];
  if (type <= 0x14 && ((1 << type) & 0x1B0438) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_engine);
    tagsMap = [WeakRetained tagsMap];

    if (tagsMap)
    {
      results = [(CKContextResponse *)self->_response results];
      v8 = [results count];

      if (v8)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        obj = [(CKContextResponse *)self->_response results];
        v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v26;
          v23 = CKContextTagTypePersonReal;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v25 + 1) + 8 * i);
              topicId = [v13 topicId];
              title = [v13 title];
              if ([topicId length])
              {
                v16 = [tagsMap objectsForKey:topicId];
              }

              else if ([title length])
              {
                lowercaseString = [title lowercaseString];
                v16 = [tagsMap objectsForKey:lowercaseString];
              }

              else
              {
                v16 = 0;
              }

              tags = [v13 tags];
              v19 = [tags count];

              if (v19)
              {
                tags2 = [v13 tags];
                v21 = [tags2 mutableCopy];

                if ([v16 count])
                {
                  [v21 unionSet:v16];
                }

                if ([v21 containsObject:@"CK_PERSON_GIVEN_SURNAME"])
                {
                  if ([v21 count] == 1)
                  {
                    v22 = [NSMutableSet setWithObject:v23];

                    v21 = v22;
                  }

                  else
                  {
                    [v21 removeObject:@"CK_PERSON_GIVEN_SURNAME"];
                  }
                }

                [v13 setTags:v21];
              }

              else if ([v16 count])
              {
                [v13 setTags:v16];
              }
            }

            v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v10);
        }
      }
    }
  }
}

- (void)addStructuredExtraction
{
  type = [(CKContextRequest *)self->_request type];
  if (type <= 0x14 && ((1 << type) & 0x1B0438) != 0)
  {
    uiElements = [(CKContextRequest *)self->_request uiElements];
    if ([uiElements count])
    {
      _sortGroupFilterUIElements = [(LuceneContextRequest *)self _sortGroupFilterUIElements];
      results = [(CKContextResponse *)self->_response results];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = [results mutableCopy];

        [(CKContextResponse *)self->_response setResults:v8];
        results = v8;
      }

      v9 = objc_alloc_init(NSMutableDictionary);
      uiElements2 = [(CKContextRequest *)self->_request uiElements];
      v11 = [(LuceneContextRequest *)self _determineTitleFromUIElements:uiElements2];

      if (v11)
      {
        [results addObject:v11];
        sourceUIElement = [v11 sourceUIElement];
        if (sourceUIElement)
        {
          v13 = [NSMutableArray arrayWithObject:v11];
          [v9 setObject:v13 forKeyedSubscript:sourceUIElement];
        }
      }

      v30 = v11;
      v29 = [CKStructuredExtractionUtils liveTextResultsFromUIElements:uiElements];
      [results addObjectsFromArray:?];
      v33 = uiElements;
      v28 = [CKStructuredExtractionUtils personResultsFromUIElements:uiElements];
      [results addObjectsFromArray:?];
      v38 = 0;
      v14 = [NSDataDetector dataDetectorWithTypes:2104 error:&v38];
      v26 = v38;
      v27 = v14;
      v32 = _sortGroupFilterUIElements;
      v15 = [CKStructuredExtractionUtils ddResultsForUIElements:_sortGroupFilterUIElements usingDataDetector:v14 withConfig:self->_config];
      v31 = results;
      [results addObjectsFromArray:v15];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v35;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v34 + 1) + 8 * i);
            sourceUIElement2 = [v21 sourceUIElement];
            v23 = [v9 objectForKeyedSubscript:sourceUIElement2];
            if (!v23)
            {
              v23 = objc_alloc_init(NSMutableArray);
            }

            [v23 addObject:v21];
            [v9 setObject:v23 forKeyedSubscript:sourceUIElement2];
          }

          v18 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v18);
      }

      [(LuceneContextRequest *)self _determineSurroundingEntities:v32 withUIElementToResultsMapping:v9];
      extractionItems = [(CKContextRequest *)self->_request extractionItems];
      v25 = [(LuceneContextRequest *)self _addHomeAppExtractionResults:extractionItems];

      [v31 addObjectsFromArray:v25];
      uiElements = v33;
    }
  }
}

- (id)_addHomeAppExtractionResults:(id)results
{
  v4 = [NSMutableArray alloc];
  extractionItems = [(CKContextRequest *)self->_request extractionItems];
  v24 = [v4 initWithCapacity:{objc_msgSend(extractionItems, "count")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CKContextRequest *)self->_request extractionItems];
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = -[LuceneContextRequest _getTagTypeForExtractionItemType:](self, "_getTagTypeForExtractionItemType:", [v10 type]);
        if (v11)
        {
          v12 = [CKContextResult alloc];
          title = [v10 title];
          v14 = [v12 initWithTitle:title query:0 url:0 category:0];

          identifier = [v10 identifier];
          [v14 setTopicId:identifier];

          v16 = [NSSet setWithObject:v11];
          [v14 setTags:v16];

          [v14 setOnScreen:{objc_msgSend(v10, "isOnScreen")}];
          identifier2 = [v10 identifier];
          bundleIdentifier = [v10 bundleIdentifier];
          isOnScreen = [v10 isOnScreen];
          v20 = @"NO";
          if (isOnScreen)
          {
            v20 = @"YES";
          }

          v21 = [NSString stringWithFormat:@"Identifier: %@, BundleIdentifier: %@, On Screen:%@", identifier2, bundleIdentifier, v20];
          [v14 setDebug:v21];

          [v24 addObject:v14];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  return v24;
}

- (id)_getTagTypeForExtractionItemType:(unint64_t)type
{
  if (type > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_100484318 + type);
  }

  return v4;
}

- (void)_determineSurroundingEntities:(id)entities withUIElementToResultsMapping:(id)mapping
{
  entitiesCopy = entities;
  mappingCopy = mapping;
  v8 = objc_alloc_init(NSMutableDictionary);
  if ([entitiesCopy count])
  {
    v9 = 0;
    v35 = mappingCopy;
    v36 = CKContextTagTypePlainTextLabel;
    v38 = v8;
    do
    {
      v10 = [entitiesCopy objectAtIndexedSubscript:{v9, v35}];
      v11 = [mappingCopy objectForKeyedSubscript:v10];
      v12 = v11;
      if (v11 && [v11 count])
      {
        surroundingEntitiesSearchRange = [(ContextConfiguration *)self->_config surroundingEntitiesSearchRange];
        if (v9 >= surroundingEntitiesSearchRange)
        {
          v14 = v9 - surroundingEntitiesSearchRange;
        }

        else
        {
          v14 = 0;
        }

        v15 = surroundingEntitiesSearchRange + v9;
        v16 = [entitiesCopy count];
        if (v15 >= v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = v15;
        }

        [v10 frameInWindow];
        MidX = CGRectGetMidX(v44);
        v37 = v10;
        [v10 frameInWindow];
        MidY = CGRectGetMidY(v45);
        v20 = objc_alloc_init(NSMutableArray);
        while (v14 < v17)
        {
          v21 = [entitiesCopy objectAtIndexedSubscript:v14];
          if ([(LuceneContextRequest *)self _isLikelyLabel:v21])
          {
            [v21 frameInWindow];
            v22 = CGRectGetMidX(v46);
            [v21 frameInWindow];
            v23 = CGRectGetMidY(v47);
            v24 = (MidY - v23) * (MidY - v23);
            [(ContextConfiguration *)self->_config surroundingEntitiesDistanceScoreHorizontalSkew];
            if (v24 + v25 * ((MidX - v22) * (MidX - v22)) < [(ContextConfiguration *)self->_config surroundingEntitiesMaxDistanceScore])
            {
              v26 = [v8 objectForKeyedSubscript:v21];
              if (!v26)
              {
                v27 = [CKContextResult alloc];
                text = [v21 text];
                v26 = [v27 initWithTitle:text query:0 url:0 category:0];

                [v21 absoluteOriginOnScreen];
                [v26 setAbsoluteOriginOnScreen:?];
                [v26 setOnScreen:{objc_msgSend(v21, "isOnScreen")}];
                [v21 frameInWindow];
                [v26 setFrameInWindow:?];
                v29 = [NSSet setWithObject:v36];
                [v26 setTags:v29];

                v8 = v38;
                [v38 setObject:v26 forKeyedSubscript:v21];
              }

              [v20 addObject:v26];
            }
          }

          ++v14;
        }

        if ([v20 count])
        {
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v30 = v12;
          v31 = [v30 countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v40;
            do
            {
              v34 = 0;
              do
              {
                if (*v40 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                [*(*(&v39 + 1) + 8 * v34) setAssociatedResults:v20];
                v34 = v34 + 1;
              }

              while (v32 != v34);
              v32 = [v30 countByEnumeratingWithState:&v39 objects:v43 count:16];
            }

            while (v32);
          }

          v8 = v38;
        }

        mappingCopy = v35;
        v10 = v37;
      }

      ++v9;
    }

    while (v9 < [entitiesCopy count]);
  }
}

- (id)_determineTitleFromUIElements:(id)elements
{
  elementsCopy = elements;
  [(ContextConfiguration *)self->_config minTitleUIFontSize];
  v6 = v5;
  selfCopy = self;
  [(ContextConfiguration *)self->_config minTitleUIFontSize];
  v8 = v7;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = elementsCopy;
  v10 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v10)
  {
    v40 = 0;
    v11 = *v47;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        if ([v13 isOnScreen])
        {
          text = [v13 text];
          v15 = +[NSCharacterSet newlineCharacterSet];
          v16 = [text rangeOfCharacterFromSet:v15];

          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([objc_opt_class() _looksLikeTitleBarUIElement:v13])
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                sub_1002BBA6C();
              }

              v10 = v13;
              goto LABEL_24;
            }

            [v13 fontSize];
            if (v6 <= v17)
            {
              text2 = [v13 text];
              v19 = [text2 length];
              minUIContextLength = [(ContextConfiguration *)self->_config minUIContextLength];

              if (v19 > minUIContextLength)
              {
                text3 = [v40 text];
                text4 = [v13 text];
                v23 = [text3 isEqualToString:text4];

                if (!v23)
                {
                  v8 = v6;
                }

                v24 = v13;

                [v24 fontSize];
                v6 = v25;
                v40 = v24;
              }
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_1002BBA30(&v42, v43);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_1002BB9F4(&v44, v45);
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_24:
    v26 = v40;
  }

  else
  {
    v26 = 0;
  }

  text5 = [v26 text];
  if ([text5 length])
  {
    [(ContextConfiguration *)selfCopy->_config minFontDeltaForTitle];
    v29 = v28;

    if (!v10)
    {
      v30 = v6 - v8;
      if (v6 - v8 > v29)
      {
        v10 = v26;
      }
    }

    if (v10)
    {
      goto LABEL_34;
    }
  }

  else
  {

    if (v10)
    {
      goto LABEL_34;
    }
  }

  v31 = [(CKContextRequest *)selfCopy->_request title:v30];

  if (!v31)
  {
    v36 = 0;
    goto LABEL_40;
  }

LABEL_34:
  text6 = [v10 text];
  v33 = text6;
  if (text6)
  {
    title = text6;
  }

  else
  {
    title = [(CKContextRequest *)selfCopy->_request title];
  }

  v35 = title;

  v36 = [[LuceneContextResult alloc] initWithText:v35];
  if (v10)
  {
    [v10 frameInWindow];
    [(LuceneContextResult *)v36 setFrameInWindow:?];
    [v10 absoluteOriginOnScreen];
    [(LuceneContextResult *)v36 setAbsoluteOriginOnScreen:?];
    -[LuceneContextResult setOnScreen:](v36, "setOnScreen:", [v10 isOnScreen]);
    v37 = [CKStructuredExtractionUtils debugStringForStructuredResult:v36];
    [(LuceneContextResult *)v36 setDebug:v37];

    [(LuceneContextResult *)v36 setSourceUIElement:v10];
  }

  v38 = [NSSet setWithObject:CKContextTagTypeTitle];
  [(LuceneContextResult *)v36 setTags:v38];

  [(LuceneContextResult *)v36 setMinPrefix:[(ContextConfiguration *)selfCopy->_config titleMinPrefix]];
LABEL_40:

  return v36;
}

+ (BOOL)_looksLikeTitleBarUIElement:(id)element
{
  elementCopy = element;
  className = [elementCopy className];
  v5 = [className isEqualToString:@"UILabel"];

  if (v5 && ([elementCopy superviewClassNames], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    superviewClassNames = [elementCopy superviewClassNames];
    v9 = [superviewClassNames countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(superviewClassNames);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 isEqualToString:@"_UINavigationBarTitleControl"] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"_UINavigationBarContentView"))
          {
            v14 = 1;
            goto LABEL_16;
          }
        }

        v10 = [superviewClassNames countByEnumeratingWithState:&v16 objects:v20 count:16];
        v14 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_16:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_sortGroupFilterUIElements
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1002BBAB0();
  }

  preferredSceneIdentifiers = [(CKContextRequest *)self->_request preferredSceneIdentifiers];
  uiElements = [(CKContextRequest *)self->_request uiElements];
  v4 = [uiElements sortedArrayUsingSelector:"compareByPosition:"];
  [(CKContextRequest *)self->_request setUiElements:v4];

  v5 = objc_alloc_init(NSMutableArray);
  [(CKContextRequest *)self->_request uiElements];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v85 = 0u;
  v6 = [obj countByEnumeratingWithState:&v82 objects:v86 count:16];
  if (!v6)
  {
    v8 = 0;
    v10 = preferredSceneIdentifiers;
    goto LABEL_67;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v83;
  v10 = preferredSceneIdentifiers;
  v78 = v5;
  do
  {
    v11 = 0;
    do
    {
      if (*v83 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v82 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      if (![(LuceneContextRequest *)self _isRelevantUIForExtraction:v12])
      {
        sceneIdentifier = v8;
        v8 = 0;
        goto LABEL_22;
      }

      sceneIdentifier = [v12 sceneIdentifier];
      if ([v10 count] && (objc_msgSend(v10, "containsObject:", sceneIdentifier) & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_1002BBAF4(&v80, v81);
        }

        goto LABEL_22;
      }

      if (!v8 || ([v8 frameInWindow], CGRectIsEmpty(v88)) || (objc_msgSend(v12, "frameInWindow"), CGRectIsEmpty(v89)) || (v15 = objc_msgSend(v8, "isOnScreen"), v16 = v15 == objc_msgSend(v12, "isOnScreen"), v5 = v78, !v16))
      {
LABEL_15:
        if (self->_debug)
        {
          v17 = [v12 copy];
        }

        else
        {
          v17 = v12;
        }

        v18 = v17;
        [v5 addObject:v17];

        v8 = v18;
        goto LABEL_22;
      }

      [v8 frameInWindow];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [v12 frameInWindow];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v94.size.height = v33;
      v90.origin.x = v20;
      v76 = v33;
      v77 = v22;
      v90.origin.y = v22;
      v90.size.width = v24;
      v90.size.height = v26;
      v94.origin.x = v28;
      v94.origin.y = v30;
      v94.size.width = v32;
      if (CGRectEqualToRect(v90, v94))
      {
        text = [v8 text];
        text2 = [v12 text];
        v72 = [text isEqualToString:text2];

        if (v72)
        {
          v10 = preferredSceneIdentifiers;
          v5 = v78;
          goto LABEL_22;
        }
      }

      v36 = v26;
      if (v24 <= v32)
      {
        v37 = v28;
      }

      else
      {
        v37 = v20;
      }

      if (v24 >= v32)
      {
        v38 = v28;
      }

      else
      {
        v38 = v20;
      }

      superviewClassNames = [v12 superviewClassNames];
      v40 = [superviewClassNames count];

      v41 = 0;
      if (v40 && v37 < v38 + 0.5)
      {
        if (v24 >= v32)
        {
          v42 = v32;
        }

        else
        {
          v42 = v24;
        }

        if (v24 <= v32)
        {
          v43 = v32;
        }

        else
        {
          v43 = v24;
        }

        v41 = v37 + v43 > v42 + v38 + -0.5 && ([v8 fontSize], v45 = v44, objc_msgSend(v12, "fontSize"), vabds_f32(v45, v46) < 0.5) && v30 - v77 - v36 < -[ContextConfiguration verticalGroupBuffer](self->_config, "verticalGroupBuffer");
      }

      v47 = v36;
      if (vabdd_f64(v77, v30) >= 0.5 || ([v8 fontSize], v49 = v48, objc_msgSend(v12, "fontSize"), vabds_f32(v49, v50) >= 0.5))
      {
        v71 = 0;
      }

      else
      {
        v47 = v36;
        v71 = v28 - v20 - v24 < [(ContextConfiguration *)self->_config horizontalGroupBuffer];
      }

      v91.origin.x = v20;
      v95.size.height = v76;
      v91.origin.y = v77;
      v91.size.width = v24;
      v91.size.height = v47;
      v95.origin.x = v28;
      v95.origin.y = v30;
      v95.size.width = v32;
      if (CGRectIntersectsRect(v91, v95))
      {
        [v8 fontSize];
        v52 = v51;
        [v12 fontSize];
        v70 = vabds_f32(v52, v53) < 0.5;
      }

      else
      {
        v70 = 0;
      }

      v73 = v41;
      className = [v8 className];
      if (className)
      {

LABEL_55:
        className2 = [v8 className];
        className3 = [v12 className];
        v69 = [className2 isEqualToString:className3];

        v58 = v69;
        goto LABEL_56;
      }

      className4 = [v12 className];

      if (className4)
      {
        goto LABEL_55;
      }

      v58 = 1;
LABEL_56:
      v10 = preferredSceneIdentifiers;
      v5 = v78;
      if (!v58 || !v73 && !v71 && !v70)
      {
        goto LABEL_15;
      }

      text3 = [v8 text];
      text4 = [v12 text];
      v74 = [NSString stringWithFormat:@"%@ %@", text3, text4];

      v5 = v78;
      v10 = preferredSceneIdentifiers;
      [v8 setText:v74];
      v92.origin.x = v20;
      v96.size.height = v76;
      v92.origin.y = v77;
      v92.size.width = v24;
      v92.size.height = v47;
      v96.origin.x = v28;
      v96.origin.y = v30;
      v96.size.width = v32;
      v93 = CGRectUnion(v92, v96);
      [v8 setFrameInWindow:{v93.origin.x, v93.origin.y, v93.size.width, v93.size.height}];
      [v8 absoluteOriginOnScreen];
      v62 = v61;
      [v12 absoluteOriginOnScreen];
      if (v62 >= v63)
      {
        v62 = v63;
      }

      [v8 absoluteOriginOnScreen];
      v65 = v64;
      [v12 absoluteOriginOnScreen];
      if (v65 < v66)
      {
        v66 = v65;
      }

      [v8 setAbsoluteOriginOnScreen:{v62, v66}];

LABEL_22:
      objc_autoreleasePoolPop(v13);
      v11 = v11 + 1;
    }

    while (v7 != v11);
    v67 = [obj countByEnumeratingWithState:&v82 objects:v86 count:16];
    v7 = v67;
  }

  while (v67);
LABEL_67:

  return v5;
}

- (BOOL)_isRelevantUIForExtraction:(id)extraction
{
  extractionCopy = extraction;
  text = [extractionCopy text];
  v6 = [text length];
  if (v6 < [(ContextConfiguration *)self->_config minUIContextLength])
  {
    goto LABEL_2;
  }

  text2 = [extractionCopy text];
  v9 = [text2 length];
  maxUIContextLength = [(ContextConfiguration *)self->_config maxUIContextLength];

  if (v9 > maxUIContextLength)
  {
    goto LABEL_5;
  }

  [extractionCopy frameInWindow];
  y = v20.origin.y;
  height = v20.size.height;
  if (CGRectIsEmpty(v20))
  {
    v7 = 1;
    goto LABEL_8;
  }

  if (y < [(ContextConfiguration *)self->_config minUIPositionY]&& height < [(ContextConfiguration *)self->_config smallUIHeight])
  {
LABEL_5:
    v7 = 0;
    goto LABEL_8;
  }

  text = [extractionCopy superviewClassNames];
  if (!text)
  {
LABEL_14:
    v7 = 1;
    goto LABEL_3;
  }

  structuredExtractionUIBlockList = [(ContextConfiguration *)self->_config structuredExtractionUIBlockList];
  v15 = [NSSet setWithArray:text];
  v16 = [structuredExtractionUIBlockList intersectsSet:v15];

  if ((v16 & 1) == 0)
  {
    if (([extractionCopy isOnScreen] & 1) == 0)
    {
      structuredExtractionUIOffScreenIgnoreList = [(ContextConfiguration *)self->_config structuredExtractionUIOffScreenIgnoreList];
      v18 = [NSSet setWithArray:text];
      v19 = [structuredExtractionUIOffScreenIgnoreList intersectsSet:v18];

      v7 = v19 ^ 1;
      goto LABEL_3;
    }

    goto LABEL_14;
  }

LABEL_2:
  v7 = 0;
LABEL_3:

LABEL_8:
  return v7 & 1;
}

- (BOOL)_isLikelyLabel:(id)label
{
  text = [label text];
  v5 = [text length];
  LOBYTE(self) = v5 <= [(ContextConfiguration *)self->_config surroundingEntitiesMaxLabelLength];

  return self;
}

- (void)filterResultsByTags:(id)tags
{
  tagsCopy = tags;
  type = [(CKContextRequest *)self->_request type];
  if (type <= 0x14 && ((1 << type) & 0x1B0438) != 0)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    selfCopy = self;
    results = [(CKContextResponse *)self->_response results];
    v9 = [results countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(results);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          tags = [v13 tags];
          if (tags)
          {
            v15 = tags;
            tags2 = [v13 tags];
            v17 = [tags2 intersectsSet:tagsCopy];

            if (v17)
            {
              [v7 addObject:v13];
            }
          }
        }

        v10 = [results countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [(CKContextResponse *)selfCopy->_response setResults:v7];
  }
}

+ (id)setOfLinewiseStringsFromFieldValue:(id)value
{
  valueCopy = value;
  if ([valueCopy length])
  {
    +[NSMutableOrderedSet orderedSet];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002AFE7C;
    v4 = v6[3] = &unk_100484000;
    v7 = v4;
    [valueCopy enumerateLinesUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)lookupTreasureMapForDomainHierarchy:(id)hierarchy fromTreasureMap:(id)map intoSet:(id)set isRelaxedMatchOut:(BOOL *)out
{
  hierarchyCopy = hierarchy;
  mapCopy = map;
  setCopy = set;
  v12 = hierarchyCopy;
  if ([v12 length])
  {
    v20 = 0;
    v13 = [mapCopy objectsForKey:v12 intoSet:setCopy keepWalkingOut:&v20];

    if (out && ![v13 count])
    {
      *out = 1;
    }

    if ([v13 count] && v20 != 1 || (v14 = objc_msgSend(v12, "indexOf:", 46), (v14 & 0x80000000) != 0))
    {
      v17 = v13;
      v15 = v12;
    }

    else
    {
      v15 = v12;
      while (1)
      {
        v16 = v15;
        v15 = [v15 substring:v14 + 1];

        if (![v15 length])
        {
          break;
        }

        v17 = [mapCopy objectsForKey:v15 intoSet:v13 keepWalkingOut:&v20];

        if (![v17 count] || v20 == 1)
        {
          v14 = [v15 indexOf:46];
          v13 = v17;
          if ((v14 & 0x80000000) == 0)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

      v17 = v13;
    }

LABEL_17:
    v18 = v17;
  }

  else
  {
    v18 = setCopy;
    v15 = v12;
  }

  return v18;
}

+ (void)addTopicsForURL:(id)l withEngine:(id)engine toResponse:(id)response
{
  responseCopy = response;
  engineCopy = engine;
  lCopy = l;
  v12 = objc_alloc_init(OrgApacheLuceneDocumentDocumentStoredFieldVisitor);
  v11 = [[OrgApacheLuceneUtilBytesRef alloc] initWithInt:4096];
  [(OrgApacheLuceneIndexStoredFieldVisitor *)v12 setReusableBytesRefWithOrgApacheLuceneUtilBytesRef:v11];

  [self _addTopicsForUrl:lCopy withEngine:engineCopy documentVisitor:v12 toResponse:responseCopy];
}

+ (void)_addTopicsForUrl:(id)url withEngine:(id)engine documentVisitor:(id)visitor toResponse:(id)response
{
  urlCopy = url;
  engineCopy = engine;
  visitorCopy = visitor;
  responseCopy = response;
  scheme = [urlCopy scheme];
  host = [urlCopy host];
  treasureMap = [engineCopy treasureMap];
  reader = [engineCopy reader];
  v121 = host;
  if ([scheme length] && objc_msgSend(host, "length") && treasureMap && reader)
  {
    v150 = 0;
    v113 = [qword_1005572A8 containsObject:scheme];
    if (v113)
    {
      v15 = host;
      if ([host hasSuffix:@"."])
      {
        v16 = [host substringToIndex:{objc_msgSend(host, "length") - 1}];

        v15 = v16;
      }

      v112 = scheme;
      lowercaseString = [v15 lowercaseString];

      v18 = [objc_opt_class() lookupTreasureMapForDomainHierarchy:lowercaseString fromTreasureMap:treasureMap intoSet:0 isRelaxedMatchOut:&v150];
      value6 = 0;
      value4 = 0;
      v121 = lowercaseString;
LABEL_9:
      value3 = 0;
      value2 = 0;
      v114 = 0;
      LOBYTE(v124) = 0;
      goto LABEL_71;
    }

    if (![qword_1005572B0 containsObject:scheme])
    {
      if (![qword_1005572B8 containsObject:scheme])
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_1002BBB30();
        }

        value4 = 0;
        value3 = 0;
        value2 = 0;
        v18 = 0;

        goto LABEL_165;
      }

      v112 = scheme;
      v25 = [NSString stringWithFormat:@"%@://%@", scheme, host];
      v18 = [treasureMap objectsForKey:v25 intoSet:0 keepWalkingOut:0];

      value6 = 0;
      value4 = 0;
      goto LABEL_9;
    }

    v19 = scheme;
    v20 = host;
    v21 = [NSString stringWithFormat:@"%@://%@", scheme, host];
    v18 = [treasureMap objectsForKey:v21 intoSet:0 keepWalkingOut:0];
    v112 = scheme;
    if (![v18 count])
    {
      lowercaseString2 = [v121 lowercaseString];

      v20 = lowercaseString2;
      v23 = [NSString stringWithFormat:@"%@://%@", v19, lowercaseString2];

      v24 = [treasureMap objectsForKey:v23 intoSet:v18 keepWalkingOut:0];

      v21 = v23;
      v18 = v24;
    }

    v121 = v20;
    if ([v18 count])
    {
      value6 = 0;
      value4 = 0;
      value3 = 0;
      value2 = 0;
      v114 = 0;
      LOBYTE(v124) = 0;
LABEL_68:
      if (![v18 count])
      {
        v48 = objc_opt_class();
        v49 = [objc_opt_class() reverseFQDN:v20];
        v50 = [v48 lookupTreasureMapForDomainHierarchy:v49 fromTreasureMap:treasureMap intoSet:v18 isRelaxedMatchOut:&v150];

        v18 = v50;
      }

LABEL_71:
      v51 = [v18 count];
      v52 = 1;
      if ((v150 & 1) == 0)
      {
        v52 = 2;
      }

      if (v51)
      {
        v53 = v52;
      }

      else
      {
        v53 = 0;
      }

      v54 = +[MetricsLogging instance];
      indexId = [engineCopy indexId];
      [v54 recordURLLookupSucceeded:v53 bundleId:v113 ^ 1 indexId:indexId requestType:6];

      if (![v18 count] && (v124 & 1) == 0)
      {
        scheme = v112;
LABEL_164:

LABEL_165:
        goto LABEL_166;
      }

      v56 = objc_alloc_init(NSMutableArray);
      level1Topics = [responseCopy level1Topics];
      v58 = [level1Topics count];

      if (v58)
      {
        level1Topics2 = [responseCopy level1Topics];
        [v56 addObjectsFromArray:level1Topics2];
      }

      v127 = v56;
      v111 = urlCopy;
      v60 = objc_alloc_init(NSMutableArray);
      level2Topics = [responseCopy level2Topics];
      v62 = [level2Topics count];

      if (v62)
      {
        level2Topics2 = [responseCopy level2Topics];
        [v60 addObjectsFromArray:level2Topics2];
      }

      v125 = v60;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v18 = v18;
      v64 = [v18 countByEnumeratingWithState:&v142 objects:v157 count:16];
      if (!v64)
      {

        v67 = 0;
        v140 = 0;
        scheme = v112;
LABEL_140:
        if (v124)
        {
          if (v114)
          {
            [v56 removeAllObjects];
            [v125 removeAllObjects];
          }

          if (value2 | value3)
          {
            v100 = [[CKContextResult alloc] initWithTitle:value3 query:0 url:0 category:0];
            v101 = [value2 copy];
            [v100 setTopicId:v101];

            if (v100)
            {
              [v56 insertObject:v100 atIndex:0];
            }
          }

          if (value4 | value6)
          {
            v102 = [[CKContextResult alloc] initWithTitle:value6 query:0 url:0 category:0];
            v103 = [value4 copy];
            [v102 setTopicId:v103];

            if (v102)
            {
              [v125 insertObject:v102 atIndex:0];
            }
          }
        }

        if (v67)
        {
          v104 = v113;
        }

        else
        {
          v104 = 0;
        }

        if (v104 == 1)
        {
          v105 = [LuceneContextRequest stripHostToDomain:v121 level:v67];
          if (v140)
          {
            v106 = [LuceneContextRequest hostToCapitalizedName:v105];

            v105 = v106;
          }

          if ([v105 length])
          {
            v107 = [[CKContextResult alloc] initWithTitle:v105 query:0 url:0 category:0];
            if (v107)
            {
              [v125 addObject:v107];
            }
          }
        }

        [responseCopy setLevel1Topics:v56];
        [responseCopy setLevel2Topics:v125];
LABEL_163:

        goto LABEL_164;
      }

      v65 = v64;
      v109 = responseCopy;
      v66 = 0;
      v67 = 0;
      v129 = 0;
      v68 = *v143;
      v131 = visitorCopy;
      v133 = engineCopy;
      v128 = v18;
LABEL_85:
      v69 = 0;
      while (1)
      {
        if (*v143 != v68)
        {
          objc_enumerationMutation(v18);
        }

        intValue = [*(*(&v142 + 1) + 8 * v69) intValue];
        v71 = intValue;
        if ((intValue & 0x80000000) != 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v156 = v71;
            v73 = "Illegal topic value: %i";
LABEL_103:
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v73, buf, 8u);
          }
        }

        else
        {
          v72 = intValue & 7;
          if ((intValue & 7) > 4)
          {
            v67 = v72 - 3;
            v66 = 1;
          }

          else if ((v72 - 2) >= 3)
          {
            if ((intValue & 7) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_1002BBBA8(v153, v71, v154);
            }
          }

          else
          {
            v66 = 0;
            v67 = intValue & 7;
          }

          v74 = v71 >> 3;
          if (v71 > 0x1FF)
          {
            v75 = v67;
            v76 = v74 - 64;
            if ((v74 - 64) >= [engineCopy maxDoc])
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                v156 = v74 - 64;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Illegal topic docID: %i", buf, 8u);
              }

              v67 = v75;
              goto LABEL_135;
            }

            v139 = v66;
            getDocument = [visitorCopy getDocument];
            v78 = getDocument;
            if (!getDocument)
            {
              goto LABEL_134;
            }

            [getDocument removeAllFields];
            [reader documentWithInt:v74 - 64 withOrgApacheLuceneIndexStoredFieldVisitor:visitorCopy];
            v79 = [v78 getWithNSString:@"title"];
            v137 = [v78 getWithNSString:@"level1"];
            v138 = [v78 getWithNSString:@"level2"];
            v80 = [v78 getFieldWithNSString:@"parent"];
            v136 = v79;
            v81 = [[CKContextResult alloc] initWithTitle:v79 query:0 url:0 category:0];
            v82 = objc_opt_class();
            v83 = [v78 getWithNSString:@"related"];
            v84 = [v82 setOfLinewiseStringsFromFieldValue:v83];
            [v81 setRelatedItems:v84];

            if (!v81)
            {
              goto LABEL_133;
            }

            v134 = v80;
            if (v80)
            {
              numericValue = [v80 numericValue];
              v86 = numericValue;
              if (!numericValue)
              {
                goto LABEL_169;
              }

              intValue2 = [numericValue intValue];
              if (intValue2 < 1)
              {
                goto LABEL_169;
              }

              v88 = intValue2;
              if (intValue2 >= [v133 maxDoc])
              {
                goto LABEL_169;
              }

              [v78 removeAllFields];
              [reader documentWithInt:v88 withOrgApacheLuceneIndexStoredFieldVisitor:v131];
              v89 = [v78 getWithNSString:@"title"];
              v90 = [v78 getWithNSString:@"level1"];
              v118 = v89;
              v91 = [[CKContextResult alloc] initWithTitle:v89 query:0 url:0 category:0];
              v119 = v90;
              if ([v90 length])
              {
                [v91 setTopicId:v90];
              }

              v116 = objc_opt_class();
              v92 = [v78 getWithNSString:@"related"];
              v117 = [v116 setOfLinewiseStringsFromFieldValue:v92];
              [v91 setRelatedItems:v117];

              if (!v91)
              {
LABEL_169:
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  v156 = v76;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Couldn't resolve parentResult from parentField referenced from docID: %i", buf, 8u);
                }

                v91 = 0;
              }

              v93 = [v138 length];
              v94 = v138;
              v95 = v125;
              v96 = v125;
              if (!v93)
              {
LABEL_129:
                v99 = v95;
                [v99 addObject:v81];
                if (v91 && v99 != v127)
                {
                  [v127 addObject:v91];
                }

                v80 = v134;
LABEL_133:

                visitorCopy = v131;
                engineCopy = v133;
                v18 = v128;
LABEL_134:

                v66 = v139;
                v67 = v75;
                goto LABEL_135;
              }
            }

            else if ([v138 length])
            {
              v91 = 0;
              v94 = v138;
              v96 = v125;
            }

            else
            {
              title = [v81 title];

              v91 = 0;
              v94 = v137;
              v96 = v127;
              v95 = v125;
              if (!title)
              {
                goto LABEL_129;
              }
            }

            v98 = [v94 copy];
            [v81 setTopicId:v98];

            v95 = v96;
            goto LABEL_129;
          }

          if (v74 == 1)
          {
            v129 = 1;
            goto LABEL_135;
          }

          if (v74 != 2)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_1002BBBF4(v151, v71 >> 3, v152);
            }

            goto LABEL_135;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v156 = 2;
            v73 = "Keep-walking value shouldn't be here: %i";
            goto LABEL_103;
          }
        }

LABEL_135:
        if (v65 == ++v69)
        {
          v65 = [v18 countByEnumeratingWithState:&v142 objects:v157 count:16];
          if (!v65)
          {
            v140 = v66;

            responseCopy = v109;
            urlCopy = v111;
            scheme = v112;
            v56 = v127;
            if (v129)
            {
              goto LABEL_163;
            }

            goto LABEL_140;
          }

          goto LABEL_85;
        }
      }
    }

    if (![v112 isEqualToString:@"app"] || (objc_msgSend(urlCopy, "query"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "length"), v26, !v27))
    {
      value6 = 0;
      value4 = 0;
      value3 = 0;
      value2 = 0;
      v114 = 0;
      LOBYTE(v124) = 0;
LABEL_61:
      v150 = 1;
      while (1)
      {
        v45 = [v21 lastIndexOf:46];
        if ((v45 & 0x80000000) != 0)
        {
          break;
        }

        v46 = [v21 substring:0 endIndex:v45];

        if (![v46 length])
        {
          v21 = v46;
          break;
        }

        v47 = [treasureMap objectsForKey:v46 intoSet:v18 keepWalkingOut:0];

        v21 = v46;
        v18 = v47;
        if ([v47 count])
        {
          v21 = v46;
          v18 = v47;
          break;
        }
      }

      v20 = v121;
      goto LABEL_68;
    }

    v108 = responseCopy;
    v110 = urlCopy;
    v130 = visitorCopy;
    v132 = engineCopy;
    [NSURLComponents componentsWithURL:urlCopy resolvingAgainstBaseURL:0];
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v141 = v149 = 0u;
    queryItems = [v141 queryItems];
    v29 = [queryItems countByEnumeratingWithState:&v146 objects:v158 count:16];
    if (!v29)
    {
      value6 = 0;
      value4 = 0;
      value3 = 0;
      value2 = 0;
      v114 = 0;
      LOBYTE(v124) = 0;
      goto LABEL_60;
    }

    v30 = v29;
    value6 = 0;
    value4 = 0;
    value3 = 0;
    value2 = 0;
    v114 = 0;
    v124 = 0;
    v31 = *v147;
LABEL_24:
    v32 = 0;
    while (1)
    {
      v33 = v18;
      if (*v147 != v31)
      {
        objc_enumerationMutation(queryItems);
      }

      v34 = *(*(&v146 + 1) + 8 * v32);
      value = [v34 value];
      v36 = [value length];

      if (v36)
      {
        break;
      }

      v18 = v33;
LABEL_50:
      if (v30 == ++v32)
      {
        v44 = [queryItems countByEnumeratingWithState:&v146 objects:v158 count:16];
        v30 = v44;
        if (!v44)
        {
LABEL_60:

          responseCopy = v108;
          urlCopy = v110;
          visitorCopy = v130;
          engineCopy = v132;
          goto LABEL_61;
        }

        goto LABEL_24;
      }
    }

    name = [v34 name];
    if ([name isEqualToString:@"level1.id"])
    {
      v38 = value2 == 0;
    }

    else
    {
      v38 = 0;
    }

    if (v38)
    {
      value2 = [v34 value];
      v124 = 1;
      v18 = v33;
LABEL_49:

      goto LABEL_50;
    }

    if ([name isEqualToString:@"level1.title"])
    {
      v39 = value3 == 0;
    }

    else
    {
      v39 = 0;
    }

    v18 = v33;
    if (v39)
    {
      value3 = [v34 value];
    }

    else
    {
      if ([name isEqualToString:@"level2.id"])
      {
        v40 = value4 == 0;
      }

      else
      {
        v40 = 0;
      }

      if (v40)
      {
        value4 = [v34 value];
      }

      else
      {
        if (![name isEqualToString:@"level2.title"] || value6)
        {
          if ([name isEqualToString:@"override"])
          {
            value5 = [v34 value];
            v43 = [value5 isEqualToString:@"all"];

            v18 = v33;
          }

          else
          {
            v43 = 0;
          }

          v114 |= v43;
          v41 = v43 | v124;
          goto LABEL_48;
        }

        value6 = [v34 value];
      }
    }

    v41 = 1;
LABEL_48:
    v124 = v41;
    goto LABEL_49;
  }

LABEL_166:
}

+ (id)stripHostToDomain:(id)domain level:(unint64_t)level
{
  domainCopy = domain;
  v6 = [domainCopy length];
  if (!level)
  {
LABEL_5:
    v8 = [domainCopy substringFromIndex:(v6 + 1)];
LABEL_6:
    v9 = v8;
    goto LABEL_7;
  }

  v7 = 0;
  while (1)
  {
    v6 = [domainCopy lastIndexOf:46 fromIndex:v6 - 1];
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    if (level == ++v7)
    {
      goto LABEL_5;
    }
  }

  if (v7 >= level - 1)
  {
    v8 = domainCopy;
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    levelCopy = level;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unexpected hostname for level %lu", &v11, 0xCu);
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)hostToCapitalizedName:(id)name
{
  nameCopy = name;
  if (![nameCopy length])
  {
    goto LABEL_6;
  }

  v4 = [nameCopy indexOf:46];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = [nameCopy substring:0 endIndex:v4];

    nameCopy = v5;
  }

  if ([nameCopy length])
  {
    capitalizedString = [nameCopy capitalizedString];
  }

  else
  {
LABEL_6:
    capitalizedString = 0;
  }

  return capitalizedString;
}

- (void)_tokenizeText
{
  text = [(CKContextRequest *)self->_request text];
  languageTag = [(CKContextResponse *)self->_response languageTag];
  v5 = [LanguageUtilities simplifyTextForSearch:text withLanguage:languageTag];
  v6 = [v5 length];
  if (v5 && [v5 length] >= 3)
  {
    v7 = [(OrgApacheLuceneAnalysisAnalyzer *)self->_analyzer tokenStreamWithNSString:@"text" withNSString:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_();
  v9 = [v7 addAttributeWithIOSClass:v8];

  v10 = OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_();
  v11 = [v7 addAttributeWithIOSClass:v10];

  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x3032000000;
  v90[3] = sub_1002AA110;
  v90[4] = sub_1002AA120;
  v91 = [[BigramKey alloc] initWithTokenA:0 tokenB:0];
  v87 = 0;
  v88[0] = &v87;
  v88[1] = 0x2020000000;
  v89 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v78 = 0;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v76 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  luceneIgnoreAfterPosition = [(ContextConfiguration *)self->_config luceneIgnoreAfterPosition];
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  v66 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  v64 = 0;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  v62 = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v60 = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v58 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v56 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = sub_1002AA110;
  v53[4] = sub_1002AA120;
  v54 = 0;
  luceneMaxUniqueTotalTokens = [(ContextConfiguration *)self->_config luceneMaxUniqueTotalTokens];
  luceneMaxUniqueNotSkippedTokens = [(ContextConfiguration *)self->_config luceneMaxUniqueNotSkippedTokens];
  v24 = v5;
  luceneMaxUniquePrimaryTokens = [(ContextConfiguration *)self->_config luceneMaxUniquePrimaryTokens];
  v14 = text;
  bigramMaxEnclosedStopwords = [(ContextConfiguration *)self->_config bigramMaxEnclosedStopwords];
  v21 = languageTag;
  v22 = v14;
  bigramMaxOffsetDelta = [(ContextConfiguration *)self->_config bigramMaxOffsetDelta];
  v17 = bigramMaxEnclosedStopwords + 1;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1002B1A78;
  v26[3] = &unk_100484078;
  v31 = &v83;
  v20 = v9;
  v27 = v20;
  selfCopy = self;
  v32 = &v79;
  v33 = &v71;
  v34 = &v67;
  v35 = v61;
  v36 = v63;
  v37 = v59;
  v38 = v57;
  v39 = v65;
  v18 = v11;
  v29 = v18;
  v40 = &v87;
  v46 = luceneIgnoreAfterPosition;
  v41 = v75;
  v19 = v24;
  v52 = v6 - 1;
  v30 = v19;
  v42 = v53;
  v43 = v55;
  v44 = v90;
  v47 = v17;
  v48 = bigramMaxOffsetDelta;
  v45 = v77;
  v49 = luceneMaxUniquePrimaryTokens;
  v50 = luceneMaxUniqueNotSkippedTokens;
  v51 = luceneMaxUniqueTotalTokens;
  sub_1002B198C(v7, v26);
  if (self->_debug)
  {
    [(CKContextResponse *)self->_response addDebug:@"tokenCount:%i, uniqueTokenCount:%i, uniqueTokenRatio:%f", v84[6], v80[6], v80[6] / v84[6]];
    [(CKContextResponse *)self->_response addDebug:@"skippedTokenCount:%i, skippedUniqueTokenCount:%i, skippedUniqueTokenRatio:%f, skippedRatio:%f, skippedUniqueRatio:%f", v72[6], v68[6], (v68[6] / v72[6]), (v72[6] / v84[6]), (v68[6] / v80[6])];
  }

  if (self->_debugLogEnabled && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1002BBC40(v88);
  }

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v59, 8);
  _Block_object_dispose(v61, 8);
  _Block_object_dispose(v63, 8);
  _Block_object_dispose(v65, 8);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(v75, 8);
  _Block_object_dispose(v77, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(v90, 8);
}

- (id)inspectTitle:(id)title titleForTokenization:(id)tokenization conditionals:(id)conditionals
{
  titleCopy = title;
  tokenizationCopy = tokenization;
  conditionalsCopy = conditionals;
  v8 = objc_opt_new();
  v28 = titleCopy;
  if (![titleCopy length])
  {
    v10 = v8;
    goto LABEL_40;
  }

  v27 = v8;
  [v8 setTitle:titleCopy];
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_1002AA110;
  v66 = sub_1002AA120;
  v67 = objc_alloc_init(NSMutableSet);
  [v8 setImportantTokens:v63[5]];
  if (!tokenizationCopy)
  {
    tokenizationCopy = titleCopy;
  }

  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_1002AA110;
  v60 = sub_1002AA120;
  v61 = objc_opt_new();
  [v8 setTokenString:v57[5]];
  if (tokenizationCopy)
  {
    v9 = [(OrgApacheLuceneAnalysisAnalyzer *)self->_analyzer tokenStreamWithNSString:@"text" withNSString:?];
  }

  else
  {
    v9 = 0;
  }

  v11 = OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_();
  v12 = [v9 addAttributeWithIOSClass:v11];

  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = sub_1002AA110;
  v54[4] = sub_1002AA120;
  v55 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = sub_1002AA110;
  v52[4] = sub_1002AA120;
  v53 = [[BigramKey alloc] initWithTokenA:0 tokenB:0];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1002B2E2C;
  v44[3] = &unk_1004840A0;
  v13 = v12;
  v45 = v13;
  selfCopy = self;
  v48 = &v56;
  v14 = v27;
  v47 = v14;
  v49 = &v62;
  v50 = v54;
  v51 = v52;
  sub_1002B198C(v9, v44);
  if (!conditionalsCopy || ![conditionalsCopy count])
  {
    goto LABEL_38;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = conditionalsCopy;
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v68 count:16];
  if (!v16)
  {

    goto LABEL_38;
  }

  v17 = *v41;
  v18 = 1;
  while (2)
  {
    for (i = 0; i != v16; i = i + 1)
    {
      if (*v41 != v17)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v40 + 1) + 8 * i);
      v21 = [v20 characterAtIndex:1];
      if (v21 <= 61)
      {
        if (v21 == 33)
        {
          if ([v20 length] < 2)
          {
            goto LABEL_35;
          }

          v22 = [v20 substringFromIndex:2];
          if (v22)
          {
            v23 = [(OrgApacheLuceneAnalysisAnalyzer *)self->_analyzer tokenStreamWithNSString:@"text" withNSString:v22];
          }

          else
          {
            v23 = 0;
          }

          v24 = OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_();
          v25 = [v23 addAttributeWithIOSClass:v24];

          v36 = 0;
          v37 = &v36;
          v38 = 0x2020000000;
          v39 = 0;
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_1002B32A4;
          v32[3] = &unk_1004840C8;
          v13 = v25;
          v33 = v13;
          selfCopy2 = self;
          v35 = &v36;
          sub_1002B198C(v23, v32);
          LOBYTE(v25) = *(v37 + 24);

          v18 = v25 ^ 1;
          _Block_object_dispose(&v36, 8);
          v9 = v23;
        }

        else
        {
          if (v21 != 61 || [v20 length] < 2)
          {
LABEL_35:

LABEL_36:
            v10 = 0;
            goto LABEL_39;
          }

          v22 = [v20 substringFromIndex:2];
          [v14 setTopicIdOverride:v22];
        }

        goto LABEL_30;
      }

      if (v21 == 62)
      {
        if ([v20 length] < 2)
        {
          goto LABEL_35;
        }

        v22 = [v20 substringFromIndex:2];
        [v14 setMinPrefix:{objc_msgSend(v22, "integerValue")}];
LABEL_30:

        continue;
      }

      if (v21 != 118)
      {
        goto LABEL_35;
      }

      [v14 setForceBottomRank:1];
    }

    v16 = [v15 countByEnumeratingWithState:&v40 objects:v68 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_38:
  v10 = v14;
LABEL_39:

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(v54, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);

  v8 = v27;
LABEL_40:

  return v10;
}

- (id)_readTermInfo:(id)info tokenTypeOut:(unint64_t *)out weightOut:(float *)weightOut docIdOut:(int *)idOut
{
  infoCopy = info;
  textTermsEnum = [(LuceneContextRequest *)self textTermsEnum];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = -1082130432;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1002B3C5C;
  v52[3] = &unk_1004840F0;
  v52[4] = &v53;
  v8 = objc_retainBlock(v52);
  v50 = 1;
  v9 = 3;
  *&v10 = 67109378;
  v45 = v10;
LABEL_2:
  v11 = [textTermsEnum seekCeilWithOrgApacheLuceneUtilBytesRef:{infoCopy, v45}];
  ordinal = [v11 ordinal];

  if (ordinal == 2)
  {
    term = [textTermsEnum term];
    v14 = term;
    if (!term)
    {
      goto LABEL_72;
    }

    v15 = *(term + 20);
    v16 = infoCopy[5];
    if (v15 <= v16)
    {
      goto LABEL_72;
    }

    v17 = *(term + 8) + 12 + *(term + 16);
    v18 = *(v17 + v16);
    if ((v18 - 65) > 0x19 || memcmp((*(infoCopy + 1) + 12 + infoCopy[4]), (*(term + 8) + 12 + *(term + 16)), infoCopy[5]))
    {
      goto LABEL_72;
    }

    v49 = v16 + 1;
    LODWORD(v19) = v16 + 1;
    while (1)
    {
      v20 = 0;
      switch(v18)
      {
        case 'A':
          v20 = 0;
          if (*(v54 + 6) < 0.0)
          {
            *(v54 + 6) = 1058977874;
          }

          v9 = 10;
          goto LABEL_46;
        case 'B':
          v20 = 0;
          if (*(v54 + 6) < 0.0)
          {
            *(v54 + 6) = 1058977874;
          }

          v9 = 11;
          goto LABEL_46;
        case 'C':
        case 'K':
        case 'Q':
          goto LABEL_46;
        case 'D':
          if (v19 >= v15)
          {
            goto LABEL_43;
          }

          v21 = 0;
          v22 = 0;
          v19 = v19;
          do
          {
            v23 = *(v17 + v19);
            v24 = v23 - 48;
            if ((v23 - 48) >= 0xA)
            {
              if ((v23 - 97) > 0x19)
              {
                break;
              }

              v24 = v23 - 87;
            }

            v22 = 36 * v22 + v24;
            if (++v19 >= v15)
            {
              break;
            }
          }

          while (v21++ < 5);
          v20 = 0;
          if (idOut && v22 <= 0x7FFFFFFFFFFFFFFELL)
          {
            if (self->_debugLogEnabled)
            {
              v26 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                utf8ToString = [(OrgApacheLuceneUtilBytesRef *)v14 utf8ToString];
                *buf = v45;
                v58 = v22;
                v59 = 2112;
                v60 = utf8ToString;
                _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Found docId reference to %i in %@", buf, 0x12u);
              }
            }

            v20 = 0;
            *idOut = v22;
          }

LABEL_46:
          if (v19 >= v15)
          {
LABEL_54:
            if (!v20)
            {
LABEL_55:
              v30 = 0;
              v31 = v14;
              goto LABEL_56;
            }

LABEL_72:

LABEL_73:
            v9 = v9 != 0;
            if (infoCopy)
            {
              [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool reclaimSpaceWithOrgApacheLuceneUtilBytesRef:infoCopy];
            }

            v32 = 0;
            goto LABEL_76;
          }

          v18 = *(v17 + v19);
          LODWORD(v19) = v19 + 1;
          if ((v18 - 65) >= 0x1A)
          {
            goto LABEL_55;
          }

          break;
        case 'G':
          v20 = 0;
          if (*(v54 + 6) < 0.0)
          {
            *(v54 + 6) = 1058977874;
          }

          v9 = 8;
          goto LABEL_46;
        case 'I':
          if (*(v54 + 6) >= 0.0)
          {
LABEL_43:
            v20 = 0;
          }

          else
          {
            v20 = 0;
            *(v54 + 6) = 1058977874;
            v9 = 7;
          }

          goto LABEL_46;
        case 'L':
          (v8[2])(v8);
          v20 = 0;
          v9 = 5;
          goto LABEL_46;
        case 'N':
          (v8[2])(v8);
          v20 = 0;
          v9 = 4;
          goto LABEL_46;
        case 'S':
          v9 = 0;
          *(v54 + 6) = 0;
          goto LABEL_72;
        case 'T':
          (v8[2])(v8);
          v20 = 0;
          v9 = 2;
          goto LABEL_46;
        case 'U':
          (v8[2])(v8);
          v20 = 0;
          v9 = 6;
          goto LABEL_46;
        case 'W':
          v20 = 0;
          if (*(v54 + 6) < 0.0)
          {
            *(v54 + 6) = 1058977874;
          }

          v9 = 9;
          goto LABEL_46;
        case 'X':
          v20 = 0;
          if (*(v54 + 6) < 0.0)
          {
            *(v54 + 6) = 1058977874;
          }

          v9 = 12;
          goto LABEL_46;
        case 'Y':
          if ((v50 & 1) == 0)
          {
            if (self->_debugLogEnabled)
            {
              v42 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                utf8ToString2 = [infoCopy utf8ToString];
                sub_1002BBCC8(utf8ToString2, buf, v44);
              }
            }

            goto LABEL_72;
          }

          v34 = infoCopy[5];
          v35 = v34 + 2;
          if (v15 < v34 + 2 || memchr((v17 + v35), 89, v15 - v35))
          {
            goto LABEL_72;
          }

          [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool reclaimSpaceWithOrgApacheLuceneUtilBytesRef:infoCopy];
          v31 = [[OrgApacheLuceneUtilBytesRef alloc] initWithByteArray:v14->bytes_ withInt:(v14->offset_ + v35) withInt:(v14->length_ - v35)];

          v36 = [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool tryAppendWithOrgApacheLuceneUtilBytesRef:v31];

          v30 = 1;
          infoCopy = v36;
LABEL_56:
          [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool reclaimSpaceWithOrgApacheLuceneUtilBytesRef:infoCopy];
          v32 = [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool tryAppendWithOrgApacheLuceneUtilBytesRef:v31];

          v33 = v30 & v50;
          infoCopy = v32;
          v50 = 0;
          if ((v33 & 1) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_2;
        default:
          if (self->_debugLogEnabled)
          {
            v27 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              utf8ToString3 = [(OrgApacheLuceneUtilBytesRef *)v14 utf8ToString];
              *buf = v45;
              v58 = v18;
              v59 = 2112;
              v60 = utf8ToString3;
              _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Found unknown modifier %c in %@", buf, 0x12u);
            }
          }

          v20 = v19 == v49;
          if (v19 == v49)
          {
            goto LABEL_54;
          }

          goto LABEL_46;
      }
    }
  }

  if (ordinal != 1)
  {
    goto LABEL_73;
  }

  (v8[2])(v8);
  v32 = infoCopy;
LABEL_64:
  v37 = *(v54 + 6);
  if (v37 < 0.59)
  {
    v9 = 1;
  }

  if (v37 < 0.0)
  {
    if (self->_debugLogEnabled)
    {
      v14 = &_os_log_default;
      v38 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        utf8ToString4 = [v32 utf8ToString];
        sub_1002BBD1C(utf8ToString4, buf, v40);
      }

      infoCopy = v32;
      goto LABEL_72;
    }

    infoCopy = v32;
    goto LABEL_73;
  }

LABEL_76:
  if (out)
  {
    *out = v9;
  }

  if (weightOut)
  {
    *weightOut = *(v54 + 6);
  }

  _Block_object_dispose(&v53, 8);

  return v32;
}

- (id)_tokenInfoForToken:(id)token
{
  tokenCopy = token;
  if (![tokenCopy length])
  {
    v13 = qword_100557280;
    goto LABEL_41;
  }

  v30 = -1;
  v31 = -1.0;
  v29 = 3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool tryAppendWithJavaLangCharSequence:tokenCopy];
  if (!self->_useBloomFilter && !self->_minHashPriorityQueue)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v7 = [(LuceneContextRequest *)self _computeHashesWithSeed:1 forBytesRef:v6 reuse:self->_hashesTokenReuse, v29];
  objc_storeStrong(&self->_hashesTokenReuse, v7);
  hashes = [v7 hashes];
  minHashPriorityQueue = self->_minHashPriorityQueue;
  v10 = [NSNumber numberWithInt:*hashes];
  v11 = [(OrgApacheLuceneUtilPriorityQueue *)minHashPriorityQueue insertWithOverflowWithId:v10];

  if (!self->_useBloomFilter || ([(_PASBloomFilter *)self->_bloomFilter getWithHashes:v7]& 1) != 0)
  {
    v12 = v7;
    goto LABEL_13;
  }

  v12 = [(LuceneContextRequest *)self _computeHashesWithSeed:6 forBytesRef:v6 reuse:self->_hashesTokenReuse];

  objc_storeStrong(&self->_hashesTokenReuse, v12);
  if ([(_PASBloomFilter *)self->_bloomFilter getWithHashes:v12])
  {
    [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool reclaimSpaceWithOrgApacheLuceneUtilBytesRef:v6];
    goto LABEL_31;
  }

  if ([tokenCopy length] >= 3)
  {
LABEL_13:
    WeakRetained = objc_loadWeakRetained(&self->_engine);
    wordlist = [WeakRetained wordlist];

    if (!wordlist)
    {
      goto LABEL_19;
    }

    v16 = objc_loadWeakRetained(&self->_engine);
    wordlist2 = [v16 wordlist];
    words = [wordlist2 words];
    v19 = [words objectForKeyedSubscript:tokenCopy];

    if (!v19)
    {
LABEL_18:

LABEL_19:
      v21 = [(LuceneContextRequest *)self _readTermInfo:v6 tokenTypeOut:&v29 weightOut:&v31 docIdOut:&v30];

      if (v21)
      {
        if (v21[5])
        {
          objc_autoreleasePoolPop(v5);
          if (v29 != 3)
          {
            goto LABEL_34;
          }

          *&v22 = v31;
          if (v31 >= 0.65)
          {
            if ([tokenCopy length] >= self->_minTokenLengthPrimary)
            {
              goto LABEL_34;
            }

            *&v22 = v31;
          }

          if (*&v22 < 0.0)
          {
            v13 = qword_100557280;
LABEL_39:

            goto LABEL_40;
          }

          v29 = 10;
          v31 = 0.62;
LABEL_34:
          if (self->_debug && self->_debugLogEnabled && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_1002BBD70(&v29);
          }

          v24 = [[OrgApacheLuceneIndexTerm alloc] initWithNSString:@"text" withOrgApacheLuceneUtilBytesRef:v21];
          v25 = [TokenInfo alloc];
          v26 = [v12 copy];
          *&v27 = v31;
          v13 = [(TokenInfo *)v25 initWithToken:tokenCopy withHashes:v26 term:v24 type:v29 weight:v30 docId:v27];

          goto LABEL_39;
        }

        v6 = v21;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_29;
    }

    intValue = [v19 intValue];
    if (intValue != -1)
    {
      if (!intValue)
      {
        v29 = 10;
        v31 = 0.62;
      }

      goto LABEL_18;
    }

    v31 = 0.0;

LABEL_31:
    v23 = &qword_100557288;
    goto LABEL_32;
  }

  [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool reclaimSpaceWithOrgApacheLuceneUtilBytesRef:v6];
LABEL_29:

  v23 = &qword_100557280;
LABEL_32:
  v13 = *v23;
  objc_autoreleasePoolPop(v5);
LABEL_40:

LABEL_41:

  return v13;
}

- (id)_lookupBigramTermForTokenA:(id)a tokenB:(id)b tokenTypeOut:(unint64_t *)out docIdOut:(int *)idOut
{
  bytesRefPool = self->_bytesRefPool;
  bCopy = b;
  token = [a token];
  token2 = [bCopy token];

  v14 = [(ComAppleContextkitUtilBytesRefPool *)bytesRefPool tryAppendWithJavaLangCharSequence:token withChar:95 withJavaLangCharSequence:token2];

  v15 = [(LuceneContextRequest *)self _readTermInfo:v14 tokenTypeOut:out weightOut:0 docIdOut:idOut];

  if (!v15)
  {
    goto LABEL_4;
  }

  if (*out <= 1)
  {
    [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool reclaimSpaceWithOrgApacheLuceneUtilBytesRef:v15];
LABEL_4:
    v16 = 0;
    goto LABEL_6;
  }

  v16 = [[OrgApacheLuceneIndexTerm alloc] initWithNSString:@"text" withOrgApacheLuceneUtilBytesRef:v15];
LABEL_6:

  return v16;
}

- (BOOL)_isIntermediateNameBigramCandidate:(id)candidate tokenB:(id)b bothStartUppercase:(BOOL)uppercase
{
  candidateCopy = candidate;
  bCopy = b;
  v9 = candidateCopy != bCopy;
  if (candidateCopy != bCopy && [candidateCopy count] <= 3 && objc_msgSend(bCopy, "count") <= 3 && objc_msgSend(candidateCopy, "startsQuotedCount") && objc_msgSend(bCopy, "endsQuotedCount"))
  {
    v9 = 1;
  }

  else if (candidateCopy[1] != 8 && (![TokenInfo isSurnameType:?]|| !uppercase && ![TokenInfo isPrimaryType:candidateCopy[1]]) || ![TokenInfo isSurnameType:bCopy[1]]|| !uppercase && ![TokenInfo isPrimaryType:bCopy[1]])
  {
    v9 = 0;
  }

  return v9;
}

- (id)_constructQuery
{
  v127 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  if (self->_debug)
  {
    v138 = objc_opt_new();
    v137 = objc_opt_new();
  }

  else
  {
    v137 = 0;
    v138 = 0;
  }

  v3 = objc_opt_new();
  [v3 setMinimumNumberShouldMatchWithInt:2];
  v130 = v3;
  clauses = [v3 clauses];
  v4 = objc_opt_new();
  [v4 setMinimumNumberShouldMatchWithInt:0];
  v129 = v4;
  clauses2 = [v4 clauses];
  luceneForceSecondaryAfterPosition = [(ContextConfiguration *)self->_config luceneForceSecondaryAfterPosition];
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v5 = self->_tokenInfosSequence;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v152 objects:v157 count:16];
  selfCopy = self;
  if (!v6)
  {
    v136 = 0;
    v139 = 0;
    goto LABEL_53;
  }

  v7 = v6;
  v145 = 0;
  v136 = 0;
  v139 = 0;
  v8 = *v153;
  v140 = v5;
  v142 = *v153;
  while (2)
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v153 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v152 + 1) + 8 * i);
      if ([v10 valid])
      {
        v11 = v10[1];
        if (v11 > 0xD)
        {
          goto LABEL_15;
        }

        if (((1 << v11) & 0x803) != 0)
        {
          continue;
        }

        if (((1 << v11) & 0x3000) != 0)
        {
          isPrimary = [v10 isPrimary];
          v13 = 0.0;
          v14 = v145;
LABEL_27:
          v31 = [v10 isTermResultWithPrimary:isPrimary & (v14 ^ 1) config:self->_config];
          if ((v31 & 0x8000000000000000) == 0)
          {
            v32 = [(LuceneContextRequest *)self _resultForTokenInfo:v10 minPrefix:v31];
            v33 = v32;
            if (v32)
            {
              v34 = v14;
              docId = [v32 docId];

              if (docId)
              {
                v36 = [(NSMutableArray *)self->_termResultsWithDocument count];
                v37 = v36 >= [(ContextConfiguration *)self->_config luceneMaxTermResultsWithDocument];
                v14 = v34;
                if (!v37)
                {
                  [(NSMutableArray *)self->_termResultsWithDocument addObject:v33];
                }
              }

              else
              {
                v38 = [(NSMutableArray *)self->_termResults count];
                v37 = v38 >= [(ContextConfiguration *)self->_config luceneMaxTermResults];
                v14 = v34;
                if (!v37)
                {
                  [(NSMutableArray *)self->_termResults addObject:v33];
                  if (v11 == 5 || v11 == 3)
                  {
                    weakKeywordTermResults = self->_weakKeywordTermResults;
                    token = [v10 token];
                    v42 = weakKeywordTermResults;
                    v14 = v34;
                    [(NSMutableDictionary *)v42 setObject:v33 forKey:token];

                    self = selfCopy;
                  }
                }
              }
            }
          }

          v145 = v14;
          if (self->_debug)
          {
            v43 = @"+!";
            if (v14)
            {
              v43 = @"+?";
            }

            v44 = v138;
            if (isPrimary)
            {
              v45 = v43;
            }

            else
            {
              v44 = v137;
              v45 = @" ?";
            }

            v46 = v44;
            [v10 weight];
            v48 = v47;
            token2 = [v10 token];
            v50 = [v10 count];
            firstOccurence = [v10 firstOccurence];
            firstOccurenceUnique = [v10 firstOccurenceUnique];
            term = [v10 term];
            text = [term text];
            v125 = firstOccurence;
            self = selfCopy;
            [v46 appendFormat:@"%@\t%f\t%f\t%@\n%4u\t%8u\t%8u\t%@\n", v45, *&v48, *&v13, token2, v50, v125, firstOccurenceUnique, text];

            v5 = v140;
          }

          v8 = v142;
          continue;
        }

        if (v11 != 9)
        {
LABEL_15:
          [v10 weight];
          if (v15 <= 0.0)
          {
            continue;
          }
        }

        isPrimary = [v10 isPrimary];
        v16 = [ComAppleProactiveLuceneScoreInterceptTermQuery alloc];
        term2 = [v10 term];
        selfCopy2 = self;
        v19 = term2;
        v20 = 128;
        if (isPrimary)
        {
          v20 = 112;
        }

        v21 = [(ComAppleProactiveLuceneScoreInterceptTermQuery *)v16 initWithOrgApacheLuceneIndexTerm:term2 withComAppleProactiveLuceneScoreInterceptTarget:*(&selfCopy2->super.isa + v20)];

        [(ComAppleProactiveLuceneScoreInterceptTermQuery *)v21 setUserObjectWithId:v10];
        v22 = [v10 count];
        v23 = v22 + v22;
        [v10 weight];
        v25 = v23 * ((v24 + 1.0) * (v24 + 1.0));
        *&v26 = v25;
        [(OrgApacheLuceneSearchQuery *)v21 setBoostWithFloat:v26];
        v27 = [OrgApacheLuceneSearchBooleanClause alloc];
        v28 = [(OrgApacheLuceneSearchBooleanClause *)v27 initWithOrgApacheLuceneSearchQuery:v21 withOrgApacheLuceneSearchBooleanClause_OccurEnum:qword_100557250];
        v29 = v145;
        if (((isPrimary ^ 1 | v145) & 1) == 0)
        {
          if (v139 > 63)
          {
            v14 = 1;
            goto LABEL_23;
          }

          v29 = luceneForceSecondaryAfterPosition <= [v10 firstOccurence];
        }

        v14 = v29;
        if (((isPrimary ^ 1 | v29) & 1) == 0)
        {
          v14 = 0;
          ++v139;
          v30 = clauses;
          self = selfCopy;
LABEL_26:
          [v30 addWithId:v28];

          v13 = v25;
          v5 = v140;
          goto LABEL_27;
        }

LABEL_23:
        self = selfCopy;
        if (v136 > 255)
        {

          v5 = v140;
          goto LABEL_53;
        }

        ++v136;
        v30 = clauses2;
        goto LABEL_26;
      }
    }

    v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v152 objects:v157 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_53:

  [(NSMutableArray *)self->_tokenInfosSequence removeAllObjects];
  if (v139 >= 64 && v136 > 255)
  {
    v55 = 0;
    goto LABEL_131;
  }

  v128 = objc_opt_new();
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  obj = self->_bigramInfosSequence;
  v143 = [(NSMutableArray *)obj countByEnumeratingWithState:&v148 objects:v156 count:16];
  if (!v143)
  {
    goto LABEL_130;
  }

  v56 = 0;
  v141 = *v149;
  while (2)
  {
    v57 = 0;
    while (2)
    {
      if (*v149 != v141)
      {
        objc_enumerationMutation(obj);
      }

      v58 = *(*(&v148 + 1) + 8 * v57);
      v59 = v58[1];
      v147 = v59;
      if (v59 <= 5)
      {
        if (!v59)
        {
          goto LABEL_115;
        }

        if (v59 == 1)
        {
          goto LABEL_69;
        }

        goto LABEL_66;
      }

      if ((v59 - 6) < 2)
      {
        goto LABEL_63;
      }

      if (v59 != 13)
      {
LABEL_66:
        [v58 weight];
        if (v61 > 0.0)
        {
LABEL_63:
          v60 = 1;
          goto LABEL_70;
        }

        goto LABEL_115;
      }

LABEL_69:
      v60 = 0;
LABEL_70:
      LOBYTE(v62) = [v58 isPrimary];
      term3 = [v58 term];
      text2 = [term3 text];

      v64 = 0.0;
      if (!v60)
      {
        goto LABEL_91;
      }

      [v58 adjustCounts];
      term4 = [v58 term];
      if (!term4)
      {
        tokenA = [v58 tokenA];
        tokenB = [v58 tokenB];
        v66 = [(LuceneContextRequest *)self _lookupBigramTermForTokenA:tokenA tokenB:tokenB tokenTypeOut:&v147 docIdOut:0];

        if (!v66)
        {
LABEL_113:
          v108 = text2;
          goto LABEL_114;
        }

        text3 = [v66 text];

        text2 = text3;
        if (v62)
        {
          goto LABEL_73;
        }

LABEL_78:
        v67 = [ComAppleProactiveLuceneScoreInterceptTermQuery alloc];
        v62 = 0;
        v68 = 128;
        goto LABEL_79;
      }

      v66 = term4;
      if ((v62 & 1) == 0)
      {
        goto LABEL_78;
      }

LABEL_73:
      v62 = [TokenInfo isPrimaryType:v147];
      v67 = [ComAppleProactiveLuceneScoreInterceptTermQuery alloc];
      v68 = 128;
      if (v62)
      {
        v68 = 120;
      }

LABEL_79:
      v72 = [(ComAppleProactiveLuceneScoreInterceptTermQuery *)v67 initWithOrgApacheLuceneIndexTerm:v66 withComAppleProactiveLuceneScoreInterceptTarget:*(&self->super.isa + v68)];
      [(ComAppleProactiveLuceneScoreInterceptTermQuery *)v72 setUserObjectWithId:v58];
      v73 = v72;
      v64 = [v58 count];
      v75 = v56;
      if (v62)
      {
        [v58 weight];
        v64 = ((*&v74 + 1.0) * (*&v74 + 1.0)) * v64;
      }

      *&v74 = v64;
      [(OrgApacheLuceneSearchQuery *)v73 setBoostWithFloat:v74];
      v76 = [OrgApacheLuceneSearchBooleanClause alloc];
      v77 = [(OrgApacheLuceneSearchBooleanClause *)v76 initWithOrgApacheLuceneSearchQuery:v73 withOrgApacheLuceneSearchBooleanClause_OccurEnum:qword_100557250];
      if ((v62 ^ 1 | v56))
      {
LABEL_82:
        v56 = v75;
        if (!(v62 ^ 1 | v75))
        {
          v56 = 0;
          ++v139;
          v78 = clauses;
          goto LABEL_88;
        }
      }

      else
      {
        if (v139 <= 63)
        {
          if (luceneForceSecondaryAfterPosition <= [v58 firstOccurence])
          {
            tokenA2 = [v58 tokenA];
            firstOccurence2 = [tokenA2 firstOccurence];

            tokenB2 = [v58 tokenB];
            firstOccurence3 = [tokenB2 firstOccurence];

            if (firstOccurence2 >= firstOccurence3)
            {
              v113 = firstOccurence3;
            }

            else
            {
              v113 = firstOccurence2;
            }

            self = selfCopy;
            v75 = luceneForceSecondaryAfterPosition <= v113;
          }

          else
          {
            v75 = 0;
          }

          goto LABEL_82;
        }

        v56 = 1;
      }

      if (v136 > 255)
      {
        v79 = 0;
      }

      else
      {
        ++v136;
        v78 = clauses2;
LABEL_88:
        [v78 addWithId:v77];
        v79 = 1;
      }

      if (!v79)
      {

        goto LABEL_130;
      }

LABEL_91:
      v80 = [v58 isTermResultWithPrimary:v62 & ~v56 & 1 config:self->_config];
      if ((v80 & 0x8000000000000000) == 0)
      {
        v81 = [(LuceneContextRequest *)self _resultForBigramInfo:v58 minPrefix:v80];
        if (v81)
        {
          v82 = v56;
          tokenA3 = [v58 tokenA];
          token3 = [tokenA3 token];

          tokenB3 = [v58 tokenB];
          token4 = [tokenB3 token];

          docId2 = [v81 docId];

          if (docId2)
          {
            v88 = [(NSMutableArray *)self->_termResultsWithDocument count];
            selfCopy4 = self;
            if (v88 < [(ContextConfiguration *)self->_config luceneMaxTermAndBigramResultsWithDocument])
            {
              termResultsWithDocument = self->_termResultsWithDocument;
              goto LABEL_100;
            }

            goto LABEL_101;
          }

          v91 = [(NSMutableArray *)self->_termResults count];
          selfCopy4 = self;
          if (v91 >= [(ContextConfiguration *)self->_config luceneMaxTermAndBigramResults])
          {
            goto LABEL_101;
          }

          tokenB4 = [v58 tokenB];
          v93 = tokenB4;
          if (tokenB4[1] == 5)
          {

            selfCopy4 = selfCopy;
            goto LABEL_99;
          }

          if ([v128 containsObject:token3])
          {

            selfCopy4 = selfCopy;
            goto LABEL_101;
          }

          v114 = [v128 containsObject:token4];

          selfCopy4 = selfCopy;
          if ((v114 & 1) == 0)
          {
LABEL_99:
            [v128 addObject:token3];
            [v128 addObject:token4];
            termResultsWithDocument = selfCopy4->_termResults;
LABEL_100:
            [(NSMutableArray *)termResultsWithDocument addObject:v81];
          }

LABEL_101:
          v94 = [(NSMutableDictionary *)selfCopy4->_weakKeywordTermResults objectForKey:token3];
          if (v94)
          {
            [(NSMutableDictionary *)selfCopy4->_weakKeywordTermResults removeObjectForKey:token3];
            [(NSMutableArray *)selfCopy4->_termResults removeObject:v94];
          }

          v95 = [(NSMutableDictionary *)selfCopy4->_weakKeywordTermResults objectForKey:token4];

          if (v95)
          {
            [(NSMutableDictionary *)selfCopy4->_weakKeywordTermResults removeObjectForKey:token4];
            [(NSMutableArray *)selfCopy4->_termResults removeObject:v95];
          }

          self = selfCopy4;
          v56 = v82;
        }
      }

      if (!self->_debug)
      {
        goto LABEL_113;
      }

      v96 = @"+!";
      if (v56)
      {
        v96 = @"+?";
      }

      v97 = v138;
      if ((v62 & 1) == 0)
      {
        v97 = v137;
        v96 = @" ?";
      }

      v135 = v96;
      v98 = v97;
      [v58 weight];
      v100 = v99;
      tokenA4 = [v58 tokenA];
      token5 = [tokenA4 token];
      tokenB5 = [v58 tokenB];
      token6 = [tokenB5 token];
      v105 = [v58 count];
      firstOccurence4 = [v58 firstOccurence];
      firstOccurenceUnique2 = [v58 firstOccurenceUnique];
      v108 = text2;
      [v98 appendFormat:@"%@\t%f\t%f\t%@ %@\n%4u\t%8u\t%8u\t%@\n", v135, *&v100, v64, token5, token6, v105, firstOccurence4, firstOccurenceUnique2, text2, context];

      self = selfCopy;
LABEL_114:

LABEL_115:
      if (v143 != ++v57)
      {
        continue;
      }

      break;
    }

    v115 = [(NSMutableArray *)obj countByEnumeratingWithState:&v148 objects:v156 count:16];
    v143 = v115;
    if (v115)
    {
      continue;
    }

    break;
  }

LABEL_130:

  v55 = v139 == 0;
LABEL_131:
  [(NSMutableArray *)self->_bigramInfosSequence removeAllObjects];
  v116 = v127;
  [v127 addWithOrgApacheLuceneSearchQuery:v130 withOrgApacheLuceneSearchBooleanClause_OccurEnum:qword_100557240];
  if (([clauses2 isEmpty] & 1) == 0)
  {
    [v127 addWithOrgApacheLuceneSearchQuery:v129 withOrgApacheLuceneSearchBooleanClause_OccurEnum:qword_100557250];
  }

  if (self->_debug)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1002BBED4(self, v130, v129);
    }

    [(CKContextResponse *)self->_response appendToDebug:v138];
    [(CKContextResponse *)self->_response appendToDebug:v137];
    response = self->_response;
    v118 = [(NSMapTable *)self->_tokenInfos count];
    v119 = [(NSMapTable *)self->_bigramInfos count];
    clauses3 = [v130 clauses];
    v121 = [clauses3 size];
    clauses4 = [v129 clauses];
    -[CKContextResponse addDebug:](response, "addDebug:", @"Tokens: %lu, Phrases: %lu, Primary queries: %lu, Secondary queries: %lu", v118, v119, v121, [clauses4 size]);

    v116 = v127;
  }

  objc_autoreleasePoolPop(context);
  if (v55)
  {
    v123 = 0;
  }

  else
  {
    v123 = v116;
  }

  return v123;
}

- (id)_bestTypeVariantForTokenInfo:(id)info allowingAllCaps:(BOOL)caps
{
  infoCopy = info;
  offsets = [infoCopy offsets];
  v8 = [offsets count];

  if (!v8)
  {
    token = [infoCopy token];
    localizedCapitalizedString = [token localizedCapitalizedString];

    goto LABEL_39;
  }

  capsCopy = caps;
  text = [(CKContextRequest *)self->_request text];
  v9 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  offsets2 = [infoCopy offsets];
  v11 = [offsets2 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v49;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(offsets2);
        }

        rangeValue = [*(*(&v48 + 1) + 8 * i) rangeValue];
        v17 = [text substring:rangeValue endIndex:v16];
        [v9 addObject:v17];
      }

      v12 = [offsets2 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v12);
  }

  v39 = infoCopy;
  token2 = [infoCopy token];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v40 = 0;
    v41 = 0;
    v22 = *v45;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v44 + 1) + 8 * j);
        v25 = [v18 countForObject:v24];
        v26 = [v24 rangeOfCharacterFromSet:qword_100557260];
        v27 = [v24 rangeOfCharacterFromSet:qword_100557268];
        if (v25 > v21)
        {
          v28 = v27;
          v29 = [v24 length] >= 6 && v26 == 0x7FFFFFFFFFFFFFFFLL;
          if (!v29 && v28 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v26 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v31 = v24;

              v21 = v25;
              v41 = v31;
            }

            v32 = v24;

            v40 = v25;
            token2 = v32;
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
    v40 = 0;
    v41 = 0;
  }

  if (v40 && v21 && v21 < v40)
  {
    v35 = v41;
    localizedCapitalizedString2 = v41;
    localizedCapitalizedString = token2;
  }

  else
  {
    v35 = v41;
    localizedCapitalizedString = token2;
    if (v40 && capsCopy)
    {
      goto LABEL_38;
    }

    localizedCapitalizedString2 = [token2 localizedCapitalizedString];
  }

  localizedCapitalizedString = localizedCapitalizedString2;
LABEL_38:

  infoCopy = v39;
LABEL_39:

  return localizedCapitalizedString;
}

- (id)_resultForTokenInfo:(id)info minPrefix:(int64_t)prefix
{
  infoCopy = info;
  selfCopy = self;
  v77 = infoCopy;
  if (![TokenInfo isSurnameType:infoCopy[1]])
  {
    v51 = [infoCopy count];
    if (self->_config->_luceneTermResultMinCount <= v51 - [infoCopy partialNgramCount])
    {
      goto LABEL_43;
    }

    v29 = 0;
    goto LABEL_55;
  }

  if (!self->_config->_luceneTermResultGivenSurnameEnabled)
  {
LABEL_40:
    v29 = 0;
    goto LABEL_55;
  }

  precedingTokens = [infoCopy precedingTokens];
  if (![precedingTokens count])
  {
LABEL_37:
    if (([infoCopy isQuoted] & 1) == 0)
    {
      if (prefix >= 1)
      {

        goto LABEL_40;
      }

      prefix = 1;
    }

    goto LABEL_43;
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v8 = precedingTokens;
  v9 = [v8 countByEnumeratingWithState:&v80 objects:v84 count:16];
  if (!v9)
  {

    goto LABEL_37;
  }

  v10 = v9;
  v73 = precedingTokens;
  prefixCopy = prefix;
  v11 = 0;
  v78 = v8;
  v79 = 0;
  v12 = *v81;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v81 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v80 + 1) + 8 * i);
      v15 = [v8 countForObject:v14];
      nonretainedObjectValue = [v14 nonretainedObjectValue];
      if (nonretainedObjectValue)
      {
        if (v15 >= self->_config->_luceneGivenSurnameMinGivenCount || self->_config->_luceneGivenSurnameEarlyMentionLimit >= [infoCopy firstOccurence])
        {
LABEL_15:
          if (v15 <= v11)
          {
            goto LABEL_19;
          }

          v20 = v79;
          v11 = v15;
          v79 = nonretainedObjectValue;
        }

        else
        {
          v17 = [BigramKey alloc];
          token = [nonretainedObjectValue token];
          token2 = [infoCopy token];
          v20 = [(BigramKey *)v17 initWithTokenA:token tokenB:token2];

          self = selfCopy;
          v21 = [(NSMapTable *)selfCopy->_bigramInfos objectForKey:v20];
          v22 = v21;
          if (v21 && [v21 isPrimary])
          {

            infoCopy = v77;
            v8 = v78;
            goto LABEL_15;
          }

          infoCopy = v77;
        }

        v8 = v78;
      }

LABEL_19:
    }

    v10 = [v8 countByEnumeratingWithState:&v80 objects:v84 count:16];
  }

  while (v10);

  precedingTokens = v73;
  prefix = prefixCopy;
  if (!v79)
  {
    goto LABEL_37;
  }

  v23 = [(LuceneContextRequest *)self _bestTypeVariantForTokenInfo:v79 allowingAllCaps:0];
  v24 = [(LuceneContextRequest *)self _bestTypeVariantForTokenInfo:infoCopy allowingAllCaps:0];
  v25 = infoCopy;
  v26 = [LuceneContextResult alloc];
  v72 = v24;
  v74 = v23;
  v27 = [NSString stringWithFormat:@"%@ %@", v23, v24];
  selfCopy2 = self;
  v29 = [(LuceneContextResult *)v26 initWithText:v27];

  term = [(BigramKey *)v79 term];
  text = [term text];
  term2 = [v25 term];
  text2 = [term2 text];
  v34 = [NSString stringWithFormat:@"%@ %@", text, text2];
  [(LuceneContextResult *)v29 setTerm:v34];

  luceneTermResultUnigramScoreMultiplier = [(ContextConfiguration *)selfCopy2->_config luceneTermResultUnigramScoreMultiplier];
  v36 = powf(([v25 firstOccurenceUnique] + 1), -[ContextConfiguration luceneTermResultFirstOccurrencePowerLawDecay](selfCopy2->_config, "luceneTermResultFirstOccurrencePowerLawDecay")) * luceneTermResultUnigramScoreMultiplier;
  v37 = [(BigramKey *)v79 count];
  [(BigramKey *)v79 weight];
  v39 = ((v38 + 1.0) * (v38 + 1.0)) * v37;
  v40 = [v25 count];
  [v25 weight];
  *&v41 = ((*&v41 + 1.0) * (*&v41 + 1.0)) * v40;
  if (v39 >= *&v41)
  {
    *&v41 = v39;
  }

  *&v41 = v36 * *&v41;
  [(LuceneContextResult *)v29 setLuceneScore:v41];
  if ([(ContextConfiguration *)selfCopy2->_config tagsEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy2->_engine);
    tagsMap = [WeakRetained tagsMap];

    if (tagsMap)
    {
      v44 = [NSSet setWithObject:@"CK_PERSON_GIVEN_SURNAME"];
      [(LuceneContextResult *)v29 setTags:v44];
    }
  }

  if (selfCopy2->_debug)
  {
    if ([(BigramKey *)v79 isPrimary])
    {
      v45 = @"+";
    }

    else
    {
      v45 = @"?";
    }

    term3 = [(BigramKey *)v79 term];
    text3 = [term3 text];
    term4 = [v77 term];
    text4 = [term4 text];
    v50 = [NSString stringWithFormat:@"%@%@ +%@", v45, text3, text4];
    [(LuceneContextResult *)v29 setDebug:v50];
  }

  prefix = prefixCopy;
  if (!v29)
  {
LABEL_43:
    v52 = [LuceneContextResult alloc];
    v53 = [(LuceneContextRequest *)selfCopy _bestTypeVariantForTokenInfo:v77 allowingAllCaps:1];
    v29 = [(LuceneContextResult *)v52 initWithText:v53];

    term5 = [v77 term];
    text5 = [term5 text];
    [(LuceneContextResult *)v29 setTerm:text5];

    luceneTermResultUnigramScoreMultiplier2 = [(ContextConfiguration *)selfCopy->_config luceneTermResultUnigramScoreMultiplier];
    v57 = powf(([v77 firstOccurenceUnique] + 1), -[ContextConfiguration luceneTermResultFirstOccurrencePowerLawDecay](selfCopy->_config, "luceneTermResultFirstOccurrencePowerLawDecay")) * luceneTermResultUnigramScoreMultiplier2;
    v58 = v57 * [v77 count];
    [v77 weight];
    *&v60 = v58 * ((v59 + 1.0) * (v59 + 1.0));
    [(LuceneContextResult *)v29 setLuceneScore:v60];
    if (selfCopy->_debug)
    {
      term6 = [v77 term];
      v62 = qword_1005572A0;

      if (term6 == v62)
      {
        token3 = [v77 token];
        [NSString stringWithFormat:@"?%@", token3];
      }

      else
      {
        token3 = [(LuceneContextResult *)v29 term];
        [NSString stringWithFormat:@"+%@", token3];
      }
      v64 = ;
      [(LuceneContextResult *)v29 setDebug:v64];
    }
  }

  [(LuceneContextResult *)v29 setMinPrefix:prefix];
  infoCopy = v77;
  docId = [v77 docId];
  if ((docId & 0x80000000) == 0)
  {
    v66 = docId;
    v67 = [v77 count];
    v68 = [(ContextConfiguration *)selfCopy->_config minTokenCountToAugment]<= v67;
    infoCopy = v77;
    if (v68)
    {
      [(LuceneContextRequest *)selfCopy _augmentResult:v29 withDocId:v66 checkLanguageRedirect:1];
    }
  }

  if (selfCopy->_debug)
  {
    [(LuceneContextResult *)v29 luceneScore];
    v70 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0 %f T (token result, count:%u, minPrefix:%li, docId:%i)", v69, [v77 count], prefix, objc_msgSend(v77, "docId"));
    [(LuceneContextResult *)v29 setCategory:v70];

    infoCopy = v77;
  }

  [(LuceneContextResult *)v29 setExactMatch:1];
LABEL_55:

  return v29;
}

- (id)_resultForBigramInfo:(id)info minPrefix:(int64_t)prefix
{
  infoCopy = info;
  v7 = infoCopy[1];
  if (![TokenInfo isTopicType:v7])
  {
    goto LABEL_4;
  }

  if (v7 != 3)
  {
    goto LABEL_5;
  }

  v8 = [infoCopy count];
  tokenA = [infoCopy tokenA];
  partialNgramCount = [tokenA partialNgramCount];
  tokenB = [infoCopy tokenB];
  v12 = v8 - (partialNgramCount + [tokenB partialNgramCount]);

  if (v12 >= 2)
  {
LABEL_5:
    tokenA2 = [infoCopy tokenA];
    v15 = [(LuceneContextRequest *)self _bestTypeVariantForTokenInfo:tokenA2 allowingAllCaps:1];

    tokenB2 = [infoCopy tokenB];
    v17 = [(LuceneContextRequest *)self _bestTypeVariantForTokenInfo:tokenB2 allowingAllCaps:1];

    v18 = @"%@ %@";
    if ([LanguageUtilities isChineseJapaneseToken:v15]&& [LanguageUtilities isChineseJapaneseToken:v17])
    {
      v18 = @"%@%@";
    }

    v19 = [NSString stringWithFormat:v18, v15, v17];
    v13 = [[LuceneContextResult alloc] initWithText:v19];
    term = [infoCopy term];
    text = [term text];
    if (text)
    {
      [(LuceneContextResult *)v13 setTerm:text];
    }

    else
    {
      prefixCopy = prefix;
      v22 = v15;
      v23 = v17;
      v24 = v19;
      termSequence = [infoCopy termSequence];
      v26 = [NSString stringWithFormat:@"%@", termSequence];
      [(LuceneContextResult *)v13 setTerm:v26];

      v19 = v24;
      v17 = v23;
      v15 = v22;
      prefix = prefixCopy;
    }

    [(LuceneContextResult *)v13 setMinPrefix:prefix];
    docId = [infoCopy docId];
    if ((docId & 0x80000000) == 0)
    {
      v28 = docId;
      v29 = [infoCopy count];
      if ([(ContextConfiguration *)self->_config minTokenCountToAugment]<= v29)
      {
        [(LuceneContextRequest *)self _augmentResult:v13 withDocId:v28 checkLanguageRedirect:1];
      }
    }

    luceneTermResultBigramScoreMultiplier = [(ContextConfiguration *)self->_config luceneTermResultBigramScoreMultiplier];
    v31 = powf(([infoCopy firstOccurenceUnique] + 1), -[ContextConfiguration luceneTermResultFirstOccurrencePowerLawDecay](self->_config, "luceneTermResultFirstOccurrencePowerLawDecay")) * luceneTermResultBigramScoreMultiplier;
    v32 = v31 * [infoCopy count];
    [infoCopy weight];
    v34 = fmaxf(v33, 1.0);
    *&v35 = v32 * ((v34 + 1.0) * (v34 + 1.0));
    [(LuceneContextResult *)v13 setLuceneScore:v35];
    if (self->_debug)
    {
      [(LuceneContextResult *)v13 luceneScore];
      v37 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0 %f B (token bigram result, count:%u, minPrefix:%li, docId:%i)", v36, [infoCopy count], prefix, objc_msgSend(infoCopy, "docId"));
      [(LuceneContextResult *)v13 setCategory:v37];

      term2 = [infoCopy term];
      v39 = qword_1005572A0;

      if (term2 == v39)
      {
        tokenA3 = [infoCopy tokenA];
        token = [tokenA3 token];
        tokenB3 = [infoCopy tokenB];
        token2 = [tokenB3 token];
        v44 = [NSString stringWithFormat:@"?%@_%@", token, token2];
        [(LuceneContextResult *)v13 setDebug:v44];
      }

      else
      {
        tokenA3 = [(LuceneContextResult *)v13 term];
        token = [NSString stringWithFormat:@"+%@", tokenA3];
        [(LuceneContextResult *)v13 setDebug:token];
      }
    }

    [(LuceneContextResult *)v13 setExactMatch:1];
  }

  else
  {
LABEL_4:
    v13 = 0;
  }

  return v13;
}

- (void)_searchTopKWithQuery:(id)query topK:(unint64_t)k
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1002B6B7C;
  v12 = &unk_100484140;
  queryCopy = query;
  v13 = queryCopy;
  selfCopy = self;
  kCopy = k;
  [Util elapsedMillisForBlock:&v9 enableTiming:self->_timing];
  if (self->_timing)
  {
    v8 = v7;
    [(CKContextResponse *)self->_response addDebug:@"tSearch:%f", v8, v9, v10, v11, v12];
  }
}

- (void)_processResults:(id)results topK:(unint64_t)k
{
  resultsCopy = results;
  results = [(CKContextResponse *)self->_response results];
  v7 = objc_opt_new();
  fingerprints = self->_fingerprints;
  self->_fingerprints = v7;

  v9 = objc_opt_new();
  fingerprintsPrimary = self->_fingerprintsPrimary;
  self->_fingerprintsPrimary = v9;

  v11 = [NSMutableSet setWithCapacity:6];
  extractTermsReuse = self->_extractTermsReuse;
  self->_extractTermsReuse = v11;

  *&self->_haveFingerprintDupes = 0;
  selfCopy = self;
  [(ContextConfiguration *)self->_config luceneMinRelativeScore];
  v14 = v13;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v75 = resultsCopy;
  v15 = resultsCopy[2];
  v16 = [v15 countByEnumeratingWithState:&v109 objects:v118 count:16];
  if (v16)
  {
    v17 = v16;
    self = 0;
    v18 = *v110;
    v19 = -1.0;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v110 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v109 + 1) + 8 * i);
        if ((*(v21 + 12) & 0x80000000) == 0)
        {
          if (v19 < 0.0)
          {
            v19 = *(v21 + 8);
          }

          if ((*(v21 + 8) / v19) < v14)
          {
            goto LABEL_17;
          }

          v22 = [LuceneContextRequest _processResult:selfCopy score:"_processResult:score:relativeScore:" relativeScore:?];
          if (v22)
          {
            [results addObject:v22];
            self = (self + 1);
            if (self >= k)
            {

              goto LABEL_17;
            }
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v109 objects:v118 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v23 = selfCopy;
  NSFreeMapTable(selfCopy->_perDocumentObjects);
  perDocumentObjects = selfCopy->_perDocumentObjects;
  selfCopy->_perDocumentObjects = 0;

  v77 = objc_opt_new();
  LODWORD(v15) = [(CKContextRequest *)selfCopy->_request dontSkip];
  minPrefixAdditionalResults = [(ContextConfiguration *)selfCopy->_config minPrefixAdditionalResults];
  v88 = 0;
  v74 = minPrefixAdditionalResults;
  if ((v15 & 1) == 0 && (minPrefixAdditionalResults & 0x8000000000000000) == 0)
  {
    v88 = objc_opt_new();
  }

  v84 = v15;
  if (selfCopy->_haveFingerprintDupes || selfCopy->_needFingerprintPostprocessing)
  {
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v26 = results;
    v27 = [v26 countByEnumeratingWithState:&v105 objects:v117 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v106;
      do
      {
        self = 0;
        do
        {
          if (*v106 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v105 + 1) + 8 * self);
          fingerprintPrimary = [v30 fingerprintPrimary];
          if (selfCopy->_needFingerprintPostprocessing && ([v30 skip] & 1) == 0 && fingerprintPrimary)
          {
            v32 = [(NSMutableDictionary *)selfCopy->_fingerprintsPrimary objectForKey:fingerprintPrimary];
            v33 = v32;
            if (v32)
            {
              v34 = v30 == v32;
            }

            else
            {
              v34 = 1;
            }

            if (!v34 && ([v30 titlePrimary] & 1) == 0)
            {
              [v30 setSkip:1];
            }
          }

          foldedResults = [v30 foldedResults];
          if (foldedResults)
          {
            [(LuceneContextRequest *)selfCopy _rerankFoldedResults:foldedResults];
            [v30 finalizeFoldedResult];
            if ((v15 & 1) == 0)
            {
              [v88 addObjectsFromArray:foldedResults];
              [v30 setFoldedResults:0];
            }
          }

          if ([v30 skip])
          {
            if ([v30 titlePrimary])
            {
              [v30 setSkip:0];
            }

            else if (v15)
            {
              category = [v30 category];
              v15 = [category stringByAppendingString:@" (would skip)"];
              [v30 setCategory:v15];

              LODWORD(v15) = v84;
            }

            else if (selfCopy->_needFingerprintPostprocessing)
            {
              [v77 addObject:v30];
            }
          }

          self = (self + 1);
        }

        while (v28 != self);
        v28 = [v26 countByEnumeratingWithState:&v105 objects:v117 count:16];
      }

      while (v28);
    }

    if (v15)
    {
      if (selfCopy->_haveFingerprintDupes)
      {
        v37 = objc_opt_new();
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        obj = v26;
        v83 = [obj countByEnumeratingWithState:&v101 objects:v116 count:16];
        if (v83)
        {
          v81 = *v102;
          do
          {
            self = 0;
            do
            {
              if (*v102 != v81)
              {
                objc_enumerationMutation(obj);
              }

              v38 = *(*(&v101 + 1) + 8 * self);
              foldedResults2 = [v38 foldedResults];

              if (foldedResults2)
              {
                v99 = 0u;
                v100 = 0u;
                v97 = 0u;
                v98 = 0u;
                v86 = v38;
                foldedResults3 = [v38 foldedResults];
                v41 = [foldedResults3 countByEnumeratingWithState:&v97 objects:v115 count:16];
                if (v41)
                {
                  v42 = v41;
                  v43 = *v98;
                  v44 = 1;
                  do
                  {
                    for (j = 0; j != v42; j = j + 1)
                    {
                      if (*v98 != v43)
                      {
                        objc_enumerationMutation(foldedResults3);
                      }

                      v46 = *(*(&v97 + 1) + 8 * j);
                      if ((v44 & 1) == 0)
                      {
                        category2 = [*(*(&v97 + 1) + 8 * j) category];
                        v48 = [category2 stringByAppendingString:@" (would skip)"];
                        [v46 setCategory:v48];
                      }

                      [v37 addObject:v46];
                      v44 = 0;
                    }

                    v42 = [foldedResults3 countByEnumeratingWithState:&v97 objects:v115 count:16];
                    v44 = 0;
                  }

                  while (v42);
                }

                [v86 setFoldedResults:0];
                v23 = selfCopy;
                LOBYTE(v15) = v84;
              }

              else
              {
                [v37 addObject:v38];
              }

              self = (self + 1);
            }

            while (self != v83);
            v83 = [obj countByEnumeratingWithState:&v101 objects:v116 count:16];
          }

          while (v83);
        }

        [(CKContextResponse *)v23->_response setResults:v37];
      }
    }

    else if ([v77 count])
    {
      [v26 removeObjectsInArray:v77];
    }
  }

  if ([v88 count])
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v15 = v88;
    v49 = [v15 countByEnumeratingWithState:&v93 objects:v114 count:16];
    if (v49)
    {
      v50 = v49;
      self = *v94;
      do
      {
        for (k = 0; k != v50; k = k + 1)
        {
          if (*v94 != self)
          {
            objc_enumerationMutation(v15);
          }

          v52 = *(*(&v93 + 1) + 8 * k);
          [v52 setForceBottomRank:1];
          minPrefix = [v52 minPrefix];
          if (minPrefix <= v74)
          {
            v54 = v74;
          }

          else
          {
            v54 = minPrefix;
          }

          [v52 setMinPrefix:v54];
        }

        v50 = [v15 countByEnumeratingWithState:&v93 objects:v114 count:16];
      }

      while (v50);
    }

    [results addObjectsFromArray:v15];
    LOBYTE(v15) = v84;
  }

  if (v15)
  {
    goto LABEL_117;
  }

  results2 = [(CKContextResponse *)v23->_response results];
  v56 = [results2 count];

  if (v56 < 2)
  {
    goto LABEL_117;
  }

  v87 = objc_alloc_init(NSMutableSet);
  [v77 removeAllObjects];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v57 = results;
  v58 = [v57 countByEnumeratingWithState:&v89 objects:v113 count:16];
  if (!v58)
  {
    goto LABEL_113;
  }

  v59 = v58;
  v60 = *v90;
  obja = *v90;
  do
  {
    v61 = 0;
    v82 = v59;
    do
    {
      if (*v90 != v60)
      {
        objc_enumerationMutation(v57);
      }

      v62 = *(*(&v89 + 1) + 8 * v61);
      title = [v62 title];
      topicId = [v62 topicId];
      if (!title || ([v87 containsObject:title] & 1) != 0)
      {
        goto LABEL_108;
      }

      selfCopy3 = self;
      v65 = selfCopy;
      blacklistTitles = [(ContextConfiguration *)selfCopy->_config blacklistTitles];
      if (blacklistTitles)
      {
        self = [(ContextConfiguration *)selfCopy->_config blacklistTitles];
        title2 = [v62 title];
        v83 = title2;
        if ([(LuceneContextRequest *)self containsObject:title2])
        {

          goto LABEL_107;
        }

        selfCopy3 = self;
        v65 = selfCopy;
      }

      v68 = v57;
      blacklistPortrait = [(ContextConfiguration *)v65->_config blacklistPortrait];
      v70 = blacklistPortrait;
      if (blacklistPortrait && topicId)
      {
        blacklistPortrait2 = [(ContextConfiguration *)selfCopy->_config blacklistPortrait];
        v72 = [blacklistPortrait2 containsObject:topicId];

        if (blacklistTitles)
        {

          self = selfCopy3;
          v57 = v68;
          if (v72)
          {
            goto LABEL_106;
          }
        }

        else
        {
          v57 = v68;
          self = selfCopy3;
          if (v72)
          {
LABEL_106:
            v60 = obja;
            v59 = v82;
LABEL_107:
            if (selfCopy->_config->_blacklistRemoveAllOnMatch)
            {

              [v57 removeAllObjects];
              goto LABEL_116;
            }

LABEL_108:
            [v77 addObject:v62];
            goto LABEL_109;
          }
        }
      }

      else
      {

        v57 = v68;
        self = selfCopy3;
        if (blacklistTitles)
        {
        }
      }

      [v87 addObject:title];
      v60 = obja;
      v59 = v82;
LABEL_109:

      v61 = v61 + 1;
    }

    while (v59 != v61);
    v73 = [v57 countByEnumeratingWithState:&v89 objects:v113 count:16];
    v59 = v73;
  }

  while (v73);
LABEL_113:

  if ([v77 count])
  {
    [v57 removeObjectsInArray:v77];
  }

LABEL_116:

LABEL_117:
}

- (void)_blendResults
{
  [(ContextConfiguration *)self->_config luceneBlendAlpha];
  v4 = v3;
  overrideBlendAlpha = [(CKContextRequest *)self->_request overrideBlendAlpha];

  if (overrideBlendAlpha)
  {
    overrideBlendAlpha2 = [(CKContextRequest *)self->_request overrideBlendAlpha];
    [overrideBlendAlpha2 floatValue];
    v4 = v7;
  }

  results = [(CKContextResponse *)self->_response results];
  v9 = [results count];

  if (v9 >= 2 && v4 != 1.0)
  {
    [(ContextConfiguration *)self->_config luceneBlendBeta];
    v12 = v11;
    overrideBlendBeta = [(CKContextRequest *)self->_request overrideBlendBeta];

    if (overrideBlendBeta)
    {
      overrideBlendBeta2 = [(CKContextRequest *)self->_request overrideBlendBeta];
      [overrideBlendBeta2 floatValue];
      v12 = v15;
    }

    [(ContextConfiguration *)self->_config luceneBlendGamma];
    v17 = v16;
    overrideBlendGamma = [(CKContextRequest *)self->_request overrideBlendGamma];

    if (overrideBlendGamma)
    {
      overrideBlendGamma2 = [(CKContextRequest *)self->_request overrideBlendGamma];
      [overrideBlendGamma2 floatValue];
      v17 = v20;
    }

    results2 = [(CKContextResponse *)self->_response results];
    v22 = [results2 sortedArrayUsingComparator:&stru_100484180];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v60 objects:v79 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v61;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v61 != v26)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v60 + 1) + 8 * i) setDocIdRank:++v25];
        }

        v24 = [v22 countByEnumeratingWithState:&v60 objects:v79 count:16];
      }

      while (v24);
    }

    v51 = v22;
    nMaxDoc = self->_nMaxDoc;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v29 = results2;
    v30 = [v29 countByEnumeratingWithState:&v56 objects:v78 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = v4;
      v54 = 1.0 - v4;
      v55 = v17;
      v33 = nMaxDoc;
      v34 = *v57;
      v35 = 1;
      v36 = INFINITY;
      do
      {
        for (j = 0; j != v31; j = j + 1)
        {
          v38 = v36;
          if (*v57 != v34)
          {
            objc_enumerationMutation(v29);
          }

          v39 = *(*(&v56 + 1) + 8 * j);
          [v39 relativeScore];
          v41 = v40;
          docId = [v39 docId];
          v43 = [docId unsignedLongValue] / v33;

          v44 = (1.0 - (v55 * v43)) / log2f(v12 + [v39 docIdRank]);
          if ([v39 forceBottomRank])
          {
            v36 = 1.1755e-38;
          }

          else
          {
            v36 = (v54 * v44) + (v32 * v41);
          }

          if (self->_debug && self->_debugLogEnabled && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            title = [v39 title];
            docIdRank = [v39 docIdRank];
            docId2 = [v39 docId];
            unsignedLongValue = [docId2 unsignedLongValue];
            forceBottomRank = [v39 forceBottomRank];
            *buf = 138413826;
            v65 = title;
            v66 = 2048;
            v67 = docIdRank;
            v68 = 2048;
            v69 = unsignedLongValue;
            v70 = 2048;
            v71 = v43;
            v72 = 2048;
            v73 = v44;
            v74 = 2048;
            v75 = v36;
            v76 = 1024;
            v77 = forceBottomRank;
            _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Result: %@, docIdRank:%lu docId:%lu relativeDocId:%f relativePopScore:%f newScore:%f forceBottom:%i", buf, 0x44u);
          }

          v35 &= v36 <= v38;
          *&v45 = v36;
          v46 = [NSNumber numberWithFloat:v45];
          [v39 setBlendedScore:v46];
        }

        v31 = [v29 countByEnumeratingWithState:&v56 objects:v78 count:16];
      }

      while (v31);
    }

    else
    {
      v35 = 1;
    }

    if (self->_debugLogEnabled && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1002BC074();
      if (v35)
      {
        goto LABEL_38;
      }
    }

    else if (v35)
    {
LABEL_38:

      return;
    }

    v50 = [v29 sortedArrayUsingComparator:&stru_1004841A0];
    [(CKContextResponse *)self->_response setResults:v50];

    goto LABEL_38;
  }
}

- (id)mergeDuplicateResults:(id)results
{
  resultsCopy = results;
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableDictionary dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = resultsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        title = [v11 title];
        v13 = [v5 objectForKeyedSubscript:title];

        if (v13)
        {
          v14 = [v4 objectAtIndex:{objc_msgSend(v13, "unsignedIntegerValue")}];
          [v14 mergeWithResult:v11];
        }

        else
        {
          v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
          title2 = [v11 title];
          [v5 setObject:v15 forKeyedSubscript:title2];

          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)_addTermResults
{
  v3 = self->_termResults;
  if ([(NSMutableArray *)v3 count])
  {
    selfCopy = self;
    results = [(CKContextResponse *)self->_response results];
    v5 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(results, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v6 = results;
    v7 = [v6 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v53;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v53 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v52 + 1) + 8 * i);
          titleTokenString = [v11 titleTokenString];
          if (titleTokenString)
          {
            [v5 addObject:titleTokenString];
          }

          query = [v11 query];
          if (query)
          {
            [v5 addObject:query];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)v3 sortUsingComparator:&stru_1004841C0];
    v14 = selfCopy;
    v15 = [(LuceneContextRequest *)selfCopy mergeDuplicateResults:v3];

    v16 = v6;
    objc_opt_class();
    objc_opt_class();
    v17 = v16;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v16 count] + objc_msgSend(v15, "count"));

      [(CKContextResponse *)selfCopy->_response setResults:v17];
      if ([v16 count])
      {
        [v17 addObjectsFromArray:v16];
      }
    }

    v43 = v5;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    reverseObjectEnumerator = [v15 reverseObjectEnumerator];
    v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v49;
      v39 = v17;
      v40 = v16;
      v37 = *v49;
      v38 = reverseObjectEnumerator;
      do
      {
        v22 = 0;
        v42 = v20;
        do
        {
          if (*v49 != v21)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v23 = *(*(&v48 + 1) + 8 * v22);
          if (v23)
          {
            [*(*(&v48 + 1) + 8 * v22) luceneScore];
            v25 = v24;
            title = [v23 title];
            if (title)
            {
              v27 = [(LuceneContextRequest *)v14 _tokenStringForText:title];
              if (([v43 containsObject:v27] & 1) == 0)
              {
                v46 = 0u;
                v47 = 0u;
                v44 = 0u;
                v45 = 0u;
                v28 = v16;
                v29 = [v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = 0;
                  v32 = *v45;
                  while (2)
                  {
                    v33 = 0;
                    v34 = v31;
                    v31 += v30;
                    do
                    {
                      if (*v45 != v32)
                      {
                        objc_enumerationMutation(v28);
                      }

                      [*(*(&v44 + 1) + 8 * v33) luceneScore];
                      if (v35 < v25)
                      {
                        v31 = v34;
                        goto LABEL_35;
                      }

                      ++v34;
                      v33 = v33 + 1;
                    }

                    while (v30 != v33);
                    v30 = [v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
                    if (v30)
                    {
                      continue;
                    }

                    break;
                  }
                }

                else
                {
                  v31 = 0;
                }

LABEL_35:

                v17 = v39;
                [v39 insertObject:v23 atIndex:v31];
                v16 = v40;
                v14 = selfCopy;
                v21 = v37;
                reverseObjectEnumerator = v38;
                v20 = v42;
              }
            }
          }

          v22 = v22 + 1;
        }

        while (v22 != v20);
        v20 = [reverseObjectEnumerator countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v20);
    }

    v3 = v36;
    [(NSMutableArray *)v36 removeAllObjects];
  }
}

- (id)_tokenStringForText:(id)text
{
  textCopy = text;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1002AA110;
  v22 = sub_1002AA120;
  v23 = objc_opt_new();
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 1;
  if (textCopy)
  {
    v5 = [(OrgApacheLuceneAnalysisAnalyzer *)self->_analyzer tokenStreamWithNSString:@"text" withNSString:textCopy];
  }

  else
  {
    v5 = 0;
  }

  v6 = OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_();
  v7 = [v5 addAttributeWithIOSClass:v6];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002B89BC;
  v11[3] = &unk_1004841E8;
  v8 = v7;
  v12 = v8;
  selfCopy = self;
  v14 = v16;
  v15 = &v18;
  sub_1002B198C(v5, v11);
  v9 = v19[5];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);

  return v9;
}

- (void)postprocessAddQuery:(id)query
{
  queryCopy = query;
  title = [queryCopy title];
  v4 = [title indexOf:3];
  if ((v4 & 0x80000000) == 0 || (v4 = [title indexOfString:{@" (", v5 = title, (v4 & 0x80000000) == 0}])
  {
    v5 = [title substring:0 endIndex:v4];

    v6 = [title replace:3 withChar:32];
    [queryCopy setTitle:v6];
  }

  lowercaseString = [v5 lowercaseString];
  [queryCopy setQuery:lowercaseString];
}

- (void)_rerankFoldedResults:(id)results
{
  resultsCopy = results;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_1002AA110;
  v75 = sub_1002AA120;
  v76 = [[BigramKey alloc] initWithTokenA:0 tokenB:0];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = resultsCopy;
  v4 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
  selfCopy3 = self;
  if (v4)
  {
    v6 = 0;
    v30 = 0;
    v26 = *v68;
    v7 = 5;
    LODWORD(v8) = 1;
LABEL_3:
    v9 = 0;
    v8 = v8;
    v27 = (v7 & ~(v7 >> 31));
    v23 = v7 - v4;
    v29 = v6;
    v25 = v4;
    while (1)
    {
      if (*v68 != v26)
      {
        objc_enumerationMutation(obj);
      }

      if (v27 == v9)
      {
        break;
      }

      v10 = *(*(&v67 + 1) + 8 * v9);
      [v10 setFoldCurrentRank:v8];
      title = [v10 title];
      if (title)
      {
        v12 = [(OrgApacheLuceneAnalysisAnalyzer *)selfCopy3->_analyzer tokenStreamWithNSString:@"text" withNSString:title];
      }

      else
      {
        v12 = 0;
      }

      v28 = title;
      v13 = OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_();
      v14 = [v12 addAttributeWithIOSClass:v13];

      v65[0] = 0;
      v65[1] = v65;
      v65[2] = 0x2020000000;
      v66 = 0;
      v63[0] = 0;
      v63[1] = v63;
      v63[2] = 0x3032000000;
      v63[3] = sub_1002AA110;
      v63[4] = sub_1002AA120;
      v64 = 0;
      v59 = 0;
      v60 = &v59;
      v61 = 0x2020000000;
      v62 = 0;
      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      v58 = 0;
      v51 = 0;
      v52 = &v51;
      v53 = 0x2020000000;
      v54 = 0;
      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = 0;
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1002BAA6C;
      v32[3] = &unk_1004842B0;
      v35 = v65;
      v15 = v14;
      v33 = v15;
      selfCopy2 = self;
      v36 = &v55;
      v37 = &v47;
      v16 = v12;
      v38 = v63;
      v39 = &v71;
      v40 = &v59;
      v41 = &v51;
      v42 = &v43;
      sub_1002B198C(v12, v32);
      v6 = 4 * v56[3] + 8 * v60[3] + 2 * v52[3] + v48[3] - v44[3];
      v17 = v10;
      if (self->_debug && [(CKContextRequest *)self->_request dontSkip])
      {
        debug = [v10 debug];
        fingerprintPrimary = [v10 fingerprintPrimary];
        integerValue = [fingerprintPrimary integerValue];
        v21 = v48[3];
        v22 = [NSString stringWithFormat:@"%@ %lu %li <- %li %li %li %li -%li", debug, integerValue, v6, v60[3], v56[3], v52[3], v21, v44[3]];
        [v17 setDebug:v22];
      }

      [v17 setFoldScore:v6];
      [v72[5] recycle];

      _Block_object_dispose(&v43, 8);
      _Block_object_dispose(&v47, 8);
      _Block_object_dispose(&v51, 8);
      _Block_object_dispose(&v55, 8);
      _Block_object_dispose(&v59, 8);
      _Block_object_dispose(v63, 8);

      _Block_object_dispose(v65, 8);
      v30 |= v6 > v29;
      v9 = v9 + 1;
      ++v8;
      v29 = v6;
      selfCopy3 = self;
      if (v25 == v9)
      {
        v4 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
        v7 = v23;
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (v30)
    {
      [obj sortUsingComparator:&stru_1004842D0];
    }
  }

  else
  {
  }

  _Block_object_dispose(&v71, 8);
}

- (void)addDebugStringTo:(id)to withPrefix:(id)prefix forQuery:(id)query
{
  toCopy = to;
  prefixCopy = prefix;
  queryCopy = query;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    getTerms = [queryCopy getTerms];
    v10 = [getTerms objectAtIndex:0];
    v11 = [getTerms objectAtIndex:1];
    text = [v10 text];
    text2 = [v11 text];
    v14 = [NSString stringWithFormat:@"%@%@ %@ ", prefixCopy, text, text2];
    [toCopy addObject:v14];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      getTerms = [queryCopy getTerm];
      text3 = [getTerms text];
      v16 = [NSString stringWithFormat:@"%@%@ ", prefixCopy, text3];
      [toCopy addObject:v16];
    }

    else
    {
      getTerms = [NSString stringWithFormat:@"%@(%@) ", prefixCopy, queryCopy];
      [toCopy addObject:getTerms];
    }
  }
}

- (id)textTermsEnum
{
  textTermsEnum = self->_textTermsEnum;
  if (!textTermsEnum)
  {
    WeakRetained = objc_loadWeakRetained(&self->_engine);
    reader = [WeakRetained reader];
    v6 = [OrgApacheLuceneIndexMultiFields getTermsWithOrgApacheLuceneIndexIndexReader:reader withNSString:@"text"];
    iterator = [v6 iterator];
    v8 = self->_textTermsEnum;
    self->_textTermsEnum = iterator;

    textTermsEnum = self->_textTermsEnum;
  }

  return textTermsEnum;
}

+ (id)reverseFQDN:(id)n
{
  nCopy = n;
  if ([nCopy length])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [nCopy componentsSeparatedByString:{@".", 0}];
    reverseObjectEnumerator = [v4 reverseObjectEnumerator];

    v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (v8)
          {
            [(__CFString *)v8 appendString:@"."];
          }

          else
          {
            v8 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", [nCopy length]);
          }

          [(__CFString *)v8 appendString:v11];
        }

        v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v12 = &stru_100484358;
    if (!nCopy)
    {
      v12 = 0;
    }

    v8 = v12;
  }

  return v8;
}

- (void)addRequestFingerprint
{
  v3 = [(OrgApacheLuceneUtilPriorityQueue *)self->_minHashPriorityQueue size];
  if (v3 >= 1)
  {
    v4 = v3;
    v9 = [[CKContextFingerprintMinHash alloc] initWithHashes:0 count:v3];
    [v9 setType:1];
    v5 = v9;
    v6 = v4 + 1;
    v7 = [v9 hashes] + 4 * v4 - 4;
    do
    {
      v8 = [(OrgApacheLuceneUtilPriorityQueue *)self->_minHashPriorityQueue pop];
      *v7-- = [v8 intValue];

      --v6;
    }

    while (v6 > 1);
    [(CKContextResponse *)self->_response setRequestFingerprint:v9];
  }
}

- (LuceneContextEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

@end