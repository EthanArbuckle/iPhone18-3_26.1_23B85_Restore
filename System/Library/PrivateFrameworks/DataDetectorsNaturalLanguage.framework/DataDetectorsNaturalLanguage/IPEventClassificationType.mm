@interface IPEventClassificationType
+ (double)_averageDistanceBetweenFeatureKeyword:(id)keyword featureDates:(id)dates subjectLength:(unint64_t)length inSubject:(BOOL)subject;
+ (double)_scoreForKeywordsInSubject:(BOOL)subject distanceToDates:(double)result polarity:(unint64_t)polarity matchedRatio:(double)ratio keywordType:(unint64_t)type;
+ (id)_dateComponentsFromTaxonomyHHMMString:(id)string;
+ (id)_identifierForCluster:(unint64_t)cluster;
+ (id)_identifiersForClusters:(id)clusters;
+ (id)_loadTaxonomyForLanguageID:(id)d clusterIdentifier:(id)identifier error:(id *)error;
+ (id)_parentFromIdentifier:(id)identifier;
+ (id)allClusterIdentifiers;
+ (id)cleanSubject:(id)subject;
+ (id)eventClassificationTypeFromMessageUnit:(id)unit detectedStartDate:(id)date;
+ (id)eventClassificationTypeFromMessageUnit:(id)unit features:(id)features;
+ (id)eventClassificationTypeFromMessageUnit:(id)unit features:(id)features datafeatures:(id)datafeatures;
+ (id)eventClassificationTypeFromMessageUnit:(id)unit keywordFeatures:(id)features datafeatures:(id)datafeatures;
+ (id)eventTypeForCultureAndLanguageID:(id)d;
+ (id)eventTypeForMealsAndLanguageID:(id)d;
+ (id)eventTypeForMoviesAndLanguageID:(id)d;
+ (id)eventTypeForSportAndLanguageID:(id)d;
+ (id)fallbackEventTitleForMessageUnits:(id)units subject:(id)subject checkForDateInSubject:(BOOL)inSubject;
+ (id)humanReadableClusterType:(unint64_t)type;
+ (id)morePreciseEventClassificationTypeBetweenType:(id)type and:(id)and;
+ (id)taxonomyForLanguageID:(id)d clusterIdentifier:(id)identifier;
+ (id)taxonomyForLanguageID:(id)d clusterType:(unint64_t)type;
+ (id)titleGenerationModelPredictionForMessageUnits:(id)units;
- (BOOL)_isAParentOf:(id)of;
- (BOOL)isDateWithinRange:(id)range;
- (BOOL)prefersTitleSenderDecoration;
- (BOOL)questionMarkInString:(id)string;
- (IPEventClassificationType)initWithIdentifier:(id)identifier language:(id)language patternKeywords:(id)keywords titleKeywords:(id)titleKeywords subjectKeywords:(id)subjectKeywords defaultTitle:(id)title titleSenderTemplate:(id)template defaultStartingTimeHour:(int)self0 defaultStartingTimeMinutes:(int)self1 defaultDuration:(double)self2 preferedMeridian:(unint64_t)self3 parent:(id)self4 children:(id)self5 useForTimeAdjustement:(BOOL)self6 minutesBeforeDefaultStartingTime:(double)self7 minutesAfterDefaultStartingTime:(double)self8 allDayAllowed:(BOOL)self9 useGenericPatternsInClassification:(BOOL)classification movieRelated:(BOOL)related mealRelated:(BOOL)mealRelated cultureRelated:(BOOL)cultureRelated sportRelated:(BOOL)sportRelated fairlyGeneric:(BOOL)generic appointmentRelated:(BOOL)appointmentRelated;
- (IPEventClassificationType)parent;
- (double)_hasPriorityOverEventType:(id)type;
- (id)_mealClassificationTypeUsingStartDate:(id)date;
- (id)adjustedEventClassificationTypeWithStartDate:(id)date;
- (id)adjustedEventTitleForMessageUnits:(id)units;
- (id)adjustedEventTitleForMessageUnits:(id)units subject:(id)subject dateInSubject:(id)inSubject eventStartDate:(id)date useTitleGenerationModel:(BOOL)model isGeneratedFromSubject:(BOOL *)fromSubject isGeneratedFromTitleGenerationModel:(BOOL *)generationModel;
- (id)adjustedEventTitleForMessageUnits:(id)units subject:(id)subject isDateInSubject:(BOOL)inSubject;
- (id)dateWithoutTime:(id)time;
- (id)decoratedTitleFromTitle:(id)title participantName:(id)name isTitleSenderDecorated:(BOOL *)decorated;
- (id)description;
- (id)properCasedTitleForTitle:(id)title locale:(id)locale;
- (unint64_t)classificationDepth;
- (void)_addChild:(id)child;
- (void)_addParent:(id)parent;
- (void)_addUpperPriorityEventTypeIdentifier:(id)identifier weight:(id)weight;
- (void)addEventPatterns:(id)patterns;
@end

@implementation IPEventClassificationType

- (IPEventClassificationType)initWithIdentifier:(id)identifier language:(id)language patternKeywords:(id)keywords titleKeywords:(id)titleKeywords subjectKeywords:(id)subjectKeywords defaultTitle:(id)title titleSenderTemplate:(id)template defaultStartingTimeHour:(int)self0 defaultStartingTimeMinutes:(int)self1 defaultDuration:(double)self2 preferedMeridian:(unint64_t)self3 parent:(id)self4 children:(id)self5 useForTimeAdjustement:(BOOL)self6 minutesBeforeDefaultStartingTime:(double)self7 minutesAfterDefaultStartingTime:(double)self8 allDayAllowed:(BOOL)self9 useGenericPatternsInClassification:(BOOL)classification movieRelated:(BOOL)related mealRelated:(BOOL)mealRelated cultureRelated:(BOOL)cultureRelated sportRelated:(BOOL)sportRelated fairlyGeneric:(BOOL)generic appointmentRelated:(BOOL)appointmentRelated
{
  identifierCopy = identifier;
  languageCopy = language;
  keywordsCopy = keywords;
  titleKeywordsCopy = titleKeywords;
  subjectKeywordsCopy = subjectKeywords;
  titleCopy = title;
  templateCopy = template;
  parentCopy = parent;
  childrenCopy = children;
  v60.receiver = self;
  v60.super_class = IPEventClassificationType;
  v43 = [(IPEventClassificationType *)&v60 init];
  v44 = v43;
  if (v43)
  {
    v58 = subjectKeywordsCopy;
    [(IPEventClassificationType *)v43 setClassificationDepth:0];
    v57 = identifierCopy;
    [(IPEventClassificationType *)v44 setIdentifier:identifierCopy];
    [(IPEventClassificationType *)v44 setLanguage:languageCopy];
    v56 = keywordsCopy;
    v45 = [keywordsCopy mutableCopy];
    [(IPEventClassificationType *)v44 setPatternKeywords:v45];

    [(IPEventClassificationType *)v44 setTitleKeywords:titleKeywordsCopy];
    v46 = titleCopy;
    [(IPEventClassificationType *)v44 setDefaultTitle:titleCopy];
    [(IPEventClassificationType *)v44 setTitleSenderTemplate:templateCopy];
    [(IPEventClassificationType *)v44 setDefaultStartingTimeHour:hour];
    [(IPEventClassificationType *)v44 setDefaultStartingTimeMinutes:minutes];
    [(IPEventClassificationType *)v44 setDefaultCumulativeMinutes:(minutes + 60 * hour)];
    [(IPEventClassificationType *)v44 setDefaultDuration:duration];
    [(IPEventClassificationType *)v44 setPreferedMeridian:meridian];
    [(IPEventClassificationType *)v44 setParent:parentCopy];
    if (childrenCopy)
    {
      v47 = [childrenCopy mutableCopy];
    }

    else
    {
      childrenCopy = 0;
      v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v48 = v47;
    [(IPEventClassificationType *)v44 setChildren:v47];

    [(IPEventClassificationType *)v44 setUseForTimeAdjustement:adjustement];
    [(IPEventClassificationType *)v44 setMinutesBeforeDefaultStartingTime:time];
    [(IPEventClassificationType *)v44 setMinutesAfterDefaultStartingTime:startingTime];
    [(IPEventClassificationType *)v44 setAllDayAllowed:allowed];
    v49 = [subjectKeywordsCopy mutableCopy];
    [(IPEventClassificationType *)v44 setSubjectKeywords:v49];

    v50 = objc_opt_new();
    [(IPEventClassificationType *)v44 setUpperPriorityEventTypesIdentifiers:v50];

    v51 = objc_opt_new();
    [(IPEventClassificationType *)v44 setGenericPatternKeywords:v51];

    if (titleCopy && classification && [titleCopy length])
    {
      genericPatternKeywords = [(IPEventClassificationType *)v44 genericPatternKeywords];
      defaultTitle = [(IPEventClassificationType *)v44 defaultTitle];
      lowercaseString = [defaultTitle lowercaseString];
      [genericPatternKeywords addObject:lowercaseString];

      titleCopy = v46;
    }

    v44->_movieRelated = related;
    v44->_mealRelated = mealRelated;
    v44->_cultureRelated = cultureRelated;
    v44->_sportRelated = sportRelated;
    v44->_fairlyGeneric = generic;
    v44->_isAppointment = appointmentRelated;
    keywordsCopy = v56;
    identifierCopy = v57;
    subjectKeywordsCopy = v58;
  }

  return v44;
}

- (void)addEventPatterns:(id)patterns
{
  v30 = *MEMORY[0x277D85DE8];
  patternsCopy = patterns;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{2 * objc_msgSend(patternsCopy, "count")}];
  [v4 addObjectsFromArray:patternsCopy];
  v5 = objc_opt_new();
  if ([patternsCopy count])
  {
    v6 = 0;
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [patternsCopy objectAtIndexedSubscript:v6];
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

    while (v6 < [patternsCopy count]);
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

  titleKeywords = [(IPEventClassificationType *)self titleKeywords];

  if (!titleKeywords)
  {
    v21 = objc_opt_new();
    [(IPEventClassificationType *)self setTitleKeywords:v21];
  }

  titleKeywords2 = [(IPEventClassificationType *)self titleKeywords];
  [titleKeywords2 addObjectsFromArray:v4];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  parent = [(IPEventClassificationType *)self parent];

  if (parent)
  {
    parent2 = [(IPEventClassificationType *)self parent];
    identifier = [parent2 identifier];
    [v3 addObject:identifier];
  }

  v39 = v3;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  children = [(IPEventClassificationType *)self children];
  v10 = [children countByEnumeratingWithState:&v44 objects:v49 count:16];
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
          objc_enumerationMutation(children);
        }

        identifier2 = [*(*(&v44 + 1) + 8 * i) identifier];
        [v4 addObject:identifier2];
      }

      v11 = [children countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v11);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  upperPriorityEventTypesIdentifiers = [(IPEventClassificationType *)self upperPriorityEventTypesIdentifiers];
  v16 = [upperPriorityEventTypesIdentifiers countByEnumeratingWithState:&v40 objects:v48 count:16];
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
          objc_enumerationMutation(upperPriorityEventTypesIdentifiers);
        }

        [v5 addObject:*(*(&v40 + 1) + 8 * j)];
      }

      v17 = [upperPriorityEventTypesIdentifiers countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v17);
  }

  v37 = MEMORY[0x277CCACA8];
  identifier3 = [(IPEventClassificationType *)self identifier];
  language = [(IPEventClassificationType *)self language];
  defaultTitle = [(IPEventClassificationType *)self defaultTitle];
  defaultStartingTimeHour = [(IPEventClassificationType *)self defaultStartingTimeHour];
  defaultStartingTimeMinutes = [(IPEventClassificationType *)self defaultStartingTimeMinutes];
  [(IPEventClassificationType *)self defaultDuration];
  v31 = (v20 / 60.0);
  isHighPriority = [(IPEventClassificationType *)self isHighPriority];
  isLowPriority = [(IPEventClassificationType *)self isLowPriority];
  isAllDayAllowed = [(IPEventClassificationType *)self isAllDayAllowed];
  useForTimeAdjustement = [(IPEventClassificationType *)self useForTimeAdjustement];
  patternKeywords = [(IPEventClassificationType *)self patternKeywords];
  titleKeywords = [(IPEventClassificationType *)self titleKeywords];
  subjectKeywords = [(IPEventClassificationType *)self subjectKeywords];
  genericPatternKeywords = [(IPEventClassificationType *)self genericPatternKeywords];
  v38 = [v37 stringWithFormat:@"Identifier : %@\nLanguage : %@\nTitle : %@\nStartHour : %d, StartMin : %d\nDuration : %d min\nParents : %@\nChildren : %@\nUpper Priorities : %@\nHigh Priority : %d\nLow Priority : %d\nAll Day Allowed : %d\nUse for time adjustement : %d\nPattern Keywords : %@\nTitle Keywords : %@\nSubject keywords : %@\nGeneric Keywords : %@", identifier3, language, defaultTitle, defaultStartingTimeHour, defaultStartingTimeMinutes, v31, v39, v4, v5, isHighPriority, isLowPriority, isAllDayAllowed, useForTimeAdjustement, patternKeywords, titleKeywords, subjectKeywords, genericPatternKeywords];

  v28 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)_addChild:(id)child
{
  if (child)
  {
    childCopy = child;
    children = [(IPEventClassificationType *)self children];
    [children addObject:childCopy];
  }
}

- (void)_addParent:(id)parent
{
  if (parent)
  {
    [(IPEventClassificationType *)self setParent:?];
  }
}

- (void)_addUpperPriorityEventTypeIdentifier:(id)identifier weight:(id)weight
{
  if (identifier)
  {
    weightCopy = weight;
    identifierCopy = identifier;
    upperPriorityEventTypesIdentifiers = [(IPEventClassificationType *)self upperPriorityEventTypesIdentifiers];
    [upperPriorityEventTypesIdentifiers setObject:weightCopy forKeyedSubscript:identifierCopy];
  }
}

- (id)adjustedEventClassificationTypeWithStartDate:(id)date
{
  dateCopy = date;
  if (dateCopy && (-[IPEventClassificationType identifier](self, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:@"GATHERING::MEAL"], v5, v6))
  {
    selfCopy = [(IPEventClassificationType *)self _mealClassificationTypeUsingStartDate:dateCopy];
  }

  else
  {
    selfCopy = self;
  }

  v8 = selfCopy;

  return v8;
}

- (id)adjustedEventTitleForMessageUnits:(id)units
{
  unitsCopy = units;
  firstObject = [unitsCopy firstObject];
  originalMessage = [firstObject originalMessage];

  subject = [originalMessage subject];
  v8 = [(IPEventClassificationType *)self adjustedEventTitleForMessageUnits:unitsCopy subject:subject dateInSubject:0 eventStartDate:0 isGeneratedFromSubject:0];

  return v8;
}

- (BOOL)prefersTitleSenderDecoration
{
  if ([(IPEventClassificationType *)self isMealRelated])
  {
    return 1;
  }

  identifier = [(IPEventClassificationType *)self identifier];
  if ([identifier hasPrefix:@"GATHERING::PARTY"])
  {
    v3 = 1;
  }

  else
  {
    identifier2 = [(IPEventClassificationType *)self identifier];
    if ([identifier2 hasPrefix:@"GATHERING::DRINKS"])
    {
      v3 = 1;
    }

    else
    {
      identifier3 = [(IPEventClassificationType *)self identifier];
      v3 = [identifier3 hasPrefix:@"GATHERING::BBQ"];
    }
  }

  return v3;
}

- (id)decoratedTitleFromTitle:(id)title participantName:(id)name isTitleSenderDecorated:(BOOL *)decorated
{
  titleCopy = title;
  nameCopy = name;
  if (![nameCopy length] || !objc_msgSend(titleCopy, "length"))
  {
    v16 = titleCopy;
    goto LABEL_21;
  }

  selfCopy = self;
  v11 = selfCopy;
  if (selfCopy)
  {
    parent = selfCopy;
    do
    {
      v13 = parent;
      titleSenderTemplate = [parent titleSenderTemplate];
      parent = [parent parent];

      v15 = titleSenderTemplate == 0;
    }

    while (!titleSenderTemplate && parent);
  }

  else
  {
    titleSenderTemplate = 0;
    parent = 0;
    v15 = 1;
  }

  if (v15 && !parent)
  {
    language = [(IPEventClassificationType *)v11 language];
    parent = [IPEventClassificationType eventTypeForGenericEventAndLanguageID:language];

    titleSenderTemplate = [parent titleSenderTemplate];
  }

  titleSenderTemplate2 = [(IPEventClassificationType *)v11 titleSenderTemplate];

  if (!titleSenderTemplate2 && titleSenderTemplate)
  {
    [(IPEventClassificationType *)v11 setTitleSenderTemplate:titleSenderTemplate];
LABEL_17:
    if (decorated)
    {
      *decorated = 1;
    }

    v26 = _PASValidatedFormat(titleSenderTemplate, v19, v20, v21, v22, v23, v24, v25, titleCopy);
    goto LABEL_20;
  }

  if (titleSenderTemplate)
  {
    goto LABEL_17;
  }

  v26 = titleCopy;
LABEL_20:
  v16 = v26;

LABEL_21:

  return v16;
}

- (id)properCasedTitleForTitle:(id)title locale:(id)locale
{
  titleCopy = title;
  localeCopy = locale;
  v7 = [titleCopy hasPrefix:@"#"];
  v8 = titleCopy;
  v9 = v8;
  v10 = v8;
  if ((v7 & 1) == 0)
  {
    v11 = [v8 lowercaseStringWithLocale:localeCopy];
    v12 = [v11 isEqualToString:v9];

    v10 = v9;
    if (v12)
    {
      v10 = [v9 capitalizedStringWithLocale:localeCopy];
    }
  }

  return v10;
}

- (id)adjustedEventTitleForMessageUnits:(id)units subject:(id)subject dateInSubject:(id)inSubject eventStartDate:(id)date useTitleGenerationModel:(BOOL)model isGeneratedFromSubject:(BOOL *)fromSubject isGeneratedFromTitleGenerationModel:(BOOL *)generationModel
{
  modelCopy = model;
  v112 = *MEMORY[0x277D85DE8];
  unitsCopy = units;
  subjectCopy = subject;
  inSubjectCopy = inSubject;
  dateCopy = date;
  if (!modelCopy || ([IPEventClassificationType titleGenerationModelPredictionForMessageUnits:unitsCopy], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    defaultTitle = [(IPEventClassificationType *)self defaultTitle];
    firstObject = [unitsCopy firstObject];
    originalMessage = [firstObject originalMessage];

    v22 = MEMORY[0x277CBEAF8];
    language = [(IPEventClassificationType *)self language];
    v24 = [v22 localeWithLocaleIdentifier:language];

    v101 = originalMessage;
    type = [originalMessage type];
    v26 = IPMessageTypeShortMessage;

    defaultTitle2 = [(IPEventClassificationType *)self defaultTitle];
    v28 = defaultTitle2;
    if (defaultTitle2)
    {
      if (!subjectCopy || inSubjectCopy || type == v26)
      {

LABEL_20:
        v41 = 0;
        v42 = 0;
        goto LABEL_25;
      }

      v29 = [(IPEventClassificationType *)self questionMarkInString:subjectCopy];

      if (v29)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v30 = v24;
      v31 = dateCopy;
      subjectKeywords = [(IPEventClassificationType *)self subjectKeywords];
      v33 = [subjectKeywords count];
      if (!subjectCopy || !v33 || inSubjectCopy || type == v26)
      {

        v41 = 0;
        v42 = 0;
        dateCopy = v31;
        v24 = v30;
        goto LABEL_25;
      }

      v34 = [(IPEventClassificationType *)self questionMarkInString:subjectCopy];

      dateCopy = v31;
      v24 = v30;
      if (v34)
      {
        goto LABEL_20;
      }
    }

    v35 = [objc_opt_class() cleanSubject:subjectCopy];

    if (([v35 length] - 5) > 0x2D)
    {
      v41 = 0;
      v42 = 0;
      subjectCopy = v35;
    }

    else
    {
      v98 = v24;
      v36 = dateCopy;
      lowercaseString = [v35 lowercaseString];
      defaultTitle3 = [(IPEventClassificationType *)self defaultTitle];
      lowercaseString2 = [defaultTitle3 lowercaseString];
      v40 = [lowercaseString isEqualToString:lowercaseString2];

      if (v40)
      {
        v41 = 0;
        v42 = 0;
      }

      else
      {
        v43 = MEMORY[0x277CCACA8];
        identifier = [(IPEventClassificationType *)self identifier];
        language2 = [(IPEventClassificationType *)self language];
        v46 = [v43 stringWithFormat:@"%@-%@-%@", identifier, language2, @"subject"];

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

      dateCopy = v36;
      subjectCopy = v35;
      v24 = v98;
    }

LABEL_25:
    v103 = subjectCopy;
    if (v42 || !subjectCopy)
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
            defaultTitle4 = [(IPEventClassificationType *)self defaultTitle];
            *buf = 138412546;
            v109 = defaultTitle4;
            v110 = 2112;
            v111 = v103;
            _os_log_impl(&dword_2485E4000, v66, OS_LOG_TYPE_INFO, "Enriched using subject from %@ to %@ #EventClassification", buf, 0x16u);
          }
        }

        if (fromSubject)
        {
          *fromSubject = 1;
        }

        goto LABEL_80;
      }
    }

    else
    {
      v94 = v41;
      v97 = inSubjectCopy;
      v96 = dateCopy;
      v49 = MEMORY[0x277CCACA8];
      identifier2 = [(IPEventClassificationType *)self identifier];
      language3 = [(IPEventClassificationType *)self language];
      v52 = [v49 stringWithFormat:@"%@-%@-%@", identifier2, language3, @"events"];

      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = __183__IPEventClassificationType_adjustedEventTitleForMessageUnits_subject_dateInSubject_eventStartDate_useTitleGenerationModel_isGeneratedFromSubject_isGeneratedFromTitleGenerationModel___block_invoke_2;
      v106[3] = &unk_278F233D0;
      v106[4] = self;
      v95 = v52;
      v53 = [IPRegexToolbox regularExpressionWithKey:v52 generator:v106];
      v54 = [IPRegexToolbox firstMatchingKeywordForRegex:v53 inString:subjectCopy needsToLowercase:1];
      v55 = [unitsCopy count];
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
          v61 = [unitsCopy objectAtIndexedSubscript:v60 - 1];
          text = [v61 text];
          v58 = [IPRegexToolbox firstMatchingKeywordForRegex:v53 inString:text needsToLowercase:1];

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

      inSubjectCopy = v97;

      if (v64)
      {
        dateCopy = v96;
        goto LABEL_48;
      }

      dateCopy = v96;
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
            defaultTitle5 = [(IPEventClassificationType *)self defaultTitle];
            *buf = 138412546;
            v109 = defaultTitle5;
            v110 = 2112;
            v111 = v59;
            _os_log_impl(&dword_2485E4000, v69, OS_LOG_TYPE_INFO, "Enrichment from %@ to %@ #EventClassification", buf, 0x16u);
          }
        }

        localeIdentifier = [v24 localeIdentifier];
        v72 = [localeIdentifier isEqualToString:@"fr"];

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

    v19 = defaultTitle;
    if ([defaultTitle length])
    {
      v59 = 0;
    }

    else if (inSubjectCopy && (-[IPEventClassificationType dateWithoutTime:](self, "dateWithoutTime:", dateCopy), v75 = objc_claimAutoreleasedReturnValue(), -[IPEventClassificationType dateWithoutTime:](self, "dateWithoutTime:", inSubjectCopy), v76 = objc_claimAutoreleasedReturnValue(), v77 = [v75 isEqualToDate:v76], v76, v75, !v77))
    {
      v59 = 0;
      v19 = defaultTitle;
    }

    else
    {
      v99 = v24;
      v78 = dateCopy;
      v79 = objc_opt_class();
      language4 = [(IPEventClassificationType *)self language];
      v81 = [v79 taxonomyForLanguageID:language4 clusterType:5];

      v82 = MEMORY[0x277CCACA8];
      identifier3 = [v81 identifier];
      language5 = [(IPEventClassificationType *)self language];
      v85 = [v82 stringWithFormat:@"%@-%@-%@", identifier3, language5, @"generic-events"];

      subjectKeywords2 = [v81 subjectKeywords];
      v87 = [subjectKeywords2 count];

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
          v90 = defaultTitle;
        }
      }

      else
      {
        v90 = defaultTitle;
      }

      v59 = 0;
      v19 = v90;
      dateCopy = v78;
      v24 = v99;
    }

LABEL_80:

    subjectCopy = v103;
    goto LABEL_81;
  }

  v19 = v18;
  if (generationModel)
  {
    *generationModel = 1;
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

+ (id)titleGenerationModelPredictionForMessageUnits:(id)units
{
  v20 = *MEMORY[0x277D85DE8];
  unitsCopy = units;
  if (_os_feature_enabled_impl())
  {
    firstObject = [unitsCopy firstObject];
    bestLanguageID = [firstObject bestLanguageID];

    if ([&unk_285B0FCC0 containsObject:bestLanguageID])
    {
      firstObject2 = [unitsCopy firstObject];
      originalMessage = [firstObject2 originalMessage];

      v8 = [MEMORY[0x277D01FF0] messageWithIPMessage:originalMessage];
      serviceForIpsos = [MEMORY[0x277D02118] serviceForIpsos];
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

      v11 = [serviceForIpsos titleSuggestionForMessage:v8 error:0];
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
        v19 = bestLanguageID;
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
        v17 = bestLanguageID;
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

- (id)dateWithoutTime:(id)time
{
  timeCopy = time;
  if (!timeCopy)
  {
    timeCopy = [MEMORY[0x277CBEAA8] date];
  }

  v4 = getCalendar();
  v5 = [v4 components:28 fromDate:timeCopy];

  v6 = getCalendar();
  v7 = [v6 dateFromComponents:v5];

  return v7;
}

- (BOOL)questionMarkInString:(id)string
{
  stringCopy = string;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"¿?？"];
  v6 = [stringCopy rangeOfCharacterFromSet:v5] != 0x7FFFFFFFFFFFFFFFLL;

  objc_autoreleasePoolPop(v4);
  return v6;
}

+ (id)fallbackEventTitleForMessageUnits:(id)units subject:(id)subject checkForDateInSubject:(BOOL)inSubject
{
  inSubjectCopy = inSubject;
  unitsCopy = units;
  subjectCopy = subject;
  firstObject = [unitsCopy firstObject];
  bestLanguageID = [firstObject bestLanguageID];
  if (bestLanguageID)
  {
    if (([&unk_285B0FCD8 containsObject:bestLanguageID] & 1) == 0)
    {
      if (!inSubjectCopy)
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
      v14 = [subjectCopy length];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __93__IPEventClassificationType_fallbackEventTitleForMessageUnits_subject_checkForDateInSubject___block_invoke;
      v18[3] = &unk_278F233F8;
      v18[4] = &v20;
      [v12 enumerateMatchesInString:subjectCopy options:0 range:0 usingBlock:{v14, v18}];
      v15 = *(v21 + 24);

      _Block_object_dispose(&v20, 8);
      if ((v15 & 1) == 0)
      {
LABEL_5:
        v16 = [self cleanSubject:subjectCopy];
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

+ (id)eventClassificationTypeFromMessageUnit:(id)unit keywordFeatures:(id)features datafeatures:(id)datafeatures
{
  v233 = *MEMORY[0x277D85DE8];
  unitCopy = unit;
  featuresCopy = features;
  datafeaturesCopy = datafeatures;
  v11 = featuresCopy;
  v164 = datafeaturesCopy;
  if (![featuresCopy count])
  {
    v103 = 0;
    goto LABEL_123;
  }

  v12 = objc_opt_new();
  v180 = objc_opt_new();
  v179 = objc_opt_new();
  v181 = objc_opt_new();
  text = [unitCopy text];
  v14 = v11;
  v15 = [text length];
  originalMessage = [unitCopy originalMessage];
  subject = [originalMessage subject];
  v18 = [subject length];

  originalMessage2 = [unitCopy originalMessage];
  subject2 = [originalMessage2 subject];
  v165 = [subject2 length];

  originalMessage3 = [unitCopy originalMessage];
  type = [originalMessage3 type];
  v168 = [type isEqualToString:IPMessageTypeShortMessage];

  v160 = unitCopy;
  originalMessage4 = [unitCopy originalMessage];
  isReply = [originalMessage4 isReply];

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
    selfCopy = self;
    v162 = isReply;
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
        contextDictionary = [v28 contextDictionary];
        v30 = [contextDictionary objectForKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
        v31 = [v30 isEqual:MEMORY[0x277CBEC38]];

        if ((v31 & isReply) == 1)
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
            keywordString = [v28 keywordString];
            *buf = 138412290;
            v217 = keywordString;
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
            [self _averageDistanceBetweenFeatureKeyword:v28 featureDates:v164 subjectLength:v165 inSubject:v31];
            v40 = (v26 - v39) / v26;
            v41 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
            contextDictionary2 = [v28 contextDictionary];
            [contextDictionary2 setObject:v41 forKeyedSubscript:@"IPFeatureKeywordContextDistanceToDate"];

            if (v31)
            {
              v43 = 1;
            }

            else
            {
              rejectionRanges = [v160 rejectionRanges];
              matchRange = [v28 matchRange];
              v48 = [rejectionRanges intersectsIndexesInRange:{matchRange, v47}];

              if (v48)
              {
                v43 = 4;
              }

              else
              {
                proposalAndAcceptationRanges = [v160 proposalAndAcceptationRanges];
                matchRange2 = [v28 matchRange];
                v52 = [proposalAndAcceptationRanges intersectsIndexesInRange:{matchRange2, v51}];

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

            keywordString2 = [v28 keywordString];
            v54 = [keywordString2 length];

            v55 = v54 / v26;
            v56 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
            contextDictionary3 = [v28 contextDictionary];
            [contextDictionary3 setObject:v56 forKeyedSubscript:@"IPFeatureKeywordContextMatchedRatio"];

            [self _scoreForKeywordsInSubject:v31 distanceToDates:v43 polarity:objc_msgSend(v28 matchedRatio:"type") keywordType:{v40, v55}];
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
              keywordString3 = [v28 keywordString];
              eventTypes = [v28 eventTypes];
              lastObject = [eventTypes lastObject];
              identifier = [lastObject identifier];
              v66 = [IPFeatureSentence humanReadableFeaturePolarity:v43];
              type2 = [v28 type];
              *buf = 138414082;
              v217 = keywordString3;
              v218 = 2112;
              v219 = identifier;
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
              v231 = type2;
              _os_log_impl(&dword_2485E4000, v61, OS_LOG_TYPE_DEBUG, "      --> matched string: [%@] type:%@ score:%f subject:%d distance:%.2f polarity:%@ matchedRatio:%.2f%% type:%lu #EventClassification", buf, 0x4Eu);
            }

            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            eventTypes2 = [v28 eventTypes];
            v69 = [eventTypes2 countByEnumeratingWithState:&v202 objects:v215 count:16];
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
                    objc_enumerationMutation(eventTypes2);
                  }

                  v73 = *(*(&v202 + 1) + 8 * j);
                  identifier2 = [v73 identifier];
                  v75 = [v12 objectForKeyedSubscript:identifier2];
                  v76 = v59;
                  if (v75)
                  {
                    identifier3 = [v73 identifier];
                    v78 = [v12 objectForKeyedSubscript:identifier3];
                    [v78 doubleValue];
                    v76 = v59 + v79;
                  }

                  if (v76 > 0.0)
                  {
                    v80 = [MEMORY[0x277CCABB0] numberWithDouble:v76];
                    identifier4 = [v73 identifier];
                    [v12 setObject:v80 forKeyedSubscript:identifier4];

                    identifier5 = [v73 identifier];
                    [v181 setObject:v73 forKeyedSubscript:identifier5];

                    if ([v73 classificationDepth] == 1)
                    {
                      v83 = [MEMORY[0x277CCABB0] numberWithDouble:v76];
                      identifier6 = [v73 identifier];
                      [v180 setObject:v83 forKeyedSubscript:identifier6];

                      identifier7 = [v73 identifier];
                      [v179 setObject:v73 forKeyedSubscript:identifier7];
                    }
                  }
                }

                v70 = [eventTypes2 countByEnumeratingWithState:&v202 objects:v215 count:16];
              }

              while (v70);
            }

            self = selfCopy;
            isReply = v162;
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
              keywordString = [v28 keywordString];
              *buf = 138412290;
              v217 = keywordString;
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
        children = [v90 children];
        v92 = [children countByEnumeratingWithState:&v194 objects:v213 count:16];
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
              objc_enumerationMutation(children);
            }

            identifier8 = [*(*(&v194 + 1) + 8 * v95) identifier];
            v97 = [obja objectForKey:identifier8];

            if (v97)
            {
              break;
            }

            if (v93 == ++v95)
            {
              v93 = [children countByEnumeratingWithState:&v194 objects:v213 count:16];
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
            children = v99;
            v100 = [v166 objectForKeyedSubscript:v89];
            *buf = 138412546;
            v217 = v89;
            v218 = 2112;
            v219 = v100;
            _os_log_impl(&dword_2485E4000, children, OS_LOG_TYPE_DEBUG, "%@ score : %@ #EventClassification", buf, 0x16u);

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
      identifier9 = [v132 identifier];
      v134 = [v105 objectForKeyedSubscript:identifier9];
      if (v134)
      {
        v135 = v134;
        identifier10 = [v132 identifier];
        v137 = [v105 objectForKeyedSubscript:identifier10];
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

          identifier14 = v153;
          v154 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging();
            v154 = _IPLogHandle;
          }

          if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
          {
            v155 = v154;
            identifier11 = [identifier14 identifier];
            *buf = 138412290;
            v217 = identifier11;
            _os_log_impl(&dword_2485E4000, v155, OS_LOG_TYPE_DEBUG, "Final event type : %@ #EventClassification", buf, 0xCu);
          }

          v103 = identifier14;
LABEL_119:

LABEL_121:
          goto LABEL_122;
        }

        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        identifier12 = [v132 identifier];
        identifier9 = [v105 objectForKeyedSubscript:identifier12];

        v140 = [identifier9 countByEnumeratingWithState:&v182 objects:v210 count:16];
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
              objc_enumerationMutation(identifier9);
            }

            v144 = *(*(&v182 + 1) + 8 * v143);
            v145 = [v107 objectForKeyedSubscript:v144];
            [v145 doubleValue];
            v147 = v146;

            identifier13 = [v132 identifier];
            v149 = [v105 objectForKeyedSubscript:identifier13];
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
              v141 = [identifier9 countByEnumeratingWithState:&v182 objects:v210 count:16];
              if (v141)
              {
                goto LABEL_103;
              }

              goto LABEL_112;
            }
          }

          identifier14 = [v181 objectForKeyedSubscript:v144];

          v131 = v176 - 1;
          v132 = identifier14;
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

  allKeys = [v166 allKeys];
  firstObject = [allKeys firstObject];
  v103 = [v181 objectForKeyedSubscript:firstObject];

  v104 = _IPLogHandle;
  if (!_IPLogHandle)
  {
    IPInitLogging();
    v104 = _IPLogHandle;
  }

  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
  {
    v105 = v104;
    identifier14 = [v103 identifier];
    *buf = 138412290;
    v217 = identifier14;
    _os_log_impl(&dword_2485E4000, v105, OS_LOG_TYPE_DEBUG, "Final event type : %@ #EventClassification", buf, 0xCu);
    goto LABEL_119;
  }

LABEL_122:
  unitCopy = v160;
  v11 = v159;

LABEL_123:
  v157 = *MEMORY[0x277D85DE8];

  return v103;
}

+ (id)eventClassificationTypeFromMessageUnit:(id)unit features:(id)features
{
  v36 = *MEMORY[0x277D85DE8];
  unitCopy = unit;
  featuresCopy = features;
  objc_opt_class();
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  interactedDateRange = [unitCopy interactedDateRange];
  if (interactedDateRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = featuresCopy;
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
    v15 = interactedDateRange;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = featuresCopy;
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

  v22 = [self eventClassificationTypeFromMessageUnit:unitCopy features:featuresCopy datafeatures:v7];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)eventClassificationTypeFromMessageUnit:(id)unit features:(id)features datafeatures:(id)datafeatures
{
  v26 = *MEMORY[0x277D85DE8];
  unitCopy = unit;
  featuresCopy = features;
  datafeaturesCopy = datafeatures;
  v11 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = featuresCopy;
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

  v18 = [self eventClassificationTypeFromMessageUnit:unitCopy keywordFeatures:v11 datafeatures:datafeaturesCopy];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (double)_scoreForKeywordsInSubject:(BOOL)subject distanceToDates:(double)result polarity:(unint64_t)polarity matchedRatio:(double)ratio keywordType:(unint64_t)type
{
  if (polarity == 4)
  {
    v7 = 0.0;
  }

  else
  {
    if (polarity != 2)
    {
      goto LABEL_6;
    }

    v7 = 1.5;
  }

  result = result * v7;
LABEL_6:
  v8 = result + ratio;
  if (result > 0.0)
  {
    return v8;
  }

  return result;
}

+ (double)_averageDistanceBetweenFeatureKeyword:(id)keyword featureDates:(id)dates subjectLength:(unint64_t)length inSubject:(BOOL)subject
{
  subjectCopy = subject;
  v54 = *MEMORY[0x277D85DE8];
  keywordCopy = keyword;
  datesCopy = dates;
  matchRange = [keywordCopy matchRange];
  v12 = matchRange;
  lengthCopy = length;
  if (subjectCopy)
  {
    matchRange2 = [keywordCopy matchRange];
    [keywordCopy matchRange];
    v15 = v14 + matchRange2;
  }

  else
  {
    v12 = matchRange + length;
    matchRange3 = [keywordCopy matchRange];
    [keywordCopy matchRange];
    v15 = matchRange3 + length + v17;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = datesCopy;
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
        contextDictionary = [v24 contextDictionary];
        v26 = [contextDictionary objectForKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
        if (v26)
        {
          [v24 contextDictionary];
          v28 = v27 = keywordCopy;
          v29 = [v28 objectForKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
          v30 = [v29 BOOLValue] ^ 1;

          keywordCopy = v27;
        }

        else
        {
          v30 = 1;
        }

        matchRange4 = [v24 matchRange];
        v33 = v32;
        v56.location = [keywordCopy matchRange];
        v56.length = v34;
        v55.location = matchRange4;
        v55.length = v33;
        if (!NSIntersectionRange(v55, v56).length)
        {
          matchRange5 = [v24 matchRange];
          v36 = matchRange5;
          if (v30)
          {
            v36 = matchRange5 + lengthCopy;
            matchRange6 = [v24 matchRange];
            [v24 matchRange];
            v39 = matchRange6 + lengthCopy + v38;
          }

          else
          {
            matchRange7 = [v24 matchRange];
            [v24 matchRange];
            v39 = v41 + matchRange7;
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

- (double)_hasPriorityOverEventType:(id)type
{
  v35 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  identifier = [(IPEventClassificationType *)self identifier];
  identifier2 = [typeCopy identifier];
  v7 = [identifier isEqual:identifier2];

  v8 = 0.0;
  if ((v7 & 1) == 0)
  {
    if (-[IPEventClassificationType isHighPriority](self, "isHighPriority") && ([typeCopy isHighPriority] & 1) == 0)
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
        identifier3 = [(IPEventClassificationType *)self identifier];
        identifier4 = [typeCopy identifier];
        v29 = 138412802;
        v30 = identifier3;
        v31 = 2112;
        v32 = identifier4;
        v33 = 2048;
        v34 = 0x3FF0000000000000;
        v13 = "%@ has priority over %@ (high priority flag - weight %f) #EventClassification";
        goto LABEL_23;
      }
    }

    else if ([typeCopy _isAParentOf:self])
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
        identifier3 = [(IPEventClassificationType *)self identifier];
        identifier4 = [typeCopy identifier];
        v29 = 138412802;
        v30 = identifier3;
        v31 = 2112;
        v32 = identifier4;
        v33 = 2048;
        v34 = 0x3FF0000000000000;
        v13 = "%@ has priority over %@ (parent priority - weight %f) #EventClassification";
LABEL_23:
        _os_log_impl(&dword_2485E4000, v10, OS_LOG_TYPE_DEBUG, v13, &v29, 0x20u);
      }
    }

    else
    {
      upperPriorityEventTypesIdentifiers = [typeCopy upperPriorityEventTypesIdentifiers];
      identifier5 = [(IPEventClassificationType *)self identifier];
      v16 = [upperPriorityEventTypesIdentifiers objectForKeyedSubscript:identifier5];

      if (v16)
      {
        upperPriorityEventTypesIdentifiers2 = [typeCopy upperPriorityEventTypesIdentifiers];
        identifier6 = [(IPEventClassificationType *)self identifier];
        v19 = [upperPriorityEventTypesIdentifiers2 objectForKeyedSubscript:identifier6];
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
          identifier3 = [(IPEventClassificationType *)self identifier];
          identifier4 = [typeCopy identifier];
          v29 = 138412802;
          v30 = identifier3;
          v31 = 2112;
          v32 = identifier4;
          v33 = 2048;
          v34 = *&v8;
          v13 = "%@ has priority over %@ (explicit priority rule - weight %f) #EventClassification";
          goto LABEL_23;
        }
      }

      else if ([typeCopy isLowPriority])
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
          identifier3 = [(IPEventClassificationType *)self identifier];
          identifier4 = [typeCopy identifier];
          v29 = 138412802;
          v30 = identifier3;
          v31 = 2112;
          v32 = identifier4;
          v33 = 2048;
          v34 = 0x3FF0000000000000;
          v13 = "%@ has priority over %@ (low priority flag - weight %f) #EventClassification";
          goto LABEL_23;
        }
      }

      else if (-[IPEventClassificationType classificationDepth](self, "classificationDepth") >= 2 && [typeCopy classificationDepth] == 1)
      {
        v26 = IPSOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          identifier7 = [(IPEventClassificationType *)self identifier];
          identifier8 = [typeCopy identifier];
          v29 = 138412802;
          v30 = identifier7;
          v31 = 2112;
          v32 = identifier8;
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

- (BOOL)_isAParentOf:(id)of
{
  parent = [of parent];
  parent2 = parent;
  for (i = parent != 0; parent2 != self && parent2; i = parent2 != 0)
  {
    v7 = parent2;
    parent2 = [(IPEventClassificationType *)parent2 parent];
  }

  return i;
}

+ (id)taxonomyForLanguageID:(id)d clusterType:(unint64_t)type
{
  dCopy = d;
  v7 = [self _identifierForCluster:type];
  v8 = [self taxonomyForLanguageID:dCopy clusterIdentifier:v7];

  return v8;
}

+ (id)taxonomyForLanguageID:(id)d clusterIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (taxonomyForLanguageID_clusterIdentifier___pasOnceToken18 != -1)
    {
      +[IPEventClassificationType taxonomyForLanguageID:clusterIdentifier:];
    }

    result = [taxonomyForLanguageID_clusterIdentifier___pasExprOnceResult result];
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
    v12 = identifierCopy;
    selfCopy = self;
    v13 = dCopy;
    [result runWithLockAcquired:v11];
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

+ (id)_dateComponentsFromTaxonomyHHMMString:(id)string
{
  v3 = MEMORY[0x277CCAC80];
  stringCopy = string;
  v5 = [[v3 alloc] initWithString:stringCopy];

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

+ (id)_loadTaxonomyForLanguageID:(id)d clusterIdentifier:(id)identifier error:(id *)error
{
  v312 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v266 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v237 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v236 = identifierCopy;
  v244 = dCopy;
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@-expanded", @"Patterns-EventType", identifierCopy, dCopy];
  v11 = [&unk_285B1A6A0 objectForKeyedSubscript:dCopy];
  if (!v11)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't load taxonomy from file %@", dCopy];
    [v9 setObject:v12 forKeyedSubscript:dCopy];
  }

  v234 = dCopy;
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
    selfCopy = self;
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
          if (!error || [v17 count])
          {
            goto LABEL_16;
          }
        }

        else if (!error)
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
          errorCopy = 0;
LABEL_22:
          hour = -1;
          minute = -1;
          goto LABEL_23;
        }

        v24 = [self _dateComponentsFromTaxonomyHHMMString:v23];
        if (!v24)
        {
          errorCopy = error;
          if (error)
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

            errorCopy = 0;
            hour = -1;
            minute = -1;
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        v25 = v24;
        hour = [v24 hour];
        minute = [v25 minute];

        errorCopy = hour > 0;
        if (hour > 11)
        {
          v29 = 2;
          goto LABEL_24;
        }

LABEL_23:
        v29 = 1;
LABEL_24:
        if (errorCopy)
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
        bOOLValue = [v32 BOOLValue];

        if (bOOLValue)
        {
          v34 = minute;
        }

        else
        {
          v34 = -1;
        }

        v263 = v34;
        if (bOOLValue)
        {
          v35 = hour;
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
            if (error)
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

        if (error && v51)
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

        v60 = [self _parentFromIdentifier:v15];
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
          bOOLValue2 = [v64 BOOLValue];
        }

        else
        {
          bOOLValue2 = 0;
        }

        v65 = [v13 objectForKeyedSubscript:v15];
        v66 = [v65 objectForKeyedSubscript:@"START_TIME_MIN"];

        v67 = 0.0;
        v68 = 0.0;
        if (v66)
        {
          v69 = [v13 objectForKeyedSubscript:v15];
          v70 = [v69 objectForKeyedSubscript:@"START_TIME_MIN"];
          v71 = [self _dateComponentsFromTaxonomyHHMMString:v70];

          if (v71)
          {
            hour2 = [v71 hour];
            v68 = (-[v71 minute] - 60 * hour2 + v263 + 60 * v261);
          }

          v74 = v68 < 0.0 || v71 == 0;
          if (error && v74)
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
          v86 = [self _dateComponentsFromTaxonomyHHMMString:v85];

          if (v86)
          {
            hour3 = [v86 hour];
            v67 = ([v86 minute] - (v263 + 60 * v261) + 60 * hour3);
          }

          v89 = v67 < 0.0 || v86 == 0;
          if (error && v89)
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
          bOOLValue3 = [v100 BOOLValue];
        }

        else
        {
          bOOLValue3 = 0;
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
          lowercaseString = [v269 lowercaseString];
          [v103 addObject:lowercaseString];
        }

        v105 = [v13 objectForKeyedSubscript:v15];
        v248 = [v105 objectForKeyedSubscript:@"TITLE_SENDER_TEMPLATE"];

        v106 = [v13 objectForKeyedSubscript:v15];
        v107 = [v106 objectForKeyedSubscript:@"ALLOW_GENERIC_PATTERNS_KEYWORDS"];
        if (v107)
        {
          v108 = [v13 objectForKeyedSubscript:v15];
          v109 = [v108 objectForKeyedSubscript:@"ALLOW_GENERIC_PATTERNS_KEYWORDS"];
          bOOLValue4 = [v109 BOOLValue];
        }

        else
        {
          bOOLValue4 = 1;
        }

        v110 = [v13 objectForKeyedSubscript:v15];
        v111 = [v110 objectForKeyedSubscript:@"MOVIE_RELATED"];
        if (v111)
        {
          v112 = [v13 objectForKeyedSubscript:v15];
          v113 = [v112 objectForKeyedSubscript:@"MOVIE_RELATED"];
          bOOLValue5 = [v113 BOOLValue];
        }

        else
        {
          bOOLValue5 = 0;
        }

        v114 = [v13 objectForKeyedSubscript:v15];
        v115 = [v114 objectForKeyedSubscript:@"MEAL_RELATED"];
        if (v115)
        {
          v116 = [v13 objectForKeyedSubscript:v15];
          v117 = [v116 objectForKeyedSubscript:@"MEAL_RELATED"];
          bOOLValue6 = [v117 BOOLValue];
        }

        else
        {
          bOOLValue6 = 0;
        }

        v118 = [v13 objectForKeyedSubscript:v15];
        v119 = [v118 objectForKeyedSubscript:@"CULTURE_RELATED"];
        if (v119)
        {
          v120 = [v13 objectForKeyedSubscript:v15];
          v121 = [v120 objectForKeyedSubscript:@"CULTURE_RELATED"];
          bOOLValue7 = [v121 BOOLValue];
        }

        else
        {
          bOOLValue7 = 0;
        }

        v123 = [v13 objectForKeyedSubscript:v15];
        v124 = [v123 objectForKeyedSubscript:@"SPORT_RELATED"];
        if (v124)
        {
          v125 = [v13 objectForKeyedSubscript:v15];
          v126 = [v125 objectForKeyedSubscript:@"SPORT_RELATED"];
          bOOLValue8 = [v126 BOOLValue];

          v13 = v243;
        }

        else
        {
          bOOLValue8 = 0;
        }

        v128 = [v13 objectForKeyedSubscript:v15];
        v129 = [v128 objectForKeyedSubscript:@"FAIRLY_GENERIC"];
        if (v129)
        {
          v130 = [v13 objectForKeyedSubscript:v15];
          v131 = [v130 objectForKeyedSubscript:@"FAIRLY_GENERIC"];
          v132 = v13;
          bOOLValue9 = [v131 BOOLValue];
        }

        else
        {
          v132 = v13;
          bOOLValue9 = 0;
        }

        v134 = [v132 objectForKeyedSubscript:v15];
        v135 = [v134 objectForKeyedSubscript:@"APPOINTMENT_RELATED"];
        if (v135)
        {
          v136 = [v132 objectForKeyedSubscript:v15];
          v137 = [v136 objectForKeyedSubscript:@"APPOINTMENT_RELATED"];
          bOOLValue10 = [v137 BOOLValue];
        }

        else
        {
          bOOLValue10 = 0;
        }

        v9 = v271;

        v139 = [IPEventClassificationType alloc];
        v140 = objc_opt_new();
        LOBYTE(v233) = bOOLValue10;
        HIBYTE(v232) = bOOLValue9;
        BYTE6(v232) = bOOLValue8;
        BYTE5(v232) = bOOLValue7;
        BYTE4(v232) = bOOLValue6;
        BYTE3(v232) = bOOLValue5;
        BYTE2(v232) = bOOLValue4;
        BYTE1(v232) = bOOLValue3;
        LOBYTE(v232) = bOOLValue2;
        v141 = [IPEventClassificationType initWithIdentifier:v139 language:"initWithIdentifier:language:patternKeywords:titleKeywords:subjectKeywords:defaultTitle:titleSenderTemplate:defaultStartingTimeHour:defaultStartingTimeMinutes:defaultDuration:preferedMeridian:parent:children:useForTimeAdjustement:minutesBeforeDefaultStartingTime:minutesAfterDefaultStartingTime:allDayAllowed:useGenericPatternsInClassification:movieRelated:mealRelated:cultureRelated:sportRelated:fairlyGeneric:appointmentRelated:" patternKeywords:v15 titleKeywords:v244 subjectKeywords:v257 defaultTitle:v140 titleSenderTemplate:v103 defaultStartingTimeHour:v269 defaultStartingTimeMinutes:v38 defaultDuration:v68 preferedMeridian:v67 parent:v248 children:__PAIR64__(v263 useForTimeAdjustement:v261) minutesBeforeDefaultStartingTime:v253 minutesAfterDefaultStartingTime:0 allDayAllowed:0 useGenericPatternsInClassification:v232 movieRelated:v233 mealRelated:? cultureRelated:? sportRelated:? fairlyGeneric:? appointmentRelated:?];

        [v266 setObject:v141 forKeyedSubscript:v15];
        v14 = v259 + 1;
        v13 = v243;
        self = selfCopy;
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
        v154 = [v266 objectForKeyedSubscript:v154];
        [v161 _addChild:v154];
      }

      else
      {
        if (!error)
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
        v154 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parent %@ for node %@", v155, v154];
        [v161 addObject:v154];
      }

LABEL_143:
    }

    v151 = [v149 countByEnumeratingWithState:&v293 objects:v306 count:16];
  }

  while (v151);
LABEL_145:

  v244 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@-expanded", @"Events-EventType", v236, v244];
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
        parent = [v179 parent];
        if (parent)
        {
          v181 = parent;
          do
          {
            patternKeywords = [v181 patternKeywords];
            patternKeywords2 = [v179 patternKeywords];
            [patternKeywords addObjectsFromArray:patternKeywords2];

            titleKeywords = [v181 titleKeywords];
            titleKeywords2 = [v179 titleKeywords];
            [titleKeywords addObjectsFromArray:titleKeywords2];

            genericPatternKeywords = [v181 genericPatternKeywords];
            genericPatternKeywords2 = [v179 genericPatternKeywords];
            [genericPatternKeywords addObjectsFromArray:genericPatternKeywords2];

            subjectKeywords = [v179 subjectKeywords];
            subjectKeywords2 = [v181 subjectKeywords];
            [subjectKeywords addObjectsFromArray:subjectKeywords2];

            parent2 = [v181 parent];

            v181 = parent2;
          }

          while (parent2);
        }
      }

      v176 = [v174 countByEnumeratingWithState:&v285 objects:v304 count:16];
    }

    while (v176);
  }

  v2442 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"Events-Priorities", v244];
  v191 = [&unk_285B1A6A0 objectForKeyedSubscript:?];
  if (!v191)
  {
    v270 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't load priority rules from file %@", v2442];
    [v9 setObject:v270 forKeyedSubscript:v2442];
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
                  if (!error)
                  {
                    goto LABEL_190;
                  }

                  v205 = [v271 objectForKeyedSubscript:v2442];
                  v202 = [MEMORY[0x277CCACA8] stringWithFormat:@"Odd priority rule : %@ > %@", v195, v202];
                  [v205 addObject:v202];
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

  if (error)
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
          patternKeywords3 = [v213 patternKeywords];

          v215 = [IPRegexToolbox regexPatternForLanguageID:v244 eventVocabularyArray:patternKeywords3];
          lowercaseString2 = [v215 lowercaseString];
          v217 = [lowercaseString2 isEqualToString:v215];

          if ((v217 & 1) == 0)
          {
            v218 = [v271 objectForKeyedSubscript:@"REGEX"];

            if (!v218)
            {
              v219 = objc_opt_new();
              [v271 setObject:v219 forKeyedSubscript:@"REGEX"];
            }

            v220 = [v271 objectForKeyedSubscript:@"REGEX"];
            v215 = [MEMORY[0x277CCACA8] stringWithFormat:@"Upper case characters in regex for : %@ : %@", v212, v215];
            [v220 addObject:v215];
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
            v2152 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid regex for : %@ : %@", v212, v215];
            [v226 addObject:v2152];

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
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"IPEventClassification" code:-1 userInfo:v271];
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

+ (id)_parentFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    v5 = [identifierCopy componentsSeparatedByString:@"::"];
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

+ (id)_identifierForCluster:(unint64_t)cluster
{
  if (cluster - 1 > 4)
  {
    return @"None";
  }

  else
  {
    return off_278F23440[cluster - 1];
  }
}

+ (id)_identifiersForClusters:(id)clusters
{
  v19 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = clustersCopy;
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

        v11 = [self _identifierForCluster:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "integerValue", v14)}];
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

- (id)_mealClassificationTypeUsingStartDate:(id)date
{
  v40 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = getCalendar();
  v6 = [v5 components:96 fromDate:dateCopy];

  hour = [v6 hour];
  minute = [v6 minute];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  children = [(IPEventClassificationType *)self children];
  v10 = [children countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = minute + 60 * hour;
    v13 = *v30;
    v14 = v12;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(children);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        if ([v16 useForTimeAdjustement])
        {
          defaultCumulativeMinutes = [v16 defaultCumulativeMinutes];
          [v16 minutesBeforeDefaultStartingTime];
          if (defaultCumulativeMinutes - v18 <= v14)
          {
            defaultCumulativeMinutes2 = [v16 defaultCumulativeMinutes];
            [v16 minutesAfterDefaultStartingTime];
            if (v20 + defaultCumulativeMinutes2 >= v14)
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
                  identifier = [(IPEventClassificationType *)self identifier];
                  identifier2 = [v16 identifier];
                  *buf = 138412802;
                  v34 = identifier;
                  v35 = 2112;
                  v36 = identifier2;
                  v37 = 2112;
                  v38 = dateCopy;
                  _os_log_impl(&dword_2485E4000, v24, OS_LOG_TYPE_INFO, "Adjustment from %@ to %@ using starting time %@ #EventClassification", buf, 0x20u);
                }
              }

              selfCopy = v16;

              goto LABEL_27;
            }
          }
        }
      }

      v11 = [children countByEnumeratingWithState:&v29 objects:v39 count:16];
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
      v34 = dateCopy;
      _os_log_impl(&dword_2485E4000, v21, OS_LOG_TYPE_INFO, "No Adjustment possible using starting time %@ #EventClassification", buf, 0xCu);
    }
  }

  selfCopy = self;
LABEL_27:

  v27 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (unint64_t)classificationDepth
{
  result = self->_classificationDepth;
  if (!result)
  {
    selfCopy = self;
    parent = [(IPEventClassificationType *)selfCopy parent];

    v6 = 1;
    if (parent)
    {
      v7 = selfCopy;
      do
      {
        selfCopy = [(IPEventClassificationType *)v7 parent];

        ++v6;
        parent2 = [(IPEventClassificationType *)selfCopy parent];

        v7 = selfCopy;
      }

      while (parent2);
    }

    self->_classificationDepth = v6;

    return self->_classificationDepth;
  }

  return result;
}

+ (id)morePreciseEventClassificationTypeBetweenType:(id)type and:(id)and
{
  typeCopy = type;
  andCopy = and;
  v7 = typeCopy;
  if (typeCopy != andCopy)
  {
    defaultTitle = [typeCopy defaultTitle];
    if (!defaultTitle || (v9 = defaultTitle, [andCopy defaultTitle], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v7 = typeCopy, v10))
    {
      defaultTitle2 = [andCopy defaultTitle];
      if (!defaultTitle2 || (v12 = defaultTitle2, [typeCopy defaultTitle], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v7 = andCopy, v13))
      {
        classificationDepth = [typeCopy classificationDepth];
        if (classificationDepth >= [andCopy classificationDepth])
        {
          v7 = typeCopy;
        }

        else
        {
          v7 = andCopy;
        }
      }
    }
  }

  v15 = v7;

  return v7;
}

+ (id)cleanSubject:(id)subject
{
  subjectCopy = subject;
  v4 = objc_autoreleasePoolPush();
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v6 = [whitespaceCharacterSet mutableCopy];

  [v6 addCharactersInString:{@", .;:：。"}];
  v7 = +[IPRegexToolbox emailSubjectPrefixRegex];
  v8 = [v7 stringByReplacingMatchesInString:subjectCopy options:0 range:0 withTemplate:{objc_msgSend(subjectCopy, "length"), &stru_285AD0E88}];

  v9 = [v8 stringByTrimmingCharactersInSet:v6];

  objc_autoreleasePoolPop(v4);

  return v9;
}

- (BOOL)isDateWithinRange:(id)range
{
  rangeCopy = range;
  [(IPEventClassificationType *)self minutesBeforeDefaultStartingTime];
  if (v5 == 0.0 || ([(IPEventClassificationType *)self minutesAfterDefaultStartingTime], v6 == 0.0))
  {
    v13 = 1;
  }

  else
  {
    v7 = getCalendar();
    v8 = [v7 components:96 fromDate:rangeCopy];

    hour = [v8 hour];
    v10 = ([v8 minute] + 60 * hour);
    defaultCumulativeMinutes = [(IPEventClassificationType *)self defaultCumulativeMinutes];
    [(IPEventClassificationType *)self minutesBeforeDefaultStartingTime];
    if (defaultCumulativeMinutes - v12 <= v10)
    {
      defaultCumulativeMinutes2 = [(IPEventClassificationType *)self defaultCumulativeMinutes];
      [(IPEventClassificationType *)self minutesAfterDefaultStartingTime];
      v13 = v15 + defaultCumulativeMinutes2 >= v10;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

+ (id)eventTypeForMoviesAndLanguageID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [self taxonomyForLanguageID:d clusterType:2];
  children = [v3 children];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = children;
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
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:@"ENTERTAINMENT::MOVIES"];

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

+ (id)eventTypeForSportAndLanguageID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [self taxonomyForLanguageID:d clusterType:2];
  children = [v3 children];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = children;
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
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:@"ENTERTAINMENT::SPORT"];

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

+ (id)eventTypeForCultureAndLanguageID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [self taxonomyForLanguageID:d clusterType:2];
  children = [v3 children];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = children;
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
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:@"ENTERTAINMENT::CULTURE"];

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

+ (id)eventTypeForMealsAndLanguageID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [self taxonomyForLanguageID:d clusterType:1];
  children = [v3 children];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = children;
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
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:@"GATHERING::MEAL"];

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

+ (id)eventClassificationTypeFromMessageUnit:(id)unit detectedStartDate:(id)date
{
  dateCopy = date;
  unitCopy = unit;
  features = [unitCopy features];
  v9 = [self eventClassificationTypeFromMessageUnit:unitCopy features:features];

  v10 = [v9 adjustedEventClassificationTypeWithStartDate:dateCopy];

  return v10;
}

- (id)adjustedEventTitleForMessageUnits:(id)units subject:(id)subject isDateInSubject:(BOOL)inSubject
{
  inSubjectCopy = inSubject;
  unitsCopy = units;
  subjectCopy = subject;
  if (inSubjectCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    date = 0;
  }

  v11 = [(IPEventClassificationType *)self adjustedEventTitleForMessageUnits:unitsCopy subject:subjectCopy dateInSubject:date eventStartDate:0 isGeneratedFromSubject:0];

  return v11;
}

+ (id)humanReadableClusterType:(unint64_t)type
{
  if (type - 1 > 5)
  {
    return @"None";
  }

  else
  {
    return off_278F23468[type - 1];
  }
}

- (IPEventClassificationType)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end