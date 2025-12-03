@interface CDMBaseSpanMatchService
+ (Class)spanMatcherClass;
+ (id)convertToSpanMatchRequest:(id)request nlContext:(id)context;
+ (id)convertToSpanMatchRequests:(id)requests nlContext:(id)context;
+ (id)getCDMServiceAssetConfig;
- (id)_handle:(id)_handle;
- (id)createErrorSetupResponseCommand:(id)command;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)setup;
- (id)setupSpanMatcher:(id)matcher;
- (id)warmup:(id)warmup;
- (void)limitNumberOfSpans:(id)spans;
- (void)spanizeAsrs:(id)asrs asrSpansMap:(id)map topAsrSpans:(id)spans topAsrSpansFiltered:(id)filtered asrHypotheses:(id)hypotheses;
- (void)spanizeTokenChain:(id)chain spans:(id)spans isTopAsr:(BOOL)asr topAsrSpansFiltered:(id)filtered asrHypothesis:(id)hypothesis;
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
  spanMatcherClass = [self spanMatcherClass];
  if (objc_opt_respondsToSelector())
  {
    getCDMServiceAssetConfig = [spanMatcherClass getCDMServiceAssetConfig];
  }

  else
  {
    getCDMServiceAssetConfig = 0;
  }

  return getCDMServiceAssetConfig;
}

- (void)limitNumberOfSpans:(id)spans
{
  v12 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  if ([spansCopy count] >= 0x65)
  {
    v4 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "[CDMBaseSpanMatchService limitNumberOfSpans:]";
      v8 = 2048;
      v9 = [spansCopy count];
      v10 = 1024;
      v11 = 100;
      _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Matched count=%lu spans, filtering spans to the limit=%d", &v6, 0x1Cu);
    }

    [spansCopy removeObjectsInRange:{100, objc_msgSend(spansCopy, "count") - 100}];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)spanizeTokenChain:(id)chain spans:(id)spans isTopAsr:(BOOL)asr topAsrSpansFiltered:(id)filtered asrHypothesis:(id)hypothesis
{
  asrCopy = asr;
  v33 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  filteredCopy = filtered;
  hypothesisCopy = hypothesis;
  spansCopy = spans;
  spanMatcher = [(CDMBaseSpanMatchService *)self spanMatcher];
  v17 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    normalizedString = [chainCopy normalizedString];
    v25 = 136315650;
    v26 = "[CDMBaseSpanMatchService spanizeTokenChain:spans:isTopAsr:topAsrSpansFiltered:asrHypothesis:]";
    v27 = 2112;
    v28 = normalizedString;
    v29 = 2112;
    v30 = spanMatcher;
    _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s Start spanizing utterance: [%@]; with span matcher: %@", &v25, 0x20u);
  }

  v18 = [spanMatcher matchSpansForTokenChain:chainCopy asrHypothesis:hypothesisCopy];

  [spansCopy addObjectsFromArray:v18];
  if (asrCopy && [(CDMBaseSpanMatchService *)self shouldBeUsedForAsrAlternatives])
  {
    v19 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v25 = 136315138;
      v26 = "[CDMBaseSpanMatchService spanizeTokenChain:spans:isTopAsr:topAsrSpansFiltered:asrHypothesis:]";
      _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s Add selected spans from top ASR for use later in post-processing of ASR alternatives", &v25, 0xCu);
    }

    [filteredCopy addObjectsFromArray:v18];
  }

  v20 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    normalizedString2 = [chainCopy normalizedString];
    v24 = [v18 count];
    v25 = 136315906;
    v26 = "[CDMBaseSpanMatchService spanizeTokenChain:spans:isTopAsr:topAsrSpansFiltered:asrHypothesis:]";
    v27 = 2112;
    v28 = normalizedString2;
    v29 = 2048;
    v30 = v24;
    v31 = 2112;
    v32 = spanMatcher;
    _os_log_debug_impl(&dword_1DC287000, v20, OS_LOG_TYPE_DEBUG, "%s Spanized utterance: [%@]; Created %lu span(s) for span matcher: %@", &v25, 0x2Au);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)spanizeAsrs:(id)asrs asrSpansMap:(id)map topAsrSpans:(id)spans topAsrSpansFiltered:(id)filtered asrHypotheses:(id)hypotheses
{
  v50 = *MEMORY[0x1E69E9840];
  asrsCopy = asrs;
  mapCopy = map;
  spansCopy = spans;
  filteredCopy = filtered;
  hypothesesCopy = hypotheses;
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(hypothesesCopy, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = hypothesesCopy;
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

  if ([asrsCopy count])
  {
    v24 = 0;
    *&v23 = 136315138;
    v37 = v23;
    do
    {
      v25 = [asrsCopy objectAtIndexedSubscript:{v24, v37}];
      v26 = [CDMTokenChain alloc];
      tokenChain = [v25 tokenChain];
      v28 = [(CDMTokenChain *)v26 initWithProtoTokenChain:tokenChain];

      asrId = [v25 asrId];

      if (asrId)
      {
        asrId2 = [v25 asrId];
        v31 = [v14 objectForKey:asrId2];
      }

      else
      {
        v31 = 0;
      }

      v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(CDMBaseSpanMatchService *)self spanizeTokenChain:v28 spans:v32 isTopAsr:v24 == 0 topAsrSpansFiltered:filteredCopy asrHypothesis:v31];
      if (!v24)
      {
        v33 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = v37;
          v46 = "[CDMBaseSpanMatchService spanizeAsrs:asrSpansMap:topAsrSpans:topAsrSpansFiltered:asrHypotheses:]";
          _os_log_debug_impl(&dword_1DC287000, v33, OS_LOG_TYPE_DEBUG, "%s This is top ASR, set the topAsrSpans", buf, 0xCu);
        }

        [spansCopy addObjectsFromArray:v32];
      }

      asrId3 = [v25 asrId];

      if (asrId3)
      {
        asrId4 = [v25 asrId];
        [mapCopy setObject:v32 forKey:asrId4];
      }

      else
      {
        asrId4 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(asrId4, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v46 = "[CDMBaseSpanMatchService spanizeAsrs:asrSpansMap:topAsrSpans:topAsrSpansFiltered:asrHypotheses:]";
          v47 = 2112;
          v48 = v25;
          _os_log_impl(&dword_1DC287000, asrId4, OS_LOG_TYPE_INFO, "%s [WARN]: Did not expect a request w/o ASR uuid? %@", buf, 0x16u);
        }
      }

      ++v24;
    }

    while ([asrsCopy count] > v24);
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (id)warmup:(id)warmup
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    serviceName = [(CDMBaseService *)self serviceName];
    *buf = 136315394;
    v17 = "[CDMBaseSpanMatchService warmup:]";
    v18 = 2112;
    v19 = serviceName;
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
  serviceState = [(CDMBaseService *)self serviceState];
  serviceName2 = [(CDMBaseService *)self serviceName];
  v13 = [(CDMWarmupResponseCommand *)v10 initWithServiceState:serviceState serviceName:serviceName2];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)setup:(id)setup
{
  v20 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
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

  v8 = [(CDMBaseSpanMatchService *)self setupSpanMatcher:setupCopy];

  if (v8)
  {
    [(CDMBaseSpanMatchService *)self setSpanMatcher:v8];
    self->super.super._serviceState = 2;
    createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"Unable to setup span matcher for %@", v12];

    createSetupResponseCommand = [(CDMBaseSpanMatchService *)self createErrorSetupResponseCommand:v13];
  }

  v14 = *MEMORY[0x1E69E9840];

  return createSetupResponseCommand;
}

- (id)createErrorSetupResponseCommand:(id)command
{
  v14 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  self->super.super._serviceState = 3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[CDMBaseSpanMatchService createErrorSetupResponseCommand:]";
    v12 = 2112;
    v13 = commandCopy;
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: %@", &v10, 0x16u);
  }

  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v7 = [(CDMBaseService *)self createErrorWithCode:1 description:commandCopy];
  [createSetupResponseCommand setCmdError:v7];

  v8 = *MEMORY[0x1E69E9840];

  return createSetupResponseCommand;
}

- (id)_handle:(id)_handle
{
  v66 = *MEMORY[0x1E69E9840];
  _handleCopy = _handle;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  serviceState = [(CDMBaseService *)self serviceState];
  v8 = CDMOSLoggerForCategory(0);
  v9 = v8;
  if (serviceState == 2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v59 = "[CDMBaseSpanMatchService _handle:]";
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s Spanize all ASR(s) and fill in asrSpansMap & topAsrSpansFiltered", buf, 0xCu);
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    spanMatchRequests = [_handleCopy spanMatchRequests];
    v13 = [v11 initWithCapacity:{objc_msgSend(spanMatchRequests, "count")}];

    v14 = objc_alloc(MEMORY[0x1E695DF70]);
    spanMatchRequests2 = [_handleCopy spanMatchRequests];
    v16 = [v14 initWithCapacity:{objc_msgSend(spanMatchRequests2, "count")}];

    spanMatchRequests3 = [_handleCopy spanMatchRequests];
    asrHypothesis = [_handleCopy asrHypothesis];
    v55 = v16;
    [(CDMBaseSpanMatchService *)self spanizeAsrs:spanMatchRequests3 asrSpansMap:v10 topAsrSpans:v13 topAsrSpansFiltered:v16 asrHypotheses:asrHypothesis];

    spanMatchRequests4 = [_handleCopy spanMatchRequests];
    firstObject = [spanMatchRequests4 firstObject];

    v21 = [CDMTokenChain alloc];
    tokenChain = [firstObject tokenChain];
    v57 = [(CDMTokenChain *)v21 initWithProtoTokenChain:tokenChain];

    v23 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v59 = "[CDMBaseSpanMatchService _handle:]";
      _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s Creating a map of {ASR uuid: {char_index: timing}} for ASR alternatives", buf, 0xCu);
    }

    asrHypothesis2 = [_handleCopy asrHypothesis];
    v25 = [CDMAsrUtils createAsrUuidCharIndexTimingMaps:asrHypothesis2];

    v26 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v59 = "[CDMBaseSpanMatchService _handle:]";
      _os_log_debug_impl(&dword_1DC287000, v26, OS_LOG_TYPE_DEBUG, "%s Get the {char_index: timing} map for top ASR", buf, 0xCu);
    }

    v53 = firstObject;
    asrId = [firstObject asrId];
    v54 = v25;
    v56 = [v25 objectForKey:asrId];

    asrHypothesis3 = [_handleCopy asrHypothesis];
    v29 = [asrHypothesis3 count];

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

      asrHypothesis4 = [_handleCopy asrHypothesis];
      v34 = [asrHypothesis4 objectAtIndexedSubscript:0];
      [CDMSpanMatchUtils addAsrConfidenceToSpans:v13 tokenChain:v57 asrTimingMap:v56 asrHypothesis:v34];

      v35 = CDMLogContext;
      v36 = v35;
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v36, OS_SIGNPOST_INTERVAL_END, v30, "SpanMatcher", "", buf, 2u);
      }
    }

    spanMatchRequests5 = [_handleCopy spanMatchRequests];
    v38 = [spanMatchRequests5 count];

    if (v38 >= 2)
    {
      spanMatchRequests6 = [_handleCopy spanMatchRequests];
      asrHypothesis5 = [_handleCopy asrHypothesis];
      [CDMSpanMatchUtils postProcessSpans:spanMatchRequests6 asrSpansMap:v10 asrHypothesis:asrHypothesis5 asrMaps:v54 topAsrTokenChain:v57 asrMapTopAsr:v56 topAsrSpansFiltered:v55];
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
      serviceState2 = v6;
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
      serviceState2 = [(CDMBaseService *)self serviceState];
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s %@ Not Ready! State: %tu", buf, 0x20u);
    }

    v45 = objc_alloc_init(CDMSpanMatcherResponseCommand);
    v10 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Service Not Ready"];
    [(CDMBaseCommand *)v45 setCmdError:v10];
  }

  v49 = *MEMORY[0x1E69E9840];

  return v45;
}

- (id)handle:(id)handle
{
  handleCopy = handle;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CDMBaseSpanMatchService *)self _handle:handleCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)setupSpanMatcher:(id)matcher
{
  matcherCopy = matcher;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

+ (id)convertToSpanMatchRequest:(id)request nlContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69D1398];
  contextCopy = context;
  requestCopy = request;
  v8 = objc_alloc_init(v5);
  tokenChain = [requestCopy tokenChain];
  [v8 setTokenChain:tokenChain];

  text = [requestCopy text];
  [v8 setUtterance:text];

  [v8 setNlContext:contextCopy];
  asrId = [requestCopy asrId];

  [v8 setAsrId:asrId];
  v12 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    utterance = [v8 utterance];
    v16 = 136315394;
    v17 = "+[CDMBaseSpanMatchService convertToSpanMatchRequest:nlContext:]";
    v18 = 2112;
    v19 = utterance;
    _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s Converted TokenizerResponse -> SpanMatchRequest for utterance: %@", &v16, 0x16u);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)convertToSpanMatchRequests:(id)requests nlContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  contextCopy = context;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = requestsCopy;
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

        v13 = [CDMBaseSpanMatchService convertToSpanMatchRequest:*(*(&v16 + 1) + 8 * i) nlContext:contextCopy, v16];
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