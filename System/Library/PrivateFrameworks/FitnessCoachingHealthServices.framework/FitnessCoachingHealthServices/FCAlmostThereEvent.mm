@interface FCAlmostThereEvent
- (BOOL)_userWillCompleteGoalByEndOfDay:(int64_t)day model:(id)model;
- (BOOL)shouldFireWithTypicalDayModel:(id)model evaluationDelegate:(id)delegate;
- (FCAlmostThereEvent)initWithConfiguration:(id)configuration;
- (double)minimumDayDuration;
- (id)goalProgressContentForModel:(id)model;
- (id)nextFireDateWithModel:(id)model;
@end

@implementation FCAlmostThereEvent

- (FCAlmostThereEvent)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = FCAlmostThereEvent;
  v6 = [(FCAlmostThereEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (double)minimumDayDuration
{
  timeOfDayRule = [(FCCAlmostThereConfiguration *)self->_configuration timeOfDayRule];
  [timeOfDayRule minimumDayDuration];
  v4 = v3;

  return v4;
}

- (BOOL)shouldFireWithTypicalDayModel:(id)model evaluationDelegate:(id)delegate
{
  v30 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  delegateCopy = delegate;
  if ([delegateCopy currentExperienceType] != 1)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_24B55B000, v12, OS_LOG_TYPE_DEFAULT, "Almost there event should not fire, fitness junior user", &v22, 2u);
    }

    goto LABEL_7;
  }

  coalescingRules = [(FCCAlmostThereConfiguration *)self->_configuration coalescingRules];
  v9 = FCEventCoalescedWithRules(coalescingRules, delegateCopy);

  if (v9)
  {
LABEL_7:
    LOBYTE(v13) = 0;
    goto LABEL_8;
  }

  v10 = ![(FCAlmostThereEvent *)self _userWillCompleteGoalByEndOfDay:[(FCCAlmostThereConfiguration *)self->_configuration goalType] model:modelCopy];
  if ([(FCCAlmostThereConfiguration *)self->_configuration goalType]== 1)
  {
    [modelCopy currentMoveGoalPercentage];
  }

  else
  {
    [modelCopy currentExerciseGoalPercentage];
  }

  v16 = v11;
  [(FCCAlmostThereConfiguration *)self->_configuration minimumPercentageComplete];
  v18 = v17;
  if (v16 >= v17)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  _HKInitializeLogging();
  v19 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    configuration = self->_configuration;
    v21 = v19;
    v22 = 134218752;
    goalType = [(FCCAlmostThereConfiguration *)configuration goalType];
    v24 = 1024;
    v25 = v10;
    v26 = 1024;
    v27 = v16 >= v18;
    v28 = 1024;
    v29 = v13;
    _os_log_impl(&dword_24B55B000, v21, OS_LOG_TYPE_DEFAULT, "AlmostThere reason evaluating whether to fire for goal type %lu, willEndDayWithGoalIncomplete: %{BOOL}d, hasCrossedAlmostThereGoalThreshold: %{BOOL}d, result: %{BOOL}d", &v22, 0x1Eu);
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)nextFireDateWithModel:(id)model
{
  configuration = self->_configuration;
  modelCopy = model;
  timeOfDayRule = [(FCCAlmostThereConfiguration *)configuration timeOfDayRule];
  v6 = FCFireDateForTimeOfDayRule(timeOfDayRule, modelCopy);

  return v6;
}

- (id)goalProgressContentForModel:(id)model
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D09CB8]);
  eventIdentifier = [(FCAlmostThereEvent *)self eventIdentifier];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FCCAlmostThereConfiguration goalType](self->_configuration, "goalType")}];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [v4 initWithEventIdentifier:eventIdentifier goalTypesToDisplay:v7 goalTypeToHighlight:-[FCCAlmostThereConfiguration goalType](self->_configuration expectedGoalValue:{"goalType"), 0.0}];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_userWillCompleteGoalByEndOfDay:(int64_t)day model:(id)model
{
  modelCopy = model;
  [(FCCAlmostThereConfiguration *)self->_configuration goalBufferPercentage];
  v8 = v7;
  if (day == 2)
  {
    [modelCopy currentExerciseGoalPercentage];
    if (v11 < 1.0)
    {
      v10 = [modelCopy willCompleteExerciseGoalWithBufferPercentage:v8];
      goto LABEL_7;
    }

LABEL_8:
    v12 = 1;
    goto LABEL_10;
  }

  if (day != 1)
  {
    v12 = 0;
    goto LABEL_10;
  }

  [modelCopy currentMoveGoalPercentage];
  if (v9 >= 1.0)
  {
    goto LABEL_8;
  }

  v10 = [modelCopy willCompleteMoveGoalWithBufferPercentage:v8];
LABEL_7:
  v12 = v10;
LABEL_10:

  return v12;
}

@end