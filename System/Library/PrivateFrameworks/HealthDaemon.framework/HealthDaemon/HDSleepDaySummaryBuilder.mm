@interface HDSleepDaySummaryBuilder
+ (id)dateIntervalForDayIndexRange:(id)a3 gregorianCalendar:(id)a4;
- (BOOL)scheduleAppliesToWeekday:(id)a3;
- (HDSleepDaySummaryBuilder)initWithProfile:(id)a3 dayIndexRange:(id)a4 weekday:(unint64_t)a5 options:(unint64_t)a6 eighteenthBirthdayDayIndex:(id)a7 gregorianCalendar:(id)a8 sourceOrderProvider:(id)a9;
- (id)applicableSleepSchedules:(id)a3;
- (id)createDaySummary;
- (void)addOrderedSample:(id)a3;
@end

@implementation HDSleepDaySummaryBuilder

- (HDSleepDaySummaryBuilder)initWithProfile:(id)a3 dayIndexRange:(id)a4 weekday:(unint64_t)a5 options:(unint64_t)a6 eighteenthBirthdayDayIndex:(id)a7 gregorianCalendar:(id)a8 sourceOrderProvider:(id)a9
{
  var1 = a4.var1;
  var0 = a4.var0;
  v15 = a3;
  v29 = a7;
  v16 = a8;
  v17 = a9;
  v30.receiver = self;
  v30.super_class = HDSleepDaySummaryBuilder;
  v18 = [(HDSleepDaySummaryBuilder *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_profile, v15);
    objc_storeWeak(&v19->_sourceOrderProvider, v17);
    v19->_dayIndexRange.start = var0;
    v19->_dayIndexRange.duration = var1;
    v20 = [objc_opt_class() dateIntervalForDayIndexRange:var0 gregorianCalendar:{var1, v16}];
    dateInterval = v19->_dateInterval;
    v19->_dateInterval = v20;

    v19->_weekday = a5;
    objc_storeStrong(&v19->_gregorianCalendar, a8);
    v19->_options = a6;
    objc_storeStrong(&v19->_eighteenthBirthdayDayIndex, a7);
    v19->_containsAsleepOrInBedData = 0;
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sleepAnalysisSamples = v19->_sleepAnalysisSamples;
    v19->_sleepAnalysisSamples = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sleepScheduleSamples = v19->_sleepScheduleSamples;
    v19->_sleepScheduleSamples = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sleepDurationGoalSamples = v19->_sleepDurationGoalSamples;
    v19->_sleepDurationGoalSamples = v26;
  }

  return v19;
}

- (void)addOrderedSample:(id)a3
{
  v10 = a3;
  v5 = [v10 sampleType];
  v6 = [v5 code];

  switch(v6)
  {
    case 198:
      v7 = v10;
      if (([(NSMutableArray *)self->_sleepScheduleSamples containsObject:v7]& 1) != 0)
      {
        break;
      }

      sleepScheduleSamples = self->_sleepScheduleSamples;
      goto LABEL_11;
    case 197:
      v7 = v10;
      if (([(NSMutableArray *)self->_sleepDurationGoalSamples containsObject:v7]& 1) != 0)
      {
        break;
      }

      sleepScheduleSamples = self->_sleepDurationGoalSamples;
LABEL_11:
      [(NSMutableArray *)sleepScheduleSamples addObject:v7];
      break;
    case 63:
      v7 = v10;
      [(NSMutableArray *)self->_sleepAnalysisSamples addObject:v7];
      v8 = [v7 value];
      if (!self->_containsAsleepOrInBedData && v8 != 2)
      {
        self->_containsAsleepOrInBedData = 1;
      }

      break;
    default:
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"HDSleepDaySummaryBuilder.m" lineNumber:130 description:{@"%@: Invalid data type", objc_opt_class()}];
      break;
  }
}

+ (id)dateIntervalForDayIndexRange:(id)a3 gregorianCalendar:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = [v6 hk_sleepDayStartForMorningIndex:var0 calendar:v7];
  v9 = [MEMORY[0x277CBEAA8] hk_sleepDayStartForMorningIndex:var0 + var1 calendar:v7];

  v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v9];

  return v10;
}

- (BOOL)scheduleAppliesToWeekday:(id)a3
{
  v4 = a3;
  if ([v4 weekdays])
  {
    v5 = (self->_weekday & [v4 weekdays]) != 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)applicableSleepSchedules:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDSleepDaySummaryBuilder *)self sleepScheduleSamples];
  v37 = [(HDSleepDaySummaryBuilder *)self morningIndex];
  v42 = [(HDSleepDaySummaryBuilder *)self calendar];
  v36 = [(HDSleepDaySummaryBuilder *)self dateInterval];
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = [v5 hk_mapToSet:&__block_literal_global_97];
  v39 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v32 = v5;
  obj = [v5 reverseObjectEnumerator];
  v6 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    v35 = self;
    v38 = *v44;
    do
    {
      v9 = 0;
      v40 = v7;
      do
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        if ([(HDSleepDaySummaryBuilder *)self scheduleAppliesToWeekday:v10])
        {
          v11 = MEMORY[0x277CBEBB0];
          v12 = [v10 _timeZoneName];
          v13 = [v11 timeZoneWithName:v12];

          v14 = [v39 calendarForTimeZone:v13];
          if ([v10 weekdays])
          {
            v15 = [v10 wakeDateComponentsForMorningIndex:v37 calendar:v14];
            v16 = [v15 date];
            v17 = [v10 startDate];
            v18 = [v17 hk_isBeforeDate:v16];

            if (v18)
            {
              v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "hk_dayIndex")}];
              v20 = [v34 containsObject:v19];

              if (v20)
              {
                goto LABEL_22;
              }

LABEL_12:
              v21 = v4;
              v22 = [v10 _timeZoneName];
              v23 = [v42 timeZone];
              v24 = [v23 name];
              v25 = [v22 isEqualToString:v24];

              if (v25 && v16)
              {
                v26 = [v10 bedtimeDateIntervalForWakeTime:v16 calendar:v42];
              }

              else
              {
                v27 = v37;
                if (![v10 weekdays])
                {
                  v28 = [v10 overrideDayIndex];
                  v27 = [v28 integerValue];
                }

                v26 = [v10 bedtimeDateIntervalForMorningIndex:v27 calendar:v42];
              }

              v15 = v26;
              v4 = v21;
              self = v35;
              if ([v26 intersectsDateInterval:v36] && (objc_msgSend(v4, "hasOverlapWithInterval:", v15) & 1) == 0)
              {
                [v4 insertInterval:v15];
                [v33 addObject:v10];
              }
            }

LABEL_22:
            v8 = v38;
            v7 = v40;
            goto LABEL_23;
          }

          v16 = 0;
          goto LABEL_12;
        }

LABEL_23:
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v7);
  }

  v29 = [v33 copy];
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

id __53__HDSleepDaySummaryBuilder_applicableSleepSchedules___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 weekdays])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 wakeTimeComponents];

    if (v3)
    {
      v3 = [v2 overrideDayIndex];
    }
  }

  return v3;
}

uint64_t __57__HDSleepDaySummaryBuilder__creationIntervalFromSamples___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 _creationDate];
  v6 = [v4 _creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)createDaySummary
{
  v2 = self;
  v142 = *MEMORY[0x277D85DE8];
  v3 = [(HDSleepDaySummaryBuilder *)self sleepAnalysisSamples];
  v4 = objc_alloc_init(MEMORY[0x277CCD2D8]);
  v103 = [(HDSleepDaySummaryBuilder *)v2 applicableSleepSchedules:v4];
  v5 = v3;
  v6 = v4;
  v104 = v6;
  if (!v2)
  {

    v91 = v5;
    v81 = 0;
    v21 = 0;
    v78 = 0;
    goto LABEL_85;
  }

  v105 = v2;
  if (!v2->_containsAsleepOrInBedData)
  {

    v21 = MEMORY[0x277CBEBF8];
    goto LABEL_75;
  }

  v7 = v5;
  options = v2->_options;
  v9 = [HDSleepPeriodSegmentArrayBuilder alloc];
  WeakRetained = objc_loadWeakRetained(&v2->_profile);
  v11 = [(HDSleepDaySummaryBuilder *)v2 morningIndex];
  gregorianCalendar = v2->_gregorianCalendar;
  v13 = objc_loadWeakRetained(&v2->_sourceOrderProvider);
  v14 = [(HDSleepPeriodSegmentArrayBuilder *)v9 initProfile:WeakRetained morningIndex:v11 options:options & 1 gregorianCalendar:gregorianCalendar sourceOrderProvider:v13];

  v15 = [v14 sortedSleepPeriodSegmentsFromSamples:v7];

  v100 = v105->_options;
  v16 = v7;
  v17 = v104;
  v18 = v105->_options;
  v101 = v17;
  v102 = v16;
  if ((v18 & 4) != 0)
  {
    v98 = v15;
    v19 = objc_alloc_init(MEMORY[0x277CCD2D8]);
    [v19 setMergeIntervals:1];
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v22 = [v17 mergedIntervals];
    v23 = [v22 countByEnumeratingWithState:&v125 objects:v139 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v126;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v126 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [v19 insertInterval:*(*(&v125 + 1) + 8 * i)];
        }

        v24 = [v22 countByEnumeratingWithState:&v125 objects:v139 count:16];
      }

      while (v24);
    }

    if ((v18 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  if ((v18 & 0xA) != 0)
  {
    v98 = v15;
    [0 setMergeIntervals:1];
    v19 = 0;
    if ((v18 & 2) != 0)
    {
LABEL_6:
      v20 = objc_alloc_init(MEMORY[0x277CCD2D8]);
LABEL_17:
      [v20 setMergeIntervals:1];
      v99 = v5;
      v106 = v20;
      if ((v18 & 8) != 0)
      {
        v108 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      else
      {
        v108 = 0;
      }

      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      obj = v16;
      v27 = [obj countByEnumeratingWithState:&v121 objects:v138 count:16];
      v107 = v19;
      if (v27)
      {
        v28 = v27;
        v29 = *v122;
        v111 = *MEMORY[0x277CCE100];
        v113 = *MEMORY[0x277CCE0F8];
        v109 = *MEMORY[0x277CCE0E0];
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v122 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v121 + 1) + 8 * j);
            v32 = [v31 metadata];
            v33 = v32;
            if ((v18 & 4) != 0)
            {
              v34 = [v32 objectForKeyedSubscript:v113];
              v35 = [v33 objectForKeyedSubscript:v111];
              v36 = v35;
              if (v34)
              {
                v37 = v35 == 0;
              }

              else
              {
                v37 = 1;
              }

              if (!v37 && [v34 compare:v35] == -1)
              {
                v38 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v34 endDate:v36];
                [v19 insertInterval:v38];
              }

              if ((v18 & 2) == 0)
              {
LABEL_27:
                if ((v18 & 8) == 0)
                {
                  goto LABEL_44;
                }

LABEL_39:
                v44 = [v31 _timeZoneName];
                if (v44)
                {
                  v45 = objc_alloc(MEMORY[0x277CCA970]);
                  v46 = [v31 startDate];
                  v47 = [v31 endDate];
                  v48 = [v45 initWithStartDate:v46 endDate:v47];

                  v49 = [v108 objectForKeyedSubscript:v44];
                  if (!v49)
                  {
                    v49 = objc_alloc_init(MEMORY[0x277CCD2D8]);
                    [v49 setMergeIntervals:1];
                    [v108 setObject:v49 forKeyedSubscript:v44];
                  }

                  [v49 insertInterval:v48];

                  v19 = v107;
                }

                goto LABEL_44;
              }
            }

            else if ((v18 & 2) == 0)
            {
              goto LABEL_27;
            }

            v39 = objc_alloc(MEMORY[0x277CCA970]);
            v40 = [v31 startDate];
            v41 = [v31 endDate];
            v42 = [v39 initWithStartDate:v40 endDate:v41];

            v43 = [v33 objectForKeyedSubscript:v109];
            LODWORD(v41) = [v43 BOOLValue];

            if (v41)
            {
              [v106 insertInterval:v42];
            }

            if ((v18 & 8) != 0)
            {
              goto LABEL_39;
            }

LABEL_44:
          }

          v28 = [obj countByEnumeratingWithState:&v121 objects:v138 count:16];
        }

        while (v28);
      }

      v110 = [HDSleepPeriodInfo alloc];
      v50 = [v19 mergedIntervals];
      v51 = MEMORY[0x277CBEBF8];
      v112 = v50;
      if (v50)
      {
        v52 = v50;
      }

      else
      {
        v52 = MEMORY[0x277CBEBF8];
      }

      v96 = v52;
      v53 = [v106 mergedIntervals];
      v97 = v53;
      if (v53)
      {
        v54 = v53;
      }

      else
      {
        v54 = v51;
      }

      v95 = v54;
      v55 = v108;
      v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      obja = v55;
      v114 = [v55 allKeys];
      v57 = [v114 countByEnumeratingWithState:&v133 objects:v141 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v134;
        do
        {
          for (k = 0; k != v58; ++k)
          {
            if (*v134 != v59)
            {
              objc_enumerationMutation(v114);
            }

            v61 = *(*(&v133 + 1) + 8 * k);
            v62 = [obja objectForKeyedSubscript:v61];
            v129 = 0u;
            v130 = 0u;
            v131 = 0u;
            v132 = 0u;
            v63 = [v62 mergedIntervals];
            v64 = [v63 countByEnumeratingWithState:&v129 objects:v140 count:16];
            if (v64)
            {
              v65 = v64;
              v66 = *v130;
              do
              {
                for (m = 0; m != v65; ++m)
                {
                  if (*v130 != v66)
                  {
                    objc_enumerationMutation(v63);
                  }

                  [v56 setObject:v61 forKeyedSubscript:*(*(&v129 + 1) + 8 * m)];
                }

                v65 = [v63 countByEnumeratingWithState:&v129 objects:v140 count:16];
              }

              while (v65);
            }
          }

          v58 = [v114 countByEnumeratingWithState:&v133 objects:v141 count:16];
        }

        while (v58);
      }

      v68 = [v56 copy];
      v69 = [(HDSleepPeriodInfo *)v110 initWithUserSetSchedules:v96 incompleteSessions:v95 mappedTimezones:v68];

      v15 = v98;
      v5 = v99;
      v17 = v101;
      v16 = v102;
      goto LABEL_67;
    }

LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v69 = objc_alloc_init(HDSleepPeriodInfo);
LABEL_67:

  v70 = [[HDSleepPeriodArrayBuilder alloc] initWithInfo:v69 options:v100 & 0xF];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v71 = v15;
  v72 = [v71 countByEnumeratingWithState:&v117 objects:v137 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v118;
    do
    {
      for (n = 0; n != v73; ++n)
      {
        if (*v118 != v74)
        {
          objc_enumerationMutation(v71);
        }

        [(HDSleepPeriodArrayBuilder *)v70 addOrderedSegment:*(*(&v117 + 1) + 8 * n)];
      }

      v73 = [v71 countByEnumeratingWithState:&v117 objects:v137 count:16];
    }

    while (v73);
  }

  v21 = [(HDSleepPeriodArrayBuilder *)v70 finish];

  v2 = v105;
LABEL_75:
  v76 = [(HDSleepDaySummaryBuilder *)v2 sleepDurationGoalSamples];
  v77 = [v76 lastObject];
  v78 = [v77 quantity];

  eighteenthBirthdayDayIndex = v2->_eighteenthBirthdayDayIndex;
  if (eighteenthBirthdayDayIndex)
  {
    v80 = [(NSNumber *)eighteenthBirthdayDayIndex integerValue];
    if (v80 <= [(HDSleepDaySummaryBuilder *)v2 morningIndex])
    {
      HKSleepDurationGoalAdultRecommendation();
    }

    else
    {
      HKSleepDurationGoalChildRecommendation();
    }
    v81 = ;
  }

  else
  {
    v81 = 0;
  }

  v82 = v5;
  if ([v82 count])
  {
    v83 = [v82 sortedArrayUsingComparator:&__block_literal_global_312];
    v84 = objc_alloc(MEMORY[0x277CCA970]);
    v85 = [v83 firstObject];
    v86 = [v85 _creationDate];
    [v83 lastObject];
    v88 = v87 = v5;
    v89 = [v88 _creationDate];
    v90 = [v84 initWithStartDate:v86 endDate:v89];

    v5 = v87;
    v2 = v105;

    goto LABEL_86;
  }

LABEL_85:
  v90 = 0;
LABEL_86:

  v92 = [MEMORY[0x277CCD9B0] daySummaryWithMorningIndex:-[HDSleepDaySummaryBuilder morningIndex](v2 dateInterval:"morningIndex") calendar:v2->_dateInterval periods:v2->_gregorianCalendar schedules:v21 sleepDurationGoal:v103 minimumRecommendedSleepDurationGoal:v78 creationInterval:{v81, v90}];

  v93 = *MEMORY[0x277D85DE8];

  return v92;
}

@end