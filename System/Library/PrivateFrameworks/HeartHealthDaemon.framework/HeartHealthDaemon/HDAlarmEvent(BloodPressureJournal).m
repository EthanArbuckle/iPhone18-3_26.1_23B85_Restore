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
  v2 = [a1 eventIdentifier];
  v3 = [v2 componentsSeparatedByString:{@", "}];

  if ([v3 count] <= 2)
  {
    [(HDAlarmEvent(BloodPressureJournal) *)a1 notificationIdentifierString];
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [a1 valueFromKeyValuePair:v4];

  return v5;
}

- (id)journalIdentifierString
{
  v4 = [a1 notificationIdentifierString];
  v5 = [[HDHRBloodPressureJournalNotificationIdentifier alloc] initWithIdentifierString:v4];
  if (!v5)
  {
    [(HDAlarmEvent(BloodPressureJournal) *)a2 journalIdentifierString];
  }

  v6 = [(HDHRBloodPressureJournalNotificationIdentifier *)v5 journalIdentifier];
  v7 = [v6 UUIDString];

  return v7;
}

- (uint64_t)journalType
{
  v2 = [a1 eventIdentifier];
  v3 = [v2 componentsSeparatedByString:{@", "}];

  if ([v3 count] <= 2)
  {
    [(HDAlarmEvent(BloodPressureJournal) *)a1 journalType];
  }

  v4 = [v3 objectAtIndexedSubscript:1];
  v5 = [a1 integerValueFromKeyValuePair:v4];

  return v5;
}

- (uint64_t)isFollowUp
{
  v2 = [a1 eventIdentifier];
  v3 = [v2 componentsSeparatedByString:{@", "}];

  if ([v3 count] <= 2)
  {
    [(HDAlarmEvent(BloodPressureJournal) *)a1 isFollowUp];
  }

  v4 = [v3 objectAtIndexedSubscript:2];
  v5 = [a1 BOOLValueFromKeyValuePair:v4];

  return v5;
}

- (HDHRBloodPressureJournalNotificationMeasurementInfo)measurementInfo
{
  v2 = [a1 eventIdentifier];
  v3 = [v2 componentsSeparatedByString:{@", "}];

  if ([v3 count] >= 6)
  {
    v5 = [v3 objectAtIndexedSubscript:3];
    v6 = [a1 integerValueFromKeyValuePair:v5];

    v7 = [v3 objectAtIndexedSubscript:4];
    v8 = [a1 integerValueFromKeyValuePair:v7];

    v9 = [v3 objectAtIndexedSubscript:5];
    v10 = [a1 integerValueFromKeyValuePair:v9];

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
    [(HDAlarmEvent(BloodPressureJournal) *)a2 valueFromKeyValuePair:a1, v5];
  }

  v7 = [v6 objectAtIndexedSubscript:1];

  return v7;
}

- (uint64_t)BOOLValueFromKeyValuePair:()BloodPressureJournal
{
  v1 = [a1 valueFromKeyValuePair:?];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)integerValueFromKeyValuePair:()BloodPressureJournal
{
  v1 = [a1 valueFromKeyValuePair:?];
  v2 = [v1 integerValue];

  return v2;
}

- (void)notificationIdentifierString
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [a1 eventIdentifier];
  [OUTLINED_FUNCTION_0_13(v2 v3];
}

- (void)journalIdentifierString
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HDRestorableAlarm+BloodPressureJournal.m" lineNumber:97 description:{@"Invalid notificationIdentifier '%@' called with '%s'", a3, "-[HDAlarmEvent(BloodPressureJournal) journalIdentifierString]"}];
}

- (void)journalType
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [a1 eventIdentifier];
  [OUTLINED_FUNCTION_0_13(v2 v3];
}

- (void)isFollowUp
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [a1 eventIdentifier];
  [OUTLINED_FUNCTION_0_13(v2 v3];
}

- (void)valueFromKeyValuePair:()BloodPressureJournal .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HDRestorableAlarm+BloodPressureJournal.m" lineNumber:129 description:{@"Invalid Key Value format '%@' called with '%s'", a3, "-[HDAlarmEvent(BloodPressureJournal) valueFromKeyValuePair:]"}];
}

@end