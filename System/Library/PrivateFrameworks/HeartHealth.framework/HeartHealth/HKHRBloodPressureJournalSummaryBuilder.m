@interface HKHRBloodPressureJournalSummaryBuilder
- (HKHRBloodPressureJournalSummaryBuilder)initWithJournal:(id)a3 healthStore:(id)a4;
- (id)buildAverageClassificationForSummary:(id)a3;
- (id)buildSummary;
- (void)fetchSamplesWithResultsHandler:(id)a3;
- (void)fetchStatisticsForQuantityType:(id)a3 completeDate:(id)a4 resultsHandler:(id)a5;
@end

@implementation HKHRBloodPressureJournalSummaryBuilder

- (HKHRBloodPressureJournalSummaryBuilder)initWithJournal:(id)a3 healthStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HKHRBloodPressureJournalSummaryBuilder;
  v8 = [(HKHRBloodPressureJournalSummaryBuilder *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(HKHRBloodPressureJournalSummaryBuilder *)v8 setJournal:v6];
    [(HKHRBloodPressureJournalSummaryBuilder *)v9 setHealthStore:v7];
    v10 = [MEMORY[0x277CBEAA8] date];
    [(HKHRBloodPressureJournalSummaryBuilder *)v9 setDateOfLastSample:v10];
  }

  return v9;
}

- (void)fetchSamplesWithResultsHandler:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [(HKHRBloodPressureJournalSummaryBuilder *)self journal];
  v8 = [v7 startDate];
  v9 = [v6 startOfDayForDate:v8];

  v10 = MEMORY[0x277CCD838];
  v11 = [(HKHRBloodPressureJournalSummaryBuilder *)self journal];
  v12 = [v11 endDate];
  v13 = [v10 predicateForSamplesWithStartDate:v9 endDate:v12 options:0];

  v14 = [MEMORY[0x277CCD250] correlationTypeForIdentifier:*MEMORY[0x277CCBBA8]];
  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD38] ascending:1];
  v21[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

  v17 = [objc_alloc(MEMORY[0x277CCD8D0]) initWithSampleType:v14 predicate:v13 limit:0 sortDescriptors:v16 resultsHandler:v5];
  v18 = [(HKHRBloodPressureJournalSummaryBuilder *)self journal];
  [v17 setIncludeAutomaticTimeZones:{objc_msgSend(v18, "journalType") == 0}];

  v19 = [(HKHRBloodPressureJournalSummaryBuilder *)self healthStore];
  [v19 executeQuery:v17];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)fetchStatisticsForQuantityType:(id)a3 completeDate:(id)a4 resultsHandler:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  _HKInitializeLogging();
  v11 = HKHRBloodPressureLogForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(HKHRBloodPressureJournalSummaryBuilder *)self journal];
    v13 = [v12 startDate];
    *buf = 138412802;
    v28 = self;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_228942000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Fetching statistics with startDate: %@ and completeDate: %@", buf, 0x20u);
  }

  v14 = [MEMORY[0x277CBEA80] currentCalendar];
  v15 = [(HKHRBloodPressureJournalSummaryBuilder *)self journal];
  v16 = [v15 startDate];
  v17 = [v14 startOfDayForDate:v16];

  v18 = [MEMORY[0x277CCD838] predicateForSamplesWithStartDate:v17 endDate:v8 inclusiveEndDates:1 options:0];
  v19 = [MEMORY[0x277CCD838] predicateForSamplesWithCorrelationedSample];
  v20 = MEMORY[0x277CCA920];
  v26[0] = v18;
  v26[1] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];

  v23 = [objc_alloc(MEMORY[0x277CCDA68]) initWithQuantityType:v10 quantitySamplePredicate:v22 options:2 completionHandler:v9];
  v24 = [(HKHRBloodPressureJournalSummaryBuilder *)self healthStore];
  [v24 executeQuery:v23];

  v25 = *MEMORY[0x277D85DE8];
}

- (id)buildSummary
{
  v3 = dispatch_semaphore_create(0);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HKHRBloodPressureJournalSummaryBuilder_buildSummary__block_invoke;
  v8[3] = &unk_27860B5C0;
  v8[4] = self;
  v10 = &v11;
  v4 = v3;
  v9 = v4;
  [(HKHRBloodPressureJournalSummaryBuilder *)self fetchSamplesWithResultsHandler:v8];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  if ([v12[5] isComplete])
  {
    v5 = [(HKHRBloodPressureJournalSummaryBuilder *)self buildAverageClassificationForSummary:v12[5]];
    [v12[5] setAverageClassificationCategory:v5];
  }

  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __54__HKHRBloodPressureJournalSummaryBuilder_buildSummary__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v4 = [v22 lastObject];

  if (v4)
  {
    v5 = [v22 lastObject];
    v6 = [v5 _timeZone];

    v7 = objc_alloc_init(MEMORY[0x277CCD0A0]);
    v8 = [v7 calendarForTimeZone:v6];

    v9 = [v22 lastObject];
    v10 = [v9 endDate];
    v11 = [v8 startOfDayForDate:v10];
    v12 = *(a1 + 32);
    v13 = *(v12 + 24);
    *(v12 + 24) = v11;
  }

  v14 = [*(a1 + 32) journal];
  v15 = [v14 journalType];

  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_8;
    }

    v16 = off_27860A3B8;
  }

  else
  {
    v16 = off_27860A3A8;
  }

  v17 = *v16;
  v18 = [*(a1 + 32) journal];
  v19 = [(__objc2_class *)v17 summaryFromSamples:v22 journal:v18];
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

LABEL_8:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)buildAverageClassificationForSummary:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = dispatch_group_create();
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__4;
  v57 = __Block_byref_object_dispose__4;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__4;
  v51 = __Block_byref_object_dispose__4;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  dispatch_group_enter(v5);
  v6 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC980]];
  v7 = [v4 completeDate];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __79__HKHRBloodPressureJournalSummaryBuilder_buildAverageClassificationForSummary___block_invoke;
  v40[3] = &unk_27860B5E8;
  v42 = &v53;
  v8 = v5;
  v41 = v8;
  [(HKHRBloodPressureJournalSummaryBuilder *)self fetchStatisticsForQuantityType:v6 completeDate:v7 resultsHandler:v40];

  dispatch_group_enter(v8);
  v9 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC978]];
  v10 = [v4 completeDate];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __79__HKHRBloodPressureJournalSummaryBuilder_buildAverageClassificationForSummary___block_invoke_2;
  v37[3] = &unk_27860B5E8;
  v39 = &v47;
  v11 = v8;
  v38 = v11;
  [(HKHRBloodPressureJournalSummaryBuilder *)self fetchStatisticsForQuantityType:v9 completeDate:v10 resultsHandler:v37];

  dispatch_group_enter(v11);
  v12 = objc_alloc(MEMORY[0x277CCD088]);
  v13 = [(HKHRBloodPressureJournalSummaryBuilder *)self healthStore];
  v14 = [v12 initWithHealthStore:v13];

  dateOfLastSample = self->_dateOfLastSample;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __79__HKHRBloodPressureJournalSummaryBuilder_buildAverageClassificationForSummary___block_invoke_3;
  v34[3] = &unk_27860B610;
  v36 = &v43;
  v16 = v11;
  v35 = v16;
  [v14 classificationGuidelinesOnDate:dateOfLastSample completionHandler:v34];
  dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  v17 = *MEMORY[0x277CCB8C0];
  if (v54[5] && v48[5])
  {
    v18 = [(HKHRBloodPressureJournalSummaryBuilder *)self healthStore];
    v33 = 0;
    v19 = [v18 dateOfBirthComponentsWithError:&v33];
    v20 = v33;

    if (!v19 || v20)
    {
      _HKInitializeLogging();
      v21 = HKHRBloodPressureLogForCategory(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(HKHRBloodPressureJournalSummaryBuilder *)self buildAverageClassificationForSummary:v20, v21];
      }
    }

    v22 = MEMORY[0x277CCABB0];
    v23 = [MEMORY[0x277CBEAA8] date];
    v24 = [v22 numberWithInteger:{objc_msgSend(v19, "hk_ageWithCurrentDate:", v23)}];

    v25 = [v14 categoryForClassificationGuidelines:v44[3] systolic:v54[5] diastolic:v48[5] age:v24];

    v17 = v25;
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKHRBloodPressureLogForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v28 = [(HKHRBloodPressureJournalSummaryBuilder *)self journal];
      v29 = [v28 UUID];
      v30 = [(HKHRBloodPressureJournalSummaryBuilder *)self journal];
      v31 = [v30 scheduleType];
      *buf = 138412802;
      v60 = v32;
      v61 = 2112;
      v62 = v29;
      v63 = 2048;
      v64 = v31;
      _os_log_error_impl(&dword_228942000, v20, OS_LOG_TYPE_ERROR, "[%@] Failed to query HKStatistics for Journal Summary: Journal ID:(%@) scheduleType:%ld ", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  v26 = *MEMORY[0x277D85DE8];

  return v17;
}

void __79__HKHRBloodPressureJournalSummaryBuilder_buildAverageClassificationForSummary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 averageQuantity];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  dispatch_group_leave(v7);
}

void __79__HKHRBloodPressureJournalSummaryBuilder_buildAverageClassificationForSummary___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 averageQuantity];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  dispatch_group_leave(v7);
}

- (void)buildAverageClassificationForSummary:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_228942000, log, OS_LOG_TYPE_ERROR, "[%@] Unable to retrieve date of birth %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end