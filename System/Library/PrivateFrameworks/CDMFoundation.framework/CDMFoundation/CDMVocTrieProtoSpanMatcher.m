@interface CDMVocTrieProtoSpanMatcher
+ (id)getCDMServiceAssetConfig;
- (BOOL)utteranceStartsWithVoiceTriggerSpan:(id)a3;
- (CDMVocTrieProtoSpanMatcher)initWithVocTriePath:(id)a3 useNormalizedValues:(BOOL)a4;
- (id)matchSpansForTokenChain:(id)a3 asrHypothesis:(id)a4;
@end

@implementation CDMVocTrieProtoSpanMatcher

+ (id)getCDMServiceAssetConfig
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v7 = @"vocTrie";
  v8 = @"com.apple.siri.nl.voc";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)matchSpansForTokenChain:(id)a3 asrHypothesis:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = os_signpost_id_generate(CDMLogContext);
  v10 = CDMLogContext;
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v14;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SpanMatcher", "%{public}@", &buf, 0xCu);
  }

  if (self->trie)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v42 = 0x2020000000;
    v43 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v15 = self;
    useNormalizedValues = self->useNormalizedValues;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __68__CDMVocTrieProtoSpanMatcher_matchSpansForTokenChain_asrHypothesis___block_invoke;
    v30[3] = &unk_1E862F5B8;
    v30[4] = v15;
    v31 = v6;
    p_buf = &buf;
    v34 = &v35;
    v17 = v8;
    v32 = v17;
    [CDMProtoSpanMatcherHelper enumerateTokenChain:v31 useNormalizedValues:useNormalizedValues withCallback:v30];
    v18 = v9;
    if (*(*(&buf + 1) + 24) == 1 && *(v36 + 6))
    {
      v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT(SELF.startTokenIndex >= %d AND SELF.endTokenIndex <= %d AND SELF.label !=%@)", 0, *(v36 + 6), @"voiceTrigger"];
      v20 = CDMLogContext;
      v21 = v20;
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        *v39 = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v21, OS_SIGNPOST_INTERVAL_END, v18, "SpanMatcher", "", v39, 2u);
      }

      v22 = [v17 filteredArrayUsingPredicate:v19];
    }

    else
    {
      v23 = CDMLogContext;
      v24 = v23;
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *v39 = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v24, OS_SIGNPOST_INTERVAL_END, v9, "SpanMatcher", "", v39, 2u);
      }

      if ([v17 count] < 0x65)
      {
        v22 = v17;
      }

      else
      {
        v25 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *v39 = 136315138;
          v40 = "[CDMVocTrieProtoSpanMatcher matchSpansForTokenChain:asrHypothesis:]";
          _os_log_debug_impl(&dword_1DC287000, v25, OS_LOG_TYPE_DEBUG, "%s VOC spans exceeding 100, sort based on identifer count to promote important spans", v39, 0xCu);
        }

        v26 = [objc_opt_class() spanIdentifierCountComparator];
        v22 = [v17 sortedArrayUsingComparator:v26];
      }
    }

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v27 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[CDMVocTrieProtoSpanMatcher matchSpansForTokenChain:asrHypothesis:]";
      _os_log_impl(&dword_1DC287000, v27, OS_LOG_TYPE_INFO, "%s VocTrie Invalid", &buf, 0xCu);
    }

    v22 = v8;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v22;
}

void __68__CDMVocTrieProtoSpanMatcher_matchSpansForTokenChain_asrHypothesis___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v72 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v69 = "[CDMVocTrieProtoSpanMatcher matchSpansForTokenChain:asrHypothesis:]_block_invoke";
    v70 = 2112;
    v71 = v9;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Voc matcher Matching search chunk: %@", buf, 0x16u);
  }

  v52 = v9;
  [*(*(a1 + 32) + 8) entriesForText:v9];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v66 = 0u;
  v59 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v59)
  {
    v58 = *v64;
    v53 = a5;
    v54 = a6;
    do
    {
      v11 = 0;
      do
      {
        if (*v64 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v63 + 1) + 8 * v11);
        context = objc_autoreleasePoolPush();
        v13 = [*(a1 + 40) string];
        v14 = [v13 substringWithRange:{a3, a4}];

        v15 = [v12 label];
        v16 = [CDMProtoSpanMatcherHelper buildMatchingSpanProtoWithLabel:v15 inputStringForDebug:v14 startTokenIndex:a5 endTokenIndex:(a5 + a6) spanMatcherName:3];

        if ([*(a1 + 32) utteranceStartsWithVoiceTriggerSpan:v16])
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
          *(*(*(a1 + 64) + 8) + 24) = [v16 endTokenIndex];
        }

        v17 = [*(a1 + 40) nonWhiteSpaceCountFromToken:a5 toToken:a5 + a6];
        v18 = [v12 semantic];
        [v16 setSemanticValue:v18];

        v19 = [v12 usoGraph];

        if (v19)
        {
          v20 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v69 = "[CDMVocTrieProtoSpanMatcher matchSpansForTokenChain:asrHypothesis:]_block_invoke";
            _os_log_debug_impl(&dword_1DC287000, v20, OS_LOG_TYPE_DEBUG, "%s Voc matcher got UsoGraph from asset", buf, 0xCu);
          }

          v21 = [v12 usoGraph];
          [v16 setUsoGraph:v21];

          v22 = [v12 usoGraph];
          v23 = [v22 nodesCount];

          if (v23 == 1)
          {
            v24 = CDMOSLoggerForCategory(0);
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              goto LABEL_33;
            }

            *buf = 136315138;
            v69 = "[CDMVocTrieProtoSpanMatcher matchSpansForTokenChain:asrHypothesis:]_block_invoke";
            v25 = v24;
            v26 = "%s [WARN]: VOC span UsoGraph only has 1 root node, not going to attach alignments or identifiers";
LABEL_32:
            _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_INFO, v26, buf, 0xCu);
            goto LABEL_33;
          }

          v56 = v17;
          v32 = [v12 usoGraph];
          v33 = [v32 nodesCount];
          v34 = [v12 nodeIndex];

          if (v33 <= v34)
          {
            v24 = CDMOSLoggerForCategory(0);
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              goto LABEL_33;
            }

            *buf = 136315138;
            v69 = "[CDMVocTrieProtoSpanMatcher matchSpansForTokenChain:asrHypothesis:]_block_invoke";
            v25 = v24;
            v26 = "%s [WARN]: VOC span UsoGraph node index invalid";
            goto LABEL_32;
          }

          v24 = +[CDMProtoSpanMatcherHelper buildUtteranceAlignments:endCharIndex:nodeIndex:](CDMProtoSpanMatcherHelper, "buildUtteranceAlignments:endCharIndex:nodeIndex:", a3, (a3 + a4), [v12 nodeIndex]);
          if (v24)
          {
            v35 = [v16 usoGraph];
            [v35 addAlignments:v24];
          }

          v36 = [v16 usoGraph];
          v37 = [v36 nodes];
          v38 = [v37 objectAtIndexedSubscript:{objc_msgSend(v12, "nodeIndex")}];

          if ([v38 usoElementId] == 1206)
          {
            v39 = objc_alloc_init(MEMORY[0x1E69D1128]);
            [v39 setValue:v14];
            [v38 setStringPayload:v39];
          }

          v55 = v38;
          v40 = [v12 label];
          v41 = [v12 semantic];
          v42 = +[CDMProtoSpanMatcherHelper buildUsoIdentifier:semantic:nodeIndex:](CDMProtoSpanMatcherHelper, "buildUsoIdentifier:semantic:nodeIndex:", v40, v41, [v12 nodeIndex]);

          if (v42)
          {
            v43 = [v16 usoGraph];
            [v43 addIdentifiers:v42];
          }

          a5 = v53;
          a6 = v54;
          if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
          {
            v44 = [v12 label];
            v45 = [v12 semantic];
            v46 = +[CDMProtoSpanMatcherHelper buildUsoEntitySpan:semantic:nodeIndex:startIndex:endIndex:tokenCount:](CDMProtoSpanMatcherHelper, "buildUsoEntitySpan:semantic:nodeIndex:startIndex:endIndex:tokenCount:", v44, v45, [v12 nodeIndex], a3, (a3 + a4), v56);

            if (v46)
            {
              v47 = [v16 usoGraph];
              [v47 addSpans:v46];
            }

            a5 = v53;
            a6 = v54;
          }
        }

        else
        {
          v27 = [v12 label];
          v28 = [v12 semantic];
          v29 = v17;
          v30 = v28;
          v31 = [CDMVocUsoGraphMapper buildVocUSOGraphWithVocLabel:v27 withSemantic:v28 withInput:v14 withStartCharIndex:a3 withEndCharIndex:(a3 + a4) withTokenCount:v29];
          [v16 setUsoGraph:v31];

          v24 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v69 = "[CDMVocTrieProtoSpanMatcher matchSpansForTokenChain:asrHypothesis:]_block_invoke";
            _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s Voc matcher got (potentially empty) UsoGraph from mapper code", buf, 0xCu);
          }
        }

LABEL_33:

        v48 = [v16 label];
        if ([v48 isEqualToString:@"language"])
        {

LABEL_36:
          [*(a1 + 48) insertObject:v16 atIndex:0];
          goto LABEL_38;
        }

        v49 = [v16 label];
        v50 = [v49 isEqualToString:@"mediaLanguage"];

        if (v50)
        {
          goto LABEL_36;
        }

        [*(a1 + 48) addObject:v16];
LABEL_38:

        objc_autoreleasePoolPop(context);
        ++v11;
      }

      while (v59 != v11);
      v59 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v59);
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (BOOL)utteranceStartsWithVoiceTriggerSpan:(id)a3
{
  v3 = a3;
  if ([v3 startTokenIndex])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 label];
    v4 = [v5 isEqualToString:@"voiceTrigger"];
  }

  return v4;
}

- (CDMVocTrieProtoSpanMatcher)initWithVocTriePath:(id)a3 useNormalizedValues:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CDMVocTrieProtoSpanMatcher;
  v7 = [(CDMVocTrieProtoSpanMatcher *)&v11 init];
  if (v7)
  {
    v8 = [[CDMVocTrie alloc] initWithTriePath:v6];
    trie = v7->trie;
    v7->trie = v8;

    v7->useNormalizedValues = a4;
  }

  return v7;
}

uint64_t __59__CDMVocTrieProtoSpanMatcher_spanIdentifierCountComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (([v4 hasUsoGraph] & 1) == 0 && !objc_msgSend(v5, "hasUsoGraph"))
  {
    v10 = 0;
    goto LABEL_10;
  }

  if (![v4 hasUsoGraph])
  {
    goto LABEL_9;
  }

  if ([v5 hasUsoGraph])
  {
    v6 = [v4 usoGraph];
    v7 = [v6 spansCount];
    v8 = [v5 usoGraph];
    v9 = [v8 spansCount];

    if (v7 <= v9)
    {
      v11 = [v4 usoGraph];
      v12 = [v11 spansCount];
      v13 = [v5 usoGraph];
      v14 = [v13 spansCount];

      if (v12 >= v14)
      {
        v16 = [v4 usoGraph];
        v17 = [v16 identifiersCount];
        v18 = [v5 usoGraph];
        v19 = [v18 identifiersCount];

        if (v17 <= v19)
        {
          v20 = [v4 usoGraph];
          v21 = [v20 identifiersCount];
          v22 = [v5 usoGraph];
          v10 = v21 < [v22 identifiersCount];

          goto LABEL_10;
        }

        goto LABEL_6;
      }

LABEL_9:
      v10 = 1;
      goto LABEL_10;
    }
  }

LABEL_6:
  v10 = -1;
LABEL_10:

  return v10;
}

@end