@interface IPEventClassificationType
+ (double)_averageDistanceBetweenFeatureKeyword:(id)a3 featureDates:(id)a4 subjectLength:(unint64_t)a5 inSubject:(BOOL)a6;
+ (double)_scoreForKeywordsInSubject:(BOOL)a3 distanceToDates:(double)result polarity:(unint64_t)a5 matchedRatio:(double)a6 keywordType:(unint64_t)a7;
+ (id)_dateComponentsFromTaxonomyHHMMString:(id)a3;
+ (id)_identifierForCluster:(unint64_t)a3;
+ (id)_identifiersForClusters:(id)a3;
+ (id)_loadTaxonomyForLanguageID:(id)a3 clusterIdentifier:(id)a4 error:(id *)a5;
+ (id)_parentFromIdentifier:(id)a3;
+ (id)allClusterIdentifiers;
+ (id)cleanSubject:(id)a3;
+ (id)eventClassificationTypeFromMessageUnit:(id)a3 detectedStartDate:(id)a4;
+ (id)eventClassificationTypeFromMessageUnit:(id)a3 features:(id)a4;
+ (id)eventClassificationTypeFromMessageUnit:(id)a3 features:(id)a4 datafeatures:(id)a5;
+ (id)eventClassificationTypeFromMessageUnit:(id)a3 keywordFeatures:(id)a4 datafeatures:(id)a5;
+ (id)eventTypeForCultureAndLanguageID:(id)a3;
+ (id)eventTypeForMealsAndLanguageID:(id)a3;
+ (id)eventTypeForMoviesAndLanguageID:(id)a3;
+ (id)eventTypeForSportAndLanguageID:(id)a3;
+ (id)fallbackEventTitleForMessageUnits:(id)a3 subject:(id)a4 checkForDateInSubject:(BOOL)a5;
+ (id)humanReadableClusterType:(unint64_t)a3;
+ (id)morePreciseEventClassificationTypeBetweenType:(id)a3 and:(id)a4;
+ (id)taxonomyForLanguageID:(id)a3 clusterIdentifier:(id)a4;
+ (id)taxonomyForLanguageID:(id)a3 clusterType:(unint64_t)a4;
+ (id)titleGenerationModelPredictionForMessageUnits:(id)a3;
- (BOOL)_isAParentOf:(id)a3;
- (BOOL)isDateWithinRange:(id)a3;
- (BOOL)prefersTitleSenderDecoration;
- (BOOL)questionMarkInString:(id)a3;
- (IPEventClassificationType)initWithIdentifier:(id)a3 language:(id)a4 patternKeywords:(id)a5 titleKeywords:(id)a6 subjectKeywords:(id)a7 defaultTitle:(id)a8 titleSenderTemplate:(id)a9 defaultStartingTimeHour:(int)a10 defaultStartingTimeMinutes:(int)a11 defaultDuration:(double)a12 preferedMeridian:(unint64_t)a13 parent:(id)a14 children:(id)a15 useForTimeAdjustement:(BOOL)a16 minutesBeforeDefaultStartingTime:(double)a17 minutesAfterDefaultStartingTime:(double)a18 allDayAllowed:(BOOL)a19 useGenericPatternsInClassification:(BOOL)a20 movieRelated:(BOOL)a21 mealRelated:(BOOL)a22 cultureRelated:(BOOL)a23 sportRelated:(BOOL)a24 fairlyGeneric:(BOOL)a25 appointmentRelated:(BOOL)a26;
- (IPEventClassificationType)parent;
- (double)_hasPriorityOverEventType:(id)a3;
- (id)_mealClassificationTypeUsingStartDate:(id)a3;
- (id)adjustedEventClassificationTypeWithStartDate:(id)a3;
- (id)adjustedEventTitleForMessageUnits:(id)a3;
- (id)adjustedEventTitleForMessageUnits:(id)a3 subject:(id)a4 dateInSubject:(id)a5 eventStartDate:(id)a6 useTitleGenerationModel:(BOOL)a7 isGeneratedFromSubject:(BOOL *)a8 isGeneratedFromTitleGenerationModel:(BOOL *)a9;
- (id)adjustedEventTitleForMessageUnits:(id)a3 subject:(id)a4 isDateInSubject:(BOOL)a5;
- (id)dateWithoutTime:(id)a3;
- (id)decoratedTitleFromTitle:(id)a3 participantName:(id)a4 isTitleSenderDecorated:(BOOL *)a5;
- (id)description;
- (id)properCasedTitleForTitle:(id)a3 locale:(id)a4;
- (unint64_t)classificationDepth;
- (void)_addChild:(id)a3;
- (void)_addParent:(id)a3;
- (void)_addUpperPriorityEventTypeIdentifier:(id)a3 weight:(id)a4;
- (void)addEventPatterns:(id)a3;
@end

@implementation IPEventClassificationType

- (IPEventClassificationType)initWithIdentifier:(id)a3 language:(id)a4 patternKeywords:(id)a5 titleKeywords:(id)a6 subjectKeywords:(id)a7 defaultTitle:(id)a8 titleSenderTemplate:(id)a9 defaultStartingTimeHour:(int)a10 defaultStartingTimeMinutes:(int)a11 defaultDuration:(double)a12 preferedMeridian:(unint64_t)a13 parent:(id)a14 children:(id)a15 useForTimeAdjustement:(BOOL)a16 minutesBeforeDefaultStartingTime:(double)a17 minutesAfterDefaultStartingTime:(double)a18 allDayAllowed:(BOOL)a19 useGenericPatternsInClassification:(BOOL)a20 movieRelated:(BOOL)a21 mealRelated:(BOOL)a22 cultureRelated:(BOOL)a23 sportRelated:(BOOL)a24 fairlyGeneric:(BOOL)a25 appointmentRelated:(BOOL)a26
{
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v59 = a14;
  v42 = a15;
  v60.receiver = self;
  v60.super_class = IPEventClassificationType;
  v43 = [(IPEventClassificationType *)&v60 init];
  v44 = v43;
  if (v43)
  {
    v58 = v39;
    [(IPEventClassificationType *)v43 setClassificationDepth:0];
    v57 = v35;
    [(IPEventClassificationType *)v44 setIdentifier:v35];
    [(IPEventClassificationType *)v44 setLanguage:v36];
    v56 = v37;
    v45 = [v37 mutableCopy];
    [(IPEventClassificationType *)v44 setPatternKeywords:v45];

    [(IPEventClassificationType *)v44 setTitleKeywords:v38];
    v46 = v40;
    [(IPEventClassificationType *)v44 setDefaultTitle:v40];
    [(IPEventClassificationType *)v44 setTitleSenderTemplate:v41];
    [(IPEventClassificationType *)v44 setDefaultStartingTimeHour:a10];
    [(IPEventClassificationType *)v44 setDefaultStartingTimeMinutes:a11];
    [(IPEventClassificationType *)v44 setDefaultCumulativeMinutes:(a11 + 60 * a10)];
    [(IPEventClassificationType *)v44 setDefaultDuration:a12];
    [(IPEventClassificationType *)v44 setPreferedMeridian:a13];
    [(IPEventClassificationType *)v44 setParent:v59];
    if (v42)
    {
      v47 = [v42 mutableCopy];
    }

    else
    {
      v42 = 0;
      v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v48 = v47;
    [(IPEventClassificationType *)v44 setChildren:v47];

    [(IPEventClassificationType *)v44 setUseForTimeAdjustement:a16];
    [(IPEventClassificationType *)v44 setMinutesBeforeDefaultStartingTime:a17];
    [(IPEventClassificationType *)v44 setMinutesAfterDefaultStartingTime:a18];
    [(IPEventClassificationType *)v44 setAllDayAllowed:a19];
    v49 = [v39 mutableCopy];
    [(IPEventClassificationType *)v44 setSubjectKeywords:v49];

    v50 = objc_opt_new();
    [(IPEventClassificationType *)v44 setUpperPriorityEventTypesIdentifiers:v50];

    v51 = objc_opt_new();
    [(IPEventClassificationType *)v44 setGenericPatternKeywords:v51];

    if (v40 && a20 && [v40 length])
    {
      v52 = [(IPEventClassificationType *)v44 genericPatternKeywords];
      v53 = [(IPEventClassificationType *)v44 defaultTitle];
      v54 = [v53 lowercaseString];
      [v52 addObject:v54];

      v40 = v46;
    }

    v44->_movieRelated = a21;
    v44->_mealRelated = a22;
    v44->_cultureRelated = a23;
    v44->_sportRelated = a24;
    v44->_fairlyGeneric = a25;
    v44->_isAppointment = a26;
    v37 = v56;
    v35 = v57;
    v39 = v58;
  }

  return v44;
}

- (void)addEventPatterns:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{2 * objc_msgSend(v3, "count")}];
  [v4 addObjectsFromArray:v3];
  v5 = objc_opt_new();
  if ([v3 count])
  {
    v6 = 0;
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [v3 objectAtIndexedSubscript:v6];
      if ([v8 length] <= 0x11 && (objc_msgSend(v8, "containsString:", @"{") & 1) == 0)
      {
        if ([v8 containsString:@" "])
        {
          v9 = [v8 stringByReplacingOccurrencesOfString:@" " withString:@"()"];
          [v5 addObject:v9];
        }

        else
        {
          v9 = [@"#?" stringByAppendingString:v8];
          [v4 setObject:v9 atIndexedSubscript:v6];
        }
      }

      objc_autoreleasePoolPop(v7);
      ++v6;
    }

    while (v6 < [v3 count]);
  }

  if ([v5 count] >= 6)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = [IPRegexToolbox regexPatternWithPrefix:@"#(?:") suffix:CFSTR(")" choices:v5];
    [v4 addObject:v19];

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [@"#" stringByAppendingString:v15];
          [v4 addObject:v17];

          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }
  }

  v20 = [(IPEventClassificationType *)self titleKeywords];

  if (!v20)
  {
    v21 = objc_opt_new();
    [(IPEventClassificationType *)self setTitleKeywords:v21];
  }

  v22 = [(IPEventClassificationType *)self titleKeywords];
  [v22 addObjectsFromArray:v4];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(IPEventClassificationType *)self parent];

  if (v6)
  {
    v7 = [(IPEventClassificationType *)self parent];
    v8 = [v7 identifier];
    [v3 addObject:v8];
  }

  v39 = v3;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = [(IPEventClassificationType *)self children];
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v44 + 1) + 8 * i) identifier];
        [v4 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v11);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = [(IPEventClassificationType *)self upperPriorityEventTypesIdentifiers];
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v41;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v5 addObject:*(*(&v40 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v17);
  }

  v37 = MEMORY[0x277CCACA8];
  v36 = [(IPEventClassificationType *)self identifier];
  v35 = [(IPEventClassificationType *)self language];
  v34 = [(IPEventClassificationType *)self defaultTitle];
  v33 = [(IPEventClassificationType *)self defaultStartingTimeHour];
  v32 = [(IPEventClassificationType *)self defaultStartingTimeMinutes];
  [(IPEventClassificationType *)self defaultDuration];
  v31 = (v20 / 60.0);
  v30 = [(IPEventClassificationType *)self isHighPriority];
  v21 = [(IPEventClassificationType *)self isLowPriority];
  v22 = [(IPEventClassificationType *)self isAllDayAllowed];
  v23 = [(IPEventClassificationType *)self useForTimeAdjustement];
  v24 = [(IPEventClassificationType *)self patternKeywords];
  v25 = [(IPEventClassificationType *)self titleKeywords];
  v26 = [(IPEventClassificationType *)self subjectKeywords];
  v27 = [(IPEventClassificationType *)self genericPatternKeywords];
  v38 = [v37 stringWithFormat:@"Identifier : %@\nLanguage : %@\nTitle : %@\nStartHour : %d, StartMin : %d\nDuration : %d min\nParents : %@\nChildren : %@\nUpper Priorities : %@\nHigh Priority : %d\nLow Priority : %d\nAll Day Allowed : %d\nUse for time adjustement : %d\nPattern Keywords : %@\nTitle Keywords : %@\nSubject keywords : %@\nGeneric Keywords : %@", v36, v35, v34, v33, v32, v31, v39, v4, v5, v30, v21, v22, v23, v24, v25, v26, v27];

  v28 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)_addChild:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(IPEventClassificationType *)self children];
    [v5 addObject:v4];
  }
}

- (void)_addParent:(id)a3
{
  if (a3)
  {
    [(IPEventClassificationType *)self setParent:?];
  }
}

- (void)_addUpperPriorityEventTypeIdentifier:(id)a3 weight:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(IPEventClassificationType *)self upperPriorityEventTypesIdentifiers];
    [v8 setObject:v6 forKeyedSubscript:v7];
  }
}

- (id)adjustedEventClassificationTypeWithStartDate:(id)a3
{
  v4 = a3;
  if (v4 && (-[IPEventClassificationType identifier](self, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:@"GATHERING::MEAL"], v5, v6))
  {
    v7 = [(IPEventClassificationType *)self _mealClassificationTypeUsingStartDate:v4];
  }

  else
  {
    v7 = self;
  }

  v8 = v7;

  return v8;
}

- (id)adjustedEventTitleForMessageUnits:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v5 originalMessage];

  v7 = [v6 subject];
  v8 = [(IPEventClassificationType *)self adjustedEventTitleForMessageUnits:v4 subject:v7 dateInSubject:0 eventStartDate:0 isGeneratedFromSubject:0];

  return v8;
}

- (BOOL)prefersTitleSenderDecoration
{
  if ([(IPEventClassificationType *)self isMealRelated])
  {
    return 1;
  }

  v4 = [(IPEventClassificationType *)self identifier];
  if ([v4 hasPrefix:@"GATHERING::PARTY"])
  {
    v3 = 1;
  }

  else
  {
    v5 = [(IPEventClassificationType *)self identifier];
    if ([v5 hasPrefix:@"GATHERING::DRINKS"])
    {
      v3 = 1;
    }

    else
    {
      v6 = [(IPEventClassificationType *)self identifier];
      v3 = [v6 hasPrefix:@"GATHERING::BBQ"];
    }
  }

  return v3;
}

- (id)decoratedTitleFromTitle:(id)a3 participantName:(id)a4 isTitleSenderDecorated:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  if (![v9 length] || !objc_msgSend(v8, "length"))
  {
    v16 = v8;
    goto LABEL_21;
  }

  v10 = self;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    do
    {
      v13 = v12;
      v14 = [v12 titleSenderTemplate];
      v12 = [v12 parent];

      v15 = v14 == 0;
    }

    while (!v14 && v12);
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v15 = 1;
  }

  if (v15 && !v12)
  {
    v17 = [(IPEventClassificationType *)v11 language];
    v12 = [IPEventClassificationType eventTypeForGenericEventAndLanguageID:v17];

    v14 = [v12 titleSenderTemplate];
  }

  v18 = [(IPEventClassificationType *)v11 titleSenderTemplate];

  if (!v18 && v14)
  {
    [(IPEventClassificationType *)v11 setTitleSenderTemplate:v14];
LABEL_17:
    if (a5)
    {
      *a5 = 1;
    }

    v26 = _PASValidatedFormat(v14, v19, v20, v21, v22, v23, v24, v25, v8);
    goto LABEL_20;
  }

  if (v14)
  {
    goto LABEL_17;
  }

  v26 = v8;
LABEL_20:
  v16 = v26;

LABEL_21:

  return v16;
}

- (id)properCasedTitleForTitle:(id)a3 locale:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 hasPrefix:@"#"];
  v8 = v5;
  v9 = v8;
  v10 = v8;
  if ((v7 & 1) == 0)
  {
    v11 = [v8 lowercaseStringWithLocale:v6];
    v12 = [v11 isEqualToString:v9];

    v10 = v9;
    if (v12)
    {
      v10 = [v9 capitalizedStringWithLocale:v6];
    }
  }

  return v10;
}

- (id)adjustedEventTitleForMessageUnits:(id)a3 subject:(id)a4 dateInSubject:(id)a5 eventStartDate:(id)a6 useTitleGenerationModel:(BOOL)a7 isGeneratedFromSubject:(BOOL *)a8 isGeneratedFromTitleGenerationModel:(BOOL *)a9
{
  v9 = a7;
  v112 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (!v9 || ([IPEventClassificationType titleGenerationModelPredictionForMessageUnits:v14], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v102 = [(IPEventClassificationType *)self defaultTitle];
    v20 = [v14 firstObject];
    v21 = [v20 originalMessage];

    v22 = MEMORY[0x277CBEAF8];
    v23 = [(IPEventClassificationType *)self language];
    v24 = [v22 localeWithLocaleIdentifier:v23];

    v101 = v21;
    v25 = [v21 type];
    v26 = IPMessageTypeShortMessage;

    v27 = [(IPEventClassificationType *)self defaultTitle];
    v28 = v27;
    if (v27)
    {
      if (!v15 || v16 || v25 == v26)
      {

LABEL_20:
        v41 = 0;
        v42 = 0;
        goto LABEL_25;
      }

      v29 = [(IPEventClassificationType *)self questionMarkInString:v15];

      if (v29)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v30 = v24;
      v31 = v17;
      v32 = [(IPEventClassificationType *)self subjectKeywords];
      v33 = [v32 count];
      if (!v15 || !v33 || v16 || v25 == v26)
      {

        v41 = 0;
        v42 = 0;
        v17 = v31;
        v24 = v30;
        goto LABEL_25;
      }

      v34 = [(IPEventClassificationType *)self questionMarkInString:v15];

      v17 = v31;
      v24 = v30;
      if (v34)
      {
        goto LABEL_20;
      }
    }

    v35 = [objc_opt_class() cleanSubject:v15];

    if (([v35 length] - 5) > 0x2D)
    {
      v41 = 0;
      v42 = 0;
      v15 = v35;
    }

    else
    {
      v98 = v24;
      v36 = v17;
      v37 = [v35 lowercaseString];
      v38 = [(IPEventClassificationType *)self defaultTitle];
      v39 = [v38 lowercaseString];
      v40 = [v37 isEqualToString:v39];

      if (v40)
      {
        v41 = 0;
        v42 = 0;
      }

      else
      {
        v43 = MEMORY[0x277CCACA8];
        v44 = [(IPEventClassificationType *)self identifier];
        v45 = [(IPEventClassificationType *)self language];
        v46 = [v43 stringWithFormat:@"%@-%@-%@", v44, v45, @"subject"];

        v107[0] = MEMORY[0x277D85DD0];
        v107[1] = 3221225472;
        v107[2] = __183__IPEventClassificationType_adjustedEventTitleForMessageUnits_subject_dateInSubject_eventStartDate_useTitleGenerationModel_isGeneratedFromSubject_isGeneratedFromTitleGenerationModel___block_invoke;
        v107[3] = &unk_278F233D0;
        v107[4] = self;
        v47 = [IPRegexToolbox regularExpressionWithKey:v46 generator:v107];
        v48 = [IPRegexToolbox firstMatchingKeywordForRegex:v47 inString:v35 needsToLowercase:1];
        v42 = v48 != 0;

        v41 = 1;
      }

      v17 = v36;
      v15 = v35;
      v24 = v98;
    }

LABEL_25:
    v103 = v15;
    if (v42 || !v15)
    {
      if (v42)
      {
        v59 = 0;
LABEL_48:
        v19 = [(IPEventClassificationType *)self properCasedTitleForTitle:v103 locale:v24];

        if (IPDebuggingModeEnabled_once_2 != -1)
        {
          [IPEventClassificationType adjustedEventTitleForMessageUnits:subject:dateInSubject:eventStartDate:useTitleGenerationModel:isGeneratedFromSubject:isGeneratedFromTitleGenerationModel:];
        }

        if (IPDebuggingModeEnabled_sEnabled_2 == 1)
        {
          v65 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v65 = _IPLogHandle;
          }

          if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
            v66 = v65;
            v67 = [(IPEventClassificationType *)self defaultTitle];
            *buf = 138412546;
            v109 = v67;
            v110 = 2112;
            v111 = v103;
            _os_log_impl(&dword_2485E4000, v66, OS_LOG_TYPE_INFO, "Enriched using subject from %@ to %@ #EventClassification", buf, 0x16u);
          }
        }

        if (a8)
        {
          *a8 = 1;
        }

        goto LABEL_80;
      }
    }

    else
    {
      v94 = v41;
      v97 = v16;
      v96 = v17;
      v49 = MEMORY[0x277CCACA8];
      v50 = [(IPEventClassificationType *)self identifier];
      v51 = [(IPEventClassificationType *)self language];
      v52 = [v49 stringWithFormat:@"%@-%@-%@", v50, v51, @"events"];

      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = __183__IPEventClassificationType_adjustedEventTitleForMessageUnits_subject_dateInSubject_eventStartDate_useTitleGenerationModel_isGeneratedFromSubject_isGeneratedFromTitleGenerationModel___block_invoke_2;
      v106[3] = &unk_278F233D0;
      v106[4] = self;
      v95 = v52;
      v53 = [IPRegexToolbox regularExpressionWithKey:v52 generator:v106];
      v54 = [IPRegexToolbox firstMatchingKeywordForRegex:v53 inString:v15 needsToLowercase:1];
      v55 = [v14 count];
      if ([v54 length])
      {
        v56 = 1;
      }

      else
      {
        v56 = v55 == 0;
      }

      v57 = v56;
      v93 = v57;
      if (v56)
      {
        v58 = v54;
      }

      else
      {
        v60 = 1;
        do
        {
          v61 = [v14 objectAtIndexedSubscript:v60 - 1];
          v62 = [v61 text];
          v58 = [IPRegexToolbox firstMatchingKeywordForRegex:v53 inString:v62 needsToLowercase:1];

          if ([v58 length])
          {
            v63 = 1;
          }

          else
          {
            v63 = v60 >= v55;
          }

          ++v60;
          v54 = v58;
        }

        while (!v63);
      }

      if ([v58 length])
      {
        v59 = v58;
        v64 = v94 & v93;
      }

      else
      {
        v64 = 0;
        v59 = 0;
      }

      v16 = v97;

      if (v64)
      {
        v17 = v96;
        goto LABEL_48;
      }

      v17 = v96;
      if (v59)
      {
        if (IPDebuggingModeEnabled_once_2 != -1)
        {
          [IPEventClassificationType adjustedEventTitleForMessageUnits:subject:dateInSubject:eventStartDate:useTitleGenerationModel:isGeneratedFromSubject:isGeneratedFromTitleGenerationModel:];
        }

        if (IPDebuggingModeEnabled_sEnabled_2 == 1)
        {
          v68 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v68 = _IPLogHandle;
          }

          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            v69 = v68;
            v70 = [(IPEventClassificationType *)self defaultTitle];
            *buf = 138412546;
            v109 = v70;
            v110 = 2112;
            v111 = v59;
            _os_log_impl(&dword_2485E4000, v69, OS_LOG_TYPE_INFO, "Enrichment from %@ to %@ #EventClassification", buf, 0x16u);
          }
        }

        v71 = [v24 localeIdentifier];
        v72 = [v71 isEqualToString:@"fr"];

        if (v72)
        {
          v73 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"^[dl]('|’)" options:1 error:0];
          v74 = [v73 stringByReplacingMatchesInString:v59 options:0 range:0 withTemplate:{objc_msgSend(v59, "length"), &stru_285AD0E88}];

          v59 = v74;
        }

        v19 = [(IPEventClassificationType *)self properCasedTitleForTitle:v59 locale:v24];

        goto LABEL_80;
      }
    }

    v19 = v102;
    if ([v102 length])
    {
      v59 = 0;
    }

    else if (v16 && (-[IPEventClassificationType dateWithoutTime:](self, "dateWithoutTime:", v17), v75 = objc_claimAutoreleasedReturnValue(), -[IPEventClassificationType dateWithoutTime:](self, "dateWithoutTime:", v16), v76 = objc_claimAutoreleasedReturnValue(), v77 = [v75 isEqualToDate:v76], v76, v75, !v77))
    {
      v59 = 0;
      v19 = v102;
    }

    else
    {
      v99 = v24;
      v78 = v17;
      v79 = objc_opt_class();
      v80 = [(IPEventClassificationType *)self language];
      v81 = [v79 taxonomyForLanguageID:v80 clusterType:5];

      v82 = MEMORY[0x277CCACA8];
      v83 = [v81 identifier];
      v84 = [(IPEventClassificationType *)self language];
      v85 = [v82 stringWithFormat:@"%@-%@-%@", v83, v84, @"generic-events"];

      v86 = [v81 subjectKeywords];
      v87 = [v86 count];

      if (v87)
      {
        v104[0] = MEMORY[0x277D85DD0];
        v104[1] = 3221225472;
        v104[2] = __183__IPEventClassificationType_adjustedEventTitleForMessageUnits_subject_dateInSubject_eventStartDate_useTitleGenerationModel_isGeneratedFromSubject_isGeneratedFromTitleGenerationModel___block_invoke_173;
        v104[3] = &unk_278F23030;
        v104[4] = self;
        v105 = v81;
        v88 = [IPRegexToolbox regularExpressionWithKey:v85 generator:v104];
        v89 = [IPRegexToolbox firstMatchingKeywordForRegex:v88 inString:v103 needsToLowercase:1];
        if ([v89 length])
        {
          v90 = [objc_opt_class() cleanSubject:v103];
        }

        else
        {
          v90 = v102;
        }
      }

      else
      {
        v90 = v102;
      }

      v59 = 0;
      v19 = v90;
      v17 = v78;
      v24 = v99;
    }

LABEL_80:

    v15 = v103;
    goto LABEL_81;
  }

  v19 = v18;
  if (a9)
  {
    *a9 = 1;
  }

LABEL_81:

  v91 = *MEMORY[0x277D85DE8];

  return v19;
}

id __183__IPEventClassificationType_adjustedEventTitleForMessageUnits_subject_dateInSubject_eventStartDate_useTitleGenerationModel_isGeneratedFromSubject_isGeneratedFromTitleGenerationModel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) language];
  v3 = [*(a1 + 32) subjectKeywords];
  v4 = [IPRegexToolbox regexPatternForLanguageID:v2 eventVocabularyArray:v3];

  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v4 options:64 error:0];

  return v5;
}

id __183__IPEventClassificationType_adjustedEventTitleForMessageUnits_subject_dateInSubject_eventStartDate_useTitleGenerationModel_isGeneratedFromSubject_isGeneratedFromTitleGenerationModel___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) language];
  v3 = [*(a1 + 32) titleKeywords];
  v4 = [IPRegexToolbox regexPatternForLanguageID:v2 eventVocabularyArray:v3];

  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v4 options:65 error:0];

  return v5;
}

id __183__IPEventClassificationType_adjustedEventTitleForMessageUnits_subject_dateInSubject_eventStartDate_useTitleGenerationModel_isGeneratedFromSubject_isGeneratedFromTitleGenerationModel___block_invoke_173(uint64_t a1)
{
  v2 = [*(a1 + 32) language];
  v3 = [*(a1 + 40) subjectKeywords];
  v4 = [IPRegexToolbox regexPatternForLanguageID:v2 eventVocabularyArray:v3];

  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v4 options:65 error:0];

  return v5;
}

+ (id)titleGenerationModelPredictionForMessageUnits:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v3 firstObject];
    v5 = [v4 bestLanguageID];

    if ([&unk_285B0FCC0 containsObject:v5])
    {
      v6 = [v3 firstObject];
      v7 = [v6 originalMessage];

      v8 = [MEMORY[0x277D01FF0] messageWithIPMessage:v7];
      v9 = [MEMORY[0x277D02118] serviceForIpsos];
      v10 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v10 = _IPLogHandle;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_2485E4000, v10, OS_LOG_TYPE_DEFAULT, "Getting suggested title from title generation model #EventClassification", &v16, 2u);
      }

      v11 = [v9 titleSuggestionForMessage:v8 error:0];
      v12 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v12 = _IPLogHandle;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138478083;
        v17 = v11;
        v18 = 2113;
        v19 = v5;
        _os_log_impl(&dword_2485E4000, v12, OS_LOG_TYPE_DEBUG, "Suggested title=%{private}@ for dominant language=%{private}@ #EventClassification", &v16, 0x16u);
      }
    }

    else
    {
      v13 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v13 = _IPLogHandle;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v5;
        _os_log_impl(&dword_2485E4000, v13, OS_LOG_TYPE_DEFAULT, "Title generation not supported for language %@ #EventClassification", &v16, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)dateWithoutTime:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
  }

  v4 = getCalendar();
  v5 = [v4 components:28 fromDate:v3];

  v6 = getCalendar();
  v7 = [v6 dateFromComponents:v5];

  return v7;
}

- (BOOL)questionMarkInString:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"¿?？"];
  v6 = [v3 rangeOfCharacterFromSet:v5] != 0x7FFFFFFFFFFFFFFFLL;

  objc_autoreleasePoolPop(v4);
  return v6;
}

+ (id)fallbackEventTitleForMessageUnits:(id)a3 subject:(id)a4 checkForDateInSubject:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 firstObject];
  v11 = [v10 bestLanguageID];
  if (v11)
  {
    if (([&unk_285B0FCD8 containsObject:v11] & 1) == 0)
    {
      if (!v5)
      {
        goto LABEL_5;
      }

      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v19 = 0;
      v12 = [MEMORY[0x277CCA948] dataDetectorWithTypes:8 error:&v19];
      v13 = v19;
      v14 = [v9 length];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __93__IPEventClassificationType_fallbackEventTitleForMessageUnits_subject_checkForDateInSubject___block_invoke;
      v18[3] = &unk_278F233F8;
      v18[4] = &v20;
      [v12 enumerateMatchesInString:v9 options:0 range:0 usingBlock:{v14, v18}];
      v15 = *(v21 + 24);

      _Block_object_dispose(&v20, 8);
      if ((v15 & 1) == 0)
      {
LABEL_5:
        v16 = [a1 cleanSubject:v9];
        if (([v16 length] - 51) > 0xFFFFFFFFFFFFFFD1)
        {
          goto LABEL_8;
        }
      }
    }
  }

  v16 = 0;
LABEL_8:

  return v16;
}

uint64_t __93__IPEventClassificationType_fallbackEventTitleForMessageUnits_subject_checkForDateInSubject___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

+ (id)eventClassificationTypeFromMessageUnit:(id)a3 keywordFeatures:(id)a4 datafeatures:(id)a5
{
  v233 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  v164 = v10;
  if (![v9 count])
  {
    v103 = 0;
    goto LABEL_123;
  }

  v12 = objc_opt_new();
  v180 = objc_opt_new();
  v179 = objc_opt_new();
  v181 = objc_opt_new();
  v13 = [v8 text];
  v14 = v11;
  v15 = [v13 length];
  v16 = [v8 originalMessage];
  v17 = [v16 subject];
  v18 = [v17 length];

  v19 = [v8 originalMessage];
  v20 = [v19 subject];
  v165 = [v20 length];

  v21 = [v8 originalMessage];
  v22 = [v21 type];
  v168 = [v22 isEqualToString:IPMessageTypeShortMessage];

  v160 = v8;
  v23 = [v8 originalMessage];
  v24 = [v23 isReply];

  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v159 = v14;
  v25 = v14;
  v173 = [v25 countByEnumeratingWithState:&v206 objects:v232 count:16];
  if (v173)
  {
    v171 = *v207;
    v26 = (v18 + v15);
    v163 = a1;
    v162 = v24;
    v161 = v25;
    do
    {
      for (i = 0; i != v173; i = v33 + 1)
      {
        if (*v207 != v171)
        {
          objc_enumerationMutation(v25);
        }

        obj = i;
        v28 = *(*(&v206 + 1) + 8 * i);
        v29 = [v28 contextDictionary];
        v30 = [v29 objectForKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
        v31 = [v30 isEqual:MEMORY[0x277CBEC38]];

        if ((v31 & v24) == 1)
        {
          v32 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v32 = _IPLogHandle;
          }

          v33 = obj;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v34 = v32;
            v35 = [v28 keywordString];
            *buf = 138412290;
            v217 = v35;
            v36 = v34;
            v37 = "      --> ignore matched string: [%@] in subject since message is a reply #EventClassification";
LABEL_22:
            _os_log_impl(&dword_2485E4000, v36, OS_LOG_TYPE_DEBUG, v37, buf, 0xCu);

            continue;
          }
        }

        else
        {
          if ([v28 type] == 1)
          {
            v38 = v31;
          }

          else
          {
            v38 = 1;
          }

          if ((v38 | v168))
          {
            [a1 _averageDistanceBetweenFeatureKeyword:v28 featureDates:v164 subjectLength:v165 inSubject:v31];
            v40 = (v26 - v39) / v26;
            v41 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
            v42 = [v28 contextDictionary];
            [v42 setObject:v41 forKeyedSubscript:@"IPFeatureKeywordContextDistanceToDate"];

            if (v31)
            {
              v43 = 1;
            }

            else
            {
              v45 = [v160 rejectionRanges];
              v46 = [v28 matchRange];
              v48 = [v45 intersectsIndexesInRange:{v46, v47}];

              if (v48)
              {
                v43 = 4;
              }

              else
              {
                v49 = [v160 proposalAndAcceptationRanges];
                v50 = [v28 matchRange];
                v52 = [v49 intersectsIndexesInRange:{v50, v51}];

                if (v52)
                {
                  v43 = 2;
                }

                else
                {
                  v43 = 1;
                }
              }
            }

            v53 = [v28 keywordString];
            v54 = [v53 length];

            v55 = v54 / v26;
            v56 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
            v57 = [v28 contextDictionary];
            [v57 setObject:v56 forKeyedSubscript:@"IPFeatureKeywordContextMatchedRatio"];

            [a1 _scoreForKeywordsInSubject:v31 distanceToDates:v43 polarity:objc_msgSend(v28 matchedRatio:"type") keywordType:{v40, v55}];
            v59 = v58;
            v60 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging();
              v60 = _IPLogHandle;
            }

            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              v61 = v60;
              v62 = [v28 keywordString];
              v63 = [v28 eventTypes];
              v64 = [v63 lastObject];
              v65 = [v64 identifier];
              v66 = [IPFeatureSentence humanReadableFeaturePolarity:v43];
              v67 = [v28 type];
              *buf = 138414082;
              v217 = v62;
              v218 = 2112;
              v219 = v65;
              v220 = 2048;
              v221 = v59;
              v222 = 1024;
              v223 = v31;
              v224 = 2048;
              v225 = v40;
              v226 = 2112;
              v227 = v66;
              v228 = 2048;
              v229 = v55 * 100.0;
              v230 = 2048;
              v231 = v67;
              _os_log_impl(&dword_2485E4000, v61, OS_LOG_TYPE_DEBUG, "      --> matched string: [%@] type:%@ score:%f subject:%d distance:%.2f polarity:%@ matchedRatio:%.2f%% type:%lu #EventClassification", buf, 0x4Eu);
            }

            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v68 = [v28 eventTypes];
            v69 = [v68 countByEnumeratingWithState:&v202 objects:v215 count:16];
            if (v69)
            {
              v70 = v69;
              v71 = *v203;
              do
              {
                for (j = 0; j != v70; ++j)
                {
                  if (*v203 != v71)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v73 = *(*(&v202 + 1) + 8 * j);
                  v74 = [v73 identifier];
                  v75 = [v12 objectForKeyedSubscript:v74];
                  v76 = v59;
                  if (v75)
                  {
                    v77 = [v73 identifier];
                    v78 = [v12 objectForKeyedSubscript:v77];
                    [v78 doubleValue];
                    v76 = v59 + v79;
                  }

                  if (v76 > 0.0)
                  {
                    v80 = [MEMORY[0x277CCABB0] numberWithDouble:v76];
                    v81 = [v73 identifier];
                    [v12 setObject:v80 forKeyedSubscript:v81];

                    v82 = [v73 identifier];
                    [v181 setObject:v73 forKeyedSubscript:v82];

                    if ([v73 classificationDepth] == 1)
                    {
                      v83 = [MEMORY[0x277CCABB0] numberWithDouble:v76];
                      v84 = [v73 identifier];
                      [v180 setObject:v83 forKeyedSubscript:v84];

                      v85 = [v73 identifier];
                      [v179 setObject:v73 forKeyedSubscript:v85];
                    }
                  }
                }

                v70 = [v68 countByEnumeratingWithState:&v202 objects:v215 count:16];
              }

              while (v70);
            }

            a1 = v163;
            v24 = v162;
            v25 = v161;
            v33 = obj;
          }

          else
          {
            v44 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging();
              v44 = _IPLogHandle;
            }

            v33 = obj;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              v34 = v44;
              v35 = [v28 keywordString];
              *buf = 138412290;
              v217 = v35;
              v36 = v34;
              v37 = "      --> ignore generic matched string: [%@] #EventClassification";
              goto LABEL_22;
            }
          }
        }
      }

      v173 = [v25 countByEnumeratingWithState:&v206 objects:v232 count:16];
    }

    while (v173);
  }

  v166 = objc_opt_new();
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  obja = v12;
  v86 = [obja countByEnumeratingWithState:&v198 objects:v214 count:16];
  if (!v86)
  {
    goto LABEL_70;
  }

  v87 = v86;
  v174 = *v199;
  do
  {
    for (k = 0; k != v87; ++k)
    {
      if (*v199 != v174)
      {
        objc_enumerationMutation(obja);
      }

      v89 = *(*(&v198 + 1) + 8 * k);
      if ([obja count] < 2 || (objc_msgSend(v89, "isEqualToString:", @"EVENT") & 1) == 0)
      {
        v90 = [v181 objectForKeyedSubscript:v89];
        v194 = 0u;
        v195 = 0u;
        v196 = 0u;
        v197 = 0u;
        v91 = [v90 children];
        v92 = [v91 countByEnumeratingWithState:&v194 objects:v213 count:16];
        if (v92)
        {
          v93 = v92;
          v94 = *v195;
LABEL_56:
          v95 = 0;
          while (1)
          {
            if (*v195 != v94)
            {
              objc_enumerationMutation(v91);
            }

            v96 = [*(*(&v194 + 1) + 8 * v95) identifier];
            v97 = [obja objectForKey:v96];

            if (v97)
            {
              break;
            }

            if (v93 == ++v95)
            {
              v93 = [v91 countByEnumeratingWithState:&v194 objects:v213 count:16];
              if (v93)
              {
                goto LABEL_56;
              }

              goto LABEL_62;
            }
          }

LABEL_66:
        }

        else
        {
LABEL_62:

          v98 = [obja objectForKeyedSubscript:v89];
          [v166 setObject:v98 forKeyedSubscript:v89];

          v99 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v99 = _IPLogHandle;
          }

          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            v91 = v99;
            v100 = [v166 objectForKeyedSubscript:v89];
            *buf = 138412546;
            v217 = v89;
            v218 = 2112;
            v219 = v100;
            _os_log_impl(&dword_2485E4000, v91, OS_LOG_TYPE_DEBUG, "%@ score : %@ #EventClassification", buf, 0x16u);

            goto LABEL_66;
          }
        }

        continue;
      }
    }

    v87 = [obja countByEnumeratingWithState:&v198 objects:v214 count:16];
  }

  while (v87);
LABEL_70:

  if ([v166 count] != 1)
  {
    v105 = objc_opt_new();
    v190 = 0u;
    v191 = 0u;
    v192 = 0u;
    v193 = 0u;
    v107 = v166;
    v170 = [v107 countByEnumeratingWithState:&v190 objects:v212 count:16];
    v172 = v107;
    if (v170)
    {
      v169 = 0;
      v167 = *v191;
      v108 = 0.0;
      do
      {
        v109 = 0;
        do
        {
          if (*v191 != v167)
          {
            objc_enumerationMutation(v107);
          }

          v110 = *(*(&v190 + 1) + 8 * v109);
          v111 = [v181 objectForKeyedSubscript:v110];
          v112 = [v107 objectForKeyedSubscript:v110];
          [v112 doubleValue];
          v114 = v113;

          v175 = v109;
          if (v114 > v108)
          {
            v115 = [v107 objectForKeyedSubscript:v110];
            [v115 doubleValue];
            v108 = v116;

            v117 = v111;
            v169 = v117;
          }

          v188 = 0u;
          v189 = 0u;
          v186 = 0u;
          v187 = 0u;
          v118 = v107;
          v119 = [v118 countByEnumeratingWithState:&v186 objects:v211 count:16];
          if (v119)
          {
            v120 = v119;
            v121 = *v187;
            do
            {
              for (m = 0; m != v120; ++m)
              {
                if (*v187 != v121)
                {
                  objc_enumerationMutation(v118);
                }

                v123 = *(*(&v186 + 1) + 8 * m);
                v124 = [v181 objectForKeyedSubscript:v123];
                [v111 _hasPriorityOverEventType:v124];
                if (v125 > 0.0)
                {
                  v126 = v125;
                  v127 = [v105 objectForKeyedSubscript:v123];

                  if (!v127)
                  {
                    v128 = objc_opt_new();
                    [v105 setObject:v128 forKeyedSubscript:v123];
                  }

                  v129 = [MEMORY[0x277CCABB0] numberWithDouble:v126];
                  v130 = [v105 objectForKeyedSubscript:v123];
                  [v130 setObject:v129 forKeyedSubscript:v110];
                }
              }

              v120 = [v118 countByEnumeratingWithState:&v186 objects:v211 count:16];
            }

            while (v120);
          }

          v109 = v175 + 1;
          v107 = v172;
        }

        while (v175 + 1 != v170);
        v170 = [v118 countByEnumeratingWithState:&v190 objects:v212 count:16];
      }

      while (v170);
    }

    else
    {
      v169 = 0;
      v108 = 0.0;
    }

    v131 = 5;
    v132 = v169;
    while (2)
    {
      v133 = [v132 identifier];
      v134 = [v105 objectForKeyedSubscript:v133];
      if (v134)
      {
        v135 = v134;
        v136 = [v132 identifier];
        v137 = [v105 objectForKeyedSubscript:v136];
        v138 = [v137 count];

        if (!v138)
        {
LABEL_113:
          v153 = v132;
          if (!v153)
          {
            v103 = 0;
            goto LABEL_121;
          }

          v106 = v153;
          v154 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v154 = _IPLogHandle;
          }

          if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
          {
            v155 = v154;
            v156 = [v106 identifier];
            *buf = 138412290;
            v217 = v156;
            _os_log_impl(&dword_2485E4000, v155, OS_LOG_TYPE_DEBUG, "Final event type : %@ #EventClassification", buf, 0xCu);
          }

          v103 = v106;
LABEL_119:

LABEL_121:
          goto LABEL_122;
        }

        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        v139 = [v132 identifier];
        v133 = [v105 objectForKeyedSubscript:v139];

        v140 = [v133 countByEnumeratingWithState:&v182 objects:v210 count:16];
        if (v140)
        {
          v141 = v140;
          v176 = v131;
          v142 = *v183;
LABEL_103:
          v143 = 0;
          while (1)
          {
            if (*v183 != v142)
            {
              objc_enumerationMutation(v133);
            }

            v144 = *(*(&v182 + 1) + 8 * v143);
            v145 = [v107 objectForKeyedSubscript:v144];
            [v145 doubleValue];
            v147 = v146;

            v148 = [v132 identifier];
            v149 = [v105 objectForKeyedSubscript:v148];
            v150 = [v149 objectForKeyedSubscript:v144];
            [v150 doubleValue];
            v152 = v151;

            if (v147 > v108 * (0.6 / v152))
            {
              break;
            }

            ++v143;
            v107 = v172;
            if (v141 == v143)
            {
              v141 = [v133 countByEnumeratingWithState:&v182 objects:v210 count:16];
              if (v141)
              {
                goto LABEL_103;
              }

              goto LABEL_112;
            }
          }

          v106 = [v181 objectForKeyedSubscript:v144];

          v131 = v176 - 1;
          v132 = v106;
          v108 = v147;
          v107 = v172;
          if (v176 != 1)
          {
            continue;
          }

          v103 = 0;
          goto LABEL_119;
        }
      }

      break;
    }

LABEL_112:

    goto LABEL_113;
  }

  v101 = [v166 allKeys];
  v102 = [v101 firstObject];
  v103 = [v181 objectForKeyedSubscript:v102];

  v104 = _IPLogHandle;
  if (!_IPLogHandle)
  {
    IPInitLogging();
    v104 = _IPLogHandle;
  }

  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
  {
    v105 = v104;
    v106 = [v103 identifier];
    *buf = 138412290;
    v217 = v106;
    _os_log_impl(&dword_2485E4000, v105, OS_LOG_TYPE_DEBUG, "Final event type : %@ #EventClassification", buf, 0xCu);
    goto LABEL_119;
  }

LABEL_122:
  v8 = v160;
  v11 = v159;

LABEL_123:
  v157 = *MEMORY[0x277D85DE8];

  return v103;
}

+ (id)eventClassificationTypeFromMessageUnit:(id)a3 features:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v8 = [v5 interactedDateRange];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            [v7 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v15 = v8;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v30 + 1) + 8 * j);
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 matchRange] == v15)
          {
            [v7 addObject:v21];
            goto LABEL_23;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_23:

  v22 = [a1 eventClassificationTypeFromMessageUnit:v5 features:v6 datafeatures:v7];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)eventClassificationTypeFromMessageUnit:(id)a3 features:(id)a4 datafeatures:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 addObject:{v17, v21}];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [a1 eventClassificationTypeFromMessageUnit:v8 keywordFeatures:v11 datafeatures:v10];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (double)_scoreForKeywordsInSubject:(BOOL)a3 distanceToDates:(double)result polarity:(unint64_t)a5 matchedRatio:(double)a6 keywordType:(unint64_t)a7
{
  if (a5 == 4)
  {
    v7 = 0.0;
  }

  else
  {
    if (a5 != 2)
    {
      goto LABEL_6;
    }

    v7 = 1.5;
  }

  result = result * v7;
LABEL_6:
  v8 = result + a6;
  if (result > 0.0)
  {
    return v8;
  }

  return result;
}

+ (double)_averageDistanceBetweenFeatureKeyword:(id)a3 featureDates:(id)a4 subjectLength:(unint64_t)a5 inSubject:(BOOL)a6
{
  v6 = a6;
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [v9 matchRange];
  v12 = v11;
  v46 = a5;
  if (v6)
  {
    v13 = [v9 matchRange];
    [v9 matchRange];
    v15 = v14 + v13;
  }

  else
  {
    v12 = v11 + a5;
    v16 = [v9 matchRange];
    [v9 matchRange];
    v15 = v16 + a5 + v17;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v10;
  v18 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v18)
  {
    v19 = v18;
    v48 = *v50;
    v20 = v12;
    v21 = v15;
    v22 = 0.0;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v50 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v49 + 1) + 8 * i);
        v25 = [v24 contextDictionary];
        v26 = [v25 objectForKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
        if (v26)
        {
          [v24 contextDictionary];
          v28 = v27 = v9;
          v29 = [v28 objectForKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
          v30 = [v29 BOOLValue] ^ 1;

          v9 = v27;
        }

        else
        {
          v30 = 1;
        }

        v31 = [v24 matchRange];
        v33 = v32;
        v56.location = [v9 matchRange];
        v56.length = v34;
        v55.location = v31;
        v55.length = v33;
        if (!NSIntersectionRange(v55, v56).length)
        {
          v35 = [v24 matchRange];
          v36 = v35;
          if (v30)
          {
            v36 = v35 + v46;
            v37 = [v24 matchRange];
            [v24 matchRange];
            v39 = v37 + v46 + v38;
          }

          else
          {
            v40 = [v24 matchRange];
            [v24 matchRange];
            v39 = v41 + v40;
          }

          v42 = v39 - v20;
          if (v42 >= v21 - v36)
          {
            v42 = v21 - v36;
          }

          if (v42 < 0.0)
          {
            v42 = -v42;
          }

          v22 = v22 + v42;
        }
      }

      v19 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v19);
  }

  else
  {
    v22 = 0.0;
  }

  v43 = [obj count];
  v44 = *MEMORY[0x277D85DE8];
  return v22 / v43;
}

- (double)_hasPriorityOverEventType:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IPEventClassificationType *)self identifier];
  v6 = [v4 identifier];
  v7 = [v5 isEqual:v6];

  v8 = 0.0;
  if ((v7 & 1) == 0)
  {
    if (-[IPEventClassificationType isHighPriority](self, "isHighPriority") && ([v4 isHighPriority] & 1) == 0)
    {
      v22 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v22 = _IPLogHandle;
      }

      v8 = 1.0;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v10 = v22;
        v11 = [(IPEventClassificationType *)self identifier];
        v12 = [v4 identifier];
        v29 = 138412802;
        v30 = v11;
        v31 = 2112;
        v32 = v12;
        v33 = 2048;
        v34 = 0x3FF0000000000000;
        v13 = "%@ has priority over %@ (high priority flag - weight %f) #EventClassification";
        goto LABEL_23;
      }
    }

    else if ([v4 _isAParentOf:self])
    {
      v9 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging();
        v9 = _IPLogHandle;
      }

      v8 = 1.0;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = v9;
        v11 = [(IPEventClassificationType *)self identifier];
        v12 = [v4 identifier];
        v29 = 138412802;
        v30 = v11;
        v31 = 2112;
        v32 = v12;
        v33 = 2048;
        v34 = 0x3FF0000000000000;
        v13 = "%@ has priority over %@ (parent priority - weight %f) #EventClassification";
LABEL_23:
        _os_log_impl(&dword_2485E4000, v10, OS_LOG_TYPE_DEBUG, v13, &v29, 0x20u);
      }
    }

    else
    {
      v14 = [v4 upperPriorityEventTypesIdentifiers];
      v15 = [(IPEventClassificationType *)self identifier];
      v16 = [v14 objectForKeyedSubscript:v15];

      if (v16)
      {
        v17 = [v4 upperPriorityEventTypesIdentifiers];
        v18 = [(IPEventClassificationType *)self identifier];
        v19 = [v17 objectForKeyedSubscript:v18];
        [v19 doubleValue];
        v8 = v20;

        v21 = _IPLogHandle;
        if (!_IPLogHandle)
        {
          IPInitLogging();
          v21 = _IPLogHandle;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v10 = v21;
          v11 = [(IPEventClassificationType *)self identifier];
          v12 = [v4 identifier];
          v29 = 138412802;
          v30 = v11;
          v31 = 2112;
          v32 = v12;
          v33 = 2048;
          v34 = *&v8;
          v13 = "%@ has priority over %@ (explicit priority rule - weight %f) #EventClassification";
          goto LABEL_23;
        }
      }

      else if ([v4 isLowPriority])
      {
        v23 = _IPLogHandle;
        if (!_IPLogHandle)
        {
          IPInitLogging();
          v23 = _IPLogHandle;
        }

        v8 = 1.0;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v10 = v23;
          v11 = [(IPEventClassificationType *)self identifier];
          v12 = [v4 identifier];
          v29 = 138412802;
          v30 = v11;
          v31 = 2112;
          v32 = v12;
          v33 = 2048;
          v34 = 0x3FF0000000000000;
          v13 = "%@ has priority over %@ (low priority flag - weight %f) #EventClassification";
          goto LABEL_23;
        }
      }

      else if (-[IPEventClassificationType classificationDepth](self, "classificationDepth") >= 2 && [v4 classificationDepth] == 1)
      {
        v26 = IPSOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = [(IPEventClassificationType *)self identifier];
          v28 = [v4 identifier];
          v29 = 138412802;
          v30 = v27;
          v31 = 2112;
          v32 = v28;
          v33 = 2048;
          v34 = 0x3FF0000000000000;
          _os_log_impl(&dword_2485E4000, v26, OS_LOG_TYPE_DEBUG, "%@ has priority over %@ (cluster is low priority - weight %f) #EventClassification", &v29, 0x20u);
        }

        v8 = 1.0;
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_isAParentOf:(id)a3
{
  v4 = [a3 parent];
  v5 = v4;
  for (i = v4 != 0; v5 != self && v5; i = v5 != 0)
  {
    v7 = v5;
    v5 = [(IPEventClassificationType *)v5 parent];
  }

  return i;
}

+ (id)taxonomyForLanguageID:(id)a3 clusterType:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 _identifierForCluster:a4];
  v8 = [a1 taxonomyForLanguageID:v6 clusterIdentifier:v7];

  return v8;
}

+ (id)taxonomyForLanguageID:(id)a3 clusterIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (taxonomyForLanguageID_clusterIdentifier___pasOnceToken18 != -1)
    {
      +[IPEventClassificationType taxonomyForLanguageID:clusterIdentifier:];
    }

    v8 = [taxonomyForLanguageID_clusterIdentifier___pasExprOnceResult result];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__4;
    v20 = __Block_byref_object_dispose__4;
    v21 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__IPEventClassificationType_taxonomyForLanguageID_clusterIdentifier___block_invoke_217;
    v11[3] = &unk_278F23420;
    v14 = &v16;
    v12 = v7;
    v15 = a1;
    v13 = v6;
    [v8 runWithLockAcquired:v11];
    v9 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __69__IPEventClassificationType_taxonomyForLanguageID_clusterIdentifier___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_214 idleTimeout:1.0];
  v2 = taxonomyForLanguageID_clusterIdentifier___pasExprOnceResult;
  taxonomyForLanguageID_clusterIdentifier___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __69__IPEventClassificationType_taxonomyForLanguageID_clusterIdentifier___block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277D425F8]);
  v1 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:5];
  v2 = [v0 initWithGuardedData:v1];

  return v2;
}

void __69__IPEventClassificationType_taxonomyForLanguageID_clusterIdentifier___block_invoke_217(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = v13;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [*(a1 + 56) _loadTaxonomyForLanguageID:*(a1 + 40) clusterIdentifier:*(a1 + 32) error:0];
    v9 = [v8 objectForKeyedSubscript:*(a1 + 32)];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = *(*(*(a1 + 48) + 8) + 40);
    if (v12)
    {
      [v13 setObject:v12 forKey:*(a1 + 32)];
    }

    objc_autoreleasePoolPop(v7);
    v6 = v13;
  }
}

+ (id)_dateComponentsFromTaxonomyHHMMString:(id)a3
{
  v3 = MEMORY[0x277CCAC80];
  v4 = a3;
  v5 = [[v3 alloc] initWithString:v4];

  v11 = 0;
  if ([v5 scanInt:&v11])
  {
    v6 = (v11 - 1) > 0xB;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || ![v5 scanString:@":" intoString:0])
  {
    v7 = 0;
  }

  else
  {
    v10 = 0;
    v7 = 0;
    if ([v5 scanInt:&v10] && v10 <= 0x3B)
    {
      if ([v5 scanString:@"am" intoString:0] & 1) != 0 || (objc_msgSend(v5, "scanString:intoString:", @"AM", 0))
      {
        v8 = v11 % 12;
LABEL_11:
        v11 = v8;
        v7 = objc_opt_new();
        [v7 setHour:v11];
        [v7 setMinute:v10];
        goto LABEL_13;
      }

      if (([v5 scanString:@"pm" intoString:0] & 1) != 0 || (v7 = 0, objc_msgSend(v5, "scanString:intoString:", @"PM", 0)))
      {
        v8 = v11 % 12 + 12;
        goto LABEL_11;
      }
    }
  }

LABEL_13:

  return v7;
}

+ (id)_loadTaxonomyForLanguageID:(id)a3 clusterIdentifier:(id)a4 error:(id *)a5
{
  v312 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v266 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v237 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v236 = v8;
  v244 = v7;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@-expanded", @"Patterns-EventType", v8, v7];
  v11 = [&unk_285B1A6A0 objectForKeyedSubscript:v10];
  if (!v11)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't load taxonomy from file %@", v10];
    [v9 setObject:v12 forKeyedSubscript:v10];
  }

  v234 = v10;
  v238 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v239 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v297 = 0u;
  v298 = 0u;
  v299 = 0u;
  v300 = 0u;
  v13 = v11;
  v271 = v9;
  v242 = [v13 countByEnumeratingWithState:&v297 objects:v311 count:16];
  v243 = v13;
  if (v242)
  {
    v240 = *v298;
    v241 = a1;
    do
    {
      v14 = 0;
      do
      {
        if (*v298 != v240)
        {
          objc_enumerationMutation(v13);
        }

        v259 = v14;
        v15 = *(*(&v297 + 1) + 8 * v14);
        v16 = [v13 objectForKeyedSubscript:v15];
        v17 = [v16 objectForKeyedSubscript:@"KEYWORDS"];

        if (v17)
        {
          [v239 setObject:v17 forKeyedSubscript:v15];
          if (!a5 || [v17 count])
          {
            goto LABEL_16;
          }
        }

        else if (!a5)
        {
          goto LABEL_16;
        }

        v18 = [v9 objectForKeyedSubscript:@"KEYWORDS"];

        if (!v18)
        {
          v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v9 setObject:v19 forKeyedSubscript:@"KEYWORDS"];
        }

        v20 = [v9 objectForKeyedSubscript:@"KEYWORDS"];
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"No keywords associated to identifier : %@", v15];
        [v20 addObject:v21];

LABEL_16:
        v22 = [v13 objectForKeyedSubscript:v15];
        v23 = [v22 objectForKeyedSubscript:@"START_TIME"];

        v255 = v23;
        v257 = v17;
        if (!v23 || ![v23 length])
        {
          v28 = 0;
LABEL_22:
          v26 = -1;
          v27 = -1;
          goto LABEL_23;
        }

        v24 = [a1 _dateComponentsFromTaxonomyHHMMString:v23];
        if (!v24)
        {
          v28 = a5;
          if (a5)
          {
            v142 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging();
              v142 = _IPLogHandle;
            }

            v143 = v142;
            if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v308 = v23;
              v309 = 2114;
              v310 = v15;
              _os_log_impl(&dword_2485E4000, v143, OS_LOG_TYPE_ERROR, "ERROR: Invalid start time string: '%{public}@' for identifier: %{public}@ #EventClassification", buf, 0x16u);
            }

            v144 = [v9 objectForKeyedSubscript:@"START_TIME"];

            if (!v144)
            {
              v145 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v9 setObject:v145 forKeyedSubscript:@"START_TIME"];
            }

            v146 = [v9 objectForKeyedSubscript:@"START_TIME"];
            v147 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid start time string: '%@' for identifier: %@", v23, v15];
            [v146 addObject:v147];

            v28 = 0;
            v26 = -1;
            v27 = -1;
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        v25 = v24;
        v26 = [v24 hour];
        v27 = [v25 minute];

        v28 = v26 > 0;
        if (v26 > 11)
        {
          v29 = 2;
          goto LABEL_24;
        }

LABEL_23:
        v29 = 1;
LABEL_24:
        if (v28)
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v253 = v30;
        v31 = [v13 objectForKeyedSubscript:v15];
        v32 = [v31 objectForKeyedSubscript:@"USE_DEFAULT_TIME"];
        v33 = [v32 BOOLValue];

        if (v33)
        {
          v34 = v27;
        }

        else
        {
          v34 = -1;
        }

        v263 = v34;
        if (v33)
        {
          v35 = v26;
        }

        else
        {
          v35 = -1;
        }

        v261 = v35;
        v36 = [v13 objectForKeyedSubscript:v15];
        v37 = [v36 objectForKeyedSubscript:@"DURATION"];

        v38 = -1.0;
        if (v37)
        {
          v39 = [v13 objectForKeyedSubscript:v15];
          v40 = [v39 objectForKeyedSubscript:@"DURATION"];
          [v40 doubleValue];
          v42 = v41;

          if (v42 <= 0.0 || v42 > 1440.0)
          {
            if (a5)
            {
              v43 = [v9 objectForKeyedSubscript:@"DURATION"];

              if (!v43)
              {
                v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v9 setObject:v44 forKeyedSubscript:@"DURATION"];
              }

              v45 = [v9 objectForKeyedSubscript:@"DURATION"];
              v46 = MEMORY[0x277CCACA8];
              v47 = [v13 objectForKeyedSubscript:v15];
              v48 = [v47 objectForKeyedSubscript:@"DURATION"];
              v49 = [v46 stringWithFormat:@"Invalid duration time string: '%@' for identifier: %@", v48, v15];
              [v45 addObject:v49];
            }
          }

          else
          {
            v38 = v42 * 60.0;
          }
        }

        v50 = [v13 objectForKeyedSubscript:v15];
        v51 = [v50 objectForKeyedSubscript:@"TITLE"];

        if (a5 && v51)
        {
          if ([v51 length] >= 0xC9)
          {
            v52 = [v9 objectForKeyedSubscript:@"TITLE"];

            if (!v52)
            {
              v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v9 setObject:v53 forKeyedSubscript:@"TITLE"];
            }

            v54 = [v9 objectForKeyedSubscript:@"TITLE"];
            v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"Too long title string: '%@' for identifier: %@", v51, v15];
            [v54 addObject:v55];
          }

          if (![v51 length])
          {
            v56 = [v9 objectForKeyedSubscript:@"TITLE"];

            if (!v56)
            {
              v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v9 setObject:v57 forKeyedSubscript:@"TITLE"];
            }

            v58 = [v9 objectForKeyedSubscript:@"TITLE"];
            v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty title string: '%@' for identifier: %@", v51, v15];
            [v58 addObject:v59];
          }
        }

        if (![v51 length])
        {

          v51 = 0;
        }

        v60 = [a1 _parentFromIdentifier:v15];
        v252 = v60;
        if (v60)
        {
          [v238 setObject:v60 forKeyedSubscript:v15];
        }

        else
        {
          [v237 addObject:v15];
        }

        v269 = v51;
        v61 = [v13 objectForKeyedSubscript:v15];
        v62 = [v61 objectForKeyedSubscript:@"USE_FOR_TIME_ADJUSTMENT"];
        if (v62)
        {
          v63 = [v13 objectForKeyedSubscript:v15];
          v64 = [v63 objectForKeyedSubscript:@"USE_FOR_TIME_ADJUSTMENT"];
          v251 = [v64 BOOLValue];
        }

        else
        {
          v251 = 0;
        }

        v65 = [v13 objectForKeyedSubscript:v15];
        v66 = [v65 objectForKeyedSubscript:@"START_TIME_MIN"];

        v67 = 0.0;
        v68 = 0.0;
        if (v66)
        {
          v69 = [v13 objectForKeyedSubscript:v15];
          v70 = [v69 objectForKeyedSubscript:@"START_TIME_MIN"];
          v71 = [a1 _dateComponentsFromTaxonomyHHMMString:v70];

          if (v71)
          {
            v72 = [v71 hour];
            v68 = (-[v71 minute] - 60 * v72 + v263 + 60 * v261);
          }

          v74 = v68 < 0.0 || v71 == 0;
          if (a5 && v74)
          {
            v75 = [v9 objectForKeyedSubscript:@"START_TIME_MIN"];

            if (!v75)
            {
              v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v9 setObject:v76 forKeyedSubscript:@"START_TIME_MIN"];
            }

            v77 = [v9 objectForKeyedSubscript:@"START_TIME_MIN"];
            v78 = MEMORY[0x277CCACA8];
            v79 = [v13 objectForKeyedSubscript:v15];
            v80 = [v79 objectForKeyedSubscript:@"START_TIME_MIN"];
            v81 = [v78 stringWithFormat:@"Invalid start time  min string: '%@' for identifier: %@", v80, v15];
            [v77 addObject:v81];

            v68 = 0.0;
          }
        }

        v82 = [v13 objectForKeyedSubscript:v15];
        v83 = [v82 objectForKeyedSubscript:@"START_TIME_MAX"];

        if (v83)
        {
          v84 = [v13 objectForKeyedSubscript:v15];
          v85 = [v84 objectForKeyedSubscript:@"START_TIME_MAX"];
          v86 = [a1 _dateComponentsFromTaxonomyHHMMString:v85];

          if (v86)
          {
            v87 = [v86 hour];
            v67 = ([v86 minute] - (v263 + 60 * v261) + 60 * v87);
          }

          v89 = v67 < 0.0 || v86 == 0;
          if (a5 && v89)
          {
            v90 = [v9 objectForKeyedSubscript:@"START_TIME_MAX"];

            if (!v90)
            {
              v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v9 setObject:v91 forKeyedSubscript:@"START_TIME_MAX"];
            }

            v92 = [v9 objectForKeyedSubscript:@"START_TIME_MAX"];
            v93 = MEMORY[0x277CCACA8];
            v94 = [v13 objectForKeyedSubscript:v15];
            v95 = [v94 objectForKeyedSubscript:@"START_TIME_MAX"];
            v96 = [v93 stringWithFormat:@"Invalid start time  max string: '%@' for identifier: %@", v95, v15];
            [v92 addObject:v96];

            v67 = 0.0;
          }
        }

        v97 = [v13 objectForKeyedSubscript:v15];
        v98 = [v97 objectForKeyedSubscript:@"ALLDAY_ALLOWED"];
        if (v98)
        {
          v99 = [v13 objectForKeyedSubscript:v15];
          v100 = [v99 objectForKeyedSubscript:@"ALLDAY_ALLOWED"];
          v249 = [v100 BOOLValue];
        }

        else
        {
          v249 = 0;
        }

        v101 = [v13 objectForKeyedSubscript:v15];
        v102 = [v101 objectForKeyedSubscript:@"SUBJECT_KEYWORDS"];

        v103 = objc_opt_new();
        if ([v102 length])
        {
          [v103 addObject:v102];
        }

        v250 = v102;
        if (v269 && [v269 length])
        {
          v104 = [v269 lowercaseString];
          [v103 addObject:v104];
        }

        v105 = [v13 objectForKeyedSubscript:v15];
        v248 = [v105 objectForKeyedSubscript:@"TITLE_SENDER_TEMPLATE"];

        v106 = [v13 objectForKeyedSubscript:v15];
        v107 = [v106 objectForKeyedSubscript:@"ALLOW_GENERIC_PATTERNS_KEYWORDS"];
        if (v107)
        {
          v108 = [v13 objectForKeyedSubscript:v15];
          v109 = [v108 objectForKeyedSubscript:@"ALLOW_GENERIC_PATTERNS_KEYWORDS"];
          v247 = [v109 BOOLValue];
        }

        else
        {
          v247 = 1;
        }

        v110 = [v13 objectForKeyedSubscript:v15];
        v111 = [v110 objectForKeyedSubscript:@"MOVIE_RELATED"];
        if (v111)
        {
          v112 = [v13 objectForKeyedSubscript:v15];
          v113 = [v112 objectForKeyedSubscript:@"MOVIE_RELATED"];
          v246 = [v113 BOOLValue];
        }

        else
        {
          v246 = 0;
        }

        v114 = [v13 objectForKeyedSubscript:v15];
        v115 = [v114 objectForKeyedSubscript:@"MEAL_RELATED"];
        if (v115)
        {
          v116 = [v13 objectForKeyedSubscript:v15];
          v117 = [v116 objectForKeyedSubscript:@"MEAL_RELATED"];
          v245 = [v117 BOOLValue];
        }

        else
        {
          v245 = 0;
        }

        v118 = [v13 objectForKeyedSubscript:v15];
        v119 = [v118 objectForKeyedSubscript:@"CULTURE_RELATED"];
        if (v119)
        {
          v120 = [v13 objectForKeyedSubscript:v15];
          v121 = [v120 objectForKeyedSubscript:@"CULTURE_RELATED"];
          v122 = [v121 BOOLValue];
        }

        else
        {
          v122 = 0;
        }

        v123 = [v13 objectForKeyedSubscript:v15];
        v124 = [v123 objectForKeyedSubscript:@"SPORT_RELATED"];
        if (v124)
        {
          v125 = [v13 objectForKeyedSubscript:v15];
          v126 = [v125 objectForKeyedSubscript:@"SPORT_RELATED"];
          v127 = [v126 BOOLValue];

          v13 = v243;
        }

        else
        {
          v127 = 0;
        }

        v128 = [v13 objectForKeyedSubscript:v15];
        v129 = [v128 objectForKeyedSubscript:@"FAIRLY_GENERIC"];
        if (v129)
        {
          v130 = [v13 objectForKeyedSubscript:v15];
          v131 = [v130 objectForKeyedSubscript:@"FAIRLY_GENERIC"];
          v132 = v13;
          v133 = [v131 BOOLValue];
        }

        else
        {
          v132 = v13;
          v133 = 0;
        }

        v134 = [v132 objectForKeyedSubscript:v15];
        v135 = [v134 objectForKeyedSubscript:@"APPOINTMENT_RELATED"];
        if (v135)
        {
          v136 = [v132 objectForKeyedSubscript:v15];
          v137 = [v136 objectForKeyedSubscript:@"APPOINTMENT_RELATED"];
          v138 = [v137 BOOLValue];
        }

        else
        {
          v138 = 0;
        }

        v9 = v271;

        v139 = [IPEventClassificationType alloc];
        v140 = objc_opt_new();
        LOBYTE(v233) = v138;
        HIBYTE(v232) = v133;
        BYTE6(v232) = v127;
        BYTE5(v232) = v122;
        BYTE4(v232) = v245;
        BYTE3(v232) = v246;
        BYTE2(v232) = v247;
        BYTE1(v232) = v249;
        LOBYTE(v232) = v251;
        v141 = [IPEventClassificationType initWithIdentifier:v139 language:"initWithIdentifier:language:patternKeywords:titleKeywords:subjectKeywords:defaultTitle:titleSenderTemplate:defaultStartingTimeHour:defaultStartingTimeMinutes:defaultDuration:preferedMeridian:parent:children:useForTimeAdjustement:minutesBeforeDefaultStartingTime:minutesAfterDefaultStartingTime:allDayAllowed:useGenericPatternsInClassification:movieRelated:mealRelated:cultureRelated:sportRelated:fairlyGeneric:appointmentRelated:" patternKeywords:v15 titleKeywords:v244 subjectKeywords:v257 defaultTitle:v140 titleSenderTemplate:v103 defaultStartingTimeHour:v269 defaultStartingTimeMinutes:v38 defaultDuration:v68 preferedMeridian:v67 parent:v248 children:__PAIR64__(v263 useForTimeAdjustement:v261) minutesBeforeDefaultStartingTime:v253 minutesAfterDefaultStartingTime:0 allDayAllowed:0 useGenericPatternsInClassification:v232 movieRelated:v233 mealRelated:? cultureRelated:? sportRelated:? fairlyGeneric:? appointmentRelated:?];

        [v266 setObject:v141 forKeyedSubscript:v15];
        v14 = v259 + 1;
        v13 = v243;
        a1 = v241;
      }

      while (v242 != v259 + 1);
      v148 = [v243 countByEnumeratingWithState:&v297 objects:v311 count:16];
      v242 = v148;
    }

    while (v148);
  }

  v295 = 0u;
  v296 = 0u;
  v293 = 0u;
  v294 = 0u;
  v149 = v238;
  v150 = [v149 countByEnumeratingWithState:&v293 objects:v306 count:16];
  v258 = v149;
  if (!v150)
  {
    goto LABEL_145;
  }

  v151 = v150;
  v152 = *v294;
  do
  {
    for (i = 0; i != v151; ++i)
    {
      if (*v294 != v152)
      {
        objc_enumerationMutation(v149);
      }

      v154 = *(*(&v293 + 1) + 8 * i);
      v155 = [v149 objectForKeyedSubscript:v154];
      if (v155 && ([v266 objectForKeyedSubscript:v154], (v156 = objc_claimAutoreleasedReturnValue()) != 0) && (v157 = v156, objc_msgSend(v266, "objectForKeyedSubscript:", v155), v158 = objc_claimAutoreleasedReturnValue(), v158, v157, v158))
      {
        v159 = [v266 objectForKeyedSubscript:v154];
        v160 = [v266 objectForKeyedSubscript:v155];
        [v159 _addParent:v160];

        v161 = [v266 objectForKeyedSubscript:v155];
        v149 = v258;
        v162 = [v266 objectForKeyedSubscript:v154];
        [v161 _addChild:v162];
      }

      else
      {
        if (!a5)
        {
          goto LABEL_143;
        }

        v163 = [v9 objectForKeyedSubscript:@"PARENT"];

        if (!v163)
        {
          v164 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v9 setObject:v164 forKeyedSubscript:@"PARENT"];
        }

        v161 = [v9 objectForKeyedSubscript:@"PARENT"];
        v162 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parent %@ for node %@", v155, v154];
        [v161 addObject:v162];
      }

LABEL_143:
    }

    v151 = [v149 countByEnumeratingWithState:&v293 objects:v306 count:16];
  }

  while (v151);
LABEL_145:

  v254 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@-expanded", @"Events-EventType", v236, v244];
  v256 = [&unk_285B1A6A0 objectForKeyedSubscript:?];
  if (v256)
  {
    v291 = 0u;
    v292 = 0u;
    v289 = 0u;
    v290 = 0u;
    v165 = v256;
    v166 = [v165 countByEnumeratingWithState:&v289 objects:v305 count:16];
    if (v166)
    {
      v167 = v166;
      v168 = *v290;
      do
      {
        for (j = 0; j != v167; ++j)
        {
          if (*v290 != v168)
          {
            objc_enumerationMutation(v165);
          }

          v170 = *(*(&v289 + 1) + 8 * j);
          v171 = [v165 objectForKeyedSubscript:v170];
          if ([v171 count])
          {
            v172 = [v266 objectForKeyedSubscript:v170];

            if (v172)
            {
              v173 = [v266 objectForKeyedSubscript:v170];
              [v173 addEventPatterns:v171];
            }
          }
        }

        v167 = [v165 countByEnumeratingWithState:&v289 objects:v305 count:16];
      }

      while (v167);
    }
  }

  v287 = 0u;
  v288 = 0u;
  v285 = 0u;
  v286 = 0u;
  v174 = v266;
  v175 = [v174 countByEnumeratingWithState:&v285 objects:v304 count:16];
  if (v175)
  {
    v176 = v175;
    v177 = *v286;
    do
    {
      for (k = 0; k != v176; ++k)
      {
        if (*v286 != v177)
        {
          objc_enumerationMutation(v174);
        }

        v179 = [v174 objectForKeyedSubscript:*(*(&v285 + 1) + 8 * k)];
        v180 = [v179 parent];
        if (v180)
        {
          v181 = v180;
          do
          {
            v182 = [v181 patternKeywords];
            v183 = [v179 patternKeywords];
            [v182 addObjectsFromArray:v183];

            v184 = [v181 titleKeywords];
            v185 = [v179 titleKeywords];
            [v184 addObjectsFromArray:v185];

            v186 = [v181 genericPatternKeywords];
            v187 = [v179 genericPatternKeywords];
            [v186 addObjectsFromArray:v187];

            v188 = [v179 subjectKeywords];
            v189 = [v181 subjectKeywords];
            [v188 addObjectsFromArray:v189];

            v190 = [v181 parent];

            v181 = v190;
          }

          while (v190);
        }
      }

      v176 = [v174 countByEnumeratingWithState:&v285 objects:v304 count:16];
    }

    while (v176);
  }

  v270 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"Events-Priorities", v244];
  v191 = [&unk_285B1A6A0 objectForKeyedSubscript:?];
  if (!v191)
  {
    v192 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't load priority rules from file %@", v270];
    [v9 setObject:v192 forKeyedSubscript:v270];
  }

  v283 = 0u;
  v284 = 0u;
  v281 = 0u;
  v282 = 0u;
  v193 = v191;
  v262 = v193;
  v264 = [v193 countByEnumeratingWithState:&v281 objects:v303 count:16];
  if (v264)
  {
    v260 = *v282;
    do
    {
      v194 = 0;
      do
      {
        if (*v282 != v260)
        {
          objc_enumerationMutation(v193);
        }

        v267 = v194;
        v195 = *(*(&v281 + 1) + 8 * v194);
        v196 = [v193 objectForKeyedSubscript:v195];
        v277 = 0u;
        v278 = 0u;
        v279 = 0u;
        v280 = 0u;
        v197 = v196;
        v198 = [v197 countByEnumeratingWithState:&v277 objects:v302 count:16];
        if (v198)
        {
          v199 = v198;
          v200 = *v278;
          do
          {
            for (m = 0; m != v199; ++m)
            {
              if (*v278 != v200)
              {
                objc_enumerationMutation(v197);
              }

              v202 = *(*(&v277 + 1) + 8 * m);
              v203 = [v197 objectForKeyedSubscript:v202];
              if ([v202 isEqualToString:@"ALL"] && (objc_msgSend(v174, "objectForKeyedSubscript:", v195), v204 = objc_claimAutoreleasedReturnValue(), v204, v204))
              {
                v205 = [v174 objectForKeyedSubscript:v195];
                [v205 setHighPriority:1];
              }

              else if ([v195 isEqualToString:@"ALL"] && (objc_msgSend(v174, "objectForKeyedSubscript:", v202), v206 = objc_claimAutoreleasedReturnValue(), v206, v206))
              {
                v205 = [v174 objectForKeyedSubscript:v202];
                [v205 setLowPriority:1];
              }

              else
              {
                v207 = [v174 objectForKeyedSubscript:v202];

                if (v207)
                {
                  v205 = [v174 objectForKeyedSubscript:v202];
                  [v205 _addUpperPriorityEventTypeIdentifier:v195 weight:v203];
                }

                else
                {
                  if (!a5)
                  {
                    goto LABEL_190;
                  }

                  v205 = [v271 objectForKeyedSubscript:v270];
                  v208 = [MEMORY[0x277CCACA8] stringWithFormat:@"Odd priority rule : %@ > %@", v195, v202];
                  [v205 addObject:v208];
                }
              }

LABEL_190:
            }

            v199 = [v197 countByEnumeratingWithState:&v277 objects:v302 count:16];
          }

          while (v199);
        }

        v194 = v267 + 1;
        v193 = v262;
      }

      while (v267 + 1 != v264);
      v264 = [v262 countByEnumeratingWithState:&v281 objects:v303 count:16];
    }

    while (v264);
  }

  if (a5)
  {
    v275 = 0u;
    v276 = 0u;
    v273 = 0u;
    v274 = 0u;
    v209 = v174;
    v268 = [v209 countByEnumeratingWithState:&v273 objects:v301 count:16];
    if (v268)
    {
      v210 = *v274;
      v265 = v209;
      do
      {
        for (n = 0; n != v268; ++n)
        {
          if (*v274 != v210)
          {
            objc_enumerationMutation(v209);
          }

          v212 = *(*(&v273 + 1) + 8 * n);
          v213 = [v209 objectForKeyedSubscript:v212];
          v214 = [v213 patternKeywords];

          v215 = [IPRegexToolbox regexPatternForLanguageID:v244 eventVocabularyArray:v214];
          v216 = [v215 lowercaseString];
          v217 = [v216 isEqualToString:v215];

          if ((v217 & 1) == 0)
          {
            v218 = [v271 objectForKeyedSubscript:@"REGEX"];

            if (!v218)
            {
              v219 = objc_opt_new();
              [v271 setObject:v219 forKeyedSubscript:@"REGEX"];
            }

            v220 = [v271 objectForKeyedSubscript:@"REGEX"];
            v221 = [MEMORY[0x277CCACA8] stringWithFormat:@"Upper case characters in regex for : %@ : %@", v212, v215];
            [v220 addObject:v221];
          }

          v222 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v215 options:0 error:0];
          if (!v222)
          {
            v223 = v210;
            v224 = [v271 objectForKeyedSubscript:@"REGEX"];

            if (!v224)
            {
              v225 = objc_opt_new();
              [v271 setObject:v225 forKeyedSubscript:@"REGEX"];
            }

            v226 = [v271 objectForKeyedSubscript:@"REGEX"];
            v227 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid regex for : %@ : %@", v212, v215];
            [v226 addObject:v227];

            v210 = v223;
            v209 = v265;
          }
        }

        v268 = [v209 countByEnumeratingWithState:&v273 objects:v301 count:16];
      }

      while (v268);
    }

    objc_autoreleasePoolPop(context);
    v228 = v271;
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IPEventClassification" code:-1 userInfo:v271];
  }

  else
  {

    objc_autoreleasePoolPop(context);
    v228 = v271;
  }

  v229 = v174;

  v230 = *MEMORY[0x277D85DE8];
  return v174;
}

+ (id)allClusterIdentifiers
{
  v5[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"GATHERING";
  v5[1] = @"APPOINTMENT";
  v5[2] = @"ENTERTAINMENT";
  v5[3] = @"ARRANGEMENT";
  v5[4] = @"EVENT";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_parentFromIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    v5 = [v3 componentsSeparatedByString:@"::"];
    v6 = [v4 initWithArray:v5];

    if ([v6 count] >= 2)
    {
      [v6 removeLastObject];
      v7 = [v6 _pas_componentsJoinedByString:@"::"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_identifierForCluster:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return @"None";
  }

  else
  {
    return off_278F23440[a3 - 1];
  }
}

+ (id)_identifiersForClusters:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 _identifierForCluster:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "integerValue", v14)}];
        [v5 appendString:v11];

        [v5 appendString:@" "];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_mealClassificationTypeUsingStartDate:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getCalendar();
  v6 = [v5 components:96 fromDate:v4];

  v7 = [v6 hour];
  v8 = [v6 minute];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [(IPEventClassificationType *)self children];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = v8 + 60 * v7;
    v13 = *v30;
    v14 = v12;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        if ([v16 useForTimeAdjustement])
        {
          v17 = [v16 defaultCumulativeMinutes];
          [v16 minutesBeforeDefaultStartingTime];
          if (v17 - v18 <= v14)
          {
            v19 = [v16 defaultCumulativeMinutes];
            [v16 minutesAfterDefaultStartingTime];
            if (v20 + v19 >= v14)
            {
              if (IPDebuggingModeEnabled_once_2 != -1)
              {
                [IPEventClassificationType adjustedEventTitleForMessageUnits:subject:dateInSubject:eventStartDate:useTitleGenerationModel:isGeneratedFromSubject:isGeneratedFromTitleGenerationModel:];
              }

              if (IPDebuggingModeEnabled_sEnabled_2 == 1)
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
                  v25 = [(IPEventClassificationType *)self identifier];
                  v26 = [v16 identifier];
                  *buf = 138412802;
                  v34 = v25;
                  v35 = 2112;
                  v36 = v26;
                  v37 = 2112;
                  v38 = v4;
                  _os_log_impl(&dword_2485E4000, v24, OS_LOG_TYPE_INFO, "Adjustment from %@ to %@ using starting time %@ #EventClassification", buf, 0x20u);
                }
              }

              v22 = v16;

              goto LABEL_27;
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (IPDebuggingModeEnabled_once_2 != -1)
  {
    [IPEventClassificationType adjustedEventTitleForMessageUnits:subject:dateInSubject:eventStartDate:useTitleGenerationModel:isGeneratedFromSubject:isGeneratedFromTitleGenerationModel:];
  }

  if (IPDebuggingModeEnabled_sEnabled_2 == 1)
  {
    v21 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging();
      v21 = _IPLogHandle;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v4;
      _os_log_impl(&dword_2485E4000, v21, OS_LOG_TYPE_INFO, "No Adjustment possible using starting time %@ #EventClassification", buf, 0xCu);
    }
  }

  v22 = self;
LABEL_27:

  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

- (unint64_t)classificationDepth
{
  result = self->_classificationDepth;
  if (!result)
  {
    v4 = self;
    v5 = [(IPEventClassificationType *)v4 parent];

    v6 = 1;
    if (v5)
    {
      v7 = v4;
      do
      {
        v4 = [(IPEventClassificationType *)v7 parent];

        ++v6;
        v8 = [(IPEventClassificationType *)v4 parent];

        v7 = v4;
      }

      while (v8);
    }

    self->_classificationDepth = v6;

    return self->_classificationDepth;
  }

  return result;
}

+ (id)morePreciseEventClassificationTypeBetweenType:(id)a3 and:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  if (v5 != v6)
  {
    v8 = [v5 defaultTitle];
    if (!v8 || (v9 = v8, [v6 defaultTitle], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v7 = v5, v10))
    {
      v11 = [v6 defaultTitle];
      if (!v11 || (v12 = v11, [v5 defaultTitle], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v7 = v6, v13))
      {
        v14 = [v5 classificationDepth];
        if (v14 >= [v6 classificationDepth])
        {
          v7 = v5;
        }

        else
        {
          v7 = v6;
        }
      }
    }
  }

  v15 = v7;

  return v7;
}

+ (id)cleanSubject:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v6 = [v5 mutableCopy];

  [v6 addCharactersInString:{@", .;:：。"}];
  v7 = +[IPRegexToolbox emailSubjectPrefixRegex];
  v8 = [v7 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{objc_msgSend(v3, "length"), &stru_285AD0E88}];

  v9 = [v8 stringByTrimmingCharactersInSet:v6];

  objc_autoreleasePoolPop(v4);

  return v9;
}

- (BOOL)isDateWithinRange:(id)a3
{
  v4 = a3;
  [(IPEventClassificationType *)self minutesBeforeDefaultStartingTime];
  if (v5 == 0.0 || ([(IPEventClassificationType *)self minutesAfterDefaultStartingTime], v6 == 0.0))
  {
    v13 = 1;
  }

  else
  {
    v7 = getCalendar();
    v8 = [v7 components:96 fromDate:v4];

    v9 = [v8 hour];
    v10 = ([v8 minute] + 60 * v9);
    v11 = [(IPEventClassificationType *)self defaultCumulativeMinutes];
    [(IPEventClassificationType *)self minutesBeforeDefaultStartingTime];
    if (v11 - v12 <= v10)
    {
      v14 = [(IPEventClassificationType *)self defaultCumulativeMinutes];
      [(IPEventClassificationType *)self minutesAfterDefaultStartingTime];
      v13 = v15 + v14 >= v10;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

+ (id)eventTypeForMoviesAndLanguageID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a1 taxonomyForLanguageID:a3 clusterType:2];
  v4 = [v3 children];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
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
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:@"ENTERTAINMENT::MOVIES"];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
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
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)eventTypeForSportAndLanguageID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a1 taxonomyForLanguageID:a3 clusterType:2];
  v4 = [v3 children];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
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
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:@"ENTERTAINMENT::SPORT"];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
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
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)eventTypeForCultureAndLanguageID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a1 taxonomyForLanguageID:a3 clusterType:2];
  v4 = [v3 children];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
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
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:@"ENTERTAINMENT::CULTURE"];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
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
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)eventTypeForMealsAndLanguageID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a1 taxonomyForLanguageID:a3 clusterType:1];
  v4 = [v3 children];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
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
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:@"GATHERING::MEAL"];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
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
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)eventClassificationTypeFromMessageUnit:(id)a3 detectedStartDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 features];
  v9 = [a1 eventClassificationTypeFromMessageUnit:v7 features:v8];

  v10 = [v9 adjustedEventClassificationTypeWithStartDate:v6];

  return v10;
}

- (id)adjustedEventTitleForMessageUnits:(id)a3 subject:(id)a4 isDateInSubject:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    v10 = [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(IPEventClassificationType *)self adjustedEventTitleForMessageUnits:v8 subject:v9 dateInSubject:v10 eventStartDate:0 isGeneratedFromSubject:0];

  return v11;
}

+ (id)humanReadableClusterType:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return @"None";
  }

  else
  {
    return off_278F23468[a3 - 1];
  }
}

- (IPEventClassificationType)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end