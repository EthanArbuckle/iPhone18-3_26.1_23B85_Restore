@interface CDMServiceGraphUtil
+ (BOOL)debugInfoEnabled:(id)enabled;
+ (BOOL)runUaaPNLProtoService:(id)service requestId:(id)id utterance:(id)utterance locale:(id)locale tokenChain:(id)chain matchingSpans:(id)spans embeddingTensor:(id)tensor currentTurn:(id)self0 outUaapProtoRequest:(id *)self1 outUaapProtoResponse:(id *)self2 outError:(id *)self3;
+ (BOOL)spanHasMatcherName:(int)name matchingSpan:(id)span;
+ (id)adjustProtoMatchingSpans:(id)spans tokenChain:(id)chain outError:(id *)error;
+ (id)appendMarrsSpans:(id)spans marrsMRSpans:(id)rSpans;
+ (id)buildLVCRequestWithTokenChain:(id)chain matchingSpans:(id)spans utterance:(id)utterance embeddingTensor:(id)tensor rewriteMsg:(id)msg nluRequestId:(id)id reformedTurnInput:(id)input error:(id *)self0;
+ (id)buildNLv4ProtoRequestWithTokenChain:(id)chain matchingSpans:(id)spans utterance:(id)utterance embeddingTensor:(id)tensor currentTurn:(id)turn requestId:(id)id outError:(id *)error;
+ (id)buildNormalizedUtterance:(id)utterance;
+ (id)buildPSCRequestWithTokenChain:(id)chain matchingSpans:(id)spans utterance:(id)utterance embeddingTensor:(id)tensor rewriteMsg:(id)msg nluRequestId:(id)id currentTurn:(id)turn error:(id *)self0;
+ (id)buildRepetitionResult:(id)result;
+ (id)buildSNLCProtoRequestWithTokenChain:(id)chain matchingSpans:(id)spans utterance:(id)utterance embeddingTensor:(id)tensor rewriteMsg:(id)msg requestId:(id)id currentTurn:(id)turn error:(id *)self0;
+ (id)embeddingsOutput:(id)output embeddingConfig:(id)config forFactor:(id)factor;
+ (id)extractPrevTurnsAsrConfidence:(id)confidence;
+ (id)extractReferenceResolutionUtterances:(id)utterances;
+ (id)extractStableEmbeddings:(id)embeddings;
+ (id)getNonWhitespaceTokenChain:(id)chain;
+ (id)mergeDateTimeSpans:(id)spans regexSpans:(id)regexSpans siriVocabularySpans:(id)vocabularySpans vocSpans:(id)vocSpans;
+ (id)overrideInputsFromUtterance:(id)utterance matchingSpans:(id)spans tokenChain:(id)chain contextUpdateReformedTurnInputBundle:(id)bundle;
+ (id)prepareCcqrServiceRequest:(id)request currentTurnAsrConf:(double)conf tokenResponse:(id)response previousTurnsAsrConf:(id)asrConf previousTurnTokenizationResponseCommand:(id)command nluRequestId:(id)id resultCandidateId:(id)candidateId cdmRequestId:(id)self0;
+ (id)prepareCcqrTokens:(id)tokens currentTurn:(id)turn previousTurns:(id)turns utterance:(id)utterance locale:(id)locale;
+ (id)runCcqrService:(id)service nluRequest:(id)request tokenResponse:(id)response previousTurnTokenizationResponseCommand:(id)command rdResponse:(id)rdResponse requestLink:(id)link locale:(id)locale;
+ (void)addDebugInfo:(id)info nluRequest:(id)request responseObject:(id)object;
@end

@implementation CDMServiceGraphUtil

+ (id)embeddingsOutput:(id)output embeddingConfig:(id)config forFactor:(id)factor
{
  v39 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  configCopy = config;
  factorCopy = factor;
  if (!outputCopy)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
LABEL_23:
      embeddingTensor = 0;
      goto LABEL_30;
    }

    *buf = 136315138;
    v36 = "+[CDMServiceGraphUtil embeddingsOutput:embeddingConfig:forFactor:]";
    v24 = "%s Got nil embeddingsOutput, return nil";
LABEL_34:
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, v24, buf, 0xCu);
    goto LABEL_23;
  }

  if (!configCopy)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    *buf = 136315138;
    v36 = "+[CDMServiceGraphUtil embeddingsOutput:embeddingConfig:forFactor:]";
    v24 = "%s Got nil embeddingConfig, return nil";
    goto LABEL_34;
  }

  v10 = [configCopy getEmbeddingConfigForFactor:factorCopy];
  v11 = v10;
  if (v10)
  {
    v27 = factorCopy;
    v28 = configCopy;
    embeddingModelVersion = [v10 embeddingModelVersion];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = outputCopy;
    v13 = outputCopy;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          if ([v18 hasEmbeddingVersion])
          {
            embeddingVersion = [v18 embeddingVersion];
            v20 = [embeddingVersion isEqualToString:embeddingModelVersion];

            if (v20)
            {
              if ([v18 hasEmbeddingTensor])
              {
                embeddingTensor = [v18 embeddingTensor];

                goto LABEL_28;
              }

              v21 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v36 = "+[CDMServiceGraphUtil embeddingsOutput:embeddingConfig:forFactor:]";
              }
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v22 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v36 = "+[CDMServiceGraphUtil embeddingsOutput:embeddingConfig:forFactor:]";
      v37 = 2112;
      v38 = embeddingModelVersion;
      _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, "%s [WARN]: Did not find a EmbeddingTensorOutput that matches version=%@, returning nil.", buf, 0x16u);
    }

    embeddingTensor = 0;
LABEL_28:
    configCopy = v28;
    outputCopy = v29;
    factorCopy = v27;
  }

  else
  {
    embeddingModelVersion = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(embeddingModelVersion, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v36 = "+[CDMServiceGraphUtil embeddingsOutput:embeddingConfig:forFactor:]";
      v37 = 2112;
      v38 = factorCopy;
      _os_log_impl(&dword_1DC287000, embeddingModelVersion, OS_LOG_TYPE_INFO, "%s [WARN]: No EmbeddingConfigItem for factor=%@, return nil", buf, 0x16u);
    }

    embeddingTensor = 0;
  }

LABEL_30:
  v25 = *MEMORY[0x1E69E9840];

  return embeddingTensor;
}

+ (id)extractStableEmbeddings:(id)embeddings
{
  v26 = *MEMORY[0x1E69E9840];
  embeddingsCopy = embeddings;
  v4 = embeddingsCopy;
  if (embeddingsCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = embeddingsCopy;
    v5 = embeddingsCopy;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if ([v10 isStableEmbeddingsVersion])
          {
            if ([v10 hasEmbeddingTensor])
            {
              embeddingTensor = [v10 embeddingTensor];
              goto LABEL_21;
            }

            v11 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              embeddingVersion = [v10 embeddingVersion];
              *buf = 136315394;
              v22 = "+[CDMServiceGraphUtil extractStableEmbeddings:]";
              v23 = 2112;
              v24 = embeddingVersion;
              _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s [WARN]: Found a stable embedding version %@, but it doesn't have embeddingTensor? skip this one", buf, 0x16u);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "+[CDMServiceGraphUtil extractStableEmbeddings:]";
      _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: Did not find a stableEmbeddingVersion match, returning nil.", buf, 0xCu);
    }

    embeddingTensor = 0;
LABEL_21:
    v4 = v16;
  }

  else
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v22 = "+[CDMServiceGraphUtil extractStableEmbeddings:]";
      _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Got nil embeddingsOutput, return nil", buf, 0xCu);
    }

    embeddingTensor = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return embeddingTensor;
}

+ (id)appendMarrsSpans:(id)spans marrsMRSpans:(id)rSpans
{
  v14 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  rSpansCopy = rSpans;
  array = [MEMORY[0x1E695DF70] array];
  v8 = array;
  if (spansCopy)
  {
    [array addObjectsFromArray:spansCopy];
  }

  if (rSpansCopy && [rSpansCopy count])
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "+[CDMServiceGraphUtil appendMarrsSpans:marrsMRSpans:]";
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s Feeding mention resolver spans to NLv4", &v12, 0xCu);
    }

    [v8 addObjectsFromArray:rSpansCopy];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)mergeDateTimeSpans:(id)spans regexSpans:(id)regexSpans siriVocabularySpans:(id)vocabularySpans vocSpans:(id)vocSpans
{
  v45 = *MEMORY[0x1E69E9840];
  vocSpansCopy = vocSpans;
  vocabularySpansCopy = vocabularySpans;
  regexSpansCopy = regexSpans;
  spansCopy = spans;
  spanMatchResponse = [spansCopy spanMatchResponse];
  matchingSpansCount = [spanMatchResponse matchingSpansCount];
  spanMatchResponse2 = [regexSpansCopy spanMatchResponse];
  v16 = [spanMatchResponse2 matchingSpansCount] + matchingSpansCount;
  spanMatchResponse3 = [vocabularySpansCopy spanMatchResponse];
  matchingSpansCount2 = [spanMatchResponse3 matchingSpansCount];
  spanMatchResponse4 = [vocSpansCopy spanMatchResponse];
  v20 = matchingSpansCount2 + [spanMatchResponse4 matchingSpansCount];

  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v16 + v20];
  spanMatchResponse5 = [spansCopy spanMatchResponse];

  matchingSpans = [spanMatchResponse5 matchingSpans];
  [v21 addObjectsFromArray:matchingSpans];

  spanMatchResponse6 = [regexSpansCopy spanMatchResponse];

  matchingSpans2 = [spanMatchResponse6 matchingSpans];
  [v21 addObjectsFromArray:matchingSpans2];

  spanMatchResponse7 = [vocabularySpansCopy spanMatchResponse];

  matchingSpans3 = [spanMatchResponse7 matchingSpans];
  [v21 addObjectsFromArray:matchingSpans3];

  spanMatchResponse8 = [vocSpansCopy spanMatchResponse];

  matchingSpans4 = [spanMatchResponse8 matchingSpans];
  [v21 addObjectsFromArray:matchingSpans4];

  v30 = objc_alloc_init(MEMORY[0x1E69D13A0]);
  [v30 setMatchingSpans:v21];
  v31 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
  {
    v35 = v31;
    v39 = 136315650;
    v40 = "+[CDMServiceGraphUtil mergeDateTimeSpans:regexSpans:siriVocabularySpans:vocSpans:]";
    v41 = 2112;
    v42 = @"spanmatch";
    v43 = 1024;
    LODWORD(v44) = [v21 count];
    _os_log_debug_impl(&dword_1DC287000, v35, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nSpan Matcher Services generated number of spans: %d", &v39, 0x1Cu);

    v31 = CDMLogContext;
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v36 = MEMORY[0x1E69D1438];
    v37 = v31;
    v38 = [v36 printableSpanMatchResponse:v30 withUSOGraph:{+[CDMUserDefaultsUtils isPrintUSOInSpanEnabled](CDMUserDefaultsUtils, "isPrintUSOInSpanEnabled")}];
    v39 = 136315650;
    v40 = "+[CDMServiceGraphUtil mergeDateTimeSpans:regexSpans:siriVocabularySpans:vocSpans:]";
    v41 = 2112;
    v42 = @"spanmatch";
    v43 = 2112;
    v44 = v38;
    _os_log_debug_impl(&dword_1DC287000, v37, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nSpanMatchResponse: %@", &v39, 0x20u);
  }

  v32 = [[CDMSpanMatchProtoResponseCommand alloc] initWithResponse:v30];

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (id)buildLVCRequestWithTokenChain:(id)chain matchingSpans:(id)spans utterance:(id)utterance embeddingTensor:(id)tensor rewriteMsg:(id)msg nluRequestId:(id)id reformedTurnInput:(id)input error:(id *)self0
{
  v65 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  spansCopy = spans;
  utteranceCopy = utterance;
  tensorCopy = tensor;
  msgCopy = msg;
  idCopy = id;
  inputCopy = input;
  v18 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v61 = "+[CDMServiceGraphUtil buildLVCRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:nluRequestId:reformedTurnInput:error:]";
    _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s Building SIRINLUINTERNALITFMITFMParserRequest for LVC...", buf, 0xCu);
  }

  v19 = objc_alloc_init(MEMORY[0x1E69D1320]);
  v20 = [CDMServiceGraphUtil buildNormalizedUtterance:chainCopy];
  [v19 setNormalisedUtterance:v20];

  v47 = utteranceCopy;
  [v19 setOriginalUtterance:utteranceCopy];
  v59 = 0;
  v48 = spansCopy;
  v50 = [objc_opt_class() adjustProtoMatchingSpans:spansCopy tokenChain:chainCopy outError:&v59];
  v44 = v59;
  v21 = objc_alloc(MEMORY[0x1E695DF70]);
  tokens = [chainCopy tokens];
  v23 = [v21 initWithCapacity:{objc_msgSend(tokens, "count")}];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v49 = chainCopy;
  tokens2 = [chainCopy tokens];
  v25 = [tokens2 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v56;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v56 != v27)
        {
          objc_enumerationMutation(tokens2);
        }

        v29 = *(*(&v55 + 1) + 8 * i);
        if ([v29 isWhitespace])
        {
          v30 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v61 = "+[CDMServiceGraphUtil buildLVCRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:nluRequestId:reformedTurnInput:error:]";
            v62 = 2112;
            v63 = v29;
            _os_log_impl(&dword_1DC287000, v30, OS_LOG_TYPE_INFO, "%s ignoring whitespace token: %@", buf, 0x16u);
          }
        }

        else
        {
          [v23 addObject:v29];
        }
      }

      v26 = [tokens2 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v26);
  }

  v31 = [v49 copy];
  [v31 setTokens:v23];
  v54 = v31;
  [v19 setTokenChain:v31];
  v32 = objc_alloc_init(MEMORY[0x1E69D12D0]);
  [v32 setNluRequestId:idCopy];
  [v32 setTokenisedUtterance:v19];
  v33 = [MEMORY[0x1E695DF70] arrayWithArray:v50];
  [v32 setMatchingSpans:v33];

  [v32 setEmbeddings:tensorCopy];
  currentTurn = [inputCopy currentTurn];
  [v32 setTurnInput:currentTurn];

  turnInput = [v32 turnInput];
  turnContext = [turnInput turnContext];
  legacyNlContext = [turnContext legacyNlContext];

  if ([legacyNlContext hasPreviousDomainName])
  {
    turnInput2 = [v32 turnInput];
    turnContext2 = [turnInput2 turnContext];
    [turnContext2 setLegacyNlContext:legacyNlContext];
  }

  v40 = [CDMServiceGraphUtil overrideInputsFromUtterance:v47 matchingSpans:v48 tokenChain:v49 contextUpdateReformedTurnInputBundle:inputCopy, v44];
  v41 = [[CDMLVCRequestCommand alloc] initWithParserRequest:v32 rewriteMsg:msgCopy overridesInputs:v40];

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

+ (id)buildPSCRequestWithTokenChain:(id)chain matchingSpans:(id)spans utterance:(id)utterance embeddingTensor:(id)tensor rewriteMsg:(id)msg nluRequestId:(id)id currentTurn:(id)turn error:(id *)self0
{
  v70 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  spansCopy = spans;
  utteranceCopy = utterance;
  tensorCopy = tensor;
  msgCopy = msg;
  idCopy = id;
  turnCopy = turn;
  v20 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v67 = "+[CDMServiceGraphUtil buildPSCRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:nluRequestId:currentTurn:error:]";
    _os_log_impl(&dword_1DC287000, v20, OS_LOG_TYPE_INFO, "%s Building SIRINLUINTERNALITFMITFMParserRequest...", buf, 0xCu);
  }

  v21 = objc_alloc_init(MEMORY[0x1E69D1320]);
  v22 = [CDMServiceGraphUtil buildNormalizedUtterance:chainCopy];
  [v21 setNormalisedUtterance:v22];

  v58 = v21;
  [v21 setOriginalUtterance:utteranceCopy];
  [objc_opt_class() filterMatchingSpans:spansCopy withMatcherName:7];
  v55 = v64 = 0;
  v23 = [objc_opt_class() adjustProtoMatchingSpans:v55 tokenChain:chainCopy outError:&v64];
  v57 = v64;
  if (v23)
  {
    v53 = v23;
    v54 = idCopy;
    v50 = utteranceCopy;
    v51 = spansCopy;
    v24 = objc_alloc(MEMORY[0x1E695DF70]);
    tokens = [chainCopy tokens];
    v26 = [v24 initWithCapacity:{objc_msgSend(tokens, "count")}];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v52 = chainCopy;
    tokens2 = [chainCopy tokens];
    v28 = [tokens2 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v61;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v61 != v30)
          {
            objc_enumerationMutation(tokens2);
          }

          v32 = *(*(&v60 + 1) + 8 * i);
          if ([v32 isWhitespace])
          {
            v33 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v67 = "+[CDMServiceGraphUtil buildPSCRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:nluRequestId:currentTurn:error:]";
              v68 = 2112;
              v69 = v32;
              _os_log_impl(&dword_1DC287000, v33, OS_LOG_TYPE_INFO, "%s ignoring whitespace token: %@", buf, 0x16u);
            }
          }

          else
          {
            [v26 addObject:v32];
          }
        }

        v29 = [tokens2 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v29);
    }

    chainCopy = v52;
    v34 = [v52 copy];
    [v34 setTokens:v26];
    [v58 setTokenChain:v34];
    v35 = objc_alloc_init(MEMORY[0x1E69D12D0]);
    nluRequestId = [v54 nluRequestId];
    [v35 setRequestId:nluRequestId];

    [v35 setNluRequestId:v54];
    [v35 setTokenisedUtterance:v58];
    v37 = [MEMORY[0x1E695DF70] arrayWithArray:v53];
    [v35 setMatchingSpans:v37];

    [v35 setEmbeddings:tensorCopy];
    [v35 setTurnInput:turnCopy];
    turnInput = [v35 turnInput];
    turnContext = [turnInput turnContext];
    legacyNlContext = [turnContext legacyNlContext];

    if ([legacyNlContext hasPreviousDomainName])
    {
      turnInput2 = [v35 turnInput];
      turnContext2 = [turnInput2 turnContext];
      [turnContext2 setLegacyNlContext:legacyNlContext];
    }

    v43 = msgCopy;
    v44 = [[CDMPSCRequestCommand alloc] initWithParserRequest:v35 rewriteMsg:msgCopy];

    utteranceCopy = v50;
    spansCopy = v51;
    idCopy = v54;
    v45 = v55;
    v23 = v53;
  }

  else
  {
    v46 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v57 localizedDescription];
      *buf = 136315394;
      v67 = "+[CDMServiceGraphUtil buildPSCRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:nluRequestId:currentTurn:error:]";
      v68 = 2112;
      v69 = localizedDescription;
      _os_log_error_impl(&dword_1DC287000, v46, OS_LOG_TYPE_ERROR, "%s [ERR]: Error converting matched spans: %@", buf, 0x16u);
    }

    v43 = msgCopy;
    v44 = 0;
    if (error)
    {
      *error = v57;
    }

    v45 = v55;
  }

  v47 = *MEMORY[0x1E69E9840];

  return v44;
}

+ (id)overrideInputsFromUtterance:(id)utterance matchingSpans:(id)spans tokenChain:(id)chain contextUpdateReformedTurnInputBundle:(id)bundle
{
  v41 = *MEMORY[0x1E69E9840];
  utteranceCopy = utterance;
  spansCopy = spans;
  chainCopy = chain;
  bundleCopy = bundle;
  currentTurn = [bundleCopy currentTurn];
  v32 = bundleCopy;
  previousTurns = [bundleCopy previousTurns];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = objc_alloc_init(MEMORY[0x1E69D1338]);
  v35 = utteranceCopy;
  [v16 setUtterance:utteranceCopy];
  v33 = chainCopy;
  [v16 setTokenChain:chainCopy];
  v34 = spansCopy;
  [v16 setMatchingSpans:spansCopy];
  v31 = currentTurn;
  [v16 setTurnInput:currentTurn];
  v29 = v16;
  [v15 addObject:v16];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = previousTurns;
  reverseObjectEnumerator = [previousTurns reverseObjectEnumerator];
  v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v22 = *(*(&v36 + 1) + 8 * i);
        v23 = objc_alloc_init(MEMORY[0x1E69D1338]);
        asrOutputs = [v22 asrOutputs];
        v25 = [asrOutputs objectAtIndex:0];
        utterance = [v25 utterance];

        [v23 setUtterance:utterance];
        [v23 setTurnInput:v22];
        [v15 addObject:v23];
      }

      v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v19);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)buildSNLCProtoRequestWithTokenChain:(id)chain matchingSpans:(id)spans utterance:(id)utterance embeddingTensor:(id)tensor rewriteMsg:(id)msg requestId:(id)id currentTurn:(id)turn error:(id *)self0
{
  v67 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  spansCopy = spans;
  utteranceCopy = utterance;
  tensorCopy = tensor;
  msgCopy = msg;
  idCopy = id;
  turnCopy = turn;
  v19 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v64 = "+[CDMServiceGraphUtil buildSNLCProtoRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:requestId:currentTurn:error:]";
    _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s Building SIRINLUINTERNALITFMITFMParserRequest...", buf, 0xCu);
  }

  v20 = objc_alloc_init(MEMORY[0x1E69D1320]);
  v21 = [CDMServiceGraphUtil buildNormalizedUtterance:chainCopy];
  [v20 setNormalisedUtterance:v21];

  [v20 setOriginalUtterance:utteranceCopy];
  v61 = 0;
  v22 = [objc_opt_class() adjustProtoMatchingSpans:spansCopy tokenChain:chainCopy outError:&v61];
  v56 = v61;
  v52 = v20;
  if (v22)
  {
    v47 = v22;
    v48 = idCopy;
    v49 = utteranceCopy;
    v50 = spansCopy;
    v23 = objc_alloc(MEMORY[0x1E695DF70]);
    tokens = [chainCopy tokens];
    v25 = [v23 initWithCapacity:{objc_msgSend(tokens, "count")}];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v51 = chainCopy;
    tokens2 = [chainCopy tokens];
    v27 = [tokens2 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v58;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v58 != v29)
          {
            objc_enumerationMutation(tokens2);
          }

          v31 = *(*(&v57 + 1) + 8 * i);
          if ([v31 isWhitespace])
          {
            v32 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v64 = "+[CDMServiceGraphUtil buildSNLCProtoRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:requestId:currentTurn:error:]";
              v65 = 2112;
              v66 = v31;
              _os_log_impl(&dword_1DC287000, v32, OS_LOG_TYPE_INFO, "%s ignoring whitespace token: %@", buf, 0x16u);
            }
          }

          else
          {
            [v25 addObject:v31];
          }
        }

        v28 = [tokens2 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v28);
    }

    v33 = [v51 copy];
    [v33 setTokens:v25];
    v34 = v52;
    [v52 setTokenChain:v33];
    v35 = objc_alloc_init(MEMORY[0x1E69D12D0]);
    nluRequestId = [v48 nluRequestId];
    [v35 setRequestId:nluRequestId];

    [v35 setNluRequestId:v48];
    [v35 setTokenisedUtterance:v52];
    v22 = v47;
    v37 = [MEMORY[0x1E695DF70] arrayWithArray:v47];
    [v35 setMatchingSpans:v37];

    v38 = tensorCopy;
    [v35 setEmbeddings:tensorCopy];
    [v35 setTurnInput:turnCopy];
    v39 = msgCopy;
    v40 = [[CDMSNLCProtoRequestCommand alloc] initWithParserRequest:v35 rewriteMsg:msgCopy];

    idCopy = v48;
    v41 = turnCopy;

    spansCopy = v50;
    v42 = v51;
    utteranceCopy = v49;
  }

  else
  {
    v43 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v56 localizedDescription];
      *buf = 136315394;
      v64 = "+[CDMServiceGraphUtil buildSNLCProtoRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:rewriteMsg:requestId:currentTurn:error:]";
      v65 = 2112;
      v66 = localizedDescription;
      _os_log_error_impl(&dword_1DC287000, v43, OS_LOG_TYPE_ERROR, "%s [ERR]: Error converting matched spans: %@", buf, 0x16u);
    }

    v42 = chainCopy;

    v39 = msgCopy;
    v40 = 0;
    if (error)
    {
      *error = v56;
    }

    v34 = v52;
    v41 = turnCopy;
    v38 = tensorCopy;
  }

  v44 = *MEMORY[0x1E69E9840];

  return v40;
}

+ (id)buildNLv4ProtoRequestWithTokenChain:(id)chain matchingSpans:(id)spans utterance:(id)utterance embeddingTensor:(id)tensor currentTurn:(id)turn requestId:(id)id outError:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  tensorCopy = tensor;
  turnCopy = turn;
  idCopy = id;
  utteranceCopy = utterance;
  spansCopy = spans;
  v19 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v34 = "+[CDMServiceGraphUtil buildNLv4ProtoRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:currentTurn:requestId:outError:]";
    _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s Building SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest...", buf, 0xCu);
  }

  v20 = objc_alloc_init(MEMORY[0x1E69D1310]);
  v21 = objc_alloc_init(MEMORY[0x1E69D1320]);
  v22 = [CDMServiceGraphUtil buildNormalizedUtterance:chainCopy];
  [v21 setNormalisedUtterance:v22];

  [v21 setOriginalUtterance:utteranceCopy];
  v23 = [CDMServiceGraphUtil getNonWhitespaceTokenChain:chainCopy];
  [v21 setTokenChain:v23];

  [v20 setMaxNumParses:{+[CDMUserDefaultsUtils readNLv4MaxNumParses](CDMUserDefaultsUtils, "readNLv4MaxNumParses")}];
  v24 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    maxNumParses = [v20 maxNumParses];
    *buf = 136315394;
    v34 = "+[CDMServiceGraphUtil buildNLv4ProtoRequestWithTokenChain:matchingSpans:utterance:embeddingTensor:currentTurn:requestId:outError:]";
    v35 = 2048;
    v36 = maxNumParses;
    _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s Set nlv4ParserRequest.maxNumParses = %llu", buf, 0x16u);
  }

  nluRequestId = [idCopy nluRequestId];
  [v20 setRequestId:nluRequestId];

  [v20 setNluRequestId:idCopy];
  [v20 setTokenisedUtterance:v21];
  v26 = [CDMServiceGraphUtil adjustProtoMatchingSpans:spansCopy tokenChain:chainCopy outError:error];

  [v20 setMatchingSpans:v26];
  if (*error)
  {
    v27 = 0;
    v28 = tensorCopy;
  }

  else
  {
    v28 = tensorCopy;
    [v20 setEmbeddings:tensorCopy];
    [v20 setTurnInput:turnCopy];
    v27 = [[CDMNLv4ProtoRequestCommand alloc] initWithParserRequest:v20 requestId:idCopy];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)adjustProtoMatchingSpans:(id)spans tokenChain:(id)chain outError:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  chainCopy = chain;
  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(spansCopy, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = spansCopy;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v45;
    *&v10 = 136315906;
    v42 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v44 + 1) + 8 * v13);
        v15 = [v14 copy];
        startTokenIndex = [v14 startTokenIndex];
        tokens = [chainCopy tokens];
        v18 = [tokens count];

        if (v18 <= startTokenIndex)
        {
          v29 = CDMLogContext;
          if (!os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
          {
            goto LABEL_17;
          }

          *buf = 136315650;
          v49 = "+[CDMServiceGraphUtil adjustProtoMatchingSpans:tokenChain:outError:]";
          v50 = 2112;
          v51 = @"spanmatch";
          v52 = 2112;
          v53[0] = v14;
          v27 = v29;
          v28 = "%s [WARN]: [insights-cdm-%@]:\nInvalid rawTokenIndex on begin token. Span:\n %@";
          goto LABEL_16;
        }

        tokens2 = [chainCopy tokens];
        v20 = [tokens2 objectAtIndexedSubscript:startTokenIndex];
        nonWhitespaceTokenIndex = [v20 nonWhitespaceTokenIndex];

        if ((nonWhitespaceTokenIndex & 0x80000000) != 0)
        {
          v30 = CDMLogContext;
          if (!os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
          {
            goto LABEL_17;
          }

          *buf = 136315650;
          v49 = "+[CDMServiceGraphUtil adjustProtoMatchingSpans:tokenChain:outError:]";
          v50 = 2112;
          v51 = @"spanmatch";
          v52 = 2112;
          v53[0] = v14;
          v27 = v30;
          v28 = "%s [WARN]: [insights-cdm-%@]:\nInvalid nonWhitespaceTokenIndex on begin token, Span:\n %@";
          goto LABEL_16;
        }

        [v15 setStartTokenIndex:nonWhitespaceTokenIndex];
        endTokenIndex = [v14 endTokenIndex];
        if (!endTokenIndex || (v23 = endTokenIndex, [chainCopy tokens], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "count"), v24, v25 < v23))
        {
          v26 = CDMLogContext;
          if (!os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
          {
            goto LABEL_17;
          }

          *buf = 136315650;
          v49 = "+[CDMServiceGraphUtil adjustProtoMatchingSpans:tokenChain:outError:]";
          v50 = 2112;
          v51 = @"spanmatch";
          v52 = 2112;
          v53[0] = v14;
          v27 = v26;
          v28 = "%s [WARN]: [insights-cdm-%@]:\nInvalid end token index, Span:\n %@";
          goto LABEL_16;
        }

        tokens3 = [chainCopy tokens];
        v32 = [tokens3 objectAtIndexedSubscript:v23 - 1];
        nonWhitespaceTokenIndex2 = [v32 nonWhitespaceTokenIndex];

        if (nonWhitespaceTokenIndex2 < 0)
        {
          v35 = CDMLogContext;
          if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v49 = "+[CDMServiceGraphUtil adjustProtoMatchingSpans:tokenChain:outError:]";
            v50 = 2112;
            v51 = @"spanmatch";
            v52 = 2112;
            v53[0] = v14;
            v27 = v35;
            v28 = "%s [WARN]: [insights-cdm-%@]:\nInvalid nonWhitespaceTokenIndex on end inclusive token, Span:\n %@";
LABEL_16:
            _os_log_impl(&dword_1DC287000, v27, OS_LOG_TYPE_INFO, v28, buf, 0x20u);
          }
        }

        else
        {
          [v15 setEndTokenIndex:(nonWhitespaceTokenIndex2 + 1)];
          [v43 addObject:v15];
          v34 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            label = [v15 label];
            startTokenIndex2 = [v15 startTokenIndex];
            endTokenIndex2 = [v15 endTokenIndex];
            *buf = v42;
            v49 = "+[CDMServiceGraphUtil adjustProtoMatchingSpans:tokenChain:outError:]";
            v50 = 2112;
            v51 = label;
            v52 = 1024;
            LODWORD(v53[0]) = startTokenIndex2;
            WORD2(v53[0]) = 1024;
            *(v53 + 6) = endTokenIndex2;
            _os_log_debug_impl(&dword_1DC287000, v34, OS_LOG_TYPE_DEBUG, "%s MatchedSpan for NLv4: label %@, startTokenIndex %u, endTokenIndex %u", buf, 0x22u);
          }
        }

LABEL_17:

        ++v13;
      }

      while (v11 != v13);
      v39 = [v8 countByEnumeratingWithState:&v44 objects:v54 count:16];
      v11 = v39;
    }

    while (v39);
  }

  v40 = *MEMORY[0x1E69E9840];

  return v43;
}

+ (BOOL)spanHasMatcherName:(int)name matchingSpan:(id)span
{
  spanCopy = span;
  if ([spanCopy matcherNamesCount])
  {
    v6 = 0;
    while (1)
    {
      v7 = [spanCopy matcherNamesAtIndex:v6];
      v8 = v7 == name;
      if (v7 == name)
      {
        break;
      }

      if (++v6 >= [spanCopy matcherNamesCount])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  return v8;
}

+ (id)buildNormalizedUtterance:(id)utterance
{
  utteranceCopy = utterance;
  string = [MEMORY[0x1E696AD60] string];
  tokens = [utteranceCopy tokens];
  v6 = [tokens count];

  if (v6)
  {
    v7 = 0;
    do
    {
      tokens2 = [utteranceCopy tokens];
      v9 = [tokens2 objectAtIndexedSubscript:v7];
      hasCleanValue = [v9 hasCleanValue];

      tokens3 = [utteranceCopy tokens];
      v12 = [tokens3 objectAtIndexedSubscript:v7];
      v13 = v12;
      if (hasCleanValue)
      {
        [v12 cleanValue];
      }

      else
      {
        [v12 value];
      }
      v14 = ;
      [string appendString:v14];

      ++v7;
      tokens4 = [utteranceCopy tokens];
      v16 = [tokens4 count];
    }

    while (v7 < v16);
  }

  return string;
}

+ (id)buildRepetitionResult:(id)result
{
  resultCopy = result;
  v4 = objc_alloc_init(MEMORY[0x1E69D11B8]);
  [v4 setAsrHypothesisIndex:0];
  [v4 setRepetitionType:0];
  if (resultCopy)
  {
    response = [resultCopy response];
    repetitionType = [response repetitionType];

    if (repetitionType == 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    [v4 setRepetitionType:v7];
  }

  return v4;
}

+ (void)addDebugInfo:(id)info nluRequest:(id)request responseObject:(id)object
{
  v16 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  objectCopy = object;
  if ([CDMServiceGraphUtil debugInfoEnabled:request])
  {
    commandName = [objectCopy commandName];
    v10 = [objectCopy description];
    [infoCopy appendFormat:@"%@%@\n%@", @"\n\n   ➡️  ", commandName, v10];
  }

  else
  {
    commandName = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(commandName, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v13 = "+[CDMServiceGraphUtil addDebugInfo:nluRequest:responseObject:]";
      v14 = 2112;
      v15 = @"debug-mode-id";
      _os_log_debug_impl(&dword_1DC287000, commandName, OS_LOG_TYPE_DEBUG, "%s Early return and skip adding debugText as idAsString is not the special %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (BOOL)debugInfoEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (+[CDMPlatformUtils isInternalInstall])
  {
    requestId = [enabledCopy requestId];
    v5 = [requestId idA];
    v6 = [v5 isEqualToString:@"debug-mode-id"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)extractReferenceResolutionUtterances:(id)utterances
{
  v28 = *MEMORY[0x1E69E9840];
  utterancesCopy = utterances;
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = utterancesCopy;
  rewriteHypotheses = [utterancesCopy rewriteHypotheses];
  v6 = [rewriteHypotheses countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(rewriteHypotheses);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = objc_alloc_init(MEMORY[0x1E69D1380]);
        v12 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          utterance = [v10 utterance];
          *buf = 136315394;
          v24 = "+[CDMServiceGraphUtil extractReferenceResolutionUtterances:]";
          v25 = 2112;
          v26 = utterance;
          _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s Rewritten Utterance (reference resolution): %@", buf, 0x16u);
        }

        utterance2 = [v10 utterance];
        [v11 setUtterance:utterance2];

        [v11 setNluInternalTokens:0];
        [v11 setAsrId:0];
        [v11 setConfidence:0.0];
        [array addObject:v11];
      }

      v7 = [rewriteHypotheses countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v15 = [array copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)prepareCcqrServiceRequest:(id)request currentTurnAsrConf:(double)conf tokenResponse:(id)response previousTurnsAsrConf:(id)asrConf previousTurnTokenizationResponseCommand:(id)command nluRequestId:(id)id resultCandidateId:(id)candidateId cdmRequestId:(id)self0
{
  v110 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  responseCopy = response;
  asrConfCopy = asrConf;
  commandCopy = command;
  idCopy = id;
  candidateIdCopy = candidateId;
  requestIdCopy = requestId;
  v17 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v109 = "+[CDMServiceGraphUtil prepareCcqrServiceRequest:currentTurnAsrConf:tokenResponse:previousTurnsAsrConf:previousTurnTokenizationResponseCommand:nluRequestId:resultCandidateId:cdmRequestId:]";
    _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s Creating CDMQRRequestCommand for use in CCQR Service", buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  v18 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v109 = "+[CDMServiceGraphUtil prepareCcqrServiceRequest:currentTurnAsrConf:tokenResponse:previousTurnsAsrConf:previousTurnTokenizationResponseCommand:nluRequestId:resultCandidateId:cdmRequestId:]";
    _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s 1. Constructing previous interactions", buf, 0xCu);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = [commandCopy responses];
  v85 = [obj countByEnumeratingWithState:&v99 objects:v107 count:16];
  if (v85)
  {
    LODWORD(v19) = 0;
    v84 = *v100;
    v83 = commandCopy;
    while (2)
    {
      v20 = 0;
      v19 = v19;
      do
      {
        if (*v100 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v99 + 1) + 8 * v20);
        v22 = objc_alloc_init(MEMORY[0x1E69D1380]);
        text = [v21 text];
        [v22 setUtterance:text];

        [v22 setAsrId:0];
        [v22 setConfidence:1000.0];
        if ([asrConfCopy count] > v19)
        {
          v24 = [asrConfCopy objectAtIndex:v19];
          [v24 doubleValue];
          [v22 setConfidence:?];
        }

        tokenChain = [v21 tokenChain];
        tokens = [tokenChain tokens];
        [v22 setNluInternalTokens:tokens];

        previousSiriResponseTokenResponses = [commandCopy previousSiriResponseTokenResponses];
        v28 = [previousSiriResponseTokenResponses count];

        if (v28 <= v19)
        {
          v44 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v109 = "+[CDMServiceGraphUtil prepareCcqrServiceRequest:currentTurnAsrConf:tokenResponse:previousTurnsAsrConf:previousTurnTokenizationResponseCommand:nluRequestId:resultCandidateId:cdmRequestId:]";
            _os_log_impl(&dword_1DC287000, v44, OS_LOG_TYPE_INFO, "%s [WARN]: Missing previous Siri response! Attempted to access index exceeding number of previous Siri responses.", buf, 0xCu);
          }

          goto LABEL_26;
        }

        v29 = objc_alloc_init(MEMORY[0x1E69D1370]);
        v89 = v22;
        v106 = v22;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
        v31 = [v30 copy];
        [v29 setOriginalUtterances:v31];

        previousSiriResponseTokenResponses2 = [commandCopy previousSiriResponseTokenResponses];
        v33 = [previousSiriResponseTokenResponses2 objectAtIndex:v19];

        v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v33, "count")}];
        [v29 setSiriResponses:v34];

        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v35 = v33;
        v36 = [v35 countByEnumeratingWithState:&v95 objects:v105 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v96;
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v96 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v95 + 1) + 8 * i);
              siriResponses = [v29 siriResponses];
              tokenChain2 = [v40 tokenChain];
              tokens2 = [tokenChain2 tokens];
              [siriResponses addObjectsFromArray:tokens2];
            }

            v37 = [v35 countByEnumeratingWithState:&v95 objects:v105 count:16];
          }

          while (v37);
        }

        [v29 setLocale:requestCopy];
        [array addObject:v29];
        ++v19;

        ++v20;
        commandCopy = v83;
      }

      while (v20 != v85);
      v85 = [obj countByEnumeratingWithState:&v99 objects:v107 count:16];
      if (v85)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  v45 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v109 = "+[CDMServiceGraphUtil prepareCcqrServiceRequest:currentTurnAsrConf:tokenResponse:previousTurnsAsrConf:previousTurnTokenizationResponseCommand:nluRequestId:resultCandidateId:cdmRequestId:]";
    _os_log_debug_impl(&dword_1DC287000, v45, OS_LOG_TYPE_DEBUG, "%s 2. Constructing current interactions", buf, 0xCu);
  }

  v46 = objc_alloc_init(MEMORY[0x1E69D1380]);
  v47 = responseCopy;
  text2 = [responseCopy text];
  [v46 setUtterance:text2];

  tokenChain3 = [responseCopy tokenChain];
  tokens3 = [tokenChain3 tokens];
  [v46 setNluInternalTokens:tokens3];

  [v46 setAsrId:0];
  [v46 setConfidence:conf];
  v51 = objc_alloc_init(MEMORY[0x1E69D1370]);
  v104 = v46;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
  v53 = [v52 copy];
  [v51 setOriginalUtterances:v53];

  responses = [commandCopy responses];
  v55 = [responses count];

  previousSiriResponseTokenResponses3 = [commandCopy previousSiriResponseTokenResponses];
  v57 = [previousSiriResponseTokenResponses3 count];

  v90 = v46;
  if (v57 <= v55)
  {
    v73 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v109 = "+[CDMServiceGraphUtil prepareCcqrServiceRequest:currentTurnAsrConf:tokenResponse:previousTurnsAsrConf:previousTurnTokenizationResponseCommand:nluRequestId:resultCandidateId:cdmRequestId:]";
      _os_log_impl(&dword_1DC287000, v73, OS_LOG_TYPE_INFO, "%s [WARN]: Missing previous Siri response! Attempted to access index exceeding number of previous Siri responses.", buf, 0xCu);
    }

    array2 = [MEMORY[0x1E695DF70] array];
    [v51 setSiriResponses:array2];
  }

  else
  {
    previousSiriResponseTokenResponses4 = [commandCopy previousSiriResponseTokenResponses];
    v59 = [previousSiriResponseTokenResponses4 count];

    if (v59 > v55 + 1)
    {
      v60 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v109 = "+[CDMServiceGraphUtil prepareCcqrServiceRequest:currentTurnAsrConf:tokenResponse:previousTurnsAsrConf:previousTurnTokenizationResponseCommand:nluRequestId:resultCandidateId:cdmRequestId:]";
        _os_log_impl(&dword_1DC287000, v60, OS_LOG_TYPE_INFO, "%s [WARN]: Missing previous user utterance!", buf, 0xCu);
      }
    }

    previousSiriResponseTokenResponses5 = [commandCopy previousSiriResponseTokenResponses];
    v62 = [previousSiriResponseTokenResponses5 objectAtIndex:v55];

    v63 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v62, "count")}];
    [v51 setSiriResponses:v63];

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    array2 = v62;
    v65 = [array2 countByEnumeratingWithState:&v91 objects:v103 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v92;
      do
      {
        for (j = 0; j != v66; ++j)
        {
          if (*v92 != v67)
          {
            objc_enumerationMutation(array2);
          }

          v69 = *(*(&v91 + 1) + 8 * j);
          siriResponses2 = [v51 siriResponses];
          tokenChain4 = [v69 tokenChain];
          tokens4 = [tokenChain4 tokens];
          [siriResponses2 addObjectsFromArray:tokens4];
        }

        v66 = [array2 countByEnumeratingWithState:&v91 objects:v103 count:16];
      }

      while (v66);
    }

    v47 = responseCopy;
  }

  [v51 setLocale:requestCopy];
  [array addObject:v51];
  v74 = objc_alloc_init(MEMORY[0x1E69D1358]);
  [v74 setResultCandidateId:candidateIdCopy];
  [v74 setNluRequestId:idCopy];
  [v74 setOriginalInteractions:array];
  [v74 setCdmRequestId:requestIdCopy];
  v75 = [[CDMQRRequestCommand alloc] initWithQRRequest:v74];

  v76 = *MEMORY[0x1E69E9840];

  return v75;
}

+ (BOOL)runUaaPNLProtoService:(id)service requestId:(id)id utterance:(id)utterance locale:(id)locale tokenChain:(id)chain matchingSpans:(id)spans embeddingTensor:(id)tensor currentTurn:(id)self0 outUaapProtoRequest:(id *)self1 outUaapProtoResponse:(id *)self2 outError:(id *)self3
{
  v60 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  idCopy = id;
  chainCopy = chain;
  spansCopy = spans;
  tensorCopy = tensor;
  turnCopy = turn;
  v19 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v54 = "+[CDMServiceGraphUtil runUaaPNLProtoService:requestId:utterance:locale:tokenChain:matchingSpans:embeddingTensor:currentTurn:outUaapProtoRequest:outUaapProtoResponse:outError:]";
    _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s Creating SIRINLUINTERNALUAAP_PARSERUaaPParserRequest for use in CDMUaaPNLProtoService", buf, 0xCu);
  }

  v20 = objc_alloc_init(MEMORY[0x1E69D13E0]);
  v45 = chainCopy;
  [v20 setTokenChain:chainCopy];
  v44 = tensorCopy;
  [v20 setEmbeddings:tensorCopy];
  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(spansCopy, "count")}];
  [v20 setMatchingSpans:v21];

  [v20 setMaxNumParses:{+[CDMUserDefaultsUtils readUaaPNLMaxNumParses](CDMUserDefaultsUtils, "readUaaPNLMaxNumParses")}];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v22 = spansCopy;
  v23 = [v22 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v50;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v49 + 1) + 8 * i);
        matchingSpans = [v20 matchingSpans];
        v29 = [v27 copy];
        [matchingSpans addObject:v29];
      }

      v24 = [v22 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v24);
  }

  [v20 setTurnInput:turnCopy];
  v30 = idCopy;
  v31 = [[CDMUaaPNLProtoRequestCommand alloc] initWithParserRequest:v20 requestId:idCopy];
  *request = v31;
  v32 = serviceCopy;
  v33 = [serviceCopy handle:v31];
  *response = v33;
  if (error && !v33)
  {
    v34 = MEMORY[0x1E696AEC0];
    userInfo = [*error userInfo];
    v36 = *MEMORY[0x1E696A578];
    v37 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];
    v38 = [v34 stringWithFormat:@"Hit error running uaap protobuf inference: no response populated. Internal error: %@", v37];

    v39 = MEMORY[0x1E696ABC0];
    v57 = v36;
    v58 = v38;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    *error = [v39 errorWithDomain:@"uaapProtoService" code:1 userInfo:v40];

    v41 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v54 = "+[CDMServiceGraphUtil runUaaPNLProtoService:requestId:utterance:locale:tokenChain:matchingSpans:embeddingTensor:currentTurn:outUaapProtoRequest:outUaapProtoResponse:outError:]";
      v55 = 2112;
      v56 = v38;
      _os_log_error_impl(&dword_1DC287000, v41, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    v30 = idCopy;
    v32 = serviceCopy;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v33 != 0;
}

+ (id)getNonWhitespaceTokenChain:(id)chain
{
  v26 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  tokens = [chainCopy tokens];
  v6 = [v4 initWithCapacity:{objc_msgSend(tokens, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tokens2 = [chainCopy tokens];
  v8 = [tokens2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(tokens2);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 isWhitespace])
        {
          v13 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v22 = "+[CDMServiceGraphUtil getNonWhitespaceTokenChain:]";
            v23 = 2112;
            v24 = v12;
            _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s ignoring whitespace token: %@", buf, 0x16u);
          }
        }

        else
        {
          [v6 addObject:v12];
        }
      }

      v9 = [tokens2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v9);
  }

  v14 = [chainCopy copy];
  [v14 setTokens:v6];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)prepareCcqrTokens:(id)tokens currentTurn:(id)turn previousTurns:(id)turns utterance:(id)utterance locale:(id)locale
{
  v169 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  turnCopy = turn;
  turnsCopy = turns;
  localeCopy = locale;
  v13 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
    _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Creating CDMTokenizationProtoRequestCommand for use of PreviousTurn SiriResponse", buf, 0xCu);
  }

  v118 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(turnsCopy, "count")}];
  v121 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(turnsCopy, "count")}];
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  obj = turnsCopy;
  v122 = tokensCopy;
  v123 = [obj countByEnumeratingWithState:&v154 objects:v168 count:16];
  v129 = localeCopy;
  if (v123)
  {
    v120 = *v155;
    do
    {
      v14 = 0;
      do
      {
        if (*v155 != v120)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v154 + 1) + 8 * v14);
        asrOutputs = [v15 asrOutputs];
        if (asrOutputs)
        {
          v17 = asrOutputs;
          asrOutputs2 = [v15 asrOutputs];
          v19 = [asrOutputs2 count];

          if (v19)
          {
            asrOutputs3 = [v15 asrOutputs];
            v21 = [asrOutputs3 objectAtIndexedSubscript:0];
            utterance = [v21 utterance];

            v23 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
              v166 = 2112;
              v167 = utterance;
              _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s Extracted from NluRequest.previousTurnInputs, previous asr hypo: %@", buf, 0x16u);
            }

            v24 = [CDMTokenizerProtoService createProtoTokenRequestWithText:utterance locale:localeCopy];
            v25 = [tokensCopy handle:v24];
            response = [v25 response];
            [v118 addObject:response];
          }
        }

        v124 = v14;
        v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
        turnContext = [v15 turnContext];
        nlContext = [turnContext nlContext];
        systemDialogActs = [nlContext systemDialogActs];

        turnContext2 = [v15 turnContext];
        legacyNlContext = [turnContext2 legacyNlContext];

        v33 = objc_alloc(MEMORY[0x1E695DF70]);
        renderedTexts = [legacyNlContext renderedTexts];
        v35 = [v33 initWithCapacity:{objc_msgSend(renderedTexts, "count")}];

        v127 = legacyNlContext;
        renderedTexts2 = [legacyNlContext renderedTexts];
        v125 = systemDialogActs;
        if (renderedTexts2)
        {
          v37 = renderedTexts2;
          renderedTexts3 = [legacyNlContext renderedTexts];
          v39 = [renderedTexts3 count];

          if (v39)
          {
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            renderedTexts4 = [v127 renderedTexts];
            v41 = [renderedTexts4 countByEnumeratingWithState:&v150 objects:v163 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v151;
              do
              {
                for (i = 0; i != v42; ++i)
                {
                  if (*v151 != v43)
                  {
                    objc_enumerationMutation(renderedTexts4);
                  }

                  v45 = *(*(&v150 + 1) + 8 * i);
                  value = [v45 value];
                  if (value)
                  {
                    value2 = [v45 value];
                    [v27 addObject:value2];
                  }

                  else
                  {
                    [v27 addObject:&stru_1F5800F50];
                  }

                  v48 = CDMOSLoggerForCategory(0);
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                  {
                    lastObject = [v27 lastObject];
                    *buf = 136315394;
                    v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
                    v166 = 2112;
                    v167 = lastObject;
                    _os_log_debug_impl(&dword_1DC287000, v48, OS_LOG_TYPE_DEBUG, "%s Extracted from NluRequest.previousTurnInputs.turnContext.legacyNlContext, previous rendered text: %@", buf, 0x16u);
                  }
                }

                v42 = [renderedTexts4 countByEnumeratingWithState:&v150 objects:v163 count:16];
              }

              while (v42);
            }

            tokensCopy = v122;
            systemDialogActs = v125;
          }
        }

        if (systemDialogActs && [systemDialogActs count])
        {
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v50 = systemDialogActs;
          v51 = [v50 countByEnumeratingWithState:&v146 objects:v162 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v147;
            do
            {
              for (j = 0; j != v52; ++j)
              {
                if (*v147 != v53)
                {
                  objc_enumerationMutation(v50);
                }

                v55 = *(*(&v146 + 1) + 8 * j);
                if ([v27 count])
                {
                  v56 = CDMOSLoggerForCategory(0);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315138;
                    v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
                    _os_log_impl(&dword_1DC287000, v56, OS_LOG_TYPE_INFO, "%s [WARN]: NLConetext and legcyNLContext both exists", buf, 0xCu);
                  }
                }

                renderedText = [v55 renderedText];
                value3 = [renderedText value];
                if (value3)
                {
                  renderedText2 = [v55 renderedText];
                  value4 = [renderedText2 value];
                  [v27 addObject:value4];
                }

                else
                {
                  [v27 addObject:&stru_1F5800F50];
                }

                v61 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
                {
                  lastObject2 = [v27 lastObject];
                  *buf = 136315394;
                  v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
                  v166 = 2112;
                  v167 = lastObject2;
                  _os_log_debug_impl(&dword_1DC287000, v61, OS_LOG_TYPE_DEBUG, "%s Extracted from NluRequest.previousTurnInputs.turnContext.nlContext, previous rendered text: %@", buf, 0x16u);
                }

                localeCopy = v129;
              }

              v52 = [v50 countByEnumeratingWithState:&v146 objects:v162 count:16];
            }

            while (v52);
          }

          tokensCopy = v122;
        }

        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v63 = v27;
        v64 = [v63 countByEnumeratingWithState:&v142 objects:v161 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v143;
          do
          {
            for (k = 0; k != v65; ++k)
            {
              if (*v143 != v66)
              {
                objc_enumerationMutation(v63);
              }

              v68 = [CDMTokenizerProtoService createProtoTokenRequestWithText:*(*(&v142 + 1) + 8 * k) locale:localeCopy];
              v69 = [tokensCopy handle:v68];
              response2 = [v69 response];
              [v35 addObject:response2];
            }

            v65 = [v63 countByEnumeratingWithState:&v142 objects:v161 count:16];
          }

          while (v65);
        }

        [v121 addObject:v35];
        v14 = v124 + 1;
      }

      while (v124 + 1 != v123);
      v123 = [obj countByEnumeratingWithState:&v154 objects:v168 count:16];
    }

    while (v123);
  }

  v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
  turnContext3 = [turnCopy turnContext];
  nlContext2 = [turnContext3 nlContext];
  systemDialogActs2 = [nlContext2 systemDialogActs];

  turnContext4 = [turnCopy turnContext];
  legacyNlContext2 = [turnContext4 legacyNlContext];

  v76 = objc_alloc(MEMORY[0x1E695DF70]);
  renderedTexts5 = [legacyNlContext2 renderedTexts];
  v78 = [v76 initWithCapacity:{objc_msgSend(renderedTexts5, "count")}];

  renderedTexts6 = [legacyNlContext2 renderedTexts];
  v126 = legacyNlContext2;
  if (renderedTexts6)
  {
    v80 = renderedTexts6;
    renderedTexts7 = [legacyNlContext2 renderedTexts];
    v82 = [renderedTexts7 count];

    if (v82)
    {
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      renderedTexts8 = [legacyNlContext2 renderedTexts];
      v84 = [renderedTexts8 countByEnumeratingWithState:&v138 objects:v160 count:16];
      if (v84)
      {
        v85 = v84;
        v86 = *v139;
        do
        {
          for (m = 0; m != v85; ++m)
          {
            if (*v139 != v86)
            {
              objc_enumerationMutation(renderedTexts8);
            }

            v88 = *(*(&v138 + 1) + 8 * m);
            value5 = [v88 value];
            if (value5)
            {
              value6 = [v88 value];
              [v78 addObject:value6];
            }

            else
            {
              [v78 addObject:&stru_1F5800F50];
            }

            v91 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              lastObject3 = [v78 lastObject];
              *buf = 136315394;
              v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
              v166 = 2112;
              v167 = lastObject3;
              _os_log_debug_impl(&dword_1DC287000, v91, OS_LOG_TYPE_DEBUG, "%s Extracted from NluRequest.currentTurnInput.turnContext.legacyNlContext, current rendered text: %@", buf, 0x16u);
            }
          }

          v85 = [renderedTexts8 countByEnumeratingWithState:&v138 objects:v160 count:16];
        }

        while (v85);
      }

      tokensCopy = v122;
      localeCopy = v129;
    }
  }

  if (systemDialogActs2 && [systemDialogActs2 count])
  {
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v93 = systemDialogActs2;
    v94 = [v93 countByEnumeratingWithState:&v134 objects:v159 count:16];
    if (v94)
    {
      v95 = v94;
      v96 = *v135;
      do
      {
        for (n = 0; n != v95; ++n)
        {
          if (*v135 != v96)
          {
            objc_enumerationMutation(v93);
          }

          v98 = *(*(&v134 + 1) + 8 * n);
          if ([v78 count])
          {
            v99 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
              _os_log_impl(&dword_1DC287000, v99, OS_LOG_TYPE_INFO, "%s [WARN]: NLConetext and legcyNLContext both exists", buf, 0xCu);
            }
          }

          renderedText3 = [v98 renderedText];
          value7 = [renderedText3 value];
          if (value7)
          {
            renderedText4 = [v98 renderedText];
            value8 = [renderedText4 value];
            [v78 addObject:value8];

            tokensCopy = v122;
          }

          else
          {
            [v78 addObject:&stru_1F5800F50];
          }

          v104 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
          {
            lastObject4 = [v78 lastObject];
            *buf = 136315394;
            v165 = "+[CDMServiceGraphUtil prepareCcqrTokens:currentTurn:previousTurns:utterance:locale:]";
            v166 = 2112;
            v167 = lastObject4;
            _os_log_debug_impl(&dword_1DC287000, v104, OS_LOG_TYPE_DEBUG, "%s Extracted from NluRequest.currentTurnInput.turnContext.nlContext, current rendered text: %@", buf, 0x16u);
          }
        }

        v95 = [v93 countByEnumeratingWithState:&v134 objects:v159 count:16];
      }

      while (v95);
    }

    localeCopy = v129;
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v106 = v78;
  v107 = [v106 countByEnumeratingWithState:&v130 objects:v158 count:16];
  if (v107)
  {
    v108 = v107;
    v109 = *v131;
    do
    {
      for (ii = 0; ii != v108; ++ii)
      {
        if (*v131 != v109)
        {
          objc_enumerationMutation(v106);
        }

        turnCopy = [CDMTokenizerProtoService createProtoTokenRequestWithText:*(*(&v130 + 1) + 8 * ii) locale:localeCopy, turnCopy];
        v112 = [tokensCopy handle:turnCopy];
        response3 = [v112 response];
        [v71 addObject:response3];
      }

      v108 = [v106 countByEnumeratingWithState:&v130 objects:v158 count:16];
    }

    while (v108);
  }

  [v121 addObject:v71];
  v114 = [[CDMTokenizationProtoResponseCommand alloc] initWithPreviousResponses:v118 withPreviousSiriResponse:v121];

  v115 = *MEMORY[0x1E69E9840];

  return v114;
}

+ (id)runCcqrService:(id)service nluRequest:(id)request tokenResponse:(id)response previousTurnTokenizationResponseCommand:(id)command rdResponse:(id)rdResponse requestLink:(id)link locale:(id)locale
{
  v67 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  requestCopy = request;
  responseCopy = response;
  commandCopy = command;
  rdResponseCopy = rdResponse;
  linkCopy = link;
  localeCopy = locale;
  currentTurnInput = [requestCopy currentTurnInput];
  if ([currentTurnInput tapToEdit])
  {

LABEL_4:
    v24 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v64 = "+[CDMServiceGraphUtil runCcqrService:nluRequest:tokenResponse:previousTurnTokenizationResponseCommand:rdResponse:requestLink:locale:]";
      _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s Current Turn is Tap2Edit or Current Context isn't expected, skipping CCQR", buf, 0xCu);
    }

    v25 = 0;
LABEL_7:
    v26 = rdResponseCopy;
    goto LABEL_8;
  }

  currentTurnInput2 = [requestCopy currentTurnInput];
  turnContext = [currentTurnInput2 turnContext];
  v23 = [CDMCcqrAerCbRService suppressCcqrUsingCurContext:turnContext];

  if (v23)
  {
    goto LABEL_4;
  }

  previousTurnInputs = [requestCopy previousTurnInputs];
  v30 = [previousTurnInputs count];

  v60 = responseCopy;
  v61 = localeCopy;
  v59 = commandCopy;
  if (v30)
  {
    v24 = objc_opt_new();
    currentTurnInput3 = [requestCopy currentTurnInput];
    [v24 setCurrentTurn:currentTurnInput3];

    previousTurnInputs2 = [requestCopy previousTurnInputs];
    [v24 setPreviousTurns:previousTurnInputs2];

    [v24 setType:0];
    currentTurnInput4 = [requestCopy currentTurnInput];
    asrOutputs = [currentTurnInput4 asrOutputs];
    firstObject = [asrOutputs firstObject];
    [firstObject utterance];
    v37 = v36 = serviceCopy;
    tokenChain = [responseCopy tokenChain];
    v39 = [CDMServiceGraphUtil overrideInputsFromUtterance:v37 matchingSpans:0 tokenChain:tokenChain contextUpdateReformedTurnInputBundle:v24];

    v40 = v39;
    serviceCopy = v36;

    v41 = [v36 match:v39];
    if (v41)
    {
      v25 = v41;
      v42 = CDMOSLoggerForCategory(0);
      commandCopy = v59;
      localeCopy = v61;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        qrResponse = [v25 qrResponse];
        *buf = 136315394;
        v64 = "+[CDMServiceGraphUtil runCcqrService:nluRequest:tokenResponse:previousTurnTokenizationResponseCommand:rdResponse:requestLink:locale:]";
        v65 = 2112;
        v66 = qrResponse;
        _os_log_debug_impl(&dword_1DC287000, v42, OS_LOG_TYPE_DEBUG, "%s Found override match. Return pre-defined match result %@", buf, 0x16u);

        localeCopy = v61;
      }

      responseCopy = v60;
      goto LABEL_7;
    }
  }

  v58 = serviceCopy;
  v43 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v64 = "+[CDMServiceGraphUtil runCcqrService:nluRequest:tokenResponse:previousTurnTokenizationResponseCommand:rdResponse:requestLink:locale:]";
    _os_log_debug_impl(&dword_1DC287000, v43, OS_LOG_TYPE_DEBUG, "%s The current turn is NOT Tap2Edit Request, nor override matching, Running CCQR inference", buf, 0xCu);
  }

  currentTurnInput5 = [requestCopy currentTurnInput];
  asrOutputs2 = [currentTurnInput5 asrOutputs];
  firstObject2 = [asrOutputs2 firstObject];
  [firstObject2 probability];
  v47 = v46;
  previousTurnInputs3 = [requestCopy previousTurnInputs];
  v49 = [CDMServiceGraphUtil extractPrevTurnsAsrConfidence:previousTurnInputs3];
  nlId = [linkCopy nlId];
  resultCandidateId = [linkCopy resultCandidateId];
  requestId = [requestCopy requestId];
  v24 = [CDMServiceGraphUtil prepareCcqrServiceRequest:v61 currentTurnAsrConf:v60 tokenResponse:v49 previousTurnsAsrConf:v59 previousTurnTokenizationResponseCommand:nlId nluRequestId:resultCandidateId resultCandidateId:v47 cdmRequestId:requestId];

  serviceCopy = v58;
  v25 = [v58 handle:v24];
  if (+[CDMFeatureFlags isCbrUnrestrictedByRDEnabled])
  {
    commandCopy = v59;
    responseCopy = v60;
    v26 = rdResponseCopy;
  }

  else
  {
    rewriteMsg = [v25 rewriteMsg];
    commandCopy = v59;
    v26 = rdResponseCopy;
    if ([rewriteMsg rewriteType] == 2)
    {
      response = [rdResponseCopy response];
      repetitionType = [response repetitionType];

      if (repetitionType != 2)
      {
        [v25 setRewriteMsg:0];
      }
    }

    else
    {
    }

    responseCopy = v60;
  }

  localeCopy = v61;
LABEL_8:

  v27 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)extractPrevTurnsAsrConfidence:(id)confidence
{
  v22 = *MEMORY[0x1E69E9840];
  confidenceCopy = confidence;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(confidenceCopy, "count")}];
  if (confidenceCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = confidenceCopy;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          asrOutputs = [*(*(&v17 + 1) + 8 * i) asrOutputs];
          firstObject = [asrOutputs firstObject];
          [firstObject probability];
          v13 = v12;

          v14 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
          [v4 addObject:v14];
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

@end