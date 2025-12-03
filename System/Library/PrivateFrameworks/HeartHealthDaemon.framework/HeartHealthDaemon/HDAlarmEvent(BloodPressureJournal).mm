@interface HDAlarmEvent(BloodPressureJournal)
- (HDHRBloodPressureJournalNotificationMeasurementInfo)measurementInfo;
- (id)journalIdentifierString;
- (id)notificationIdentifierString;
- (id)valueFromKeyValuePair:()BloodPressureJournal;
- (uint64_t)BOOLValueFromKeyValuePair:()BloodPressureJournal;
- (uint64_t)integerValueFromKeyValuePair:()BloodPressureJournal;
- (uint64_t)isFollowUp;
- (uint64_t)journalType;
- (void)isFollowUp;
- (void)journalIdentifierString;
- (void)journalType;
- (void)notificationIdentifierString;
@end

@implementation HDAlarmEvent(BloodPressureJournal)

- (id)notificationIdentifierString
{
  eventIdentifier = [self eventIdentifier];
  v3 = [eventIdentifier componentsSeparatedByString:{@", "}];

  if ([v3 count] <= 2)
  {
    [(HDAlarmEvent(BloodPressureJournal) *)self notificationIdentifierString];
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [self valueFromKeyValuePair:v4];

  return v5;
}

- (id)journalIdentifierString
{
  notificationIdentifierString = [self notificationIdentifierString];
  v5 = [[HDHRBloodPressureJournalNotificationIdentifier alloc] initWithIdentifierString:notificationIdentifierString];
  if (!v5)
  {
    [(HDAlarmEvent(BloodPressureJournal) *)a2 journalIdentifierString];
  }

  journalIdentifier = [(HDHRBloodPressureJournalNotificationIdentifier *)v5 journalIdentifier];
  uUIDString = [journalIdentifier UUIDString];

  return uUIDString;
}

- (uint64_t)journalType
{
  eventIdentifier = [self eventIdentifier];
  v3 = [eventIdentifier componentsSeparatedByString:{@", "}];

  if ([v3 count] <= 2)
  {
    [(HDAlarmEvent(BloodPressureJournal) *)self journalType];
  }

  v4 = [v3 objectAtIndexedSubscript:1];
  v5 = [self integerValueFromKeyValuePair:v4];

  return v5;
}

- (uint64_t)isFollowUp
{
  eventIdentifier = [self eventIdentifier];
  v3 = [eventIdentifier componentsSeparatedByString:{@", "}];

  if ([v3 count] <= 2)
  {
    [(HDAlarmEvent(BloodPressureJournal) *)self isFollowUp];
  }

  v4 = [v3 objectAtIndexedSubscript:2];
  v5 = [self BOOLValueFromKeyValuePair:v4];

  return v5;
}

- (HDHRBloodPressureJournalNotificationMeasurementInfo)measurementInfo
{
  eventIdentifier = [self eventIdentifier];
  v3 = [eventIdentifier componentsSeparatedByString:{@", "}];

  if ([v3 count] >= 6)
  {
    v5 = [v3 objectAtIndexedSubscript:3];
    v6 = [self integerValueFromKeyValuePair:v5];

    v7 = [v3 objectAtIndexedSubscript:4];
    v8 = [self integerValueFromKeyValuePair:v7];

    v9 = [v3 objectAtIndexedSubscript:5];
    v10 = [self integerValueFromKeyValuePair:v9];

    v4 = [[HDHRBloodPressureJournalNotificationMeasurementInfo alloc] initWithMeasurementIndex:v6 measurementCount:v8 measurementWindowType:v10];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)valueFromKeyValuePair:()BloodPressureJournal
{
  v5 = a3;
  v6 = [v5 componentsSeparatedByString:@":"];
  if ([v6 count] != 2)
  {
    [(HDAlarmEvent(BloodPressureJournal) *)a2 valueFromKeyValuePair:self, v5];
  }

  v7 = [v6 objectAtIndexedSubscript:1];

  return v7;
}

- (uint64_t)BOOLValueFromKeyValuePair:()BloodPressureJournal
{
  v1 = [self valueFromKeyValuePair:?];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)integerValueFromKeyValuePair:()BloodPressureJournal
{
  v1 = [self valueFromKeyValuePair:?];
  integerValue = [v1 integerValue];

  return integerValue;
}

- (void)notificationIdentifierString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  eventIdentifier = [self eventIdentifier];
  [OUTLINED_FUNCTION_0_13(eventIdentifier v3];
}

- (void)journalIdentifierString
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HDRestorableAlarm+BloodPressureJournal.m" lineNumber:97 description:{@"Invalid notificationIdentifier '%@' called with '%s'", a3, "-[HDAlarmEvent(BloodPressureJournal) journalIdentifierString]"}];
}

- (void)journalType
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  eventIdentifier = [self eventIdentifier];
  [OUTLINED_FUNCTION_0_13(eventIdentifier v3];
}

- (void)isFollowUp
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  eventIdentifier = [self eventIdentifier];
  [OUTLINED_FUNCTION_0_13(eventIdentifier v3];
}

- (void)valueFromKeyValuePair:()BloodPressureJournal .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HDRestorableAlarm+BloodPressureJournal.m" lineNumber:129 description:{@"Invalid Key Value format '%@' called with '%s'", a3, "-[HDAlarmEvent(BloodPressureJournal) valueFromKeyValuePair:]"}];
}

@end