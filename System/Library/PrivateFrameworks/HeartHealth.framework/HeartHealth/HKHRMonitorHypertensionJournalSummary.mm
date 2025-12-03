@interface HKHRMonitorHypertensionJournalSummary
- (BOOL)isComplete;
- (BOOL)isCompleteOnDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (HKHRMonitorHypertensionJournalSummary)initWithSamples:(id)samples calendar:(id)calendar journal:(id)journal;
- (NSDate)completeDate;
- (id)completeDateAsOfDate:(id)date;
- (unint64_t)hash;
- (void)extractDates:(id)dates;
@end

@implementation HKHRMonitorHypertensionJournalSummary

- (HKHRMonitorHypertensionJournalSummary)initWithSamples:(id)samples calendar:(id)calendar journal:(id)journal
{
  samplesCopy = samples;
  calendarCopy = calendar;
  journalCopy = journal;
  v15.receiver = self;
  v15.super_class = HKHRMonitorHypertensionJournalSummary;
  v12 = [(HKHRMonitorHypertensionJournalSummary *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_calendar, calendar);
    objc_storeStrong(&v13->_journal, journal);
    objc_storeStrong(&v13->_samples, samples);
    [(HKHRMonitorHypertensionJournalSummary *)v13 extractDates:samplesCopy];
  }

  return v13;
}

- (void)extractDates:(id)dates
{
  v26 = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = datesCopy;
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
        endDate = [v10 endDate];
        v12 = MEMORY[0x277CCABB0];
        calendar = [(HKHRMonitorHypertensionJournalSummary *)self calendar];
        v14 = [v12 numberWithInteger:{objc_msgSend(endDate, "hk_dayIndexWithCalendar:", calendar)}];

        v15 = [v5 objectForKeyedSubscript:v14];
        if (!v15)
        {
          v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
          [v19 addObject:endDate];
        }

        uUID = [v10 UUID];
        [v15 addObject:uUID];

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
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(self) = [(HKHRMonitorHypertensionJournalSummary *)self isCompleteOnDate:date];

  return self;
}

- (NSDate)completeDate
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [(HKHRMonitorHypertensionJournalSummary *)self completeDateAsOfDate:date];

  return v4;
}

- (id)completeDateAsOfDate:(id)date
{
  v36 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  calendar = [(HKHRMonitorHypertensionJournalSummary *)self calendar];
  journal = [(HKHRMonitorHypertensionJournalSummary *)self journal];
  startDate = [journal startDate];
  v8 = [calendar startOfDayForDate:startDate];

  calendar2 = [(HKHRMonitorHypertensionJournalSummary *)self calendar];
  v10 = [calendar2 dateByAddingUnit:16 value:27 toDate:v8 options:0];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = self->_samples;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v12)
  {

LABEL_15:
    calendar3 = [(HKHRMonitorHypertensionJournalSummary *)self calendar];
    v25 = [calendar3 dateByAddingUnit:16 value:28 toDate:v8 options:0];

    v14 = 0;
    if ([dateCopy hk_isAfterOrEqualToDate:v25])
    {
      v14 = v10;
    }

    goto LABEL_18;
  }

  v13 = v12;
  obj = v11;
  v28 = v8;
  v29 = dateCopy;
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
      startDate2 = [v17 startDate];
      v20 = [v18 isDate:startDate2 inSameDayAsDate:v10];

      if (v20)
      {
        if (!v14 || ([v17 startDate], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "hk_isBeforeDate:", v14), v21, v22))
        {
          startDate3 = [v17 startDate];

          v14 = startDate3;
        }
      }
    }

    v13 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v13);

  v8 = v28;
  dateCopy = v29;
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_18:

  v26 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)isCompleteOnDate:(id)date
{
  dateCopy = date;
  v5 = [(HKHRMonitorHypertensionJournalSummary *)self completeDateAsOfDate:dateCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hk_isBeforeOrEqualToDate:dateCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = HKHRMonitorHypertensionJournalSummary;
  if ([(HKHRMonitorHypertensionJournalSummary *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [equalCopy hash];
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