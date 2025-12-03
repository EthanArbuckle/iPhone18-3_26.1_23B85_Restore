@interface HDHRBloodPressureJournalNotificationIdentifier
+ (id)identifierFromBPSample:(id)sample journal:(id)journal;
- (HDHRBloodPressureJournalNotificationIdentifier)initWithIdentifierString:(id)string;
- (HDHRBloodPressureJournalNotificationIdentifier)initWithJournalIdentifier:(id)identifier notificationDayIndex:(int64_t)index journalWindowType:(int64_t)type;
@end

@implementation HDHRBloodPressureJournalNotificationIdentifier

+ (id)identifierFromBPSample:(id)sample journal:(id)journal
{
  v27 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  journalCopy = journal;
  journalType = [journalCopy journalType];
  if (journalType == 1)
  {
    endDate = [sampleCopy endDate];
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v16 = [endDate hk_dayIndexWithCalendar:hk_gregorianCalendar];

    v17 = [HDHRBloodPressureJournalNotificationIdentifier alloc];
    uUID = [journalCopy UUID];
    v13 = [(HDHRBloodPressureJournalNotificationIdentifier *)v17 initWithJournalIdentifier:uUID notificationDayIndex:v16 journalWindowType:0];
    goto LABEL_5;
  }

  if (!journalType)
  {
    uUID = [objc_alloc(MEMORY[0x277D12FE0]) initWithJournal:journalCopy];
    v10 = [uUID journalEntryForSample:sampleCopy];
    v11 = [HDHRBloodPressureJournalNotificationIdentifier alloc];
    uUID2 = [journalCopy UUID];
    v13 = -[HDHRBloodPressureJournalNotificationIdentifier initWithJournalIdentifier:notificationDayIndex:journalWindowType:](v11, "initWithJournalIdentifier:notificationDayIndex:journalWindowType:", uUID2, [v10 dayIndex], objc_msgSend(v10, "dayWindowType"));

LABEL_5:
    goto LABEL_9;
  }

  _HKInitializeLogging();
  v18 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v21 = 138543874;
    selfCopy = self;
    v23 = 2114;
    v24 = sampleCopy;
    v25 = 2114;
    v26 = journalCopy;
    _os_log_error_impl(&dword_229486000, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Invalid Journal type. Could not make identifier for Sample [%{public}@] and journal [%{public}@].", &v21, 0x20u);
  }

  v13 = 0;
LABEL_9:

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HDHRBloodPressureJournalNotificationIdentifier)initWithJournalIdentifier:(id)identifier notificationDayIndex:(int64_t)index journalWindowType:(int64_t)type
{
  v21[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = HDHRBloodPressureJournalNotificationIdentifier;
  v10 = [(HDHRBloodPressureJournalNotificationIdentifier *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_journalIdentifier, identifier);
    v11->_notificationDayIndex = index;
    v11->_journalWindowType = type;
    uUIDString = [identifierCopy UUIDString];
    v21[0] = uUIDString;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v11->_notificationDayIndex];
    v21[1] = v13;
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", type];
    v21[2] = type;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];

    v16 = [v15 componentsJoinedByString:@"_"];
    identifierString = v11->_identifierString;
    v11->_identifierString = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (HDHRBloodPressureJournalNotificationIdentifier)initWithIdentifierString:(id)string
{
  stringCopy = string;
  v6 = [stringCopy componentsSeparatedByString:@"_"];
  if ([v6 count] == 3)
  {
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    v8 = [v6 objectAtIndexedSubscript:0];
    v9 = [v7 initWithUUIDString:v8];

    if (v9)
    {
      v16.receiver = self;
      v16.super_class = HDHRBloodPressureJournalNotificationIdentifier;
      v10 = [(HDHRBloodPressureJournalNotificationIdentifier *)&v16 init];
      v11 = v10;
      if (v10)
      {
        objc_storeStrong(&v10->_journalIdentifier, v9);
        v12 = [v6 objectAtIndexedSubscript:1];
        v11->_notificationDayIndex = [v12 integerValue];

        v13 = [v6 objectAtIndexedSubscript:2];
        v11->_journalWindowType = [v13 integerValue];

        objc_storeStrong(&v11->_identifierString, string);
      }

      self = v11;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end