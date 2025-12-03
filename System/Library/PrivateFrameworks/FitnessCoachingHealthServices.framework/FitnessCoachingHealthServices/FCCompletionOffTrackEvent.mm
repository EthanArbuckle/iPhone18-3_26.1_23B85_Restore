@interface FCCompletionOffTrackEvent
- (BOOL)shouldFireWithTypicalDayModel:(id)model evaluationDelegate:(id)delegate;
- (FCCompletionOffTrackEvent)initWithConfiguration:(id)configuration;
- (double)minimumDayDuration;
- (id)goalProgressContentForModel:(id)model;
- (id)nextFireDateWithModel:(id)model;
@end

@implementation FCCompletionOffTrackEvent

- (FCCompletionOffTrackEvent)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = FCCompletionOffTrackEvent;
  v6 = [(FCCompletionOffTrackEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (double)minimumDayDuration
{
  percentageOfDayRule = [(FCCCompletionOffTrackConfiguration *)self->_configuration percentageOfDayRule];
  [percentageOfDayRule minimumDayDuration];
  v4 = v3;

  return v4;
}

- (BOOL)shouldFireWithTypicalDayModel:(id)model evaluationDelegate:(id)delegate
{
  modelCopy = model;
  configuration = self->_configuration;
  delegateCopy = delegate;
  coalescingRules = [(FCCCompletionOffTrackConfiguration *)configuration coalescingRules];
  v10 = FCEventCoalescedWithRules(coalescingRules, delegateCopy);

  if (v10)
  {
    goto LABEL_2;
  }

  [(FCCCompletionOffTrackConfiguration *)self->_configuration goalBufferPercentage];
  v13 = v12;
  allowedGoalTypes = [(FCCCompletionOffTrackConfiguration *)self->_configuration allowedGoalTypes];
  v15 = [allowedGoalTypes containsObject:&unk_285E86990];

  if (v15)
  {
    [modelCopy valueOfTypicalDayMoveEarnedByNow];
    v17 = v16 > 0.0;
    v18 = [modelCopy willCompleteMoveGoalWithBufferPercentage:v13];
  }

  else
  {
    v17 = 0;
    v18 = 1;
  }

  allowedGoalTypes2 = [(FCCCompletionOffTrackConfiguration *)self->_configuration allowedGoalTypes];
  v20 = [allowedGoalTypes2 containsObject:&unk_285E869A8];

  if (v20)
  {
    [modelCopy valueOfTypicalDayBriskMinutesEarnedByNow];
    v22 = v21 > 0.0;
    v23 = [modelCopy willCompleteExerciseGoalWithBufferPercentage:v13];
  }

  else
  {
    v22 = 0;
    v23 = 1;
  }

  allowedGoalTypes3 = [(FCCCompletionOffTrackConfiguration *)self->_configuration allowedGoalTypes];
  v25 = [allowedGoalTypes3 containsObject:&unk_285E869C0];

  v26 = v25 ? [modelCopy willCompleteStandGoalOrItIsTooLateWithBufferPercentage:v13] : 1;
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

- (id)nextFireDateWithModel:(id)model
{
  configuration = self->_configuration;
  modelCopy = model;
  percentageOfDayRule = [(FCCCompletionOffTrackConfiguration *)configuration percentageOfDayRule];
  v6 = FCFireDateForPercentOfDayRule(percentageOfDayRule, modelCopy);

  return v6;
}

- (id)goalProgressContentForModel:(id)model
{
  modelCopy = model;
  [(FCCCompletionOffTrackConfiguration *)self->_configuration goalBufferPercentage];
  v6 = v5;
  allowedGoalTypes = [(FCCCompletionOffTrackConfiguration *)self->_configuration allowedGoalTypes];
  v8 = [allowedGoalTypes containsObject:&unk_285E86990];

  if (v8)
  {
    v9 = [modelCopy willCompleteMoveGoalWithBufferPercentage:v6];
  }

  else
  {
    v9 = 1;
  }

  allowedGoalTypes2 = [(FCCCompletionOffTrackConfiguration *)self->_configuration allowedGoalTypes];
  v11 = [allowedGoalTypes2 containsObject:&unk_285E869A8];

  if (v11)
  {
    v12 = [modelCopy willCompleteExerciseGoalWithBufferPercentage:v6];
  }

  else
  {
    v12 = 1;
  }

  allowedGoalTypes3 = [(FCCCompletionOffTrackConfiguration *)self->_configuration allowedGoalTypes];
  v14 = [allowedGoalTypes3 containsObject:&unk_285E869C0];

  if (v14)
  {
    v15 = [modelCopy willCompleteStandGoalOrItIsTooLateWithBufferPercentage:v6];
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
  eventIdentifier = [(FCCompletionOffTrackEvent *)self eventIdentifier];
  v21 = [v19 initWithEventIdentifier:eventIdentifier goalTypesToDisplay:v16 goalTypeToHighlight:0 expectedGoalValue:0.0];

  return v21;
}

@end