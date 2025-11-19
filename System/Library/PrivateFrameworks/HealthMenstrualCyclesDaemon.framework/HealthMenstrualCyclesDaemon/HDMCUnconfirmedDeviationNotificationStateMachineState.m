@interface HDMCUnconfirmedDeviationNotificationStateMachineState
+ (id)stateFromDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HDMCUnconfirmedDeviationNotificationStateMachineState)initWithFireDayIndex:(id)a3;
- (id)computeNewStateFromAnalysis:(id)a3 dismissalDayIndex:(id)a4 currentDate:(id)a5 unconfirmedDeviationNotificationTimeOfDay:(id)a6;
- (id)computeNewStateFromMaxEnd:(int64_t)a3 dismissalDayIndex:(id)a4 scheduledFireDayIndex:(int64_t)a5;
- (id)computeNewStateFromUnconfirmedDeviations:(id)a3 dismissalDayIndex:(id)a4 scheduledFireDayIndex:(int64_t)a5;
- (id)computeStateFromNoUnconfirmedDeviations;
- (id)dictionaryRepresentation;
- (int64_t)stateType;
@end

@implementation HDMCUnconfirmedDeviationNotificationStateMachineState

- (HDMCUnconfirmedDeviationNotificationStateMachineState)initWithFireDayIndex:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDMCUnconfirmedDeviationNotificationStateMachineState;
  v6 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fireDayIndex, a3);
  }

  return v7;
}

+ (id)stateFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"StateType"];
  v5 = [v4 integerValue];

  if (v5 == 1)
  {
    v6 = off_278659B30;
LABEL_5:
    v7 = [(__objc2_class *)*v6 notificationStateFromDictionaryRepresentation:v3];
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v5 == 2)
  {
    v6 = off_278659B20;
    goto LABEL_5;
  }

LABEL_6:
  v7 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)[HDMCUnconfirmedDeviationNotificationWaitingState alloc] initWithFireDayIndex:0];
LABEL_7:

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCUnconfirmedDeviationNotificationStateMachineState stateType](self, "stateType")}];
  [v3 setObject:v4 forKeyedSubscript:@"StateType"];

  v5 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)self fireDayIndex];
  [v3 setObject:v5 forKeyedSubscript:@"FireDayIndex"];

  v6 = [v3 copy];

  return v6;
}

- (id)computeStateFromNoUnconfirmedDeviations
{
  v2 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)[HDMCUnconfirmedDeviationNotificationWaitingState alloc] initWithFireDayIndex:0];

  return v2;
}

- (id)computeNewStateFromUnconfirmedDeviations:(id)a3 dismissalDayIndex:(id)a4 scheduledFireDayIndex:(int64_t)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v26 = a5;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [v16 days];
          v19 = v18 + v17 - 1;
          if (v18 <= 0)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v19 > v13)
          {
            v20 = [v16 days];
            if (v21 <= 0)
            {
              v13 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v13 = v21 + v20 - 1;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v22 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)self computeNewStateFromMaxEnd:v13 dismissalDayIndex:v9 scheduledFireDayIndex:v26];
  }

  else
  {
    v22 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)self computeStateFromNoUnconfirmedDeviations];
  }

  v23 = v22;

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)computeNewStateFromMaxEnd:(int64_t)a3 dismissalDayIndex:(id)a4 scheduledFireDayIndex:(int64_t)a5
{
  v6 = [HDMCUnconfirmedDeviationNotificationScheduledState alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v8 = [(HDMCUnconfirmedDeviationNotificationScheduledState *)v6 initWithFireDayIndex:v7];

  return v8;
}

- (id)computeNewStateFromAnalysis:(id)a3 dismissalDayIndex:(id)a4 currentDate:(id)a5 unconfirmedDeviationNotificationTimeOfDay:(id)a6
{
  v10 = MEMORY[0x277CBEA80];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 hk_gregorianCalendar];
  v16 = [v15 hkmc_nextDateAfterDate:v12 matchingHourComponents:v11];

  v17 = [v16 hk_dayIndexWithCalendar:v15];
  v18 = [v14 deviations];

  v19 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)self computeNewStateFromUnconfirmedDeviations:v18 dismissalDayIndex:v13 scheduledFireDayIndex:v17];

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[HDMCUnconfirmedDeviationNotificationStateMachineState stateType](self, "stateType"), v5 == [v4 stateType]))
  {
    v6 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)self fireDayIndex];
    v7 = [v6 integerValue];
    v8 = [v4 fireDayIndex];
    v9 = v7 == [v8 integerValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)stateType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 1;
}

@end