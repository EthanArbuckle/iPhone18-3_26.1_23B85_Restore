@interface HDHRBloodPressureJournalNotificationIdentifier
+ (id)identifierFromBPSample:(id)a3 journal:(id)a4;
- (HDHRBloodPressureJournalNotificationIdentifier)initWithIdentifierString:(id)a3;
- (HDHRBloodPressureJournalNotificationIdentifier)initWithJournalIdentifier:(id)a3 notificationDayIndex:(int64_t)a4 journalWindowType:(int64_t)a5;
@end

@implementation HDHRBloodPressureJournalNotificationIdentifier

+ (id)identifierFromBPSample:(id)a3 journal:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 journalType];
  if (v8 == 1)
  {
    v14 = [v6 endDate];
    v15 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v16 = [v14 hk_dayIndexWithCalendar:v15];

    v17 = [HDHRBloodPressureJournalNotificationIdentifier alloc];
    v9 = [v7 UUID];
    v13 = [(HDHRBloodPressureJournalNotificationIdentifier *)v17 initWithJournalIdentifier:v9 notificationDayIndex:v16 journalWindowType:0];
    goto LABEL_5;
  }

  if (!v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D12FE0]) initWithJournal:v7];
    v10 = [v9 journalEntryForSample:v6];
    v11 = [HDHRBloodPressureJournalNotificationIdentifier alloc];
    v12 = [v7 UUID];
    v13 = -[HDHRBloodPressureJournalNotificationIdentifier initWithJournalIdentifier:notificationDayIndex:journalWindowType:](v11, "initWithJournalIdentifier:notificationDayIndex:journalWindowType:", v12, [v10 dayIndex], objc_msgSend(v10, "dayWindowType"));

LABEL_5:
    goto LABEL_9;
  }

  _HKInitializeLogging();
  v18 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v21 = 138543874;
    v22 = a1;
    v23 = 2114;
    v24 = v6;
    v25 = 2114;
    v26 = v7;
    _os_log_error_impl(&dword_229486000, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Invalid Journal type. Could not make identifier for Sample [%{public}@] and journal [%{public}@].", &v21, 0x20u);
  }

  v13 = 0;
LABEL_9:

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HDHRBloodPressureJournalNotificationIdentifier)initWithJournalIdentifier:(id)a3 notificationDayIndex:(int64_t)a4 journalWindowType:(int64_t)a5
{
  v21[3] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v20.receiver = self;
  v20.super_class = HDHRBloodPressureJournalNotificationIdentifier;
  v10 = [(HDHRBloodPressureJournalNotificationIdentifier *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_journalIdentifier, a3);
    v11->_notificationDayIndex = a4;
    v11->_journalWindowType = a5;
    v12 = [v9 UUIDString];
    v21[0] = v12;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v11->_notificationDayIndex];
    v21[1] = v13;
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a5];
    v21[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];

    v16 = [v15 componentsJoinedByString:@"_"];
    identifierString = v11->_identifierString;
    v11->_identifierString = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (HDHRBloodPressureJournalNotificationIdentifier)initWithIdentifierString:(id)a3
{
  v5 = a3;
  v6 = [v5 componentsSeparatedByString:@"_"];
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

        objc_storeStrong(&v11->_identifierString, a3);
      }

      self = v11;
      v14 = self;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end