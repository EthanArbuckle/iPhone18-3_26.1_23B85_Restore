@interface HKMedicationLogMetric
- (HKMedicationLogMetric)initWithActions:(int64_t)actions provenance:(int64_t)provenance context:(int64_t)context loggingMultipleMeds:(BOOL)meds hoursAgoLoggedForMax:(id)max hoursAgoLoggedForMin:(id)min hoursFromScheduledTimeLoggedMax:(id)loggedMax hoursFromScheduledTimeLoggedMin:(id)self0 hoursFromScheduledToTakenOrSkippedMax:(id)self1 hoursFromScheduledToTakenOrSkippedMin:(id)self2 isPartiallyLoggingScheduledMeds:(id)self3 dataSource:(id)self4;
- (NSDictionary)eventPayload;
- (id)actionsPayload;
- (id)description;
- (id)provenanceValue;
@end

@implementation HKMedicationLogMetric

- (HKMedicationLogMetric)initWithActions:(int64_t)actions provenance:(int64_t)provenance context:(int64_t)context loggingMultipleMeds:(BOOL)meds hoursAgoLoggedForMax:(id)max hoursAgoLoggedForMin:(id)min hoursFromScheduledTimeLoggedMax:(id)loggedMax hoursFromScheduledTimeLoggedMin:(id)self0 hoursFromScheduledToTakenOrSkippedMax:(id)self1 hoursFromScheduledToTakenOrSkippedMin:(id)self2 isPartiallyLoggingScheduledMeds:(id)self3 dataSource:(id)self4
{
  maxCopy = max;
  loggedMaxCopy = loggedMax;
  loggedMinCopy = loggedMin;
  skippedMaxCopy = skippedMax;
  skippedMinCopy = skippedMin;
  scheduledMedsCopy = scheduledMeds;
  sourceCopy = source;
  v32.receiver = self;
  v32.super_class = HKMedicationLogMetric;
  v19 = [(HKMedicationLogMetric *)&v32 init];
  v20 = v19;
  if (v19)
  {
    v19->_actions = actions;
    v19->_provenance = provenance;
    v19->_context = context;
    v19->_isLoggingMultipleMeds = meds;
    objc_storeStrong(&v19->_hoursAgoLoggedForMax, max);
    objc_storeStrong(&v20->_hoursAgoLoggedForMin, max);
    objc_storeStrong(&v20->_hoursFromScheduledTimeLoggedMax, loggedMax);
    objc_storeStrong(&v20->_hoursFromScheduledTimeLoggedMin, loggedMin);
    objc_storeStrong(&v20->_hoursFromScheduledToTakenOrSkippedMax, skippedMax);
    objc_storeStrong(&v20->_hoursFromScheduledToTakenOrSkippedMin, skippedMin);
    objc_storeStrong(&v20->_isPartiallyLoggingScheduledMeds, scheduledMeds);
    v21 = [[HKMedicationAnalyticsGenericFieldsProvider alloc] initWithDataSource:sourceCopy];
    genericDataProvider = v20->_genericDataProvider;
    v20->_genericDataProvider = v21;
  }

  return v20;
}

- (NSDictionary)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  actionsPayload = [(HKMedicationLogMetric *)self actionsPayload];
  [v3 addEntriesFromDictionary:actionsPayload];

  contextValue = [(HKMedicationLogMetric *)self contextValue];

  if (contextValue)
  {
    contextValue2 = [(HKMedicationLogMetric *)self contextValue];
    [v3 setObject:contextValue2 forKeyedSubscript:@"context"];
  }

  provenanceValue = [(HKMedicationLogMetric *)self provenanceValue];

  if (provenanceValue)
  {
    provenanceValue2 = [(HKMedicationLogMetric *)self provenanceValue];
    [v3 setObject:provenanceValue2 forKeyedSubscript:@"provenance"];
  }

  isPartiallyLoggingScheduledMeds = self->_isPartiallyLoggingScheduledMeds;
  if (isPartiallyLoggingScheduledMeds)
  {
    [v3 setObject:isPartiallyLoggingScheduledMeds forKeyedSubscript:@"medsPartiallyLogged"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_isLoggingMultipleMeds];
  [v3 setObject:v10 forKeyedSubscript:@"isLoggingMultipleMeds"];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_hoursAgoLoggedForMax];
  [v3 setObject:v11 forKeyedSubscript:@"hoursAgoLoggedForMax"];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_hoursAgoLoggedForMin];
  [v3 setObject:v12 forKeyedSubscript:@"hoursAgoLoggedForMin"];

  if (self->_hoursFromScheduledTimeLoggedMax)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_hoursFromScheduledTimeLoggedMax];
    [v3 setObject:v13 forKeyedSubscript:@"hoursFromScheduledTimeLoggedMax"];
  }

  if (self->_hoursFromScheduledTimeLoggedMin)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_hoursFromScheduledTimeLoggedMin];
    [v3 setObject:v14 forKeyedSubscript:@"hoursFromScheduledTimeLoggedMin"];
  }

  if (self->_hoursFromScheduledToTakenOrSkippedMax)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_hoursFromScheduledToTakenOrSkippedMax];
    [v3 setObject:v15 forKeyedSubscript:@"hoursFromScheduledToTakenOrSkippedMax"];
  }

  if (self->_hoursFromScheduledToTakenOrSkippedMin)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_hoursFromScheduledToTakenOrSkippedMin];
    [v3 setObject:v16 forKeyedSubscript:@"hoursFromScheduledToTakenOrSkippedMin"];
  }

  biologicalSex = [(HKMedicationAnalyticsGenericFieldsProvider *)self->_genericDataProvider biologicalSex];
  if (biologicalSex)
  {
    [v3 setObject:biologicalSex forKeyedSubscript:@"biologicalSex"];
  }

  genericDataProvider = self->_genericDataProvider;
  date = [MEMORY[0x277CBEAA8] date];
  v20 = [(HKMedicationAnalyticsGenericFieldsProvider *)genericDataProvider bucketedUserAgeForCurrentDate:date];
  [v3 setObject:v20 forKeyedSubscript:@"age"];

  v21 = [v3 copy];

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  eventPayload = [(HKMedicationLogMetric *)self eventPayload];
  v6 = [v3 stringWithFormat:@"%@:%p payload: %@", v4, self, eventPayload];

  return v6;
}

- (id)provenanceValue
{
  v2 = self->_provenance - 1;
  if (v2 < 4)
  {
    return off_2796CA0E8[v2];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKMedicationLogMetric.m" lineNumber:150 description:{@"Invalid provenance for HKMedicationLoggingProvenance %ld", self->_provenance}];

  return 0;
}

- (id)actionsPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v3;
  v5 = MEMORY[0x277CBEC38];
  v6 = MEMORY[0x277CBEC28];
  if (self->_actions)
  {
    v7 = MEMORY[0x277CBEC38];
  }

  else
  {
    v7 = MEMORY[0x277CBEC28];
  }

  [v3 setObject:v7 forKeyedSubscript:@"actionDidFinishLogging"];
  if ((self->_actions & 4) != 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  [v4 setObject:v8 forKeyedSubscript:@"actionDidCancelLogging"];
  if ((self->_actions & 8) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  [v4 setObject:v9 forKeyedSubscript:@"actionDidChangeDose"];
  if ((self->_actions & 0x10) != 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  [v4 setObject:v10 forKeyedSubscript:@"actionDidChangeTime"];
  if ((self->_actions & 0x20) != 0)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  [v4 setObject:v11 forKeyedSubscript:@"actionDidMarkAllAsTaken"];
  if ((self->_actions & 0x40) != 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  [v4 setObject:v12 forKeyedSubscript:@"actionDidSkipMedication"];
  if ((self->_actions & 0x100) != 0)
  {
    v13 = v5;
  }

  else
  {
    v13 = v6;
  }

  [v4 setObject:v13 forKeyedSubscript:@"actionDidEditDose"];
  if ((self->_actions & 0x80) != 0)
  {
    v14 = v5;
  }

  else
  {
    v14 = v6;
  }

  [v4 setObject:v14 forKeyedSubscript:@"actionDidEditTime"];
  if ((self->_actions & 0x200) != 0)
  {
    v15 = v5;
  }

  else
  {
    v15 = v6;
  }

  [v4 setObject:v15 forKeyedSubscript:@"actionDidEditToSkip"];
  if ((self->_actions & 0x400) != 0)
  {
    v16 = v5;
  }

  else
  {
    v16 = v6;
  }

  [v4 setObject:v16 forKeyedSubscript:@"actionDidEditToTake"];
  if ((self->_actions & 0x800) != 0)
  {
    v17 = v5;
  }

  else
  {
    v17 = v6;
  }

  [v4 setObject:v17 forKeyedSubscript:@"actionDidUnlog"];

  return v4;
}

@end