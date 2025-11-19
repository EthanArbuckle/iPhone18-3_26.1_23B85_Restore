@interface FCAlmostThereEvent
- (BOOL)_userWillCompleteGoalByEndOfDay:(int64_t)a3 model:(id)a4;
- (BOOL)shouldFireWithTypicalDayModel:(id)a3 evaluationDelegate:(id)a4;
- (FCAlmostThereEvent)initWithConfiguration:(id)a3;
- (double)minimumDayDuration;
- (id)goalProgressContentForModel:(id)a3;
- (id)nextFireDateWithModel:(id)a3;
@end

@implementation FCAlmostThereEvent

- (FCAlmostThereEvent)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCAlmostThereEvent;
  v6 = [(FCAlmostThereEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (double)minimumDayDuration
{
  v2 = [(FCCAlmostThereConfiguration *)self->_configuration timeOfDayRule];
  [v2 minimumDayDuration];
  v4 = v3;

  return v4;
}

- (BOOL)shouldFireWithTypicalDayModel:(id)a3 evaluationDelegate:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 currentExperienceType] != 1)
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

  v8 = [(FCCAlmostThereConfiguration *)self->_configuration coalescingRules];
  v9 = FCEventCoalescedWithRules(v8, v7);

  if (v9)
  {
LABEL_7:
    LOBYTE(v13) = 0;
    goto LABEL_8;
  }

  v10 = ![(FCAlmostThereEvent *)self _userWillCompleteGoalByEndOfDay:[(FCCAlmostThereConfiguration *)self->_configuration goalType] model:v6];
  if ([(FCCAlmostThereConfiguration *)self->_configuration goalType]== 1)
  {
    [v6 currentMoveGoalPercentage];
  }

  else
  {
    [v6 currentExerciseGoalPercentage];
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
    v23 = [(FCCAlmostThereConfiguration *)configuration goalType];
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

- (id)nextFireDateWithModel:(id)a3
{
  configuration = self->_configuration;
  v4 = a3;
  v5 = [(FCCAlmostThereConfiguration *)configuration timeOfDayRule];
  v6 = FCFireDateForTimeOfDayRule(v5, v4);

  return v6;
}

- (id)goalProgressContentForModel:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D09CB8]);
  v5 = [(FCAlmostThereEvent *)self eventIdentifier];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FCCAlmostThereConfiguration goalType](self->_configuration, "goalType")}];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [v4 initWithEventIdentifier:v5 goalTypesToDisplay:v7 goalTypeToHighlight:-[FCCAlmostThereConfiguration goalType](self->_configuration expectedGoalValue:{"goalType"), 0.0}];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_userWillCompleteGoalByEndOfDay:(int64_t)a3 model:(id)a4
{
  v6 = a4;
  [(FCCAlmostThereConfiguration *)self->_configuration goalBufferPercentage];
  v8 = v7;
  if (a3 == 2)
  {
    [v6 currentExerciseGoalPercentage];
    if (v11 < 1.0)
    {
      v10 = [v6 willCompleteExerciseGoalWithBufferPercentage:v8];
      goto LABEL_7;
    }

LABEL_8:
    v12 = 1;
    goto LABEL_10;
  }

  if (a3 != 1)
  {
    v12 = 0;
    goto LABEL_10;
  }

  [v6 currentMoveGoalPercentage];
  if (v9 >= 1.0)
  {
    goto LABEL_8;
  }

  v10 = [v6 willCompleteMoveGoalWithBufferPercentage:v8];
LABEL_7:
  v12 = v10;
LABEL_10:

  return v12;
}

@end