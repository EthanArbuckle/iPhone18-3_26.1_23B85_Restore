@interface QUEmbeddingService
+ (BOOL)isUnitTested;
+ (id)log;
+ (id)signpostLog;
- (QUEmbeddingService)initWithLocale:(id)locale version:(id)version;
- (_NSRange)icuRangeOfString:(id)string range:(_NSRange)range query:(id)query;
- (_NSRange)rangeOfSubtoken:(id)subtoken range:(_NSRange)range query:(id)query;
- (void)dealloc;
- (void)getEmbeddingForQuery:(id)query completionHandler:(id)handler;
- (void)loadWithCompletionHandler:(id)handler;
@end

@implementation QUEmbeddingService

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__QUEmbeddingService_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __25__QUEmbeddingService_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.queryunderstanding", [v4 UTF8String]);
  v3 = log_log;
  log_log = v2;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__QUEmbeddingService_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken != -1)
  {
    dispatch_once(&signpostLog_onceToken, block);
  }

  v2 = signpostLog_log;

  return v2;
}

void __33__QUEmbeddingService_signpostLog__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.spotlight.QueryParser", [v4 UTF8String]);
  v3 = signpostLog_log;
  signpostLog_log = v2;
}

+ (BOOL)isUnitTested
{
  if (isUnitTested_onceToken != -1)
  {
    +[QUEmbeddingService isUnitTested];
  }

  return isUnitTested_isUnitTested;
}

void __34__QUEmbeddingService_isUnitTested__block_invoke()
{
  v0 = NSClassFromString(&cfstr_Xctestprobe.isa);
  if (v0)
  {
    v1 = v0;
    v2 = NSSelectorFromString(&cfstr_Istesting.isa);
    v4 = [(objc_class *)v1 methodSignatureForSelector:v2];
    v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v4];
    [v3 setSelector:v2];
    [v3 invokeWithTarget:v1];
    [v3 getReturnValue:&isUnitTested_isUnitTested];
  }
}

- (QUEmbeddingService)initWithLocale:(id)locale version:(id)version
{
  localeCopy = locale;
  versionCopy = version;
  v24.receiver = self;
  v24.super_class = QUEmbeddingService;
  v9 = [(QUEmbeddingService *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locale, locale);
    v11 = [versionCopy copy];
    version = v10->_version;
    v10->_version = v11;

    gotLoadHelper_x8__OBJC_CLASS___CDMClient(v13);
    v15 = objc_alloc_init(*(v14 + 2880));
    cdmClient = v10->_cdmClient;
    v10->_cdmClient = v15;

    v10->_icuCollator = 0;
    languageCode = [localeCopy languageCode];
    v18 = [languageCode isEqualToString:@"tr"];

    if (v18)
    {
      localeIdentifier = [localeCopy localeIdentifier];
      [localeIdentifier UTF8String];
      v10->_icuCollator = ucol_open();

      icuCollator = v10->_icuCollator;
      ucol_setAttribute();
      v21 = v10->_icuCollator;
      ucol_setAttribute();
      v22 = v10->_icuCollator;
      ucol_setAttribute();
    }
  }

  return v10;
}

- (void)dealloc
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249FBC000, v3, OS_LOG_TYPE_DEFAULT, "[QPNLU] Deallocating QUEmbeddingService and releasing CDMClient", buf, 2u);
  }

  if (self->_icuCollator)
  {
    ucol_close();
  }

  free(self->_icuQueryBuffer);
  free(self->_icuPatternBuffer);
  v4.receiver = self;
  v4.super_class = QUEmbeddingService;
  [(QUEmbeddingService *)&v4 dealloc];
}

- (_NSRange)icuRangeOfString:(id)string range:(_NSRange)range query:(id)query
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  queryCopy = query;
  if (stringCopy && [stringCopy length] && self->_icuCollator)
  {
    self->_icuQueryBuffer = malloc_type_realloc(self->_icuQueryBuffer, 2 * [queryCopy length], 0x1000040BDFB0063uLL);
    v11 = malloc_type_realloc(self->_icuPatternBuffer, 2 * [stringCopy length], 0x1000040BDFB0063uLL);
    v12 = 0;
    self->_icuPatternBuffer = v11;
    icuQueryBuffer = self->_icuQueryBuffer;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    if (icuQueryBuffer)
    {
      if (v11)
      {
        [queryCopy getCharacters:icuQueryBuffer range:{0, objc_msgSend(queryCopy, "length")}];
        [stringCopy getCharacters:self->_icuPatternBuffer range:{0, objc_msgSend(stringCopy, "length")}];
        icuPatternBuffer = self->_icuPatternBuffer;
        [stringCopy length];
        v16 = self->_icuQueryBuffer;
        [queryCopy length];
        icuCollator = self->_icuCollator;
        v18 = usearch_openFromCollator();
        usearch_setAttribute();
        v12 = 0;
        v14 = 0x7FFFFFFFFFFFFFFFLL;
        if (v18)
        {
          usearch_setOffset();
          v12 = 0;
          v19 = usearch_following();
          if (v19 != -1)
          {
            MatchedLength = usearch_getMatchedLength();
            if (MatchedLength + v19 <= location + length)
            {
              v14 = v19;
              v12 = MatchedLength;
            }

            else
            {
              v12 = 0;
            }
          }

          usearch_close();
        }
      }
    }
  }

  else
  {
    v12 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = v14;
  v22 = v12;
  result.length = v22;
  result.location = v21;
  return result;
}

- (_NSRange)rangeOfSubtoken:(id)subtoken range:(_NSRange)range query:(id)query
{
  length = range.length;
  location = range.location;
  subtokenCopy = subtoken;
  queryCopy = query;
  v11 = [queryCopy rangeOfString:subtokenCopy options:129 range:location locale:{length, self->_locale}];
  v13 = v12;
  languageCode = [(NSLocale *)self->_locale languageCode];
  v15 = [languageCode isEqualToString:@"tr"];

  if (v15)
  {
    v16 = [queryCopy rangeOfString:subtokenCopy options:129 range:{location, length}];
    if (v16 < v11)
    {
      v13 = v17;
      v11 = v16;
    }

    queryCopy = [(QUEmbeddingService *)self icuRangeOfString:subtokenCopy range:location query:length, queryCopy];
    if (queryCopy < v11)
    {
      v13 = v19;
      v11 = queryCopy;
    }
  }

  v20 = v11;
  v21 = v13;
  result.length = v21;
  result.location = v20;
  return result;
}

- (void)loadWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = gTestEmbeddings;
  if (gTestEmbeddings)
  {
    localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
    v7 = [v5 objectForKeyedSubscript:localeIdentifier];

    v8 = dispatch_get_global_queue(0, 0);
    if (v7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__QUEmbeddingService_loadWithCompletionHandler___block_invoke;
      block[3] = &unk_278FC0CA0;
      v23 = handlerCopy;
      dispatch_async(v8, block);

      v9 = v23;
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __48__QUEmbeddingService_loadWithCompletionHandler___block_invoke_2;
      v20[3] = &unk_278FC0CA0;
      v21 = handlerCopy;
      dispatch_async(v8, v20);

      v9 = v21;
    }
  }

  else
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_249FBC000, v10, OS_LOG_TYPE_INFO, "[QPNLU] Setting up CDMClient", buf, 2u);
    }

    signpostLog = [objc_opt_class() signpostLog];
    signpostLog2 = [objc_opt_class() signpostLog];
    v13 = os_signpost_id_make_with_pointer(signpostLog2, self);

    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(signpostLog))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_249FBC000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CDMClient setup", &unk_249FBF3B3, buf, 2u);
    }

    version = self->_version;
    cdmClient = self->_cdmClient;
    locale = self->_locale;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__QUEmbeddingService_loadWithCompletionHandler___block_invoke_99;
    v17[3] = &unk_278FC0CC8;
    v17[4] = self;
    v18 = handlerCopy;
    [(CDMClient *)cdmClient setupWithLocale:locale embeddingVersion:version completionHandler:v17];
    v9 = v18;
  }
}

void __48__QUEmbeddingService_loadWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"QUEmbeddingServiceTestError" code:-1 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __48__QUEmbeddingService_loadWithCompletionHandler___block_invoke_99(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() signpostLog];
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() signpostLog];
  v8 = os_signpost_id_make_with_pointer(v7, *(a1 + 32));

  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_249FBC000, v5, OS_SIGNPOST_INTERVAL_END, v8, "CDMClient setup", &unk_249FBF3B3, v9, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getEmbeddingForQuery:(id)query completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  handlerCopy = handler;
  if (gTestEmbeddings)
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_249FBC000, v8, OS_LOG_TYPE_DEBUG, "Use embedding from test data", buf, 2u);
    }

    v9 = [gTestEmbeddings objectForKeyedSubscript:queryCopy];
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__QUEmbeddingService_getEmbeddingForQuery_completionHandler___block_invoke;
    block[3] = &unk_278FC0CF0;
    v11 = &v27;
    v12 = &v26;
    v26 = v9;
    v27 = handlerCopy;
    v13 = v9;
    v14 = handlerCopy;
    dispatch_async(v10, block);
  }

  else
  {
    v13 = self->_locale;
    signpostLog = [objc_opt_class() signpostLog];
    signpostLog2 = [objc_opt_class() signpostLog];
    v17 = os_signpost_id_make_with_pointer(signpostLog2, self);

    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(signpostLog))
    {
      *buf = 138412290;
      v29 = queryCopy;
      _os_signpost_emit_with_name_impl(&dword_249FBC000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v17, "CDMClient getEmbeddingForQuery", "Query = %@", buf, 0xCu);
    }

    cdmClient = self->_cdmClient;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __61__QUEmbeddingService_getEmbeddingForQuery_completionHandler___block_invoke_101;
    v22[3] = &unk_278FC0D18;
    v11 = &v24;
    v24 = handlerCopy;
    v12 = v23;
    v19 = queryCopy;
    v23[0] = v19;
    v23[1] = self;
    v20 = handlerCopy;
    [(CDMClient *)cdmClient processEmbeddingRequest:v19 completionHandler:v22];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __61__QUEmbeddingService_getEmbeddingForQuery_completionHandler___block_invoke_101(uint64_t a1, void *a2, void *a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    (*(*(a1 + 48) + 16))();
    goto LABEL_67;
  }

  v8 = [MEMORY[0x277CBEB18] array];
  v76 = [MEMORY[0x277CBEB18] array];
  v75 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v76, "count")}];
  v74 = [MEMORY[0x277CBEB18] array];
  v9 = [v5 subwordTokenChain];
  v10 = [MEMORY[0x277CCAB68] string];
  v84 = [*(a1 + 32) length];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v11 = [v9 subwordTokens];
  v73 = v8;
  v83 = a1;
  v79 = [v11 countByEnumeratingWithState:&v87 objects:v95 count:16];
  if (!v79)
  {
    goto LABEL_47;
  }

  v70 = v9;
  v71 = v5;
  v80 = 0;
  v12 = 0;
  v72 = 0;
  v81 = 0;
  v13 = 0;
  obj = v11;
  v78 = *v88;
  v82 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v79; ++i)
    {
      if (*v88 != v78)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v87 + 1) + 8 * i);
      v16 = [v15 value];
      [v8 addObject:v16];

      if ([v15 tokenIndex] == v13)
      {
        ++v81;
      }

      else
      {
        if (v13 >= 1)
        {
          v17 = [v10 copy];
          [v76 addObject:v17];

          v18 = [MEMORY[0x277CCABB0] numberWithInt:v81];
          [v74 addObject:v18];

          v19 = [MEMORY[0x277CCAE60] valueWithRange:{v82, v80}];
          [v75 addObject:v19];
        }

        v20 = [MEMORY[0x277CCAB68] string];

        v13 = [v15 tokenIndex];
        v80 = 0;
        v81 = 1;
        v82 = 0x7FFFFFFFFFFFFFFFLL;
        v10 = v20;
      }

      v21 = [v15 value];
      v22 = [v21 characterAtIndex:0];
      if (v22 == 9601)
      {
        v23 = [v21 substringFromIndex:1];

        v21 = v23;
      }

      [v10 appendString:v21];
      v24 = [*(a1 + 40) rangeOfSubtoken:v21 range:v12 query:{v84 - v12, *(a1 + 32)}];
      if (v24 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = v12;
        if ([v21 length] == 1)
        {
          v27 = [MEMORY[0x277CCA900] punctuationCharacterSet];
          v28 = [v27 characterIsMember:{objc_msgSend(v21, "characterAtIndex:", 0)}];

          v26 = v12;
          if (v28)
          {
            v26 = v12;
            if (v84 > v12)
            {
              v26 = v12;
              while (1)
              {
                v29 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
                v30 = [v29 characterIsMember:{objc_msgSend(*(v83 + 32), "characterAtIndex:", v26)}];

                if (!v30)
                {
                  break;
                }

                if (v84 == ++v26)
                {
                  v26 = v84;
                  goto LABEL_32;
                }
              }

              v33 = [MEMORY[0x277CCA900] punctuationCharacterSet];
              v34 = [v33 characterIsMember:{objc_msgSend(*(v83 + 32), "characterAtIndex:", v26)}];

              if (v34)
              {
                v25 = 1;
                v8 = v73;
                a1 = v83;
                goto LABEL_24;
              }

LABEL_32:
              v8 = v73;
            }
          }
        }

        if ([v21 isEqualToString:@"[CLS]"])
        {
          v12 = v26;
          a1 = v83;
        }

        else
        {
          a1 = v83;
          if (([v21 isEqualToString:@"[SEP]"] & 1) == 0 && (objc_msgSend(v21, "isEqualToString:", &stru_285D23990) & 1) == 0)
          {
            v35 = *(v83 + 40);
            v36 = [objc_opt_class() log];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v97.location = v12;
              v97.length = v84 - v12;
              v37 = NSStringFromRange(v97);
              *buf = 138412546;
              v92 = v21;
              v93 = 2112;
              v94 = v37;
              _os_log_impl(&dword_249FBC000, v36, OS_LOG_TYPE_DEFAULT, "[QPNLU] Could not find %@ with range %@", buf, 0x16u);

              a1 = v83;
            }

            v72 = 1;
          }

          v12 = v26;
        }
      }

      else
      {
        v26 = v24;
LABEL_24:
        v31 = v82;
        v32 = v82 == 0x7FFFFFFFFFFFFFFFLL || v22 == 9601;
        if (v32)
        {
          v31 = v26;
        }

        v12 = v26 + v25;
        v82 = v31;
        v80 = v26 + v25 - v31;
      }
    }

    v79 = [obj countByEnumeratingWithState:&v87 objects:v95 count:16];
  }

  while (v79);

  if (v72)
  {
    v38 = *(a1 + 40);
    v11 = [objc_opt_class() log];
    v5 = v71;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249FBC000, v11, OS_LOG_TYPE_FAULT, "[QPNLU] Could not find ranges of one or more tokens in the input query string.", buf, 2u);
    }

    v9 = v70;
LABEL_47:

    goto LABEL_49;
  }

  v9 = v70;
  v5 = v71;
LABEL_49:
  v39 = [v5 subwordTokenEmbedding];
  v40 = [v39 embeddingTensor];
  v86 = 0;
  v41 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_285D23EF0 dataType:65568 error:&v86];
  v7 = v86;
  if ([v40 embeddingDim] == 192 && (v42 = objc_msgSend(v40, "numToken"), objc_msgSend(v9, "subwordTokens"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "count") - 2, v43, v32 = v42 == v44, v8 = v73, v32))
  {
    for (j = 0; j != 5376; ++j)
    {
      [v41 setObject:&unk_285D23F08 atIndexedSubscript:j];
    }

    v46 = [v40 numToken];
    if ([v40 embeddingDim] * v46)
    {
      v47 = 0;
      do
      {
        v48 = MEMORY[0x277CCABB0];
        LODWORD(v49) = *([v40 values] + 4 * v47);
        v50 = [v48 numberWithFloat:v49];
        [v41 setObject:v50 atIndexedSubscript:v47 + 192];

        ++v47;
        v51 = [v40 numToken];
      }

      while ([v40 embeddingDim] * v51 > v47);
    }

    v85 = v10;
    v52 = objc_alloc_init(QUEmbeddingOutput);
    [(QUEmbeddingOutput *)v52 setEmbedding:v41];
    v53 = [v76 copy];
    [(QUEmbeddingOutput *)v52 setTokens:v53];

    v54 = [v75 copy];
    [(QUEmbeddingOutput *)v52 setTokenRanges:v54];

    v55 = [v74 copy];
    [(QUEmbeddingOutput *)v52 setSubtokenLenForTokens:v55];

    v56 = [v73 subarrayWithRange:{1, objc_msgSend(v73, "count") - 2}];
    [(QUEmbeddingOutput *)v52 setSubtokens:v56];

    v57 = *(v83 + 40);
    v58 = [objc_opt_class() log];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = [(QUEmbeddingOutput *)v52 tokens];
      v60 = [(QUEmbeddingOutput *)v52 tokenRanges];
      *buf = 138740227;
      v92 = v59;
      v93 = 2112;
      v94 = v60;
      _os_log_impl(&dword_249FBC000, v58, OS_LOG_TYPE_INFO, "[QPNLU] QUEmbeddingOutput: tokens: %{sensitive}@, tokenRanges: %@", buf, 0x16u);
    }

    v61 = *(v83 + 40);
    v62 = [objc_opt_class() signpostLog];
    v63 = *(v83 + 40);
    v64 = [objc_opt_class() signpostLog];
    v65 = os_signpost_id_make_with_pointer(v64, *(v83 + 40));

    if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_249FBC000, v62, OS_SIGNPOST_INTERVAL_END, v65, "CDMClient getEmbeddingForQuery", &unk_249FBF3B3, buf, 2u);
    }

    (*(*(v83 + 48) + 16))();
    v8 = v73;
    v10 = v85;
  }

  else
  {
    v66 = *(v83 + 40);
    v67 = [objc_opt_class() log];
    if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
    {
      v68 = *(v83 + 32);
      *buf = 138412290;
      v92 = v68;
      _os_log_impl(&dword_249FBC000, v67, OS_LOG_TYPE_FAULT, "[QPNLU] Invalid embedding from query: %@", buf, 0xCu);
    }

    v52 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.QueryParser.QUEmbeddingServiceError" code:-1001 userInfo:0];
    (*(*(v83 + 48) + 16))();
  }

LABEL_67:
  v69 = *MEMORY[0x277D85DE8];
}

@end