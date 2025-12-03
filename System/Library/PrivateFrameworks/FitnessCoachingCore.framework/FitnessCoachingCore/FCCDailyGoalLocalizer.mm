@interface FCCDailyGoalLocalizer
+ (id)_keyForEventType:(id)type aboveAverage:(BOOL)average;
+ (id)_keyForGoalType:(int64_t)type;
+ (id)_keyForGoalTypes:(id)types;
+ (id)_keyForTimeOfDayAtDate:(id)date;
+ (id)_localizeCount:(double)count forKey:(id)key experienceType:(unint64_t)type;
+ (id)localizedAppName;
+ (id)localizedDescriptionForGoalsCompleted:(id)completed singleGoalExceeded:(BOOL)exceeded date:(id)date firstName:(id)name isWheelchairUser:(BOOL)user experienceType:(unint64_t)type isStandalone:(BOOL)standalone;
+ (id)localizedDescriptionForIncompleteGoalTypes:(id)types percentComplete:(double)complete value:(double)value valueRemaining:(double)remaining date:(id)date firstName:(id)name moveUnit:(id)unit isWheelchairUser:(BOOL)self0 progressEventIdentifier:(id)self1 minutesToWalkToCompleteRing:(int64_t)self2 hasCurrentMoveStreak:(BOOL)self3 experienceType:(unint64_t)self4 isStandalone:(BOOL)self5;
+ (id)localizedTitleForGoalsCompleted:(id)completed isWheelchairUser:(BOOL)user experienceType:(unint64_t)type;
+ (id)localizedTitleForIncompleteGoalTypes:(id)types percentComplete:(double)complete valueRemaining:(double)remaining progressEventIdentifier:(id)identifier experienceType:(unint64_t)type isStandalone:(BOOL)standalone;
@end

@implementation FCCDailyGoalLocalizer

+ (id)localizedAppName
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FITNESS_APP_NAME" value:&stru_285E7AAA8 table:0];

  return v3;
}

+ (id)localizedTitleForIncompleteGoalTypes:(id)types percentComplete:(double)complete valueRemaining:(double)remaining progressEventIdentifier:(id)identifier experienceType:(unint64_t)type isStandalone:(BOOL)standalone
{
  standaloneCopy = standalone;
  v9 = [self _keyForEventType:identifier aboveAverage:{remaining < 0.0, type, complete}];
  v10 = v9;
  if (standaloneCopy)
  {
    v11 = [v9 stringByAppendingString:@"_STANDALONE"];

    v10 = v11;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"GOAL_INCOMPLETE_TITLE_%@", v10];
  v13 = FILocalizationTableForExperienceType();
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = FIRandomStringForPrefixWithTableName();

  return v15;
}

+ (id)localizedDescriptionForIncompleteGoalTypes:(id)types percentComplete:(double)complete value:(double)value valueRemaining:(double)remaining date:(id)date firstName:(id)name moveUnit:(id)unit isWheelchairUser:(BOOL)self0 progressEventIdentifier:(id)self1 minutesToWalkToCompleteRing:(int64_t)self2 hasCurrentMoveStreak:(BOOL)self3 experienceType:(unint64_t)self4 isStandalone:(BOOL)self5
{
  userCopy = user;
  ringCopy2 = ring;
  v128[2] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  nameCopy = name;
  unitCopy = unit;
  identifierCopy = identifier;
  firstObject = [typesCopy firstObject];
  selfCopy = self;
  v26 = [self _keyForGoalType:{objc_msgSend(firstObject, "integerValue")}];

  v106 = unitCopy;
  if ([typesCopy count] == 3)
  {
    v27 = @"ALL";
LABEL_11:

    goto LABEL_12;
  }

  lastObject = [typesCopy lastObject];
  integerValue = [lastObject integerValue];

  if (integerValue == 4)
  {
    v27 = @"ALL";
LABEL_10:
    unitCopy = v106;
    goto LABEL_11;
  }

  if ([typesCopy count] == 2)
  {
    v30 = MEMORY[0x277CCACA8];
    firstObject2 = [typesCopy firstObject];
    v32 = [selfCopy _keyForGoalType:{-[__CFString integerValue](firstObject2, "integerValue")}];
    lastObject2 = [typesCopy lastObject];
    v34 = [selfCopy _keyForGoalType:{objc_msgSend(lastObject2, "integerValue")}];
    v27 = [v30 stringWithFormat:@"%@_%@", v32, v34];

    ringCopy2 = ring;
    v26 = firstObject2;
    goto LABEL_10;
  }

  firstObject3 = [typesCopy firstObject];
  v36 = [firstObject3 isEqual:&unk_285E82710];

  if (v36 && streak)
  {
    v27 = @"MOVE_STREAK";
    goto LABEL_10;
  }

  unitCopy = v106;
  v27 = v26;
LABEL_12:
  v99 = [selfCopy _keyForEventType:identifierCopy aboveAverage:remaining < 0.0];
  v100 = v27;
  v105 = [MEMORY[0x277CCACA8] stringWithFormat:@"GOAL_INCOMPLETE_DESCRIPTION_%@_%@", v27, v99];
  unitString = [unitCopy unitString];
  uppercaseString = [unitString uppercaseString];

  v39 = MEMORY[0x277CBEB18];
  v102 = uppercaseString;
  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"_%@", uppercaseString];
  v41 = [v39 arrayWithObjects:{&stru_285E7AAA8, v40, 0}];

  if (nameCopy)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v43 = [nameCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    if ([v43 length])
    {
      v128[0] = @"_NAME";
      v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"_NAME_%@", v102];
      v128[1] = v102;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:2];
      [v41 addObjectsFromArray:v45];
    }
  }

  v103 = nameCopy;
  if (ringCopy2 >= 1)
  {
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v46 = [v41 copy];
    v47 = [v46 countByEnumeratingWithState:&v120 objects:v127 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v121;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v121 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = [*(*(&v120 + 1) + 8 * i) stringByAppendingString:@"_WALK"];
          [v41 addObject:v51];
        }

        v48 = [v46 countByEnumeratingWithState:&v120 objects:v127 count:16];
      }

      while (v48);
    }

    nameCopy = v103;
  }

  if (userCopy)
  {
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v52 = [v41 copy];
    v53 = [v52 countByEnumeratingWithState:&v116 objects:v126 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v117;
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v117 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = [*(*(&v116 + 1) + 8 * j) stringByAppendingString:@"_WHEELCHAIR"];
          [v41 addObject:v57];
        }

        v54 = [v52 countByEnumeratingWithState:&v116 objects:v126 count:16];
      }

      while (v54);
    }

    nameCopy = v103;
  }

  if (standalone)
  {
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v58 = [v41 copy];
    v59 = [v58 countByEnumeratingWithState:&v112 objects:v125 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v113;
      do
      {
        for (k = 0; k != v60; ++k)
        {
          if (*v113 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = [*(*(&v112 + 1) + 8 * k) stringByAppendingString:@"_STANDALONE"];
          [v41 addObject:v63];
        }

        v60 = [v58 countByEnumeratingWithState:&v112 objects:v125 count:16];
      }

      while (v60);
    }
  }

  typeCopy2 = type;
  v65 = FILocalizationTableForExperienceType();
  v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v101 = v65;
  v67 = FIRandomStringWithKeyAndPossibleSuffixesWithTableName();

  if ([v67 containsString:@"<hours-remaining>"])
  {
    _HKInitializeLogging();
    v68 = MEMORY[0x277CCC290];
    v69 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEBUG))
    {
      [FCCDailyGoalLocalizer localizedDescriptionForIncompleteGoalTypes:v69 percentComplete:remaining value:? valueRemaining:? date:? firstName:? moveUnit:? isWheelchairUser:? progressEventIdentifier:? minutesToWalkToCompleteRing:? hasCurrentMoveStreak:? experienceType:? isStandalone:?];
    }

    if (ceil(remaining) == 1.0)
    {
      v98 = typesCopy;
      _HKInitializeLogging();
      v70 = *v68;
      if (os_log_type_enabled(*v68, OS_LOG_TYPE_DEBUG))
      {
        [FCCDailyGoalLocalizer localizedDescriptionForIncompleteGoalTypes:v70 percentComplete:? value:? valueRemaining:? date:? firstName:? moveUnit:? isWheelchairUser:? progressEventIdentifier:? minutesToWalkToCompleteRing:? hasCurrentMoveStreak:? experienceType:? isStandalone:?];
      }

      array = [MEMORY[0x277CBEB18] array];
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v72 = v41;
      v73 = [v72 countByEnumeratingWithState:&v108 objects:v124 count:16];
      if (v73)
      {
        v74 = v73;
        v75 = *v109;
        do
        {
          for (m = 0; m != v74; ++m)
          {
            if (*v109 != v75)
            {
              objc_enumerationMutation(v72);
            }

            v77 = [@"_SINGULAR" stringByAppendingString:*(*(&v108 + 1) + 8 * m)];
            [array addObject:v77];
          }

          v74 = [v72 countByEnumeratingWithState:&v108 objects:v124 count:16];
        }

        while (v74);
      }

      v78 = [MEMORY[0x277CBEA60] arrayWithArray:array];
      v79 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      nameCopy = v103;
      v80 = FIRandomStringWithKeyAndPossibleSuffixesWithTableName();

      v67 = v80;
      typesCopy = v98;
      typeCopy2 = type;
    }
  }

  v81 = [MEMORY[0x277CCDAB0] jouleUnitWithMetricPrefix:9];
  v82 = [v106 isEqual:v81];

  if (v82)
  {
    v83 = @"<kilojoules-remaining>";
    v84 = @"_KILOJOULES_REMAINING";
  }

  else
  {
    minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
    v86 = [v106 isEqual:minuteUnit];

    if (v86)
    {
      v84 = @"_MOVE_MINUTES_REMAINING";
    }

    else
    {
      v84 = @"_CALORIES_REMAINING";
    }

    if (v86)
    {
      v83 = @"<move-minutes-remaining>";
    }

    else
    {
      v83 = @"<calories-remaining>";
    }
  }

  v87 = [v105 stringByAppendingString:v84];
  v88 = [selfCopy _localizeCount:v87 forKey:typeCopy2 experienceType:remaining];

  v89 = [v67 stringByReplacingOccurrencesOfString:v83 withString:v88];

  v90 = [v105 stringByAppendingString:@"_WALK_VALUE"];
  v91 = [selfCopy _localizeCount:v90 forKey:typeCopy2 experienceType:ring];

  v92 = FILocalizeCount();
  v93 = [v89 stringByReplacingOccurrencesOfString:@"<walk-value>" withString:v91];

  v94 = [v93 stringByReplacingOccurrencesOfString:@"<hours-remaining>" withString:v92];

  if (!v94)
  {
    _HKInitializeLogging();
    v95 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FCCDailyGoalLocalizer localizedDescriptionForIncompleteGoalTypes:v95 percentComplete:? value:? valueRemaining:? date:? firstName:? moveUnit:? isWheelchairUser:? progressEventIdentifier:? minutesToWalkToCompleteRing:? hasCurrentMoveStreak:? experienceType:? isStandalone:?];
    }
  }

  v96 = *MEMORY[0x277D85DE8];

  return v94;
}

+ (id)localizedTitleForGoalsCompleted:(id)completed isWheelchairUser:(BOOL)user experienceType:(unint64_t)type
{
  userCopy = user;
  completedCopy = completed;
  if ([completedCopy count] == 3 || (objc_msgSend(completedCopy, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "integerValue"), v7, v8 == 4))
  {
    v9 = @"ALL";
  }

  else if ([completedCopy count] == 2)
  {
    v9 = @"TWO";
  }

  else
  {
    firstObject = [completedCopy firstObject];
    unsignedIntegerValue = [firstObject unsignedIntegerValue];

    if (unsignedIntegerValue == 3)
    {
      if (userCopy)
      {
        v18 = @"_WHEELCHAIR";
      }

      else
      {
        v18 = &stru_285E7AAA8;
      }

      v9 = [@"STAND" stringByAppendingString:v18];
    }

    else
    {
      v17 = @"UNDEFINED";
      if (unsignedIntegerValue == 1)
      {
        v17 = @"MOVE";
      }

      if (unsignedIntegerValue == 2)
      {
        v9 = @"EXERCISE";
      }

      else
      {
        v9 = v17;
      }
    }
  }

  v10 = [@"GOAL_COMPLETE_TITLE_" stringByAppendingString:v9];
  v11 = FILocalizationTableForExperienceType();
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = FIRandomStringForPrefixWithTableName();

  return v13;
}

+ (id)localizedDescriptionForGoalsCompleted:(id)completed singleGoalExceeded:(BOOL)exceeded date:(id)date firstName:(id)name isWheelchairUser:(BOOL)user experienceType:(unint64_t)type isStandalone:(BOOL)standalone
{
  userCopy = user;
  exceededCopy = exceeded;
  v57 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  dateCopy = date;
  nameCopy = name;
  if ([completedCopy count] > 2)
  {
    v17 = [self _keyForGoalType:4];
    v19 = 1;
  }

  else
  {
    v17 = [self _keyForGoalTypes:completedCopy];
    firstObject = [completedCopy firstObject];
    v19 = [firstObject integerValue] == 4;
  }

  if ([completedCopy count] == 2)
  {
    v20 = &stru_285E7AAA8;
  }

  else
  {
    v20 = [self _keyForTimeOfDayAtDate:dateCopy];
  }

  if ([completedCopy count] == 3 && -[__CFString isEqualToString:](v20, "isEqualToString:", @"_LATEEVENING"))
  {

    v20 = @"_EVENING";
  }

  if ([completedCopy count] > 1 || v19)
  {
    v21 = &stru_285E7AAA8;
  }

  else
  {
    v22 = @"_MET";
    if (exceededCopy)
    {
      v22 = @"_EXCEEDED";
    }

    v21 = v22;
  }

  v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"GOAL_COMPLETE_DESCRIPTION_%@%@%@", v17, v20, v21];
  v23 = [MEMORY[0x277CBEB18] arrayWithObject:&stru_285E7AAA8];
  if (nameCopy)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v25 = [nameCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    if ([v25 length])
    {
      [v23 addObject:@"_NAME"];
    }
  }

  v45 = v17;
  v46 = dateCopy;
  v44 = v21;
  if (userCopy)
  {
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v26 = [v23 copy];
    v27 = [v26 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v52;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v52 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v51 + 1) + 8 * i) stringByAppendingString:@"_WHEELCHAIR"];
          [v23 addObject:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v28);
    }

    dateCopy = v46;
    v21 = v44;
  }

  if (standalone)
  {
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v32 = [v23 copy];
    v33 = [v32 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v48;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v48 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [*(*(&v47 + 1) + 8 * j) stringByAppendingString:@"_STANDALONE"];
          [v23 addObject:v37];
        }

        v34 = [v32 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v34);
    }

    dateCopy = v46;
    v21 = v44;
  }

  v38 = FILocalizationTableForExperienceType();
  v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v40 = FIRandomStringWithKeyAndPossibleSuffixesWithTableName();

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (id)_keyForGoalType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    return &stru_285E7AAA8;
  }

  else
  {
    return off_27900A088[type - 1];
  }
}

+ (id)_keyForTimeOfDayAtDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar component:32 fromDate:dateCopy];

  if (v6 < 4)
  {
    return @"_MIDDLENIGHT";
  }

  if (v6 < 8)
  {
    return @"_EARLYMORNING";
  }

  if (v6 < 0xC)
  {
    return @"_LATEMORNING";
  }

  v8 = @"_LATEEVENING";
  if (v6 < 0x13)
  {
    v8 = @"_EVENING";
  }

  if (v6 >= 0x10)
  {
    return v8;
  }

  else
  {
    return @"_AFTERNOON";
  }
}

+ (id)_keyForGoalTypes:(id)types
{
  v20 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(typesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = typesCopy;
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

        v11 = [self _keyForGoalType:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "unsignedIntegerValue", v15)}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 componentsJoinedByString:@"_"];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_keyForEventType:(id)type aboveAverage:(BOOL)average
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"com.apple.nanolifestyle.NLCoachingProgressMorningUpdateEvent"] && average)
  {
    v6 = @"EARLY_OVERACHIEVER";
  }

  else if ([typeCopy isEqualToString:@"com.apple.nanolifestyle.NLCoachingProgressMorningUpdateEvent"])
  {
    v6 = @"EARLY";
  }

  else if ([typeCopy isEqualToString:@"com.apple.nanolifestyle.NLCoachingProgressEveningUpdateEvent"])
  {
    v6 = @"LATE";
  }

  else
  {
    [typeCopy isEqualToString:@"com.apple.nanolifestyle.NLCoachingProgressAlmostThereEvent"];
    v6 = @"ALMOST_THERE";
  }

  return v6;
}

+ (id)_localizeCount:(double)count forKey:(id)key experienceType:(unint64_t)type
{
  keyCopy = key;
  v8 = *MEMORY[0x277D09520];
  v9 = type & 0xFFFFFFFFFFFFFFFELL;
  v10 = MEMORY[0x277D09528];
  v11 = v8;
  if (v9 == 2)
  {
    v11 = *MEMORY[0x277D09528];
  }

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:keyCopy value:&stru_285E7AAA8 table:v11];

  if ([v13 isEqualToString:keyCopy] && objc_msgSend(v11, "isEqualToString:", *v10))
  {
    v14 = v8;

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:keyCopy value:&stru_285E7AAA8 table:v14];

    v13 = v16;
    v11 = v14;
  }

  v17 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v13, vcvtpd_s64_f64(count)];

  return v17;
}

+ (void)localizedDescriptionForIncompleteGoalTypes:(os_log_t)log percentComplete:(double)a2 value:valueRemaining:date:firstName:moveUnit:isWheelchairUser:progressEventIdentifier:minutesToWalkToCompleteRing:hasCurrentMoveStreak:experienceType:isStandalone:.cold.1(os_log_t log, double a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_24B53B000, log, OS_LOG_TYPE_DEBUG, "Localization checking for singular using remaining value %lf", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end