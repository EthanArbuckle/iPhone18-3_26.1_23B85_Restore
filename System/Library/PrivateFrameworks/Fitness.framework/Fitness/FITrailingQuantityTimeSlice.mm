@interface FITrailingQuantityTimeSlice
- (FITrailingQuantityTimeSlice)initWithQuantityType:(id)type startDate:(id)date;
- (FITrailingQuantityTimeSlice)initWithQuantityType:(id)type startDate:(id)date endDate:(id)endDate;
- (FITrailingQuantityTimeSlice)initWithQuantityType:(id)type startDate:(id)date endDate:(id)endDate committedSamples:(id)samples uncommittedSamples:(id)uncommittedSamples lastCommitDate:(id)commitDate committedTotal:(id)total finalized:(BOOL)self0;
- (HKQuantity)committedAndAddedTotal;
- (double)activeDurationUntilDate:(id)date;
- (id)_commitingSamples:(id)samples toPreviousCommittedTotal:(id)total toPreviousCommittedSamples:(id)committedSamples untilDate:(id)date startDate:(id)startDate endDate:(id)endDate;
- (id)_totalByCommittingSample:(id)sample toPreviousTotal:(id)total startDate:(id)date endDate:(id)endDate;
- (id)addingSample:(id)sample error:(id *)error;
- (id)addingSamples:(id)samples error:(id *)error;
- (id)autoCommitDateForSamples:(id)samples;
- (id)description;
- (id)settingEndDate:(id)date;
- (id)settingStartDate:(id)date;
- (id)settingTotalQuantityLimit:(id)limit;
@end

@implementation FITrailingQuantityTimeSlice

- (FITrailingQuantityTimeSlice)initWithQuantityType:(id)type startDate:(id)date
{
  v6 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  typeCopy = type;
  distantFuture = [v6 distantFuture];
  v10 = [(FITrailingQuantityTimeSlice *)self initWithQuantityType:typeCopy startDate:dateCopy endDate:distantFuture];

  return v10;
}

- (FITrailingQuantityTimeSlice)initWithQuantityType:(id)type startDate:(id)date endDate:(id)endDate
{
  v8 = MEMORY[0x277CCD7E8];
  endDateCopy = endDate;
  dateCopy = date;
  typeCopy = type;
  canonicalUnit = [typeCopy canonicalUnit];
  v13 = [v8 quantityWithUnit:canonicalUnit doubleValue:0.0];
  LOBYTE(v16) = 0;
  v14 = [(FITrailingQuantityTimeSlice *)self initWithQuantityType:typeCopy startDate:dateCopy endDate:endDateCopy committedSamples:MEMORY[0x277CBEBF8] uncommittedSamples:MEMORY[0x277CBEBF8] lastCommitDate:dateCopy committedTotal:v13 finalized:v16];

  return v14;
}

- (FITrailingQuantityTimeSlice)initWithQuantityType:(id)type startDate:(id)date endDate:(id)endDate committedSamples:(id)samples uncommittedSamples:(id)uncommittedSamples lastCommitDate:(id)commitDate committedTotal:(id)total finalized:(BOOL)self0
{
  typeCopy = type;
  dateCopy = date;
  endDateCopy = endDate;
  samplesCopy = samples;
  uncommittedSamplesCopy = uncommittedSamples;
  commitDateCopy = commitDate;
  totalCopy = total;
  v27.receiver = self;
  v27.super_class = FITrailingQuantityTimeSlice;
  v19 = [(FITrailingQuantityTimeSlice *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_quantityType, type);
    objc_storeStrong(&v20->_startDate, date);
    objc_storeStrong(&v20->_endDate, endDate);
    objc_storeStrong(&v20->_committedSamples, samples);
    objc_storeStrong(&v20->_uncommittedSamples, uncommittedSamples);
    objc_storeStrong(&v20->_lastCommitDate, commitDate);
    objc_storeStrong(&v20->_committedTotal, total);
    v20->_finalized = finalized;
  }

  return v20;
}

- (HKQuantity)committedAndAddedTotal
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = self->_committedTotal;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_uncommittedSamples;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * v8);
        v11 = objc_alloc(MEMORY[0x277CCA970]);
        v12 = [v11 initWithStartDate:self->_startDate endDate:{self->_endDate, v16}];
        v13 = FISampleQuantityInsideDateInterval(v10, v12, 0);

        v3 = [(HKQuantity *)v9 _quantityByAddingQuantity:v13];

        ++v8;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (double)activeDurationUntilDate:(id)date
{
  dateCopy = date;
  endDate = [(FITrailingQuantityTimeSlice *)self endDate];
  v6 = [endDate hk_isAfterDate:dateCopy];

  if (v6)
  {
    [dateCopy timeIntervalSinceDate:self->_startDate];
    v8 = v7;
  }

  else
  {
    endDate2 = [(FITrailingQuantityTimeSlice *)self endDate];
    [endDate2 timeIntervalSinceDate:self->_startDate];
    v8 = v10;
  }

  return v8;
}

- (id)addingSample:(id)sample error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  if (_ValidateSample(sampleCopy, self->_startDate, self->_endDate, error))
  {
    v13[0] = sampleCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v8 = [(FITrailingQuantityTimeSlice *)self autoCommitDateForSamples:v7];

    v9 = [(NSArray *)self->_uncommittedSamples arrayByAddingObject:sampleCopy];
    selfCopy = [(FITrailingQuantityTimeSlice *)self _commitingSamples:v9 toPreviousCommittedTotal:self->_committedTotal toPreviousCommittedSamples:self->_committedSamples untilDate:v8 startDate:self->_startDate endDate:self->_endDate];
  }

  else
  {
    selfCopy = self;
  }

  v11 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (id)addingSamples:(id)samples error:(id *)error
{
  samplesCopy = samples;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy_;
  v17[4] = __Block_byref_object_dispose_;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(samplesCopy, "count")}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__FITrailingQuantityTimeSlice_addingSamples_error___block_invoke;
  v10[3] = &unk_2790047C8;
  v10[4] = self;
  v10[5] = v17;
  v10[6] = &v11;
  [samplesCopy enumerateObjectsUsingBlock:v10];
  if ([v12[5] count])
  {
    v6 = [(FITrailingQuantityTimeSlice *)self autoCommitDateForSamples:v12[5]];
    v7 = [(NSArray *)self->_uncommittedSamples arrayByAddingObjectsFromArray:v12[5]];
    selfCopy = [(FITrailingQuantityTimeSlice *)self _commitingSamples:v7 toPreviousCommittedTotal:self->_committedTotal toPreviousCommittedSamples:self->_committedSamples untilDate:v6 startDate:self->_startDate endDate:self->_endDate];
  }

  else
  {
    selfCopy = self;
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(v17, 8);

  return selfCopy;
}

void __51__FITrailingQuantityTimeSlice_addingSamples_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  v7 = *(a1[5] + 8);
  obj = *(v7 + 40);
  v8 = _ValidateSample(v3, v5, v6, &obj);
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    [*(*(a1[6] + 8) + 40) addObject:v3];
  }
}

- (id)autoCommitDateForSamples:(id)samples
{
  v4 = FISortSamplesByDate(samples);
  lastObject = [v4 lastObject];
  endDate = [lastObject endDate];
  v7 = [endDate hk_isAfterDate:self->_lastCommitDate];

  if (v7)
  {
    lastObject2 = [v4 lastObject];
    endDate2 = [lastObject2 endDate];
    v10 = [endDate2 earlierDate:self->_endDate];
  }

  else
  {
    v10 = self->_lastCommitDate;
  }

  return v10;
}

- (id)settingEndDate:(id)date
{
  dateCopy = date;
  v5 = [FITrailingQuantityTimeSlice alloc];
  quantityType = self->_quantityType;
  startDate = self->_startDate;
  v8 = [(NSArray *)self->_committedSamples arrayByAddingObjectsFromArray:self->_uncommittedSamples];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v10 = MEMORY[0x277CCD7E8];
  canonicalUnit = [(HKQuantityType *)self->_quantityType canonicalUnit];
  v12 = [v10 quantityWithUnit:canonicalUnit doubleValue:0.0];
  LOBYTE(v16) = self->_finalized;
  v13 = [(FITrailingQuantityTimeSlice *)v5 initWithQuantityType:quantityType startDate:startDate endDate:dateCopy committedSamples:MEMORY[0x277CBEBF8] uncommittedSamples:v8 lastCommitDate:distantPast committedTotal:v12 finalized:v16];

  v14 = [(FITrailingQuantityTimeSlice *)v13 committingUntilDate:dateCopy];

  return v14;
}

- (id)settingStartDate:(id)date
{
  dateCopy = date;
  v5 = [FITrailingQuantityTimeSlice alloc];
  quantityType = self->_quantityType;
  endDate = self->_endDate;
  v8 = [(NSArray *)self->_committedSamples arrayByAddingObjectsFromArray:self->_uncommittedSamples];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v10 = MEMORY[0x277CCD7E8];
  canonicalUnit = [(HKQuantityType *)self->_quantityType canonicalUnit];
  v12 = [v10 quantityWithUnit:canonicalUnit doubleValue:0.0];
  LOBYTE(v16) = self->_finalized;
  v13 = [(FITrailingQuantityTimeSlice *)v5 initWithQuantityType:quantityType startDate:dateCopy endDate:endDate committedSamples:MEMORY[0x277CBEBF8] uncommittedSamples:v8 lastCommitDate:distantPast committedTotal:v12 finalized:v16];

  v14 = [(FITrailingQuantityTimeSlice *)v13 committingUntilDate:self->_lastCommitDate];

  return v14;
}

- (id)settingTotalQuantityLimit:(id)limit
{
  limitCopy = limit;
  if ([limitCopy hk_isGreaterThanQuantity:self->_committedTotal])
  {
    selfCopy = self;
  }

  else
  {
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = __Block_byref_object_copy_;
    v25[4] = __Block_byref_object_dispose_;
    v6 = MEMORY[0x277CCD7E8];
    quantityType = [(FITrailingQuantityTimeSlice *)self quantityType];
    canonicalUnit = [quantityType canonicalUnit];
    v26 = [v6 quantityWithUnit:canonicalUnit doubleValue:0.0];

    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    committedSamples = self->_committedSamples;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __57__FITrailingQuantityTimeSlice_settingTotalQuantityLimit___block_invoke;
    v14 = &unk_2790047F0;
    selfCopy2 = self;
    v17 = v25;
    v16 = limitCopy;
    v18 = &v19;
    [(NSArray *)committedSamples enumerateObjectsWithOptions:2 usingBlock:&v11];
    selfCopy = [(FITrailingQuantityTimeSlice *)self settingStartDate:v20[5], v11, v12, v13, v14, selfCopy2];

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(v25, 8);
  }

  return selfCopy;
}

void __57__FITrailingQuantityTimeSlice_settingTotalQuantityLimit___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v6 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(a1[4] + 48) endDate:*(a1[4] + 56)];
  v7 = FISampleQuantityInsideDateInterval(v17, v6, 0);

  v8 = [*(*(a1[6] + 8) + 40) _quantityByAddingQuantity:v7];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(*(a1[6] + 8) + 40) hk_isGreaterThanQuantity:a1[5]];
  v12 = a1[5];
  v13 = *(a1[6] + 8);
  if (v11)
  {
    v14 = FIThresholdDateInsideSample(v17, *(v13 + 40), v12, 1);
  }

  else
  {
    if ([*(v13 + 40) compare:v12])
    {
      goto LABEL_6;
    }

    v14 = [v17 startDate];
  }

  v15 = *(a1[7] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  *a4 = 1;
LABEL_6:
}

- (id)_totalByCommittingSample:(id)sample toPreviousTotal:(id)total startDate:(id)date endDate:(id)endDate
{
  v9 = MEMORY[0x277CCA970];
  endDateCopy = endDate;
  dateCopy = date;
  totalCopy = total;
  sampleCopy = sample;
  v14 = [[v9 alloc] initWithStartDate:dateCopy endDate:endDateCopy];

  v18 = 0;
  v15 = FISampleQuantityInsideDateInterval(sampleCopy, v14, &v18);

  v16 = [totalCopy _quantityByAddingQuantity:v15];

  return v16;
}

- (id)_commitingSamples:(id)samples toPreviousCommittedTotal:(id)total toPreviousCommittedSamples:(id)committedSamples untilDate:(id)date startDate:(id)startDate endDate:(id)endDate
{
  samplesCopy = samples;
  totalCopy = total;
  committedSamplesCopy = committedSamples;
  dateCopy = date;
  startDateCopy = startDate;
  endDateCopy = endDate;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy_;
  v63 = __Block_byref_object_dispose_;
  v34 = totalCopy;
  v64 = v34;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v20 = committedSamplesCopy;
  v50 = v20;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __147__FITrailingQuantityTimeSlice_SampleProcessing___commitingSamples_toPreviousCommittedTotal_toPreviousCommittedSamples_untilDate_startDate_endDate___block_invoke;
  v35[3] = &unk_279004818;
  v40 = &v45;
  v41 = &v51;
  v21 = dateCopy;
  v36 = v21;
  v22 = startDateCopy;
  v37 = v22;
  v23 = endDateCopy;
  v38 = v23;
  selfCopy = self;
  v42 = &v59;
  v43 = &v65;
  v44 = &v55;
  [samplesCopy enumerateObjectsUsingBlock:v35];
  v24 = v66[3];
  v25 = [samplesCopy count];
  v26 = [samplesCopy subarrayWithRange:{v24, v25 - v66[3]}];
  if (*(v52 + 24) == 1)
  {
    v27 = FISortSamplesByDate(v46[5]);
    v28 = v46[5];
    v46[5] = v27;
  }

  v29 = [FITrailingQuantityTimeSlice alloc];
  quantityType = [(FITrailingQuantityTimeSlice *)self quantityType];
  LOBYTE(v33) = *(v56 + 24);
  v31 = [(FITrailingQuantityTimeSlice *)v29 initWithQuantityType:quantityType startDate:v22 endDate:v23 committedSamples:v46[5] uncommittedSamples:v26 lastCommitDate:v21 committedTotal:v60[5] finalized:v33];

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);

  _Block_object_dispose(&v65, 8);

  return v31;
}

void __147__FITrailingQuantityTimeSlice_SampleProcessing___commitingSamples_toPreviousCommittedTotal_toPreviousCommittedSamples_untilDate_startDate_endDate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 endDate];
  v8 = [*(*(*(a1 + 64) + 8) + 40) lastObject];
  v9 = [v8 endDate];
  v10 = [v7 hk_isBeforeDate:v9];

  if (v10)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v28 = v6;
  v14 = v11;
  v15 = v13;
  if ([v28 fi_isBeforeDate:v12] & 1) != 0 || (objc_msgSend(v28, "fi_isAfterDate:", v15))
  {

LABEL_6:
    ++*(*(*(a1 + 88) + 8) + 24);
    goto LABEL_7;
  }

  if (([v28 fi_isAfterDate:v14] & 1) == 0)
  {
    if ([v28 fi_spansDate:v15 useStrictDateLimits:0])
    {

      v16 = [*(a1 + 56) _totalByCommittingSample:v28 toPreviousTotal:*(*(*(a1 + 80) + 8) + 40) startDate:*(a1 + 40) endDate:*(a1 + 48)];
      v17 = *(*(a1 + 80) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v19 = [*(*(*(a1 + 64) + 8) + 40) arrayByAddingObject:v28];
      v20 = *(*(a1 + 64) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      *(*(*(a1 + 96) + 8) + 24) = 1;
      goto LABEL_6;
    }

    if (([v28 fi_spansDate:v14 useStrictDateLimits:1] & 1) == 0)
    {

      v22 = [*(a1 + 56) _totalByCommittingSample:v28 toPreviousTotal:*(*(*(a1 + 80) + 8) + 40) startDate:*(a1 + 40) endDate:*(a1 + 48)];
      v23 = *(*(a1 + 80) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      v25 = [*(*(*(a1 + 64) + 8) + 40) arrayByAddingObject:v28];
      v26 = *(*(a1 + 64) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      goto LABEL_6;
    }
  }

  *a4 = 1;
LABEL_7:
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  if ([(FITrailingQuantityTimeSlice *)self finalized])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  quantityType = [(FITrailingQuantityTimeSlice *)self quantityType];
  startDate = [(FITrailingQuantityTimeSlice *)self startDate];
  endDate = [(FITrailingQuantityTimeSlice *)self endDate];
  v8 = [(NSArray *)self->_committedSamples count];
  v9 = [(NSArray *)self->_uncommittedSamples count];
  lastCommitDate = self->_lastCommitDate;
  committedTotal = self->_committedTotal;
  [(FITrailingQuantityTimeSlice *)self committedDuration];
  v13 = [v15 stringWithFormat:@"<%@:%p, finalized:%@, quantityType:%@, startDate:%@, endDate:%@, numCommittedSamples:%lu, numUncommittedSamples:%lu, lastCommitDate:%@, commitedTotal:%@ committedDuration:%lu>", v3, self, v4, quantityType, startDate, endDate, v8, v9, lastCommitDate, committedTotal, v12];

  return v13;
}

@end