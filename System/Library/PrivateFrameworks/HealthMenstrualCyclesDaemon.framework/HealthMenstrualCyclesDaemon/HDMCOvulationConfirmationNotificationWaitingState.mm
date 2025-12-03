@interface HDMCOvulationConfirmationNotificationWaitingState
+ (id)notificationStateFromDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (HDMCOvulationConfirmationNotificationWaitingState)initWithFiredDayIndex:(id)index;
- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)index fertileWindowEndDayIndex:(int64_t)dayIndex fireDayIndex:(int64_t)fireDayIndex daysShiftedForFertileWindow:(int64_t)window daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)confirmed;
- (id)dictionaryRepresentation;
@end

@implementation HDMCOvulationConfirmationNotificationWaitingState

- (HDMCOvulationConfirmationNotificationWaitingState)initWithFiredDayIndex:(id)index
{
  indexCopy = index;
  v9.receiver = self;
  v9.super_class = HDMCOvulationConfirmationNotificationWaitingState;
  v6 = [(HDMCOvulationConfirmationNotificationWaitingState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationPreviouslyFiredDayIndex, index);
  }

  return v7;
}

- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)index fertileWindowEndDayIndex:(int64_t)dayIndex fireDayIndex:(int64_t)fireDayIndex daysShiftedForFertileWindow:(int64_t)window daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)confirmed
{
  notificationPreviouslyFiredDayIndex = [(HDMCOvulationConfirmationNotificationWaitingState *)self notificationPreviouslyFiredDayIndex];
  if (notificationPreviouslyFiredDayIndex && (v14 = notificationPreviouslyFiredDayIndex, -[HDMCOvulationConfirmationNotificationWaitingState notificationPreviouslyFiredDayIndex](self, "notificationPreviouslyFiredDayIndex"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 integerValue], v15, v14, v16 > index))
  {
    v17 = [HDMCOvulationConfirmationNotificationFiredState alloc];
    notificationPreviouslyFiredDayIndex2 = [(HDMCOvulationConfirmationNotificationWaitingState *)self notificationPreviouslyFiredDayIndex];
    v19 = -[HDMCOvulationConfirmationNotificationFiredState initWithFireDayIndex:](v17, "initWithFireDayIndex:", [notificationPreviouslyFiredDayIndex2 integerValue]);
  }

  else
  {
    v21.receiver = self;
    v21.super_class = HDMCOvulationConfirmationNotificationWaitingState;
    v19 = [(HDMCOvulationConfirmationNotificationStateMachineState *)&v21 computeNewStateFromCorrelatingPeriodStartDayIndex:index fertileWindowEndDayIndex:dayIndex fireDayIndex:fireDayIndex daysShiftedForFertileWindow:window daysWithWristTemp45DaysBeforeOvulationConfirmed:confirmed];
  }

  return v19;
}

+ (id)notificationStateFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [self alloc];
  v6 = [representationCopy objectForKeyedSubscript:@"NotificationPreviouslyFiredDayIndex"];

  v7 = [v5 initWithFiredDayIndex:v6];

  return v7;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = HDMCOvulationConfirmationNotificationWaitingState;
  dictionaryRepresentation = [(HDMCOvulationConfirmationNotificationStateMachineState *)&v7 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  notificationPreviouslyFiredDayIndex = [(HDMCOvulationConfirmationNotificationWaitingState *)self notificationPreviouslyFiredDayIndex];
  [v4 setObject:notificationPreviouslyFiredDayIndex forKeyedSubscript:@"NotificationPreviouslyFiredDayIndex"];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = HDMCOvulationConfirmationNotificationWaitingState;
  if (![(HDMCOvulationConfirmationNotificationStateMachineState *)&v9 isEqual:equalCopy])
  {
    goto LABEL_5;
  }

  notificationPreviouslyFiredDayIndex = self->_notificationPreviouslyFiredDayIndex;
  v6 = equalCopy[1];
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