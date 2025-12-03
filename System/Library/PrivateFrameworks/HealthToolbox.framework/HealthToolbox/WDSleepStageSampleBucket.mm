@interface WDSleepStageSampleBucket
- (NSPredicate)predicate;
- (WDSleepStageSampleBucket)initWithSleepStage:(int64_t)stage timePeriod:(id)period sourceRevision:(id)revision device:(id)device;
- (double)totalDuration;
- (unint64_t)sortNumber;
- (void)addSample:(id)sample;
@end

@implementation WDSleepStageSampleBucket

- (WDSleepStageSampleBucket)initWithSleepStage:(int64_t)stage timePeriod:(id)period sourceRevision:(id)revision device:(id)device
{
  periodCopy = period;
  revisionCopy = revision;
  deviceCopy = device;
  v20.receiver = self;
  v20.super_class = WDSleepStageSampleBucket;
  v14 = [(WDSleepStageSampleBucket *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->_sleepStage = stage;
    objc_storeStrong(&v14->_timePeriod, period);
    objc_storeStrong(&v15->_sourceRevision, revision);
    objc_storeStrong(&v15->_device, device);
    v16 = objc_alloc_init(MEMORY[0x277CCD9F8]);
    sortedSamples = v15->_sortedSamples;
    v15->_sortedSamples = v16;

    v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD38] ascending:0];
    [(HKSortedSampleArray *)v15->_sortedSamples setSortDescriptor:v18];
  }

  return v15;
}

- (void)addSample:(id)sample
{
  v9 = *MEMORY[0x277D85DE8];
  sortedSamples = self->_sortedSamples;
  sampleCopy = sample;
  v4 = MEMORY[0x277CBEA60];
  sampleCopy2 = sample;
  v6 = [v4 arrayWithObjects:&sampleCopy count:1];
  [(HKSortedSampleArray *)sortedSamples insertSamples:v6, sampleCopy, v9];

  v7 = *MEMORY[0x277D85DE8];
}

- (double)totalDuration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  allSamples = [(HKSortedSampleArray *)self->_sortedSamples allSamples];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__WDSleepStageSampleBucket_totalDuration__block_invoke;
  v5[3] = &unk_2796E7038;
  v5[4] = &v6;
  [allSamples enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __41__WDSleepStageSampleBucket_totalDuration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 endDate];
  v5 = [v3 startDate];

  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  v8 = *(*(a1 + 32) + 8);
  result = v7 + *(v8 + 24);
  *(v8 + 24) = result;
  return result;
}

- (NSPredicate)predicate
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCD838] predicateForCategorySamplesWithOperatorType:4 value:self->_sleepStage];
  v4 = MEMORY[0x277CCD838];
  startDate = [(WDTimePeriod *)self->_timePeriod startDate];
  endDate = [(WDTimePeriod *)self->_timePeriod endDate];
  v7 = [v4 predicateForSamplesWithStartDate:startDate endDate:endDate options:0];

  v8 = MEMORY[0x277CCD838];
  v9 = MEMORY[0x277CBEB98];
  sourceRevision = [(WDSleepStageSampleBucket *)self sourceRevision];
  source = [sourceRevision source];
  v12 = [v9 setWithObject:source];
  v13 = [v8 predicateForObjectsFromSources:v12];

  v14 = MEMORY[0x277CCA920];
  v19[0] = v7;
  v19[1] = v3;
  v19[2] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v16 = [v14 andPredicateWithSubpredicates:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (unint64_t)sortNumber
{
  sleepStage = [(WDSleepStageSampleBucket *)self sleepStage];
  if ((sleepStage - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_251EEED50[sleepStage - 1];
  }
}

@end