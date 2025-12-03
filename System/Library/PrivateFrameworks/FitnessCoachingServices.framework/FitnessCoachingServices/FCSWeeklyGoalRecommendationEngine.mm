@interface FCSWeeklyGoalRecommendationEngine
+ (BOOL)_isMoveGoalAchievedForActivitySummary:(id)summary;
+ (double)_averageMoveFromActivitySummaries:(id)summaries forNumberOfSamples:(int64_t)samples;
+ (double)_minThresholdForActivityMoveMode:(int64_t)mode;
+ (double)recommendedNewWeeklyGoalForActivitySummaries:(id)summaries;
+ (id)_activitySummariesSortedByMoveValue:(id)value activityMoveMode:(int64_t)mode;
+ (int64_t)_numberOfDaysGoalAchievedInSummaries:(id)summaries;
+ (unint64_t)_numSamplesWithMoveGreaterThanTheGoalByPercent:(double)percent forSummaries:(id)summaries;
+ (unint64_t)_numberOfDaysInMostRecentWinningStreakForSummariesOrderedByDate:(id)date;
+ (unint64_t)_numberOfInvalidDaysFromActivitySummaries:(id)summaries forExpectedNumberOfSamples:(unint64_t)samples;
@end

@implementation FCSWeeklyGoalRecommendationEngine

uint64_t __74__FCSWeeklyGoalRecommendationEngine__activitySummariesSortedByEnergyBurn___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 activeEnergyBurned];
  v6 = [v4 activeEnergyBurned];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)_activitySummariesSortedByMoveValue:(id)value activityMoveMode:(int64_t)mode
{
  valueCopy = value;
  v6 = objc_opt_class();
  if (mode == 2)
  {
    [v6 _activitySummariesSortedByMoveMinutes:valueCopy];
  }

  else
  {
    [v6 _activitySummariesSortedByEnergyBurn:valueCopy];
  }
  v7 = ;

  return v7;
}

uint64_t __75__FCSWeeklyGoalRecommendationEngine__activitySummariesSortedByMoveMinutes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 appleMoveTime];
  v6 = [v4 appleMoveTime];

  v7 = [v5 compare:v6];
  return v7;
}

+ (double)_minThresholdForActivityMoveMode:(int64_t)mode
{
  result = 10.0;
  if (mode == 2)
  {
    return 1.0;
  }

  return result;
}

+ (double)_averageMoveFromActivitySummaries:(id)summaries forNumberOfSamples:(int64_t)samples
{
  summariesCopy = summaries;
  if ([summariesCopy count] < samples)
  {
    samples = [summariesCopy count];
  }

  if (samples < 1)
  {
    goto LABEL_10;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0.0;
  do
  {
    v10 = [summariesCopy objectAtIndexedSubscript:v7];
    v11 = MoveValueAsDoubleWithSummary(v10);
    [self _minThresholdForActivityMoveMode:{objc_msgSend(v10, "activityMoveMode")}];
    if (v11 >= v12)
    {
      ++v8;
      v9 = v9 + v11;
    }

    ++v7;
  }

  while (samples != v7);
  if (v8)
  {
    v13 = v9 / v8;
  }

  else
  {
LABEL_10:
    v13 = 0.0;
  }

  return v13;
}

+ (unint64_t)_numberOfDaysInMostRecentWinningStreakForSummariesOrderedByDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (dateCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __101__FCSWeeklyGoalRecommendationEngine__numberOfDaysInMostRecentWinningStreakForSummariesOrderedByDate___block_invoke;
    v8[3] = &unk_2785DA158;
    v8[4] = &v9;
    v8[5] = self;
    [dateCopy enumerateObjectsWithOptions:2 usingBlock:v8];
    v6 = v10[3];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __101__FCSWeeklyGoalRecommendationEngine__numberOfDaysInMostRecentWinningStreakForSummariesOrderedByDate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 40);
  v7 = a2;
  LODWORD(v6) = [objc_opt_class() _isMoveGoalAchievedForActivitySummary:v7];

  if (v6)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    *a4 = 1;
  }
}

+ (BOOL)_isMoveGoalAchievedForActivitySummary:(id)summary
{
  summaryCopy = summary;
  v4 = MoveValueAsDoubleWithSummary(summaryCopy);
  v5 = MoveGoalValueAsDoubleWithSummary(summaryCopy);

  return v4 >= v5;
}

+ (unint64_t)_numSamplesWithMoveGreaterThanTheGoalByPercent:(double)percent forSummaries:(id)summaries
{
  v21 = *MEMORY[0x277D85DE8];
  summariesCopy = summaries;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [summariesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = percent + 1.0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(summariesCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = MoveValueAsDoubleWithSummary(v12);
        if (v13 > v9 * MoveGoalValueAsDoubleWithSummary(v12))
        {
          ++v8;
        }
      }

      v7 = [summariesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (double)recommendedNewWeeklyGoalForActivitySummaries:(id)summaries
{
  summariesCopy = summaries;
  v5 = [summariesCopy count];
  lastObject = [summariesCopy lastObject];
  activityMoveMode = [lastObject activityMoveMode];
  v8 = MoveGoalValueAsDoubleWithSummary(lastObject);
  if (v5 < 7)
  {
    goto LABEL_43;
  }

  v76 = lastObject;
  selfCopy = self;
  v72 = activityMoveMode;
  v9 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  firstObject = [summariesCopy firstObject];
  _gregorianDateComponents = [firstObject _gregorianDateComponents];
  v73 = [v9 dateFromComponents:?];
  v83 = [v9 dateByAddingUnit:16 value:6 toDate:? options:?];
  v80 = [v9 dateByAddingUnit:16 value:7 toDate:? options:?];
  v79 = [v9 dateByAddingUnit:16 value:7 toDate:? options:?];
  v10 = [v9 dateByAddingUnit:16 value:7 toDate:? options:?];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  if ([summariesCopy count])
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = v13;
      v16 = v12;
      v17 = v11;
      v18 = objc_autoreleasePoolPush();
      v11 = [summariesCopy objectAtIndexedSubscript:v14];

      v12 = [v11 dateComponentsForCalendar:v9];

      v13 = [v9 dateFromComponents:v12];

      v19 = [v13 earlierDate:v83];
      LOBYTE(v17) = [v19 isEqualToDate:v13];

      if ((v17 & 1) == 0)
      {
        break;
      }

      [array addObject:v11];
      objc_autoreleasePoolPop(v18);
      if (++v14 >= [summariesCopy count])
      {
        goto LABEL_11;
      }
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

LABEL_11:
  while (v14 < [summariesCopy count])
  {
    v20 = v13;
    v21 = v12;
    v22 = v11;
    v23 = objc_autoreleasePoolPush();
    v11 = [summariesCopy objectAtIndexedSubscript:v14];

    v12 = [v11 dateComponentsForCalendar:v9];

    v13 = [v9 dateFromComponents:v12];

    v24 = [v13 earlierDate:v80];
    LOBYTE(v22) = [v24 isEqualToDate:v13];

    if ((v22 & 1) == 0)
    {
      objc_autoreleasePoolPop(v23);
      break;
    }

    [array2 addObject:v11];
    objc_autoreleasePoolPop(v23);
    ++v14;
  }

  while (v14 < [summariesCopy count])
  {
    v25 = v13;
    v26 = v12;
    v27 = v11;
    v28 = objc_autoreleasePoolPush();
    v11 = [summariesCopy objectAtIndexedSubscript:v14];

    v12 = [v11 dateComponentsForCalendar:v9];

    v13 = [v9 dateFromComponents:v12];

    v29 = [v13 earlierDate:v79];
    LOBYTE(v27) = [v29 isEqualToDate:v13];

    if ((v27 & 1) == 0)
    {
      objc_autoreleasePoolPop(v28);
      break;
    }

    [array3 addObject:v11];
    objc_autoreleasePoolPop(v28);
    ++v14;
  }

  if (v14 >= [summariesCopy count])
  {
    v33 = v13;
    v32 = v12;
  }

  else
  {
    do
    {
      v30 = v11;
      v31 = objc_autoreleasePoolPush();
      v11 = [summariesCopy objectAtIndexedSubscript:v14];

      v32 = [v11 dateComponentsForCalendar:v9];

      v33 = [v9 dateFromComponents:v32];

      v34 = [v33 earlierDate:v10];
      v35 = [v34 isEqualToDate:v33];

      if (v35)
      {
        [array4 addObject:v11];
      }

      objc_autoreleasePoolPop(v31);
      ++v14;
      v12 = v32;
      v13 = v33;
    }

    while (v14 < [summariesCopy count]);
  }

  v71 = v10;
  v69 = [array count];
  v36 = array2;
  v68 = [array2 count];
  v37 = array3;
  v67 = [array3 count];
  v38 = [array4 count];
  v66 = [selfCopy _numberOfInvalidDaysFromActivitySummaries:array forExpectedNumberOfSamples:7];
  v39 = [selfCopy _numberOfInvalidDaysFromActivitySummaries:array2 forExpectedNumberOfSamples:7];
  v40 = [selfCopy _numberOfInvalidDaysFromActivitySummaries:array3 forExpectedNumberOfSamples:7];
  if (v38)
  {
    v41 = [MEMORY[0x277CBEB18] arrayWithArray:array2];
    [v41 addObjectsFromArray:array3];
    [v41 addObjectsFromArray:array4];
    v42 = [selfCopy _numberOfDaysGoalAchievedInSummaries:v41];
    if (v42 > 8)
    {
      v43 = v71;
      v44 = v72;
      if (v42 >= 0x12 && [objc_opt_class() _numSamplesWithMoveGreaterThanTheGoalByPercent:v41 forSummaries:0.1] > 0xD)
      {
        v8 = v8 * 1.1;
      }
    }

    else
    {
      if ([objc_opt_class() _numberOfDaysInMostRecentWinningStreakForSummariesOrderedByDate:v41] < 4)
      {
        v8 = v8 * 0.9;
      }

      v43 = v71;
      v44 = v72;
    }

    v46 = v8;
    goto LABEL_38;
  }

  v65 = v39;
  if (!v67)
  {
    v52 = v69 != 0;
    if (v68)
    {
      v52 = 2;
    }

    v47 = array4;
    if (v52 == 1)
    {
      v56 = [selfCopy _numberOfDaysGoalAchievedInSummaries:array];
      v44 = v72;
      v54 = [selfCopy _activitySummariesSortedByMoveValue:array activityMoveMode:v72];
      if (v56 <= 3)
      {
        v37 = array3;
        v43 = v71;
        if ((v56 - 1) >= 2)
        {
          if (v56)
          {
            v46 = 0.0;
            if (v56 != 3)
            {
              goto LABEL_97;
            }

            [selfCopy _averageMoveFromActivitySummaries:v54 forNumberOfSamples:4];
            v46 = v8;
            if (v66)
            {
              goto LABEL_97;
            }

            goto LABEL_64;
          }

          v46 = v8;
          if (v66 > 6)
          {
            goto LABEL_97;
          }
        }

LABEL_90:
        [selfCopy _averageMoveFromActivitySummaries:v54 forNumberOfSamples:{4, v65}];
        v46 = v64;
        goto LABEL_97;
      }

      v46 = v8;
      v37 = array3;
      v43 = v71;
      if ((v56 - 5) < 2)
      {
        goto LABEL_97;
      }

      if (v56 != 4)
      {
        v46 = 0.0;
        if (v56 != 7)
        {
          goto LABEL_97;
        }

LABEL_81:
        [selfCopy _averageMoveFromActivitySummaries:v54 forNumberOfSamples:{7, v65}];
        if (v61 / v8 >= 1.25)
        {
          v46 = v61;
        }

        else
        {
          v46 = v8 * 1.1;
        }

        goto LABEL_97;
      }

      [selfCopy _averageMoveFromActivitySummaries:v54 forNumberOfSamples:3];
      if (v62 / v8 >= 0.75)
      {
        v62 = v8;
      }

      v63 = v66 == 0;
    }

    else
    {
      v43 = v71;
      v44 = v72;
      if (v52 != 2)
      {
        v46 = v8;
        v37 = array3;
        goto LABEL_39;
      }

      v53 = [selfCopy _numberOfDaysGoalAchievedInSummaries:array2];
      v54 = [selfCopy _activitySummariesSortedByMoveValue:array2 activityMoveMode:v72];
      v46 = 0.0;
      v37 = array3;
      if (v53 <= 3)
      {
        if (v53 >= 3)
        {
          if (v53 != 3)
          {
            goto LABEL_97;
          }

          [selfCopy _averageMoveFromActivitySummaries:v54 forNumberOfSamples:4];
          v46 = v8;
          if (v65)
          {
            goto LABEL_97;
          }

LABEL_64:
          v46 = v55;
          if (v55 / v8 >= 0.75)
          {
            v57 = 0.9;
LABEL_85:
            v46 = v8 * v57;
          }

LABEL_97:

          v36 = array2;
LABEL_38:
          v47 = array4;
          goto LABEL_39;
        }

        goto LABEL_90;
      }

      if ((v53 - 5) < 2)
      {
        v57 = 1.1;
        goto LABEL_85;
      }

      if (v53 != 4)
      {
        if (v53 != 7)
        {
          goto LABEL_97;
        }

        goto LABEL_81;
      }

      [selfCopy _averageMoveFromActivitySummaries:v54 forNumberOfSamples:3];
      if (v62 / v8 >= 0.75)
      {
        v62 = v8;
      }

      v63 = v65 == 0;
    }

    if (v63)
    {
      v46 = v62;
    }

    else
    {
      v46 = v8;
    }

    goto LABEL_97;
  }

  v70 = v40;
  v37 = array3;
  v45 = [selfCopy _numberOfDaysGoalAchievedInSummaries:array3];
  v46 = 0.0;
  v47 = array4;
  if (v45 <= 3)
  {
    v43 = v71;
    v44 = v72;
    if (v45 >= 3)
    {
      if (v45 == 3)
      {
        if (v70)
        {
          v46 = v8;
        }

        else
        {
          v46 = v8 * 0.9;
        }
      }

      goto LABEL_39;
    }

    v48 = 0.9;
    goto LABEL_57;
  }

  v43 = v71;
  v44 = v72;
  if ((v45 - 5) < 2)
  {
    v46 = v8;
    goto LABEL_39;
  }

  if (v45 == 4)
  {
    v58 = [selfCopy _activitySummariesSortedByMoveValue:array3 activityMoveMode:v72];
    [selfCopy _averageMoveFromActivitySummaries:v58 forNumberOfSamples:3];
    if (!v70)
    {
      if (v59 / v8 >= 0.75)
      {
        v60 = 1.1;
      }

      else
      {
        v60 = 0.9;
      }

      v8 = v8 * v60;
    }

    v46 = v8;
    v36 = array2;
    goto LABEL_39;
  }

  if (v45 == 7)
  {
    v48 = 1.1;
LABEL_57:
    v46 = v8 * v48;
  }

LABEL_39:
  v49 = floor(v46 / 10.0) * 10.0;
  v50 = floor(v46);
  if (v44 == 2)
  {
    v8 = v50;
  }

  else
  {
    v8 = v49;
  }

  lastObject = v76;
LABEL_43:

  return v8;
}

+ (int64_t)_numberOfDaysGoalAchievedInSummaries:(id)summaries
{
  v16 = *MEMORY[0x277D85DE8];
  summariesCopy = summaries;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [summariesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(summariesCopy);
        }

        v6 += [objc_opt_class() _isMoveGoalAchievedForActivitySummary:*(*(&v11 + 1) + 8 * i)];
      }

      v5 = [summariesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (unint64_t)_numberOfInvalidDaysFromActivitySummaries:(id)summaries forExpectedNumberOfSamples:(unint64_t)samples
{
  summariesCopy = summaries;
  v7 = 0;
  if ([summariesCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [summariesCopy objectAtIndexedSubscript:v8];
      v10 = MoveValueAsDoubleWithSummary(v9);
      [self _minThresholdForActivityMoveMode:{objc_msgSend(v9, "activityMoveMode")}];
      if (v10 < v11)
      {
        ++v7;
      }

      ++v8;
    }

    while (v8 < [summariesCopy count]);
  }

  v12 = v7 + samples - [summariesCopy count];

  return v12;
}

@end