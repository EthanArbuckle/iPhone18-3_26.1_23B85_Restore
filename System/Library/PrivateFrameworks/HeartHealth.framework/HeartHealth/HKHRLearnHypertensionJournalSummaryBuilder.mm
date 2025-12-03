@interface HKHRLearnHypertensionJournalSummaryBuilder
+ (id)summaryFromSamples:(id)samples journal:(id)journal;
@end

@implementation HKHRLearnHypertensionJournalSummaryBuilder

+ (id)summaryFromSamples:(id)samples journal:(id)journal
{
  v49 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  journalCopy = journal;
  v7 = [[HKHRLearnHypertensionJournalEntryProvider alloc] initWithJournal:journalCopy];
  if (v7)
  {
    v30 = journalCopy;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v31 = samplesCopy;
    [samplesCopy sortedArrayUsingComparator:&__block_literal_global];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v41 = 0u;
    v37 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    startDate = 0;
    v10 = 0;
    if (!v37)
    {
      goto LABEL_28;
    }

    v36 = *v39;
    v32 = v7;
    v33 = v8;
    while (1)
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v39 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        v13 = [(HKHRLearnHypertensionJournalEntryProvider *)v7 journalEntryForSample:v12, v30];
        dayWindowType = [v13 dayWindowType];
        if (dayWindowType == 1)
        {
          v15 = v34;
          goto LABEL_11;
        }

        if (!dayWindowType)
        {
          v15 = v8;
LABEL_11:
          v16 = v10;
          v10 = v15;
          goto LABEL_14;
        }

        _HKInitializeLogging();
        v16 = HKHRBloodPressureLogForCategory(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          dayWindowType2 = [v13 dayWindowType];
          *buf = 136446722;
          v43 = "+[HKHRLearnHypertensionJournalSummaryBuilder summaryFromSamples:journal:]";
          v44 = 2048;
          v45 = dayWindowType2;
          v46 = 2112;
          v47 = v13;
          _os_log_error_impl(&dword_228942000, v16, OS_LOG_TYPE_ERROR, "[%{public}s] Unsupported dayWindowType:%ld entry:%@", buf, 0x20u);
        }

LABEL_14:

        v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "dayIndex")}];
        v18 = [v10 objectForKeyedSubscript:v17];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
        }

        v21 = v20;

        sampleUUID = [v13 sampleUUID];
        [v21 addObject:sampleUUID];

        [v10 setObject:v21 forKeyedSubscript:v17];
        if (!startDate)
        {
          allKeys = [v8 allKeys];
          if ([allKeys count]>= 7)
          {
            allKeys2 = [v34 allKeys];
            v25 = [allKeys2 count];

            if (v25 < 7)
            {
              startDate = 0;
              v7 = v32;
              v8 = v33;
              goto LABEL_26;
            }

            startDate = [v12 startDate];
            _HKInitializeLogging();
            allKeys = HKHRBloodPressureLogForCategory(1);
            v7 = v32;
            if (os_log_type_enabled(allKeys, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v43 = "+[HKHRLearnHypertensionJournalSummaryBuilder summaryFromSamples:journal:]";
              v44 = 2112;
              v45 = startDate;
              _os_log_impl(&dword_228942000, allKeys, OS_LOG_TYPE_DEFAULT, "[%{public}s] date of sample that completed journal: %@)", buf, 0x16u);
            }

            v8 = v33;
          }

          else
          {
            startDate = 0;
          }
        }

LABEL_26:
      }

      v37 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (!v37)
      {
LABEL_28:
        v27 = [[HKHRLearnHypertensionJournalSummary alloc] initWithWakeupSampleMap:v8 bedtimeSampleMap:v34 completeDate:startDate];

        journalCopy = v30;
        samplesCopy = v31;
        goto LABEL_32;
      }
    }
  }

  _HKInitializeLogging();
  v8 = HKHRBloodPressureLogForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [HKHRLearnHypertensionJournalSummaryBuilder summaryFromSamples:journalCopy journal:v8];
  }

  v27 = 0;
LABEL_32:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

uint64_t __73__HKHRLearnHypertensionJournalSummaryBuilder_summaryFromSamples_journal___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

+ (void)summaryFromSamples:(void *)a1 journal:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 UUID];
  v5 = 136446466;
  v6 = "+[HKHRLearnHypertensionJournalSummaryBuilder summaryFromSamples:journal:]";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_228942000, a2, OS_LOG_TYPE_ERROR, "[%{public}s] Unable to initialize entryProvider with journal:%@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end