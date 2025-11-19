@interface CDMShortcutService
+ (id)getCDMServiceAssetConfig;
+ (id)voiceCommandPredicate;
- (BOOL)hasAutoShortcutIdentifier:(id)a3;
- (BOOL)isPhrase:(id)a3 inDenyList:(id)a4;
- (BOOL)shouldSpanComboProduceParse:(id)a3 prefixSpans:(id)a4 suffixSpans:(id)a5 tokenChain:(id)a6;
- (id)buildEmptyShortcutUserParse;
- (id)buildParseWithDelegatedUserDialogAct;
- (id)extractShortcutDataFromSpan:(id)a3;
- (id)filterExactMatchVoiceCommandSpans:(id)a3;
- (id)filterSubsumedSpans:(id)a3;
- (id)filterVoiceCommandPrefixMatchingSpans:(id)a3 voiceCommandSpan:(id)a4;
- (id)filterVoiceCommandSuffixMatchingSpans:(id)a3 voiceCommandSpan:(id)a4;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)handleVoiceCommandFollowUp:(id)a3;
- (id)loadDenyListFromBundle:(id)a3 languageCode:(id)a4;
- (id)setup:(id)a3;
- (id)validateDenyListArray:(id)a3;
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

- (BOOL)hasAutoShortcutIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [a3 usoGraph];
  v4 = [v3 identifiers];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
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
          v11 = [v10 value];
          v12 = [v11 hasPrefix:v8];

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

- (BOOL)isPhrase:(id)a3 inDenyList:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 semanticValue];
  if ([v6 containsObject:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v5 baseTemplateString];
    if (v9)
    {
      v10 = [v5 baseTemplateString];
      v8 = [v6 containsObject:v10];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)validateDenyListArray:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v21 = "[CDMShortcutService validateDenyListArray:]";
    v22 = 2112;
    v23 = v3;
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s AutoShortcut deny list content: %@", buf, 0x16u);
  }

  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
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

- (id)loadDenyListFromBundle:(id)a3 languageCode:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[CDMShortcutService loadDenyListFromBundle:languageCode:]";
      v16 = "%s Didn't receive a deny list bundle, will default to empty deny list";
LABEL_9:
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, v16, buf, 0xCu);
    }

LABEL_10:
    v15 = MEMORY[0x1E695E0F0];
    goto LABEL_15;
  }

  if (!v7)
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[CDMShortcutService loadDenyListFromBundle:languageCode:]";
      v16 = "%s languageCode is nil, will default to empty deny list";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"deny_list/deny_list_%@.plist", v7];
  v10 = [v6 resourcePath];
  v11 = [v10 stringByAppendingPathComponent:v9];

  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = [v12 fileExistsAtPath:v11];

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

- (id)extractShortcutDataFromSpan:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [a3 usoGraph];
  v4 = v3;
  if (v3 && ([v3 nodes], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = [v4 nodes];
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = *v32;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        v12 = [v11 stringPayload];
        v13 = v12 == 0;

        if (!v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v15 = [v11 stringPayload];
      v26 = [v15 value];

      if (!v26)
      {
        goto LABEL_22;
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = [v4 identifiers];
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v17)
      {
        v18 = *v28;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v27 + 1) + 8 * i);
            v21 = [v20 namespaceA];
            v22 = [v21 value];
            v23 = [v22 isEqualToString:@"autoShortcutBaseTemplate"];

            if (v23)
            {
              v17 = [v20 value];
              goto LABEL_24;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      v14 = [[CDMShortcutPhrase alloc] initWithSemanticValue:v26 baseTemplateString:v17];
      v7 = v26;
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

- (id)handle:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = [[CDMShortcutResponseCommand alloc] initWithVoiceCommandUserParses:v39 autoShortcutParses:v38];
  v5 = [v4 currentTurnContext];
  v6 = [(CDMShortcutService *)self handleVoiceCommandFollowUp:v5];

  if (v6)
  {
    v7 = [v6 userDialogActs];
    if ([v7 count])
    {
      v8 = [v6 userDialogActs];
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v9 hasDelegated];

      if (v10)
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

    v14 = [v4 matchingSpans];
    v37 = [(CDMShortcutService *)self filterExactMatchVoiceCommandSpans:v14];

    v15 = [v4 matchingSpans];
    v16 = [(CDMShortcutService *)self filterVoiceCommandPrefixMatchingSpans:v15 voiceCommandSpan:v37];

    v34 = v16;
    v17 = [v4 matchingSpans];
    v35 = [(CDMShortcutService *)self filterVoiceCommandSuffixMatchingSpans:v17 voiceCommandSpan:v37];

    v18 = [v4 tokenChain];
    v19 = [(CDMShortcutService *)self shouldSpanComboProduceParse:v37 prefixSpans:v16 suffixSpans:v35 tokenChain:v18];

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
          v30 = [v33 semanticValue];
          v31 = [v4 tokenChain];
          v32 = [v31 stringValue];
          __dst = 136315906;
          __dst_4 = "[CDMShortcutService handle:]";
          v42 = 2112;
          v43 = @"shortcut";
          v44 = 2112;
          v45 = v30;
          v46 = 2112;
          v47 = v32;
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

      v26 = [(CDMShortcutService *)self buildParseWithDelegatedUserDialogAct];
      [v39 addObject:v26];

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

- (BOOL)shouldSpanComboProduceParse:(id)a3 prefixSpans:(id)a4 suffixSpans:(id)a5 tokenChain:(id)a6
{
  v9 = a3;
  v10 = a4;
  v45 = a5;
  v11 = a6;
  v12 = v11;
  if (!v9)
  {
    goto LABEL_25;
  }

  v46 = v9;
  v13 = [v11 tokens];
  v14 = [v13 objectAtIndexedSubscript:0];
  v15 = [v14 tokenIndex];

  v16 = [v12 tokens];
  v17 = [v16 lastObject];
  LODWORD(v13) = [v17 tokenIndex];

  v18 = [v9 startTokenIndex];
  v19 = [v9 endTokenIndex];
  v20 = v13 + 1;
  if (v18 == v15 && v19 == v20)
  {
    goto LABEL_4;
  }

  v44 = v19;
  if (![v10 count])
  {
    v21 = v18 == v15;
    if (v18 != v15 || v44 == v20)
    {
      goto LABEL_26;
    }

LABEL_17:
    if ([v45 count])
    {
      v35 = [v45 lastObject];
      v36 = [v35 endTokenIndex];

      if (v36 == v20)
      {
        v37 = [v45 objectAtIndexedSubscript:0];
        v38 = [CDMProtoSpanMatcherHelper isTrailingSpanAdjacent:v9 secondSpan:v37 tokenChain:v12];

        v39 = 1;
        while ([v45 count] > v39 && v38)
        {
          v40 = v39 - 1;
          v41 = [v45 objectAtIndexedSubscript:v40];
          v42 = [v45 objectAtIndexedSubscript:v40 + 1];
          v38 = [CDMProtoSpanMatcherHelper isTrailingSpanAdjacent:v41 secondSpan:v42 tokenChain:v12];

          v39 = v40 + 2;
          v9 = v46;
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

  v22 = [v10 objectAtIndexedSubscript:0];
  v23 = [CDMProtoSpanMatcherHelper isTrailingSpanAdjacent:v22 secondSpan:v9 tokenChain:v12];

  v24 = [v10 objectAtIndexedSubscript:0];
  v25 = [v24 startTokenIndex] == v15;

  for (i = 1; [v10 count] > i && v25 && !v23; ++i)
  {
    v27 = [v10 objectAtIndexedSubscript:i - 1];
    v28 = [v27 label];
    if ([v28 isEqualToString:@"voiceTrigger"])
    {
    }

    else
    {
      v29 = [v10 objectAtIndexedSubscript:i];
      v30 = [v29 label];
      v31 = [v30 isEqualToString:@"voiceTrigger"];

      if (v31)
      {
        v21 = 0;
        goto LABEL_23;
      }
    }

    v32 = [v10 objectAtIndexedSubscript:i - 1];
    v33 = [v10 objectAtIndexedSubscript:i];
    v25 = [CDMProtoSpanMatcherHelper isTrailingSpanAdjacent:v32 secondSpan:v33 tokenChain:v12];

    v34 = [v10 objectAtIndexedSubscript:i];
    v23 = [CDMProtoSpanMatcherHelper isTrailingSpanAdjacent:v34 secondSpan:v46 tokenChain:v12];
  }

  v21 = v25 && v23;
  if (!v25 || !v23)
  {
LABEL_23:
    v9 = v46;
    goto LABEL_26;
  }

  v9 = v46;
  if (v44 != v20)
  {
    goto LABEL_17;
  }

LABEL_26:

  return v21 & 1;
}

- (id)filterSubsumedSpans:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[CDMProtoSpanMatcherHelper ascendingStartIndexComparator];
  v5 = [v3 sortedArrayUsingComparator:v4];

  v21 = [MEMORY[0x1E695DF70] array];
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
        v10 = v21;
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
              v15 = [v9 startTokenIndex];
              if (v15 >= [v14 startTokenIndex])
              {
                v16 = [v9 endTokenIndex];
                if (v16 <= [v14 endTokenIndex])
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

  v17 = [v21 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)filterVoiceCommandSuffixMatchingSpans:(id)a3 voiceCommandSpan:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(SELF.label == %@) AND SELF.startTokenIndex >= %d", @"voiceCommandNameSuffix", objc_msgSend(v7, "endTokenIndex")];
  v9 = [v6 filteredArrayUsingPredicate:v8];
  v10 = [(CDMShortcutService *)self filterSubsumedSpans:v9];

  return v10;
}

- (id)filterVoiceCommandPrefixMatchingSpans:(id)a3 voiceCommandSpan:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(SELF.label == %@ OR SELF.label== %@) AND SELF.endTokenIndex <= %d", @"voiceTrigger", @"voiceCommandNamePrefix", objc_msgSend(v7, "startTokenIndex")];
  v9 = [v6 filteredArrayUsingPredicate:v8];
  v10 = [(CDMShortcutService *)self filterSubsumedSpans:v9];

  return v10;
}

- (id)filterExactMatchVoiceCommandSpans:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[CDMShortcutService voiceCommandPredicate];
  v5 = [v3 filteredArrayUsingPredicate:v4];

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

- (id)handleVoiceCommandFollowUp:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v46 = a3;
  if (![v46 hasLegacyNlContext])
  {
    goto LABEL_9;
  }

  v4 = [v46 legacyNlContext];
  if (![v4 strictPrompt])
  {
    v5 = [v46 legacyNlContext];
    v6 = [v5 dictationPrompt];

    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    if ([v46 hasNlContext])
    {
      v12 = [v46 nlContext];
      v13 = [v12 systemDialogActs];

      v43 = self;
      if (v13)
      {
        v42 = v13;
        if ([v13 count])
        {
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          obj = v13;
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

                v13 = v42;
                goto LABEL_23;
              }

              goto LABEL_14;
            }
          }

          if ([SiriNLUTypesUtils isSdaAskRepeat:v17])
          {
            v18 = [(CDMShortcutService *)self buildEmptyShortcutUserParse];
LABEL_64:

            goto LABEL_28;
          }

          v21 = [v46 nlContext];
          v41 = [v21 activeTasks];

          v22 = +[CDMFeatureFlags isShortcutsNLv4FollowupEnabled];
          if (v41)
          {
            v23 = v22;
          }

          else
          {
            v23 = 1;
          }

          if ((v23 & 1) != 0 || ![v41 count])
          {
            v18 = 0;
          }

          else
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v45 = v41;
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
                    v28 = [*(*(&v47 + 1) + 8 * i) task];
                    v29 = v28 == 0;

                    if (!v29)
                    {
                      v30 = [v27 task];
                      v31 = [v30 nodes];
                      if (v31)
                      {
                        v32 = [v30 edges];
                        if (!v32)
                        {
                          goto LABEL_56;
                        }

                        v33 = [v30 nodes];
                        if ([v33 count] != 2)
                        {
                          goto LABEL_54;
                        }

                        v34 = [v30 edges];
                        v35 = [v34 count] == 1;

                        if (v35)
                        {
                          v31 = [v30 nodes];
                          v32 = [v31 objectAtIndexedSubscript:0];
                          if ([v32 usoElementId] == 1)
                          {
                            v33 = [v30 nodes];
                            v36 = [v33 objectAtIndexedSubscript:1];
                            if ([v36 usoElementId] == 1808)
                            {
                              v40 = [v30 edges];
                              v39 = [v40 objectAtIndexedSubscript:0];
                              v37 = [v39 label];
                              v38 = [v37 usoElementId] == 861;

                              if (v38)
                              {
                                v18 = [(CDMShortcutService *)v43 buildParseWithDelegatedUserDialogAct];

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

            v18 = 0;
LABEL_61:
          }

          goto LABEL_64;
        }
      }

LABEL_23:
    }

    v11 = [(CDMShortcutService *)self buildEmptyShortcutUserParse];
    goto LABEL_25;
  }

LABEL_5:
  if (!+[CDMFeatureFlags isShortcutsNLv4FollowupEnabled])
  {
    v7 = [v46 legacyNlContext];
    if ([v7 hasPreviousDomainName])
    {
      v8 = [v46 legacyNlContext];
      v9 = [v8 previousDomainName];
      v10 = [v9 isEqualToString:@"voiceCommands"];

      if (v10)
      {
        v11 = [(CDMShortcutService *)self buildParseWithDelegatedUserDialogAct];
LABEL_25:
        v18 = v11;
        goto LABEL_28;
      }
    }

    else
    {
    }
  }

  v18 = 0;
LABEL_28:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)buildParseWithDelegatedUserDialogAct
{
  v3 = objc_alloc_init(MEMORY[0x1E69D1178]);
  [v3 setAsrHypothesisIndex:0];
  [v3 setExternalParserId:@"com.apple.siri.nlv3"];
  v4 = objc_alloc_init(MEMORY[0x1E69D1238]);
  [v4 setDelegated:v3];
  v5 = [MEMORY[0x1E695DF70] array];
  [v5 addObject:v4];
  v6 = [(CDMShortcutService *)self buildEmptyShortcutUserParse];
  [v6 setUserDialogActs:v5];

  return v6;
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

- (id)setup:(id)a3
{
  v4 = a3;
  self->super.super._serviceState = 2;
  v5 = [v4 dynamicConfig];
  v6 = [v5 getAssetForFactorName:@"com.apple.siri.nl.autoshortcuts"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v6;

  v8 = [v4 dynamicConfig];
  v9 = [v8 getAssetBundlePathForFactorName:@"com.apple.siri.nl.autoshortcuts"];

  v10 = [v4 dynamicConfig];
  v11 = [v10 languageCode];
  v12 = [(CDMShortcutService *)self loadDenyListFromBundle:v9 languageCode:v11];
  denyList = self->_denyList;
  self->_denyList = v12;

  v14 = [(CDMBaseService *)self createSetupResponseCommand];

  return v14;
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