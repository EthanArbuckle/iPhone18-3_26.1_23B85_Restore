@interface HDMCOvulationConfirmationNotificationWaitingState
+ (id)notificationStateFromDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HDMCOvulationConfirmationNotificationWaitingState)initWithFiredDayIndex:(id)a3;
- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)a3 fertileWindowEndDayIndex:(int64_t)a4 fireDayIndex:(int64_t)a5 daysShiftedForFertileWindow:(int64_t)a6 daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)a7;
- (id)dictionaryRepresentation;
@end

@implementation HDMCOvulationConfirmationNotificationWaitingState

- (HDMCOvulationConfirmationNotificationWaitingState)initWithFiredDayIndex:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDMCOvulationConfirmationNotificationWaitingState;
  v6 = [(HDMCOvulationConfirmationNotificationWaitingState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationPreviouslyFiredDayIndex, a3);
  }

  return v7;
}

- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)a3 fertileWindowEndDayIndex:(int64_t)a4 fireDayIndex:(int64_t)a5 daysShiftedForFertileWindow:(int64_t)a6 daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)a7
{
  v13 = [(HDMCOvulationConfirmationNotificationWaitingState *)self notificationPreviouslyFiredDayIndex];
  if (v13 && (v14 = v13, -[HDMCOvulationConfirmationNotificationWaitingState notificationPreviouslyFiredDayIndex](self, "notificationPreviouslyFiredDayIndex"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 integerValue], v15, v14, v16 > a3))
  {
    v17 = [HDMCOvulationConfirmationNotificationFiredState alloc];
    v18 = [(HDMCOvulationConfirmationNotificationWaitingState *)self notificationPreviouslyFiredDayIndex];
    v19 = -[HDMCOvulationConfirmationNotificationFiredState initWithFireDayIndex:](v17, "initWithFireDayIndex:", [v18 integerValue]);
  }

  else
  {
    v21.receiver = self;
    v21.super_class = HDMCOvulationConfirmationNotificationWaitingState;
    v19 = [(HDMCOvulationConfirmationNotificationStateMachineState *)&v21 computeNewStateFromCorrelatingPeriodStartDayIndex:a3 fertileWindowEndDayIndex:a4 fireDayIndex:a5 daysShiftedForFertileWindow:a6 daysWithWristTemp45DaysBeforeOvulationConfirmed:a7];
  }

  return v19;
}

+ (id)notificationStateFromDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 objectForKeyedSubscript:@"NotificationPreviouslyFiredDayIndex"];

  v7 = [v5 initWithFiredDayIndex:v6];

  return v7;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = HDMCOvulationConfirmationNotificationWaitingState;
  v3 = [(HDMCOvulationConfirmationNotificationStateMachineState *)&v7 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(HDMCOvulationConfirmationNotificationWaitingState *)self notificationPreviouslyFiredDayIndex];
  [v4 setObject:v5 forKeyedSubscript:@"NotificationPreviouslyFiredDayIndex"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDMCOvulationConfirmationNotificationWaitingState;
  if (![(HDMCOvulationConfirmationNotificationStateMachineState *)&v9 isEqual:v4])
  {
    goto LABEL_5;
  }

  notificationPreviouslyFiredDayIndex = self->_notificationPreviouslyFiredDayIndex;
  v6 = v4[1];
  if (notificationPreviouslyFiredDayIndex == v6)
  {
    v7 = 1;
    goto LABEL_7;
  }

  if (v6)
  {
    v7 = [(NSNumber *)notificationPreviouslyFiredDayIndex isEqual:?];
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

LABEL_7:

  return v7;
}

@end