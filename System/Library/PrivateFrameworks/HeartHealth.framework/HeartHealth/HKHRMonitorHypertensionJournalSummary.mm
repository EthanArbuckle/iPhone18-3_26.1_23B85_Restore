@interface HKHRMonitorHypertensionJournalSummary
- (BOOL)isComplete;
- (BOOL)isCompleteOnDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKHRMonitorHypertensionJournalSummary)initWithSamples:(id)a3 calendar:(id)a4 journal:(id)a5;
- (NSDate)completeDate;
- (id)completeDateAsOfDate:(id)a3;
- (unint64_t)hash;
- (void)extractDates:(id)a3;
@end

@implementation HKHRMonitorHypertensionJournalSummary

- (HKHRMonitorHypertensionJournalSummary)initWithSamples:(id)a3 calendar:(id)a4 journal:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKHRMonitorHypertensionJournalSummary;
  v12 = [(HKHRMonitorHypertensionJournalSummary *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_calendar, a4);
    objc_storeStrong(&v13->_journal, a5);
    objc_storeStrong(&v13->_samples, a3);
    [(HKHRMonitorHypertensionJournalSummary *)v13 extractDates:v9];
  }

  return v13;
}

- (void)extractDates:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 endDate];
        v12 = MEMORY[0x277CCABB0];
        v13 = [(HKHRMonitorHypertensionJournalSummary *)self calendar];
        v14 = [v12 numberWithInteger:{objc_msgSend(v11, "hk_dayIndexWithCalendar:", v13)}];

        v15 = [v5 objectForKeyedSubscript:v14];
        if (!v15)
        {
          v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
          [v19 addObject:v11];
        }

        v16 = [v10 UUID];
        [v15 addObject:v16];

        [v5 setObject:v15 forKeyedSubscript:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v17 = [v19 copy];
  [(HKHRMonitorHypertensionJournalSummary *)self setDatesWithSamples:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)isComplete
{
  v3 = [MEMORY[0x277CBEAA8] date];
  LOBYTE(self) = [(HKHRMonitorHypertensionJournalSummary *)self isCompleteOnDate:v3];

  return self;
}

- (NSDate)completeDate
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(HKHRMonitorHypertensionJournalSummary *)self completeDateAsOfDate:v3];

  return v4;
}

- (id)completeDateAsOfDate:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HKHRMonitorHypertensionJournalSummary *)self calendar];
  v6 = [(HKHRMonitorHypertensionJournalSummary *)self journal];
  v7 = [v6 startDate];
  v8 = [v5 startOfDayForDate:v7];

  v9 = [(HKHRMonitorHypertensionJournalSummary *)self calendar];
  v10 = [v9 dateByAddingUnit:16 value:27 toDate:v8 options:0];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = self->_samples;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v12)
  {

LABEL_15:
    v24 = [(HKHRMonitorHypertensionJournalSummary *)self calendar];
    v25 = [v24 dateByAddingUnit:16 value:28 toDate:v8 options:0];

    v14 = 0;
    if ([v4 hk_isAfterOrEqualToDate:v25])
    {
      v14 = v10;
    }

    goto LABEL_18;
  }

  v13 = v12;
  obj = v11;
  v28 = v8;
  v29 = v4;
  v14 = 0;
  v15 = *v32;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v32 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v31 + 1) + 8 * i);
      v18 = [(HKHRMonitorHypertensionJournalSummary *)self calendar:v28];
      v19 = [v17 startDate];
      v20 = [v18 isDate:v19 inSameDayAsDate:v10];

      if (v20)
      {
        if (!v14 || ([v17 startDate], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "hk_isBeforeDate:", v14), v21, v22))
        {
          v23 = [v17 startDate];

          v14 = v23;
        }
      }
    }

    v13 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v13);

  v8 = v28;
  v4 = v29;
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_18:

  v26 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)isCompleteOnDate:(id)a3
{
  v4 = a3;
  v5 = [(HKHRMonitorHypertensionJournalSummary *)self completeDateAsOfDate:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hk_isBeforeOrEqualToDate:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKHRMonitorHypertensionJournalSummary;
  if ([(HKHRMonitorHypertensionJournalSummary *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 hash];
      v5 = v6 == [(HKHRMonitorHypertensionJournalSummary *)self hash];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSSet *)self->_datesWithSamples hash];
  v4 = [(HKHRBloodPressureJournal *)self->_journal hash]^ v3;
  return v4 ^ [(NSCalendar *)self->_calendar hash];
}

@end