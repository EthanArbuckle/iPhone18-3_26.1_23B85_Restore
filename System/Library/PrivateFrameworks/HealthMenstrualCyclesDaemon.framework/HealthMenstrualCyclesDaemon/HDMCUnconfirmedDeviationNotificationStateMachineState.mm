@interface HDMCUnconfirmedDeviationNotificationStateMachineState
+ (id)stateFromDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (HDMCUnconfirmedDeviationNotificationStateMachineState)initWithFireDayIndex:(id)index;
- (id)computeNewStateFromAnalysis:(id)analysis dismissalDayIndex:(id)index currentDate:(id)date unconfirmedDeviationNotificationTimeOfDay:(id)day;
- (id)computeNewStateFromMaxEnd:(int64_t)end dismissalDayIndex:(id)index scheduledFireDayIndex:(int64_t)dayIndex;
- (id)computeNewStateFromUnconfirmedDeviations:(id)deviations dismissalDayIndex:(id)index scheduledFireDayIndex:(int64_t)dayIndex;
- (id)computeStateFromNoUnconfirmedDeviations;
- (id)dictionaryRepresentation;
- (int64_t)stateType;
@end

@implementation HDMCUnconfirmedDeviationNotificationStateMachineState

- (HDMCUnconfirmedDeviationNotificationStateMachineState)initWithFireDayIndex:(id)index
{
  indexCopy = index;
  v9.receiver = self;
  v9.super_class = HDMCUnconfirmedDeviationNotificationStateMachineState;
  v6 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fireDayIndex, index);
  }

  return v7;
}

+ (id)stateFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKeyedSubscript:@"StateType"];
  integerValue = [v4 integerValue];

  if (integerValue == 1)
  {
    v6 = off_278659B30;
LABEL_5:
    v7 = [(__objc2_class *)*v6 notificationStateFromDictionaryRepresentation:representationCopy];
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (integerValue == 2)
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

  fireDayIndex = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)self fireDayIndex];
  [v3 setObject:fireDayIndex forKeyedSubscript:@"FireDayIndex"];

  v6 = [v3 copy];

  return v6;
}

- (id)computeStateFromNoUnconfirmedDeviations
{
  v2 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)[HDMCUnconfirmedDeviationNotificationWaitingState alloc] initWithFireDayIndex:0];

  return v2;
}

- (id)computeNewStateFromUnconfirmedDeviations:(id)deviations dismissalDayIndex:(id)index scheduledFireDayIndex:(int64_t)dayIndex
{
  v32 = *MEMORY[0x277D85DE8];
  deviationsCopy = deviations;
  indexCopy = index;
  if ([deviationsCopy count])
  {
    dayIndexCopy = dayIndex;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = deviationsCopy;
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
          days = [v16 days];
          v19 = v18 + days - 1;
          if (v18 <= 0)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v19 > v13)
          {
            days2 = [v16 days];
            if (v21 <= 0)
            {
              v13 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v13 = v21 + days2 - 1;
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

    computeStateFromNoUnconfirmedDeviations = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)self computeNewStateFromMaxEnd:v13 dismissalDayIndex:indexCopy scheduledFireDayIndex:dayIndexCopy];
  }

  else
  {
    computeStateFromNoUnconfirmedDeviations = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)self computeStateFromNoUnconfirmedDeviations];
  }

  v23 = computeStateFromNoUnconfirmedDeviations;

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)computeNewStateFromMaxEnd:(int64_t)end dismissalDayIndex:(id)index scheduledFireDayIndex:(int64_t)dayIndex
{
  v6 = [HDMCUnconfirmedDeviationNotificationScheduledState alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:dayIndex];
  v8 = [(HDMCUnconfirmedDeviationNotificationScheduledState *)v6 initWithFireDayIndex:v7];

  return v8;
}

- (id)computeNewStateFromAnalysis:(id)analysis dismissalDayIndex:(id)index currentDate:(id)date unconfirmedDeviationNotificationTimeOfDay:(id)day
{
  v10 = MEMORY[0x277CBEA80];
  dayCopy = day;
  dateCopy = date;
  indexCopy = index;
  analysisCopy = analysis;
  hk_gregorianCalendar = [v10 hk_gregorianCalendar];
  v16 = [hk_gregorianCalendar hkmc_nextDateAfterDate:dateCopy matchingHourComponents:dayCopy];

  v17 = [v16 hk_dayIndexWithCalendar:hk_gregorianCalendar];
  deviations = [analysisCopy deviations];

  v19 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)self computeNewStateFromUnconfirmedDeviations:deviations dismissalDayIndex:indexCopy scheduledFireDayIndex:v17];

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[HDMCUnconfirmedDeviationNotificationStateMachineState stateType](self, "stateType"), v5 == [equalCopy stateType]))
  {
    fireDayIndex = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)self fireDayIndex];
    integerValue = [fireDayIndex integerValue];
    fireDayIndex2 = [equalCopy fireDayIndex];
    v9 = integerValue == [fireDayIndex2 integerValue];
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