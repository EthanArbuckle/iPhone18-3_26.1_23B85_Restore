@interface IPFeatureSentence
+ (_NSRange)_rangeExcludingLeadingAndTrailingCharacters:(id)a3 inRange:(_NSRange)a4 ofString:(id)a5;
+ (id)_substringWithRange:(_NSRange)a3 ofString:(id)a4 removingCharactersFromSet:(id)a5;
+ (id)bestLanguageIDFromText:(id)a3 linesElided:(unint64_t)a4;
+ (id)buildRegexForType:(id)a3 languageID:(id)a4;
+ (id)eventVocabularyIgnoreDateKeywordInString:(id)a3 languageID:(id)a4;
+ (id)eventVocabularyRegexForType:(id)a3 languageID:(id)a4;
+ (id)eventVocabularyRejectionKeywordInString:(id)a3 languageID:(id)a4;
+ (id)eventVocabularySubjectTitleInString:(id)a3 languageID:(id)a4;
+ (id)humanReadableFeaturePolarity:(unint64_t)a3;
+ (id)regexArrayForType:(id)a3 languageID:(id)a4;
+ (unint64_t)numberOfMatchesForEventVocabularySubjectTitleInString:(id)a3 languageID:(id)a4;
- (BOOL)isQuoteAttributionLine;
- (IPFeatureSentence)initWithLanguageID:(id)a3 responseKitSentence:(id)a4;
- (NSString)eventVocabularyIgnoreDateKeyword;
- (NSString)eventVocabularyRejectionKeyword;
- (id)description;
- (id)descriptionForFragment:(id)a3;
- (id)descriptionForFragmentAtIndex:(unint64_t)a3;
- (unint64_t)clusterType;
- (unint64_t)polarity;
- (unint64_t)polarityForRange:(_NSRange)a3 confidence:(double *)a4;
- (void)addFragment:(id)a3;
- (void)checkEventVocabularyKeywordsIfNeeded;
@end

@implementation IPFeatureSentence

- (IPFeatureSentence)initWithLanguageID:(id)a3 responseKitSentence:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IPFeatureSentence;
  v8 = [(IPFeatureSentence *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IPFeatureSentence *)v8 setLanguageID:v6];
    [(IPFeatureSentence *)v9 setResponseKitSentence:v7];
    [(IPFeatureSentence *)v9 setStoredPolarity:0];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = IPFeatureSentence;
  v4 = [(IPFeature *)&v9 description];
  v5 = [IPFeatureSentence humanReadableFeaturePolarity:[(IPFeatureSentence *)self storedPolarity]];
  v6 = [IPEventClassificationType humanReadableClusterType:[(IPFeatureSentence *)self clusterType]];
  v7 = [v3 stringWithFormat:@"%@ Polarity:%@ Cluster:%@", v4, v5, v6];

  return v7;
}

- (void)addFragment:(id)a3
{
  v7 = a3;
  if (!self->_fragments)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
    fragments = self->_fragments;
    self->_fragments = v4;
  }

  v6 = [(IPFeatureSentence *)self fragments];
  [v6 addObject:v7];
}

- (unint64_t)clusterType
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCA940]) initWithCapacity:5];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [(IPFeatureSentence *)self fragments];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v30 + 1) + 8 * i) clusterType];
        if (v10)
        {
          v11 = v10;
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
          [v3 addObject:v12];

          v7 |= v11 == 6;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
    if (v7)
    {
      v13 = 6;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v3;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v15)
  {

LABEL_26:
    v17 = v13;
    goto LABEL_27;
  }

  v16 = v15;
  v17 = 0;
  v18 = 0;
  v19 = *v27;
  do
  {
    for (j = 0; j != v16; ++j)
    {
      if (*v27 != v19)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v26 + 1) + 8 * j);
      v22 = [v21 integerValue];
      v23 = [v14 countForObject:v21];
      if (v22 != 6 && v23 > v18)
      {
        v17 = v22;
        v18 = v23;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
  }

  while (v16);

  if (!v17)
  {
    goto LABEL_26;
  }

LABEL_27:

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

- (unint64_t)polarityForRange:(_NSRange)a3 confidence:(double *)a4
{
  length = a3.length;
  location = a3.location;
  v49 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = [(IPFeatureSentence *)self fragments];
  v8 = [v7 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (!v8)
  {

    v16 = 0.0;
LABEL_24:
    if (a4)
    {
      *a4 = v16;
    }

    result = 1;
    goto LABEL_27;
  }

  v9 = v8;
  v40 = a4;
  v10 = 0;
  v11 = 0;
  v12 = *v43;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  do
  {
    v17 = 0;
    do
    {
      v18 = v10;
      if (*v43 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v19 = *(*(&v42 + 1) + 8 * v17);
      v51.location = [v19 range];
      v51.length = v20;
      v50.location = location;
      v50.length = length;
      v21 = NSIntersectionRange(v50, v51);
      v10 = v21.length != 0;
      if (v21.length)
      {
        [v19 probability_None];
        v23 = v22;
        [v19 probability_Rejection];
        v25 = v24;
        [v19 probability_Proposal];
        v27 = v26;
        [v19 probability_Confirmation];
        v29 = v28;
        if (IPDebuggingModeEnabled_once_1 != -1)
        {
          [IPFeatureSentence polarityForRange:confidence:];
        }

        v16 = v16 + v23;
        v15 = v15 + v25;
        v14 = v14 + v27;
        v13 = v13 + v29;
        ++v11;
        if (IPDebuggingModeEnabled_sEnabled_1 == 1)
        {
          v30 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v30 = _IPLogHandle;
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = v30;
            v32 = [(IPFeatureSentence *)self descriptionForFragment:v19];
            *buf = 138412290;
            v47 = v32;
            _os_log_impl(&dword_2485E4000, v31, OS_LOG_TYPE_INFO, "FRAGMENT: %@ #Generic", buf, 0xCu);
          }
        }
      }

      else if (v18)
      {
        goto LABEL_17;
      }

      ++v17;
    }

    while (v9 != v17);
    v9 = [v7 countByEnumeratingWithState:&v42 objects:v48 count:16];
  }

  while (v9);
LABEL_17:

  if (!v11)
  {
    a4 = v40;
    goto LABEL_24;
  }

  v33 = v11;
  v34 = v15 / v11;
  if (v34 > 0.35)
  {
    if (v40)
    {
      *v40 = v34;
    }

    result = 4;
    goto LABEL_27;
  }

  v37 = v14 / v33;
  v38 = v13 / v33;
  v39 = v13 / v33 + v14 / v33;
  a4 = v40;
  if (v39 < 0.66)
  {
    if (v37 > 0.54 && v37 > v38 && v37 > v34)
    {
      if (v40)
      {
        *v40 = v37;
      }

      result = 2;
      goto LABEL_27;
    }

    v16 = v16 / v33;
    if (v38 > 0.54 && v38 > v37 && v38 > v34)
    {
      if (v40)
      {
        *v40 = v38;
      }

      result = 3;
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (v40)
  {
    *v40 = v39;
  }

  if (v38 <= v37)
  {
    result = 2;
  }

  else
  {
    result = 3;
  }

LABEL_27:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)polarity
{
  if (![(IPFeatureSentence *)self storedPolarity])
  {
    v5 = 0.0;
    [(IPFeature *)self matchRange];
    [(IPFeatureSentence *)self setStoredPolarity:[(IPFeatureSentence *)self polarityForRange:0 confidence:v3, &v5]];
    [(IPFeature *)self setConfidence:v5];
  }

  return [(IPFeatureSentence *)self storedPolarity];
}

- (NSString)eventVocabularyRejectionKeyword
{
  [(IPFeatureSentence *)self checkEventVocabularyKeywordsIfNeeded];

  return [(IPFeatureSentence *)self storedEventVocabularyRejectionKeyword];
}

- (NSString)eventVocabularyIgnoreDateKeyword
{
  if (!self->_hasCheckedEventVocabularyIgnoreDateKeyword)
  {
    v3 = objc_opt_class();
    v4 = [(IPFeature *)self matchString];
    v5 = [(IPFeatureSentence *)self languageID];
    v6 = [v3 eventVocabularyIgnoreDateKeywordInString:v4 languageID:v5];
    [(IPFeatureSentence *)self setStoredEventVocabularyIgnoreDateKeyword:v6];

    self->_hasCheckedEventVocabularyIgnoreDateKeyword = 1;
  }

  return [(IPFeatureSentence *)self storedEventVocabularyIgnoreDateKeyword];
}

- (void)checkEventVocabularyKeywordsIfNeeded
{
  if (!self->_hasCheckedEventVocabularyKeyword)
  {
    self->_hasCheckedEventVocabularyKeyword = 1;
    v4 = objc_opt_class();
    v7 = [(IPFeature *)self matchString];
    v5 = [(IPFeatureSentence *)self languageID];
    v6 = [v4 eventVocabularyRejectionKeywordInString:v7 languageID:v5];
    [(IPFeatureSentence *)self setStoredEventVocabularyRejectionKeyword:v6];
  }
}

- (BOOL)isQuoteAttributionLine
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [IPRegexToolbox regularExpressionWithKey:@"isQuoteAttributionLine" generator:&__block_literal_global_7];
  v5 = [(IPFeature *)self matchString];
  if ([v4 rangeOfFirstMatchInString:v5 options:2 range:{0, objc_msgSend(v5, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  if (IPLocalizedString_once_0 != -1)
  {
    [IPFeatureSentence isQuoteAttributionLine];
  }

  v6 = [IPLocalizedString_bundle_0 localizedStringForKey:@"Sent" value:&stru_285AD0E88 table:@"DataDetectorsNaturalLanguage"];
  if ([v5 hasPrefix:v6])
  {

LABEL_9:
    v8 = 1;
    goto LABEL_10;
  }

  if (([v5 hasSuffix:@":\n"] & 1) != 0 || objc_msgSend(v5, "hasSuffix:", @":"))
  {
    v7 = [v5 containsString:@"@"];

    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (IPLocalizedString_once_0 != -1)
  {
    [IPFeatureSentence isQuoteAttributionLine];
  }

  v11 = [IPLocalizedString_bundle_0 localizedStringForKey:@"Sent" value:&stru_285AD0E88 table:@"DataDetectorsNaturalLanguage"];
  if ([v5 hasPrefix:v11])
  {
    v12 = v11;
  }

  else
  {
    if (IPLocalizedString_once_0 != -1)
    {
      [IPFeatureSentence isQuoteAttributionLine];
    }

    v13 = [IPLocalizedString_bundle_0 localizedStringForKey:@"Subject" value:&stru_285AD0E88 table:@"DataDetectorsNaturalLanguage"];
    if ([v5 hasPrefix:v13])
    {
      v12 = v13;
    }

    else
    {
      v12 = 0;
    }
  }

  v20 = v11;
  if (v12 && (v23 = 0u, v24 = 0u, v21 = 0u, v22 = 0u, (v14 = [&unk_285B0FC78 countByEnumeratingWithState:&v21 objects:v25 count:16]) != 0))
  {
    v15 = v14;
    v16 = *v22;
    v19 = v3;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(&unk_285B0FC78);
        }

        [v5 rangeOfString:*(*(&v21 + 1) + 8 * i) options:8 range:{objc_msgSend(v12, "length", v19, v20), objc_msgSend(v5, "length") - objc_msgSend(v12, "length")}];
        if (v18)
        {
          v8 = 1;
          v3 = v19;
          goto LABEL_34;
        }
      }

      v15 = [&unk_285B0FC78 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v8 = 0;
      v3 = v19;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_34:

LABEL_10:
  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

id __43__IPFeatureSentence_isQuoteAttributionLine__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"[ -\\/, ]2\\d{3}(.{0, 4}) \\d{1, 2}[:hH]\\d{2}()?(am|AM|pm|PM)?, ", @"在 2\\d{3}年\\d{1, 2}月\\d{1, 2}日，下午\\d{1, 2}:\\d{2}", 0}];
  v2 = MEMORY[0x277CCACA8];
  v3 = [v1 _pas_componentsJoinedByString:@"|"];
  v4 = [v2 stringWithFormat:@"\\b(%@)\\b", v3];

  v7 = 0;
  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v4 options:65 error:&v7];

  objc_autoreleasePoolPop(v0);

  return v5;
}

+ (id)regexArrayForType:(id)a3 languageID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Patterns-%@-%@", v5, v6];
  objc_autoreleasePoolPop(v7);
  v9 = [&unk_285B1A6A0 objectForKeyedSubscript:v8];

  return v9;
}

+ (id)buildRegexForType:(id)a3 languageID:(id)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:400];
  v9 = [a1 regexArrayForType:v6 languageID:@"common"];
  [v8 addObjectsFromArray:v9];

  v10 = [a1 regexArrayForType:v6 languageID:v7];
  [v8 addObjectsFromArray:v10];

  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = [v11 objectForKey:*MEMORY[0x277CBE6C8]];

  if (v12 != v7)
  {
    v13 = [a1 regexArrayForType:v6 languageID:v12];
    [v8 addObjectsFromArray:v13];
  }

  if (([v7 hasPrefix:@"zh"] & 1) != 0 || objc_msgSend(v12, "hasPrefix:", @"zh"))
  {
    v14 = [a1 regexArrayForType:v6 languageID:@"zh-Hans"];
    [v8 addObjectsFromArray:v14];

    v15 = [a1 regexArrayForType:v6 languageID:@"zh-Hant-TW"];
    [v8 addObjectsFromArray:v15];

    v16 = [a1 regexArrayForType:v6 languageID:@"zh-Hant-HK"];
    [v8 addObjectsFromArray:v16];
  }

  v17 = objc_autoreleasePoolPush();
  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v29[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v20 = [v8 sortedArrayUsingDescriptors:v19];

  objc_autoreleasePoolPop(v17);
  v21 = [IPRegexToolbox regexPatternForLanguageID:v7 eventVocabularyArray:v20];
  v22 = objc_autoreleasePoolPush();
  v28 = 0;
  v23 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v21 options:64 error:&v28];
  v24 = v28;
  objc_autoreleasePoolPop(v22);
  if (v24)
  {
    NSLog(&cfstr_CanTBuildRegex.isa, v6, v7, v24);
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)eventVocabularyRegexForType:(id)a3 languageID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [v8 objectForKey:*MEMORY[0x277CBE6C8]];

  if (!v7)
  {
    v7 = v9;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v6, v7];
  if (eventVocabularyRegexForType_languageID___pasOnceToken3 != -1)
  {
    +[IPFeatureSentence eventVocabularyRegexForType:languageID:];
  }

  v11 = [eventVocabularyRegexForType_languageID___pasExprOnceResult result];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__IPFeatureSentence_eventVocabularyRegexForType_languageID___block_invoke_139;
  v17[3] = &unk_278F23258;
  v21 = &v23;
  v12 = v10;
  v18 = v12;
  v22 = a1;
  v13 = v6;
  v19 = v13;
  v14 = v7;
  v20 = v14;
  [v11 runWithLockAcquired:v17];
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

void __60__IPFeatureSentence_eventVocabularyRegexForType_languageID___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_136 idleTimeout:1.0];
  v2 = eventVocabularyRegexForType_languageID___pasExprOnceResult;
  eventVocabularyRegexForType_languageID___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __60__IPFeatureSentence_eventVocabularyRegexForType_languageID___block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277D425F8]);
  v1 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:50];
  v2 = [v0 initWithGuardedData:v1];

  return v2;
}

void __60__IPFeatureSentence_eventVocabularyRegexForType_languageID___block_invoke_139(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:*(a1 + 32)];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [*(a1 + 64) buildRegexForType:*(a1 + 40) languageID:*(a1 + 48)];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(a1 + 56);
    if (*(*(v11 + 8) + 40))
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __60__IPFeatureSentence_eventVocabularyRegexForType_languageID___block_invoke_2_140;
      v12[3] = &unk_278F23230;
      v12[4] = v11;
      [v3 enumerateKeysAndObjectsUsingBlock:v12];
      [v3 setObject:*(*(*(a1 + 56) + 8) + 40) forKey:*(a1 + 32)];
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __60__IPFeatureSentence_eventVocabularyRegexForType_languageID___block_invoke_2_140(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([v7 isEqual:*(*(*(a1 + 32) + 8) + 40)])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

+ (_NSRange)_rangeExcludingLeadingAndTrailingCharacters:(id)a3 inRange:(_NSRange)a4 ofString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  v10 = 0;
  v11 = location + length;
  if (location + length)
  {
    while ([v8 characterIsMember:{objc_msgSend(v9, "characterAtIndex:", v10)}])
    {
      if (v11 == ++v10)
      {
        v10 = location + length;
        break;
      }
    }
  }

  v12 = location + length - v10;
  do
  {
    v13 = v12;
    if (v11 <= v10)
    {
      break;
    }

    v14 = [v8 characterIsMember:{objc_msgSend(v9, "characterAtIndex:", --v11)}];
    v12 = v13 - 1;
  }

  while ((v14 & 1) != 0);

  v15 = v10;
  v16 = v13;
  result.length = v16;
  result.location = v15;
  return result;
}

+ (id)_substringWithRange:(_NSRange)a3 ofString:(id)a4 removingCharactersFromSet:(id)a5
{
  length = a3.length;
  location = a3.location;
  v8 = a4;
  v9 = a5;
  if (length && (v10 = [v8 rangeOfCharacterFromSet:v9 options:2 range:{location, length}], v10 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v13 = v10;
    v14 = v11;
    v24 = v9;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = location + length;
    v19 = 2 * length - 2;
    do
    {
      if (!v17)
      {
        v17 = malloc_type_malloc(v19, 0x115897uLL);
        v15 = v19;
        if (!v17)
        {
          +[IPFeatureSentence _substringWithRange:ofString:removingCharactersFromSet:];
        }
      }

      [v8 getCharacters:&v17[2 * v16] range:{location, v13 - location}];
      v16 += v13 - location;
      location = v13 + v14;
      v20 = v18 - (v13 + v14);
      v13 = [v8 rangeOfCharacterFromSet:v24 options:2 range:{v13 + v14, v20}];
      v14 = v21;
    }

    while (v13 != 0x7FFFFFFFFFFFFFFFLL);
    [v8 getCharacters:&v17[2 * v16] range:{location, v20}];
    v22 = v20 + v16;
    if (v20 + v16)
    {
      if (2 * v22 >= v15)
      {
        v9 = v24;
      }

      else
      {
        v17 = malloc_type_realloc(v17, 2 * v22, 0x1000040BDFB0063uLL);
        v9 = v24;
        if (!v17)
        {
          +[IPFeatureSentence _substringWithRange:ofString:removingCharactersFromSet:];
        }
      }

      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:v17 length:v20 + v16 freeWhenDone:1];
    }

    else
    {
      free(v17);
      v12 = &stru_285AD0E88;
      v9 = v24;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)bestLanguageIDFromText:(id)a3 linesElided:(unint64_t)a4
{
  v6 = a3;
  if (bestLanguageIDFromText_linesElided___onceToken != -1)
  {
    +[IPFeatureSentence bestLanguageIDFromText:linesElided:];
  }

  v7 = bestLanguageIDFromText_linesElided___ipExprOnceResult;
  objc_sync_enter(v7);
  v8 = [v7 objectForKey:v6];
  if (v8)
  {
    v9 = v8;
    objc_sync_exit(v7);
  }

  else
  {
    objc_sync_exit(v7);

    v10 = objc_autoreleasePoolPush();
    v11 = v6;
    v12 = [(__CFString *)v11 length];
    v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    location = [a1 _rangeExcludingLeadingAndTrailingCharacters:v13 inRange:0 ofString:{v12, v11}];
    length = v15;

    if (a4 <= 1 && [(__CFString *)v11 rangeOfString:@"\n" options:2 range:location, length]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      v39 = a4;
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = location + length;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __56__IPFeatureSentence_bestLanguageIDFromText_linesElided___block_invoke_2;
      v31[3] = &unk_278F23280;
      v31[4] = &v36;
      v31[5] = &v32;
      [(__CFString *)v11 enumerateSubstringsInRange:location options:length usingBlock:256, v31];
      if (v37[3] >= 5)
      {
        v43.length = v33[3];
        v41.location = location;
        v41.length = length;
        v43.location = 0;
        v17 = NSIntersectionRange(v41, v43);
        location = v17.location;
        length = v17.length;
      }

      _Block_object_dispose(&v32, 8);
      _Block_object_dispose(&v36, 8);
    }

    if (length >= 0x200)
    {
      v18 = 512;
    }

    else
    {
      v18 = length;
    }

    v19 = objc_autoreleasePoolPush();
    v20 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-–—_"];
    objc_autoreleasePoolPop(v19);
    v21 = [a1 _rangeExcludingLeadingAndTrailingCharacters:v20 inRange:location ofString:{v18, v11}];
    v23 = v22;
    v24 = [a1 _substringWithRange:v21 ofString:v22 removingCharactersFromSet:{v11, v20}];
    v25 = v24;
    if (v24)
    {
      v23 = [v24 length];
      v26 = v25;

      v21 = 0;
    }

    else
    {
      v26 = v11;
    }

    v42.location = v21;
    v42.length = v23;
    v27 = CFStringTokenizerCopyBestStringLanguage(v26, v42);
    if (!v27)
    {
      v28 = [MEMORY[0x277CBEAF8] currentLocale];
      v27 = [v28 objectForKey:*MEMORY[0x277CBE6C8]];
    }

    if ([(__CFString *)v27 isEqualToString:@"yue"])
    {

      v27 = @"zh-Hant";
    }

    v29 = v7;
    objc_sync_enter(v29);
    if ([v29 count] >= 5)
    {
      [v29 removeAllObjects];
    }

    [v29 setObject:v27 forKey:v11];
    objc_sync_exit(v29);

    objc_autoreleasePoolPop(v10);
    v9 = v27;
  }

  return v9;
}

void __56__IPFeatureSentence_bestLanguageIDFromText_linesElided___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:517 valueOptions:0];
  v2 = bestLanguageIDFromText_linesElided___ipExprOnceResult;
  bestLanguageIDFromText_linesElided___ipExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

uint64_t __56__IPFeatureSentence_bestLanguageIDFromText_linesElided___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = ++*(*(*(result + 32) + 8) + 24);
  if (v7 == 2)
  {
    *(*(*(result + 40) + 8) + 24) = a3;
  }

  else if (v7 >= 5)
  {
    *a7 = 1;
  }

  return result;
}

+ (id)eventVocabularyRejectionKeywordInString:(id)a3 languageID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    if (!v7)
    {
      v7 = [a1 bestLanguageIDFromText:v6];
    }

    v8 = [a1 eventVocabularyRejectionRegexForLanguageID:v7];
    v9 = [IPRegexToolbox firstMatchingKeywordForRegex:v8 inString:v6 needsToLowercase:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)eventVocabularyIgnoreDateKeywordInString:(id)a3 languageID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    if (!v7)
    {
      v7 = [a1 bestLanguageIDFromText:v6];
    }

    v8 = [a1 eventVocabularyIgnoreDateRegexForLanguageID:v7];
    v9 = [IPRegexToolbox firstMatchingKeywordForRegex:v8 inString:v6 needsToLowercase:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)eventVocabularySubjectTitleInString:(id)a3 languageID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    if (!v7)
    {
      v7 = [a1 bestLanguageIDFromText:v6];
    }

    v8 = [a1 eventVocabularySubjectTitleRegexForLanguageID:v7];
    v9 = [IPRegexToolbox firstMatchingKeywordForRegex:v8 inString:v6 needsToLowercase:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (unint64_t)numberOfMatchesForEventVocabularySubjectTitleInString:(id)a3 languageID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    if (!v7)
    {
      v7 = [a1 bestLanguageIDFromText:v6];
    }

    v8 = [a1 eventVocabularySubjectTitleRegexForLanguageID:v7];
    v9 = [IPRegexToolbox numberOfMatchesForRegex:v8 inString:v6 needsToLowercase:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)descriptionForFragment:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(IPFeature *)self matchString];
  v7 = [v5 range];
  v9 = [v6 substringWithRange:{v7, v8}];
  v10 = [v4 stringWithFormat:@"[%@]   %@", v9, v5];

  return v10;
}

- (id)descriptionForFragmentAtIndex:(unint64_t)a3
{
  v5 = [(IPFeatureSentence *)self fragments];
  v6 = [v5 objectAtIndexedSubscript:a3];
  v7 = [(IPFeatureSentence *)self descriptionForFragment:v6];

  return v7;
}

+ (id)humanReadableFeaturePolarity:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return @"undefined";
  }

  else
  {
    return off_278F232A0[a3 - 1];
  }
}

@end