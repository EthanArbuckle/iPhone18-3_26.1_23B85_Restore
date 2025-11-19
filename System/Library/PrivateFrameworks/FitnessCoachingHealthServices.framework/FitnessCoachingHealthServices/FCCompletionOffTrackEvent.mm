@interface FCCompletionOffTrackEvent
- (BOOL)shouldFireWithTypicalDayModel:(id)a3 evaluationDelegate:(id)a4;
- (FCCompletionOffTrackEvent)initWithConfiguration:(id)a3;
- (double)minimumDayDuration;
- (id)goalProgressContentForModel:(id)a3;
- (id)nextFireDateWithModel:(id)a3;
@end

@implementation FCCompletionOffTrackEvent

- (FCCompletionOffTrackEvent)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCCompletionOffTrackEvent;
  v6 = [(FCCompletionOffTrackEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (double)minimumDayDuration
{
  v2 = [(FCCCompletionOffTrackConfiguration *)self->_configuration percentageOfDayRule];
  [v2 minimumDayDuration];
  v4 = v3;

  return v4;
}

- (BOOL)shouldFireWithTypicalDayModel:(id)a3 evaluationDelegate:(id)a4
{
  v6 = a3;
  configuration = self->_configuration;
  v8 = a4;
  v9 = [(FCCCompletionOffTrackConfiguration *)configuration coalescingRules];
  v10 = FCEventCoalescedWithRules(v9, v8);

  if (v10)
  {
    goto LABEL_2;
  }

  [(FCCCompletionOffTrackConfiguration *)self->_configuration goalBufferPercentage];
  v13 = v12;
  v14 = [(FCCCompletionOffTrackConfiguration *)self->_configuration allowedGoalTypes];
  v15 = [v14 containsObject:&unk_285E86990];

  if (v15)
  {
    [v6 valueOfTypicalDayMoveEarnedByNow];
    v17 = v16 > 0.0;
    v18 = [v6 willCompleteMoveGoalWithBufferPercentage:v13];
  }

  else
  {
    v17 = 0;
    v18 = 1;
  }

  v19 = [(FCCCompletionOffTrackConfiguration *)self->_configuration allowedGoalTypes];
  v20 = [v19 containsObject:&unk_285E869A8];

  if (v20)
  {
    [v6 valueOfTypicalDayBriskMinutesEarnedByNow];
    v22 = v21 > 0.0;
    v23 = [v6 willCompleteExerciseGoalWithBufferPercentage:v13];
  }

  else
  {
    v22 = 0;
    v23 = 1;
  }

  v24 = [(FCCCompletionOffTrackConfiguration *)self->_configuration allowedGoalTypes];
  v25 = [v24 containsObject:&unk_285E869C0];

  v26 = v25 ? [v6 willCompleteStandGoalOrItIsTooLateWithBufferPercentage:v13] : 1;
  if (v18 & 1 | !v17 && ((!v22 | v23) & 1) != 0 && v26 & 1 | (!v17 && !v22))
  {
LABEL_2:
    v11 = 0;
  }

  else
  {
    _HKInitializeLogging();
    v27 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_24B55B000, v27, OS_LOG_TYPE_DEFAULT, "Unlikely to complete a goal today; showing evening update", v29, 2u);
    }

    v11 = 1;
  }

  return v11;
}

- (id)nextFireDateWithModel:(id)a3
{
  configuration = self->_configuration;
  v4 = a3;
  v5 = [(FCCCompletionOffTrackConfiguration *)configuration percentageOfDayRule];
  v6 = FCFireDateForPercentOfDayRule(v5, v4);

  return v6;
}

- (id)goalProgressContentForModel:(id)a3
{
  v4 = a3;
  [(FCCCompletionOffTrackConfiguration *)self->_configuration goalBufferPercentage];
  v6 = v5;
  v7 = [(FCCCompletionOffTrackConfiguration *)self->_configuration allowedGoalTypes];
  v8 = [v7 containsObject:&unk_285E86990];

  if (v8)
  {
    v9 = [v4 willCompleteMoveGoalWithBufferPercentage:v6];
  }

  else
  {
    v9 = 1;
  }

  v10 = [(FCCCompletionOffTrackConfiguration *)self->_configuration allowedGoalTypes];
  v11 = [v10 containsObject:&unk_285E869A8];

  if (v11)
  {
    v12 = [v4 willCompleteExerciseGoalWithBufferPercentage:v6];
  }

  else
  {
    v12 = 1;
  }

  v13 = [(FCCCompletionOffTrackConfiguration *)self->_configuration allowedGoalTypes];
  v14 = [v13 containsObject:&unk_285E869C0];

  if (v14)
  {
    v15 = [v4 willCompleteStandGoalOrItIsTooLateWithBufferPercentage:v6];
    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v16 = MEMORY[0x277CBEBF8];
    if (v12)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v15 = 1;
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_9:
  v16 = [MEMORY[0x277CBEBF8] arrayByAddingObject:&unk_285E86990];
  if ((v12 & 1) == 0)
  {
LABEL_13:
    v17 = [v16 arrayByAddingObject:&unk_285E869A8];

    v16 = v17;
  }

LABEL_14:
  if ((v15 & 1) == 0)
  {
    v18 = [v16 arrayByAddingObject:&unk_285E869C0];

    v16 = v18;
  }

  v19 = objc_alloc(MEMORY[0x277D09CB8]);
  v20 = [(FCCompletionOffTrackEvent *)self eventIdentifier];
  v21 = [v19 initWithEventIdentifier:v20 goalTypesToDisplay:v16 goalTypeToHighlight:0 expectedGoalValue:0.0];

  return v21;
}

@end