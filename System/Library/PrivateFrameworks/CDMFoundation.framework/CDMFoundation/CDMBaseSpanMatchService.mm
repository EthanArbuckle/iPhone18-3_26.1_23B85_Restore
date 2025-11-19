@interface CDMBaseSpanMatchService
+ (Class)spanMatcherClass;
+ (id)convertToSpanMatchRequest:(id)a3 nlContext:(id)a4;
+ (id)convertToSpanMatchRequests:(id)a3 nlContext:(id)a4;
+ (id)getCDMServiceAssetConfig;
- (id)_handle:(id)a3;
- (id)createErrorSetupResponseCommand:(id)a3;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)a3;
- (id)setupSpanMatcher:(id)a3;
- (id)warmup:(id)a3;
- (void)limitNumberOfSpans:(id)a3;
- (void)spanizeAsrs:(id)a3 asrSpansMap:(id)a4 topAsrSpans:(id)a5 topAsrSpansFiltered:(id)a6 asrHypotheses:(id)a7;
- (void)spanizeTokenChain:(id)a3 spans:(id)a4 isTopAsr:(BOOL)a5 topAsrSpansFiltered:(id)a6 asrHypothesis:(id)a7;
@end

@implementation CDMBaseSpanMatchService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMSpanMatcherRequestCommand];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 setWithArray:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)getCDMServiceAssetConfig
{
  v2 = [a1 spanMatcherClass];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 getCDMServiceAssetConfig];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)limitNumberOfSpans:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] >= 0x65)
  {
    v4 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "[CDMBaseSpanMatchService limitNumberOfSpans:]";
      v8 = 2048;
      v9 = [v3 count];
      v10 = 1024;
      v11 = 100;
      _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Matched count=%lu spans, filtering spans to the limit=%d", &v6, 0x1Cu);
    }

    [v3 removeObjectsInRange:{100, objc_msgSend(v3, "count") - 100}];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)spanizeTokenChain:(id)a3 spans:(id)a4 isTopAsr:(BOOL)a5 topAsrSpansFiltered:(id)a6 asrHypothesis:(id)a7
{
  v9 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a4;
  v16 = [(CDMBaseSpanMatchService *)self spanMatcher];
  v17 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v22 = [v12 normalizedString];
    v25 = 136315650;
    v26 = "[CDMBaseSpanMatchService spanizeTokenChain:spans:isTopAsr:topAsrSpansFiltered:asrHypothesis:]";
    v27 = 2112;
    v28 = v22;
    v29 = 2112;
    v30 = v16;
    _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s Start spanizing utterance: [%@]; with span matcher: %@", &v25, 0x20u);
  }

  v18 = [v16 matchSpansForTokenChain:v12 asrHypothesis:v14];

  [v15 addObjectsFromArray:v18];
  if (v9 && [(CDMBaseSpanMatchService *)self shouldBeUsedForAsrAlternatives])
  {
    v19 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v25 = 136315138;
      v26 = "[CDMBaseSpanMatchService spanizeTokenChain:spans:isTopAsr:topAsrSpansFiltered:asrHypothesis:]";
      _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s Add selected spans from top ASR for use later in post-processing of ASR alternatives", &v25, 0xCu);
    }

    [v13 addObjectsFromArray:v18];
  }

  v20 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v23 = [v12 normalizedString];
    v24 = [v18 count];
    v25 = 136315906;
    v26 = "[CDMBaseSpanMatchService spanizeTokenChain:spans:isTopAsr:topAsrSpansFiltered:asrHypothesis:]";
    v27 = 2112;
    v28 = v23;
    v29 = 2048;
    v30 = v24;
    v31 = 2112;
    v32 = v16;
    _os_log_debug_impl(&dword_1DC287000, v20, OS_LOG_TYPE_DEBUG, "%s Spanized utterance: [%@]; Created %lu span(s) for span matcher: %@", &v25, 0x2Au);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)spanizeAsrs:(id)a3 asrSpansMap:(id)a4 topAsrSpans:(id)a5 topAsrSpansFiltered:(id)a6 asrHypotheses:(id)a7
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v39 = a4;
  v38 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v42;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v41 + 1) + 8 * i);
        v21 = [v20 idA];

        if (v21)
        {
          v22 = [v20 idA];
          [v14 setObject:v20 forKey:v22];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v17);
  }

  if ([v11 count])
  {
    v24 = 0;
    *&v23 = 136315138;
    v37 = v23;
    do
    {
      v25 = [v11 objectAtIndexedSubscript:{v24, v37}];
      v26 = [CDMTokenChain alloc];
      v27 = [v25 tokenChain];
      v28 = [(CDMTokenChain *)v26 initWithProtoTokenChain:v27];

      v29 = [v25 asrId];

      if (v29)
      {
        v30 = [v25 asrId];
        v31 = [v14 objectForKey:v30];
      }

      else
      {
        v31 = 0;
      }

      v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(CDMBaseSpanMatchService *)self spanizeTokenChain:v28 spans:v32 isTopAsr:v24 == 0 topAsrSpansFiltered:v12 asrHypothesis:v31];
      if (!v24)
      {
        v33 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = v37;
          v46 = "[CDMBaseSpanMatchService spanizeAsrs:asrSpansMap:topAsrSpans:topAsrSpansFiltered:asrHypotheses:]";
          _os_log_debug_impl(&dword_1DC287000, v33, OS_LOG_TYPE_DEBUG, "%s This is top ASR, set the topAsrSpans", buf, 0xCu);
        }

        [v38 addObjectsFromArray:v32];
      }

      v34 = [v25 asrId];

      if (v34)
      {
        v35 = [v25 asrId];
        [v39 setObject:v32 forKey:v35];
      }

      else
      {
        v35 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v46 = "[CDMBaseSpanMatchService spanizeAsrs:asrSpansMap:topAsrSpans:topAsrSpansFiltered:asrHypotheses:]";
          v47 = 2112;
          v48 = v25;
          _os_log_impl(&dword_1DC287000, v35, OS_LOG_TYPE_INFO, "%s [WARN]: Did not expect a request w/o ASR uuid? %@", buf, 0x16u);
        }
      }

      ++v24;
    }

    while ([v11 count] > v24);
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (id)warmup:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(CDMBaseService *)self serviceName];
    *buf = 136315394;
    v17 = "[CDMBaseSpanMatchService warmup:]";
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s Prewarm Span Matcher %@", buf, 0x16u);
  }

  v6 = [[CDMTokenChain alloc] initWithString:@"helloworld" locale:@"en"];
  v7 = [[CDMToken alloc] initWithValue:@"helloworld" begin:0 end:10 significant:1 whitespace:0 cleanValue:@"helloworld" tokenIndex:0 nonWhitespaceTokenIndex:0];
  [(CDMToken *)v7 addNormalizedValue:@"helloworld"];
  [(CDMTokenChain *)v6 addToken:v7];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(CDMBaseSpanMatchService *)self spanizeTokenChain:v6 spans:v8 isTopAsr:1 topAsrSpansFiltered:v9 asrHypothesis:0];
  v10 = [CDMWarmupResponseCommand alloc];
  v11 = [(CDMBaseService *)self serviceState];
  v12 = [(CDMBaseService *)self serviceName];
  v13 = [(CDMWarmupResponseCommand *)v10 initWithServiceState:v11 serviceName:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)setup:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 136315394;
    v17 = "[CDMBaseSpanMatchService setup:]";
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Setup %@", buf, 0x16u);
  }

  v8 = [(CDMBaseSpanMatchService *)self setupSpanMatcher:v4];

  if (v8)
  {
    [(CDMBaseSpanMatchService *)self setSpanMatcher:v8];
    self->super.super._serviceState = 2;
    v9 = [(CDMBaseService *)self createSetupResponseCommand];
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"Unable to setup span matcher for %@", v12];

    v9 = [(CDMBaseSpanMatchService *)self createErrorSetupResponseCommand:v13];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)createErrorSetupResponseCommand:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->super.super._serviceState = 3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[CDMBaseSpanMatchService createErrorSetupResponseCommand:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: %@", &v10, 0x16u);
  }

  v6 = [(CDMBaseService *)self createSetupResponseCommand];
  v7 = [(CDMBaseService *)self createErrorWithCode:1 description:v4];
  [v6 setCmdError:v7];

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_handle:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(CDMBaseService *)self serviceState];
  v8 = CDMOSLoggerForCategory(0);
  v9 = v8;
  if (v7 == 2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v59 = "[CDMBaseSpanMatchService _handle:]";
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s Spanize all ASR(s) and fill in asrSpansMap & topAsrSpansFiltered", buf, 0xCu);
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    v12 = [v4 spanMatchRequests];
    v13 = [v11 initWithCapacity:{objc_msgSend(v12, "count")}];

    v14 = objc_alloc(MEMORY[0x1E695DF70]);
    v15 = [v4 spanMatchRequests];
    v16 = [v14 initWithCapacity:{objc_msgSend(v15, "count")}];

    v17 = [v4 spanMatchRequests];
    v18 = [v4 asrHypothesis];
    v55 = v16;
    [(CDMBaseSpanMatchService *)self spanizeAsrs:v17 asrSpansMap:v10 topAsrSpans:v13 topAsrSpansFiltered:v16 asrHypotheses:v18];

    v19 = [v4 spanMatchRequests];
    v20 = [v19 firstObject];

    v21 = [CDMTokenChain alloc];
    v22 = [v20 tokenChain];
    v57 = [(CDMTokenChain *)v21 initWithProtoTokenChain:v22];

    v23 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v59 = "[CDMBaseSpanMatchService _handle:]";
      _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s Creating a map of {ASR uuid: {char_index: timing}} for ASR alternatives", buf, 0xCu);
    }

    v24 = [v4 asrHypothesis];
    v25 = [CDMAsrUtils createAsrUuidCharIndexTimingMaps:v24];

    v26 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v59 = "[CDMBaseSpanMatchService _handle:]";
      _os_log_debug_impl(&dword_1DC287000, v26, OS_LOG_TYPE_DEBUG, "%s Get the {char_index: timing} map for top ASR", buf, 0xCu);
    }

    v53 = v20;
    v27 = [v20 asrId];
    v54 = v25;
    v56 = [v25 objectForKey:v27];

    v28 = [v4 asrHypothesis];
    v29 = [v28 count];

    if (v29)
    {
      v30 = os_signpost_id_generate(CDMLogContext);
      v31 = CDMLogContext;
      v32 = v31;
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "SpanMatcher", "Add ASR confidence scores to spans", buf, 2u);
      }

      v33 = [v4 asrHypothesis];
      v34 = [v33 objectAtIndexedSubscript:0];
      [CDMSpanMatchUtils addAsrConfidenceToSpans:v13 tokenChain:v57 asrTimingMap:v56 asrHypothesis:v34];

      v35 = CDMLogContext;
      v36 = v35;
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v36, OS_SIGNPOST_INTERVAL_END, v30, "SpanMatcher", "", buf, 2u);
      }
    }

    v37 = [v4 spanMatchRequests];
    v38 = [v37 count];

    if (v38 >= 2)
    {
      v39 = [v4 spanMatchRequests];
      v40 = [v4 asrHypothesis];
      [CDMSpanMatchUtils postProcessSpans:v39 asrSpansMap:v10 asrHypothesis:v40 asrMaps:v54 topAsrTokenChain:v57 asrMapTopAsr:v56 topAsrSpansFiltered:v55];
    }

    v41 = os_signpost_id_generate(CDMLogContext);
    v42 = CDMLogContext;
    v43 = v42;
    if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v43, OS_SIGNPOST_INTERVAL_BEGIN, v41, "SpanMatcher", "spanMatchResponse", buf, 2u);
    }

    v44 = objc_alloc_init(MEMORY[0x1E69D13A0]);
    [(CDMBaseSpanMatchService *)self limitNumberOfSpans:v13];
    [CDMSpanMatchUtils setAsrHypothesisIndexForTopAsrSpans:v13];
    [v44 setMatchingSpans:v13];
    v45 = [[CDMSpanMatcherResponseCommand alloc] initWithResponse:v44];
    v46 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
    {
      v51 = v46;
      v52 = [v13 count];
      *buf = 136315906;
      v59 = "[CDMBaseSpanMatchService _handle:]";
      v60 = 2112;
      v61 = @"spanmatch";
      v62 = 2112;
      v63 = v6;
      v64 = 1024;
      v65 = v52;
      _os_log_debug_impl(&dword_1DC287000, v51, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\n%@ generated number of spans: %d", buf, 0x26u);

      v46 = CDMLogContext;
    }

    v47 = v46;
    v48 = v47;
    if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v48, OS_SIGNPOST_INTERVAL_END, v41, "SpanMatcher", "", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v59 = "[CDMBaseSpanMatchService _handle:]";
      v60 = 2112;
      v61 = v6;
      v62 = 2048;
      v63 = [(CDMBaseService *)self serviceState];
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s %@ Not Ready! State: %tu", buf, 0x20u);
    }

    v45 = objc_alloc_init(CDMSpanMatcherResponseCommand);
    v10 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Service Not Ready"];
    [(CDMBaseCommand *)v45 setCmdError:v10];
  }

  v49 = *MEMORY[0x1E69E9840];

  return v45;
}

- (id)handle:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CDMBaseSpanMatchService *)self _handle:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)setupSpanMatcher:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

+ (id)convertToSpanMatchRequest:(id)a3 nlContext:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69D1398];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = [v7 tokenChain];
  [v8 setTokenChain:v9];

  v10 = [v7 text];
  [v8 setUtterance:v10];

  [v8 setNlContext:v6];
  v11 = [v7 asrId];

  [v8 setAsrId:v11];
  v12 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v8 utterance];
    v16 = 136315394;
    v17 = "+[CDMBaseSpanMatchService convertToSpanMatchRequest:nlContext:]";
    v18 = 2112;
    v19 = v15;
    _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s Converted TokenizerResponse -> SpanMatchRequest for utterance: %@", &v16, 0x16u);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)convertToSpanMatchRequests:(id)a3 nlContext:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [CDMBaseSpanMatchService convertToSpanMatchRequest:*(*(&v16 + 1) + 8 * i) nlContext:v6, v16];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (Class)spanMatcherClass
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end