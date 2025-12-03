@interface CDMShortcutService
+ (id)getCDMServiceAssetConfig;
+ (id)voiceCommandPredicate;
- (BOOL)hasAutoShortcutIdentifier:(id)identifier;
- (BOOL)isPhrase:(id)phrase inDenyList:(id)list;
- (BOOL)shouldSpanComboProduceParse:(id)parse prefixSpans:(id)spans suffixSpans:(id)suffixSpans tokenChain:(id)chain;
- (id)buildEmptyShortcutUserParse;
- (id)buildParseWithDelegatedUserDialogAct;
- (id)extractShortcutDataFromSpan:(id)span;
- (id)filterExactMatchVoiceCommandSpans:(id)spans;
- (id)filterSubsumedSpans:(id)spans;
- (id)filterVoiceCommandPrefixMatchingSpans:(id)spans voiceCommandSpan:(id)span;
- (id)filterVoiceCommandSuffixMatchingSpans:(id)spans voiceCommandSpan:(id)span;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)handleVoiceCommandFollowUp:(id)up;
- (id)loadDenyListFromBundle:(id)bundle languageCode:(id)code;
- (id)setup:(id)setup;
- (id)validateDenyListArray:(id)array;
@end

@implementation CDMShortcutService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMShortcutRequestCommand];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 setWithArray:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)getCDMServiceAssetConfig
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v6 = @"com.apple.siri.nl.autoshortcuts";
  v7[0] = &unk_1F5819CA0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v3 forAssetSet:0];

  [(CDMServiceAssetConfig *)v2 setIsAssetRequiredForSetup:0];
  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)hasAutoShortcutIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  usoGraph = [identifier usoGraph];
  identifiers = [usoGraph identifiers];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = identifiers;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    v8 = *MEMORY[0x1E69D24A0];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 hasValue])
        {
          value = [v10 value];
          v12 = [value hasPrefix:v8];

          if (v12)
          {
            v13 = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)isPhrase:(id)phrase inDenyList:(id)list
{
  phraseCopy = phrase;
  listCopy = list;
  semanticValue = [phraseCopy semanticValue];
  if ([listCopy containsObject:semanticValue])
  {
    v8 = 1;
  }

  else
  {
    baseTemplateString = [phraseCopy baseTemplateString];
    if (baseTemplateString)
    {
      baseTemplateString2 = [phraseCopy baseTemplateString];
      v8 = [listCopy containsObject:baseTemplateString2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)validateDenyListArray:(id)array
{
  v24 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v21 = "[CDMShortcutService validateDenyListArray:]";
    v22 = 2112;
    v23 = arrayCopy;
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s AutoShortcut deny list content: %@", buf, 0x16u);
  }

  if (arrayCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = arrayCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v21 = "[CDMShortcutService validateDenyListArray:]";
              _os_log_error_impl(&dword_1DC287000, v11, OS_LOG_TYPE_ERROR, "%s [ERR]: AutoShortcut deny list has invalid content, returning empty list", buf, 0xCu);
            }

            goto LABEL_19;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = v5;
  }

  else
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[CDMShortcutService validateDenyListArray:]";
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: AutoShortcut deny list is nil, returning empty list", buf, 0xCu);
    }

LABEL_19:
    v10 = MEMORY[0x1E695E0F0];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)loadDenyListFromBundle:(id)bundle languageCode:(id)code
{
  v24 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  codeCopy = code;
  v8 = codeCopy;
  if (!bundleCopy)
  {
    codeCopy = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(codeCopy, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[CDMShortcutService loadDenyListFromBundle:languageCode:]";
      v16 = "%s Didn't receive a deny list bundle, will default to empty deny list";
LABEL_9:
      _os_log_impl(&dword_1DC287000, codeCopy, OS_LOG_TYPE_INFO, v16, buf, 0xCu);
    }

LABEL_10:
    v15 = MEMORY[0x1E695E0F0];
    goto LABEL_15;
  }

  if (!codeCopy)
  {
    codeCopy = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(codeCopy, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[CDMShortcutService loadDenyListFromBundle:languageCode:]";
      v16 = "%s languageCode is nil, will default to empty deny list";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  codeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"deny_list/deny_list_%@.plist", codeCopy];
  resourcePath = [bundleCopy resourcePath];
  v11 = [resourcePath stringByAppendingPathComponent:codeCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v13 = [defaultManager fileExistsAtPath:v11];

  if (v13)
  {
    v14 = [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:v11];
    v15 = [(CDMShortcutService *)self validateDenyListArray:v14];
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[CDMShortcutService loadDenyListFromBundle:languageCode:]";
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s Did not find deny list on disk at path %@, returning empty list", buf, 0x16u);
    }

    v15 = MEMORY[0x1E695E0F0];
  }

LABEL_15:
  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)extractShortcutDataFromSpan:(id)span
{
  v37 = *MEMORY[0x1E69E9840];
  usoGraph = [span usoGraph];
  v4 = usoGraph;
  if (usoGraph && ([usoGraph nodes], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    nodes = [v4 nodes];
    v8 = [nodes countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = *v32;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(nodes);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        stringPayload = [v11 stringPayload];
        v13 = stringPayload == 0;

        if (!v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [nodes countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      stringPayload2 = [v11 stringPayload];
      value = [stringPayload2 value];

      if (!value)
      {
        goto LABEL_22;
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      identifiers = [v4 identifiers];
      value3 = [identifiers countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (value3)
      {
        v18 = *v28;
        while (2)
        {
          for (i = 0; i != value3; i = i + 1)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(identifiers);
            }

            v20 = *(*(&v27 + 1) + 8 * i);
            namespaceA = [v20 namespaceA];
            value2 = [namespaceA value];
            v23 = [value2 isEqualToString:@"autoShortcutBaseTemplate"];

            if (v23)
            {
              value3 = [v20 value];
              goto LABEL_24;
            }
          }

          value3 = [identifiers countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (value3)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      v14 = [[CDMShortcutPhrase alloc] initWithSemanticValue:value baseTemplateString:value3];
      nodes = value;
    }

    else
    {
LABEL_11:
      v14 = 0;
    }
  }

  else
  {
LABEL_22:
    v14 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)handle:(id)handle
{
  v48 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = [[CDMShortcutResponseCommand alloc] initWithVoiceCommandUserParses:v39 autoShortcutParses:v38];
  currentTurnContext = [handleCopy currentTurnContext];
  v6 = [(CDMShortcutService *)self handleVoiceCommandFollowUp:currentTurnContext];

  if (v6)
  {
    userDialogActs = [v6 userDialogActs];
    if ([userDialogActs count])
    {
      userDialogActs2 = [v6 userDialogActs];
      v9 = [userDialogActs2 objectAtIndexedSubscript:0];
      hasDelegated = [v9 hasDelegated];

      if (hasDelegated)
      {
        v11 = CDMLogContext;
        if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
        {
          __dst = 136315394;
          __dst_4 = "[CDMShortcutService handle:]";
          v42 = 2112;
          v43 = @"shortcut";
          _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nShortcut follow up request, routing to server", &__dst, 0x16u);
        }

        [v39 addObject:v6];
        v12 = v36;
        goto LABEL_25;
      }
    }

    else
    {
    }

    matchingSpans = [handleCopy matchingSpans];
    v37 = [(CDMShortcutService *)self filterExactMatchVoiceCommandSpans:matchingSpans];

    matchingSpans2 = [handleCopy matchingSpans];
    v16 = [(CDMShortcutService *)self filterVoiceCommandPrefixMatchingSpans:matchingSpans2 voiceCommandSpan:v37];

    v34 = v16;
    matchingSpans3 = [handleCopy matchingSpans];
    v35 = [(CDMShortcutService *)self filterVoiceCommandSuffixMatchingSpans:matchingSpans3 voiceCommandSpan:v37];

    tokenChain = [handleCopy tokenChain];
    v19 = [(CDMShortcutService *)self shouldSpanComboProduceParse:v37 prefixSpans:v16 suffixSpans:v35 tokenChain:tokenChain];

    if (v19)
    {
      v20 = [(CDMShortcutService *)self extractShortcutDataFromSpan:v37];
      v21 = CDMLogContext;
      v33 = v20;
      if (v20)
      {
        v22 = CDMLogContext;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          semanticValue = [v33 semanticValue];
          tokenChain2 = [handleCopy tokenChain];
          stringValue = [tokenChain2 stringValue];
          __dst = 136315906;
          __dst_4 = "[CDMShortcutService handle:]";
          v42 = 2112;
          v43 = @"shortcut";
          v44 = 2112;
          v45 = semanticValue;
          v46 = 2112;
          v47 = stringValue;
          _os_log_debug_impl(&dword_1DC287000, v22, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nFound exact match Voice Command:%@, to utterance:%@ ", &__dst, 0x2Au);
        }

        v24 = *(siri::ontology::getSharedUsoVocabManager(v23) + 8);
        if (v24)
        {
          atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
      {
        __dst = 136315394;
        __dst_4 = "[CDMShortcutService handle:]";
        v42 = 2112;
        v43 = @"shortcut";
        _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nMatching a top level shortcut, sending it to server", &__dst, 0x16u);
      }

      buildParseWithDelegatedUserDialogAct = [(CDMShortcutService *)self buildParseWithDelegatedUserDialogAct];
      [v39 addObject:buildParseWithDelegatedUserDialogAct];

      v27 = v36;
      v12 = v36;
    }

    else
    {
      v25 = CDMLogContext;
      if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
      {
        __dst = 136315394;
        __dst_4 = "[CDMShortcutService handle:]";
        v42 = 2112;
        v43 = @"shortcut";
        _os_log_debug_impl(&dword_1DC287000, v25, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nNo exact match Voice Command Found", &__dst, 0x16u);
      }

      v12 = 0;
    }
  }

  else
  {
    v13 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
    {
      __dst = 136315394;
      __dst_4 = "[CDMShortcutService handle:]";
      v42 = 2112;
      v43 = @"shortcut";
      _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nFollow up turn with prompts/sdas, should not trigger voice commands", &__dst, 0x16u);
    }

    v12 = 0;
  }

LABEL_25:

  v28 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)shouldSpanComboProduceParse:(id)parse prefixSpans:(id)spans suffixSpans:(id)suffixSpans tokenChain:(id)chain
{
  parseCopy = parse;
  spansCopy = spans;
  suffixSpansCopy = suffixSpans;
  chainCopy = chain;
  v12 = chainCopy;
  if (!parseCopy)
  {
    goto LABEL_25;
  }

  v46 = parseCopy;
  tokens = [chainCopy tokens];
  v14 = [tokens objectAtIndexedSubscript:0];
  tokenIndex = [v14 tokenIndex];

  tokens2 = [v12 tokens];
  lastObject = [tokens2 lastObject];
  LODWORD(tokens) = [lastObject tokenIndex];

  startTokenIndex = [parseCopy startTokenIndex];
  endTokenIndex = [parseCopy endTokenIndex];
  v20 = tokens + 1;
  if (startTokenIndex == tokenIndex && endTokenIndex == v20)
  {
    goto LABEL_4;
  }

  v44 = endTokenIndex;
  if (![spansCopy count])
  {
    v21 = startTokenIndex == tokenIndex;
    if (startTokenIndex != tokenIndex || v44 == v20)
    {
      goto LABEL_26;
    }

LABEL_17:
    if ([suffixSpansCopy count])
    {
      lastObject2 = [suffixSpansCopy lastObject];
      endTokenIndex2 = [lastObject2 endTokenIndex];

      if (endTokenIndex2 == v20)
      {
        v37 = [suffixSpansCopy objectAtIndexedSubscript:0];
        v38 = [CDMProtoSpanMatcherHelper isTrailingSpanAdjacent:parseCopy secondSpan:v37 tokenChain:v12];

        v39 = 1;
        while ([suffixSpansCopy count] > v39 && v38)
        {
          v40 = v39 - 1;
          v41 = [suffixSpansCopy objectAtIndexedSubscript:v40];
          v42 = [suffixSpansCopy objectAtIndexedSubscript:v40 + 1];
          v38 = [CDMProtoSpanMatcherHelper isTrailingSpanAdjacent:v41 secondSpan:v42 tokenChain:v12];

          v39 = v40 + 2;
          parseCopy = v46;
        }

        if (v38)
        {
LABEL_4:
          v21 = 1;
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v21 = 0;
    goto LABEL_26;
  }

  v22 = [spansCopy objectAtIndexedSubscript:0];
  v23 = [CDMProtoSpanMatcherHelper isTrailingSpanAdjacent:v22 secondSpan:parseCopy tokenChain:v12];

  v24 = [spansCopy objectAtIndexedSubscript:0];
  v25 = [v24 startTokenIndex] == tokenIndex;

  for (i = 1; [spansCopy count] > i && v25 && !v23; ++i)
  {
    v27 = [spansCopy objectAtIndexedSubscript:i - 1];
    label = [v27 label];
    if ([label isEqualToString:@"voiceTrigger"])
    {
    }

    else
    {
      v29 = [spansCopy objectAtIndexedSubscript:i];
      label2 = [v29 label];
      v31 = [label2 isEqualToString:@"voiceTrigger"];

      if (v31)
      {
        v21 = 0;
        goto LABEL_23;
      }
    }

    v32 = [spansCopy objectAtIndexedSubscript:i - 1];
    v33 = [spansCopy objectAtIndexedSubscript:i];
    v25 = [CDMProtoSpanMatcherHelper isTrailingSpanAdjacent:v32 secondSpan:v33 tokenChain:v12];

    v34 = [spansCopy objectAtIndexedSubscript:i];
    v23 = [CDMProtoSpanMatcherHelper isTrailingSpanAdjacent:v34 secondSpan:v46 tokenChain:v12];
  }

  v21 = v25 && v23;
  if (!v25 || !v23)
  {
LABEL_23:
    parseCopy = v46;
    goto LABEL_26;
  }

  parseCopy = v46;
  if (v44 != v20)
  {
    goto LABEL_17;
  }

LABEL_26:

  return v21 & 1;
}

- (id)filterSubsumedSpans:(id)spans
{
  v32 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  v4 = +[CDMProtoSpanMatcherHelper ascendingStartIndexComparator];
  v5 = [spansCopy sortedArrayUsingComparator:v4];

  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = array;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = *v23;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v22 + 1) + 8 * j);
              startTokenIndex = [v9 startTokenIndex];
              if (startTokenIndex >= [v14 startTokenIndex])
              {
                endTokenIndex = [v9 endTokenIndex];
                if (endTokenIndex <= [v14 endTokenIndex])
                {

                  goto LABEL_17;
                }
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        [v10 addObject:v9];
LABEL_17:
        ;
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v17 = [array copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)filterVoiceCommandSuffixMatchingSpans:(id)spans voiceCommandSpan:(id)span
{
  spansCopy = spans;
  spanCopy = span;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(SELF.label == %@) AND SELF.startTokenIndex >= %d", @"voiceCommandNameSuffix", objc_msgSend(spanCopy, "endTokenIndex")];
  v9 = [spansCopy filteredArrayUsingPredicate:v8];
  v10 = [(CDMShortcutService *)self filterSubsumedSpans:v9];

  return v10;
}

- (id)filterVoiceCommandPrefixMatchingSpans:(id)spans voiceCommandSpan:(id)span
{
  spansCopy = spans;
  spanCopy = span;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(SELF.label == %@ OR SELF.label== %@) AND SELF.endTokenIndex <= %d", @"voiceTrigger", @"voiceCommandNamePrefix", objc_msgSend(spanCopy, "startTokenIndex")];
  v9 = [spansCopy filteredArrayUsingPredicate:v8];
  v10 = [(CDMShortcutService *)self filterSubsumedSpans:v9];

  return v10;
}

- (id)filterExactMatchVoiceCommandSpans:(id)spans
{
  v14 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  v4 = +[CDMShortcutService voiceCommandPredicate];
  v5 = [spansCopy filteredArrayUsingPredicate:v4];

  if ([v5 count])
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = "[CDMShortcutService filterExactMatchVoiceCommandSpans:]";
      _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s Have overlapping voiceCommandName spans, taking the longest one. When tie, prioritizes SiriVocab span", &v12, 0xCu);
    }

    v7 = +[CDMProtoSpanMatcherHelper voiceCommandSpanComparator];
    v8 = [v5 sortedArrayUsingComparator:v7];

    v9 = [v8 objectAtIndexedSubscript:0];
    v5 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)handleVoiceCommandFollowUp:(id)up
{
  v57 = *MEMORY[0x1E69E9840];
  upCopy = up;
  if (![upCopy hasLegacyNlContext])
  {
    goto LABEL_9;
  }

  legacyNlContext = [upCopy legacyNlContext];
  if (![legacyNlContext strictPrompt])
  {
    legacyNlContext2 = [upCopy legacyNlContext];
    dictationPrompt = [legacyNlContext2 dictationPrompt];

    if (dictationPrompt)
    {
      goto LABEL_5;
    }

LABEL_9:
    if ([upCopy hasNlContext])
    {
      nlContext = [upCopy nlContext];
      systemDialogActs = [nlContext systemDialogActs];

      selfCopy = self;
      if (systemDialogActs)
      {
        v42 = systemDialogActs;
        if ([systemDialogActs count])
        {
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          obj = systemDialogActs;
          v14 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
          if (!v14)
          {
            goto LABEL_22;
          }

          v15 = *v52;
LABEL_14:
          v16 = 0;
          while (1)
          {
            if (*v52 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v51 + 1) + 8 * v16);
            if (([v17 hasGaveOptions] & 1) != 0 || (objc_msgSend(v17, "hasOffered") & 1) != 0 || objc_msgSend(v17, "hasPrompted"))
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
              if (!v14)
              {
LABEL_22:

                systemDialogActs = v42;
                goto LABEL_23;
              }

              goto LABEL_14;
            }
          }

          if ([SiriNLUTypesUtils isSdaAskRepeat:v17])
          {
            buildEmptyShortcutUserParse = [(CDMShortcutService *)self buildEmptyShortcutUserParse];
LABEL_64:

            goto LABEL_28;
          }

          nlContext2 = [upCopy nlContext];
          activeTasks = [nlContext2 activeTasks];

          v22 = +[CDMFeatureFlags isShortcutsNLv4FollowupEnabled];
          if (activeTasks)
          {
            v23 = v22;
          }

          else
          {
            v23 = 1;
          }

          if ((v23 & 1) != 0 || ![activeTasks count])
          {
            buildEmptyShortcutUserParse = 0;
          }

          else
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v45 = activeTasks;
            v24 = [v45 countByEnumeratingWithState:&v47 objects:v55 count:16];
            if (v24)
            {
              v25 = *v48;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v48 != v25)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v27 = *(*(&v47 + 1) + 8 * i);
                  if (v27)
                  {
                    task = [*(*(&v47 + 1) + 8 * i) task];
                    v29 = task == 0;

                    if (!v29)
                    {
                      task2 = [v27 task];
                      nodes = [task2 nodes];
                      if (nodes)
                      {
                        edges = [task2 edges];
                        if (!edges)
                        {
                          goto LABEL_56;
                        }

                        nodes2 = [task2 nodes];
                        if ([nodes2 count] != 2)
                        {
                          goto LABEL_54;
                        }

                        edges2 = [task2 edges];
                        v35 = [edges2 count] == 1;

                        if (v35)
                        {
                          nodes = [task2 nodes];
                          edges = [nodes objectAtIndexedSubscript:0];
                          if ([edges usoElementId] == 1)
                          {
                            nodes2 = [task2 nodes];
                            v36 = [nodes2 objectAtIndexedSubscript:1];
                            if ([v36 usoElementId] == 1808)
                            {
                              edges3 = [task2 edges];
                              v39 = [edges3 objectAtIndexedSubscript:0];
                              label = [v39 label];
                              v38 = [label usoElementId] == 861;

                              if (v38)
                              {
                                buildEmptyShortcutUserParse = [(CDMShortcutService *)selfCopy buildParseWithDelegatedUserDialogAct];

                                goto LABEL_61;
                              }

                              goto LABEL_57;
                            }

LABEL_54:
                          }

LABEL_56:
                        }
                      }

LABEL_57:

                      continue;
                    }
                  }
                }

                v24 = [v45 countByEnumeratingWithState:&v47 objects:v55 count:16];
              }

              while (v24);
            }

            buildEmptyShortcutUserParse = 0;
LABEL_61:
          }

          goto LABEL_64;
        }
      }

LABEL_23:
    }

    buildEmptyShortcutUserParse2 = [(CDMShortcutService *)self buildEmptyShortcutUserParse];
    goto LABEL_25;
  }

LABEL_5:
  if (!+[CDMFeatureFlags isShortcutsNLv4FollowupEnabled])
  {
    legacyNlContext3 = [upCopy legacyNlContext];
    if ([legacyNlContext3 hasPreviousDomainName])
    {
      legacyNlContext4 = [upCopy legacyNlContext];
      previousDomainName = [legacyNlContext4 previousDomainName];
      v10 = [previousDomainName isEqualToString:@"voiceCommands"];

      if (v10)
      {
        buildEmptyShortcutUserParse2 = [(CDMShortcutService *)self buildParseWithDelegatedUserDialogAct];
LABEL_25:
        buildEmptyShortcutUserParse = buildEmptyShortcutUserParse2;
        goto LABEL_28;
      }
    }

    else
    {
    }
  }

  buildEmptyShortcutUserParse = 0;
LABEL_28:

  v19 = *MEMORY[0x1E69E9840];

  return buildEmptyShortcutUserParse;
}

- (id)buildParseWithDelegatedUserDialogAct
{
  v3 = objc_alloc_init(MEMORY[0x1E69D1178]);
  [v3 setAsrHypothesisIndex:0];
  [v3 setExternalParserId:@"com.apple.siri.nlv3"];
  v4 = objc_alloc_init(MEMORY[0x1E69D1238]);
  [v4 setDelegated:v3];
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:v4];
  buildEmptyShortcutUserParse = [(CDMShortcutService *)self buildEmptyShortcutUserParse];
  [buildEmptyShortcutUserParse setUserDialogActs:array];

  return buildEmptyShortcutUserParse;
}

- (id)buildEmptyShortcutUserParse
{
  v2 = objc_alloc_init(MEMORY[0x1E69D1240]);
  v3 = MEMORY[0x1E69D13F8];
  v4 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v5 = [v3 convertFromUUID:v4];
  [v2 setIdA:v5];

  [v2 setProbability:1.0];
  v6 = objc_alloc_init(MEMORY[0x1E69D11B8]);
  [v2 setRepetitionResult:v6];

  v7 = objc_alloc_init(MEMORY[0x1E69D11A8]);
  [v7 setAlgorithm:1];
  [v7 setParserId:5];
  [v2 setParser:v7];

  return v2;
}

- (id)setup:(id)setup
{
  setupCopy = setup;
  self->super.super._serviceState = 2;
  dynamicConfig = [setupCopy dynamicConfig];
  v6 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.autoshortcuts"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v6;

  dynamicConfig2 = [setupCopy dynamicConfig];
  v9 = [dynamicConfig2 getAssetBundlePathForFactorName:@"com.apple.siri.nl.autoshortcuts"];

  dynamicConfig3 = [setupCopy dynamicConfig];
  languageCode = [dynamicConfig3 languageCode];
  v12 = [(CDMShortcutService *)self loadDenyListFromBundle:v9 languageCode:languageCode];
  denyList = self->_denyList;
  self->_denyList = v12;

  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];

  return createSetupResponseCommand;
}

+ (id)voiceCommandPredicate
{
  if (+[CDMShortcutService voiceCommandPredicate]::onceToken != -1)
  {
    dispatch_once(&+[CDMShortcutService voiceCommandPredicate]::onceToken, &__block_literal_global_10199);
  }

  v3 = +[CDMShortcutService voiceCommandPredicate]::value;

  return v3;
}

uint64_t __43__CDMShortcutService_voiceCommandPredicate__block_invoke()
{
  +[CDMShortcutService voiceCommandPredicate]::value = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.label == %@", @"voiceCommandName"];

  return MEMORY[0x1EEE66BB8]();
}

@end