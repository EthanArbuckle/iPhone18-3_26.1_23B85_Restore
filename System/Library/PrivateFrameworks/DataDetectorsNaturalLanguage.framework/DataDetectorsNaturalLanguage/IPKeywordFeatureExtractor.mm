@interface IPKeywordFeatureExtractor
- (id)_matchingKeywordsForRegex:(id)regex inText:(id)text message:(id)message eventType:(id)type keywordType:(unint64_t)keywordType;
- (id)featuresForTextString:(id)string inMessageUnit:(id)unit context:(id)context;
- (id)matchesForTextString:(id)string inMessageUnit:(id)unit eventType:(id)type;
- (id)matchesForTextString:(id)string inMessageUnit:(id)unit eventType:(id)type keywordType:(unint64_t)keywordType;
- (id)queue;
@end

@implementation IPKeywordFeatureExtractor

- (id)featuresForTextString:(id)string inMessageUnit:(id)unit context:(id)context
{
  v55 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  unitCopy = unit;
  contextCopy = context;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = unitCopy;
  bestLanguageID = [unitCopy bestLanguageID];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v34 = [&unk_285B08CB8 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v34)
  {
    v32 = *v50;
    do
    {
      v9 = 0;
      do
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(&unk_285B08CB8);
        }

        v37 = v9;
        v10 = *(*(&v49 + 1) + 8 * v9);
        context = objc_autoreleasePoolPush();
        v35 = +[IPEventClassificationType taxonomyForLanguageID:clusterType:](IPEventClassificationType, "taxonomyForLanguageID:clusterType:", bestLanguageID, [v10 integerValue]);
        v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v35, 0}];
        if ([v11 count])
        {
          v38 = v11;
          do
          {
            v12 = objc_autoreleasePoolPush();
            firstObject = [v11 firstObject];
            [v11 removeObjectAtIndex:0];
            v14 = [(IPKeywordFeatureExtractor *)self matchesForTextString:stringCopy inMessageUnit:v40 eventType:firstObject];
            if ([v14 count])
            {
              v42 = v14;
              v43 = v12;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              obj = v14;
              v15 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v46;
                do
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v46 != v17)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v19 = *(*(&v45 + 1) + 8 * i);
                    v20 = objc_autoreleasePoolPush();
                    v21 = MEMORY[0x277CCACA8];
                    matchRange = [v19 matchRange];
                    [v19 matchRange];
                    v24 = [v21 stringWithFormat:@"%lu-%lu-%lu", matchRange, v23, objc_msgSend(v19, "type")];
                    v25 = [v8 objectForKeyedSubscript:v24];

                    if (!v25)
                    {
                      [v8 setObject:v19 forKeyedSubscript:v24];
                    }

                    v26 = [v8 objectForKeyedSubscript:v24];
                    [v26 addEventType:firstObject];

                    objc_autoreleasePoolPop(v20);
                  }

                  v16 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
                }

                while (v16);
              }

              children = [firstObject children];
              v11 = v38;
              [v38 addObjectsFromArray:children];

              v14 = v42;
              v12 = v43;
            }

            objc_autoreleasePoolPop(v12);
          }

          while ([v11 count]);
        }

        objc_autoreleasePoolPop(context);
        v9 = v37 + 1;
      }

      while (v37 + 1 != v34);
      v34 = [&unk_285B08CB8 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v34);
  }

  allValues = [v8 allValues];

  v29 = *MEMORY[0x277D85DE8];

  return allValues;
}

- (id)matchesForTextString:(id)string inMessageUnit:(id)unit eventType:(id)type
{
  v72 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  unitCopy = unit;
  typeCopy = type;
  v11 = [(IPKeywordFeatureExtractor *)self matchesForTextString:stringCopy inMessageUnit:unitCopy eventType:typeCopy keywordType:2];
  v51 = [v11 mutableCopy];

  v45 = stringCopy;
  selfCopy = self;
  v43 = typeCopy;
  v44 = unitCopy;
  [(IPKeywordFeatureExtractor *)self matchesForTextString:stringCopy inMessageUnit:unitCopy eventType:typeCopy keywordType:0];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v67 = 0u;
  v12 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v12)
  {
    v13 = v12;
    v49 = *v65;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v65 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v64 + 1) + 8 * i);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v16 = v51;
        v17 = [v16 countByEnumeratingWithState:&v60 objects:v70 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v61;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v61 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v60 + 1) + 8 * j);
              matchRange = [v15 matchRange];
              v24 = v23;
              v76.location = [v21 matchRange];
              v76.length = v25;
              v74.location = matchRange;
              v74.length = v24;
              if (NSIntersectionRange(v74, v76).length)
              {

                goto LABEL_16;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v60 objects:v70 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        [v16 addObject:v15];
LABEL_16:
        ;
      }

      v13 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v13);
  }

  [(IPKeywordFeatureExtractor *)selfCopy matchesForTextString:v45 inMessageUnit:v44 eventType:v43 keywordType:1];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v47 = v59 = 0u;
  v26 = [v47 countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v26)
  {
    v27 = v26;
    v50 = *v57;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v57 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v29 = *(*(&v56 + 1) + 8 * k);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v30 = v51;
        v31 = [v30 countByEnumeratingWithState:&v52 objects:v68 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v53;
          while (2)
          {
            for (m = 0; m != v32; ++m)
            {
              if (*v53 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v52 + 1) + 8 * m);
              matchRange2 = [v29 matchRange];
              v38 = v37;
              v77.location = [v35 matchRange];
              v77.length = v39;
              v75.location = matchRange2;
              v75.length = v38;
              if (NSIntersectionRange(v75, v77).length)
              {

                goto LABEL_33;
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v52 objects:v68 count:16];
            if (v32)
            {
              continue;
            }

            break;
          }
        }

        [v30 addObject:v29];
LABEL_33:
        ;
      }

      v27 = [v47 countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v27);
  }

  v40 = [v51 copy];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)matchesForTextString:(id)string inMessageUnit:(id)unit eventType:(id)type keywordType:(unint64_t)keywordType
{
  stringCopy = string;
  unitCopy = unit;
  typeCopy = type;
  v13 = typeCopy;
  switch(keywordType)
  {
    case 2uLL:
      titleKeywords = [typeCopy titleKeywords];
      goto LABEL_7;
    case 1uLL:
      titleKeywords = [typeCopy genericPatternKeywords];
      goto LABEL_7;
    case 0uLL:
      titleKeywords = [typeCopy patternKeywords];
LABEL_7:
      v15 = titleKeywords;
      goto LABEL_9;
  }

  v15 = MEMORY[0x277CBEBF8];
LABEL_9:
  if ([v15 count])
  {
    v16 = MEMORY[0x277CCACA8];
    identifier = [v13 identifier];
    language = [v13 language];
    keywordType = [v16 stringWithFormat:@"%@-%@-%@-%lu", identifier, language, @"keywords", keywordType];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __86__IPKeywordFeatureExtractor_matchesForTextString_inMessageUnit_eventType_keywordType___block_invoke;
    v25[3] = &unk_278F23030;
    v20 = v13;
    v26 = v20;
    v27 = v15;
    v21 = [IPRegexToolbox regularExpressionWithKey:keywordType generator:v25];
    originalMessage = [unitCopy originalMessage];
    v23 = [(IPKeywordFeatureExtractor *)self _matchingKeywordsForRegex:v21 inText:stringCopy message:originalMessage eventType:v20 keywordType:keywordType];
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  return v23;
}

id __86__IPKeywordFeatureExtractor_matchesForTextString_inMessageUnit_eventType_keywordType___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) language];
  v3 = [IPRegexToolbox regexPatternForLanguageID:v2 eventVocabularyArray:*(a1 + 40)];

  v13 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v3 options:64 error:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v6 = _IPLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 language];
      v10 = [*(a1 + 32) identifier];
      *buf = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v3;
      _os_log_impl(&dword_2485E4000, v8, OS_LOG_TYPE_ERROR, "Can't compile regex: [language=%{public}@ identifier=%{public}@]\n%{public}@ #EventClassification", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_matchingKeywordsForRegex:(id)regex inText:(id)text message:(id)message eventType:(id)type keywordType:(unint64_t)keywordType
{
  v46 = *MEMORY[0x277D85DE8];
  regexCopy = regex;
  textCopy = text;
  typeCopy = type;
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = regexCopy;
  [IPRegexToolbox matchingKeywordResultsForRegex:regexCopy inString:textCopy needsToLowercase:0];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v11 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v40;
    do
    {
      v14 = 0;
      do
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v39 + 1) + 8 * v14);
        range = [v15 range];
        if (![IPRegexToolbox isRangeInsideQuotationMarks:range text:v17 limitToSurroundingText:textCopy, 1])
        {
          range2 = [v15 range];
          v20 = v19;
          language = [typeCopy language];
          v22 = [IPRegexToolbox isRangeNearbyExclusionKeyword:range2 text:v20 limitToSurroundingText:textCopy language:1, language];

          if (!v22)
          {
            range3 = [v15 range];
            v24 = [textCopy substringWithRange:{range3, v29}];
            range4 = [v15 range];
            v27 = [IPFeatureKeyword featureKeywordWithType:keywordType string:v24 matchRange:range4, v31];
            [v27 setTextUnit:textCopy];
            [v36 addObject:v27];
            goto LABEL_16;
          }

          if (IPDebuggingModeEnabled_once_0 != -1)
          {
            [IPKeywordFeatureExtractor _matchingKeywordsForRegex:inText:message:eventType:keywordType:];
          }

          if (IPDebuggingModeEnabled_sEnabled_0 == 1)
          {
            v23 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging();
              v23 = _IPLogHandle;
            }

            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = v23;
              range5 = [v15 range];
              v27 = [textCopy substringWithRange:{range5, v26}];
              *buf = 138412290;
              v44 = v27;
              _os_log_impl(&dword_2485E4000, v24, OS_LOG_TYPE_INFO, "      --> not counted because too close to an exclusion keyword [%@] #EventClassification", buf, 0xCu);
LABEL_16:
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v12);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)queue
{
  if (queue__onceToken != -1)
  {
    [IPKeywordFeatureExtractor queue];
  }

  v3 = queue__ipExprOnceResult;

  return v3;
}

void __34__IPKeywordFeatureExtractor_queue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("IPKeywordFeatureExtractor", v1);
  v3 = queue__ipExprOnceResult;
  queue__ipExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

@end