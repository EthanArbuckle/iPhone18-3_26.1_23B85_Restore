@interface HKHRBloodPressureJournalNotificationAnalyticsEvent
- (HKHRBloodPressureJournalNotificationAnalyticsEvent)initWithAction:(unint64_t)action latestActiveJournal:(id)journal windowType:(id)type;
- (id)actionValue;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)windowValue:(unint64_t)value;
- (unint64_t)windowType;
@end

@implementation HKHRBloodPressureJournalNotificationAnalyticsEvent

- (HKHRBloodPressureJournalNotificationAnalyticsEvent)initWithAction:(unint64_t)action latestActiveJournal:(id)journal windowType:(id)type
{
  journalCopy = journal;
  typeCopy = type;
  v16.receiver = self;
  v16.super_class = HKHRBloodPressureJournalNotificationAnalyticsEvent;
  v11 = [(HKHRBloodPressureJournalNotificationAnalyticsEvent *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_action = action;
    objc_storeStrong(&v11->_activeJournal, journal);
    v13 = [[HKHRBloodPressureJournalAnalyticsUtilities alloc] initWithLatestActiveJournal:journalCopy];
    commonUtilities = v12->_commonUtilities;
    v12->_commonUtilities = v13;

    objc_storeStrong(&v12->_windowType, type);
  }

  return v12;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  healthDataSource = [sourceCopy healthDataSource];
  v28 = 0;
  v8 = [healthDataSource biologicalSexWithError:&v28];
  v9 = v28;

  if (v9)
  {
    _HKInitializeLogging();
    v10 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HKHRBloodPressureJournalNotificationAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v11 = *MEMORY[0x277CCB800];
    v12 = *MEMORY[0x277CCB7D0];
    v13 = v6;
    goto LABEL_7;
  }

  if (v8)
  {
    v9 = HKAnalyticsPropertyValueForBiologicalSex();
    v12 = *MEMORY[0x277CCB7D0];
    v13 = v6;
    v11 = v9;
LABEL_7:
    [v13 setObject:v11 forKeyedSubscript:v12];
    goto LABEL_8;
  }

  _HKInitializeLogging();
  v9 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [HKHRBloodPressureJournalNotificationAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:v9 error:?];
  }

LABEL_8:

  healthDataSource2 = [sourceCopy healthDataSource];
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];
  v27 = 0;
  v17 = [healthDataSource2 ageWithCurrentDate:currentDate error:&v27];
  v18 = v27;

  if (v18)
  {
    _HKInitializeLogging();
    v19 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [HKHRBloodPressureJournalNotificationAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v20 = *MEMORY[0x277CCB7A0];
  }

  else
  {
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE290]];
    v20 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAge();

    v18 = v20;
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  [v6 setObject:v20 forKeyedSubscript:*MEMORY[0x277CCB7C0]];
  v20 = v18;
LABEL_14:

  actionValue = [(HKHRBloodPressureJournalNotificationAnalyticsEvent *)self actionValue];
  [v6 setObject:actionValue forKeyedSubscript:@"action"];

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKHRBloodPressureJournalAnalyticsUtilities fetchNumDaysSinceMostRecentBPJCycleStart:](self->_commonUtilities, "fetchNumDaysSinceMostRecentBPJCycleStart:", sourceCopy)}];
  [v6 setObject:v23 forKeyedSubscript:@"numDaysSinceMostRecentBPJCycleStart"];

  v24 = [(HKHRBloodPressureJournalNotificationAnalyticsEvent *)self windowValue:[(HKHRBloodPressureJournalNotificationAnalyticsEvent *)self windowType]];
  [v6 setObject:v24 forKeyedSubscript:@"windowType"];

  v25 = [v6 copy];

  return v25;
}

- (id)actionValue
{
  action = self->_action;
  if (action < 4)
  {
    return off_27860AB58[action];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKHRBloodPressureJournalNotificationAnalyticsEvent.m" lineNumber:105 description:{@"Unexpected Notification Type %ld", self->_action}];

  return 0;
}

- (id)windowValue:(unint64_t)value
{
  if (value < 3)
  {
    return off_27860AB78[value];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKHRBloodPressureJournalNotificationAnalyticsEvent.m" lineNumber:119 description:{@"Unexpected Notification Type %ld", value}];

  return 0;
}

- (unint64_t)windowType
{
  if ([(HKHRBloodPressureJournal *)self->_activeJournal journalType]== 1)
  {
    return 2;
  }

  else
  {
    return [(NSNumber *)self->_windowType isEqual:&unk_283BE0D50]^ 1;
  }
}

- (void)makeIHAGatedEventPayloadWithDataSource:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_228942000, v0, v1, "[%{public}@] Error when determining biological sex, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)makeIHAGatedEventPayloadWithDataSource:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_228942000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] No error when fetching biological sex but also didn't get object", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)makeIHAGatedEventPayloadWithDataSource:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_228942000, v0, v1, "[%{public}@] Error when determining age, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end