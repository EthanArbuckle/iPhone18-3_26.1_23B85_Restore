@interface FCAtypicalDayEvent
- (BOOL)shouldFireWithTypicalDayModel:(id)a3 evaluationDelegate:(id)a4;
- (FCAtypicalDayEvent)initWithConfiguration:(id)a3;
- (double)minimumDayDuration;
- (id)goalProgressContentForModel:(id)a3;
- (id)nextFireDateWithModel:(id)a3;
@end

@implementation FCAtypicalDayEvent

- (FCAtypicalDayEvent)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCAtypicalDayEvent;
  v6 = [(FCAtypicalDayEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (double)minimumDayDuration
{
  v2 = [(FCCAtypicalDayConfiguration *)self->_configuration percentageOfDayRule];
  [v2 minimumDayDuration];
  v4 = v3;

  return v4;
}

- (BOOL)shouldFireWithTypicalDayModel:(id)a3 evaluationDelegate:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([a4 currentExperienceType] != 1)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37[0]) = 0;
      v12 = "Morning update should not fire, fitness junior user";
      goto LABEL_8;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  [v6 valueOfTypicalDayMoveEarnedByNow];
  v8 = v7;
  [v6 valueOfTypicalDayBriskMinutesEarnedByNow];
  v10 = v9;
  if (v8 <= 0.0 && v9 <= 0.0)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37[0]) = 0;
      v12 = "Morning update can't use move or exercise to determine relative progress!";
LABEL_8:
      _os_log_impl(&dword_24B55B000, v11, OS_LOG_TYPE_DEFAULT, v12, v37, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  [v6 currentMoveGoalPercentage];
  v17 = v16;
  [v6 percentageOfTypicalDayMoveComparedToNow];
  v19 = v18;
  v20 = [(FCCAtypicalDayConfiguration *)self->_configuration allowedGoalTypes];
  v21 = [v20 containsObject:&unk_285E86948];

  v22 = 0;
  if (v21)
  {
    v23 = 0;
    if (v8 > 0.0)
    {
      v23 = [(FCAtypicalDayEvent *)self _isProgressSignificantlyBetter:v19];
      v24 = [(FCAtypicalDayEvent *)self _isProgressSignificantlyWorse:v19];
      v22 = v17 < 1.0 && v24;
    }
  }

  else
  {
    v23 = 0;
  }

  [v6 currentExerciseGoalPercentage];
  v26 = v25;
  [v6 percentageOfTypicalDayBriskMinutesEarnedComparedToNow];
  v28 = v27;
  v29 = [(FCCAtypicalDayConfiguration *)self->_configuration allowedGoalTypes];
  v30 = [v29 containsObject:&unk_285E86960];

  v31 = 0;
  if (v30)
  {
    v32 = 0;
    if (v10 > 0.0)
    {
      v32 = [(FCAtypicalDayEvent *)self _isProgressSignificantlyBetter:v28];
      v33 = [(FCAtypicalDayEvent *)self _isProgressSignificantlyWorse:v28];
      v31 = v26 < 1.0 && v33;
    }
  }

  else
  {
    v32 = 0;
  }

  if (v23 || v32)
  {
    _HKInitializeLogging();
    v34 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37[0]) = 0;
      v35 = "Today was significantly better than normal; showing morning update";
LABEL_29:
      _os_log_impl(&dword_24B55B000, v34, OS_LOG_TYPE_DEFAULT, v35, v37, 2u);
    }
  }

  else
  {
    if (!v22 && !v31)
    {
      goto LABEL_9;
    }

    _HKInitializeLogging();
    v34 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37[0]) = 0;
      v35 = "Today was significantly worse than normal; showing morning update";
      goto LABEL_29;
    }
  }

  _HKInitializeLogging();
  v36 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v37[0] = 67110400;
    v37[1] = v8 > 0.0;
    v38 = 1024;
    v39 = v10 > 0.0;
    v40 = 2048;
    v41 = v19;
    v42 = 2048;
    v43 = v28;
    v44 = 1024;
    v45 = v17 >= 1.0;
    v46 = 1024;
    v47 = v26 >= 1.0;
    _os_log_impl(&dword_24B55B000, v36, OS_LOG_TYPE_DEFAULT, "Morning update trigger determined from: canUseMoveForPrediction=%{BOOL}d, canUseExerciseForPrediction=%{BOOL}d, percentageOfTypicalMove=%f, percentageOfTypicalExercise=%f, moveRingClosedToday=%{BOOL}d, exerciseRingClosedToday=%{BOOL}d", v37, 0x2Eu);
  }

  v13 = 1;
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)nextFireDateWithModel:(id)a3
{
  configuration = self->_configuration;
  v4 = a3;
  v5 = [(FCCAtypicalDayConfiguration *)configuration percentageOfDayRule];
  v6 = FCFireDateForPercentOfDayRule(v5, v4);

  return v6;
}

- (id)goalProgressContentForModel:(id)a3
{
  v4 = a3;
  v5 = [(FCCAtypicalDayConfiguration *)self->_configuration allowedGoalTypes];
  v6 = [v5 containsObject:&unk_285E86948];

  if (v6)
  {
    [v4 percentageOfTypicalDayMoveComparedToNow];
    v8 = v7;
    v9 = [(FCAtypicalDayEvent *)self _isProgressSignificantlyWorse:?];
    v6 = [(FCAtypicalDayEvent *)self _isProgressSignificantlyBetter:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(FCCAtypicalDayConfiguration *)self->_configuration allowedGoalTypes];
  v11 = [v10 containsObject:&unk_285E86960];

  if (v11)
  {
    [v4 percentageOfTypicalDayBriskMinutesEarnedComparedToNow];
    v13 = v12;
    v11 = [(FCAtypicalDayEvent *)self _isProgressSignificantlyWorse:?];
    v14 = [(FCAtypicalDayEvent *)self _isProgressSignificantlyBetter:v13];
  }

  else
  {
    v14 = 0;
  }

  if ((v9 | v11))
  {
    if (v9)
    {
      [v4 valueOfTypicalDayMoveEarnedByNow];
      v16 = v15;
      v17 = 1;
    }

    else if (v11)
    {
      [v4 valueOfTypicalDayBriskMinutesEarnedByNow];
      v16 = v21;
      v17 = 2;
    }

    else
    {
      v17 = 0;
      v16 = 0.0;
    }

    v20 = [MEMORY[0x277CBEBF8] arrayByAddingObject:&unk_285E86978];
    goto LABEL_22;
  }

  if ((v6 | v14))
  {
    if (v6)
    {
      v18 = [MEMORY[0x277CBEBF8] arrayByAddingObject:&unk_285E86948];
      [v4 valueOfTypicalDayMoveEarnedByNow];
      v16 = v19;
      v17 = 1;
      if (!v14)
      {
LABEL_13:
        v20 = v18;
        goto LABEL_22;
      }
    }

    else
    {
      v17 = 0;
      v16 = 0.0;
      v18 = MEMORY[0x277CBEBF8];
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    v20 = [v18 arrayByAddingObject:&unk_285E86960];

    if (v16 == 0.0)
    {
      [v4 valueOfTypicalDayBriskMinutesEarnedByNow];
      v16 = v22;
      v17 = 2;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0.0;
    v20 = MEMORY[0x277CBEBF8];
  }

LABEL_22:
  v23 = objc_alloc(MEMORY[0x277D09CB8]);
  v24 = [(FCAtypicalDayEvent *)self eventIdentifier];
  v25 = [v23 initWithEventIdentifier:v24 goalTypesToDisplay:v20 goalTypeToHighlight:v17 expectedGoalValue:v16];

  return v25;
}

@end