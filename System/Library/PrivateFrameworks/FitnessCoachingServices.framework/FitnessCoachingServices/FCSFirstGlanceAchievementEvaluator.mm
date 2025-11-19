@interface FCSFirstGlanceAchievementEvaluator
- (FCSFirstGlanceAchievementEvaluator)initWithDataSource:(id)a3;
- (FCSFirstGlanceAchievementEvaluatorDataSource)dataSource;
- (id)evaluateYesterdayAchievements:(id)a3 isStandaloneMode:(BOOL)a4;
- (id)progressLocalizationKeyForAchievement:(id)a3 progressMilestone:(id)a4 experienceType:(unint64_t)a5;
- (void)_firstAchievementFromAchievements:(id)a3 passingMilestoneTest:(id)a4 completion:(id)a5;
- (void)_firstAchievementMatchingLifetimeGoalsWithNames:(id)a3 amongstAchievements:(id)a4 experienceType:(unint64_t)a5 reachedMilestoneCompletion:(id)a6;
- (void)progressAchievementAndMilestoneWithCurrentDate:(id)a3 calendar:(id)a4 experienceType:(unint64_t)a5 isStandaloneMode:(BOOL)a6 completion:(id)a7;
- (void)progressAchievementAndMilestoneWithMonthlyChallengeAchievement:(id)a3 achievementsMap:(id)a4 currentDate:(id)a5 calendar:(id)a6 experienceType:(unint64_t)a7 isStandaloneMode:(BOOL)a8 completion:(id)a9;
- (void)setLocalizationKeyOverride:(id)a3;
- (void)yesterdayLocalizationKeyForAchievement:(id)a3 experienceType:(unint64_t)a4 completion:(id)a5;
@end

@implementation FCSFirstGlanceAchievementEvaluator

- (FCSFirstGlanceAchievementEvaluator)initWithDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FCSFirstGlanceAchievementEvaluator;
  v5 = [(FCSFirstGlanceAchievementEvaluator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
  }

  return v6;
}

- (void)progressAchievementAndMilestoneWithCurrentDate:(id)a3 calendar:(id)a4 experienceType:(unint64_t)a5 isStandaloneMode:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(FCSFirstGlanceAchievementEvaluator *)self dataSource];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __137__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithCurrentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke;
  v19[3] = &unk_2785DA1C8;
  v19[4] = self;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = a5;
  v24 = a6;
  v16 = v13;
  v17 = v12;
  v18 = v14;
  [v15 monthlyChallengeWithCompletion:v19];
}

void __137__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithCurrentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_2277F7000, v7, OS_LOG_TYPE_DEFAULT, "Error getting monthly challenge %@", buf, 0xCu);
    }
  }

  v8 = [*(a1 + 32) dataSource];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __137__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithCurrentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke_292;
  v14[3] = &unk_2785DA1A0;
  v18 = *(a1 + 56);
  v9 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v5;
  v16 = v9;
  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  v17 = v10;
  v19 = v11;
  v20 = *(a1 + 72);
  v12 = v5;
  [v8 progressAchievementsWithNames:&unk_283AF44C0 completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __137__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithCurrentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke_292(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 64);
    v5 = *(*(a1 + 64) + 16);

    v5();
  }

  else
  {
    v6 = [a2 hk_mapToDictionary:&__block_literal_global_0];
    [*(a1 + 32) progressAchievementAndMilestoneWithMonthlyChallengeAchievement:*(a1 + 40) achievementsMap:v6 currentDate:*(a1 + 48) calendar:*(a1 + 56) experienceType:*(a1 + 72) isStandaloneMode:*(a1 + 80) completion:*(a1 + 64)];
  }
}

void __137__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithCurrentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke_2(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v8 = [v6 template];
  v7 = [v8 uniqueName];
  (a3)[2](v5, v7, v6);
}

- (void)progressAchievementAndMilestoneWithMonthlyChallengeAchievement:(id)a3 achievementsMap:(id)a4 currentDate:(id)a5 calendar:(id)a6 experienceType:(unint64_t)a7 isStandaloneMode:(BOOL)a8 completion:(id)a9
{
  v54 = a8;
  v91 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v61 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a9;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy_;
  v83 = __Block_byref_object_dispose_;
  v84 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy_;
  v77 = __Block_byref_object_dispose_;
  v78 = 0;
  v58 = v14;
  v59 = v15;
  v55 = FCSFirstGlanceDaysRemainingInFitnessWeek(v14, v15);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __181__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithMonthlyChallengeAchievement_achievementsMap_currentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke;
  aBlock[3] = &unk_2785DA1F0;
  aBlock[4] = &v79;
  aBlock[5] = &v73;
  v60 = _Block_copy(aBlock);
  v17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v18 = [v17 persistentDomainForName:*MEMORY[0x277CCE4C8]];

  v19 = [v18 objectForKey:@"progressAchievementMilestoneOverride"];
  v20 = v74[5];
  v74[5] = v19;

  v21 = MEMORY[0x277CCC290];
  if (v74[5])
  {
    _HKInitializeLogging();
    v22 = *v21;
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v74[5];
      *buf = 138412290;
      v90 = v23;
      _os_log_impl(&dword_2277F7000, v22, OS_LOG_TYPE_DEFAULT, "Overriding First Glance progress achievement milestone to '%@'", buf, 0xCu);
    }
  }

  v24 = [v18 objectForKey:@"progressAchievementIdentifierOverride"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _HKInitializeLogging();
    v25 = *v21;
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v90 = v24;
      _os_log_impl(&dword_2277F7000, v25, OS_LOG_TYPE_DEFAULT, "Overriding First Glance progress achievement identifier to '%@'", buf, 0xCu);
    }

    v26 = [v61 objectForKeyedSubscript:v24];
    v27 = v80[5];
    v80[5] = v26;

    if (!v80[5])
    {
      v28 = [v13 template];
      v29 = [v28 uniqueName];
      v30 = [v29 isEqualToString:v24];

      if (v30)
      {
        _HKInitializeLogging();
        v31 = *v21;
        if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v90 = v24;
          _os_log_impl(&dword_2277F7000, v31, OS_LOG_TYPE_DEFAULT, "Overriding First Glance progress monthly achievement identifier to '%@'", buf, 0xCu);
        }

        objc_storeStrong(v80 + 5, a3);
      }
    }
  }

  v32 = v80[5];
  if (v13 && !v32)
  {
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __181__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithMonthlyChallengeAchievement_achievementsMap_currentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke_298;
    v68[3] = &unk_2785DA218;
    v69 = v59;
    v70 = v14;
    v71 = a7;
    v33 = _Block_copy(v68);
    v88 = v13;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
    [(FCSFirstGlanceAchievementEvaluator *)self _firstAchievementFromAchievements:v34 passingMilestoneTest:v33 completion:v60];

    v32 = v80[5];
  }

  if (!v32)
  {
    [(FCSFirstGlanceAchievementEvaluator *)self _firstAchievementMatchingLifetimeGoalsWithNames:&unk_283AF4460 amongstAchievements:v61 experienceType:a7 reachedMilestoneCompletion:v60];
    if (!v80[5])
    {
      [(FCSFirstGlanceAchievementEvaluator *)self _firstAchievementMatchingLifetimeGoalsWithNames:&unk_283AF4478 amongstAchievements:v61 experienceType:a7 reachedMilestoneCompletion:v60];
      v35 = v80[5];
      if (a7 != 3 && !v35)
      {
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __181__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithMonthlyChallengeAchievement_achievementsMap_currentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke_400;
        v67[3] = &__block_descriptor_40_e40___NSString_32__0__ACHAchievement_8d16d24l;
        v67[4] = a7;
        v36 = _Block_copy(v67);
        v37 = [v61 objectForKeyedSubscript:@"LongestMoveStreak"];
        v38 = v37;
        if (v37)
        {
          v87 = v37;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
          [(FCSFirstGlanceAchievementEvaluator *)self _firstAchievementFromAchievements:v39 passingMilestoneTest:v36 completion:v60];
        }

        v35 = v80[5];
      }

      if (!v35 && !v54)
      {
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __181__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithMonthlyChallengeAchievement_achievementsMap_currentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke_2;
        v66[3] = &__block_descriptor_48_e40___NSString_32__0__ACHAchievement_8d16d24l;
        v66[4] = v55;
        v66[5] = a7;
        v40 = _Block_copy(v66);
        v41 = [v61 objectForKeyedSubscript:@"PerfectWeekAll"];
        v42 = v41;
        if (v41)
        {
          v86 = v41;
          v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
          [(FCSFirstGlanceAchievementEvaluator *)self _firstAchievementFromAchievements:v43 passingMilestoneTest:v40 completion:v60];
        }

        v35 = v80[5];
      }

      if (!v35)
      {
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __181__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithMonthlyChallengeAchievement_achievementsMap_currentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke_3;
        v65[3] = &__block_descriptor_48_e40___NSString_32__0__ACHAchievement_8d16d24l;
        v65[4] = v55;
        v65[5] = a7;
        v44 = _Block_copy(v65);
        v45 = [v61 objectForKeyedSubscript:@"7WorkoutWeek"];
        v46 = v45;
        if (v45)
        {
          v85 = v45;
          v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
          [(FCSFirstGlanceAchievementEvaluator *)self _firstAchievementFromAchievements:v47 passingMilestoneTest:v44 completion:v60];
        }

        if (!v80[5])
        {
          v64[0] = MEMORY[0x277D85DD0];
          v64[1] = 3221225472;
          v64[2] = __181__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithMonthlyChallengeAchievement_achievementsMap_currentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke_4;
          v64[3] = &__block_descriptor_48_e40___NSString_32__0__ACHAchievement_8d16d24l;
          v64[4] = v55;
          v64[5] = a7;
          v48 = _Block_copy(v64);
          v49 = &unk_283AF44A8;
          if (v54)
          {
            v49 = &unk_283AF4490;
          }

          v50 = v49;
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __181__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithMonthlyChallengeAchievement_achievementsMap_currentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke_5;
          v62[3] = &unk_2785DA280;
          v63 = v61;
          v51 = [v50 hk_map:v62];
          [(FCSFirstGlanceAchievementEvaluator *)self _firstAchievementFromAchievements:v51 passingMilestoneTest:v48 completion:v60];

          if (!v80[5])
          {
            goto LABEL_36;
          }
        }
      }
    }
  }

  if (v74[5])
  {
    v16[2](v16);
  }

  else
  {
LABEL_36:
    v52 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:96 userInfo:0];
    (v16[2])(v16, 0, 0, v52);
  }

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);

  v53 = *MEMORY[0x277D85DE8];
}

void __181__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithMonthlyChallengeAchievement_achievementsMap_currentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id __181__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithMonthlyChallengeAchievement_achievementsMap_currentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke_298(uint64_t a1, void *a2, double a3, double a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [*(a1 + 32) component:16 fromDate:*(a1 + 40)];
  [*(a1 + 32) rangeOfUnit:16 inUnit:8 forDate:*(a1 + 40)];
  if (floor(vcvtd_n_f64_u64(v9, 2uLL)) == v8)
  {
    v10 = v9;
    v11 = @"QUARTER_IN";
    if (!v11)
    {
LABEL_9:
      v14 = ValidMilestoneForExperienceType(v11, *(a1 + 48));

      goto LABEL_16;
    }

    if (a3 < a4)
    {
      if (ACHMonthlyChallengeAchievementIsDayBased())
      {
        v12 = v10 - v8;
        if (a4 - a3 > v12)
        {
          _HKInitializeLogging();
          v13 = *MEMORY[0x277CCC290];
          if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
          {
            v19 = 134218240;
            v20 = a4 - a3;
            v21 = 2048;
            v22 = *&v12;
            _os_log_impl(&dword_2277F7000, v13, OS_LOG_TYPE_DEFAULT, "Not coaching to Monthly Challenge - days needed (%ld) exceed days remaining in month (%ld)", &v19, 0x16u);
          }

          v11 = 0;
        }
      }

      goto LABEL_9;
    }

    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218240;
      v20 = *&a3;
      v21 = 2048;
      v22 = a4;
      _os_log_impl(&dword_2277F7000, v16, OS_LOG_TYPE_DEFAULT, "Not coaching to Monthly Challenge - progress (%ff) already matches or exceeds goal (%f).", &v19, 0x16u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_2277F7000, v15, OS_LOG_TYPE_DEFAULT, "Not coaching for Monthly Challenge progress", &v19, 2u);
    }
  }

  v14 = 0;
LABEL_16:

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

id __181__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithMonthlyChallengeAchievement_achievementsMap_currentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke_400(uint64_t a1, double a2, double a3)
{
  if (a2 == vcvtmd_s64_f64(a3 * 0.75))
  {
    v4 = &FCSFirstGlanceAchievementProgressThreeQuartersIn;
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if (a3 - a2 == 3)
  {
    v4 = FCSFirstGlanceAchievementProgressThreeDaysAway;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  v6 = ValidMilestoneForExperienceType(v5, *(a1 + 32));

  return v6;
}

id __181__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithMonthlyChallengeAchievement_achievementsMap_currentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke_2(uint64_t a1, double a2, double a3)
{
  v4 = a3 - a2;
  if (v4 == 1)
  {
    if (*(a1 + 32) == 1)
    {
      v5 = FCSFirstGlanceAchievementProgressOneDayAway;
      goto LABEL_7;
    }
  }

  else if (v4 == 3 && *(a1 + 32) == 3)
  {
    v5 = FCSFirstGlanceAchievementProgressThreeDaysAway;
LABEL_7:
    v6 = *v5;
    goto LABEL_9;
  }

  v6 = 0;
LABEL_9:
  v7 = ValidMilestoneForExperienceType(v6, *(a1 + 40));

  return v7;
}

id __181__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithMonthlyChallengeAchievement_achievementsMap_currentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke_3(uint64_t a1, double a2, double a3)
{
  v4 = a3 - a2;
  if (v4 == 1)
  {
    v5 = FCSFirstGlanceAchievementProgressOneDayAway;
  }

  else
  {
    if (v4 != 3 || *(a1 + 32) < 3)
    {
      v6 = 0;
      goto LABEL_8;
    }

    v5 = FCSFirstGlanceAchievementProgressThreeDaysAway;
  }

  v6 = *v5;
LABEL_8:
  v7 = ValidMilestoneForExperienceType(v6, *(a1 + 40));

  return v7;
}

id __181__FCSFirstGlanceAchievementEvaluator_progressAchievementAndMilestoneWithMonthlyChallengeAchievement_achievementsMap_currentDate_calendar_experienceType_isStandaloneMode_completion___block_invoke_4(uint64_t a1, double a2, double a3)
{
  if (a3 - a2 == 1 && *(a1 + 32) == 1)
  {
    v4 = @"ONE_AWAY";
  }

  else
  {
    v4 = 0;
  }

  v5 = ValidMilestoneForExperienceType(v4, *(a1 + 40));

  return v5;
}

- (id)progressLocalizationKeyForAchievement:(id)a3 progressMilestone:(id)a4 experienceType:(unint64_t)a5
{
  progressLocalizationKeyOverride = self->_progressLocalizationKeyOverride;
  if (progressLocalizationKeyOverride)
  {
    v6 = progressLocalizationKeyOverride;
  }

  else
  {
    v8 = a4;
    v9 = FCSFirstGlanceAchievementLocalizationBundle(a3);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ACHIEVEMENT_UNACHIEVED_PROGRESS_%@_DESC", v8];

    v11 = FILocalizationTableForExperienceType();
    v6 = FIRandomKeyForPrefixWithTableName();
  }

  return v6;
}

- (void)yesterdayLocalizationKeyForAchievement:(id)a3 experienceType:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (self->_yesterdayLocalizationKeyOverride)
  {
    (*(v9 + 2))(v9);
  }

  else
  {
    v11 = FCSFirstGlanceAchievementLocalizationBundle(v8);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __103__FCSFirstGlanceAchievementEvaluator_yesterdayLocalizationKeyForAchievement_experienceType_completion___block_invoke;
    v13[3] = &unk_2785DA2A8;
    v17 = a4;
    v14 = v8;
    v15 = v11;
    v16 = v10;
    v12 = v11;
    [FirstGlanceAchievementUtilities achievementShouldSuggestRecoveryWithAchievement:v14 completion:v13];
  }
}

void __103__FCSFirstGlanceAchievementEvaluator_yesterdayLocalizationKeyForAchievement_experienceType_completion___block_invoke(uint64_t a1, int a2)
{
  v14 = @"ACHIEVEMENT_YESTERDAY_DESC";
  if (_os_feature_enabled_impl())
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = @"ACHIEVEMENT_EARNED_YESTERDAY_SUGGEST_ADJUST_DESC";

    v14 = v5;
  }

  IsLongestMoveStreakAchievement = FCSFirstGlanceAchievementIsLongestMoveStreakAchievement(*(a1 + 32));
  IsMultipleOfTargetValue = FCSFirstGlanceAchievementValueIsMultipleOfTargetValue(*(a1 + 32), 50);
  if (IsLongestMoveStreakAchievement)
  {
    v8 = IsMultipleOfTargetValue == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [(__CFString *)v14 stringByAppendingString:@"_MILESTONE"];

    v14 = v9;
  }

  v10 = *(a1 + 56);
  v11 = FILocalizationTableForExperienceType();
  v12 = *(a1 + 40);
  v13 = FIRandomKeyForPrefixWithTableName();
  (*(*(a1 + 48) + 16))();
}

- (id)evaluateYesterdayAchievements:(id)a3 isStandaloneMode:(BOOL)a4
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__FCSFirstGlanceAchievementEvaluator_evaluateYesterdayAchievements_isStandaloneMode___block_invoke;
  v12[3] = &__block_descriptor_33_e24_B16__0__ACHAchievement_8l;
  v13 = a4;
  v5 = [a3 hk_filter:v12];
  v6 = [v5 hk_filter:&__block_literal_global_438];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__FCSFirstGlanceAchievementEvaluator_evaluateYesterdayAchievements_isStandaloneMode___block_invoke_3;
  v10[3] = &__block_descriptor_33_e43_q24__0__ACHAchievement_8__ACHAchievement_16l;
  v11 = a4;
  v7 = [v6 sortedArrayUsingComparator:v10];
  v8 = [v7 firstObject];

  return v8;
}

BOOL __85__FCSFirstGlanceAchievementEvaluator_evaluateYesterdayAchievements_isStandaloneMode___block_invoke(uint64_t a1, void *a2)
{
  v2 = FCSFirstGlanceRankingForAchievement(a2, *(a1 + 32));
  v3 = v2 != 0;

  return v3;
}

uint64_t __85__FCSFirstGlanceAchievementEvaluator_evaluateYesterdayAchievements_isStandaloneMode___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  IsLongestMoveStreakAchievement = FCSFirstGlanceAchievementIsLongestMoveStreakAchievement(v2);
  IsLessThanTargetValue = FCSFirstGlanceAchievementValueIsLessThanTargetValue(v2, 50);
  IsMultipleOfTargetValue = FCSFirstGlanceAchievementValueIsMultipleOfTargetValue(v2, 50);

  return IsLessThanTargetValue & 1 | ((IsLongestMoveStreakAchievement & 1) == 0) | IsMultipleOfTargetValue & 1u;
}

uint64_t __85__FCSFirstGlanceAchievementEvaluator_evaluateYesterdayAchievements_isStandaloneMode___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = FCSFirstGlanceRankingForAchievement(a2, v5);
  v8 = FCSFirstGlanceRankingForAchievement(v6, *(a1 + 32));

  v9 = [v7 compare:v8];
  return v9;
}

- (void)_firstAchievementMatchingLifetimeGoalsWithNames:(id)a3 amongstAchievements:(id)a4 experienceType:(unint64_t)a5 reachedMilestoneCompletion:(id)a6
{
  v10 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __148__FCSFirstGlanceAchievementEvaluator__firstAchievementMatchingLifetimeGoalsWithNames_amongstAchievements_experienceType_reachedMilestoneCompletion___block_invoke;
  aBlock[3] = &__block_descriptor_40_e40___NSString_32__0__ACHAchievement_8d16d24l;
  aBlock[4] = a5;
  v11 = a6;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __148__FCSFirstGlanceAchievementEvaluator__firstAchievementMatchingLifetimeGoalsWithNames_amongstAchievements_experienceType_reachedMilestoneCompletion___block_invoke_2;
  v19 = &unk_2785DA280;
  v20 = v10;
  v14 = v10;
  v15 = [v12 hk_map:&v16];

  [(FCSFirstGlanceAchievementEvaluator *)self _firstAchievementFromAchievements:v15 passingMilestoneTest:v13 completion:v11, v16, v17, v18, v19];
}

id __148__FCSFirstGlanceAchievementEvaluator__firstAchievementMatchingLifetimeGoalsWithNames_amongstAchievements_experienceType_reachedMilestoneCompletion___block_invoke(uint64_t a1, double a2, double a3)
{
  v4 = a3 - a2;
  if (v4 == 3)
  {
    v5 = FCSFirstGlanceAchievementProgressThreeDaysAway;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = FCSFirstGlanceAchievementProgressOneDayAway;
LABEL_5:
    v6 = *v5;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = ValidMilestoneForExperienceType(v6, *(a1 + 32));

  return v7;
}

id __148__FCSFirstGlanceAchievementEvaluator__firstAchievementMatchingLifetimeGoalsWithNames_amongstAchievements_experienceType_reachedMilestoneCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if ([v2 earnedInstanceCount])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (void)_firstAchievementFromAchievements:(id)a3 passingMilestoneTest:(id)a4 completion:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v29 = a5;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    v13 = MEMORY[0x277CCC290];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [v15 template];
        v17 = [v16 canonicalUnit];

        if (v17)
        {
          v18 = [v15 goal];
          [v18 doubleValueForUnit:v17];
          v20 = v19;

          v21 = [v15 progress];
          [v21 doubleValueForUnit:v17];
          v23 = v22;

          if (FCSFirstGlanceAchievementCanCoachWithProgressAndGoal(v23, v20))
          {
            v24 = v8[2](v8, v15, v23, v20);
            if (v24)
            {
              v26 = v24;
              v27 = v29;
              (*(v29 + 2))(v29, v15, v24);

              goto LABEL_15;
            }
          }
        }

        else
        {
          _HKInitializeLogging();
          v25 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
          {
            [(FCSFirstGlanceAchievementEvaluator *)v34 _firstAchievementFromAchievements:v25 passingMilestoneTest:v15 completion:&v35];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v11);
  }

  v27 = v29;
  (*(v29 + 2))(v29, 0, 0);
LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)setLocalizationKeyOverride:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_progressLocalizationKeyOverride, a3);
  yesterdayLocalizationKeyOverride = self->_yesterdayLocalizationKeyOverride;
  self->_yesterdayLocalizationKeyOverride = v5;
}

- (FCSFirstGlanceAchievementEvaluatorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_firstAchievementFromAchievements:(void *)a3 passingMilestoneTest:(void *)a4 completion:.cold.1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 template];
  v9 = [v8 uniqueName];
  *a1 = 138543362;
  *a4 = v9;
  _os_log_error_impl(&dword_2277F7000, v7, OS_LOG_TYPE_ERROR, "Achievement missing canonical unit, can't evaluating for coaching: %{public}@", a1, 0xCu);
}

@end