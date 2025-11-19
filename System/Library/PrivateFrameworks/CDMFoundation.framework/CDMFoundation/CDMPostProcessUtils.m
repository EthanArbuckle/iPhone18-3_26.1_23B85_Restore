@interface CDMPostProcessUtils
+ (BOOL)alignmentSubsumesSpan:(id)a3 alignment:(id)a4;
+ (BOOL)hasEntityEdgeTo:(int)a3 inGraph:(id)a4;
+ (BOOL)hasTagNamespace:(id)a3;
+ (id)entityKeyFrom:(id)a3 at:(unint64_t)a4;
+ (id)filterAndConvertInternalMatchingSpan:(id)a3;
+ (id)filterAndConvertInternalMatchingSpans:(id)a3;
+ (id)getAlignedEntitySpanSpans:(id)a3;
+ (id)getAlignedIdentifierSpans:(id)a3;
+ (id)getCorrectionOutcomeFromUserParses:(id)a3 ccqrCorrectionOutcome:(id)a4;
+ (id)getCroppedUserParses:(id)a3;
+ (id)getFederatedParses:(id)a3 parsesNLv4:(id)a4 parsesCATI:(id)a5 parsesUaaP:(id)a6 parsesPSC:(id)a7 parsesAutoShortcuts:(id)a8 parsesAppendOverrides:(id)a9 parsesSSU:(id)a10 addDebugInfo:(id)a11;
+ (id)getGroupIndexDict:(id)a3;
+ (id)getPostProcessUserParses:(id)a3;
+ (id)getPostProcessUserParses:(id)a3 parsesNLv4:(id)a4 parsesCATI:(id)a5 addDebugInfo:(id)a6;
+ (id)getPostProcessUserParses:(id)a3 parsesNLv4:(id)a4 parsesCATI:(id)a5 parsesUaaP:(id)a6 addDebugInfo:(id)a7;
+ (id)getPostProcessUserParses:(id)a3 parsesNLv4:(id)a4 parsesCATI:(id)a5 parsesUaaP:(id)a6 parsesPSC:(id)a7 parsesAutoShortcuts:(id)a8 parsesAppendOverrides:(id)a9 parsesSSU:(id)a10 addDebugInfo:(id)a11;
+ (id)getUtteranceAlignmentForIndex:(id)a3 nodeIndex:(int)a4;
+ (id)normalizedPayloadsFrom:(int64_t)a3 to:(int64_t)a4 within:(id)a5;
+ (id)rewriteMessageFromMatchingSpans:(id)a3 mrRewrittenUtterance:(id)a4;
+ (id)runPostProcess:(id)a3 snlcRequest:(id)a4 snlcResponse:(id)a5 nLv4Request:(id)a6 nLv4Response:(id)a7 uaapNLProtoResponse:(id)a8 catiProtoResponse:(id)a9 pscRequest:(id)a10 pscResponse:(id)a11 lvcResponse:(id)a12 overridesProtoResponse:(id)a13 mdRequest:(id)a14 mdResponse:(id)a15 mrRequest:(id)a16 mrResponse:(id)a17 spanProtoResponse:(id)a18 rdResponse:(id)a19 tokenProtoResponse:(id)a20 ssuResponse:(id)a21 ccqrResponse:(id)a22 correctionOutcome:(id)a23 nluRequest:(id)a24 graphInput:(id)a25 debugText:(id)a26;
+ (id)selectParsesFromUserParsesUaaP:(id)a3 userParsesShortcut:(id)a4 userParsesReplaceOverrides:(id)a5 userParsesAppendOverrides:(id)a6 userParsesSNLC:(id)a7 userParsesNLv4:(id)a8 userParsesCATI:(id)a9 userParsesPSC:(id)a10 userParsesAutoShortcuts:(id)a11 userParsesSSU:(id)a12 addDebugInfo:(id)a13;
+ (id)significantTokenCountFrom:(unsigned int)a3 to:(unsigned int)a4 within:(id)a5;
+ (id)spanIndexDict:(id)a3 tokenChain:(id)a4;
+ (id)supplementaryOutputFromMatchingSpans:(id)a3 rewriteMessage:(id)a4 correctionOutcome:(id)a5;
+ (id)usoGraphs:(id)a3;
+ (unsigned)isExternalMatchingSpan:(id)a3 fromMatcher:(int)a4;
+ (unsigned)isInternalMatchingSpan:(id)a3 fromMatcher:(int)a4;
+ (void)addNormalizedValuesTo:(id)a3 alignedWith:(id)a4 from:(id)a5;
+ (void)annotateDUDAWithMRRRewrittenUtterance:(id)a3 matchingSpans:(id)a4 userDialogAct:(id)a5;
+ (void)annotateDelegatedUDAParses:(id)a3 matchingSpans:(id)a4 mrRewrittenUtterance:(id)a5;
+ (void)annotateNLUResponse:(id)a3 nluRequest:(id)a4 matchingSpans:(id)a5 tokenChain:(id)a6;
+ (void)annotateParses:(id)a3 tokenChain:(id)a4 matchingSpans:(id)a5 asrHypothesis:(id)a6;
+ (void)annotateUserParses:(id)a3 correctionOutcome:(id)a4;
+ (void)copyASRTimingInfoToUtteranceSpan:(id)a3 startIndexTokenDict:(id)a4 endIndexTokenDict:(id)a5;
+ (void)copyAlignedSpanEntitySpanForSameType:(id)a3 spanIndexDict:(id)a4 utteranceAlignment:(id)a5 entityKey:(id)a6 tokenChain:(id)a7;
+ (void)copyAlignedSpanIdentifierForSameType:(id)a3 spanIndexDict:(id)a4 utteranceAlignment:(id)a5 entityKey:(id)a6 groupIndexDict:(id)a7 tokenChain:(id)a8;
+ (void)copyMentionResolverSpanEntitySpans:(id)a3 fromMatchingSpans:(id)a4 toParseGraph:(id)a5;
+ (void)copyMentionResolverSpanIdentifiers:(id)a3 fromMatchingSpans:(id)a4 toParseGraph:(id)a5;
+ (void)copySubsumedSpanEntitySpan:(id)a3 spans:(id)a4 parseEntityKey:(id)a5 utteranceAlignment:(id)a6 tokenChain:(id)a7;
+ (void)createIdentifierGroups:(id)a3 spans:(id)a4 parseEntityKey:(id)a5 parseAlignment:(id)a6 interpretationGroupCurrentMax:(id)a7;
+ (void)logParsesRanking:(id)a3 addDebugInfo:(id)a4;
+ (void)mapVocGenericBundleIdsToPlatformBundleIdsForGraph:(id)a3;
+ (void)mapVocGenericBundleIdsToPlatformBundleIdsForParse:(id)a3;
+ (void)populateComparableProbabilityForParsesNLv4:(id)a3 parsesSNLC:(id)a4;
+ (void)populateComparableProbabilityFromProbabilityParses:(id)a3;
+ (void)populateComparableProbabilityParses:(id)a3 threshold:(float)a4;
+ (void)populateComparableProbabilityParsesAutoShortcuts:(id)a3;
+ (void)populateComparableProbabilityParsesPSC:(id)a3;
+ (void)populateComparableProbabilityParsesSNLC:(id)a3 deviceParses:(id)a4;
+ (void)removeProbabilityFromUserParses:(id)a3;
+ (void)runFeatureStore:(id)a3 nluResponse:(id)a4 snlcRequest:(id)a5 snlcResponse:(id)a6 pscRequest:(id)a7 pscResponse:(id)a8 spanProtoResponse:(id)a9 tokenProtoResponse:(id)a10 mdRequest:(id)a11 mdResponse:(id)a12 mrRequest:(id)a13 mrResponse:(id)a14 nLv4Request:(id)a15 nLv4Response:(id)a16;
+ (void)splitParses:(id)a3 deviceParses:(id)a4 zeroParses:(id)a5;
+ (void)stripBugFixNamespaceSuffix:(id)a3;
+ (void)stripBugFixPropertyKeySuffix:(id)a3;
+ (void)updateIndexesForSignificantTokensFrom:(unsigned int *)a3 to:(unsigned int *)a4 tokenChain:(id)a5 entityKey:(id)a6;
@end

@implementation CDMPostProcessUtils

+ (void)mapVocGenericBundleIdsToPlatformBundleIdsForGraph:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v32 = a3;
  v3 = [v32 identifiers];
  v4 = [v3 countByEnumeratingWithState:&v37 objects:v48 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        if ([v8 sourceComponent] == 2)
        {
          v9 = [v8 namespaceA];
          v10 = [v9 value];
          if ([v10 isEqualToString:@"appName"])
          {
            v11 = [v8 hasValue];

            if ((v11 & 1) == 0)
            {
              continue;
            }

            v12 = [v8 value];
            v9 = [CDMVocBundleMappingUtils mapVocGenericBundleIdToPlatformBundleId:v12];

            if (v9)
            {
              v13 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                v14 = [v8 value];
                *buf = 136315650;
                v43 = "+[CDMPostProcessUtils mapVocGenericBundleIdsToPlatformBundleIdsForGraph:]";
                v44 = 2112;
                v45 = v14;
                v46 = 2112;
                v47 = v9;
                _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Mapping appName identifier generic bundle ID %@ to platform bundle %@.", buf, 0x20u);
              }

              [v8 setValue:v9];
            }
          }

          else
          {
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v5);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = [v32 spans];
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v33 + 1) + 8 * j);
        if ([v20 sourceComponent] == 2)
        {
          v21 = [v20 properties];
          v22 = [v21 firstObject];

          v23 = [v22 key];
          if (![v23 isEqualToString:@"appName"])
          {
            goto LABEL_29;
          }

          v24 = [v22 hasValueString];

          if (v24)
          {
            v25 = [v22 valueString];
            v26 = [v25 value];
            v23 = [CDMVocBundleMappingUtils mapVocGenericBundleIdToPlatformBundleId:v26];

            if (v23)
            {
              v27 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                v29 = [v22 valueString];
                v30 = [v29 value];
                *buf = 136315650;
                v43 = "+[CDMPostProcessUtils mapVocGenericBundleIdsToPlatformBundleIdsForGraph:]";
                v44 = 2112;
                v45 = v30;
                v46 = 2112;
                v47 = v23;
                _os_log_debug_impl(&dword_1DC287000, v27, OS_LOG_TYPE_DEBUG, "%s Mapping appName entity generic bundle ID %@ to platform bundle %@.", buf, 0x20u);
              }

              v28 = [v22 valueString];
              [v28 setValue:v23];
            }

LABEL_29:
          }

          continue;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v17);
  }

  v31 = *MEMORY[0x1E69E9840];
}

+ (void)mapVocGenericBundleIdsToPlatformBundleIdsForParse:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [a3 userDialogActs];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 hasUserStatedTask])
        {
          v10 = [v9 userStatedTask];
          v11 = [v10 hasTask];

          if (v11)
          {
            v12 = [v9 userStatedTask];
            v13 = [v12 task];
            [a1 mapVocGenericBundleIdsToPlatformBundleIdsForGraph:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)removeProbabilityFromUserParses:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setProbability:0.0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)supplementaryOutputFromMatchingSpans:(id)a3 rewriteMessage:(id)a4 correctionOutcome:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v7 rewrittenUtterance];
    v16 = 136315650;
    v17 = "+[CDMPostProcessUtils supplementaryOutputFromMatchingSpans:rewriteMessage:correctionOutcome:]";
    v18 = 2112;
    v19 = v15;
    v20 = 1024;
    v21 = [v7 rewriteType];
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Adding supplementary output with re-written utterance: %@, re-write type: %i", &v16, 0x1Cu);
  }

  v11 = objc_opt_new();
  [v11 setRewrite:v7];
  [v11 setCorrectionOutcome:v8];

  v12 = [v9 mutableCopy];
  [v11 setMatchingSpans:v12];

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)rewriteMessageFromMatchingSpans:(id)a3 mrRewrittenUtterance:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (+[CDMFeatureFlags isMentionResolverRewriterEnabled](CDMFeatureFlags, "isMentionResolverRewriterEnabled") && [v7 length])
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v6;
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
          if ([a1 isExternalMatchingSpan:v14 fromMatcher:{2, v18}])
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
      [v15 setRewrittenUtterance:v7];
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

+ (void)annotateDelegatedUDAParses:(id)a3 matchingSpans:(id)a4 mrRewrittenUtterance:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v29 = a4;
  v28 = a5;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v7;
  v25 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
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
        v30 = [v9 userDialogActs];
        v10 = [v30 countByEnumeratingWithState:&v35 objects:v44 count:16];
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
                objc_enumerationMutation(v30);
              }

              v14 = *(*(&v35 + 1) + 8 * i);
              if ([v14 hasDelegated])
              {
                v33 = 0u;
                v34 = 0u;
                v31 = 0u;
                v32 = 0u;
                v15 = v29;
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
                      v21 = [v14 delegated];
                      [v21 addMatchingSpans:v20];
                    }

                    v17 = [v15 countByEnumeratingWithState:&v31 objects:v43 count:16];
                  }

                  while (v17);
                }

                [a1 annotateDUDAWithMRRRewrittenUtterance:v28 matchingSpans:v15 userDialogAct:v14];
              }
            }

            v11 = [v30 countByEnumeratingWithState:&v35 objects:v44 count:16];
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

+ (void)annotateDUDAWithMRRRewrittenUtterance:(id)a3 matchingSpans:(id)a4 userDialogAct:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315394;
    v17 = "+[CDMPostProcessUtils annotateDUDAWithMRRRewrittenUtterance:matchingSpans:userDialogAct:]";
    v18 = 2112;
    v19 = v7;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s annotate DUDA With mr re-written utterance - %@", &v16, 0x16u);
  }

  v11 = [v9 delegated];
  v12 = [v11 rewrite];

  if (!v12)
  {
    v13 = [objc_opt_class() rewriteMessageFromMatchingSpans:v8 mrRewrittenUtterance:v7];
    if (v13)
    {
      v14 = [v9 delegated];
      [v14 setRewrite:v13];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (unsigned)isExternalMatchingSpan:(id)a3 fromMatcher:(int)a4
{
  v5 = a3;
  if ([v5 matcherNamesCount])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v5 matcherNamesAtIndex:v6];
      v8 = v7 == a4;
      if (v7 == a4)
      {
        break;
      }

      if ([v5 matcherNamesCount] <= ++v6)
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

+ (id)filterAndConvertInternalMatchingSpans:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
        if (([v11 matcherNamesCount] == 1 && objc_msgSend(v11, "matcherNamesAtIndex:", 0) == 2 || objc_msgSend(a1, "isInternalMatchingSpan:fromMatcher:", v11, 7)) && !objc_msgSend(a1, "isInternalMatchingSpan:fromMatcher:", v11, 4))
        {
          v12 = [a1 filterAndConvertInternalMatchingSpan:v11];
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

+ (unsigned)isInternalMatchingSpan:(id)a3 fromMatcher:(int)a4
{
  v5 = a3;
  if ([v5 matcherNamesCount])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v5 matcherNamesAtIndex:v6];
      v8 = v7 == a4;
      if (v7 == a4)
      {
        break;
      }

      if ([v5 matcherNamesCount] <= ++v6)
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

+ (id)filterAndConvertInternalMatchingSpan:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69D11F8]);
  v5 = [v3 input];
  [v4 setInput:v5];

  v6 = [v3 label];
  [v4 setLabel:v6];

  [v4 setStartTokenIndex:{objc_msgSend(v3, "startTokenIndex")}];
  [v4 setEndTokenIndex:{objc_msgSend(v3, "endTokenIndex")}];
  v7 = [v3 usoGraph];
  [v4 setUsoGraph:v7];

  [v4 setScore:1.0];
  if ([v3 matcherNamesCount])
  {
    v8 = 0;
    do
    {
      v9 = [v3 matcherNamesAtIndex:v8] - 2;
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

    while ([v3 matcherNamesCount] > v8);
  }

  return v4;
}

+ (id)getPostProcessUserParses:(id)a3 parsesNLv4:(id)a4 parsesCATI:(id)a5 parsesUaaP:(id)a6 parsesPSC:(id)a7 parsesAutoShortcuts:(id)a8 parsesAppendOverrides:(id)a9 parsesSSU:(id)a10 addDebugInfo:(id)a11
{
  v11 = [CDMPostProcessUtils getFederatedParses:a3 parsesNLv4:a4 parsesCATI:a5 parsesUaaP:a6 parsesPSC:a7 parsesAutoShortcuts:a8 parsesAppendOverrides:a9 parsesSSU:a10 addDebugInfo:a11];
  v12 = [CDMPostProcessUtils getCroppedUserParses:v11];

  return v12;
}

+ (id)getPostProcessUserParses:(id)a3 parsesNLv4:(id)a4 parsesCATI:(id)a5 parsesUaaP:(id)a6 addDebugInfo:(id)a7
{
  v7 = [CDMPostProcessUtils getFederatedParses:a3 parsesNLv4:a4 parsesCATI:a5 parsesUaaP:a6 parsesPSC:0 parsesAutoShortcuts:0 parsesAppendOverrides:0 parsesSSU:0 addDebugInfo:a7];
  v8 = [CDMPostProcessUtils getCroppedUserParses:v7];

  return v8;
}

+ (id)getPostProcessUserParses:(id)a3 parsesNLv4:(id)a4 parsesCATI:(id)a5 addDebugInfo:(id)a6
{
  v6 = [CDMPostProcessUtils getFederatedParses:a3 parsesNLv4:a4 parsesCATI:a5 parsesUaaP:0 parsesPSC:0 parsesAutoShortcuts:0 parsesAppendOverrides:0 parsesSSU:0 addDebugInfo:a6];
  v7 = [CDMPostProcessUtils getCroppedUserParses:v6];

  return v7;
}

+ (id)getPostProcessUserParses:(id)a3
{
  v3 = a3;
  [CDMPostProcessUtils populateComparableProbabilityFromProbabilityParses:v3];
  v4 = [CDMPostProcessUtils sortParses:v3];

  v5 = [CDMPostProcessUtils getCroppedUserParses:v4];

  return v5;
}

+ (id)getCroppedUserParses:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4 >= 0xA)
  {
    v5 = 10;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 subarrayWithRange:{0, v5}];

  return v6;
}

+ (id)getFederatedParses:(id)a3 parsesNLv4:(id)a4 parsesCATI:(id)a5 parsesUaaP:(id)a6 parsesPSC:(id)a7 parsesAutoShortcuts:(id)a8 parsesAppendOverrides:(id)a9 parsesSSU:(id)a10 addDebugInfo:(id)a11
{
  v29 = a3;
  v31 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v30 = a11;
  v20 = MEMORY[0x1E695DF70];
  v21 = a5;
  v22 = a4;
  v23 = objc_alloc_init(v20);
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [CDMPostProcessUtils populateComparableProbabilityForParsesNLv4:v22 parsesSNLC:v29];
  [CDMPostProcessUtils splitParses:v22 deviceParses:v23 zeroParses:v24];

  [CDMPostProcessUtils populateComparableProbabilityParsesCATI:v21];
  [CDMPostProcessUtils splitParses:v21 deviceParses:v23 zeroParses:v24];

  if (v31)
  {
    [CDMPostProcessUtils populateComparableProbabilityParsesUaaP:v31];
    [CDMPostProcessUtils splitParses:v31 deviceParses:v23 zeroParses:v24];
  }

  if (v16)
  {
    [CDMPostProcessUtils populateComparableProbabilityParsesPSC:v16];
    [CDMPostProcessUtils splitParses:v16 deviceParses:v23 zeroParses:v24];
  }

  if (v17)
  {
    [CDMPostProcessUtils populateComparableProbabilityParsesAutoShortcuts:v17];
    [CDMPostProcessUtils splitParses:v17 deviceParses:v23 zeroParses:v24];
  }

  if (v18)
  {
    [CDMPostProcessUtils populateComparableProbabilityFromProbabilityParses:v18];
    [CDMPostProcessUtils splitParses:v18 deviceParses:v23 zeroParses:v24];
  }

  if (v19)
  {
    [CDMPostProcessUtils populateComparableProbabilityParsesSSU:v19];
    [CDMPostProcessUtils splitParses:v19 deviceParses:v23 zeroParses:v24];
  }

  [CDMPostProcessUtils populateComparableProbabilityParsesSNLC:v29 deviceParses:v23];
  v25 = [CDMPostProcessUtils sortParses:v23];
  v26 = [v25 mutableCopy];

  if (!+[CDMFeatureFlags isAmbiguityRefactorEnabled])
  {
    v27 = [CDMPostProcessUtils sortParses:v29];
    [v26 addObjectsFromArray:v27];

    [v26 addObjectsFromArray:v24];
  }

  if (+[CDMUserDefaultsUtils readNLv4MaxNumParses]!= 1)
  {
    [v26 addObjectsFromArray:v24];
  }

  [CDMPostProcessUtils logParsesRanking:v26 addDebugInfo:v30];

  return v26;
}

+ (void)logParsesRanking:(id)a3 addDebugInfo:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v23 = a4;
  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"\n\nFederation ranking order:"];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
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
        v14 = [v12 parser];
        v15 = [v14 parserId];
        if (v15 >= 0xA)
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v15];
        }

        else
        {
          v16 = off_1E862F1E8[v15];
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

  if (v23)
  {
    [v23 appendString:v6];
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

+ (void)splitParses:(id)a3 deviceParses:(id)a4 zeroParses:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        [v14 comparableProbability];
        if (v15 <= 0.0)
        {
          v16 = v9;
        }

        else
        {
          v16 = v8;
        }

        [v16 addObject:v14];
      }

      v11 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)populateComparableProbabilityFromProbabilityParses:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 probability];
        [v8 setComparableProbability:?];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)populateComparableProbabilityParsesSNLC:(id)a3 deviceParses:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([a4 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
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
    [CDMPostProcessUtils populateComparableProbabilityFromProbabilityParses:v5];
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)populateComparableProbabilityParsesAutoShortcuts:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setComparableProbability:0.600000024];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)populateComparableProbabilityParsesPSC:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v36 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = v3;
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
      v8 = [v7 userDialogActs];
      v9 = [v8 countByEnumeratingWithState:&v38 objects:v51 count:16];
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
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v38 + 1) + 8 * i);
            v14 = [v13 delegated];
            v15 = [v14 externalParserId];
            v16 = [v15 isEqualToString:@"com.apple.search"];

            if (v16)
            {
              v17 = v7;

              v5 = v17;
            }

            else
            {
              v18 = [v13 delegated];
              v19 = [v18 externalParserId];
              v20 = [v19 isEqualToString:@"com.apple.search_phase_2"];

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

          v10 = [v8 countByEnumeratingWithState:&v38 objects:v51 count:16];
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

  v30 = [v36 allObjects];
  LODWORD(v31) = 1058642330;
  [CDMPostProcessUtils populateComparableProbabilityParses:v30 threshold:v31];

  v4 = obj;
LABEL_29:

  v27 = *MEMORY[0x1E69E9840];
}

+ (void)populateComparableProbabilityParses:(id)a3 threshold:(float)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = a4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [v11 probability];
        v13 = v12;
        v14 = 0.0;
        if (v13 > v9)
        {
          [v11 probability];
          *&v15 = v15;
          v14 = *&v15;
        }

        [v11 setComparableProbability:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (void)populateComparableProbabilityForParsesNLv4:(id)a3 parsesSNLC:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v6 firstObject];
    v8 = v7;
    if (v7)
    {
      [v7 probability];
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
    v12 = v5;
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

+ (BOOL)alignmentSubsumesSpan:(id)a3 alignment:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 usoGraph];
  v7 = [v6 alignments];

  if ([v7 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
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

          if (![*(*(&v16 + 1) + 8 * i) subsumedBy:{v5, v16}])
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

+ (id)getUtteranceAlignmentForIndex:(id)a3 nodeIndex:(int)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a3 alignments];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 nodeIndex] == a4)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (void)annotateNLUResponse:(id)a3 nluRequest:(id)a4 matchingSpans:(id)a5 tokenChain:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v16 = [v12 parses];
  v13 = [v11 currentTurnInput];

  v14 = [v13 asrOutputs];
  v15 = [v14 firstObject];
  [CDMPostProcessUtils annotateParses:v16 tokenChain:v9 matchingSpans:v10 asrHypothesis:v15];

  [v12 setParses:v16];
}

+ (id)entityKeyFrom:(id)a3 at:(unint64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v6 edges];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v23 + 1) + 8 * i);
      if ([v11 toIndex] == a4)
      {
        v8 = v11;

        if (v8)
        {
          v7 = [v6 nodes];
          if (![v7 count])
          {
            goto LABEL_20;
          }

          v12 = [v6 nodes];
          if ([v12 count] <= a4)
          {
            v18 = 0;
LABEL_23:

            goto LABEL_24;
          }

          v13 = [v8 fromIndex];
          v14 = [v6 nodes];
          v15 = [v14 count];

          if (v15 > v13)
          {
            v16 = [v6 nodes];
            v7 = [v16 objectAtIndexedSubscript:a4];

            v17 = [v6 nodes];
            v12 = [v17 objectAtIndexedSubscript:{objc_msgSend(v8, "fromIndex")}];

            v18 = 0;
            if (v7 && v12)
            {
              v19 = [v8 label];
              v20 = v19;
              if (v19)
              {
                if ([v19 usoElementId] == 1269)
                {
                  v18 = [a1 entityKeyFrom:v6 at:{objc_msgSend(v8, "fromIndex")}];
                  if (v18)
                  {
                    -[EntityKey setElementId:](v18, "setElementId:", [v7 usoElementId]);
                  }
                }

                else
                {
                  v18 = -[EntityKey initWithElementId:edgeElementId:parentElementId:]([EntityKey alloc], "initWithElementId:edgeElementId:parentElementId:", [v7 usoElementId], objc_msgSend(v20, "usoElementId"), objc_msgSend(v12, "usoElementId"));
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

    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

+ (void)annotateUserParses:(id)a3 correctionOutcome:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v10++) setCorrectionOutcome:v6];
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)getCorrectionOutcomeFromUserParses:(id)a3 ccqrCorrectionOutcome:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        [v12 comparableProbability];
        if (v13 > 0.0)
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v14 = [v12 userDialogActs];
          v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                  objc_enumerationMutation(v14);
                }

                v9 |= [*(*(&v22 + 1) + 8 * j) hasRejected];
              }

              v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v16);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  if ([v6 type] == 1 || (v9 & 1) != 0)
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

+ (void)annotateParses:(id)a3 tokenChain:(id)a4 matchingSpans:(id)a5 asrHypothesis:(id)a6
{
  v109 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v65 = a5;
  v12 = a6;
  v13 = [a1 usoGraphs:v10];
  if ([v13 count])
  {
    v57 = v10;
    v58 = v13;
    v76 = v11;
    v14 = objc_alloc(MEMORY[0x1E695DF90]);
    [v12 asrTokens];
    v15 = v59 = v12;
    v16 = [v14 initWithCapacity:{objc_msgSend(v15, "count")}];

    v17 = objc_alloc(MEMORY[0x1E695DF90]);
    v18 = [v59 asrTokens];
    v19 = [v17 initWithCapacity:{objc_msgSend(v18, "count")}];

    if (v59)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v20 = [v59 asrTokens];
      v21 = [v20 countByEnumeratingWithState:&v97 objects:v108 count:16];
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
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v97 + 1) + 8 * i);
            v26 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v25, "beginIndex", v57)}];
            [v16 setObject:v25 forKeyedSubscript:v26];

            v27 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v25, "endIndex")}];
            [v19 setObject:v25 forKeyedSubscript:v27];
          }

          v22 = [v20 countByEnumeratingWithState:&v97 objects:v108 count:16];
        }

        while (v22);
      }
    }

    else
    {
      v20 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v107 = "+[CDMPostProcessUtils annotateParses:tokenChain:matchingSpans:asrHypothesis:]";
        _os_log_debug_impl(&dword_1DC287000, v20, OS_LOG_TYPE_DEBUG, "%s Missing ASR Hypothesis, unable to add timing information to alignments", buf, 0xCu);
      }
    }

    v11 = v76;

    v69 = [a1 spanIndexDict:v65 tokenChain:v76];
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
        v68 = [a1 getGroupIndexDict:{v29, v57}];
        v66 = [IdentifierGroupingUtils getInterpretationGroupMax:v29];
        v72 = [MEMORY[0x1E695DF70] array];
        v67 = [MEMORY[0x1E695DF70] array];
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v70 = [v29 alignments];
        v75 = [v70 countByEnumeratingWithState:&v89 objects:v104 count:16];
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
                objc_enumerationMutation(v70);
              }

              v31 = *(*(&v89 + 1) + 8 * v30);
              [a1 addNormalizedValuesTo:v29 alignedWith:v31 from:v11];
              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              v32 = [v31 spans];
              v33 = [v32 countByEnumeratingWithState:&v85 objects:v103 count:16];
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
                      objc_enumerationMutation(v32);
                    }

                    [a1 copyASRTimingInfoToUtteranceSpan:*(*(&v85 + 1) + 8 * j) startIndexTokenDict:v16 endIndexTokenDict:v19];
                  }

                  v34 = [v32 countByEnumeratingWithState:&v85 objects:v103 count:16];
                }

                while (v34);
              }

              v37 = +[CDMPostProcessUtils entityKeyFrom:at:](CDMPostProcessUtils, "entityKeyFrom:at:", v29, [v31 nodeIndex]);
              if (!v37)
              {
                v11 = v76;
                goto LABEL_49;
              }

              v38 = +[EntityKey userEntity];
              v39 = [v38 isEqualToEntityKey:v37];

              v11 = v76;
              if (v39)
              {
                if (!v73)
                {
                  v73 = [a1 getAlignedIdentifierSpans:v65];
                }

                if (!+[CDMFeatureFlags isUsoEntitySpanEnabled])
                {
                  goto LABEL_48;
                }

                v40 = v71;
                if (!v71)
                {
                  v40 = [a1 getAlignedEntitySpanSpans:v65];
                }

                v71 = v40;
                [a1 copySubsumedSpanEntitySpan:v67 spans:v40 parseEntityKey:v37 utteranceAlignment:v31 tokenChain:v76];
                if (+[CDMFeatureFlags isInterpretationGroupFilteringEnabled])
                {
                  [a1 copyAlignedSpanIdentifierForSameType:v72 spanIndexDict:v69 utteranceAlignment:v31 entityKey:v37 groupIndexDict:v68 tokenChain:v76];
                }

                else
                {
LABEL_48:
                  [a1 createIdentifierGroups:v72 spans:v73 parseEntityKey:v37 parseAlignment:v31 interpretationGroupCurrentMax:v66];
                }

                goto LABEL_49;
              }

              [a1 copyAlignedSpanIdentifierForSameType:v72 spanIndexDict:v69 utteranceAlignment:v31 entityKey:v37 groupIndexDict:v68 tokenChain:v76];
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

                  v11 = v76;
                  if ((v44 & 1) == 0)
                  {
                    [a1 copyAlignedSpanEntitySpanForSameType:v67 spanIndexDict:v69 utteranceAlignment:v31 entityKey:v37 tokenChain:v76];
                    goto LABEL_49;
                  }

                  goto LABEL_45;
                }
              }

LABEL_45:
              v42 = v71;
              if (!v71)
              {
                v42 = [a1 getAlignedEntitySpanSpans:v65];
              }

              v71 = v42;
              [a1 copySubsumedSpanEntitySpan:v67 spans:v42 parseEntityKey:v37 utteranceAlignment:v31 tokenChain:v11];
LABEL_49:

              ++v30;
            }

            while (v30 != v75);
            v45 = [v70 countByEnumeratingWithState:&v89 objects:v104 count:16];
            v75 = v45;
          }

          while (v45);
        }

        [a1 copyMentionResolverSpanIdentifiers:v72 fromMatchingSpans:v65 toParseGraph:v29];
        if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
        {
          [a1 copyMentionResolverSpanEntitySpans:v67 fromMatchingSpans:v65 toParseGraph:v29];
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v46 = v72;
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
          v51 = v67;
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
        v11 = v76;
      }

      while (v63 + 1 != v62);
      v62 = [obj countByEnumeratingWithState:&v93 objects:v105 count:16];
      if (!v62)
      {
LABEL_76:

        v10 = v57;
        v13 = v58;
        v12 = v59;
        break;
      }
    }
  }

  v56 = *MEMORY[0x1E69E9840];
}

+ (id)getAlignedEntitySpanSpans:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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
          v11 = [v10 usoGraph];
          if ([v11 alignmentsCount])
          {
            v12 = [v10 usoGraph];
            v13 = [v12 spansCount];

            if (v13)
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

+ (id)getAlignedIdentifierSpans:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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
          v11 = [v10 usoGraph];
          if ([v11 alignmentsCount])
          {
            v12 = [v10 usoGraph];
            v13 = [v12 identifiersCount];

            if (v13)
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

+ (void)createIdentifierGroups:(id)a3 spans:(id)a4 parseEntityKey:(id)a5 parseAlignment:(id)a6 interpretationGroupCurrentMax:(id)a7
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v14 spans];
  v17 = [v16 count];

  if (v17)
  {
    v31 = v15;
    v33 = v11;
    v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{3 * objc_msgSend(v12, "count")}];
    v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{3 * objc_msgSend(v12, "count")}];
    v39 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{3 * objc_msgSend(v12, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v32 = v12;
    obj = v12;
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
          v20 = [v19 usoGraph];
          v21 = [v20 alignments];

          v22 = [v21 countByEnumeratingWithState:&v42 objects:v50 count:16];
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
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v42 + 1) + 8 * i);
                if ([v26 subsumedBy:v14])
                {
                  v27 = [v19 usoGraph];
                  v28 = +[CDMPostProcessUtils entityKeyFrom:at:](CDMPostProcessUtils, "entityKeyFrom:at:", v27, [v26 nodeIndex]);

                  if ([v28 isEqualToEntityKey:v13])
                  {
                    if ([a1 hasTagNamespace:v19])
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

              v23 = [v21 countByEnumeratingWithState:&v42 objects:v50 count:16];
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

    v11 = v33;
    v15 = v31;
    +[IdentifierGroupingUtils createIdentifierGroups:alignmentSpanDict:identifiers:nodeIndex:interpretationGroupCurrentMax:tagSpans:](IdentifierGroupingUtils, "createIdentifierGroups:alignmentSpanDict:identifiers:nodeIndex:interpretationGroupCurrentMax:tagSpans:", v40, v39, v33, [v14 nodeIndex], v31, v35);

    v12 = v32;
  }

  v30 = *MEMORY[0x1E69E9840];
}

+ (BOOL)hasTagNamespace:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [a3 usoGraph];
  v4 = [v3 identifiers];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        v12 = [v11 namespaceA];
        v13 = [v12 value];
        if ([v13 isEqualToString:v8])
        {

LABEL_13:
          v17 = 1;
          goto LABEL_14;
        }

        v14 = [v11 namespaceA];
        v15 = [v14 value];
        v16 = [v15 isEqualToString:v9];

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

+ (void)addNormalizedValuesTo:(id)a3 alignedWith:(id)a4 from:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [a3 nodes];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v8, "nodeIndex")}];

  if ([v11 hasStringPayload])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [v8 spans];
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = [a1 normalizedPayloadsFrom:objc_msgSend(*(*(&v20 + 1) + 8 * v16) to:"startIndex") within:{objc_msgSend(*(*(&v20 + 1) + 8 * v16), "endIndex"), v9}];
          v18 = [v17 mutableCopy];
          [v11 setNormalizedStringPayloads:v18];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (id)normalizedPayloadsFrom:(int64_t)a3 to:(int64_t)a4 within:(id)a5
{
  v7 = a5;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = [v7 tokens];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v11 = [v7 tokens];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = [v7 tokens];
      v16 = [v15 objectAtIndexedSubscript:v13];

      v14 |= [v16 begin] == a3;
      if (v14)
      {
        v17 = [v16 normalizedValues];
        [v10 addObjectsFromArray:v17];
      }

      v18 = [v16 end];

      if (v18 >= a4)
      {
        break;
      }

      ++v13;
      v19 = [v7 tokens];
      v20 = [v19 count];
    }

    while (v20 > v13);
  }

  return v10;
}

+ (void)updateIndexesForSignificantTokensFrom:(unsigned int *)a3 to:(unsigned int *)a4 tokenChain:(id)a5 entityKey:(id)a6
{
  v24 = a5;
  v9 = a6;
  v10 = +[EntityKey currencyName];
  v11 = [v10 isEqualToEntityKey:v9];
  if (a3 && v11)
  {

    if (!a4)
    {
      goto LABEL_25;
    }

    v12 = [v24 tokens];
    v13 = [v12 count];

    if (v13)
    {
      v14 = 0;
      v13 = 0;
      v10 = 0;
      v15 = v24;
      do
      {
        v16 = [v15 tokens];
        v17 = [v16 objectAtIndexedSubscript:v14];

        if (!v10)
        {
          if ([v17 begin] >= *a3 && objc_msgSend(v17, "isSignificant"))
          {
            v10 = v17;
          }

          else
          {
            v10 = 0;
          }
        }

        v18 = [v17 end];
        v19 = *a4;
        v20 = v18 > *a4 || v10 == 0;
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
        v22 = [v24 tokens];
        v23 = [v22 count];

        v15 = v24;
      }

      while (v14 < v23);
      if (v10 && v13)
      {
        *a3 = [v10 begin];
        *a4 = [v13 end];
      }
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_25:
}

+ (id)significantTokenCountFrom:(unsigned int)a3 to:(unsigned int)a4 within:(id)a5
{
  LODWORD(v6) = a3;
  v7 = a5;
  v8 = [v7 tokens];
  v9 = [v8 count];

  if (v9 <= v6 || v6 >= a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v6 = v6;
    v11 = a4;
    do
    {
      v12 = [v7 tokens];
      v13 = [v12 count];

      if (v6 >= v13)
      {
        break;
      }

      v14 = [v7 tokens];
      v15 = [v14 objectAtIndexedSubscript:v6];
      v16 = [v15 isSignificant];

      v10 = (v10 + v16);
      ++v6;
    }

    while (v11 != v6);
  }

  v17 = objc_alloc_init(MEMORY[0x1E69D1120]);
  [v17 setValue:v10];

  return v17;
}

+ (void)copyASRTimingInfoToUtteranceSpan:(id)a3 startIndexTokenDict:(id)a4 endIndexTokenDict:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = a4;
  v11 = [v8 numberWithInt:{objc_msgSend(v7, "startIndex")}];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    [v7 setStartMilliSeconds:{objc_msgSend(v12, "startMilliSeconds")}];
  }

  else
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136315394;
      v20 = "+[CDMPostProcessUtils copyASRTimingInfoToUtteranceSpan:startIndexTokenDict:endIndexTokenDict:]";
      v21 = 1024;
      v22 = [v7 startIndex];
      _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Missing ASR Token for alignment with start index: %d", &v19, 0x12u);
    }
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "endIndex")}];
  v15 = [v9 objectForKeyedSubscript:v14];

  if (v15)
  {
    [v7 setEndMilliSeconds:{objc_msgSend(v15, "endMilliSeconds")}];
  }

  else
  {
    v16 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v7 endIndex];
      v19 = 136315394;
      v20 = "+[CDMPostProcessUtils copyASRTimingInfoToUtteranceSpan:startIndexTokenDict:endIndexTokenDict:]";
      v21 = 1024;
      v22 = v18;
      _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Missing ASR Token for alignment with end index: %d", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)copyMentionResolverSpanEntitySpans:(id)a3 fromMatchingSpans:(id)a4 toParseGraph:(id)a5
{
  v77 = *MEMORY[0x1E69E9840];
  v59 = a3;
  v49 = a4;
  v8 = a5;
  v9 = [v8 nodes];
  v10 = [v9 count];

  if (v10)
  {
    v60 = 0;
    v50 = v8;
    do
    {
      v11 = [v8 nodes];
      v12 = [v11 objectAtIndexedSubscript:v60];

      v51 = v12;
      v13 = [v12 usoElementId];
      if (v13 > 1317)
      {
        if (v13 == 1318)
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
          v19 = v49;
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
            if ([a1 isInternalMatchingSpan:v24 fromMatcher:7])
            {
              if ([v24 hasUsoGraph] && (!v56 || objc_msgSend(a1, "alignmentSubsumesSpan:alignment:", v24, log)))
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
          v25 = [v24 usoGraph];
          v26 = [v25 spans];

          v27 = [v26 countByEnumeratingWithState:&v63 objects:v75 count:16];
          if (!v27)
          {
            goto LABEL_47;
          }

          v28 = v27;
          v29 = v24;
          v30 = *v64;
          v61 = *v64;
          v58 = v26;
          while (2)
          {
            v31 = 0;
            v62 = v28;
LABEL_31:
            if (*v64 != v30)
            {
              objc_enumerationMutation(v26);
            }

            v32 = *(*(&v63 + 1) + 8 * v31);
            v33 = [v32 nodeIndex];
            v34 = [v29 usoGraph];
            LOBYTE(v33) = [a1 hasEntityEdgeTo:v33 inGraph:v34];

            if (v33)
            {
              v35 = objc_alloc_init(MEMORY[0x1E69D1258]);
              [v32 copyTo:v35];
              [v35 setNodeIndex:v60];
              v36 = [v29 internalSpanData];
              if ([v36 hasMentionResolverSpanData])
              {
                v37 = [v29 internalSpanData];
                v38 = [v37 mentionResolverSpanData];
                v39 = [v38 hasJointScore];

                v26 = v58;
                if (v39)
                {
                  v40 = objc_alloc_init(MEMORY[0x1E69D1118]);
                  v41 = [v29 internalSpanData];
                  v42 = [v41 mentionResolverSpanData];
                  [v42 jointScore];
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

              [v59 addObject:v35];
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
              v28 = [v26 countByEnumeratingWithState:&v63 objects:v75 count:16];
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

        v8 = v50;
        if (v13 == 2631)
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

      else if (v13 == 1206)
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

          v8 = v50;
          log = [a1 getUtteranceAlignmentForIndex:v50 nodeIndex:v60];
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
          v8 = v50;
        }
      }

      else
      {
        v8 = v50;
        if (v13 == 1282)
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

      v46 = [v8 nodes];
      v47 = [v46 count];

      ++v60;
    }

    while (v47 > v60);
  }

  v48 = *MEMORY[0x1E69E9840];
}

+ (void)copyMentionResolverSpanIdentifiers:(id)a3 fromMatchingSpans:(id)a4 toParseGraph:(id)a5
{
  v87 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v58 = a4;
  v9 = a5;
  v10 = [v9 nodes];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    v60 = v9;
    do
    {
      v13 = [v9 nodes];
      v67 = v12;
      v14 = [v13 objectAtIndexedSubscript:v12];

      v59 = v14;
      v15 = [v14 usoElementId];
      if (v15 > 1317)
      {
        if (v15 == 1318)
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
          v22 = v58;
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
            if ([a1 isInternalMatchingSpan:v27 fromMatcher:7])
            {
              if ([v27 hasUsoGraph] && (!v21 || objc_msgSend(a1, "alignmentSubsumesSpan:alignment:", v27, log)))
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
          v28 = [v27 usoGraph];
          v29 = [v28 identifiers];

          v72 = [v29 countByEnumeratingWithState:&v73 objects:v85 count:16];
          if (!v72)
          {

            goto LABEL_54;
          }

          v30 = 0;
          v71 = 0;
          v69 = v27;
          v70 = *v74;
          v31 = v67;
          v32 = v29;
          while (2)
          {
            v33 = 0;
LABEL_31:
            if (*v74 != v70)
            {
              objc_enumerationMutation(v32);
            }

            v34 = *(*(&v73 + 1) + 8 * v33);
            v35 = [v34 nodeIndex];
            v36 = [v27 usoGraph];
            LOBYTE(v35) = [a1 hasEntityEdgeTo:v35 inGraph:v36];

            if (v35)
            {
              v37 = v27;
              v38 = v32;
              v39 = objc_opt_new();
              [v34 copyTo:v39];
              [v39 setNodeIndex:v31];
              v40 = [v37 internalSpanData];
              if ([v40 hasMentionResolverSpanData])
              {
                [v37 internalSpanData];
                v41 = a1;
                v43 = v42 = v8;
                v44 = [v43 mentionResolverSpanData];
                v45 = [v44 hasJointScore];

                v8 = v42;
                a1 = v41;
                v31 = v67;

                if (v45)
                {
                  v46 = objc_alloc_init(MEMORY[0x1E69D1110]);
                  v47 = [v69 internalSpanData];
                  v48 = [v47 mentionResolverSpanData];
                  [v48 jointScore];
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
              v49 = [v34 groupIndex];
              v50 = v71;
              if (v71 <= v49)
              {
                v50 = v49;
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

              [v8 addObject:v39];
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
                v9 = v60;
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

        if (v15 == 2631)
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
        if (v15 == 1206)
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

            log = [a1 getUtteranceAlignmentForIndex:v9 nodeIndex:v12];
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

        if (v15 == 1282)
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
      v53 = [v9 nodes];
      v54 = [v53 count];
    }

    while (v54 > v67 + 1);
  }

  v57 = *MEMORY[0x1E69E9840];
}

+ (BOOL)hasEntityEdgeTo:(int)a3 inGraph:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [a4 edges];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 hasToIndex])
        {
          if ([v10 toIndex] == a3)
          {
            if ([v10 hasLabel])
            {
              v11 = [v10 label];
              v12 = [v11 usoElementId];

              if (v12 == 1271)
              {
                v13 = 1;
                goto LABEL_14;
              }
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (void)copySubsumedSpanEntitySpan:(id)a3 spans:(id)a4 parseEntityKey:(id)a5 utteranceAlignment:(id)a6 tokenChain:(id)a7
{
  v70 = *MEMORY[0x1E69E9840];
  v52 = a3;
  v11 = a4;
  v53 = a5;
  v12 = a6;
  v49 = a7;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v11;
  v41 = [v11 countByEnumeratingWithState:&v63 objects:v69 count:16];
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
        v15 = [v50 usoGraph];
        v16 = v15;
        if (v15)
        {
          v42 = i;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v17 = [v15 alignments];
          v18 = [v17 countByEnumeratingWithState:&v59 objects:v68 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v60;
            v44 = v17;
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
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v59 + 1) + 8 * v21);
                if ([v22 subsumedBy:v12])
                {
                  v48 = v21;
                  v23 = *(v13 + 2504);
                  v24 = [v50 usoGraph];
                  v25 = [v23 entityKeyFrom:v24 at:{objc_msgSend(v22, "nodeIndex")}];

                  if ([v25 isEqualToEntityKey:v53])
                  {
                    v47 = v25;
                    v57 = 0u;
                    v58 = 0u;
                    v55 = 0u;
                    v56 = 0u;
                    v26 = [v16 spans];
                    v27 = [v26 countByEnumeratingWithState:&v55 objects:v67 count:16];
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
                            objc_enumerationMutation(v26);
                          }

                          v31 = *(*(&v55 + 1) + 8 * j);
                          v32 = [v31 nodeIndex];
                          if (v32 == [v22 nodeIndex])
                          {
                            v33 = objc_alloc_init(MEMORY[0x1E69D1258]);
                            [v31 copyTo:v33];
                            [v33 setNodeIndex:{objc_msgSend(v12, "nodeIndex")}];
                            v34 = objc_alloc_init(MEMORY[0x1E69D11B0]);
                            [v34 setAttachmentType:{objc_msgSend(v22, "equalIndexes:", v12) ^ 1}];
                            v35 = +[EntityKey userEntity];
                            v36 = [v35 isEqualToEntityKey:v53];

                            if (v36)
                            {
                              v51 = [v33 properties];
                              v37 = [a1 getSignificantTokenCountFrom:objc_msgSend(v50 to:"startTokenIndex") within:{objc_msgSend(v50, "endTokenIndex"), v49}];
                              [v51 addObject:v37];
                            }

                            [v33 setPayloadAttachmentInfo:v34];
                            [a1 stripBugFixPropertyKeySuffix:v33];
                            [v52 addObject:v33];
                          }
                        }

                        v28 = [v26 countByEnumeratingWithState:&v55 objects:v67 count:16];
                      }

                      while (v28);
                    }

                    v13 = 0x1E862B000;
                    v17 = v44;
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
              v19 = [v17 countByEnumeratingWithState:&v59 objects:v68 count:16];
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

+ (void)copyAlignedSpanEntitySpanForSameType:(id)a3 spanIndexDict:(id)a4 utteranceAlignment:(id)a5 entityKey:(id)a6 tokenChain:(id)a7
{
  v85 = *MEMORY[0x1E69E9840];
  v59 = a3;
  v46 = a4;
  v12 = a5;
  v58 = a6;
  v13 = a7;
  v14 = objc_alloc(MEMORY[0x1E695DF70]);
  v15 = [v12 spans];
  v51 = [v14 initWithCapacity:{2 * objc_msgSend(v15, "count")}];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v16 = [v12 spans];
  v17 = [v16 countByEnumeratingWithState:&v73 objects:v84 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v73 + 1) + 8 * i);
        *buf = [v21 startIndex];
        v72 = [v21 endIndex];
        [a1 updateIndexesForSignificantTokensFrom:buf to:&v72 tokenChain:v13 entityKey:v58];
        v22 = [MEMORY[0x1E696AD98] numberWithInt:*buf];
        [v51 addObject:v22];

        v23 = [MEMORY[0x1E696AD98] numberWithInt:v72];
        [v51 addObject:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v73 objects:v84 count:16];
    }

    while (v18);
  }

  if (![v51 count])
  {
    v44 = CDMOSLoggerForCategory(0);
    v24 = v46;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v81 = "+[CDMPostProcessUtils copyAlignedSpanEntitySpanForSameType:spanIndexDict:utteranceAlignment:entityKey:tokenChain:]";
      v82 = 2112;
      v83 = v12;
      _os_log_debug_impl(&dword_1DC287000, v44, OS_LOG_TYPE_DEBUG, "%s Found an alignment without indexes, ignoring: %@", buf, 0x16u);
    }

    goto LABEL_42;
  }

  [v51 sortUsingSelector:sel_compare_];
  v24 = v46;
  v25 = [v46 objectForKeyedSubscript:v51];
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

        v27 = [*(*(&v68 + 1) + 8 * j) usoGraph];
        v28 = v27;
        if (v27)
        {
          v50 = j;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v55 = [v27 alignments];
          v29 = [v55 countByEnumeratingWithState:&v64 objects:v78 count:16];
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
                  objc_enumerationMutation(v55);
                }

                v33 = *(*(&v64 + 1) + 8 * v32);
                v34 = [a1 entityKeyFrom:v28 at:{objc_msgSend(v33, "nodeIndex")}];
                if ([v34 isEqualToEntityKey:v58])
                {
                  v56 = v34;
                  v57 = v32;
                  v62 = 0u;
                  v63 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v35 = [v28 spans];
                  v36 = [v35 countByEnumeratingWithState:&v60 objects:v77 count:16];
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
                          objc_enumerationMutation(v35);
                        }

                        v40 = *(*(&v60 + 1) + 8 * k);
                        v41 = [v40 nodeIndex];
                        if (v41 == [v33 nodeIndex])
                        {
                          v42 = objc_alloc_init(MEMORY[0x1E69D1258]);
                          [v40 copyTo:v42];
                          [v42 setNodeIndex:{objc_msgSend(v12, "nodeIndex")}];
                          [a1 stripBugFixPropertyKeySuffix:v42];
                          [v59 addObject:v42];
                        }
                      }

                      v37 = [v35 countByEnumeratingWithState:&v60 objects:v77 count:16];
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
              v30 = [v55 countByEnumeratingWithState:&v64 objects:v78 count:16];
            }

            while (v30);
          }

          j = v50;
        }
      }

      v49 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
    }

    while (v49);
    v24 = v46;
  }

  v43 = v51;
  v44 = obj;
LABEL_43:

  v45 = *MEMORY[0x1E69E9840];
}

+ (void)copyAlignedSpanIdentifierForSameType:(id)a3 spanIndexDict:(id)a4 utteranceAlignment:(id)a5 entityKey:(id)a6 groupIndexDict:(id)a7 tokenChain:(id)a8
{
  v103 = *MEMORY[0x1E69E9840];
  v76 = a3;
  v61 = a4;
  v13 = a5;
  v14 = a6;
  v60 = a7;
  v15 = a8;
  v16 = objc_alloc(MEMORY[0x1E695DF70]);
  v17 = [v13 spans];
  v18 = [v16 initWithCapacity:{2 * objc_msgSend(v17, "count")}];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v75 = v13;
  v19 = [v13 spans];
  v20 = [v19 countByEnumeratingWithState:&v91 objects:v102 count:16];
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
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v91 + 1) + 8 * i);
        *buf = [v24 startIndex];
        v90 = [v24 endIndex];
        [a1 updateIndexesForSignificantTokensFrom:buf to:&v90 tokenChain:v15 entityKey:v14];
        v25 = [MEMORY[0x1E696AD98] numberWithInt:*buf];
        [v18 addObject:v25];

        v26 = [MEMORY[0x1E696AD98] numberWithInt:v90];
        [v18 addObject:v26];
      }

      v21 = [v19 countByEnumeratingWithState:&v91 objects:v102 count:16];
    }

    while (v21);
  }

  if ([v18 count])
  {
    [v18 sortUsingSelector:sel_compare_];
    v27 = [v61 objectForKeyedSubscript:v18];
    if (v27)
    {
      v28 = v27;
      v59 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(v13, "nodeIndex")}];
      v29 = [v60 objectForKeyedSubscript:?];
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
        v68 = v14;
        v64 = v18;
        v65 = v15;
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

            v36 = [*(*(&v86 + 1) + 8 * v35) usoGraph];
            v71 = v36;
            if (v36)
            {
              v84 = 0u;
              v85 = 0u;
              v82 = 0u;
              v83 = 0u;
              v37 = [v36 alignments];
              v38 = [v37 countByEnumeratingWithState:&v82 objects:v96 count:16];
              if (v38)
              {
                v67 = v35;
                v39 = 0;
                v40 = 0;
                v41 = *v83;
                v42 = v71;
                v43 = v37;
                v44 = v38;
                v69 = *v83;
                v70 = v37;
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
                    v73 = [a1 entityKeyFrom:v42 at:{objc_msgSend(v46, "nodeIndex")}];
                    if ([v73 isEqualToEntityKey:v14])
                    {
                      v80 = 0u;
                      v81 = 0u;
                      v78 = 0u;
                      v79 = 0u;
                      v47 = [v42 identifiers];
                      v48 = [v47 countByEnumeratingWithState:&v78 objects:v95 count:16];
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
                              objc_enumerationMutation(v47);
                            }

                            v52 = *(*(&v78 + 1) + 8 * j);
                            v53 = [v52 nodeIndex];
                            if (v53 == [v46 nodeIndex])
                            {
                              v54 = objc_opt_new();
                              [v52 copyTo:v54];
                              [v54 setNodeIndex:{objc_msgSend(v75, "nodeIndex")}];
                              [v54 setGroupIndex:{objc_msgSend(v52, "groupIndex") + v30}];
                              [a1 stripBugFixNamespaceSuffix:v52];
                              v55 = [v52 groupIndex];
                              if (v40 <= v55)
                              {
                                v40 = v55;
                              }

                              [v76 addObject:v54];

                              v39 = 1;
                            }
                          }

                          v49 = [v47 countByEnumeratingWithState:&v78 objects:v95 count:16];
                        }

                        while (v49);
                      }

                      v14 = v68;
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
                v15 = v65;
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

+ (void)stripBugFixPropertyKeySuffix:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 properties];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v3;
    v6 = [v3 properties];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v6);
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

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v3 = v18;
    [v18 setProperties:v5];
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)stripBugFixNamespaceSuffix:(id)a3
{
  v12 = a3;
  v3 = [v12 namespaceA];
  v4 = [v3 value];
  v5 = [v4 hasSuffix:@"BugFix"];

  if (v5)
  {
    v6 = [v12 namespaceA];
    v7 = [v6 value];
    v8 = [v12 namespaceA];
    v9 = [v8 value];
    v10 = [v7 substringToIndex:{objc_msgSend(v9, "length") - objc_msgSend(@"BugFix", "length")}];
    v11 = [v12 namespaceA];
    [v11 setValue:v10];
  }
}

+ (id)spanIndexDict:(id)a3 tokenChain:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v37 = [MEMORY[0x1E695DF90] dictionary];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v6;
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
        v13 = [v42 usoGraph];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 identifiers];
          v16 = [v15 count];

          if (v16)
          {
            v41 = v12;
            v17 = objc_alloc(MEMORY[0x1E695DF70]);
            v18 = [v14 alignments];
            v19 = [v17 initWithCapacity:{2 * objc_msgSend(v18, "count")}];
            v20 = v14;
            v21 = v19;

            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v45 = v20;
            v43 = [v20 alignments];
            v46 = [v43 countByEnumeratingWithState:&v53 objects:v66 count:16];
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
                    objc_enumerationMutation(v43);
                  }

                  v47 = v22;
                  v23 = *(*(&v53 + 1) + 8 * v22);
                  v24 = [a1 entityKeyFrom:v45 at:{objc_msgSend(v23, "nodeIndex")}];
                  v49 = 0u;
                  v50 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  v25 = [v23 spans];
                  v26 = [v25 countByEnumeratingWithState:&v49 objects:v65 count:16];
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
                          objc_enumerationMutation(v25);
                        }

                        v30 = *(*(&v49 + 1) + 8 * i);
                        *buf = [v30 startIndex];
                        v48 = [v30 endIndex];
                        [a1 updateIndexesForSignificantTokensFrom:buf to:&v48 tokenChain:v7 entityKey:v24];
                        v31 = [MEMORY[0x1E696AD98] numberWithInt:*buf];
                        [v21 addObject:v31];

                        v32 = [MEMORY[0x1E696AD98] numberWithInt:v48];
                        [v21 addObject:v32];
                      }

                      v27 = [v25 countByEnumeratingWithState:&v49 objects:v65 count:16];
                    }

                    while (v27);
                  }

                  v22 = v47 + 1;
                }

                while (v47 + 1 != v46);
                v46 = [v43 countByEnumeratingWithState:&v53 objects:v66 count:16];
              }

              while (v46);
            }

            if ([v21 count])
            {
              [v21 sortUsingSelector:sel_compare_];
              v33 = [v37 objectForKeyedSubscript:v21];
              v11 = v38;
              v10 = v39;
              v12 = v41;
              if (!v33)
              {
                v33 = [MEMORY[0x1E695DF70] array];
                [v37 setObject:v33 forKeyedSubscript:v21];
              }

              [v33 addObject:v42];
            }

            else
            {
              v33 = CDMOSLoggerForCategory(0);
              v11 = v38;
              v10 = v39;
              v12 = v41;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                *buf = v36;
                v62 = "+[CDMPostProcessUtils spanIndexDict:tokenChain:]";
                v63 = 2112;
                v64 = v42;
                _os_log_debug_impl(&dword_1DC287000, v33, OS_LOG_TYPE_DEBUG, "%s Found a MatchingSpan without an utterance span alignment: %@", buf, 0x16u);
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

  return v37;
}

+ (id)getGroupIndexDict:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = v3;
  v5 = [v3 identifiers];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
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

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)usoGraphs:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
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
        v9 = [v8 userDialogActs];
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v24 + 1) + 8 * j);
            if ([v15 hasUserStatedTask])
            {
              v16 = [v15 userStatedTask];
              v17 = [v16 task];
            }

            else
            {
              if ([v15 hasAccepted])
              {
                v18 = [v15 accepted];
              }

              else if ([v15 hasRejected])
              {
                v18 = [v15 rejected];
              }

              else if ([v15 hasAcknowledged])
              {
                v18 = [v15 acknowledged];
              }

              else if ([v15 hasCancelled])
              {
                v18 = [v15 cancelled];
              }

              else if ([v15 hasWantedToPause])
              {
                v18 = [v15 wantedToPause];
              }

              else if ([v15 hasWantedToProceed])
              {
                v18 = [v15 wantedToProceed];
              }

              else
              {
                if (![v15 hasWantedToRepeat])
                {
                  goto LABEL_29;
                }

                v18 = [v15 wantedToRepeat];
              }

              v16 = v18;
              v17 = [v18 reference];
            }

            v19 = v17;

            v12 = v19;
LABEL_29:
            if (v12)
            {
              [v4 addObject:v12];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

+ (void)runFeatureStore:(id)a3 nluResponse:(id)a4 snlcRequest:(id)a5 snlcResponse:(id)a6 pscRequest:(id)a7 pscResponse:(id)a8 spanProtoResponse:(id)a9 tokenProtoResponse:(id)a10 mdRequest:(id)a11 mdResponse:(id)a12 mrRequest:(id)a13 mrResponse:(id)a14 nLv4Request:(id)a15 nLv4Response:(id)a16
{
  v76 = *MEMORY[0x1E69E9840];
  v73 = a16;
  v72 = a15;
  v71 = a14;
  v70 = a13;
  v69 = a12;
  v68 = a11;
  v67 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v75 = "+[CDMPostProcessUtils runFeatureStore:nluResponse:snlcRequest:snlcResponse:pscRequest:pscResponse:spanProtoResponse:tokenProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:nLv4Request:nLv4Response:]";
    _os_log_debug_impl(&dword_1DC287000, v26, OS_LOG_TYPE_DEBUG, "%s FeatureStore Insertion", buf, 0xCu);
  }

  [CDMFeatureStoreUtils insertRequestToFeatureStoreAsJson:v25];
  [CDMFeatureStoreUtils insertResponseToFeatureStoreAsJson:v24];

  v27 = [v23 parserRequest];

  v28 = [v25 requestId];
  v29 = [v28 idA];
  [CDMFeatureStoreUtils insertSNLCRequestToFeatureStore:v27 interactionId:v29];

  v30 = [v22 snlcResponse];

  v31 = [v25 requestId];
  v32 = [v31 idA];
  [CDMFeatureStoreUtils insertSNLCResponseToFeatureStore:v30 interactionId:v32];

  v33 = [v21 parserRequest];

  v34 = [v25 requestId];
  v35 = [v34 idA];
  [CDMFeatureStoreUtils insertPSCRequestToFeatureStore:v33 interactionId:v35];

  v36 = [v20 pscResponse];

  v37 = [v25 requestId];
  v38 = [v37 idA];
  [CDMFeatureStoreUtils insertPSCResponseToFeatureStore:v36 interactionId:v38];

  v39 = [v19 spanMatchResponse];

  v40 = [v25 requestId];
  v41 = [v40 idA];
  [CDMFeatureStoreUtils insertSpanMatchResponseToFeatureStore:v39 interactionId:v41];

  v42 = [v67 response];

  v43 = [v25 requestId];
  v44 = [v43 idA];
  [CDMFeatureStoreUtils insertTokenizerResponseToFeatureStore:v42 interactionId:v44];

  v45 = [v68 mdRequest];

  v46 = [v25 requestId];
  v47 = [v46 idA];
  [CDMFeatureStoreUtils insertMDRequestToFeatureStore:v45 interactionId:v47];

  v48 = [v69 response];

  v49 = [v25 requestId];
  v50 = [v49 idA];
  [CDMFeatureStoreUtils insertMDResponseToFeatureStore:v48 interactionId:v50];

  v51 = [v70 mrRequest];

  v52 = [v25 requestId];
  v53 = [v52 idA];
  [CDMFeatureStoreUtils insertMRRequestToFeatureStore:v51 interactionId:v53];

  v54 = [v71 response];

  v55 = [v25 requestId];
  v56 = [v55 idA];
  [CDMFeatureStoreUtils insertMRResponseToFeatureStore:v54 interactionId:v56];

  v57 = [v72 parserRequest];

  v58 = [v25 requestId];
  v59 = [v58 idA];
  [CDMFeatureStoreUtils insertNLv4ParserRequestToFeatureStore:v57 interactionId:v59];

  v60 = [v73 parserResponse];

  v61 = [v25 requestId];

  v62 = [v61 idA];
  [CDMFeatureStoreUtils insertNLv4ParserResponseToFeatureStore:v60 interactionId:v62];

  v63 = *MEMORY[0x1E69E9840];
}

+ (id)selectParsesFromUserParsesUaaP:(id)a3 userParsesShortcut:(id)a4 userParsesReplaceOverrides:(id)a5 userParsesAppendOverrides:(id)a6 userParsesSNLC:(id)a7 userParsesNLv4:(id)a8 userParsesCATI:(id)a9 userParsesPSC:(id)a10 userParsesAutoShortcuts:(id)a11 userParsesSSU:(id)a12 addDebugInfo:(id)a13
{
  v39 = *MEMORY[0x1E69E9840];
  v36 = a3;
  v18 = a4;
  v19 = a5;
  v35 = a6;
  v20 = a7;
  v34 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  if (+[CDMFeatureFlags isUaaPEnabled](CDMFeatureFlags, "isUaaPEnabled") && +[CDMFeatureFlags isUaaPPreferred](CDMFeatureFlags, "isUaaPPreferred") && [v36 count])
  {
    v26 = v20;
    v27 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v38 = "+[CDMPostProcessUtils selectParsesFromUserParsesUaaP:userParsesShortcut:userParsesReplaceOverrides:userParsesAppendOverrides:userParsesSNLC:userParsesNLv4:userParsesCATI:userParsesPSC:userParsesAutoShortcuts:userParsesSSU:addDebugInfo:]";
      _os_log_debug_impl(&dword_1DC287000, v27, OS_LOG_TYPE_DEBUG, "%s UaaP parses preferred, all other parses will be ignored", buf, 0xCu);
    }

    v28 = v36;
    v29 = v36;
  }

  else
  {
    if ([v18 count])
    {
      v26 = v20;
      v30 = [CDMPostProcessUtils getPostProcessUserParses:v18];
      v28 = v36;
      goto LABEL_14;
    }

    v28 = v36;
    if (![v19 count])
    {
      v26 = v20;
      v31 = [CDMPostProcessUtils getPostProcessUserParses:v20 parsesNLv4:v34 parsesCATI:v21 parsesUaaP:v36 parsesPSC:v22 parsesAutoShortcuts:v23 parsesAppendOverrides:v35 parsesSSU:v24 addDebugInfo:v25];
      goto LABEL_13;
    }

    v26 = v20;
    v29 = v19;
  }

  v31 = [CDMPostProcessUtils getPostProcessUserParses:v29];
LABEL_13:
  v30 = v31;
LABEL_14:

  v32 = *MEMORY[0x1E69E9840];

  return v30;
}

+ (id)runPostProcess:(id)a3 snlcRequest:(id)a4 snlcResponse:(id)a5 nLv4Request:(id)a6 nLv4Response:(id)a7 uaapNLProtoResponse:(id)a8 catiProtoResponse:(id)a9 pscRequest:(id)a10 pscResponse:(id)a11 lvcResponse:(id)a12 overridesProtoResponse:(id)a13 mdRequest:(id)a14 mdResponse:(id)a15 mrRequest:(id)a16 mrResponse:(id)a17 spanProtoResponse:(id)a18 rdResponse:(id)a19 tokenProtoResponse:(id)a20 ssuResponse:(id)a21 ccqrResponse:(id)a22 correctionOutcome:(id)a23 nluRequest:(id)a24 graphInput:(id)a25 debugText:(id)a26
{
  v154 = *MEMORY[0x1E69E9840];
  v133 = a3;
  v30 = a5;
  v31 = a7;
  v132 = a8;
  v32 = a9;
  v33 = a11;
  v131 = a12;
  v34 = a13;
  v35 = a17;
  v135 = a18;
  v130 = a19;
  v129 = a20;
  v36 = a21;
  v128 = a22;
  v127 = a23;
  v137 = a24;
  v134 = a26;
  v37 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    _os_log_debug_impl(&dword_1DC287000, v37, OS_LOG_TYPE_DEBUG, "%s Final post process step", buf, 0xCu);
  }

  v117 = v31;
  v118 = v30;
  if (+[CDMLogging debugEnabled])
  {
    v38 = [v137 data];
    v39 = [v38 base64EncodedDataWithOptions:1];

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

    v31 = v117;
    v30 = v118;
  }

  if (v133)
  {
    v126 = [v133 voiceCommandsUserParses];
    v125 = [v133 autoShortcutParses];
    if (v30)
    {
      goto LABEL_9;
    }

LABEL_12:
    v42 = MEMORY[0x1E695E0F0];
    if (v31)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v125 = MEMORY[0x1E695E0F0];
  v126 = MEMORY[0x1E695E0F0];
  if (!v30)
  {
    goto LABEL_12;
  }

LABEL_9:
  v42 = [v30 snlcParses];
  if (v31)
  {
LABEL_10:
    v43 = [v31 nluResponse];
    v44 = [v43 parses];

    goto LABEL_14;
  }

LABEL_13:
  v44 = MEMORY[0x1E695E0F0];
LABEL_14:
  if (v132)
  {
    v45 = [v132 nluResponse];
    v124 = [v45 parses];

    if (v32)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v124 = MEMORY[0x1E695E0F0];
    if (v32)
    {
LABEL_16:
      v46 = [v32 response];
      v123 = [v46 hypotheses];

      if (v33)
      {
        goto LABEL_17;
      }

LABEL_21:
      v122 = MEMORY[0x1E695E0F0];
      if (v34)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  v123 = MEMORY[0x1E695E0F0];
  if (!v33)
  {
    goto LABEL_21;
  }

LABEL_17:
  v122 = [v33 pscParses];
  if (v34)
  {
LABEL_18:
    v121 = [v34 parsesForReplacement];
    v120 = [v34 parsesForAppending];
    goto LABEL_23;
  }

LABEL_22:
  v120 = MEMORY[0x1E695E0F0];
  v121 = MEMORY[0x1E695E0F0];
LABEL_23:
  v113 = v36;
  if (v36)
  {
    v47 = [v36 ssuResponse];
    v48 = [v47 hypotheses];
  }

  else
  {
    v48 = MEMORY[0x1E695E0F0];
  }

  v116 = v32;
  v110 = v48;
  v111 = v44;
  v112 = v42;
  v49 = [CDMPostProcessUtils selectParsesFromUserParsesUaaP:v124 userParsesShortcut:v126 userParsesReplaceOverrides:v121 userParsesAppendOverrides:v120 userParsesSNLC:v42 userParsesNLv4:v44 userParsesCATI:v123 userParsesPSC:v122 userParsesAutoShortcuts:v125 userParsesSSU:v48 addDebugInfo:v134];
  v50 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    _os_log_debug_impl(&dword_1DC287000, v50, OS_LOG_TYPE_DEBUG, "%s Convert SiriNLUTypes internal spans to external spans", buf, 0xCu);
  }

  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = [v35 response];
  v53 = [v52 mentions];
  v54 = [CDMPostProcessUtils filterAndConvertInternalMatchingSpans:v53];
  [v51 addObjectsFromArray:v54];

  v55 = [v135 matchingSpansForNL];
  v56 = [CDMPostProcessUtils filterAndConvertInternalMatchingSpans:v55];
  [v51 addObjectsFromArray:v56];

  v57 = [v135 matchingSpansForExternalParsers];
  v58 = [CDMPostProcessUtils filterAndConvertInternalMatchingSpans:v57];
  [v51 addObjectsFromArray:v58];

  v59 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    _os_log_debug_impl(&dword_1DC287000, v59, OS_LOG_TYPE_DEBUG, "%s Annotate DelegatedUserDialogActs with external spans", buf, 0xCu);
  }

  v60 = [v35 response];
  v61 = [v60 rewrittenUtterance];
  [CDMPostProcessUtils annotateDelegatedUDAParses:v49 matchingSpans:v51 mrRewrittenUtterance:v61];

  v62 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    _os_log_debug_impl(&dword_1DC287000, v62, OS_LOG_TYPE_DEBUG, "%s Annotate all UserParse with correction outcome", buf, 0xCu);
  }

  v63 = [CDMPostProcessUtils getCorrectionOutcomeFromUserParses:v49 ccqrCorrectionOutcome:v127];
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
  v136 = v35;
  v114 = v34;
  v115 = v33;
  v66 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    _os_log_debug_impl(&dword_1DC287000, v66, OS_LOG_TYPE_DEBUG, "%s Create NLU Response", buf, 0xCu);
  }

  v67 = objc_alloc_init(MEMORY[0x1E69D1158]);
  v68 = [v137 requestId];
  [v67 setRequestId:v68];

  v69 = [v119 mutableCopy];
  [v67 setParses:v69];

  v70 = [CDMServiceGraphUtil buildRepetitionResult:v130];
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v71 = [v67 parses];
  v72 = [v71 countByEnumeratingWithState:&v142 objects:v147 count:16];
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
          objc_enumerationMutation(v71);
        }

        [*(*(&v142 + 1) + 8 * i) setRepetitionResult:v70];
      }

      v73 = [v71 countByEnumeratingWithState:&v142 objects:v147 count:16];
    }

    while (v73);
  }

  v76 = [MEMORY[0x1E695DF70] arrayWithObject:v70];
  [v67 setRepetitionResults:v76];

  if ([CDMServiceGraphUtil debugInfoEnabled:v137])
  {
    [(__CFString *)v134 appendString:@"\n\n*** ✅ FOR DEBUGGING (end) ***"];
    [v67 setDebugText:v134];
    v77 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
      v150 = 2112;
      v151 = v134;
      _os_log_debug_impl(&dword_1DC287000, v77, OS_LOG_TYPE_DEBUG, "%s Debug info %@", buf, 0x16u);
    }
  }

  v78 = [v135 matchingSpansForNL];
  v79 = [v78 mutableCopy];

  v80 = [v136 response];
  v81 = [v80 mentions];
  v82 = [v81 count];

  if (v82)
  {
    v83 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      v109 = [v136 response];
      *buf = 136315394;
      v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
      v150 = 2112;
      v151 = v109;
      _os_log_debug_impl(&dword_1DC287000, v83, OS_LOG_TYPE_DEBUG, "%s Found mention resolver spans, MR response: %@", buf, 0x16u);
    }

    v84 = [v136 response];
    v85 = [v84 mentions];
    [v79 addObjectsFromArray:v85];
  }

  v86 = [v129 response];
  v87 = [v86 tokenChain];
  [CDMPostProcessUtils annotateNLUResponse:v67 nluRequest:v137 matchingSpans:v79 tokenChain:v87];

  v88 = [v131 languageVariantResult];
  [v67 setLanguageVariantResult:v88];

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v89 = [v67 parses];
  v90 = [v89 countByEnumeratingWithState:&v138 objects:v146 count:16];
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
          objc_enumerationMutation(v89);
        }

        [a1 mapVocGenericBundleIdsToPlatformBundleIdsForParse:*(*(&v138 + 1) + 8 * j)];
      }

      v91 = [v89 countByEnumeratingWithState:&v138 objects:v146 count:16];
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

  v95 = [v128 rewriteMsg];
  if (!v95)
  {
    v96 = objc_opt_class();
    v97 = [v136 response];
    v98 = [v97 rewrittenUtterance];
    v95 = [v96 rewriteMessageFromMatchingSpans:v51 mrRewrittenUtterance:v98];
  }

  v99 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    v150 = 2112;
    v151 = v95;
    _os_log_debug_impl(&dword_1DC287000, v99, OS_LOG_TYPE_DEBUG, "%s Rewrite message: %@", buf, 0x16u);
  }

  v100 = [CDMPostProcessUtils supplementaryOutputFromMatchingSpans:v51 rewriteMessage:v95 correctionOutcome:v65];
  [v67 setSupplementaryOutput:v100];

  v101 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
  {
    v108 = [v67 supplementaryOutput];
    *buf = 136315394;
    v149 = "+[CDMPostProcessUtils runPostProcess:snlcRequest:snlcResponse:nLv4Request:nLv4Response:uaapNLProtoResponse:catiProtoResponse:pscRequest:pscResponse:lvcResponse:overridesProtoResponse:mdRequest:mdResponse:mrRequest:mrResponse:spanProtoResponse:rdResponse:tokenProtoResponse:ssuResponse:ccqrResponse:correctionOutcome:nluRequest:graphInput:debugText:]";
    v150 = 2112;
    v151 = v108;
    _os_log_debug_impl(&dword_1DC287000, v101, OS_LOG_TYPE_DEBUG, "%s NLUResponse supplementaryOutput: %@", buf, 0x16u);
  }

  v102 = [CDMAssistantNLUResponse alloc];
  v103 = [v67 requestId];
  v104 = [v103 idA];
  v105 = [(CDMAssistantNLUResponse *)v102 initWithNLUResponse:v67 requestId:v104];

  v106 = *MEMORY[0x1E69E9840];

  return v105;
}

@end