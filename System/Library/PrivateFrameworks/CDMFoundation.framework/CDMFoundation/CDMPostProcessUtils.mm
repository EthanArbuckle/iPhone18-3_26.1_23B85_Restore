@interface CDMPostProcessUtils
+ (BOOL)alignmentSubsumesSpan:(id)span alignment:(id)alignment;
+ (BOOL)hasEntityEdgeTo:(int)to inGraph:(id)graph;
+ (BOOL)hasTagNamespace:(id)namespace;
+ (id)entityKeyFrom:(id)from at:(unint64_t)at;
+ (id)filterAndConvertInternalMatchingSpan:(id)span;
+ (id)filterAndConvertInternalMatchingSpans:(id)spans;
+ (id)getAlignedEntitySpanSpans:(id)spans;
+ (id)getAlignedIdentifierSpans:(id)spans;
+ (id)getCorrectionOutcomeFromUserParses:(id)parses ccqrCorrectionOutcome:(id)outcome;
+ (id)getCroppedUserParses:(id)parses;
+ (id)getFederatedParses:(id)parses parsesNLv4:(id)lv4 parsesCATI:(id)i parsesUaaP:(id)p parsesPSC:(id)c parsesAutoShortcuts:(id)shortcuts parsesAppendOverrides:(id)overrides parsesSSU:(id)self0 addDebugInfo:(id)self1;
+ (id)getGroupIndexDict:(id)dict;
+ (id)getPostProcessUserParses:(id)parses;
+ (id)getPostProcessUserParses:(id)parses parsesNLv4:(id)lv4 parsesCATI:(id)i addDebugInfo:(id)info;
+ (id)getPostProcessUserParses:(id)parses parsesNLv4:(id)lv4 parsesCATI:(id)i parsesUaaP:(id)p addDebugInfo:(id)info;
+ (id)getPostProcessUserParses:(id)parses parsesNLv4:(id)lv4 parsesCATI:(id)i parsesUaaP:(id)p parsesPSC:(id)c parsesAutoShortcuts:(id)shortcuts parsesAppendOverrides:(id)overrides parsesSSU:(id)self0 addDebugInfo:(id)self1;
+ (id)getUtteranceAlignmentForIndex:(id)index nodeIndex:(int)nodeIndex;
+ (id)normalizedPayloadsFrom:(int64_t)from to:(int64_t)to within:(id)within;
+ (id)rewriteMessageFromMatchingSpans:(id)spans mrRewrittenUtterance:(id)utterance;
+ (id)runPostProcess:(id)process snlcRequest:(id)request snlcResponse:(id)response nLv4Request:(id)lv4Request nLv4Response:(id)lv4Response uaapNLProtoResponse:(id)protoResponse catiProtoResponse:(id)catiProtoResponse pscRequest:(id)self0 pscResponse:(id)self1 lvcResponse:(id)self2 overridesProtoResponse:(id)self3 mdRequest:(id)self4 mdResponse:(id)self5 mrRequest:(id)self6 mrResponse:(id)self7 spanProtoResponse:(id)self8 rdResponse:(id)self9 tokenProtoResponse:(id)tokenProtoResponse ssuResponse:(id)ssuResponse ccqrResponse:(id)ccqrResponse correctionOutcome:(id)outcome nluRequest:(id)nluRequest graphInput:(id)input debugText:(id)text;
+ (id)selectParsesFromUserParsesUaaP:(id)p userParsesShortcut:(id)shortcut userParsesReplaceOverrides:(id)overrides userParsesAppendOverrides:(id)appendOverrides userParsesSNLC:(id)c userParsesNLv4:(id)lv4 userParsesCATI:(id)i userParsesPSC:(id)self0 userParsesAutoShortcuts:(id)self1 userParsesSSU:(id)self2 addDebugInfo:(id)self3;
+ (id)significantTokenCountFrom:(unsigned int)from to:(unsigned int)to within:(id)within;
+ (id)spanIndexDict:(id)dict tokenChain:(id)chain;
+ (id)supplementaryOutputFromMatchingSpans:(id)spans rewriteMessage:(id)message correctionOutcome:(id)outcome;
+ (id)usoGraphs:(id)graphs;
+ (unsigned)isExternalMatchingSpan:(id)span fromMatcher:(int)matcher;
+ (unsigned)isInternalMatchingSpan:(id)span fromMatcher:(int)matcher;
+ (void)addNormalizedValuesTo:(id)to alignedWith:(id)with from:(id)from;
+ (void)annotateDUDAWithMRRRewrittenUtterance:(id)utterance matchingSpans:(id)spans userDialogAct:(id)act;
+ (void)annotateDelegatedUDAParses:(id)parses matchingSpans:(id)spans mrRewrittenUtterance:(id)utterance;
+ (void)annotateNLUResponse:(id)response nluRequest:(id)request matchingSpans:(id)spans tokenChain:(id)chain;
+ (void)annotateParses:(id)parses tokenChain:(id)chain matchingSpans:(id)spans asrHypothesis:(id)hypothesis;
+ (void)annotateUserParses:(id)parses correctionOutcome:(id)outcome;
+ (void)copyASRTimingInfoToUtteranceSpan:(id)span startIndexTokenDict:(id)dict endIndexTokenDict:(id)tokenDict;
+ (void)copyAlignedSpanEntitySpanForSameType:(id)type spanIndexDict:(id)dict utteranceAlignment:(id)alignment entityKey:(id)key tokenChain:(id)chain;
+ (void)copyAlignedSpanIdentifierForSameType:(id)type spanIndexDict:(id)dict utteranceAlignment:(id)alignment entityKey:(id)key groupIndexDict:(id)indexDict tokenChain:(id)chain;
+ (void)copyMentionResolverSpanEntitySpans:(id)spans fromMatchingSpans:(id)matchingSpans toParseGraph:(id)graph;
+ (void)copyMentionResolverSpanIdentifiers:(id)identifiers fromMatchingSpans:(id)spans toParseGraph:(id)graph;
+ (void)copySubsumedSpanEntitySpan:(id)span spans:(id)spans parseEntityKey:(id)key utteranceAlignment:(id)alignment tokenChain:(id)chain;
+ (void)createIdentifierGroups:(id)groups spans:(id)spans parseEntityKey:(id)key parseAlignment:(id)alignment interpretationGroupCurrentMax:(id)max;
+ (void)logParsesRanking:(id)ranking addDebugInfo:(id)info;
+ (void)mapVocGenericBundleIdsToPlatformBundleIdsForGraph:(id)graph;
+ (void)mapVocGenericBundleIdsToPlatformBundleIdsForParse:(id)parse;
+ (void)populateComparableProbabilityForParsesNLv4:(id)lv4 parsesSNLC:(id)c;
+ (void)populateComparableProbabilityFromProbabilityParses:(id)parses;
+ (void)populateComparableProbabilityParses:(id)parses threshold:(float)threshold;
+ (void)populateComparableProbabilityParsesAutoShortcuts:(id)shortcuts;
+ (void)populateComparableProbabilityParsesPSC:(id)c;
+ (void)populateComparableProbabilityParsesSNLC:(id)c deviceParses:(id)parses;
+ (void)removeProbabilityFromUserParses:(id)parses;
+ (void)runFeatureStore:(id)store nluResponse:(id)response snlcRequest:(id)request snlcResponse:(id)snlcResponse pscRequest:(id)pscRequest pscResponse:(id)pscResponse spanProtoResponse:(id)protoResponse tokenProtoResponse:(id)self0 mdRequest:(id)self1 mdResponse:(id)self2 mrRequest:(id)self3 mrResponse:(id)self4 nLv4Request:(id)self5 nLv4Response:(id)self6;
+ (void)splitParses:(id)parses deviceParses:(id)deviceParses zeroParses:(id)zeroParses;
+ (void)stripBugFixNamespaceSuffix:(id)suffix;
+ (void)stripBugFixPropertyKeySuffix:(id)suffix;
+ (void)updateIndexesForSignificantTokensFrom:(unsigned int *)from to:(unsigned int *)to tokenChain:(id)chain entityKey:(id)key;
@end

@implementation CDMPostProcessUtils

+ (void)mapVocGenericBundleIdsToPlatformBundleIdsForGraph:(id)graph
{
  v49 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  graphCopy = graph;
  identifiers = [graphCopy identifiers];
  v4 = [identifiers countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(identifiers);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        if ([v8 sourceComponent] == 2)
        {
          namespaceA = [v8 namespaceA];
          value = [namespaceA value];
          if ([value isEqualToString:@"appName"])
          {
            hasValue = [v8 hasValue];

            if ((hasValue & 1) == 0)
            {
              continue;
            }

            value2 = [v8 value];
            namespaceA = [CDMVocBundleMappingUtils mapVocGenericBundleIdToPlatformBundleId:value2];

            if (namespaceA)
            {
              v13 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                value3 = [v8 value];
                *buf = 136315650;
                v43 = "+[CDMPostProcessUtils mapVocGenericBundleIdsToPlatformBundleIdsForGraph:]";
                v44 = 2112;
                v45 = value3;
                v46 = 2112;
                v47 = namespaceA;
                _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Mapping appName identifier generic bundle ID %@ to platform bundle %@.", buf, 0x20u);
              }

              [v8 setValue:namespaceA];
            }
          }

          else
          {
          }
        }
      }

      v5 = [identifiers countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v5);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  spans = [graphCopy spans];
  v16 = [spans countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(spans);
        }

        v20 = *(*(&v33 + 1) + 8 * j);
        if ([v20 sourceComponent] == 2)
        {
          properties = [v20 properties];
          firstObject = [properties firstObject];

          v23 = [firstObject key];
          if (![v23 isEqualToString:@"appName"])
          {
            goto LABEL_29;
          }

          hasValueString = [firstObject hasValueString];

          if (hasValueString)
          {
            valueString = [firstObject valueString];
            value4 = [valueString value];
            v23 = [CDMVocBundleMappingUtils mapVocGenericBundleIdToPlatformBundleId:value4];

            if (v23)
            {
              v27 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                valueString2 = [firstObject valueString];
                value5 = [valueString2 value];
                *buf = 136315650;
                v43 = "+[CDMPostProcessUtils mapVocGenericBundleIdsToPlatformBundleIdsForGraph:]";
                v44 = 2112;
                v45 = value5;
                v46 = 2112;
                v47 = v23;
                _os_log_debug_impl(&dword_1DC287000, v27, OS_LOG_TYPE_DEBUG, "%s Mapping appName entity generic bundle ID %@ to platform bundle %@.", buf, 0x20u);
              }

              valueString3 = [firstObject valueString];
              [valueString3 setValue:v23];
            }

LABEL_29:
          }

          continue;
        }
      }

      v17 = [spans countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v17);
  }

  v31 = *MEMORY[0x1E69E9840];
}

+ (void)mapVocGenericBundleIdsToPlatformBundleIdsForParse:(id)parse
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  userDialogActs = [parse userDialogActs];
  v5 = [userDialogActs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(userDialogActs);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 hasUserStatedTask])
        {
          userStatedTask = [v9 userStatedTask];
          hasTask = [userStatedTask hasTask];

          if (hasTask)
          {
            userStatedTask2 = [v9 userStatedTask];
            task = [userStatedTask2 task];
            [self mapVocGenericBundleIdsToPlatformBundleIdsForGraph:task];
          }
        }
      }

      v6 = [userDialogActs countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)removeProbabilityFromUserParses:(id)parses
{
  v14 = *MEMORY[0x1E69E9840];
  parsesCopy = parses;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [parsesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(parsesCopy);
        }

        [*(*(&v9 + 1) + 8 * v7++) setProbability:0.0];
      }

      while (v5 != v7);
      v5 = [parsesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)supplementaryOutputFromMatchingSpans:(id)spans rewriteMessage:(id)message correctionOutcome:(id)outcome
{
  v22 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  outcomeCopy = outcome;
  spansCopy = spans;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    rewrittenUtterance = [messageCopy rewrittenUtterance];
    v16 = 136315650;
    v17 = "+[CDMPostProcessUtils supplementaryOutputFromMatchingSpans:rewriteMessage:correctionOutcome:]";
    v18 = 2112;
    v19 = rewrittenUtterance;
    v20 = 1024;
    rewriteType = [messageCopy rewriteType];
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Adding supplementary output with re-written utterance: %@, re-write type: %i", &v16, 0x1Cu);
  }

  v11 = objc_opt_new();
  [v11 setRewrite:messageCopy];
  [v11 setCorrectionOutcome:outcomeCopy];

  v12 = [spansCopy mutableCopy];
  [v11 setMatchingSpans:v12];

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)rewriteMessageFromMatchingSpans:(id)spans mrRewrittenUtterance:(id)utterance
{
  v23 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  utteranceCopy = utterance;
  if (+[CDMFeatureFlags isMentionResolverRewriterEnabled](CDMFeatureFlags, "isMentionResolverRewriterEnabled") && [utteranceCopy length])
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = spansCopy;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([self isExternalMatchingSpan:v14 fromMatcher:{2, v18}])
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      v15 = objc_opt_new();
      [v15 setRewrittenUtterance:utteranceCopy];
      [v15 setRewriteType:3];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (void)annotateDelegatedUDAParses:(id)parses matchingSpans:(id)spans mrRewrittenUtterance:(id)utterance
{
  v46 = *MEMORY[0x1E69E9840];
  parsesCopy = parses;
  spansCopy = spans;
  utteranceCopy = utterance;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = parsesCopy;
  v25 = [parsesCopy countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v25)
  {
    v24 = *v40;
    do
    {
      v8 = 0;
      do
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v8;
        v9 = *(*(&v39 + 1) + 8 * v8);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        userDialogActs = [v9 userDialogActs];
        v10 = [userDialogActs countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v36;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v36 != v12)
              {
                objc_enumerationMutation(userDialogActs);
              }

              v14 = *(*(&v35 + 1) + 8 * i);
              if ([v14 hasDelegated])
              {
                v33 = 0u;
                v34 = 0u;
                v31 = 0u;
                v32 = 0u;
                v15 = spansCopy;
                v16 = [v15 countByEnumeratingWithState:&v31 objects:v43 count:16];
                if (v16)
                {
                  v17 = v16;
                  v18 = *v32;
                  do
                  {
                    for (j = 0; j != v17; ++j)
                    {
                      if (*v32 != v18)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v20 = *(*(&v31 + 1) + 8 * j);
                      delegated = [v14 delegated];
                      [delegated addMatchingSpans:v20];
                    }

                    v17 = [v15 countByEnumeratingWithState:&v31 objects:v43 count:16];
                  }

                  while (v17);
                }

                [self annotateDUDAWithMRRRewrittenUtterance:utteranceCopy matchingSpans:v15 userDialogAct:v14];
              }
            }

            v11 = [userDialogActs countByEnumeratingWithState:&v35 objects:v44 count:16];
          }

          while (v11);
        }

        v8 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v25);
  }

  v22 = *MEMORY[0x1E69E9840];
}

+ (void)annotateDUDAWithMRRRewrittenUtterance:(id)utterance matchingSpans:(id)spans userDialogAct:(id)act
{
  v20 = *MEMORY[0x1E69E9840];
  utteranceCopy = utterance;
  spansCopy = spans;
  actCopy = act;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315394;
    v17 = "+[CDMPostProcessUtils annotateDUDAWithMRRRewrittenUtterance:matchingSpans:userDialogAct:]";
    v18 = 2112;
    v19 = utteranceCopy;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s annotate DUDA With mr re-written utterance - %@", &v16, 0x16u);
  }

  delegated = [actCopy delegated];
  rewrite = [delegated rewrite];

  if (!rewrite)
  {
    v13 = [objc_opt_class() rewriteMessageFromMatchingSpans:spansCopy mrRewrittenUtterance:utteranceCopy];
    if (v13)
    {
      delegated2 = [actCopy delegated];
      [delegated2 setRewrite:v13];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (unsigned)isExternalMatchingSpan:(id)span fromMatcher:(int)matcher
{
  spanCopy = span;
  if ([spanCopy matcherNamesCount])
  {
    v6 = 0;
    while (1)
    {
      v7 = [spanCopy matcherNamesAtIndex:v6];
      v8 = v7 == matcher;
      if (v7 == matcher)
      {
        break;
      }

      if ([spanCopy matcherNamesCount] <= ++v6)
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

+ (id)filterAndConvertInternalMatchingSpans:(id)spans
{
  v20 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(spansCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = spansCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([v11 matcherNamesCount] == 1 && objc_msgSend(v11, "matcherNamesAtIndex:", 0) == 2 || objc_msgSend(self, "isInternalMatchingSpan:fromMatcher:", v11, 7)) && !objc_msgSend(self, "isInternalMatchingSpan:fromMatcher:", v11, 4))
        {
          v12 = [self filterAndConvertInternalMatchingSpan:v11];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (unsigned)isInternalMatchingSpan:(id)span fromMatcher:(int)matcher
{
  spanCopy = span;
  if ([spanCopy matcherNamesCount])
  {
    v6 = 0;
    while (1)
    {
      v7 = [spanCopy matcherNamesAtIndex:v6];
      v8 = v7 == matcher;
      if (v7 == matcher)
      {
        break;
      }

      if ([spanCopy matcherNamesCount] <= ++v6)
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

+ (id)filterAndConvertInternalMatchingSpan:(id)span
{
  spanCopy = span;
  v4 = objc_alloc_init(MEMORY[0x1E69D11F8]);
  input = [spanCopy input];
  [v4 setInput:input];

  label = [spanCopy label];
  [v4 setLabel:label];

  [v4 setStartTokenIndex:{objc_msgSend(spanCopy, "startTokenIndex")}];
  [v4 setEndTokenIndex:{objc_msgSend(spanCopy, "endTokenIndex")}];
  usoGraph = [spanCopy usoGraph];
  [v4 setUsoGraph:usoGraph];

  [v4 setScore:1.0];
  if ([spanCopy matcherNamesCount])
  {
    v8 = 0;
    do
    {
      v9 = [spanCopy matcherNamesAtIndex:v8] - 2;
      if (v9 > 5)
      {
        v10 = 0;
      }

      else
      {
        v10 = dword_1DC52F3A0[v9];
      }

      [v4 addMatcherNames:v10];
      ++v8;
    }

    while ([spanCopy matcherNamesCount] > v8);
  }

  return v4;
}

+ (id)getPostProcessUserParses:(id)parses parsesNLv4:(id)lv4 parsesCATI:(id)i parsesUaaP:(id)p parsesPSC:(id)c parsesAutoShortcuts:(id)shortcuts parsesAppendOverrides:(id)overrides parsesSSU:(id)self0 addDebugInfo:(id)self1
{
  v11 = [CDMPostProcessUtils getFederatedParses:parses parsesNLv4:lv4 parsesCATI:i parsesUaaP:p parsesPSC:c parsesAutoShortcuts:shortcuts parsesAppendOverrides:overrides parsesSSU:u addDebugInfo:info];
  v12 = [CDMPostProcessUtils getCroppedUserParses:v11];

  return v12;
}

+ (id)getPostProcessUserParses:(id)parses parsesNLv4:(id)lv4 parsesCATI:(id)i parsesUaaP:(id)p addDebugInfo:(id)info
{
  v7 = [CDMPostProcessUtils getFederatedParses:parses parsesNLv4:lv4 parsesCATI:i parsesUaaP:p parsesPSC:0 parsesAutoShortcuts:0 parsesAppendOverrides:0 parsesSSU:0 addDebugInfo:info];
  v8 = [CDMPostProcessUtils getCroppedUserParses:v7];

  return v8;
}

+ (id)getPostProcessUserParses:(id)parses parsesNLv4:(id)lv4 parsesCATI:(id)i addDebugInfo:(id)info
{
  v6 = [CDMPostProcessUtils getFederatedParses:parses parsesNLv4:lv4 parsesCATI:i parsesUaaP:0 parsesPSC:0 parsesAutoShortcuts:0 parsesAppendOverrides:0 parsesSSU:0 addDebugInfo:info];
  v7 = [CDMPostProcessUtils getCroppedUserParses:v6];

  return v7;
}

+ (id)getPostProcessUserParses:(id)parses
{
  parsesCopy = parses;
  [CDMPostProcessUtils populateComparableProbabilityFromProbabilityParses:parsesCopy];
  v4 = [CDMPostProcessUtils sortParses:parsesCopy];

  v5 = [CDMPostProcessUtils getCroppedUserParses:v4];

  return v5;
}

+ (id)getCroppedUserParses:(id)parses
{
  parsesCopy = parses;
  v4 = [parsesCopy count];
  if (v4 >= 0xA)
  {
    v5 = 10;
  }

  else
  {
    v5 = v4;
  }

  v6 = [parsesCopy subarrayWithRange:{0, v5}];

  return v6;
}

+ (id)getFederatedParses:(id)parses parsesNLv4:(id)lv4 parsesCATI:(id)i parsesUaaP:(id)p parsesPSC:(id)c parsesAutoShortcuts:(id)shortcuts parsesAppendOverrides:(id)overrides parsesSSU:(id)self0 addDebugInfo:(id)self1
{
  parsesCopy = parses;
  pCopy = p;
  cCopy = c;
  shortcutsCopy = shortcuts;
  overridesCopy = overrides;
  uCopy = u;
  infoCopy = info;
  v20 = MEMORY[0x1E695DF70];
  iCopy = i;
  lv4Copy = lv4;
  v23 = objc_alloc_init(v20);
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [CDMPostProcessUtils populateComparableProbabilityForParsesNLv4:lv4Copy parsesSNLC:parsesCopy];
  [CDMPostProcessUtils splitParses:lv4Copy deviceParses:v23 zeroParses:v24];

  [CDMPostProcessUtils populateComparableProbabilityParsesCATI:iCopy];
  [CDMPostProcessUtils splitParses:iCopy deviceParses:v23 zeroParses:v24];

  if (pCopy)
  {
    [CDMPostProcessUtils populateComparableProbabilityParsesUaaP:pCopy];
    [CDMPostProcessUtils splitParses:pCopy deviceParses:v23 zeroParses:v24];
  }

  if (cCopy)
  {
    [CDMPostProcessUtils populateComparableProbabilityParsesPSC:cCopy];
    [CDMPostProcessUtils splitParses:cCopy deviceParses:v23 zeroParses:v24];
  }

  if (shortcutsCopy)
  {
    [CDMPostProcessUtils populateComparableProbabilityParsesAutoShortcuts:shortcutsCopy];
    [CDMPostProcessUtils splitParses:shortcutsCopy deviceParses:v23 zeroParses:v24];
  }

  if (overridesCopy)
  {
    [CDMPostProcessUtils populateComparableProbabilityFromProbabilityParses:overridesCopy];
    [CDMPostProcessUtils splitParses:overridesCopy deviceParses:v23 zeroParses:v24];
  }

  if (uCopy)
  {
    [CDMPostProcessUtils populateComparableProbabilityParsesSSU:uCopy];
    [CDMPostProcessUtils splitParses:uCopy deviceParses:v23 zeroParses:v24];
  }

  [CDMPostProcessUtils populateComparableProbabilityParsesSNLC:parsesCopy deviceParses:v23];
  v25 = [CDMPostProcessUtils sortParses:v23];
  v26 = [v25 mutableCopy];

  if (!+[CDMFeatureFlags isAmbiguityRefactorEnabled])
  {
    v27 = [CDMPostProcessUtils sortParses:parsesCopy];
    [v26 addObjectsFromArray:v27];

    [v26 addObjectsFromArray:v24];
  }

  if (+[CDMUserDefaultsUtils readNLv4MaxNumParses]!= 1)
  {
    [v26 addObjectsFromArray:v24];
  }

  [CDMPostProcessUtils logParsesRanking:v26 addDebugInfo:infoCopy];

  return v26;
}

+ (void)logParsesRanking:(id)ranking addDebugInfo:(id)info
{
  v36 = *MEMORY[0x1E69E9840];
  rankingCopy = ranking;
  infoCopy = info;
  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"\n\nFederation ranking order:"];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = rankingCopy;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = MEMORY[0x1E696AEC0];
        parser = [v12 parser];
        parserId = [parser parserId];
        if (parserId >= 0xA)
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", parserId];
        }

        else
        {
          v16 = off_1E862F1E8[parserId];
        }

        [v12 comparableProbability];
        v18 = v17;
        [v12 probability];
        v20 = [v13 stringWithFormat:@"\n%d: %@ probability: %f (%f before calibration)", v10, v16, v18, v19];
        [v6 appendString:v20];

        v10 = (v10 + 1);
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v8);
  }

  v21 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "+[CDMPostProcessUtils logParsesRanking:addDebugInfo:]";
    v31 = 2112;
    v32 = @"summary";
    v33 = 2114;
    v34 = v6;
    _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\n%{public}@\n", buf, 0x20u);
  }

  if (infoCopy)
  {
    [infoCopy appendString:v6];
  }

  v22 = *MEMORY[0x1E69E9840];
}

BOOL __34__CDMPostProcessUtils_sortParses___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 comparableProbability];
  v6 = v5;
  [v4 comparableProbability];
  v8 = v7;

  return v6 < v8;
}

+ (void)splitParses:(id)parses deviceParses:(id)deviceParses zeroParses:(id)zeroParses
{
  v23 = *MEMORY[0x1E69E9840];
  parsesCopy = parses;
  deviceParsesCopy = deviceParses;
  zeroParsesCopy = zeroParses;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [parsesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(parsesCopy);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        [v14 comparableProbability];
        if (v15 <= 0.0)
        {
          v16 = zeroParsesCopy;
        }

        else
        {
          v16 = deviceParsesCopy;
        }

        [v16 addObject:v14];
      }

      v11 = [parsesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)populateComparableProbabilityFromProbabilityParses:(id)parses
{
  v15 = *MEMORY[0x1E69E9840];
  parsesCopy = parses;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [parsesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(parsesCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 probability];
        [v8 setComparableProbability:?];
      }

      v5 = [parsesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)populateComparableProbabilityParsesSNLC:(id)c deviceParses:(id)parses
{
  v17 = *MEMORY[0x1E69E9840];
  cCopy = c;
  if ([parses count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = cCopy;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) setComparableProbability:{0.200000003, v12}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [CDMPostProcessUtils populateComparableProbabilityFromProbabilityParses:cCopy];
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)populateComparableProbabilityParsesAutoShortcuts:(id)shortcuts
{
  v14 = *MEMORY[0x1E69E9840];
  shortcutsCopy = shortcuts;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [shortcutsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(shortcutsCopy);
        }

        [*(*(&v9 + 1) + 8 * v7++) setComparableProbability:0.600000024];
      }

      while (v5 != v7);
      v5 = [shortcutsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)populateComparableProbabilityParsesPSC:(id)c
{
  v53 = *MEMORY[0x1E69E9840];
  cCopy = c;
  v36 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = cCopy;
  v34 = [v4 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (!v34)
  {

    v5 = 0;
    v23 = 0;
    goto LABEL_28;
  }

  v37 = 0;
  v5 = 0;
  obj = v4;
  v33 = *v43;
  do
  {
    v6 = 0;
    do
    {
      if (*v43 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v35 = v6;
      v7 = *(*(&v42 + 1) + 8 * v6);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      userDialogActs = [v7 userDialogActs];
      v9 = [userDialogActs countByEnumeratingWithState:&v38 objects:v51 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v39;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v39 != v11)
            {
              objc_enumerationMutation(userDialogActs);
            }

            v13 = *(*(&v38 + 1) + 8 * i);
            delegated = [v13 delegated];
            externalParserId = [delegated externalParserId];
            v16 = [externalParserId isEqualToString:@"com.apple.search"];

            if (v16)
            {
              v17 = v7;

              v5 = v17;
            }

            else
            {
              delegated2 = [v13 delegated];
              externalParserId2 = [delegated2 externalParserId];
              v20 = [externalParserId2 isEqualToString:@"com.apple.search_phase_2"];

              if (v20)
              {
                v21 = v7;

                v37 = v21;
              }

              else
              {
                [v36 addObject:v7];
              }
            }
          }

          v10 = [userDialogActs countByEnumeratingWithState:&v38 objects:v51 count:16];
        }

        while (v10);
      }

      v6 = v35 + 1;
    }

    while (v35 + 1 != v34);
    v34 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  }

  while (v34);

  if (!v5)
  {
    v4 = obj;
    v23 = v37;
    goto LABEL_28;
  }

  v23 = v37;
  if (!v37 || ([v5 probability], v22 >= 0.600000024) || (objc_msgSend(v37, "probability"), v22 >= 0.600000024) || (objc_msgSend(v5, "probability"), v25 = v24, objc_msgSend(v37, "probability"), v22 = v25 + v26, v22 < 0.600000024))
  {
    v4 = obj;
LABEL_28:
    LODWORD(v22) = 1058642330;
    [CDMPostProcessUtils populateComparableProbabilityParses:v4 threshold:v22];
    goto LABEL_29;
  }

  v28 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v48 = "+[CDMPostProcessUtils populateComparableProbabilityParsesPSC:]";
    v49 = 2048;
    v50 = 0x3FE3333340000000;
    _os_log_debug_impl(&dword_1DC287000, v28, OS_LOG_TYPE_DEBUG, "%s Combined PSC parses above threshold (%.2f). Populating comparableProbability.", buf, 0x16u);
  }

  v46[0] = v5;
  v46[1] = v37;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  [CDMPostProcessUtils populateComparableProbabilityParses:v29 threshold:0.0];

  allObjects = [v36 allObjects];
  LODWORD(v31) = 1058642330;
  [CDMPostProcessUtils populateComparableProbabilityParses:allObjects threshold:v31];

  v4 = obj;
LABEL_29:

  v27 = *MEMORY[0x1E69E9840];
}

+ (void)populateComparableProbabilityParses:(id)parses threshold:(float)threshold
{
  v22 = *MEMORY[0x1E69E9840];
  parsesCopy = parses;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [parsesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    thresholdCopy = threshold;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(parsesCopy);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [v11 probability];
        v13 = v12;
        v14 = 0.0;
        if (v13 > thresholdCopy)
        {
          [v11 probability];
          *&v15 = v15;
          v14 = *&v15;
        }

        [v11 setComparableProbability:v14];
      }

      v7 = [parsesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (void)populateComparableProbabilityForParsesNLv4:(id)lv4 parsesSNLC:(id)c
{
  v47 = *MEMORY[0x1E69E9840];
  lv4Copy = lv4;
  cCopy = c;
  if ([lv4Copy count])
  {
    firstObject = [cCopy firstObject];
    v8 = firstObject;
    if (firstObject)
    {
      [firstObject probability];
      *&v9 = 1.0 - v9;
      v10 = *&v9;
    }

    else
    {
      v11 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v46 = "+[CDMPostProcessUtils populateComparableProbabilityForParsesNLv4:parsesSNLC:]";
        _os_log_error_impl(&dword_1DC287000, v11, OS_LOG_TYPE_ERROR, "%s [ERR]: no SNLC response available in post process node", buf, 0xCu);
      }

      v10 = 1.0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = lv4Copy;
    v13 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v40;
      v16 = 0.00000011921;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v39 + 1) + 8 * i);
          [v18 probability];
          if (v19 > v16)
          {
            [v18 probability];
            v16 = v20;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v14);
      v21 = v16;
    }

    else
    {
      v21 = 0.00000011920929;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = v12;
    v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v36;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v35 + 1) + 8 * j);
          [v27 probability];
          if (v28 != 1.0 || ([v27 parser], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "algorithm"), v29, v31 = 1.0, v30 != 1))
          {
            [v27 probability];
            v33 = v10 * (v32 / v21);
            if (v33 <= 0.5)
            {
              v33 = 0.0;
            }

            v31 = v33;
          }

          [v27 setComparableProbability:v31];
        }

        v24 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v24);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

+ (BOOL)alignmentSubsumesSpan:(id)span alignment:(id)alignment
{
  v21 = *MEMORY[0x1E69E9840];
  alignmentCopy = alignment;
  usoGraph = [span usoGraph];
  alignments = [usoGraph alignments];

  if ([alignments count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = alignments;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (![*(*(&v16 + 1) + 8 * i) subsumedBy:{alignmentCopy, v16}])
          {
            v13 = 0;
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)getUtteranceAlignmentForIndex:(id)index nodeIndex:(int)nodeIndex
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  alignments = [index alignments];
  v6 = [alignments countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(alignments);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 nodeIndex] == nodeIndex)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [alignments countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (void)annotateNLUResponse:(id)response nluRequest:(id)request matchingSpans:(id)spans tokenChain:(id)chain
{
  chainCopy = chain;
  spansCopy = spans;
  requestCopy = request;
  responseCopy = response;
  parses = [responseCopy parses];
  currentTurnInput = [requestCopy currentTurnInput];

  asrOutputs = [currentTurnInput asrOutputs];
  firstObject = [asrOutputs firstObject];
  [CDMPostProcessUtils annotateParses:parses tokenChain:chainCopy matchingSpans:spansCopy asrHypothesis:firstObject];

  [responseCopy setParses:parses];
}

+ (id)entityKeyFrom:(id)from at:(unint64_t)at
{
  v28 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  edges = [fromCopy edges];
  v8 = [edges countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *v24;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(edges);
      }

      v11 = *(*(&v23 + 1) + 8 * i);
      if ([v11 toIndex] == at)
      {
        v8 = v11;

        if (v8)
        {
          edges = [fromCopy nodes];
          if (![edges count])
          {
            goto LABEL_20;
          }

          nodes = [fromCopy nodes];
          if ([nodes count] <= at)
          {
            v18 = 0;
LABEL_23:

            goto LABEL_24;
          }

          fromIndex = [v8 fromIndex];
          nodes2 = [fromCopy nodes];
          v15 = [nodes2 count];

          if (v15 > fromIndex)
          {
            nodes3 = [fromCopy nodes];
            edges = [nodes3 objectAtIndexedSubscript:at];

            nodes4 = [fromCopy nodes];
            nodes = [nodes4 objectAtIndexedSubscript:{objc_msgSend(v8, "fromIndex")}];

            v18 = 0;
            if (edges && nodes)
            {
              label = [v8 label];
              v20 = label;
              if (label)
              {
                if ([label usoElementId] == 1269)
                {
                  v18 = [self entityKeyFrom:fromCopy at:{objc_msgSend(v8, "fromIndex")}];
                  if (v18)
                  {
                    -[EntityKey setElementId:](v18, "setElementId:", [edges usoElementId]);
                  }
                }

                else
                {
                  v18 = -[EntityKey initWithElementId:edgeElementId:parentElementId:]([EntityKey alloc], "initWithElementId:edgeElementId:parentElementId:", [edges usoElementId], objc_msgSend(v20, "usoElementId"), objc_msgSend(nodes, "usoElementId"));
                }
              }

              else
              {
                v18 = 0;
              }
            }

            goto LABEL_23;
          }
        }

        v18 = 0;
        goto LABEL_25;
      }
    }

    v8 = [edges countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_20:
  v18 = 0;
LABEL_24:

LABEL_25:
  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (void)annotateUserParses:(id)parses correctionOutcome:(id)outcome
{
  v17 = *MEMORY[0x1E69E9840];
  parsesCopy = parses;
  outcomeCopy = outcome;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [parsesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(parsesCopy);
        }

        [*(*(&v12 + 1) + 8 * v10++) setCorrectionOutcome:outcomeCopy];
      }

      while (v8 != v10);
      v8 = [parsesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)getCorrectionOutcomeFromUserParses:(id)parses ccqrCorrectionOutcome:(id)outcome
{
  v32 = *MEMORY[0x1E69E9840];
  parsesCopy = parses;
  outcomeCopy = outcome;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [parsesCopy countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(parsesCopy);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        [v12 comparableProbability];
        if (v13 > 0.0)
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          userDialogActs = [v12 userDialogActs];
          v15 = [userDialogActs countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v23;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v23 != v17)
                {
                  objc_enumerationMutation(userDialogActs);
                }

                v9 |= [*(*(&v22 + 1) + 8 * j) hasRejected];
              }

              v16 = [userDialogActs countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v16);
          }
        }
      }

      v8 = [parsesCopy countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  if ([outcomeCopy type] == 1 || (v9 & 1) != 0)
  {
    v19 = objc_opt_new();
    [v19 setType:1];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (void)annotateParses:(id)parses tokenChain:(id)chain matchingSpans:(id)spans asrHypothesis:(id)hypothesis
{
  v109 = *MEMORY[0x1E69E9840];
  parsesCopy = parses;
  chainCopy = chain;
  spansCopy = spans;
  hypothesisCopy = hypothesis;
  v13 = [self usoGraphs:parsesCopy];
  if ([v13 count])
  {
    v57 = parsesCopy;
    v58 = v13;
    v76 = chainCopy;
    v14 = objc_alloc(MEMORY[0x1E695DF90]);
    [hypothesisCopy asrTokens];
    v15 = v59 = hypothesisCopy;
    v16 = [v14 initWithCapacity:{objc_msgSend(v15, "count")}];

    v17 = objc_alloc(MEMORY[0x1E695DF90]);
    asrTokens = [v59 asrTokens];
    v19 = [v17 initWithCapacity:{objc_msgSend(asrTokens, "count")}];

    if (v59)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      asrTokens2 = [v59 asrTokens];
      v21 = [asrTokens2 countByEnumeratingWithState:&v97 objects:v108 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v98;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v98 != v23)
            {
              objc_enumerationMutation(asrTokens2);
            }

            v25 = *(*(&v97 + 1) + 8 * i);
            v26 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v25, "beginIndex", v57)}];
            [v16 setObject:v25 forKeyedSubscript:v26];

            v27 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v25, "endIndex")}];
            [v19 setObject:v25 forKeyedSubscript:v27];
          }

          v22 = [asrTokens2 countByEnumeratingWithState:&v97 objects:v108 count:16];
        }

        while (v22);
      }
    }

    else
    {
      asrTokens2 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(asrTokens2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v107 = "+[CDMPostProcessUtils annotateParses:tokenChain:matchingSpans:asrHypothesis:]";
        _os_log_debug_impl(&dword_1DC287000, asrTokens2, OS_LOG_TYPE_DEBUG, "%s Missing ASR Hypothesis, unable to add timing information to alignments", buf, 0xCu);
      }
    }

    chainCopy = v76;

    v69 = [self spanIndexDict:spansCopy tokenChain:v76];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = v58;
    v62 = [obj countByEnumeratingWithState:&v93 objects:v105 count:16];
    if (!v62)
    {
      v71 = 0;
      v73 = 0;
      goto LABEL_76;
    }

    v71 = 0;
    v73 = 0;
    v61 = *v94;
    while (1)
    {
      v28 = 0;
      do
      {
        if (*v94 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v63 = v28;
        v29 = *(*(&v93 + 1) + 8 * v28);
        v68 = [self getGroupIndexDict:{v29, v57}];
        v66 = [IdentifierGroupingUtils getInterpretationGroupMax:v29];
        array = [MEMORY[0x1E695DF70] array];
        array2 = [MEMORY[0x1E695DF70] array];
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        alignments = [v29 alignments];
        v75 = [alignments countByEnumeratingWithState:&v89 objects:v104 count:16];
        if (v75)
        {
          v74 = *v90;
          do
          {
            v30 = 0;
            do
            {
              if (*v90 != v74)
              {
                objc_enumerationMutation(alignments);
              }

              v31 = *(*(&v89 + 1) + 8 * v30);
              [self addNormalizedValuesTo:v29 alignedWith:v31 from:chainCopy];
              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              spans = [v31 spans];
              v33 = [spans countByEnumeratingWithState:&v85 objects:v103 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v86;
                do
                {
                  for (j = 0; j != v34; ++j)
                  {
                    if (*v86 != v35)
                    {
                      objc_enumerationMutation(spans);
                    }

                    [self copyASRTimingInfoToUtteranceSpan:*(*(&v85 + 1) + 8 * j) startIndexTokenDict:v16 endIndexTokenDict:v19];
                  }

                  v34 = [spans countByEnumeratingWithState:&v85 objects:v103 count:16];
                }

                while (v34);
              }

              v37 = +[CDMPostProcessUtils entityKeyFrom:at:](CDMPostProcessUtils, "entityKeyFrom:at:", v29, [v31 nodeIndex]);
              if (!v37)
              {
                chainCopy = v76;
                goto LABEL_49;
              }

              v38 = +[EntityKey userEntity];
              v39 = [v38 isEqualToEntityKey:v37];

              chainCopy = v76;
              if (v39)
              {
                if (!v73)
                {
                  v73 = [self getAlignedIdentifierSpans:spansCopy];
                }

                if (!+[CDMFeatureFlags isUsoEntitySpanEnabled])
                {
                  goto LABEL_48;
                }

                v40 = v71;
                if (!v71)
                {
                  v40 = [self getAlignedEntitySpanSpans:spansCopy];
                }

                v71 = v40;
                [self copySubsumedSpanEntitySpan:array2 spans:v40 parseEntityKey:v37 utteranceAlignment:v31 tokenChain:v76];
                if (+[CDMFeatureFlags isInterpretationGroupFilteringEnabled])
                {
                  [self copyAlignedSpanIdentifierForSameType:array spanIndexDict:v69 utteranceAlignment:v31 entityKey:v37 groupIndexDict:v68 tokenChain:v76];
                }

                else
                {
LABEL_48:
                  [self createIdentifierGroups:array spans:v73 parseEntityKey:v37 parseAlignment:v31 interpretationGroupCurrentMax:v66];
                }

                goto LABEL_49;
              }

              [self copyAlignedSpanIdentifierForSameType:array spanIndexDict:v69 utteranceAlignment:v31 entityKey:v37 groupIndexDict:v68 tokenChain:v76];
              if (!+[CDMFeatureFlags isUsoEntitySpanEnabled])
              {
                goto LABEL_49;
              }

              v41 = +[EntityKey calendarEventName];
              if (([v41 isEqualToEntityKey:v37] & 1) == 0)
              {
                v64 = +[EntityKey personEntity];
                if (![v64 isEqualToEntityKey:v37])
                {
                  v43 = +[EntityKey group];
                  v44 = [v43 isEqualToEntityKey:v37];

                  chainCopy = v76;
                  if ((v44 & 1) == 0)
                  {
                    [self copyAlignedSpanEntitySpanForSameType:array2 spanIndexDict:v69 utteranceAlignment:v31 entityKey:v37 tokenChain:v76];
                    goto LABEL_49;
                  }

                  goto LABEL_45;
                }
              }

LABEL_45:
              v42 = v71;
              if (!v71)
              {
                v42 = [self getAlignedEntitySpanSpans:spansCopy];
              }

              v71 = v42;
              [self copySubsumedSpanEntitySpan:array2 spans:v42 parseEntityKey:v37 utteranceAlignment:v31 tokenChain:chainCopy];
LABEL_49:

              ++v30;
            }

            while (v30 != v75);
            v45 = [alignments countByEnumeratingWithState:&v89 objects:v104 count:16];
            v75 = v45;
          }

          while (v45);
        }

        [self copyMentionResolverSpanIdentifiers:array fromMatchingSpans:spansCopy toParseGraph:v29];
        if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
        {
          [self copyMentionResolverSpanEntitySpans:array2 fromMatchingSpans:spansCopy toParseGraph:v29];
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v46 = array;
        v47 = [v46 countByEnumeratingWithState:&v81 objects:v102 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v82;
          do
          {
            for (k = 0; k != v48; ++k)
            {
              if (*v82 != v49)
              {
                objc_enumerationMutation(v46);
              }

              [v29 addIdentifiers:*(*(&v81 + 1) + 8 * k)];
            }

            v48 = [v46 countByEnumeratingWithState:&v81 objects:v102 count:16];
          }

          while (v48);
        }

        if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
        {
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v51 = array2;
          v52 = [v51 countByEnumeratingWithState:&v77 objects:v101 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v78;
            do
            {
              for (m = 0; m != v53; ++m)
              {
                if (*v78 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                [v29 addSpans:*(*(&v77 + 1) + 8 * m)];
              }

              v53 = [v51 countByEnumeratingWithState:&v77 objects:v101 count:16];
            }

            while (v53);
          }
        }

        v28 = v63 + 1;
        chainCopy = v76;
      }

      while (v63 + 1 != v62);
      v62 = [obj countByEnumeratingWithState:&v93 objects:v105 count:16];
      if (!v62)
      {
LABEL_76:

        parsesCopy = v57;
        v13 = v58;
        hypothesisCopy = v59;
        break;
      }
    }
  }

  v56 = *MEMORY[0x1E69E9840];
}

+ (id)getAlignedEntitySpanSpans:(id)spans
{
  v21 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(spansCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = spansCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 hasUsoGraph])
        {
          usoGraph = [v10 usoGraph];
          if ([usoGraph alignmentsCount])
          {
            usoGraph2 = [v10 usoGraph];
            spansCount = [usoGraph2 spansCount];

            if (spansCount)
            {
              [v4 addObject:v10];
            }
          }

          else
          {
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)getAlignedIdentifierSpans:(id)spans
{
  v21 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(spansCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = spansCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 hasUsoGraph])
        {
          usoGraph = [v10 usoGraph];
          if ([usoGraph alignmentsCount])
          {
            usoGraph2 = [v10 usoGraph];
            identifiersCount = [usoGraph2 identifiersCount];

            if (identifiersCount)
            {
              [v4 addObject:v10];
            }
          }

          else
          {
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)createIdentifierGroups:(id)groups spans:(id)spans parseEntityKey:(id)key parseAlignment:(id)alignment interpretationGroupCurrentMax:(id)max
{
  v52 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  spansCopy = spans;
  keyCopy = key;
  alignmentCopy = alignment;
  maxCopy = max;
  spans = [alignmentCopy spans];
  v17 = [spans count];

  if (v17)
  {
    v31 = maxCopy;
    v33 = groupsCopy;
    v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{3 * objc_msgSend(spansCopy, "count")}];
    v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{3 * objc_msgSend(spansCopy, "count")}];
    v39 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{3 * objc_msgSend(spansCopy, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v32 = spansCopy;
    obj = spansCopy;
    v37 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v37)
    {
      v36 = *v47;
      do
      {
        v18 = 0;
        do
        {
          if (*v47 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = v18;
          v19 = *(*(&v46 + 1) + 8 * v18);
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          usoGraph = [v19 usoGraph];
          alignments = [usoGraph alignments];

          v22 = [alignments countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v43;
            while (2)
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v43 != v24)
                {
                  objc_enumerationMutation(alignments);
                }

                v26 = *(*(&v42 + 1) + 8 * i);
                if ([v26 subsumedBy:alignmentCopy])
                {
                  usoGraph2 = [v19 usoGraph];
                  v28 = +[CDMPostProcessUtils entityKeyFrom:at:](CDMPostProcessUtils, "entityKeyFrom:at:", usoGraph2, [v26 nodeIndex]);

                  if ([v28 isEqualToEntityKey:keyCopy])
                  {
                    if ([self hasTagNamespace:v19])
                    {
                      [v35 addObject:v19];

                      goto LABEL_21;
                    }

                    [v40 addObject:v26];
                    v29 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v26];
                    [v39 setObject:v19 forKeyedSubscript:v29];
                  }
                }
              }

              v23 = [alignments countByEnumeratingWithState:&v42 objects:v50 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

LABEL_21:

          v18 = v38 + 1;
        }

        while (v38 + 1 != v37);
        v37 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v37);
    }

    groupsCopy = v33;
    maxCopy = v31;
    +[IdentifierGroupingUtils createIdentifierGroups:alignmentSpanDict:identifiers:nodeIndex:interpretationGroupCurrentMax:tagSpans:](IdentifierGroupingUtils, "createIdentifierGroups:alignmentSpanDict:identifiers:nodeIndex:interpretationGroupCurrentMax:tagSpans:", v40, v39, v33, [alignmentCopy nodeIndex], v31, v35);

    spansCopy = v32;
  }

  v30 = *MEMORY[0x1E69E9840];
}

+ (BOOL)hasTagNamespace:(id)namespace
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  usoGraph = [namespace usoGraph];
  identifiers = [usoGraph identifiers];

  obj = identifiers;
  v5 = [identifiers countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    v8 = *MEMORY[0x1E69D2470];
    v9 = *MEMORY[0x1E69D2478];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        namespaceA = [v11 namespaceA];
        value = [namespaceA value];
        if ([value isEqualToString:v8])
        {

LABEL_13:
          v17 = 1;
          goto LABEL_14;
        }

        namespaceA2 = [v11 namespaceA];
        value2 = [namespaceA2 value];
        v16 = [value2 isEqualToString:v9];

        if (v16)
        {
          goto LABEL_13;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      v17 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (void)addNormalizedValuesTo:(id)to alignedWith:(id)with from:(id)from
{
  v25 = *MEMORY[0x1E69E9840];
  withCopy = with;
  fromCopy = from;
  nodes = [to nodes];
  v11 = [nodes objectAtIndexedSubscript:{objc_msgSend(withCopy, "nodeIndex")}];

  if ([v11 hasStringPayload])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    spans = [withCopy spans];
    v13 = [spans countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(spans);
          }

          v17 = [self normalizedPayloadsFrom:objc_msgSend(*(*(&v20 + 1) + 8 * v16) to:"startIndex") within:{objc_msgSend(*(*(&v20 + 1) + 8 * v16), "endIndex"), fromCopy}];
          v18 = [v17 mutableCopy];
          [v11 setNormalizedStringPayloads:v18];

          ++v16;
        }

        while (v14 != v16);
        v14 = [spans countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (id)normalizedPayloadsFrom:(int64_t)from to:(int64_t)to within:(id)within
{
  withinCopy = within;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  tokens = [withinCopy tokens];
  v10 = [v8 initWithCapacity:{objc_msgSend(tokens, "count")}];

  tokens2 = [withinCopy tokens];
  v12 = [tokens2 count];

  if (v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      tokens3 = [withinCopy tokens];
      v16 = [tokens3 objectAtIndexedSubscript:v13];

      v14 |= [v16 begin] == from;
      if (v14)
      {
        normalizedValues = [v16 normalizedValues];
        [v10 addObjectsFromArray:normalizedValues];
      }

      v18 = [v16 end];

      if (v18 >= to)
      {
        break;
      }

      ++v13;
      tokens4 = [withinCopy tokens];
      v20 = [tokens4 count];
    }

    while (v20 > v13);
  }

  return v10;
}

+ (void)updateIndexesForSignificantTokensFrom:(unsigned int *)from to:(unsigned int *)to tokenChain:(id)chain entityKey:(id)key
{
  chainCopy = chain;
  keyCopy = key;
  v10 = +[EntityKey currencyName];
  v11 = [v10 isEqualToEntityKey:keyCopy];
  if (from && v11)
  {

    if (!to)
    {
      goto LABEL_25;
    }

    tokens = [chainCopy tokens];
    v13 = [tokens count];

    if (v13)
    {
      v14 = 0;
      v13 = 0;
      v10 = 0;
      v15 = chainCopy;
      do
      {
        tokens2 = [v15 tokens];
        v17 = [tokens2 objectAtIndexedSubscript:v14];

        if (!v10)
        {
          if ([v17 begin] >= *from && objc_msgSend(v17, "isSignificant"))
          {
            v10 = v17;
          }

          else
          {
            v10 = 0;
          }
        }

        v18 = [v17 end];
        v19 = *to;
        v20 = v18 > *to || v10 == 0;
        if (!v20 && [v17 isSignificant])
        {
          v21 = v17;

          v13 = v21;
        }

        if (v18 > v19)
        {
          break;
        }

        ++v14;
        tokens3 = [chainCopy tokens];
        v23 = [tokens3 count];

        v15 = chainCopy;
      }

      while (v14 < v23);
      if (v10 && v13)
      {
        *from = [v10 begin];
        *to = [v13 end];
      }
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_25:
}

+ (id)significantTokenCountFrom:(unsigned int)from to:(unsigned int)to within:(id)within
{
  LODWORD(v6) = from;
  withinCopy = within;
  tokens = [withinCopy tokens];
  v9 = [tokens count];

  if (v9 <= v6 || v6 >= to)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v6 = v6;
    toCopy = to;
    do
    {
      tokens2 = [withinCopy tokens];
      v13 = [tokens2 count];

      if (v6 >= v13)
      {
        break;
      }

      tokens3 = [withinCopy tokens];
      v15 = [tokens3 objectAtIndexedSubscript:v6];
      isSignificant = [v15 isSignificant];

      v10 = (v10 + isSignificant);
      ++v6;
    }

    while (toCopy != v6);
  }

  v17 = objc_alloc_init(MEMORY[0x1E69D1120]);
  [v17 setValue:v10];

  return v17;
}

+ (void)copyASRTimingInfoToUtteranceSpan:(id)span startIndexTokenDict:(id)dict endIndexTokenDict:(id)tokenDict
{
  v23 = *MEMORY[0x1E69E9840];
  spanCopy = span;
  v8 = MEMORY[0x1E696AD98];
  tokenDictCopy = tokenDict;
  dictCopy = dict;
  v11 = [v8 numberWithInt:{objc_msgSend(spanCopy, "startIndex")}];
  v12 = [dictCopy objectForKeyedSubscript:v11];

  if (v12)
  {
    [spanCopy setStartMilliSeconds:{objc_msgSend(v12, "startMilliSeconds")}];
  }

  else
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136315394;
      v20 = "+[CDMPostProcessUtils copyASRTimingInfoToUtteranceSpan:startIndexTokenDict:endIndexTokenDict:]";
      v21 = 1024;
      startIndex = [spanCopy startIndex];
      _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Missing ASR Token for alignment with start index: %d", &v19, 0x12u);
    }
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(spanCopy, "endIndex")}];
  v15 = [tokenDictCopy objectForKeyedSubscript:v14];

  if (v15)
  {
    [spanCopy setEndMilliSeconds:{objc_msgSend(v15, "endMilliSeconds")}];
  }

  else
  {
    v16 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      endIndex = [spanCopy endIndex];
      v19 = 136315394;
      v20 = "+[CDMPostProcessUtils copyASRTimingInfoToUtteranceSpan:startIndexTokenDict:endIndexTokenDict:]";
      v21 = 1024;
      startIndex = endIndex;
      _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Missing ASR Token for alignment with end index: %d", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)copyMentionResolverSpanEntitySpans:(id)spans fromMatchingSpans:(id)matchingSpans toParseGraph:(id)graph
{
  v77 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  matchingSpansCopy = matchingSpans;
  graphCopy = graph;
  nodes = [graphCopy nodes];
  v10 = [nodes count];

  if (v10)
  {
    v60 = 0;
    v50 = graphCopy;
    do
    {
      nodes2 = [graphCopy nodes];
      v12 = [nodes2 objectAtIndexedSubscript:v60];

      v51 = v12;
      usoElementId = [v12 usoElementId];
      if (usoElementId > 1317)
      {
        if (usoElementId == 1318)
        {
          v14 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v72 = "+[CDMPostProcessUtils copyMentionResolverSpanEntitySpans:fromMatchingSpans:toParseGraph:]";
            v15 = v14;
            v16 = "%s Found node of type Common_ListPosition";
LABEL_60:
            _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, v16, buf, 0xCu);
          }

LABEL_18:

          v56 = 0;
          log = 0;
LABEL_19:
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v19 = matchingSpansCopy;
          v20 = [v19 countByEnumeratingWithState:&v67 objects:v76 count:16];
          if (!v20)
          {
            goto LABEL_50;
          }

          v21 = v20;
          v22 = *v68;
          v53 = *v68;
          v54 = v19;
LABEL_21:
          v23 = 0;
          v55 = v21;
          while (1)
          {
            if (*v68 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v67 + 1) + 8 * v23);
            if ([self isInternalMatchingSpan:v24 fromMatcher:7])
            {
              if ([v24 hasUsoGraph] && (!v56 || objc_msgSend(self, "alignmentSubsumesSpan:alignment:", v24, log)))
              {
                break;
              }
            }

LABEL_48:
            if (++v23 == v21)
            {
              v21 = [v19 countByEnumeratingWithState:&v67 objects:v76 count:16];
              if (!v21)
              {
LABEL_50:

                goto LABEL_51;
              }

              goto LABEL_21;
            }
          }

          v57 = v23;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          usoGraph = [v24 usoGraph];
          spans = [usoGraph spans];

          v27 = [spans countByEnumeratingWithState:&v63 objects:v75 count:16];
          if (!v27)
          {
            goto LABEL_47;
          }

          v28 = v27;
          v29 = v24;
          v30 = *v64;
          v61 = *v64;
          v58 = spans;
          while (2)
          {
            v31 = 0;
            v62 = v28;
LABEL_31:
            if (*v64 != v30)
            {
              objc_enumerationMutation(spans);
            }

            v32 = *(*(&v63 + 1) + 8 * v31);
            nodeIndex = [v32 nodeIndex];
            usoGraph2 = [v29 usoGraph];
            LOBYTE(nodeIndex) = [self hasEntityEdgeTo:nodeIndex inGraph:usoGraph2];

            if (nodeIndex)
            {
              v35 = objc_alloc_init(MEMORY[0x1E69D1258]);
              [v32 copyTo:v35];
              [v35 setNodeIndex:v60];
              internalSpanData = [v29 internalSpanData];
              if ([internalSpanData hasMentionResolverSpanData])
              {
                internalSpanData2 = [v29 internalSpanData];
                mentionResolverSpanData = [internalSpanData2 mentionResolverSpanData];
                hasJointScore = [mentionResolverSpanData hasJointScore];

                spans = v58;
                if (hasJointScore)
                {
                  v40 = objc_alloc_init(MEMORY[0x1E69D1118]);
                  internalSpanData3 = [v29 internalSpanData];
                  mentionResolverSpanData2 = [internalSpanData3 mentionResolverSpanData];
                  [mentionResolverSpanData2 jointScore];
                  *&v43 = v43;
                  [v40 setValue:v43];

                  v44 = objc_alloc_init(MEMORY[0x1E69D1188]);
                  [v44 setMatchScore:v40];
                  [v35 setMatchInfo:v44];

                  goto LABEL_42;
                }
              }

              else
              {
              }

              v40 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v72 = "+[CDMPostProcessUtils copyMentionResolverSpanEntitySpans:fromMatchingSpans:toParseGraph:]";
                _os_log_impl(&dword_1DC287000, v40, OS_LOG_TYPE_INFO, "%s [WARN]: No joint model score found in mentionResolverSpanData, copying from identifier", buf, 0xCu);
              }

LABEL_42:
              v30 = v61;
              v28 = v62;

              [v35 setSourceComponent:3];
              v45 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v72 = "+[CDMPostProcessUtils copyMentionResolverSpanEntitySpans:fromMatchingSpans:toParseGraph:]";
                v73 = 2112;
                v74 = v32;
                _os_log_debug_impl(&dword_1DC287000, v45, OS_LOG_TYPE_DEBUG, "%s Found matching UsoEntitySpan from MRR_MATCHER span. Copying over UsoEntitySpan. UsoEntitySpan: %@", buf, 0x16u);
              }

              [spansCopy addObject:v35];
            }

            else
            {
              v35 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v72 = "+[CDMPostProcessUtils copyMentionResolverSpanEntitySpans:fromMatchingSpans:toParseGraph:]";
                v73 = 2112;
                v74 = v32;
                _os_log_debug_impl(&dword_1DC287000, v35, OS_LOG_TYPE_DEBUG, "%s Skipping copy of UsoEntitySpan from MRR_MATCHER span. UsoEntitySpan is not attached to a node with a entity edge. UsoEntitySpan: %@", buf, 0x16u);
              }
            }

            if (v28 == ++v31)
            {
              v28 = [spans countByEnumeratingWithState:&v63 objects:v75 count:16];
              if (!v28)
              {
LABEL_47:

                v22 = v53;
                v19 = v54;
                v21 = v55;
                v23 = v57;
                goto LABEL_48;
              }

              continue;
            }

            goto LABEL_31;
          }
        }

        graphCopy = v50;
        if (usoElementId == 2631)
        {
          v14 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v72 = "+[CDMPostProcessUtils copyMentionResolverSpanEntitySpans:fromMatchingSpans:toParseGraph:]";
            v15 = v14;
            v16 = "%s Found node of type Common_SpatialPosition";
            goto LABEL_60;
          }

          goto LABEL_18;
        }
      }

      else if (usoElementId == 1206)
      {
        v17 = +[CDMUserDefaultsUtils isAttachMDMRSpantoStringPayloadsEnabled];
        log = CDMOSLoggerForCategory(0);
        v18 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
        if (v17)
        {
          if (v18)
          {
            *buf = 136315138;
            v72 = "+[CDMPostProcessUtils copyMentionResolverSpanEntitySpans:fromMatchingSpans:toParseGraph:]";
            _os_log_debug_impl(&dword_1DC287000, log, OS_LOG_TYPE_DEBUG, "%s Found node of type ENTITY_PRIMITIVE_STRING_ENTITY", buf, 0xCu);
          }

          graphCopy = v50;
          log = [self getUtteranceAlignmentForIndex:v50 nodeIndex:v60];
          if (log)
          {
            v56 = 1;
            goto LABEL_19;
          }

          log = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v72 = "+[CDMPostProcessUtils copyMentionResolverSpanEntitySpans:fromMatchingSpans:toParseGraph:]";
            _os_log_debug_impl(&dword_1DC287000, log, OS_LOG_TYPE_DEBUG, "%s Parse alignment for string payload not found. Dont proceed", buf, 0xCu);
          }
        }

        else
        {
          if (v18)
          {
            *buf = 136315138;
            v72 = "+[CDMPostProcessUtils copyMentionResolverSpanEntitySpans:fromMatchingSpans:toParseGraph:]";
            _os_log_debug_impl(&dword_1DC287000, log, OS_LOG_TYPE_DEBUG, "%s MDMR - Found node of type ENTITY_PRIMITIVE_STRING_ENTITY but user defaults off dont proceed", buf, 0xCu);
          }

LABEL_51:
          graphCopy = v50;
        }
      }

      else
      {
        graphCopy = v50;
        if (usoElementId == 1282)
        {
          v14 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v72 = "+[CDMPostProcessUtils copyMentionResolverSpanEntitySpans:fromMatchingSpans:toParseGraph:]";
            v15 = v14;
            v16 = "%s Found node of type Common_ReferenceType";
            goto LABEL_60;
          }

          goto LABEL_18;
        }
      }

      nodes3 = [graphCopy nodes];
      v47 = [nodes3 count];

      ++v60;
    }

    while (v47 > v60);
  }

  v48 = *MEMORY[0x1E69E9840];
}

+ (void)copyMentionResolverSpanIdentifiers:(id)identifiers fromMatchingSpans:(id)spans toParseGraph:(id)graph
{
  v87 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  spansCopy = spans;
  graphCopy = graph;
  nodes = [graphCopy nodes];
  v11 = [nodes count];

  if (v11)
  {
    v12 = 0;
    v60 = graphCopy;
    do
    {
      nodes2 = [graphCopy nodes];
      v67 = v12;
      v14 = [nodes2 objectAtIndexedSubscript:v12];

      v59 = v14;
      usoElementId = [v14 usoElementId];
      if (usoElementId > 1317)
      {
        if (usoElementId == 1318)
        {
          v16 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v82 = "+[CDMPostProcessUtils copyMentionResolverSpanIdentifiers:fromMatchingSpans:toParseGraph:]";
            v17 = v16;
            v18 = "%s Found node of type Common_ListPosition";
LABEL_66:
            _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, v18, buf, 0xCu);
          }

LABEL_18:

          v21 = 0;
          log = 0;
LABEL_19:
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v22 = spansCopy;
          v23 = [v22 countByEnumeratingWithState:&v77 objects:v86 count:16];
          if (!v23)
          {
            goto LABEL_56;
          }

          v24 = v23;
          v68 = 0;
          v25 = *v78;
          v63 = v21;
          v61 = *v78;
          v62 = v22;
LABEL_21:
          v26 = 0;
          v65 = v24;
          while (1)
          {
            if (*v78 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v66 = v26;
            v27 = *(*(&v77 + 1) + 8 * v26);
            if ([self isInternalMatchingSpan:v27 fromMatcher:7])
            {
              if ([v27 hasUsoGraph] && (!v21 || objc_msgSend(self, "alignmentSubsumesSpan:alignment:", v27, log)))
              {
                break;
              }
            }

LABEL_54:
            v26 = v66 + 1;
            if (v66 + 1 == v24)
            {
              v24 = [v22 countByEnumeratingWithState:&v77 objects:v86 count:16];
              if (!v24)
              {
LABEL_56:

                goto LABEL_57;
              }

              goto LABEL_21;
            }
          }

          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          usoGraph = [v27 usoGraph];
          identifiers = [usoGraph identifiers];

          v72 = [identifiers countByEnumeratingWithState:&v73 objects:v85 count:16];
          if (!v72)
          {

            goto LABEL_54;
          }

          v30 = 0;
          v71 = 0;
          v69 = v27;
          v70 = *v74;
          v31 = v67;
          v32 = identifiers;
          while (2)
          {
            v33 = 0;
LABEL_31:
            if (*v74 != v70)
            {
              objc_enumerationMutation(v32);
            }

            v34 = *(*(&v73 + 1) + 8 * v33);
            nodeIndex = [v34 nodeIndex];
            usoGraph2 = [v27 usoGraph];
            LOBYTE(nodeIndex) = [self hasEntityEdgeTo:nodeIndex inGraph:usoGraph2];

            if (nodeIndex)
            {
              v37 = v27;
              v38 = v32;
              v39 = objc_opt_new();
              [v34 copyTo:v39];
              [v39 setNodeIndex:v31];
              internalSpanData = [v37 internalSpanData];
              if ([internalSpanData hasMentionResolverSpanData])
              {
                [v37 internalSpanData];
                selfCopy = self;
                v43 = v42 = identifiersCopy;
                mentionResolverSpanData = [v43 mentionResolverSpanData];
                hasJointScore = [mentionResolverSpanData hasJointScore];

                identifiersCopy = v42;
                self = selfCopy;
                v31 = v67;

                if (hasJointScore)
                {
                  v46 = objc_alloc_init(MEMORY[0x1E69D1110]);
                  internalSpanData2 = [v69 internalSpanData];
                  mentionResolverSpanData2 = [internalSpanData2 mentionResolverSpanData];
                  [mentionResolverSpanData2 jointScore];
                  [v46 setValue:?];

                  [v39 setProbability:v46];
                  goto LABEL_42;
                }
              }

              else
              {
              }

              v46 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v82 = "+[CDMPostProcessUtils copyMentionResolverSpanIdentifiers:fromMatchingSpans:toParseGraph:]";
                _os_log_impl(&dword_1DC287000, v46, OS_LOG_TYPE_INFO, "%s [WARN]: No joint model score found in mentionResolverSpanData, copying from identifier", buf, 0xCu);
              }

LABEL_42:
              v32 = v38;

              [v39 setSourceComponent:3];
              -[NSObject setGroupIndex:](v39, "setGroupIndex:", [v34 groupIndex] + v68);
              groupIndex = [v34 groupIndex];
              v50 = v71;
              if (v71 <= groupIndex)
              {
                v50 = groupIndex;
              }

              v71 = v50;
              v51 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v82 = "+[CDMPostProcessUtils copyMentionResolverSpanIdentifiers:fromMatchingSpans:toParseGraph:]";
                v83 = 2112;
                v84 = v34;
                _os_log_debug_impl(&dword_1DC287000, v51, OS_LOG_TYPE_DEBUG, "%s Found matching identifier from MRR_MATCHER span. Copying over identifier. Identifier: %@", buf, 0x16u);
              }

              [identifiersCopy addObject:v39];
              v30 = 1;
              v27 = v69;
            }

            else
            {
              v39 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v82 = "+[CDMPostProcessUtils copyMentionResolverSpanIdentifiers:fromMatchingSpans:toParseGraph:]";
                v83 = 2112;
                v84 = v34;
                _os_log_debug_impl(&dword_1DC287000, v39, OS_LOG_TYPE_DEBUG, "%s Skipping copy of identifier from MRR_MATCHER span. Identifier is not attached to a node with a entity edge. Identifier: %@", buf, 0x16u);
              }
            }

            if (v72 == ++v33)
            {
              v72 = [v32 countByEnumeratingWithState:&v73 objects:v85 count:16];
              if (!v72)
              {

                if (v30)
                {
                  v52 = v71 + 1;
                }

                else
                {
                  v52 = 0;
                }

                v68 += v52;
                graphCopy = v60;
                v25 = v61;
                v21 = v63;
                v22 = v62;
                v24 = v65;
                goto LABEL_54;
              }

              continue;
            }

            goto LABEL_31;
          }
        }

        if (usoElementId == 2631)
        {
          v16 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v82 = "+[CDMPostProcessUtils copyMentionResolverSpanIdentifiers:fromMatchingSpans:toParseGraph:]";
            v17 = v16;
            v18 = "%s Found node of type Common_SpatialPosition";
            goto LABEL_66;
          }

          goto LABEL_18;
        }
      }

      else
      {
        if (usoElementId == 1206)
        {
          v19 = +[CDMUserDefaultsUtils isAttachMDMRSpantoStringPayloadsEnabled];
          log = CDMOSLoggerForCategory(0);
          v20 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
          if (v19)
          {
            if (v20)
            {
              *buf = 136315138;
              v82 = "+[CDMPostProcessUtils copyMentionResolverSpanIdentifiers:fromMatchingSpans:toParseGraph:]";
              _os_log_debug_impl(&dword_1DC287000, log, OS_LOG_TYPE_DEBUG, "%s Found node of type ENTITY_PRIMITIVE_STRING_ENTITY", buf, 0xCu);
            }

            log = [self getUtteranceAlignmentForIndex:graphCopy nodeIndex:v12];
            if (log)
            {
              v21 = 1;
              goto LABEL_19;
            }

            log = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v82 = "+[CDMPostProcessUtils copyMentionResolverSpanIdentifiers:fromMatchingSpans:toParseGraph:]";
              v55 = log;
              v56 = "%s Parse alignment for string payload not found. Dont proceed";
LABEL_64:
              _os_log_debug_impl(&dword_1DC287000, v55, OS_LOG_TYPE_DEBUG, v56, buf, 0xCu);
            }
          }

          else if (v20)
          {
            *buf = 136315138;
            v82 = "+[CDMPostProcessUtils copyMentionResolverSpanIdentifiers:fromMatchingSpans:toParseGraph:]";
            v55 = log;
            v56 = "%s MDMR - Found node of type ENTITY_PRIMITIVE_STRING_ENTITY but user defaults off dont proceed";
            goto LABEL_64;
          }

LABEL_57:

          goto LABEL_58;
        }

        if (usoElementId == 1282)
        {
          v16 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v82 = "+[CDMPostProcessUtils copyMentionResolverSpanIdentifiers:fromMatchingSpans:toParseGraph:]";
            v17 = v16;
            v18 = "%s Found node of type Common_ReferenceType";
            goto LABEL_66;
          }

          goto LABEL_18;
        }
      }

LABEL_58:

      v12 = v67 + 1;
      nodes3 = [graphCopy nodes];
      v54 = [nodes3 count];
    }

    while (v54 > v67 + 1);
  }

  v57 = *MEMORY[0x1E69E9840];
}

+ (BOOL)hasEntityEdgeTo:(int)to inGraph:(id)graph
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  edges = [graph edges];
  v6 = [edges countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(edges);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 hasToIndex])
        {
          if ([v10 toIndex] == to)
          {
            if ([v10 hasLabel])
            {
              label = [v10 label];
              usoElementId = [label usoElementId];

              if (usoElementId == 1271)
              {
                v13 = 1;
                goto LABEL_14;
              }
            }
          }
        }
      }

      v7 = [edges countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_14:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (void)copySubsumedSpanEntitySpan:(id)span spans:(id)spans parseEntityKey:(id)key utteranceAlignment:(id)alignment tokenChain:(id)chain
{
  v70 = *MEMORY[0x1E69E9840];
  spanCopy = span;
  spansCopy = spans;
  keyCopy = key;
  alignmentCopy = alignment;
  chainCopy = chain;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = spansCopy;
  v41 = [spansCopy countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v41)
  {
    v40 = *v64;
    v13 = 0x1E862B000uLL;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v64 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v50 = *(*(&v63 + 1) + 8 * i);
        usoGraph = [v50 usoGraph];
        v16 = usoGraph;
        if (usoGraph)
        {
          v42 = i;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          alignments = [usoGraph alignments];
          v18 = [alignments countByEnumeratingWithState:&v59 objects:v68 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v60;
            v44 = alignments;
            v45 = v16;
            v43 = *v60;
            do
            {
              v21 = 0;
              v46 = v19;
              do
              {
                if (*v60 != v20)
                {
                  objc_enumerationMutation(alignments);
                }

                v22 = *(*(&v59 + 1) + 8 * v21);
                if ([v22 subsumedBy:alignmentCopy])
                {
                  v48 = v21;
                  v23 = *(v13 + 2504);
                  usoGraph2 = [v50 usoGraph];
                  v25 = [v23 entityKeyFrom:usoGraph2 at:{objc_msgSend(v22, "nodeIndex")}];

                  if ([v25 isEqualToEntityKey:keyCopy])
                  {
                    v47 = v25;
                    v57 = 0u;
                    v58 = 0u;
                    v55 = 0u;
                    v56 = 0u;
                    spans = [v16 spans];
                    v27 = [spans countByEnumeratingWithState:&v55 objects:v67 count:16];
                    if (v27)
                    {
                      v28 = v27;
                      v29 = *v56;
                      do
                      {
                        for (j = 0; j != v28; ++j)
                        {
                          if (*v56 != v29)
                          {
                            objc_enumerationMutation(spans);
                          }

                          v31 = *(*(&v55 + 1) + 8 * j);
                          nodeIndex = [v31 nodeIndex];
                          if (nodeIndex == [v22 nodeIndex])
                          {
                            v33 = objc_alloc_init(MEMORY[0x1E69D1258]);
                            [v31 copyTo:v33];
                            [v33 setNodeIndex:{objc_msgSend(alignmentCopy, "nodeIndex")}];
                            v34 = objc_alloc_init(MEMORY[0x1E69D11B0]);
                            [v34 setAttachmentType:{objc_msgSend(v22, "equalIndexes:", alignmentCopy) ^ 1}];
                            v35 = +[EntityKey userEntity];
                            v36 = [v35 isEqualToEntityKey:keyCopy];

                            if (v36)
                            {
                              properties = [v33 properties];
                              v37 = [self getSignificantTokenCountFrom:objc_msgSend(v50 to:"startTokenIndex") within:{objc_msgSend(v50, "endTokenIndex"), chainCopy}];
                              [properties addObject:v37];
                            }

                            [v33 setPayloadAttachmentInfo:v34];
                            [self stripBugFixPropertyKeySuffix:v33];
                            [spanCopy addObject:v33];
                          }
                        }

                        v28 = [spans countByEnumeratingWithState:&v55 objects:v67 count:16];
                      }

                      while (v28);
                    }

                    v13 = 0x1E862B000;
                    alignments = v44;
                    v16 = v45;
                    v20 = v43;
                    v19 = v46;
                    v25 = v47;
                  }

                  v21 = v48;
                }

                ++v21;
              }

              while (v21 != v19);
              v19 = [alignments countByEnumeratingWithState:&v59 objects:v68 count:16];
            }

            while (v19);
          }

          i = v42;
        }
      }

      v41 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v41);
  }

  v38 = *MEMORY[0x1E69E9840];
}

+ (void)copyAlignedSpanEntitySpanForSameType:(id)type spanIndexDict:(id)dict utteranceAlignment:(id)alignment entityKey:(id)key tokenChain:(id)chain
{
  v85 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dictCopy = dict;
  alignmentCopy = alignment;
  keyCopy = key;
  chainCopy = chain;
  v14 = objc_alloc(MEMORY[0x1E695DF70]);
  spans = [alignmentCopy spans];
  v51 = [v14 initWithCapacity:{2 * objc_msgSend(spans, "count")}];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  spans2 = [alignmentCopy spans];
  v17 = [spans2 countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v74;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v74 != v19)
        {
          objc_enumerationMutation(spans2);
        }

        v21 = *(*(&v73 + 1) + 8 * i);
        *buf = [v21 startIndex];
        endIndex = [v21 endIndex];
        [self updateIndexesForSignificantTokensFrom:buf to:&endIndex tokenChain:chainCopy entityKey:keyCopy];
        v22 = [MEMORY[0x1E696AD98] numberWithInt:*buf];
        [v51 addObject:v22];

        v23 = [MEMORY[0x1E696AD98] numberWithInt:endIndex];
        [v51 addObject:v23];
      }

      v18 = [spans2 countByEnumeratingWithState:&v73 objects:v84 count:16];
    }

    while (v18);
  }

  if (![v51 count])
  {
    v44 = CDMOSLoggerForCategory(0);
    v24 = dictCopy;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v81 = "+[CDMPostProcessUtils copyAlignedSpanEntitySpanForSameType:spanIndexDict:utteranceAlignment:entityKey:tokenChain:]";
      v82 = 2112;
      v83 = alignmentCopy;
      _os_log_debug_impl(&dword_1DC287000, v44, OS_LOG_TYPE_DEBUG, "%s Found an alignment without indexes, ignoring: %@", buf, 0x16u);
    }

    goto LABEL_42;
  }

  [v51 sortUsingSelector:sel_compare_];
  v24 = dictCopy;
  v25 = [dictCopy objectForKeyedSubscript:v51];
  if (!v25)
  {
    v44 = 0;
LABEL_42:
    v43 = v51;
    goto LABEL_43;
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v25;
  v49 = [v25 countByEnumeratingWithState:&v68 objects:v79 count:16];
  if (v49)
  {
    v48 = *v69;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v69 != v48)
        {
          objc_enumerationMutation(obj);
        }

        usoGraph = [*(*(&v68 + 1) + 8 * j) usoGraph];
        v28 = usoGraph;
        if (usoGraph)
        {
          v50 = j;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          alignments = [usoGraph alignments];
          v29 = [alignments countByEnumeratingWithState:&v64 objects:v78 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v65;
            v52 = *v65;
            v53 = v28;
            do
            {
              v32 = 0;
              v54 = v30;
              do
              {
                if (*v65 != v31)
                {
                  objc_enumerationMutation(alignments);
                }

                v33 = *(*(&v64 + 1) + 8 * v32);
                v34 = [self entityKeyFrom:v28 at:{objc_msgSend(v33, "nodeIndex")}];
                if ([v34 isEqualToEntityKey:keyCopy])
                {
                  v56 = v34;
                  v57 = v32;
                  v62 = 0u;
                  v63 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  spans3 = [v28 spans];
                  v36 = [spans3 countByEnumeratingWithState:&v60 objects:v77 count:16];
                  if (v36)
                  {
                    v37 = v36;
                    v38 = *v61;
                    do
                    {
                      for (k = 0; k != v37; ++k)
                      {
                        if (*v61 != v38)
                        {
                          objc_enumerationMutation(spans3);
                        }

                        v40 = *(*(&v60 + 1) + 8 * k);
                        nodeIndex = [v40 nodeIndex];
                        if (nodeIndex == [v33 nodeIndex])
                        {
                          v42 = objc_alloc_init(MEMORY[0x1E69D1258]);
                          [v40 copyTo:v42];
                          [v42 setNodeIndex:{objc_msgSend(alignmentCopy, "nodeIndex")}];
                          [self stripBugFixPropertyKeySuffix:v42];
                          [typeCopy addObject:v42];
                        }
                      }

                      v37 = [spans3 countByEnumeratingWithState:&v60 objects:v77 count:16];
                    }

                    while (v37);
                  }

                  v31 = v52;
                  v28 = v53;
                  v30 = v54;
                  v34 = v56;
                  v32 = v57;
                }

                ++v32;
              }

              while (v32 != v30);
              v30 = [alignments countByEnumeratingWithState:&v64 objects:v78 count:16];
            }

            while (v30);
          }

          j = v50;
        }
      }

      v49 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
    }

    while (v49);
    v24 = dictCopy;
  }

  v43 = v51;
  v44 = obj;
LABEL_43:

  v45 = *MEMORY[0x1E69E9840];
}

+ (void)copyAlignedSpanIdentifierForSameType:(id)type spanIndexDict:(id)dict utteranceAlignment:(id)alignment entityKey:(id)key groupIndexDict:(id)indexDict tokenChain:(id)chain
{
  v103 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dictCopy = dict;
  alignmentCopy = alignment;
  keyCopy = key;
  indexDictCopy = indexDict;
  chainCopy = chain;
  v16 = objc_alloc(MEMORY[0x1E695DF70]);
  spans = [alignmentCopy spans];
  v18 = [v16 initWithCapacity:{2 * objc_msgSend(spans, "count")}];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v75 = alignmentCopy;
  spans2 = [alignmentCopy spans];
  v20 = [spans2 countByEnumeratingWithState:&v91 objects:v102 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v92;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v92 != v22)
        {
          objc_enumerationMutation(spans2);
        }

        v24 = *(*(&v91 + 1) + 8 * i);
        *buf = [v24 startIndex];
        endIndex = [v24 endIndex];
        [self updateIndexesForSignificantTokensFrom:buf to:&endIndex tokenChain:chainCopy entityKey:keyCopy];
        v25 = [MEMORY[0x1E696AD98] numberWithInt:*buf];
        [v18 addObject:v25];

        v26 = [MEMORY[0x1E696AD98] numberWithInt:endIndex];
        [v18 addObject:v26];
      }

      v21 = [spans2 countByEnumeratingWithState:&v91 objects:v102 count:16];
    }

    while (v21);
  }

  if ([v18 count])
  {
    [v18 sortUsingSelector:sel_compare_];
    v27 = [dictCopy objectForKeyedSubscript:v18];
    if (v27)
    {
      v28 = v27;
      v59 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(alignmentCopy, "nodeIndex")}];
      v29 = [indexDictCopy objectForKeyedSubscript:?];
      v58 = v29;
      if (v29)
      {
        v30 = [v29 unsignedIntValue] + 1;
      }

      else
      {
        v30 = 0;
      }

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v31 = v28;
      v32 = [v31 countByEnumeratingWithState:&v86 objects:v97 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v87;
        v68 = keyCopy;
        v64 = v18;
        v65 = chainCopy;
        v62 = *v87;
        v63 = v31;
        do
        {
          v35 = 0;
          v66 = v33;
          do
          {
            if (*v87 != v34)
            {
              objc_enumerationMutation(v31);
            }

            usoGraph = [*(*(&v86 + 1) + 8 * v35) usoGraph];
            v71 = usoGraph;
            if (usoGraph)
            {
              v84 = 0u;
              v85 = 0u;
              v82 = 0u;
              v83 = 0u;
              alignments = [usoGraph alignments];
              v38 = [alignments countByEnumeratingWithState:&v82 objects:v96 count:16];
              if (v38)
              {
                v67 = v35;
                v39 = 0;
                v40 = 0;
                v41 = *v83;
                v42 = v71;
                v43 = alignments;
                v44 = v38;
                v69 = *v83;
                v70 = alignments;
                do
                {
                  v45 = 0;
                  v72 = v44;
                  do
                  {
                    if (*v83 != v41)
                    {
                      objc_enumerationMutation(v43);
                    }

                    v74 = v45;
                    v46 = *(*(&v82 + 1) + 8 * v45);
                    v73 = [self entityKeyFrom:v42 at:{objc_msgSend(v46, "nodeIndex")}];
                    if ([v73 isEqualToEntityKey:keyCopy])
                    {
                      v80 = 0u;
                      v81 = 0u;
                      v78 = 0u;
                      v79 = 0u;
                      identifiers = [v42 identifiers];
                      v48 = [identifiers countByEnumeratingWithState:&v78 objects:v95 count:16];
                      if (v48)
                      {
                        v49 = v48;
                        v50 = *v79;
                        do
                        {
                          for (j = 0; j != v49; ++j)
                          {
                            if (*v79 != v50)
                            {
                              objc_enumerationMutation(identifiers);
                            }

                            v52 = *(*(&v78 + 1) + 8 * j);
                            nodeIndex = [v52 nodeIndex];
                            if (nodeIndex == [v46 nodeIndex])
                            {
                              v54 = objc_opt_new();
                              [v52 copyTo:v54];
                              [v54 setNodeIndex:{objc_msgSend(v75, "nodeIndex")}];
                              [v54 setGroupIndex:{objc_msgSend(v52, "groupIndex") + v30}];
                              [self stripBugFixNamespaceSuffix:v52];
                              groupIndex = [v52 groupIndex];
                              if (v40 <= groupIndex)
                              {
                                v40 = groupIndex;
                              }

                              [typeCopy addObject:v54];

                              v39 = 1;
                            }
                          }

                          v49 = [identifiers countByEnumeratingWithState:&v78 objects:v95 count:16];
                        }

                        while (v49);
                      }

                      keyCopy = v68;
                      v41 = v69;
                      v43 = v70;
                      v42 = v71;
                      v44 = v72;
                    }

                    v45 = v74 + 1;
                  }

                  while (v74 + 1 != v44);
                  v44 = [v43 countByEnumeratingWithState:&v82 objects:v96 count:16];
                }

                while (v44);

                if (v39)
                {
                  v56 = v40 + 1;
                }

                else
                {
                  v56 = 0;
                }

                v30 += v56;
                v18 = v64;
                chainCopy = v65;
                v34 = v62;
                v31 = v63;
                v33 = v66;
                v35 = v67;
              }

              else
              {
              }
            }

            ++v35;
          }

          while (v35 != v33);
          v33 = [v31 countByEnumeratingWithState:&v86 objects:v97 count:16];
        }

        while (v33);
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v99 = "+[CDMPostProcessUtils copyAlignedSpanIdentifierForSameType:spanIndexDict:utteranceAlignment:entityKey:groupIndexDict:tokenChain:]";
      v100 = 2112;
      v101 = v75;
      _os_log_debug_impl(&dword_1DC287000, v31, OS_LOG_TYPE_DEBUG, "%s Found an alignment without indexes, ignoring: %@", buf, 0x16u);
    }
  }

  v57 = *MEMORY[0x1E69E9840];
}

+ (void)stripBugFixPropertyKeySuffix:(id)suffix
{
  v24 = *MEMORY[0x1E69E9840];
  suffixCopy = suffix;
  properties = [suffixCopy properties];

  if (properties)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = suffixCopy;
    properties2 = [suffixCopy properties];
    v7 = [properties2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(properties2);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [v11 key];
          v13 = [v12 hasSuffix:@"BugFix"];

          if (v13)
          {
            v14 = [v11 key];
            v15 = [v11 key];
            v16 = [v14 substringToIndex:{objc_msgSend(v15, "length") - objc_msgSend(@"BugFix", "length")}];
            [v11 setKey:v16];
          }

          [v5 addObject:v11];
        }

        v8 = [properties2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    suffixCopy = v18;
    [v18 setProperties:v5];
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)stripBugFixNamespaceSuffix:(id)suffix
{
  suffixCopy = suffix;
  namespaceA = [suffixCopy namespaceA];
  value = [namespaceA value];
  v5 = [value hasSuffix:@"BugFix"];

  if (v5)
  {
    namespaceA2 = [suffixCopy namespaceA];
    value2 = [namespaceA2 value];
    namespaceA3 = [suffixCopy namespaceA];
    value3 = [namespaceA3 value];
    v10 = [value2 substringToIndex:{objc_msgSend(value3, "length") - objc_msgSend(@"BugFix", "length")}];
    namespaceA4 = [suffixCopy namespaceA];
    [namespaceA4 setValue:v10];
  }
}

+ (id)spanIndexDict:(id)dict tokenChain:(id)chain
{
  v68 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  chainCopy = chain;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = dictCopy;
  v8 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v58;
    *&v9 = 136315394;
    v36 = v9;
    v38 = *v58;
    do
    {
      v12 = 0;
      v39 = v10;
      do
      {
        if (*v58 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v57 + 1) + 8 * v12);
        usoGraph = [v42 usoGraph];
        v14 = usoGraph;
        if (usoGraph)
        {
          identifiers = [usoGraph identifiers];
          v16 = [identifiers count];

          if (v16)
          {
            v41 = v12;
            v17 = objc_alloc(MEMORY[0x1E695DF70]);
            alignments = [v14 alignments];
            v19 = [v17 initWithCapacity:{2 * objc_msgSend(alignments, "count")}];
            v20 = v14;
            v21 = v19;

            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v45 = v20;
            alignments2 = [v20 alignments];
            v46 = [alignments2 countByEnumeratingWithState:&v53 objects:v66 count:16];
            if (v46)
            {
              v44 = *v54;
              do
              {
                v22 = 0;
                do
                {
                  if (*v54 != v44)
                  {
                    objc_enumerationMutation(alignments2);
                  }

                  v47 = v22;
                  v23 = *(*(&v53 + 1) + 8 * v22);
                  v24 = [self entityKeyFrom:v45 at:{objc_msgSend(v23, "nodeIndex")}];
                  v49 = 0u;
                  v50 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  spans = [v23 spans];
                  v26 = [spans countByEnumeratingWithState:&v49 objects:v65 count:16];
                  if (v26)
                  {
                    v27 = v26;
                    v28 = *v50;
                    do
                    {
                      for (i = 0; i != v27; ++i)
                      {
                        if (*v50 != v28)
                        {
                          objc_enumerationMutation(spans);
                        }

                        v30 = *(*(&v49 + 1) + 8 * i);
                        *buf = [v30 startIndex];
                        endIndex = [v30 endIndex];
                        [self updateIndexesForSignificantTokensFrom:buf to:&endIndex tokenChain:chainCopy entityKey:v24];
                        v31 = [MEMORY[0x1E696AD98] numberWithInt:*buf];
                        [v21 addObject:v31];

                        v32 = [MEMORY[0x1E696AD98] numberWithInt:endIndex];
                        [v21 addObject:v32];
                      }

                      v27 = [spans countByEnumeratingWithState:&v49 objects:v65 count:16];
                    }

                    while (v27);
                  }

                  v22 = v47 + 1;
                }

                while (v47 + 1 != v46);
                v46 = [alignments2 countByEnumeratingWithState:&v53 objects:v66 count:16];
              }

              while (v46);
            }

            if ([v21 count])
            {
              [v21 sortUsingSelector:sel_compare_];
              array = [dictionary objectForKeyedSubscript:v21];
              v11 = v38;
              v10 = v39;
              v12 = v41;
              if (!array)
              {
                array = [MEMORY[0x1E695DF70] array];
                [dictionary setObject:array forKeyedSubscript:v21];
              }

              [array addObject:v42];
            }

            else
            {
              array = CDMOSLoggerForCategory(0);
              v11 = v38;
              v10 = v39;
              v12 = v41;
              if (os_log_type_enabled(array, OS_LOG_TYPE_DEBUG))
              {
                *buf = v36;
                v62 = "+[CDMPostProcessUtils spanIndexDict:tokenChain:]";
                v63 = 2112;
                v64 = v42;
                _os_log_debug_impl(&dword_1DC287000, array, OS_LOG_TYPE_DEBUG, "%s Found a MatchingSpan without an utterance span alignment: %@", buf, 0x16u);
              }
            }

            v14 = v45;
          }
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v10);
  }

  v34 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (id)getGroupIndexDict:(id)dict
{
  v23 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = dictCopy;
  identifiers = [dictCopy identifiers];
  v6 = [identifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(identifiers);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (([v10 hasGroupIndex] & 1) == 0)
        {
          [v10 setGroupIndex:0];
        }

        v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(v10, "nodeIndex")}];
        v12 = [v4 objectForKeyedSubscript:v11];
        if (!v12 || (v13 = [v10 groupIndex], v13 > objc_msgSend(v12, "unsignedIntValue")))
        {
          v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(v10, "groupIndex")}];
          [v4 setObject:v14 forKeyedSubscript:v11];
        }
      }

      v7 = [identifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)usoGraphs:(id)graphs
{
  v34 = *MEMORY[0x1E69E9840];
  graphsCopy = graphs;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(graphsCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = graphsCopy;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v23 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        userDialogActs = [v8 userDialogActs];
        v10 = [userDialogActs countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (!v10)
        {
          v12 = 0;
          goto LABEL_35;
        }

        v11 = v10;
        v12 = 0;
        v13 = *v25;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(userDialogActs);
            }

            v15 = *(*(&v24 + 1) + 8 * j);
            if ([v15 hasUserStatedTask])
            {
              userStatedTask = [v15 userStatedTask];
              task = [userStatedTask task];
            }

            else
            {
              if ([v15 hasAccepted])
              {
                accepted = [v15 accepted];
              }

              else if ([v15 hasRejected])
              {
                accepted = [v15 rejected];
              }

              else if ([v15 hasAcknowledged])
              {
                accepted = [v15 acknowledged];
              }

              else if ([v15 hasCancelled])
              {
                accepted = [v15 cancelled];
              }

              else if ([v15 hasWantedToPause])
              {
                accepted = [v15 wantedToPause];
              }

              else if ([v15 hasWantedToProceed])
              {
                accepted = [v15 wantedToProceed];
              }

              else
              {
                if (![v15 hasWantedToRepeat])
                {
                  goto LABEL_29;
                }

                accepted = [v15 wantedToRepeat];
              }

              userStatedTask = accepted;
              task = [accepted reference];
            }

            v19 = task;

            v12 = v19;
LABEL_29:
            if (v12)
            {
              [v4 addObject:v12];
            }
          }

          v11 = [userDialogActs countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v11);
LABEL_35:
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)runFeatureStore:(id)store nluResponse:(id)response snlcRequest:(id)request snlcResponse:(id)snlcResponse pscRequest:(id)pscRequest pscResponse:(id)pscResponse spanProtoResponse:(id)protoResponse tokenProtoResponse:(id)self0 mdRequest:(id)self1 mdResponse:(id)self2 mrRequest:(id)self3 mrResponse:(id)self4 nLv4Request:(id)self5 nLv4Response:(id)self6
{
  v76 = *MEMORY[0x1E69E9840];
  lv4ResponseCopy = lv4Response;
  lv4RequestCopy = lv4Request;
  mrResponseCopy = mrResponse;
  mrRequestCopy = mrRequest;
  mdResponseCopy = mdResponse;
  mdRequestCopy = mdRequest;
  tokenProtoResponseCopy = tokenProtoResponse;
  protoResponseCopy = protoResponse;
  pscResponseCopy = pscResponse;
  pscRequestCopy = pscRequest;
  snlcResponseCopy = snlcResponse;
  requestCopy = request;
  responseCopy = response;
  storeCopy = store;
  v26 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v75 = "+[CDMPostProcessUtils runFeatureStore:nluResponse:snlcRequest:snlcResponse:pscRequest:pscResponse:spanProtoResponse:tokenProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:nLv4Request:nLv4Response:]";
    _os_log_debug_impl(&dword_1DC287000, v26, OS_LOG_TYPE_DEBUG, "%s FeatureStore Insertion", buf, 0xCu);
  }

  [CDMFeatureStoreUtils insertRequestToFeatureStoreAsJson:storeCopy];
  [CDMFeatureStoreUtils insertResponseToFeatureStoreAsJson:responseCopy];

  parserRequest = [requestCopy parserRequest];

  requestId = [storeCopy requestId];
  v29 = [requestId idA];
  [CDMFeatureStoreUtils insertSNLCRequestToFeatureStore:parserRequest interactionId:v29];

  snlcResponse = [snlcResponseCopy snlcResponse];

  requestId2 = [storeCopy requestId];
  v32 = [requestId2 idA];
  [CDMFeatureStoreUtils insertSNLCResponseToFeatureStore:snlcResponse interactionId:v32];

  parserRequest2 = [pscRequestCopy parserRequest];

  requestId3 = [storeCopy requestId];
  v35 = [requestId3 idA];
  [CDMFeatureStoreUtils insertPSCRequestToFeatureStore:parserRequest2 interactionId:v35];

  pscResponse = [pscResponseCopy pscResponse];

  requestId4 = [storeCopy requestId];
  v38 = [requestId4 idA];
  [CDMFeatureStoreUtils insertPSCResponseToFeatureStore:pscResponse interactionId:v38];

  spanMatchResponse = [protoResponseCopy spanMatchResponse];

  requestId5 = [storeCopy requestId];
  v41 = [requestId5 idA];
  [CDMFeatureStoreUtils insertSpanMatchResponseToFeatureStore:spanMatchResponse interactionId:v41];

  response = [tokenProtoResponseCopy response];

  requestId6 = [storeCopy requestId];
  v44 = [requestId6 idA];
  [CDMFeatureStoreUtils insertTokenizerResponseToFeatureStore:response interactionId:v44];

  mdRequest = [mdRequestCopy mdRequest];

  requestId7 = [storeCopy requestId];
  v47 = [requestId7 idA];
  [CDMFeatureStoreUtils insertMDRequestToFeatureStore:mdRequest interactionId:v47];

  response2 = [mdResponseCopy response];

  requestId8 = [storeCopy requestId];
  v50 = [requestId8 idA];
  [CDMFeatureStoreUtils insertMDResponseToFeatureStore:response2 interactionId:v50];

  mrRequest = [mrRequestCopy mrRequest];

  requestId9 = [storeCopy requestId];
  v53 = [requestId9 idA];
  [CDMFeatureStoreUtils insertMRRequestToFeatureStore:mrRequest interactionId:v53];

  response3 = [mrResponseCopy response];

  requestId10 = [storeCopy requestId];
  v56 = [requestId10 idA];
  [CDMFeatureStoreUtils insertMRResponseToFeatureStore:response3 interactionId:v56];

  parserRequest3 = [lv4RequestCopy parserRequest];

  requestId11 = [storeCopy requestId];
  v59 = [requestId11 idA];
  [CDMFeatureStoreUtils insertNLv4ParserRequestToFeatureStore:parserRequest3 interactionId:v59];

  parserResponse = [lv4ResponseCopy parserResponse];

  requestId12 = [storeCopy requestId];

  v62 = [requestId12 idA];
  [CDMFeatureStoreUtils insertNLv4ParserResponseToFeatureStore:parserResponse interactionId:v62];

  v63 = *MEMORY[0x1E69E9840];
}

+ (id)selectParsesFromUserParsesUaaP:(id)p userParsesShortcut:(id)shortcut userParsesReplaceOverrides:(id)overrides userParsesAppendOverrides:(id)appendOverrides userParsesSNLC:(id)c userParsesNLv4:(id)lv4 userParsesCATI:(id)i userParsesPSC:(id)self0 userParsesAutoShortcuts:(id)self1 userParsesSSU:(id)self2 addDebugInfo:(id)self3
{
  v39 = *MEMORY[0x1E69E9840];
  pCopy = p;
  shortcutCopy = shortcut;
  overridesCopy = overrides;
  appendOverridesCopy = appendOverrides;
  cCopy = c;
  lv4Copy = lv4;
  iCopy = i;
  sCCopy = sC;
  shortcutsCopy = shortcuts;
  uCopy = u;
  infoCopy = info;
  if (+[CDMFeatureFlags isUaaPEnabled](CDMFeatureFlags, "isUaaPEnabled") && +[CDMFeatureFlags isUaaPPreferred](CDMFeatureFlags, "isUaaPPreferred") && [pCopy count])
  {
    v26 = cCopy;
    v27 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v38 = "+[CDMPostProcessUtils selectParsesFromUserParsesUaaP:userParsesShortcut:userParsesReplaceOverrides:userParsesAppendOverrides:userParsesSNLC:userParsesNLv4:userParsesCATI:userParsesPSC:userParsesAutoShortcuts:userParsesSSU:addDebugInfo:]";
      _os_log_debug_impl(&dword_1DC287000, v27, OS_LOG_TYPE_DEBUG, "%s UaaP parses preferred, all other parses will be ignored", buf, 0xCu);
    }

    v28 = pCopy;
    v29 = pCopy;
  }

  else
  {
    if ([shortcutCopy count])
    {
      v26 = cCopy;
      v30 = [CDMPostProcessUtils getPostProcessUserParses:shortcutCopy];
      v28 = pCopy;
      goto LABEL_14;
    }

    v28 = pCopy;
    if (![overridesCopy count])
    {
      v26 = cCopy;
      v31 = [CDMPostProcessUtils getPostProcessUserParses:cCopy parsesNLv4:lv4Copy parsesCATI:iCopy parsesUaaP:pCopy parsesPSC:sCCopy parsesAutoShortcuts:shortcutsCopy parsesAppendOverrides:appendOverridesCopy parsesSSU:uCopy addDebugInfo:infoCopy];
      goto LABEL_13;
    }

    v26 = cCopy;
    v29 = overridesCopy;
  }

  v31 = [CDMPostProcessUtils getPostProcessUserParses:v29];
LABEL_13:
  v30 = v31;
LABEL_14:

  v32 = *MEMORY[0x1E69E9840];

  return v30;
}

+ (id)runPostProcess:(id)process snlcRequest:(id)request snlcResponse:(id)response nLv4Request:(id)lv4Request nLv4Response:(id)lv4Response uaapNLProtoResponse:(id)protoResponse catiProtoResponse:(id)catiProtoResponse pscRequest:(id)self0 pscResponse:(id)self1 lvcResponse:(id)self2 overridesProtoResponse:(id)self3 mdRequest:(id)self4 mdResponse:(id)self5 mrRequest:(id)self6 mrResponse:(id)self7 spanProtoResponse:(id)self8 rdResponse:(id)self9 tokenProtoResponse:(id)tokenProtoResponse ssuResponse:(id)ssuResponse ccqrResponse:(id)ccqrResponse correctionOutcome:(id)outcome nluRequest:(id)nluRequest graphInput:(id)input debugText:(id)text
{
  v154 = *MEMORY[0x1E69E9840];
  processCopy = process;
  responseCopy = response;
  lv4ResponseCopy = lv4Response;
  protoResponseCopy = protoResponse;
  catiProtoResponseCopy = catiProtoResponse;
  pscResponseCopy = pscResponse;
  lvcResponseCopy = lvcResponse;
  overridesProtoResponseCopy = overridesProtoResponse;
  mrResponseCopy = mrResponse;
  spanProtoResponseCopy = spanProtoResponse;
  rdResponseCopy = rdResponse;
  tokenProtoResponseCopy = tokenProtoResponse;
  ssuResponseCopy = ssuResponse;
  ccqrResponseCopy = ccqrResponse;
  outcomeCopy = outcome;
  nluRequestCopy = nluRequest;
  textCopy = text;
  v37 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    _os_log_debug_impl(&dword_1DC287000, v37, OS_LOG_TYPE_DEBUG, "%s Final post process step", buf, 0xCu);
  }

  v117 = lv4ResponseCopy;
  v118 = responseCopy;
  if (+[CDMLogging debugEnabled])
  {
    data = [nluRequestCopy data];
    v39 = [data base64EncodedDataWithOptions:1];

    v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v39 encoding:4];
    v41 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
      v150 = 2112;
      v151 = @"cdmio";
      v152 = 2112;
      v153 = v40;
      _os_log_debug_impl(&dword_1DC287000, v41, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nSIRINLUEXTERNALCDMNluRequest base64:\n%@", buf, 0x20u);
    }

    lv4ResponseCopy = v117;
    responseCopy = v118;
  }

  if (processCopy)
  {
    voiceCommandsUserParses = [processCopy voiceCommandsUserParses];
    autoShortcutParses = [processCopy autoShortcutParses];
    if (responseCopy)
    {
      goto LABEL_9;
    }

LABEL_12:
    snlcParses = MEMORY[0x1E695E0F0];
    if (lv4ResponseCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  autoShortcutParses = MEMORY[0x1E695E0F0];
  voiceCommandsUserParses = MEMORY[0x1E695E0F0];
  if (!responseCopy)
  {
    goto LABEL_12;
  }

LABEL_9:
  snlcParses = [responseCopy snlcParses];
  if (lv4ResponseCopy)
  {
LABEL_10:
    nluResponse = [lv4ResponseCopy nluResponse];
    parses = [nluResponse parses];

    goto LABEL_14;
  }

LABEL_13:
  parses = MEMORY[0x1E695E0F0];
LABEL_14:
  if (protoResponseCopy)
  {
    nluResponse2 = [protoResponseCopy nluResponse];
    parses2 = [nluResponse2 parses];

    if (catiProtoResponseCopy)
    {
      goto LABEL_16;
    }
  }

  else
  {
    parses2 = MEMORY[0x1E695E0F0];
    if (catiProtoResponseCopy)
    {
LABEL_16:
      response = [catiProtoResponseCopy response];
      hypotheses = [response hypotheses];

      if (pscResponseCopy)
      {
        goto LABEL_17;
      }

LABEL_21:
      pscParses = MEMORY[0x1E695E0F0];
      if (overridesProtoResponseCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  hypotheses = MEMORY[0x1E695E0F0];
  if (!pscResponseCopy)
  {
    goto LABEL_21;
  }

LABEL_17:
  pscParses = [pscResponseCopy pscParses];
  if (overridesProtoResponseCopy)
  {
LABEL_18:
    parsesForReplacement = [overridesProtoResponseCopy parsesForReplacement];
    parsesForAppending = [overridesProtoResponseCopy parsesForAppending];
    goto LABEL_23;
  }

LABEL_22:
  parsesForAppending = MEMORY[0x1E695E0F0];
  parsesForReplacement = MEMORY[0x1E695E0F0];
LABEL_23:
  v113 = ssuResponseCopy;
  if (ssuResponseCopy)
  {
    ssuResponse = [ssuResponseCopy ssuResponse];
    hypotheses2 = [ssuResponse hypotheses];
  }

  else
  {
    hypotheses2 = MEMORY[0x1E695E0F0];
  }

  v116 = catiProtoResponseCopy;
  v110 = hypotheses2;
  v111 = parses;
  v112 = snlcParses;
  v49 = [CDMPostProcessUtils selectParsesFromUserParsesUaaP:parses2 userParsesShortcut:voiceCommandsUserParses userParsesReplaceOverrides:parsesForReplacement userParsesAppendOverrides:parsesForAppending userParsesSNLC:snlcParses userParsesNLv4:parses userParsesCATI:hypotheses userParsesPSC:pscParses userParsesAutoShortcuts:autoShortcutParses userParsesSSU:hypotheses2 addDebugInfo:textCopy];
  v50 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    _os_log_debug_impl(&dword_1DC287000, v50, OS_LOG_TYPE_DEBUG, "%s Convert SiriNLUTypes internal spans to external spans", buf, 0xCu);
  }

  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  response2 = [mrResponseCopy response];
  mentions = [response2 mentions];
  v54 = [CDMPostProcessUtils filterAndConvertInternalMatchingSpans:mentions];
  [v51 addObjectsFromArray:v54];

  matchingSpansForNL = [spanProtoResponseCopy matchingSpansForNL];
  v56 = [CDMPostProcessUtils filterAndConvertInternalMatchingSpans:matchingSpansForNL];
  [v51 addObjectsFromArray:v56];

  matchingSpansForExternalParsers = [spanProtoResponseCopy matchingSpansForExternalParsers];
  v58 = [CDMPostProcessUtils filterAndConvertInternalMatchingSpans:matchingSpansForExternalParsers];
  [v51 addObjectsFromArray:v58];

  v59 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    _os_log_debug_impl(&dword_1DC287000, v59, OS_LOG_TYPE_DEBUG, "%s Annotate DelegatedUserDialogActs with external spans", buf, 0xCu);
  }

  response3 = [mrResponseCopy response];
  rewrittenUtterance = [response3 rewrittenUtterance];
  [CDMPostProcessUtils annotateDelegatedUDAParses:v49 matchingSpans:v51 mrRewrittenUtterance:rewrittenUtterance];

  v62 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    _os_log_debug_impl(&dword_1DC287000, v62, OS_LOG_TYPE_DEBUG, "%s Annotate all UserParse with correction outcome", buf, 0xCu);
  }

  v63 = [CDMPostProcessUtils getCorrectionOutcomeFromUserParses:v49 ccqrCorrectionOutcome:outcomeCopy];
  [CDMPostProcessUtils annotateUserParses:v49 correctionOutcome:v63];
  if (+[CDMFeatureFlags isAmbiguityRefactorEnabled])
  {
    v64 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
      _os_log_debug_impl(&dword_1DC287000, v64, OS_LOG_TYPE_DEBUG, "%s Remove the probability from each parse", buf, 0xCu);
    }

    [CDMPostProcessUtils removeProbabilityFromUserParses:v49];
  }

  v119 = v49;
  v65 = v63;
  v136 = mrResponseCopy;
  v114 = overridesProtoResponseCopy;
  v115 = pscResponseCopy;
  v66 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    _os_log_debug_impl(&dword_1DC287000, v66, OS_LOG_TYPE_DEBUG, "%s Create NLU Response", buf, 0xCu);
  }

  v67 = objc_alloc_init(MEMORY[0x1E69D1158]);
  requestId = [nluRequestCopy requestId];
  [v67 setRequestId:requestId];

  v69 = [v119 mutableCopy];
  [v67 setParses:v69];

  v70 = [CDMServiceGraphUtil buildRepetitionResult:rdResponseCopy];
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  parses3 = [v67 parses];
  v72 = [parses3 countByEnumeratingWithState:&v142 objects:v147 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v143;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v143 != v74)
        {
          objc_enumerationMutation(parses3);
        }

        [*(*(&v142 + 1) + 8 * i) setRepetitionResult:v70];
      }

      v73 = [parses3 countByEnumeratingWithState:&v142 objects:v147 count:16];
    }

    while (v73);
  }

  v76 = [MEMORY[0x1E695DF70] arrayWithObject:v70];
  [v67 setRepetitionResults:v76];

  if ([CDMServiceGraphUtil debugInfoEnabled:nluRequestCopy])
  {
    [(__CFString *)textCopy appendString:@"\n\n*** ✅ FOR DEBUGGING (end) ***"];
    [v67 setDebugText:textCopy];
    v77 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
      v150 = 2112;
      v151 = textCopy;
      _os_log_debug_impl(&dword_1DC287000, v77, OS_LOG_TYPE_DEBUG, "%s Debug info %@", buf, 0x16u);
    }
  }

  matchingSpansForNL2 = [spanProtoResponseCopy matchingSpansForNL];
  v79 = [matchingSpansForNL2 mutableCopy];

  response4 = [v136 response];
  mentions2 = [response4 mentions];
  v82 = [mentions2 count];

  if (v82)
  {
    v83 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      response5 = [v136 response];
      *buf = 136315394;
      v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
      v150 = 2112;
      v151 = response5;
      _os_log_debug_impl(&dword_1DC287000, v83, OS_LOG_TYPE_DEBUG, "%s Found mention resolver spans, MR response: %@", buf, 0x16u);
    }

    response6 = [v136 response];
    mentions3 = [response6 mentions];
    [v79 addObjectsFromArray:mentions3];
  }

  response7 = [tokenProtoResponseCopy response];
  tokenChain = [response7 tokenChain];
  [CDMPostProcessUtils annotateNLUResponse:v67 nluRequest:nluRequestCopy matchingSpans:v79 tokenChain:tokenChain];

  languageVariantResult = [lvcResponseCopy languageVariantResult];
  [v67 setLanguageVariantResult:languageVariantResult];

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  parses4 = [v67 parses];
  v90 = [parses4 countByEnumeratingWithState:&v138 objects:v146 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v139;
    do
    {
      for (j = 0; j != v91; ++j)
      {
        if (*v139 != v92)
        {
          objc_enumerationMutation(parses4);
        }

        [self mapVocGenericBundleIdsToPlatformBundleIdsForParse:*(*(&v138 + 1) + 8 * j)];
      }

      v91 = [parses4 countByEnumeratingWithState:&v138 objects:v146 count:16];
    }

    while (v91);
  }

  v94 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    _os_log_debug_impl(&dword_1DC287000, v94, OS_LOG_TYPE_DEBUG, "%s Annotate NLUResponse with external spans and rewrite message", buf, 0xCu);
  }

  rewriteMsg = [ccqrResponseCopy rewriteMsg];
  if (!rewriteMsg)
  {
    v96 = objc_opt_class();
    response8 = [v136 response];
    rewrittenUtterance2 = [response8 rewrittenUtterance];
    rewriteMsg = [v96 rewriteMessageFromMatchingSpans:v51 mrRewrittenUtterance:rewrittenUtterance2];
  }

  v99 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    v150 = 2112;
    v151 = rewriteMsg;
    _os_log_debug_impl(&dword_1DC287000, v99, OS_LOG_TYPE_DEBUG, "%s Rewrite message: %@", buf, 0x16u);
  }

  v100 = [CDMPostProcessUtils supplementaryOutputFromMatchingSpans:v51 rewriteMessage:rewriteMsg correctionOutcome:v65];
  [v67 setSupplementaryOutput:v100];

  v101 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
  {
    supplementaryOutput = [v67 supplementaryOutput];
    *buf = 136315394;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    v150 = 2112;
    v151 = supplementaryOutput;
    _os_log_debug_impl(&dword_1DC287000, v101, OS_LOG_TYPE_DEBUG, "%s NLUResponse supplementaryOutput: %@", buf, 0x16u);
  }

  v102 = [CDMAssistantNLUResponse alloc];
  requestId2 = [v67 requestId];
  v104 = [requestId2 idA];
  v105 = [(CDMAssistantNLUResponse *)v102 initWithNLUResponse:v67 requestId:v104];

  v106 = *MEMORY[0x1E69E9840];

  return v105;
}

@end