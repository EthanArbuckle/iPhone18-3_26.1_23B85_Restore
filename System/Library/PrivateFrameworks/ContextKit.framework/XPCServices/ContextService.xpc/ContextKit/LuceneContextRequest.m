@interface LuceneContextRequest
+ (BOOL)_looksLikeTitleBarUIElement:(id)a3;
+ (id)hostToCapitalizedName:(id)a3;
+ (id)lookupTreasureMapForDomainHierarchy:(id)a3 fromTreasureMap:(id)a4 intoSet:(id)a5 isRelaxedMatchOut:(BOOL *)a6;
+ (id)reverseFQDN:(id)a3;
+ (id)setOfLinewiseStringsFromFieldValue:(id)a3;
+ (id)stripHostToDomain:(id)a3 level:(unint64_t)a4;
+ (void)_addTopicsForUrl:(id)a3 withEngine:(id)a4 documentVisitor:(id)a5 toResponse:(id)a6;
+ (void)addTopicsForURL:(id)a3 withEngine:(id)a4 toResponse:(id)a5;
+ (void)initialize;
- (BOOL)_isIntermediateNameBigramCandidate:(id)a3 tokenB:(id)a4 bothStartUppercase:(BOOL)a5;
- (BOOL)_isLikelyLabel:(id)a3;
- (BOOL)_isRelevantUIForExtraction:(id)a3;
- (BOOL)isLanguageSupported:(id)a3;
- (LuceneContextEngine)engine;
- (LuceneContextRequest)initWithEngine:(id)a3 forRequest:(id)a4;
- (id)_addHomeAppExtractionResults:(id)a3;
- (id)_bestTypeVariantForTokenInfo:(id)a3 allowingAllCaps:(BOOL)a4;
- (id)_constructQuery;
- (id)_determineTitleFromUIElements:(id)a3;
- (id)_getTagTypeForExtractionItemType:(unint64_t)a3;
- (id)_lookupBigramTermForTokenA:(id)a3 tokenB:(id)a4 tokenTypeOut:(unint64_t *)a5 docIdOut:(int *)a6;
- (id)_readTermInfo:(id)a3 tokenTypeOut:(unint64_t *)a4 weightOut:(float *)a5 docIdOut:(int *)a6;
- (id)_resultForBigramInfo:(id)a3 minPrefix:(int64_t)a4;
- (id)_resultForTokenInfo:(id)a3 minPrefix:(int64_t)a4;
- (id)_sortGroupFilterUIElements;
- (id)_tokenInfoForToken:(id)a3;
- (id)_tokenStringForText:(id)a3;
- (id)inspectTitle:(id)a3 titleForTokenization:(id)a4 conditionals:(id)a5;
- (id)mergeDuplicateResults:(id)a3;
- (id)simplifiedDesiredLanguageTags;
- (id)textTermsEnum;
- (void)_addTermResults;
- (void)_blendResults;
- (void)_determineSurroundingEntities:(id)a3 withUIElementToResultsMapping:(id)a4;
- (void)_discardTokenInfos;
- (void)_processResults:(id)a3 topK:(unint64_t)a4;
- (void)_rerankFoldedResults:(id)a3;
- (void)_searchTopKWithQuery:(id)a3 topK:(unint64_t)a4;
- (void)_tokenizeText;
- (void)addCoreNLPTags;
- (void)addDebugStringTo:(id)a3 withPrefix:(id)a4 forQuery:(id)a5;
- (void)addExtraQueryCompletions;
- (void)addRequestFingerprint;
- (void)addStructuredExtraction;
- (void)augmentResultsWithTags;
- (void)configAnalyzerForLanguage:(id)a3;
- (void)dealloc;
- (void)discard;
- (void)filterResultsByTags:(id)a3;
- (void)findResultsWithReply:(id)a3;
- (void)postprocessAddQuery:(id)a3;
@end

@implementation LuceneContextRequest

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

- (LuceneContextRequest)initWithEngine:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v78.receiver = self;
  v78.super_class = LuceneContextRequest;
  v8 = [(LuceneContextRequest *)&v78 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_request, a4);
    v10 = [v7 debug];
    v9->_debug = v10;
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = [v7 timing];
    }

    v9->_timing = v11;
    v9->_debugLogEnabled = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    v12 = objc_storeWeak(&v9->_engine, v6);
    v9->_nMaxDoc = [v6 maxDoc];

    WeakRetained = objc_loadWeakRetained(&v9->_engine);
    v9->_nTerms = [WeakRetained numTerms];

    v14 = objc_loadWeakRetained(&v9->_engine);
    v15 = [v14 bloomFilter];
    bloomFilter = v9->_bloomFilter;
    v9->_bloomFilter = v15;

    v17 = objc_loadWeakRetained(&v9->_engine);
    v9->_useBloomFilter = [v17 useBloomFilter];

    v18 = +[ContextConfiguration sharedInstance];
    config = v9->_config;
    v9->_config = v18;

    v20 = [v7 fingerprintMax];
    v21 = [(ContextConfiguration *)v9->_config maxFingerprints];
    if (v20 >= v21)
    {
      v20 = v21;
    }

    if (v20)
    {
      v22 = [(OrgApacheLuceneUtilPriorityQueue *)[LeastNumberPriorityQueue alloc] initWithInt:v20 withBoolean:1];
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

    v30 = [(_PASBloomFilter *)v9->_bloomFilter newHashesArray];
    hashesTokenReuse = v9->_hashesTokenReuse;
    v9->_hashesTokenReuse = v30;

    v32 = [OrgApacheLuceneSearchIndexSearcher alloc];
    v33 = objc_loadWeakRetained(&v9->_engine);
    v34 = [v33 reader];
    v35 = [(OrgApacheLuceneSearchIndexSearcher *)v32 initWithOrgApacheLuceneIndexIndexReader:v34];
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
    v63 = [v6 nGramBreakingSeparators];
    nGramBreakingSeparators = v60->_nGramBreakingSeparators;
    v60->_nGramBreakingSeparators = v63;

    v65 = [v6 allowedNGramSeparators];
    allowedNGramSeparators = v60->_allowedNGramSeparators;
    v60->_allowedNGramSeparators = v65;

    v67 = [v6 quotedTokenCharacterSet];
    quotedTokenCharacterSet = v60->_quotedTokenCharacterSet;
    v60->_quotedTokenCharacterSet = v67;

    v69 = [v6 partialNGramCharacterSet];
    partialNGramCharacterSet = v60->_partialNGramCharacterSet;
    v60->_partialNGramCharacterSet = v69;
  }

  return v9;
}

- (BOOL)isLanguageSupported:(id)a3
{
  v4 = a3;
  v5 = [(ContextConfiguration *)self->_config luceneSupportedLanguages];
  if ([v5 count])
  {
    if (!v4)
    {
      v6 = 0;
      goto LABEL_7;
    }

    if (([v5 containsObject:v4] & 1) == 0)
    {
      v7 = [LanguageUtilities simplifyLanguageTag:v4];

      v6 = [v5 containsObject:v7];
      v4 = v7;
      goto LABEL_7;
    }
  }

  v6 = 1;
LABEL_7:

  return v6;
}

- (void)configAnalyzerForLanguage:(id)a3
{
  v9 = a3;
  if ([LanguageUtilities isChineseLanguageTag:?]|| [LanguageUtilities isJapaneseLanguageTag:v9])
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
  v4 = [(CKContextRequest *)self->_request desiredLanguageTags];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [LanguageUtilities simplifyLanguageTag:*(*(&v11 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)findResultsWithReply:(id)a3
{
  v119 = a3;
  v158 = mach_absolute_time();
  v152 = 0;
  v153 = &v152;
  v154 = 0x3032000000;
  v155 = sub_1002AA110;
  v156 = sub_1002AA120;
  v125 = self;
  v157 = [(CKContextRequest *)self->_request languageTag];
  v4 = self;
  v5 = [CKContextResponse alloc];
  v6 = objc_opt_new();
  v7 = [v5 initWithResults:v6 requestType:{-[CKContextRequest type](v4->_request, "type")}];
  response = v4->_response;
  v4->_response = v7;

  v9 = v4;
  v10 = v4->_response;
  [(ContextConfiguration *)v4->_config hideCompletionsTimeLimit];
  [(CKContextResponse *)v10 setHideCompletionsTimeLimit:?];
  [(CKContextResponse *)v4->_response setMustPrefixMatchLength:[(ContextConfiguration *)v4->_config mustPrefixMatchLength]];
  if ([(CKContextRequest *)v4->_request textIsRaw]&& ![(ContextConfiguration *)v4->_config rawTextEnabled]&& [(CKContextRequest *)v4->_request type]!= 2)
  {
    if (v4->_debug)
    {
      [(CKContextResponse *)v4->_response addDebug:@"RawText mode is disabled"];
    }

    v11 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1002BB720();
    }

    v9 = v125;
    [(CKContextRequest *)v125->_request setText:0];
  }

  v12 = [(CKContextRequest *)v9->_request text];
  v13 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v12 length];
    v15 = [(CKContextRequest *)v125->_request type];
    v16 = [(CKContextRequest *)v125->_request languageTag];
    sub_1002BB764(v16, v169, v14, v15);
  }

  v146 = 0;
  v147 = &v146;
  v148 = 0x3032000000;
  v149 = sub_1002AA110;
  v150 = sub_1002AA120;
  v151 = 0;
  WeakRetained = objc_loadWeakRetained(&v125->_engine);
  if ([WeakRetained fallbackModeEnabled])
  {
    v18 = [(ContextConfiguration *)v125->_config fallbackModeQuerySuggestionsEnabled];

    if ((v18 & 1) == 0)
    {
      v19 = v125;
      if (v125->_debug)
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

  v19 = v125;
  if ([v12 length] < 3)
  {
    if (v125->_timing)
    {
      v20 = @"tSearch:0";
      goto LABEL_28;
    }

LABEL_29:
    v120 = 0;
    goto LABEL_62;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = [(ContextConfiguration *)v125->_config debugForceLanguageTag];

  if (v22)
  {
    v23 = [(ContextConfiguration *)v125->_config debugForceLanguageTag];
    v24 = v153[5];
    v153[5] = v23;
  }

  v142[0] = _NSConcreteStackBlock;
  v142[1] = 3221225472;
  v142[2] = sub_1002ACBCC;
  v142[3] = &unk_100483F70;
  v145 = v22 == 0;
  v144 = &v152;
  v142[4] = v125;
  v25 = v12;
  v143 = v25;
  [Util elapsedMillisForBlock:v142 enableTiming:v125->_timing];
  v27 = v26;
  v120 = [(LuceneContextRequest *)v125 isLanguageSupported:v153[5]];
  v28 = [v153[5] copy];
  [(CKContextResponse *)v125->_response setLanguageTag:v28];

  v29 = [(CKContextResponse *)v125->_response languageTag];
  [(LuceneContextRequest *)v125 configAnalyzerForLanguage:v29];

  v30 = v27;
  if (v120)
  {
    v141[0] = _NSConcreteStackBlock;
    v141[1] = 3221225472;
    v141[2] = sub_1002ACCE4;
    v141[3] = &unk_100483968;
    v141[4] = v125;
    [Util elapsedMillisForBlock:v141 enableTiming:v125->_timing];
    v32 = v31;
    if (v125->_debugLogEnabled)
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
    v37 = v125;
    v140[4] = v125;
    v140[5] = &v146;
    [Util elapsedMillisForBlock:v140 enableTiming:v125->_timing];
    if (v125->_timing)
    {
      v39 = v32;
      v40 = v38;
      [(CKContextResponse *)v125->_response addDebug:@"tLanguageDetect:%f (%@), tTokenize:%f, tConstructQuery:%f", v30, v153[5], v39, v40];
    }
  }

  else
  {
    [(CKContextResponse *)v125->_response setError:qword_100557258];
    v41 = [(CKContextRequest *)v125->_request type];
    if (v41 == 15 || v41 == 1)
    {
      v42 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Safari request with unsupported language", buf, 2u);
      }
    }

    v37 = v125;
    if (v125->_timing)
    {
      [(CKContextResponse *)v125->_response addDebug:@"tLanguageDetect:%f (%@)", v30, v153[5]];
    }
  }

  [(LuceneContextRequest *)v37 addRequestFingerprint];
  if (v37->_debug && v125->_timing)
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
    [Util elapsedMillisForBlock:v137 enableTiming:v125->_timing];
    v44 = v43;
    v45 = [(LuceneContextRequest *)v125 isLanguageSupported:*(v163 + 5)];
    v46 = v44;
    [(CKContextResponse *)v125->_response addDebug:@"tLanguageDetectLangId:%f (%@) mismatch:%i", v46, *(v163 + 5), v120 ^ v45];

    _Block_object_dispose(buf, 8);
  }

  v47 = v21;
  v48 = v125;
  objc_autoreleasePoolPop(v47);
  if (v125->_debugLogEnabled)
  {
    v49 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      [Util elapsedMillisSinceMachAbsolute:v158 nowTarget:&v158];
      sub_1002BB81C(buf, v52, v50, v51);
    }

    v48 = v125;
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
    v55 = [(ContextConfiguration *)config luceneQueryDefaultNumResults];
    goto LABEL_52;
  }

  v53 = v53;
  if ([(ContextConfiguration *)config luceneQueryMaxNumResults]< v53)
  {
    v55 = [(ContextConfiguration *)v48->_config luceneQueryMaxNumResults];
LABEL_52:
    v53 = v55;
  }

  [(LuceneContextRequest *)v48 _searchTopKWithQuery:v147[5] topK:v53 + 20];
  v56 = [(CKContextResponse *)v48->_response results];
  if ([(NSMutableArray *)v48->_termResultsWithDocument count])
  {
    [v56 addObjectsFromArray:v48->_termResultsWithDocument];
    v57 = [(LuceneContextRequest *)v48 mergeDuplicateResults:v56];

    v48 = v125;
    [(CKContextResponse *)v125->_response setResults:v57];
    v56 = v57;
  }

  if ([v56 count] > v53)
  {
    [v56 removeObjectsInRange:{v53, objc_msgSend(v56, "count") - v53}];
  }

  [(LuceneContextRequest *)v48 _blendResults];
  [(LuceneContextRequest *)v48 _addTermResults];

  v48 = v125;
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

  if (v125->_forceNoResults)
  {
    [(CKContextResponse *)v125->_response setResults:&__NSArray0__struct];
    if (v125->_debug)
    {
      [(CKContextResponse *)v125->_response addDebug:@"forceNoResults triggered"];
    }
  }

  [(CKContextResponse *)v125->_response results];
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
          [(CKContextResponse *)v125->_response setResultsNeedFiltering:1];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v66 = v64;
          v67 = objc_opt_new();
          v68 = [v66 relatedItems];
          if (v68)
          {
            [v67 unionOrderedSet:v68];
          }

          v69 = objc_opt_class();
          v70 = [v66 relatedField];
          v71 = [v69 setOfLinewiseStringsFromFieldValue:v70];

          if (v71 && [v71 count])
          {
            [v67 unionOrderedSet:v71];
          }

          v72 = [v66 topicId];
          if ([v72 length])
          {
            v73 = [v66 title];
            v74 = [v73 length] == 0;

            if (!v74)
            {
              v72 = [v66 title];
              v75 = +[NSCharacterSet URLPathAllowedCharacterSet];
              v76 = [v72 stringByAddingPercentEncodingWithAllowedCharacters:v75];
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

  v79 = v125;
  if ([(CKContextRequest *)v125->_request includeHigherLevelTopics])
  {
    v80 = [(CKContextRequest *)v125->_request url];
    if ([v80 length])
    {
      v81 = [NSURL URLWithString:v80];
      v82 = objc_opt_class();
      v83 = objc_loadWeakRetained(&v125->_engine);
      [v82 _addTopicsForUrl:v81 withEngine:v83 documentVisitor:v125->_docVisitor toResponse:v125->_response];
    }

    v79 = v125;
  }

  if ([(CKContextRequest *)v79->_request maxConstellationTopics]>= 1)
  {
    v124 = [(CKContextRequest *)v79->_request itemIds];
    v84 = [v124 count];
    if (v84)
    {
      if (v84 >= 0x1F5)
      {
        v85 = [v124 allKeys];
        v86 = [v85 sortedArrayUsingSelector:"compare:"];

        v87 = objc_alloc_init(NSMutableDictionary);
        for (j = 0; j != 500; ++j)
        {
          v89 = [v86 objectAtIndexedSubscript:j];
          v90 = [v124 objectForKeyedSubscript:v89];
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
          v127[4] = v125;
          v128 = v91;
          [Util elapsedMillisForBlock:v127 enableTiming:v125->_timing];
          if (v125->_timing)
          {
            v104 = v103;
            [(CKContextResponse *)v125->_response addDebug:@"tConstellation:%f", v104];
          }
        }

        v79 = v125;
        goto LABEL_119;
      }
    }

    else
    {
      v92 = [(CKContextResponse *)v79->_response results];
      v93 = [v92 count] == 0;

      if (!v93)
      {
        v94 = objc_opt_new();
        v132 = 0u;
        v130 = 0u;
        v131 = 0u;
        v129 = 0u;
        v95 = [(CKContextResponse *)v125->_response results];
        v96 = [v95 countByEnumeratingWithState:&v129 objects:v159 count:16];
        if (v96)
        {
          v97 = *v130;
          do
          {
            for (k = 0; k != v96; k = k + 1)
            {
              if (*v130 != v97)
              {
                objc_enumerationMutation(v95);
              }

              v99 = [*(*(&v129 + 1) + 8 * k) topicId];
              if (v99)
              {
                v100 = [v94 objectForKey:v99];
                v101 = v100;
                if (v100)
                {
                  v102 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v100 intValue] + 1);
                }

                else
                {
                  v102 = &off_1004A9F98;
                }

                [v94 setObject:v102 forKey:v99];
              }
            }

            v96 = [v95 countByEnumeratingWithState:&v129 objects:v159 count:16];
          }

          while (v96);
        }

        v86 = v94;
        v91 = v86;
        v87 = v124;
        goto LABEL_112;
      }
    }

    v91 = v124;
    goto LABEL_114;
  }

LABEL_119:
  if ([(ContextConfiguration *)v79->_config extraQueryCompletionsEnabled])
  {
    v105 = objc_autoreleasePoolPush();
    v79 = v125;
    [(LuceneContextRequest *)v125 addExtraQueryCompletions];
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

  v108 = [(CKContextRequest *)v79->_request allowedTopicTypeTags];
  v109 = [v108 count] == 0;

  if (!v109)
  {
    v110 = [(CKContextRequest *)v125->_request allowedTopicTypeTags];
    [(LuceneContextRequest *)v125 filterResultsByTags:v110];
  }

  v111 = os_transaction_create();
  (v119)[2](v119, v125->_response);
  v112 = +[MetricsLogging instance];
  v113 = [(CKContextRequest *)v125->_request text];
  v114 = [v113 length];
  v115 = v153[5];
  v116 = [(CKContextRequest *)v125->_request type];
  v117 = objc_loadWeakRetained(&v125->_engine);
  v118 = [v117 indexId];
  [v112 recordInputLength:v114 languageTag:v115 languageSupported:v120 requestType:v116 indexId:v118];

  _Block_object_dispose(&v152, 8);
}

- (void)addExtraQueryCompletions
{
  v3 = [(CKContextRequest *)self->_request type];
  if (v3 <= 0xF && ((1 << v3) & 0x803A) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_engine);
    v6 = [WeakRetained qidToQueriesMap];

    v7 = objc_loadWeakRetained(&self->_engine);
    v8 = [v7 queriesArray];

    v71 = v6;
    if (v6)
    {
      if (v8)
      {
        v9 = [(CKContextResponse *)self->_response results];
        v10 = [v9 count];

        if (v10)
        {
          v59 = v8;
          v11 = [(CKContextResponse *)self->_response results];
          v12 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", 3 * [v11 count]);

          v72 = +[NSMutableSet set];
          v66 = [(LuceneContextRequest *)self simplifiedDesiredLanguageTags];
          v13 = [(ContextConfiguration *)self->_config extraQueryCompletionsTopKLanguages];
          v14 = [(CKContextResponse *)self->_response results];
          v61 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v14 count]);

          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v58 = self;
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
                v17 = [v16 topicId];
                if ([v17 length])
                {
                  [v72 removeAllObjects];
                  v18 = [v71 objectsForKey:v17 intoSet:v72 keepWalkingOut:0];
                  if ([v66 count])
                  {
                    v62 = v16;
                    v83 = 0u;
                    v84 = 0u;
                    v81 = 0u;
                    v82 = 0u;
                    v19 = v66;
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

                        if (v24 > v13)
                        {
                          break;
                        }

                        v25 = [NSString stringWithFormat:@"%@:%@", v17, *(*(&v81 + 1) + 8 * v23)];
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

                  v27 = [v16 title];

                  if (v27)
                  {
                    v28 = [v16 title];
                    v29 = [v28 lowercaseString];
                    [v61 addObject:v29];
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
                          [v12 setObject:v17 forKey:v37];
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

          v8 = v59;
          v38 = v61;
          if ([v12 count])
          {
            v39 = [v12 allKeys];
            v65 = [v39 sortedArrayUsingSelector:"compare:"];

            v40 = [(CKContextResponse *)v58->_response results];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v41 = [v40 mutableCopy];

              [(CKContextResponse *)v58->_response setResults:v41];
              v40 = v41;
            }

            [(CKContextResponse *)v58->_response setResultsNeedFiltering:1];
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
                  v50 = [v49 lowercaseString];
                  if (([v38 containsObject:v50] & 1) == 0)
                  {
                    [v38 addObject:v50];
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
                      v57 = v56 = v40;
                      [v51 setTopicId:v57];

                      v40 = v56;
                      v44 = v55;
                      v45 = v54;
                      v46 = v53;
                      v47 = v63;

                      v38 = v61;
                    }

                    [v40 addObject:v51];
                  }
                }

                v68 = [v46 countByEnumeratingWithState:&v73 objects:v89 count:16];
              }

              while (v68);
            }

            v8 = v59;
          }
        }
      }
    }
  }
}

- (void)addCoreNLPTags
{
  v2 = self;
  v3 = [(CKContextRequest *)self->_request type];
  if (v3 <= 0x14 && ((1 << v3) & 0x1A803A) != 0)
  {
    v5 = [(CKContextRequest *)v2->_request text];
    if (v5)
    {
      v62 = v5;
      v65 = [TopEntityHelper findNamedEntities:v5];
      v6 = [(CKContextResponse *)v2->_response results];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v8 = [v6 mutableCopy];

        [(CKContextResponse *)v2->_response setResults:v8];
        v7 = v8;
      }

      v76 = v7;
      v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v7 count]);
      v70 = v9;
      if (!v2->_debug)
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

              v15 = [*(*(&v91 + 1) + 8 * i) title];
              v16 = [v15 lowercaseString];
              [v70 addObject:v16];
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
        v69 = v2;
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
              v21 = [v19 allValues];
              v22 = CKContextExecutor_ptr;
              v23 = [TopEntityHelper mergeAndSort:v21 usingMergeType:v20];

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
                    if (v2->_debug || ([*(*(&v83 + 1) + 8 * v28) score], v31 = v30, -[ContextConfiguration coreNLPMinScore](v2->_config, "coreNLPMinScore"), v31 >= v32))
                    {
                      v78 = v28;
                      v33 = [v29 name];
                      v34 = [v33 lowercaseString];

                      if (([v9 containsObject:v34] & 1) == 0)
                      {
                        v77 = v34;
                        [v9 addObject:v34];
                        v35 = objc_alloc(v22[16]);
                        v36 = [v29 name];
                        v37 = [v35 initWithTitle:v36 query:0 url:0 category:v18];

                        [v29 score];
                        v39 = v38;
                        [(ContextConfiguration *)v2->_config coreNLPRelevantScore];
                        [v37 setMinPrefix:v39 <= v40];
                        v41 = v76;
                        if (v2->_debug)
                        {
                          v42 = [v29 count];
                          v43 = [v29 firstOccurrence];
                          [v29 score];
                          v45 = v44;
                          v46 = [v29 sourceNamedEntities];
                          v47 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"count: %lu, firstOccur: %lu, score: %f, sourceEntities: %lu", v42, v43, *&v45, [v46 count]);

                          v48 = [v29 sourceNamedEntities];
                          v49 = [v48 count];

                          if (v49 >= 2)
                          {
                            v71 = v37;
                            v81 = 0u;
                            v82 = 0u;
                            v79 = 0u;
                            v80 = 0u;
                            v50 = [v29 sourceNamedEntities];
                            v51 = [v50 countByEnumeratingWithState:&v79 objects:v95 count:16];
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
                                    objc_enumerationMutation(v50);
                                  }

                                  v56 = *(*(&v79 + 1) + 8 * v54);
                                  v57 = [v56 name];
                                  v58 = [v56 count];
                                  v59 = [v56 firstOccurrence];
                                  [v56 score];
                                  v61 = [NSString stringWithFormat:@"\n  sourceEntity: %@ \t count: %lu, firstOccur: %lu, score: %f", v57, v58, v59, v60];
                                  v47 = [v55 stringByAppendingString:v61];

                                  v54 = v54 + 1;
                                  v55 = v47;
                                }

                                while (v52 != v54);
                                v52 = [v50 countByEnumeratingWithState:&v79 objects:v95 count:16];
                              }

                              while (v52);
                            }

                            v2 = v69;
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
                        v34 = v77;
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

      v5 = v62;
    }
  }
}

- (void)augmentResultsWithTags
{
  v3 = [(CKContextRequest *)self->_request type];
  if (v3 <= 0x14 && ((1 << v3) & 0x1B0438) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_engine);
    v6 = [WeakRetained tagsMap];

    if (v6)
    {
      v7 = [(CKContextResponse *)self->_response results];
      v8 = [v7 count];

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
              v14 = [v13 topicId];
              v15 = [v13 title];
              if ([v14 length])
              {
                v16 = [v6 objectsForKey:v14];
              }

              else if ([v15 length])
              {
                v17 = [v15 lowercaseString];
                v16 = [v6 objectsForKey:v17];
              }

              else
              {
                v16 = 0;
              }

              v18 = [v13 tags];
              v19 = [v18 count];

              if (v19)
              {
                v20 = [v13 tags];
                v21 = [v20 mutableCopy];

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
  v3 = [(CKContextRequest *)self->_request type];
  if (v3 <= 0x14 && ((1 << v3) & 0x1B0438) != 0)
  {
    v5 = [(CKContextRequest *)self->_request uiElements];
    if ([v5 count])
    {
      v6 = [(LuceneContextRequest *)self _sortGroupFilterUIElements];
      v7 = [(CKContextResponse *)self->_response results];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = [v7 mutableCopy];

        [(CKContextResponse *)self->_response setResults:v8];
        v7 = v8;
      }

      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = [(CKContextRequest *)self->_request uiElements];
      v11 = [(LuceneContextRequest *)self _determineTitleFromUIElements:v10];

      if (v11)
      {
        [v7 addObject:v11];
        v12 = [v11 sourceUIElement];
        if (v12)
        {
          v13 = [NSMutableArray arrayWithObject:v11];
          [v9 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v30 = v11;
      v29 = [CKStructuredExtractionUtils liveTextResultsFromUIElements:v5];
      [v7 addObjectsFromArray:?];
      v33 = v5;
      v28 = [CKStructuredExtractionUtils personResultsFromUIElements:v5];
      [v7 addObjectsFromArray:?];
      v38 = 0;
      v14 = [NSDataDetector dataDetectorWithTypes:2104 error:&v38];
      v26 = v38;
      v27 = v14;
      v32 = v6;
      v15 = [CKStructuredExtractionUtils ddResultsForUIElements:v6 usingDataDetector:v14 withConfig:self->_config];
      v31 = v7;
      [v7 addObjectsFromArray:v15];
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
            v22 = [v21 sourceUIElement];
            v23 = [v9 objectForKeyedSubscript:v22];
            if (!v23)
            {
              v23 = objc_alloc_init(NSMutableArray);
            }

            [v23 addObject:v21];
            [v9 setObject:v23 forKeyedSubscript:v22];
          }

          v18 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v18);
      }

      [(LuceneContextRequest *)self _determineSurroundingEntities:v32 withUIElementToResultsMapping:v9];
      v24 = [(CKContextRequest *)self->_request extractionItems];
      v25 = [(LuceneContextRequest *)self _addHomeAppExtractionResults:v24];

      [v31 addObjectsFromArray:v25];
      v5 = v33;
    }
  }
}

- (id)_addHomeAppExtractionResults:(id)a3
{
  v4 = [NSMutableArray alloc];
  v5 = [(CKContextRequest *)self->_request extractionItems];
  v24 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

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
          v13 = [v10 title];
          v14 = [v12 initWithTitle:v13 query:0 url:0 category:0];

          v15 = [v10 identifier];
          [v14 setTopicId:v15];

          v16 = [NSSet setWithObject:v11];
          [v14 setTags:v16];

          [v14 setOnScreen:{objc_msgSend(v10, "isOnScreen")}];
          v17 = [v10 identifier];
          v18 = [v10 bundleIdentifier];
          v19 = [v10 isOnScreen];
          v20 = @"NO";
          if (v19)
          {
            v20 = @"YES";
          }

          v21 = [NSString stringWithFormat:@"Identifier: %@, BundleIdentifier: %@, On Screen:%@", v17, v18, v20];
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

- (id)_getTagTypeForExtractionItemType:(unint64_t)a3
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_100484318 + a3);
  }

  return v4;
}

- (void)_determineSurroundingEntities:(id)a3 withUIElementToResultsMapping:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableDictionary);
  if ([v6 count])
  {
    v9 = 0;
    v35 = v7;
    v36 = CKContextTagTypePlainTextLabel;
    v38 = v8;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:{v9, v35}];
      v11 = [v7 objectForKeyedSubscript:v10];
      v12 = v11;
      if (v11 && [v11 count])
      {
        v13 = [(ContextConfiguration *)self->_config surroundingEntitiesSearchRange];
        if (v9 >= v13)
        {
          v14 = v9 - v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v13 + v9;
        v16 = [v6 count];
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
          v21 = [v6 objectAtIndexedSubscript:v14];
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
                v28 = [v21 text];
                v26 = [v27 initWithTitle:v28 query:0 url:0 category:0];

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

        v7 = v35;
        v10 = v37;
      }

      ++v9;
    }

    while (v9 < [v6 count]);
  }
}

- (id)_determineTitleFromUIElements:(id)a3
{
  v4 = a3;
  [(ContextConfiguration *)self->_config minTitleUIFontSize];
  v6 = v5;
  v41 = self;
  [(ContextConfiguration *)self->_config minTitleUIFontSize];
  v8 = v7;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = v4;
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
          v14 = [v13 text];
          v15 = +[NSCharacterSet newlineCharacterSet];
          v16 = [v14 rangeOfCharacterFromSet:v15];

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
              v18 = [v13 text];
              v19 = [v18 length];
              v20 = [(ContextConfiguration *)self->_config minUIContextLength];

              if (v19 > v20)
              {
                v21 = [v40 text];
                v22 = [v13 text];
                v23 = [v21 isEqualToString:v22];

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

  v27 = [v26 text];
  if ([v27 length])
  {
    [(ContextConfiguration *)v41->_config minFontDeltaForTitle];
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

  v31 = [(CKContextRequest *)v41->_request title:v30];

  if (!v31)
  {
    v36 = 0;
    goto LABEL_40;
  }

LABEL_34:
  v32 = [v10 text];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = [(CKContextRequest *)v41->_request title];
  }

  v35 = v34;

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

  [(LuceneContextResult *)v36 setMinPrefix:[(ContextConfiguration *)v41->_config titleMinPrefix]];
LABEL_40:

  return v36;
}

+ (BOOL)_looksLikeTitleBarUIElement:(id)a3
{
  v3 = a3;
  v4 = [v3 className];
  v5 = [v4 isEqualToString:@"UILabel"];

  if (v5 && ([v3 superviewClassNames], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v3 superviewClassNames];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 isEqualToString:@"_UINavigationBarTitleControl"] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"_UINavigationBarContentView"))
          {
            v14 = 1;
            goto LABEL_16;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

  v75 = [(CKContextRequest *)self->_request preferredSceneIdentifiers];
  v3 = [(CKContextRequest *)self->_request uiElements];
  v4 = [v3 sortedArrayUsingSelector:"compareByPosition:"];
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
    v10 = v75;
    goto LABEL_67;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v83;
  v10 = v75;
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
        v14 = v8;
        v8 = 0;
        goto LABEL_22;
      }

      v14 = [v12 sceneIdentifier];
      if ([v10 count] && (objc_msgSend(v10, "containsObject:", v14) & 1) == 0)
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
        v34 = [v8 text];
        v35 = [v12 text];
        v72 = [v34 isEqualToString:v35];

        if (v72)
        {
          v10 = v75;
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

      v39 = [v12 superviewClassNames];
      v40 = [v39 count];

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
      v54 = [v8 className];
      if (v54)
      {

LABEL_55:
        v56 = [v8 className];
        v57 = [v12 className];
        v69 = [v56 isEqualToString:v57];

        v58 = v69;
        goto LABEL_56;
      }

      v55 = [v12 className];

      if (v55)
      {
        goto LABEL_55;
      }

      v58 = 1;
LABEL_56:
      v10 = v75;
      v5 = v78;
      if (!v58 || !v73 && !v71 && !v70)
      {
        goto LABEL_15;
      }

      v59 = [v8 text];
      v60 = [v12 text];
      v74 = [NSString stringWithFormat:@"%@ %@", v59, v60];

      v5 = v78;
      v10 = v75;
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

- (BOOL)_isRelevantUIForExtraction:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [v5 length];
  if (v6 < [(ContextConfiguration *)self->_config minUIContextLength])
  {
    goto LABEL_2;
  }

  v8 = [v4 text];
  v9 = [v8 length];
  v10 = [(ContextConfiguration *)self->_config maxUIContextLength];

  if (v9 > v10)
  {
    goto LABEL_5;
  }

  [v4 frameInWindow];
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

  v5 = [v4 superviewClassNames];
  if (!v5)
  {
LABEL_14:
    v7 = 1;
    goto LABEL_3;
  }

  v14 = [(ContextConfiguration *)self->_config structuredExtractionUIBlockList];
  v15 = [NSSet setWithArray:v5];
  v16 = [v14 intersectsSet:v15];

  if ((v16 & 1) == 0)
  {
    if (([v4 isOnScreen] & 1) == 0)
    {
      v17 = [(ContextConfiguration *)self->_config structuredExtractionUIOffScreenIgnoreList];
      v18 = [NSSet setWithArray:v5];
      v19 = [v17 intersectsSet:v18];

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

- (BOOL)_isLikelyLabel:(id)a3
{
  v4 = [a3 text];
  v5 = [v4 length];
  LOBYTE(self) = v5 <= [(ContextConfiguration *)self->_config surroundingEntitiesMaxLabelLength];

  return self;
}

- (void)filterResultsByTags:(id)a3
{
  v4 = a3;
  v5 = [(CKContextRequest *)self->_request type];
  if (v5 <= 0x14 && ((1 << v5) & 0x1B0438) != 0)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = self;
    v8 = [(CKContextResponse *)self->_response results];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 tags];
          if (v14)
          {
            v15 = v14;
            v16 = [v13 tags];
            v17 = [v16 intersectsSet:v4];

            if (v17)
            {
              [v7 addObject:v13];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [(CKContextResponse *)v18->_response setResults:v7];
  }
}

+ (id)setOfLinewiseStringsFromFieldValue:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    +[NSMutableOrderedSet orderedSet];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002AFE7C;
    v4 = v6[3] = &unk_100484000;
    v7 = v4;
    [v3 enumerateLinesUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)lookupTreasureMapForDomainHierarchy:(id)a3 fromTreasureMap:(id)a4 intoSet:(id)a5 isRelaxedMatchOut:(BOOL *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  if ([v12 length])
  {
    v20 = 0;
    v13 = [v10 objectsForKey:v12 intoSet:v11 keepWalkingOut:&v20];

    if (a6 && ![v13 count])
    {
      *a6 = 1;
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

        v17 = [v10 objectsForKey:v15 intoSet:v13 keepWalkingOut:&v20];

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
    v18 = v11;
    v15 = v12;
  }

  return v18;
}

+ (void)addTopicsForURL:(id)a3 withEngine:(id)a4 toResponse:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = objc_alloc_init(OrgApacheLuceneDocumentDocumentStoredFieldVisitor);
  v11 = [[OrgApacheLuceneUtilBytesRef alloc] initWithInt:4096];
  [(OrgApacheLuceneIndexStoredFieldVisitor *)v12 setReusableBytesRefWithOrgApacheLuceneUtilBytesRef:v11];

  [a1 _addTopicsForUrl:v10 withEngine:v9 documentVisitor:v12 toResponse:v8];
}

+ (void)_addTopicsForUrl:(id)a3 withEngine:(id)a4 documentVisitor:(id)a5 toResponse:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 scheme];
  v14 = [v9 host];
  v122 = [v10 treasureMap];
  v135 = [v10 reader];
  v121 = v14;
  if ([v13 length] && objc_msgSend(v14, "length") && v122 && v135)
  {
    v150 = 0;
    v113 = [qword_1005572A8 containsObject:v13];
    if (v113)
    {
      v15 = v14;
      if ([v14 hasSuffix:@"."])
      {
        v16 = [v14 substringToIndex:{objc_msgSend(v14, "length") - 1}];

        v15 = v16;
      }

      v112 = v13;
      v17 = [v15 lowercaseString];

      v18 = [objc_opt_class() lookupTreasureMapForDomainHierarchy:v17 fromTreasureMap:v122 intoSet:0 isRelaxedMatchOut:&v150];
      v115 = 0;
      v120 = 0;
      v121 = v17;
LABEL_9:
      v123 = 0;
      v126 = 0;
      v114 = 0;
      LOBYTE(v124) = 0;
      goto LABEL_71;
    }

    if (![qword_1005572B0 containsObject:v13])
    {
      if (![qword_1005572B8 containsObject:v13])
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_1002BBB30();
        }

        v120 = 0;
        v123 = 0;
        v126 = 0;
        v18 = 0;

        goto LABEL_165;
      }

      v112 = v13;
      v25 = [NSString stringWithFormat:@"%@://%@", v13, v14];
      v18 = [v122 objectsForKey:v25 intoSet:0 keepWalkingOut:0];

      v115 = 0;
      v120 = 0;
      goto LABEL_9;
    }

    v19 = v13;
    v20 = v14;
    v21 = [NSString stringWithFormat:@"%@://%@", v13, v14];
    v18 = [v122 objectsForKey:v21 intoSet:0 keepWalkingOut:0];
    v112 = v13;
    if (![v18 count])
    {
      v22 = [v121 lowercaseString];

      v20 = v22;
      v23 = [NSString stringWithFormat:@"%@://%@", v19, v22];

      v24 = [v122 objectsForKey:v23 intoSet:v18 keepWalkingOut:0];

      v21 = v23;
      v18 = v24;
    }

    v121 = v20;
    if ([v18 count])
    {
      v115 = 0;
      v120 = 0;
      v123 = 0;
      v126 = 0;
      v114 = 0;
      LOBYTE(v124) = 0;
LABEL_68:
      if (![v18 count])
      {
        v48 = objc_opt_class();
        v49 = [objc_opt_class() reverseFQDN:v20];
        v50 = [v48 lookupTreasureMapForDomainHierarchy:v49 fromTreasureMap:v122 intoSet:v18 isRelaxedMatchOut:&v150];

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
      v55 = [v10 indexId];
      [v54 recordURLLookupSucceeded:v53 bundleId:v113 ^ 1 indexId:v55 requestType:6];

      if (![v18 count] && (v124 & 1) == 0)
      {
        v13 = v112;
LABEL_164:

LABEL_165:
        goto LABEL_166;
      }

      v56 = objc_alloc_init(NSMutableArray);
      v57 = [v12 level1Topics];
      v58 = [v57 count];

      if (v58)
      {
        v59 = [v12 level1Topics];
        [v56 addObjectsFromArray:v59];
      }

      v127 = v56;
      v111 = v9;
      v60 = objc_alloc_init(NSMutableArray);
      v61 = [v12 level2Topics];
      v62 = [v61 count];

      if (v62)
      {
        v63 = [v12 level2Topics];
        [v60 addObjectsFromArray:v63];
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
        v13 = v112;
LABEL_140:
        if (v124)
        {
          if (v114)
          {
            [v56 removeAllObjects];
            [v125 removeAllObjects];
          }

          if (v126 | v123)
          {
            v100 = [[CKContextResult alloc] initWithTitle:v123 query:0 url:0 category:0];
            v101 = [v126 copy];
            [v100 setTopicId:v101];

            if (v100)
            {
              [v56 insertObject:v100 atIndex:0];
            }
          }

          if (v120 | v115)
          {
            v102 = [[CKContextResult alloc] initWithTitle:v115 query:0 url:0 category:0];
            v103 = [v120 copy];
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

        [v12 setLevel1Topics:v56];
        [v12 setLevel2Topics:v125];
LABEL_163:

        goto LABEL_164;
      }

      v65 = v64;
      v109 = v12;
      v66 = 0;
      v67 = 0;
      v129 = 0;
      v68 = *v143;
      v131 = v11;
      v133 = v10;
      v128 = v18;
LABEL_85:
      v69 = 0;
      while (1)
      {
        if (*v143 != v68)
        {
          objc_enumerationMutation(v18);
        }

        v70 = [*(*(&v142 + 1) + 8 * v69) intValue];
        v71 = v70;
        if ((v70 & 0x80000000) != 0)
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
          v72 = v70 & 7;
          if ((v70 & 7) > 4)
          {
            v67 = v72 - 3;
            v66 = 1;
          }

          else if ((v72 - 2) >= 3)
          {
            if ((v70 & 7) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_1002BBBA8(v153, v71, v154);
            }
          }

          else
          {
            v66 = 0;
            v67 = v70 & 7;
          }

          v74 = v71 >> 3;
          if (v71 > 0x1FF)
          {
            v75 = v67;
            v76 = v74 - 64;
            if ((v74 - 64) >= [v10 maxDoc])
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
            v77 = [v11 getDocument];
            v78 = v77;
            if (!v77)
            {
              goto LABEL_134;
            }

            [v77 removeAllFields];
            [v135 documentWithInt:v74 - 64 withOrgApacheLuceneIndexStoredFieldVisitor:v11];
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
              v85 = [v80 numericValue];
              v86 = v85;
              if (!v85)
              {
                goto LABEL_169;
              }

              v87 = [v85 intValue];
              if (v87 < 1)
              {
                goto LABEL_169;
              }

              v88 = v87;
              if (v87 >= [v133 maxDoc])
              {
                goto LABEL_169;
              }

              [v78 removeAllFields];
              [v135 documentWithInt:v88 withOrgApacheLuceneIndexStoredFieldVisitor:v131];
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

                v11 = v131;
                v10 = v133;
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
              v97 = [v81 title];

              v91 = 0;
              v94 = v137;
              v96 = v127;
              v95 = v125;
              if (!v97)
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

            v12 = v109;
            v9 = v111;
            v13 = v112;
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

    if (![v112 isEqualToString:@"app"] || (objc_msgSend(v9, "query"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "length"), v26, !v27))
    {
      v115 = 0;
      v120 = 0;
      v123 = 0;
      v126 = 0;
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

        v47 = [v122 objectsForKey:v46 intoSet:v18 keepWalkingOut:0];

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

    v108 = v12;
    v110 = v9;
    v130 = v11;
    v132 = v10;
    [NSURLComponents componentsWithURL:v9 resolvingAgainstBaseURL:0];
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v141 = v149 = 0u;
    v28 = [v141 queryItems];
    v29 = [v28 countByEnumeratingWithState:&v146 objects:v158 count:16];
    if (!v29)
    {
      v115 = 0;
      v120 = 0;
      v123 = 0;
      v126 = 0;
      v114 = 0;
      LOBYTE(v124) = 0;
      goto LABEL_60;
    }

    v30 = v29;
    v115 = 0;
    v120 = 0;
    v123 = 0;
    v126 = 0;
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
        objc_enumerationMutation(v28);
      }

      v34 = *(*(&v146 + 1) + 8 * v32);
      v35 = [v34 value];
      v36 = [v35 length];

      if (v36)
      {
        break;
      }

      v18 = v33;
LABEL_50:
      if (v30 == ++v32)
      {
        v44 = [v28 countByEnumeratingWithState:&v146 objects:v158 count:16];
        v30 = v44;
        if (!v44)
        {
LABEL_60:

          v12 = v108;
          v9 = v110;
          v11 = v130;
          v10 = v132;
          goto LABEL_61;
        }

        goto LABEL_24;
      }
    }

    v37 = [v34 name];
    if ([v37 isEqualToString:@"level1.id"])
    {
      v38 = v126 == 0;
    }

    else
    {
      v38 = 0;
    }

    if (v38)
    {
      v126 = [v34 value];
      v124 = 1;
      v18 = v33;
LABEL_49:

      goto LABEL_50;
    }

    if ([v37 isEqualToString:@"level1.title"])
    {
      v39 = v123 == 0;
    }

    else
    {
      v39 = 0;
    }

    v18 = v33;
    if (v39)
    {
      v123 = [v34 value];
    }

    else
    {
      if ([v37 isEqualToString:@"level2.id"])
      {
        v40 = v120 == 0;
      }

      else
      {
        v40 = 0;
      }

      if (v40)
      {
        v120 = [v34 value];
      }

      else
      {
        if (![v37 isEqualToString:@"level2.title"] || v115)
        {
          if ([v37 isEqualToString:@"override"])
          {
            v42 = [v34 value];
            v43 = [v42 isEqualToString:@"all"];

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

        v115 = [v34 value];
      }
    }

    v41 = 1;
LABEL_48:
    v124 = v41;
    goto LABEL_49;
  }

LABEL_166:
}

+ (id)stripHostToDomain:(id)a3 level:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 length];
  if (!a4)
  {
LABEL_5:
    v8 = [v5 substringFromIndex:(v6 + 1)];
LABEL_6:
    v9 = v8;
    goto LABEL_7;
  }

  v7 = 0;
  while (1)
  {
    v6 = [v5 lastIndexOf:46 fromIndex:v6 - 1];
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    if (a4 == ++v7)
    {
      goto LABEL_5;
    }
  }

  if (v7 >= a4 - 1)
  {
    v8 = v5;
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = a4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unexpected hostname for level %lu", &v11, 0xCu);
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)hostToCapitalizedName:(id)a3
{
  v3 = a3;
  if (![v3 length])
  {
    goto LABEL_6;
  }

  v4 = [v3 indexOf:46];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = [v3 substring:0 endIndex:v4];

    v3 = v5;
  }

  if ([v3 length])
  {
    v6 = [v3 capitalizedString];
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  return v6;
}

- (void)_tokenizeText
{
  v3 = [(CKContextRequest *)self->_request text];
  v4 = [(CKContextResponse *)self->_response languageTag];
  v5 = [LanguageUtilities simplifyTextForSearch:v3 withLanguage:v4];
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
  v12 = [(ContextConfiguration *)self->_config luceneIgnoreAfterPosition];
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
  v13 = [(ContextConfiguration *)self->_config luceneMaxUniqueTotalTokens];
  v25 = [(ContextConfiguration *)self->_config luceneMaxUniqueNotSkippedTokens];
  v24 = v5;
  v23 = [(ContextConfiguration *)self->_config luceneMaxUniquePrimaryTokens];
  v14 = v3;
  v15 = [(ContextConfiguration *)self->_config bigramMaxEnclosedStopwords];
  v21 = v4;
  v22 = v14;
  v16 = [(ContextConfiguration *)self->_config bigramMaxOffsetDelta];
  v17 = v15 + 1;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1002B1A78;
  v26[3] = &unk_100484078;
  v31 = &v83;
  v20 = v9;
  v27 = v20;
  v28 = self;
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
  v46 = v12;
  v41 = v75;
  v19 = v24;
  v52 = v6 - 1;
  v30 = v19;
  v42 = v53;
  v43 = v55;
  v44 = v90;
  v47 = v17;
  v48 = v16;
  v45 = v77;
  v49 = v23;
  v50 = v25;
  v51 = v13;
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

- (id)inspectTitle:(id)a3 titleForTokenization:(id)a4 conditionals:(id)a5
{
  v7 = a3;
  v30 = a4;
  v29 = a5;
  v8 = objc_opt_new();
  v28 = v7;
  if (![v7 length])
  {
    v10 = v8;
    goto LABEL_40;
  }

  v27 = v8;
  [v8 setTitle:v7];
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_1002AA110;
  v66 = sub_1002AA120;
  v67 = objc_alloc_init(NSMutableSet);
  [v8 setImportantTokens:v63[5]];
  if (!v30)
  {
    v30 = v7;
  }

  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_1002AA110;
  v60 = sub_1002AA120;
  v61 = objc_opt_new();
  [v8 setTokenString:v57[5]];
  if (v30)
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
  v46 = self;
  v48 = &v56;
  v14 = v27;
  v47 = v14;
  v49 = &v62;
  v50 = v54;
  v51 = v52;
  sub_1002B198C(v9, v44);
  if (!v29 || ![v29 count])
  {
    goto LABEL_38;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = v29;
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
          v34 = self;
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

- (id)_readTermInfo:(id)a3 tokenTypeOut:(unint64_t *)a4 weightOut:(float *)a5 docIdOut:(int *)a6
{
  v7 = a3;
  v51 = [(LuceneContextRequest *)self textTermsEnum];
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
  v11 = [v51 seekCeilWithOrgApacheLuceneUtilBytesRef:{v7, v45}];
  v12 = [v11 ordinal];

  if (v12 == 2)
  {
    v13 = [v51 term];
    v14 = v13;
    if (!v13)
    {
      goto LABEL_72;
    }

    v15 = *(v13 + 20);
    v16 = v7[5];
    if (v15 <= v16)
    {
      goto LABEL_72;
    }

    v17 = *(v13 + 8) + 12 + *(v13 + 16);
    v18 = *(v17 + v16);
    if ((v18 - 65) > 0x19 || memcmp((*(v7 + 1) + 12 + v7[4]), (*(v13 + 8) + 12 + *(v13 + 16)), v7[5]))
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
          if (a6 && v22 <= 0x7FFFFFFFFFFFFFFELL)
          {
            if (self->_debugLogEnabled)
            {
              v26 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                v29 = [(OrgApacheLuceneUtilBytesRef *)v14 utf8ToString];
                *buf = v45;
                v58 = v22;
                v59 = 2112;
                v60 = v29;
                _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Found docId reference to %i in %@", buf, 0x12u);
              }
            }

            v20 = 0;
            *a6 = v22;
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
            if (v7)
            {
              [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool reclaimSpaceWithOrgApacheLuceneUtilBytesRef:v7];
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
                v43 = [v7 utf8ToString];
                sub_1002BBCC8(v43, buf, v44);
              }
            }

            goto LABEL_72;
          }

          v34 = v7[5];
          v35 = v34 + 2;
          if (v15 < v34 + 2 || memchr((v17 + v35), 89, v15 - v35))
          {
            goto LABEL_72;
          }

          [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool reclaimSpaceWithOrgApacheLuceneUtilBytesRef:v7];
          v31 = [[OrgApacheLuceneUtilBytesRef alloc] initWithByteArray:v14->bytes_ withInt:(v14->offset_ + v35) withInt:(v14->length_ - v35)];

          v36 = [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool tryAppendWithOrgApacheLuceneUtilBytesRef:v31];

          v30 = 1;
          v7 = v36;
LABEL_56:
          [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool reclaimSpaceWithOrgApacheLuceneUtilBytesRef:v7];
          v32 = [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool tryAppendWithOrgApacheLuceneUtilBytesRef:v31];

          v33 = v30 & v50;
          v7 = v32;
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
              v28 = [(OrgApacheLuceneUtilBytesRef *)v14 utf8ToString];
              *buf = v45;
              v58 = v18;
              v59 = 2112;
              v60 = v28;
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

  if (v12 != 1)
  {
    goto LABEL_73;
  }

  (v8[2])(v8);
  v32 = v7;
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
        v39 = [v32 utf8ToString];
        sub_1002BBD1C(v39, buf, v40);
      }

      v7 = v32;
      goto LABEL_72;
    }

    v7 = v32;
    goto LABEL_73;
  }

LABEL_76:
  if (a4)
  {
    *a4 = v9;
  }

  if (a5)
  {
    *a5 = *(v54 + 6);
  }

  _Block_object_dispose(&v53, 8);

  return v32;
}

- (id)_tokenInfoForToken:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    v13 = qword_100557280;
    goto LABEL_41;
  }

  v30 = -1;
  v31 = -1.0;
  v29 = 3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(ComAppleContextkitUtilBytesRefPool *)self->_bytesRefPool tryAppendWithJavaLangCharSequence:v4];
  if (!self->_useBloomFilter && !self->_minHashPriorityQueue)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v7 = [(LuceneContextRequest *)self _computeHashesWithSeed:1 forBytesRef:v6 reuse:self->_hashesTokenReuse, v29];
  objc_storeStrong(&self->_hashesTokenReuse, v7);
  v8 = [v7 hashes];
  minHashPriorityQueue = self->_minHashPriorityQueue;
  v10 = [NSNumber numberWithInt:*v8];
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

  if ([v4 length] >= 3)
  {
LABEL_13:
    WeakRetained = objc_loadWeakRetained(&self->_engine);
    v15 = [WeakRetained wordlist];

    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = objc_loadWeakRetained(&self->_engine);
    v17 = [v16 wordlist];
    v18 = [v17 words];
    v19 = [v18 objectForKeyedSubscript:v4];

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
            if ([v4 length] >= self->_minTokenLengthPrimary)
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
          v13 = [(TokenInfo *)v25 initWithToken:v4 withHashes:v26 term:v24 type:v29 weight:v30 docId:v27];

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

    v20 = [v19 intValue];
    if (v20 != -1)
    {
      if (!v20)
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

- (id)_lookupBigramTermForTokenA:(id)a3 tokenB:(id)a4 tokenTypeOut:(unint64_t *)a5 docIdOut:(int *)a6
{
  bytesRefPool = self->_bytesRefPool;
  v11 = a4;
  v12 = [a3 token];
  v13 = [v11 token];

  v14 = [(ComAppleContextkitUtilBytesRefPool *)bytesRefPool tryAppendWithJavaLangCharSequence:v12 withChar:95 withJavaLangCharSequence:v13];

  v15 = [(LuceneContextRequest *)self _readTermInfo:v14 tokenTypeOut:a5 weightOut:0 docIdOut:a6];

  if (!v15)
  {
    goto LABEL_4;
  }

  if (*a5 <= 1)
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

- (BOOL)_isIntermediateNameBigramCandidate:(id)a3 tokenB:(id)a4 bothStartUppercase:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v7 != v8;
  if (v7 != v8 && [v7 count] <= 3 && objc_msgSend(v8, "count") <= 3 && objc_msgSend(v7, "startsQuotedCount") && objc_msgSend(v8, "endsQuotedCount"))
  {
    v9 = 1;
  }

  else if (v7[1] != 8 && (![TokenInfo isSurnameType:?]|| !a5 && ![TokenInfo isPrimaryType:v7[1]]) || ![TokenInfo isSurnameType:v8[1]]|| !a5 && ![TokenInfo isPrimaryType:v8[1]])
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
  v132 = [v3 clauses];
  v4 = objc_opt_new();
  [v4 setMinimumNumberShouldMatchWithInt:0];
  v129 = v4;
  v134 = [v4 clauses];
  v131 = [(ContextConfiguration *)self->_config luceneForceSecondaryAfterPosition];
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v5 = self->_tokenInfosSequence;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v152 objects:v157 count:16];
  v144 = self;
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
          v12 = [v10 isPrimary];
          v13 = 0.0;
          v14 = v145;
LABEL_27:
          v31 = [v10 isTermResultWithPrimary:v12 & (v14 ^ 1) config:self->_config];
          if ((v31 & 0x8000000000000000) == 0)
          {
            v32 = [(LuceneContextRequest *)self _resultForTokenInfo:v10 minPrefix:v31];
            v33 = v32;
            if (v32)
            {
              v34 = v14;
              v35 = [v32 docId];

              if (v35)
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
                    v41 = [v10 token];
                    v42 = weakKeywordTermResults;
                    v14 = v34;
                    [(NSMutableDictionary *)v42 setObject:v33 forKey:v41];

                    self = v144;
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
            if (v12)
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
            v49 = [v10 token];
            v50 = [v10 count];
            v51 = [v10 firstOccurence];
            v52 = [v10 firstOccurenceUnique];
            v53 = [v10 term];
            v54 = [v53 text];
            v125 = v51;
            self = v144;
            [v46 appendFormat:@"%@\t%f\t%f\t%@\n%4u\t%8u\t%8u\t%@\n", v45, *&v48, *&v13, v49, v50, v125, v52, v54];

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

        v12 = [v10 isPrimary];
        v16 = [ComAppleProactiveLuceneScoreInterceptTermQuery alloc];
        v17 = [v10 term];
        v18 = self;
        v19 = v17;
        v20 = 128;
        if (v12)
        {
          v20 = 112;
        }

        v21 = [(ComAppleProactiveLuceneScoreInterceptTermQuery *)v16 initWithOrgApacheLuceneIndexTerm:v17 withComAppleProactiveLuceneScoreInterceptTarget:*(&v18->super.isa + v20)];

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
        if (((v12 ^ 1 | v145) & 1) == 0)
        {
          if (v139 > 63)
          {
            v14 = 1;
            goto LABEL_23;
          }

          v29 = v131 <= [v10 firstOccurence];
        }

        v14 = v29;
        if (((v12 ^ 1 | v29) & 1) == 0)
        {
          v14 = 0;
          ++v139;
          v30 = v132;
          self = v144;
LABEL_26:
          [v30 addWithId:v28];

          v13 = v25;
          v5 = v140;
          goto LABEL_27;
        }

LABEL_23:
        self = v144;
        if (v136 > 255)
        {

          v5 = v140;
          goto LABEL_53;
        }

        ++v136;
        v30 = v134;
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
      v63 = [v58 term];
      v146 = [v63 text];

      v64 = 0.0;
      if (!v60)
      {
        goto LABEL_91;
      }

      [v58 adjustCounts];
      v65 = [v58 term];
      if (!v65)
      {
        v69 = [v58 tokenA];
        v70 = [v58 tokenB];
        v66 = [(LuceneContextRequest *)self _lookupBigramTermForTokenA:v69 tokenB:v70 tokenTypeOut:&v147 docIdOut:0];

        if (!v66)
        {
LABEL_113:
          v108 = v146;
          goto LABEL_114;
        }

        v71 = [v66 text];

        v146 = v71;
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

      v66 = v65;
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
          v78 = v132;
          goto LABEL_88;
        }
      }

      else
      {
        if (v139 <= 63)
        {
          if (v131 <= [v58 firstOccurence])
          {
            v109 = [v58 tokenA];
            v110 = [v109 firstOccurence];

            v111 = [v58 tokenB];
            v112 = [v111 firstOccurence];

            if (v110 >= v112)
            {
              v113 = v112;
            }

            else
            {
              v113 = v110;
            }

            self = v144;
            v75 = v131 <= v113;
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
        v78 = v134;
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
          v83 = [v58 tokenA];
          v84 = [v83 token];

          v85 = [v58 tokenB];
          v86 = [v85 token];

          v87 = [v81 docId];

          if (v87)
          {
            v88 = [(NSMutableArray *)self->_termResultsWithDocument count];
            v89 = self;
            if (v88 < [(ContextConfiguration *)self->_config luceneMaxTermAndBigramResultsWithDocument])
            {
              termResultsWithDocument = self->_termResultsWithDocument;
              goto LABEL_100;
            }

            goto LABEL_101;
          }

          v91 = [(NSMutableArray *)self->_termResults count];
          v89 = self;
          if (v91 >= [(ContextConfiguration *)self->_config luceneMaxTermAndBigramResults])
          {
            goto LABEL_101;
          }

          v92 = [v58 tokenB];
          v93 = v92;
          if (v92[1] == 5)
          {

            v89 = v144;
            goto LABEL_99;
          }

          if ([v128 containsObject:v84])
          {

            v89 = v144;
            goto LABEL_101;
          }

          v114 = [v128 containsObject:v86];

          v89 = v144;
          if ((v114 & 1) == 0)
          {
LABEL_99:
            [v128 addObject:v84];
            [v128 addObject:v86];
            termResultsWithDocument = v89->_termResults;
LABEL_100:
            [(NSMutableArray *)termResultsWithDocument addObject:v81];
          }

LABEL_101:
          v94 = [(NSMutableDictionary *)v89->_weakKeywordTermResults objectForKey:v84];
          if (v94)
          {
            [(NSMutableDictionary *)v89->_weakKeywordTermResults removeObjectForKey:v84];
            [(NSMutableArray *)v89->_termResults removeObject:v94];
          }

          v95 = [(NSMutableDictionary *)v89->_weakKeywordTermResults objectForKey:v86];

          if (v95)
          {
            [(NSMutableDictionary *)v89->_weakKeywordTermResults removeObjectForKey:v86];
            [(NSMutableArray *)v89->_termResults removeObject:v95];
          }

          self = v89;
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
      v101 = [v58 tokenA];
      v102 = [v101 token];
      v103 = [v58 tokenB];
      v104 = [v103 token];
      v105 = [v58 count];
      v106 = [v58 firstOccurence];
      v107 = [v58 firstOccurenceUnique];
      v108 = v146;
      [v98 appendFormat:@"%@\t%f\t%f\t%@ %@\n%4u\t%8u\t%8u\t%@\n", v135, *&v100, v64, v102, v104, v105, v106, v107, v146, context];

      self = v144;
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
  if (([v134 isEmpty] & 1) == 0)
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
    v120 = [v130 clauses];
    v121 = [v120 size];
    v122 = [v129 clauses];
    -[CKContextResponse addDebug:](response, "addDebug:", @"Tokens: %lu, Phrases: %lu, Primary queries: %lu, Secondary queries: %lu", v118, v119, v121, [v122 size]);

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

- (id)_bestTypeVariantForTokenInfo:(id)a3 allowingAllCaps:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 offsets];
  v8 = [v7 count];

  if (!v8)
  {
    v33 = [v6 token];
    v34 = [v33 localizedCapitalizedString];

    goto LABEL_39;
  }

  v38 = a4;
  v43 = [(CKContextRequest *)self->_request text];
  v9 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = [v6 offsets];
  v11 = [v10 countByEnumeratingWithState:&v48 objects:v53 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v48 + 1) + 8 * i) rangeValue];
        v17 = [v43 substring:v15 endIndex:v16];
        [v9 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v12);
  }

  v39 = v6;
  v42 = [v6 token];
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
            v42 = v32;
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
    v36 = v41;
    v34 = v42;
  }

  else
  {
    v35 = v41;
    v34 = v42;
    if (v40 && v38)
    {
      goto LABEL_38;
    }

    v36 = [v42 localizedCapitalizedString];
  }

  v34 = v36;
LABEL_38:

  v6 = v39;
LABEL_39:

  return v34;
}

- (id)_resultForTokenInfo:(id)a3 minPrefix:(int64_t)a4
{
  v6 = a3;
  v76 = self;
  v77 = v6;
  if (![TokenInfo isSurnameType:v6[1]])
  {
    v51 = [v6 count];
    if (self->_config->_luceneTermResultMinCount <= v51 - [v6 partialNgramCount])
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

  v7 = [v6 precedingTokens];
  if (![v7 count])
  {
LABEL_37:
    if (([v6 isQuoted] & 1) == 0)
    {
      if (a4 >= 1)
      {

        goto LABEL_40;
      }

      a4 = 1;
    }

    goto LABEL_43;
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v80 objects:v84 count:16];
  if (!v9)
  {

    goto LABEL_37;
  }

  v10 = v9;
  v73 = v7;
  v75 = a4;
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
      v16 = [v14 nonretainedObjectValue];
      if (v16)
      {
        if (v15 >= self->_config->_luceneGivenSurnameMinGivenCount || self->_config->_luceneGivenSurnameEarlyMentionLimit >= [v6 firstOccurence])
        {
LABEL_15:
          if (v15 <= v11)
          {
            goto LABEL_19;
          }

          v20 = v79;
          v11 = v15;
          v79 = v16;
        }

        else
        {
          v17 = [BigramKey alloc];
          v18 = [v16 token];
          v19 = [v6 token];
          v20 = [(BigramKey *)v17 initWithTokenA:v18 tokenB:v19];

          self = v76;
          v21 = [(NSMapTable *)v76->_bigramInfos objectForKey:v20];
          v22 = v21;
          if (v21 && [v21 isPrimary])
          {

            v6 = v77;
            v8 = v78;
            goto LABEL_15;
          }

          v6 = v77;
        }

        v8 = v78;
      }

LABEL_19:
    }

    v10 = [v8 countByEnumeratingWithState:&v80 objects:v84 count:16];
  }

  while (v10);

  v7 = v73;
  a4 = v75;
  if (!v79)
  {
    goto LABEL_37;
  }

  v23 = [(LuceneContextRequest *)self _bestTypeVariantForTokenInfo:v79 allowingAllCaps:0];
  v24 = [(LuceneContextRequest *)self _bestTypeVariantForTokenInfo:v6 allowingAllCaps:0];
  v25 = v6;
  v26 = [LuceneContextResult alloc];
  v72 = v24;
  v74 = v23;
  v27 = [NSString stringWithFormat:@"%@ %@", v23, v24];
  v28 = self;
  v29 = [(LuceneContextResult *)v26 initWithText:v27];

  v30 = [(BigramKey *)v79 term];
  v31 = [v30 text];
  v32 = [v25 term];
  v33 = [v32 text];
  v34 = [NSString stringWithFormat:@"%@ %@", v31, v33];
  [(LuceneContextResult *)v29 setTerm:v34];

  v35 = [(ContextConfiguration *)v28->_config luceneTermResultUnigramScoreMultiplier];
  v36 = powf(([v25 firstOccurenceUnique] + 1), -[ContextConfiguration luceneTermResultFirstOccurrencePowerLawDecay](v28->_config, "luceneTermResultFirstOccurrencePowerLawDecay")) * v35;
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
  if ([(ContextConfiguration *)v28->_config tagsEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&v28->_engine);
    v43 = [WeakRetained tagsMap];

    if (v43)
    {
      v44 = [NSSet setWithObject:@"CK_PERSON_GIVEN_SURNAME"];
      [(LuceneContextResult *)v29 setTags:v44];
    }
  }

  if (v28->_debug)
  {
    if ([(BigramKey *)v79 isPrimary])
    {
      v45 = @"+";
    }

    else
    {
      v45 = @"?";
    }

    v46 = [(BigramKey *)v79 term];
    v47 = [v46 text];
    v48 = [v77 term];
    v49 = [v48 text];
    v50 = [NSString stringWithFormat:@"%@%@ +%@", v45, v47, v49];
    [(LuceneContextResult *)v29 setDebug:v50];
  }

  a4 = v75;
  if (!v29)
  {
LABEL_43:
    v52 = [LuceneContextResult alloc];
    v53 = [(LuceneContextRequest *)v76 _bestTypeVariantForTokenInfo:v77 allowingAllCaps:1];
    v29 = [(LuceneContextResult *)v52 initWithText:v53];

    v54 = [v77 term];
    v55 = [v54 text];
    [(LuceneContextResult *)v29 setTerm:v55];

    v56 = [(ContextConfiguration *)v76->_config luceneTermResultUnigramScoreMultiplier];
    v57 = powf(([v77 firstOccurenceUnique] + 1), -[ContextConfiguration luceneTermResultFirstOccurrencePowerLawDecay](v76->_config, "luceneTermResultFirstOccurrencePowerLawDecay")) * v56;
    v58 = v57 * [v77 count];
    [v77 weight];
    *&v60 = v58 * ((v59 + 1.0) * (v59 + 1.0));
    [(LuceneContextResult *)v29 setLuceneScore:v60];
    if (v76->_debug)
    {
      v61 = [v77 term];
      v62 = qword_1005572A0;

      if (v61 == v62)
      {
        v63 = [v77 token];
        [NSString stringWithFormat:@"?%@", v63];
      }

      else
      {
        v63 = [(LuceneContextResult *)v29 term];
        [NSString stringWithFormat:@"+%@", v63];
      }
      v64 = ;
      [(LuceneContextResult *)v29 setDebug:v64];
    }
  }

  [(LuceneContextResult *)v29 setMinPrefix:a4];
  v6 = v77;
  v65 = [v77 docId];
  if ((v65 & 0x80000000) == 0)
  {
    v66 = v65;
    v67 = [v77 count];
    v68 = [(ContextConfiguration *)v76->_config minTokenCountToAugment]<= v67;
    v6 = v77;
    if (v68)
    {
      [(LuceneContextRequest *)v76 _augmentResult:v29 withDocId:v66 checkLanguageRedirect:1];
    }
  }

  if (v76->_debug)
  {
    [(LuceneContextResult *)v29 luceneScore];
    v70 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0 %f T (token result, count:%u, minPrefix:%li, docId:%i)", v69, [v77 count], a4, objc_msgSend(v77, "docId"));
    [(LuceneContextResult *)v29 setCategory:v70];

    v6 = v77;
  }

  [(LuceneContextResult *)v29 setExactMatch:1];
LABEL_55:

  return v29;
}

- (id)_resultForBigramInfo:(id)a3 minPrefix:(int64_t)a4
{
  v6 = a3;
  v7 = v6[1];
  if (![TokenInfo isTopicType:v7])
  {
    goto LABEL_4;
  }

  if (v7 != 3)
  {
    goto LABEL_5;
  }

  v8 = [v6 count];
  v9 = [v6 tokenA];
  v10 = [v9 partialNgramCount];
  v11 = [v6 tokenB];
  v12 = v8 - (v10 + [v11 partialNgramCount]);

  if (v12 >= 2)
  {
LABEL_5:
    v14 = [v6 tokenA];
    v15 = [(LuceneContextRequest *)self _bestTypeVariantForTokenInfo:v14 allowingAllCaps:1];

    v16 = [v6 tokenB];
    v17 = [(LuceneContextRequest *)self _bestTypeVariantForTokenInfo:v16 allowingAllCaps:1];

    v18 = @"%@ %@";
    if ([LanguageUtilities isChineseJapaneseToken:v15]&& [LanguageUtilities isChineseJapaneseToken:v17])
    {
      v18 = @"%@%@";
    }

    v19 = [NSString stringWithFormat:v18, v15, v17];
    v13 = [[LuceneContextResult alloc] initWithText:v19];
    v20 = [v6 term];
    v21 = [v20 text];
    if (v21)
    {
      [(LuceneContextResult *)v13 setTerm:v21];
    }

    else
    {
      v46 = a4;
      v22 = v15;
      v23 = v17;
      v24 = v19;
      v25 = [v6 termSequence];
      v26 = [NSString stringWithFormat:@"%@", v25];
      [(LuceneContextResult *)v13 setTerm:v26];

      v19 = v24;
      v17 = v23;
      v15 = v22;
      a4 = v46;
    }

    [(LuceneContextResult *)v13 setMinPrefix:a4];
    v27 = [v6 docId];
    if ((v27 & 0x80000000) == 0)
    {
      v28 = v27;
      v29 = [v6 count];
      if ([(ContextConfiguration *)self->_config minTokenCountToAugment]<= v29)
      {
        [(LuceneContextRequest *)self _augmentResult:v13 withDocId:v28 checkLanguageRedirect:1];
      }
    }

    v30 = [(ContextConfiguration *)self->_config luceneTermResultBigramScoreMultiplier];
    v31 = powf(([v6 firstOccurenceUnique] + 1), -[ContextConfiguration luceneTermResultFirstOccurrencePowerLawDecay](self->_config, "luceneTermResultFirstOccurrencePowerLawDecay")) * v30;
    v32 = v31 * [v6 count];
    [v6 weight];
    v34 = fmaxf(v33, 1.0);
    *&v35 = v32 * ((v34 + 1.0) * (v34 + 1.0));
    [(LuceneContextResult *)v13 setLuceneScore:v35];
    if (self->_debug)
    {
      [(LuceneContextResult *)v13 luceneScore];
      v37 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0 %f B (token bigram result, count:%u, minPrefix:%li, docId:%i)", v36, [v6 count], a4, objc_msgSend(v6, "docId"));
      [(LuceneContextResult *)v13 setCategory:v37];

      v38 = [v6 term];
      v39 = qword_1005572A0;

      if (v38 == v39)
      {
        v40 = [v6 tokenA];
        v41 = [v40 token];
        v42 = [v6 tokenB];
        v43 = [v42 token];
        v44 = [NSString stringWithFormat:@"?%@_%@", v41, v43];
        [(LuceneContextResult *)v13 setDebug:v44];
      }

      else
      {
        v40 = [(LuceneContextResult *)v13 term];
        v41 = [NSString stringWithFormat:@"+%@", v40];
        [(LuceneContextResult *)v13 setDebug:v41];
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

- (void)_searchTopKWithQuery:(id)a3 topK:(unint64_t)a4
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1002B6B7C;
  v12 = &unk_100484140;
  v6 = a3;
  v13 = v6;
  v14 = self;
  v15 = a4;
  [Util elapsedMillisForBlock:&v9 enableTiming:self->_timing];
  if (self->_timing)
  {
    v8 = v7;
    [(CKContextResponse *)self->_response addDebug:@"tSearch:%f", v8, v9, v10, v11, v12];
  }
}

- (void)_processResults:(id)a3 topK:(unint64_t)a4
{
  v6 = a3;
  v76 = [(CKContextResponse *)self->_response results];
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
  v80 = self;
  [(ContextConfiguration *)self->_config luceneMinRelativeScore];
  v14 = v13;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v75 = v6;
  v15 = v6[2];
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

          v22 = [LuceneContextRequest _processResult:v80 score:"_processResult:score:relativeScore:" relativeScore:?];
          if (v22)
          {
            [v76 addObject:v22];
            self = (self + 1);
            if (self >= a4)
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

  v23 = v80;
  NSFreeMapTable(v80->_perDocumentObjects);
  perDocumentObjects = v80->_perDocumentObjects;
  v80->_perDocumentObjects = 0;

  v77 = objc_opt_new();
  LODWORD(v15) = [(CKContextRequest *)v80->_request dontSkip];
  v25 = [(ContextConfiguration *)v80->_config minPrefixAdditionalResults];
  v88 = 0;
  v74 = v25;
  if ((v15 & 1) == 0 && (v25 & 0x8000000000000000) == 0)
  {
    v88 = objc_opt_new();
  }

  v84 = v15;
  if (v80->_haveFingerprintDupes || v80->_needFingerprintPostprocessing)
  {
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v26 = v76;
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
          v31 = [v30 fingerprintPrimary];
          if (v80->_needFingerprintPostprocessing && ([v30 skip] & 1) == 0 && v31)
          {
            v32 = [(NSMutableDictionary *)v80->_fingerprintsPrimary objectForKey:v31];
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

          v35 = [v30 foldedResults];
          if (v35)
          {
            [(LuceneContextRequest *)v80 _rerankFoldedResults:v35];
            [v30 finalizeFoldedResult];
            if ((v15 & 1) == 0)
            {
              [v88 addObjectsFromArray:v35];
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
              v36 = [v30 category];
              v15 = [v36 stringByAppendingString:@" (would skip)"];
              [v30 setCategory:v15];

              LODWORD(v15) = v84;
            }

            else if (v80->_needFingerprintPostprocessing)
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
      if (v80->_haveFingerprintDupes)
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
              v39 = [v38 foldedResults];

              if (v39)
              {
                v99 = 0u;
                v100 = 0u;
                v97 = 0u;
                v98 = 0u;
                v86 = v38;
                v40 = [v38 foldedResults];
                v41 = [v40 countByEnumeratingWithState:&v97 objects:v115 count:16];
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
                        objc_enumerationMutation(v40);
                      }

                      v46 = *(*(&v97 + 1) + 8 * j);
                      if ((v44 & 1) == 0)
                      {
                        v47 = [*(*(&v97 + 1) + 8 * j) category];
                        v48 = [v47 stringByAppendingString:@" (would skip)"];
                        [v46 setCategory:v48];
                      }

                      [v37 addObject:v46];
                      v44 = 0;
                    }

                    v42 = [v40 countByEnumeratingWithState:&v97 objects:v115 count:16];
                    v44 = 0;
                  }

                  while (v42);
                }

                [v86 setFoldedResults:0];
                v23 = v80;
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
          v53 = [v52 minPrefix];
          if (v53 <= v74)
          {
            v54 = v74;
          }

          else
          {
            v54 = v53;
          }

          [v52 setMinPrefix:v54];
        }

        v50 = [v15 countByEnumeratingWithState:&v93 objects:v114 count:16];
      }

      while (v50);
    }

    [v76 addObjectsFromArray:v15];
    LOBYTE(v15) = v84;
  }

  if (v15)
  {
    goto LABEL_117;
  }

  v55 = [(CKContextResponse *)v23->_response results];
  v56 = [v55 count];

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
  v57 = v76;
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
      v63 = [v62 title];
      v64 = [v62 topicId];
      if (!v63 || ([v87 containsObject:v63] & 1) != 0)
      {
        goto LABEL_108;
      }

      v85 = self;
      v65 = v80;
      v66 = [(ContextConfiguration *)v80->_config blacklistTitles];
      if (v66)
      {
        self = [(ContextConfiguration *)v80->_config blacklistTitles];
        v67 = [v62 title];
        v83 = v67;
        if ([(LuceneContextRequest *)self containsObject:v67])
        {

          goto LABEL_107;
        }

        v85 = self;
        v65 = v80;
      }

      v68 = v57;
      v69 = [(ContextConfiguration *)v65->_config blacklistPortrait];
      v70 = v69;
      if (v69 && v64)
      {
        v71 = [(ContextConfiguration *)v80->_config blacklistPortrait];
        v72 = [v71 containsObject:v64];

        if (v66)
        {

          self = v85;
          v57 = v68;
          if (v72)
          {
            goto LABEL_106;
          }
        }

        else
        {
          v57 = v68;
          self = v85;
          if (v72)
          {
LABEL_106:
            v60 = obja;
            v59 = v82;
LABEL_107:
            if (v80->_config->_blacklistRemoveAllOnMatch)
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
        self = v85;
        if (v66)
        {
        }
      }

      [v87 addObject:v63];
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
  v5 = [(CKContextRequest *)self->_request overrideBlendAlpha];

  if (v5)
  {
    v6 = [(CKContextRequest *)self->_request overrideBlendAlpha];
    [v6 floatValue];
    v4 = v7;
  }

  v8 = [(CKContextResponse *)self->_response results];
  v9 = [v8 count];

  if (v9 >= 2 && v4 != 1.0)
  {
    [(ContextConfiguration *)self->_config luceneBlendBeta];
    v12 = v11;
    v13 = [(CKContextRequest *)self->_request overrideBlendBeta];

    if (v13)
    {
      v14 = [(CKContextRequest *)self->_request overrideBlendBeta];
      [v14 floatValue];
      v12 = v15;
    }

    [(ContextConfiguration *)self->_config luceneBlendGamma];
    v17 = v16;
    v18 = [(CKContextRequest *)self->_request overrideBlendGamma];

    if (v18)
    {
      v19 = [(CKContextRequest *)self->_request overrideBlendGamma];
      [v19 floatValue];
      v17 = v20;
    }

    v21 = [(CKContextResponse *)self->_response results];
    v22 = [v21 sortedArrayUsingComparator:&stru_100484180];
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
    v29 = v21;
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
          v42 = [v39 docId];
          v43 = [v42 unsignedLongValue] / v33;

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
            v47 = [v39 title];
            v52 = [v39 docIdRank];
            v53 = [v39 docId];
            v48 = [v53 unsignedLongValue];
            v49 = [v39 forceBottomRank];
            *buf = 138413826;
            v65 = v47;
            v66 = 2048;
            v67 = v52;
            v68 = 2048;
            v69 = v48;
            v70 = 2048;
            v71 = v43;
            v72 = 2048;
            v73 = v44;
            v74 = 2048;
            v75 = v36;
            v76 = 1024;
            v77 = v49;
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

- (id)mergeDuplicateResults:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableDictionary dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v3;
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
        v12 = [v11 title];
        v13 = [v5 objectForKeyedSubscript:v12];

        if (v13)
        {
          v14 = [v4 objectAtIndex:{objc_msgSend(v13, "unsignedIntegerValue")}];
          [v14 mergeWithResult:v11];
        }

        else
        {
          v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
          v16 = [v11 title];
          [v5 setObject:v15 forKeyedSubscript:v16];

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
    v41 = self;
    v4 = [(CKContextResponse *)self->_response results];
    v5 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v6 = v4;
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
          v12 = [v11 titleTokenString];
          if (v12)
          {
            [v5 addObject:v12];
          }

          v13 = [v11 query];
          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)v3 sortUsingComparator:&stru_1004841C0];
    v14 = v41;
    v15 = [(LuceneContextRequest *)v41 mergeDuplicateResults:v3];

    v16 = v6;
    objc_opt_class();
    objc_opt_class();
    v17 = v16;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v16 count] + objc_msgSend(v15, "count"));

      [(CKContextResponse *)v41->_response setResults:v17];
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
    v18 = [v15 reverseObjectEnumerator];
    v19 = [v18 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v49;
      v39 = v17;
      v40 = v16;
      v37 = *v49;
      v38 = v18;
      do
      {
        v22 = 0;
        v42 = v20;
        do
        {
          if (*v49 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v48 + 1) + 8 * v22);
          if (v23)
          {
            [*(*(&v48 + 1) + 8 * v22) luceneScore];
            v25 = v24;
            v26 = [v23 title];
            if (v26)
            {
              v27 = [(LuceneContextRequest *)v14 _tokenStringForText:v26];
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
                v14 = v41;
                v21 = v37;
                v18 = v38;
                v20 = v42;
              }
            }
          }

          v22 = v22 + 1;
        }

        while (v22 != v20);
        v20 = [v18 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v20);
    }

    v3 = v36;
    [(NSMutableArray *)v36 removeAllObjects];
  }
}

- (id)_tokenStringForText:(id)a3
{
  v4 = a3;
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
  if (v4)
  {
    v5 = [(OrgApacheLuceneAnalysisAnalyzer *)self->_analyzer tokenStreamWithNSString:@"text" withNSString:v4];
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
  v13 = self;
  v14 = v16;
  v15 = &v18;
  sub_1002B198C(v5, v11);
  v9 = v19[5];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);

  return v9;
}

- (void)postprocessAddQuery:(id)a3
{
  v8 = a3;
  v3 = [v8 title];
  v4 = [v3 indexOf:3];
  if ((v4 & 0x80000000) == 0 || (v4 = [v3 indexOfString:{@" (", v5 = v3, (v4 & 0x80000000) == 0}])
  {
    v5 = [v3 substring:0 endIndex:v4];

    v6 = [v3 replace:3 withChar:32];
    [v8 setTitle:v6];
  }

  v7 = [v5 lowercaseString];
  [v8 setQuery:v7];
}

- (void)_rerankFoldedResults:(id)a3
{
  v3 = a3;
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
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
  v5 = self;
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
      v11 = [v10 title];
      if (v11)
      {
        v12 = [(OrgApacheLuceneAnalysisAnalyzer *)v5->_analyzer tokenStreamWithNSString:@"text" withNSString:v11];
      }

      else
      {
        v12 = 0;
      }

      v28 = v11;
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
      v34 = self;
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
        v18 = [v10 debug];
        v19 = [v10 fingerprintPrimary];
        v20 = [v19 integerValue];
        v21 = v48[3];
        v22 = [NSString stringWithFormat:@"%@ %lu %li <- %li %li %li %li -%li", v18, v20, v6, v60[3], v56[3], v52[3], v21, v44[3]];
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
      v5 = self;
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

- (void)addDebugStringTo:(id)a3 withPrefix:(id)a4 forQuery:(id)a5
{
  v17 = a3;
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 getTerms];
    v10 = [v9 objectAtIndex:0];
    v11 = [v9 objectAtIndex:1];
    v12 = [v10 text];
    v13 = [v11 text];
    v14 = [NSString stringWithFormat:@"%@%@ %@ ", v7, v12, v13];
    [v17 addObject:v14];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 getTerm];
      v15 = [v9 text];
      v16 = [NSString stringWithFormat:@"%@%@ ", v7, v15];
      [v17 addObject:v16];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"%@(%@) ", v7, v8];
      [v17 addObject:v9];
    }
  }
}

- (id)textTermsEnum
{
  textTermsEnum = self->_textTermsEnum;
  if (!textTermsEnum)
  {
    WeakRetained = objc_loadWeakRetained(&self->_engine);
    v5 = [WeakRetained reader];
    v6 = [OrgApacheLuceneIndexMultiFields getTermsWithOrgApacheLuceneIndexIndexReader:v5 withNSString:@"text"];
    v7 = [v6 iterator];
    v8 = self->_textTermsEnum;
    self->_textTermsEnum = v7;

    textTermsEnum = self->_textTermsEnum;
  }

  return textTermsEnum;
}

+ (id)reverseFQDN:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [v3 componentsSeparatedByString:{@".", 0}];
    v5 = [v4 reverseObjectEnumerator];

    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (v8)
          {
            [(__CFString *)v8 appendString:@"."];
          }

          else
          {
            v8 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", [v3 length]);
          }

          [(__CFString *)v8 appendString:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    if (!v3)
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