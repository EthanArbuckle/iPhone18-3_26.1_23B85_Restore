@interface FIQuantityTimeSlice
- (FIQuantityTimeSlice)initWithQuantityType:(id)a3 startDate:(id)a4;
- (FIQuantityTimeSlice)initWithQuantityType:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (FIQuantityTimeSlice)initWithQuantityType:(id)a3 startDate:(id)a4 endDate:(id)a5 uncommitedSamples:(id)a6 lastCommitDate:(id)a7 committedTotal:(id)a8 finalized:(BOOL)a9;
- (HKQuantity)committedAndAddedTotal;
- (id)_commitingSamples:(id)a3 toPreviousCommittedTotal:(id)a4 untilDate:(id)a5 startDate:(id)a6 endDate:(id)a7;
- (id)_totalByCommittingSample:(id)a3 toPreviousTotal:(id)a4 startDate:(id)a5 endDate:(id)a6;
- (id)addingSample:(id)a3 error:(id *)a4;
- (id)addingSamples:(id)a3 error:(id *)a4;
- (id)description;
- (id)settingEndDate:(id)a3;
@end

@implementation FIQuantityTimeSlice

- (FIQuantityTimeSlice)initWithQuantityType:(id)a3 startDate:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 distantFuture];
  v10 = [(FIQuantityTimeSlice *)self initWithQuantityType:v8 startDate:v7 endDate:v9];

  return v10;
}

- (FIQuantityTimeSlice)initWithQuantityType:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v8 = MEMORY[0x277CBEAA8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 distantPast];
  v13 = MEMORY[0x277CCD7E8];
  v14 = [v11 canonicalUnit];
  v15 = [v13 quantityWithUnit:v14 doubleValue:0.0];
  LOBYTE(v18) = 0;
  v16 = [(FIQuantityTimeSlice *)self initWithQuantityType:v11 startDate:v10 endDate:v9 uncommitedSamples:MEMORY[0x277CBEBF8] lastCommitDate:v12 committedTotal:v15 finalized:v18];

  return v16;
}

- (FIQuantityTimeSlice)initWithQuantityType:(id)a3 startDate:(id)a4 endDate:(id)a5 uncommitedSamples:(id)a6 lastCommitDate:(id)a7 committedTotal:(id)a8 finalized:(BOOL)a9
{
  v16 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = FIQuantityTimeSlice;
  v19 = [(FIQuantityTimeSlice *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_quantityType, a3);
    objc_storeStrong(&v20->_startDate, a4);
    objc_storeStrong(&v20->_endDate, a5);
    objc_storeStrong(&v20->_uncommittedSamples, a6);
    objc_storeStrong(&v20->_lastCommitDate, a7);
    objc_storeStrong(&v20->_committedTotal, a8);
    v20->_finalized = a9;
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

- (id)addingSamples:(id)a3 error:(id *)a4
{
  v5 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__5;
  v14[4] = __Block_byref_object_dispose__5;
  v15 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__FIQuantityTimeSlice_addingSamples_error___block_invoke;
  v9[3] = &unk_279005080;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = v14;
  [v5 enumerateObjectsUsingBlock:v9];
  if (*(v11 + 24) == 1)
  {
    v6 = [(NSArray *)self->_uncommittedSamples arrayByAddingObjectsFromArray:v5];
    v7 = [(FIQuantityTimeSlice *)self _commitingSamples:v6 toPreviousCommittedTotal:self->_committedTotal untilDate:self->_lastCommitDate startDate:self->_startDate endDate:self->_endDate];
  }

  else
  {
    v7 = self;
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(v14, 8);

  return v7;
}

void __43__FIQuantityTimeSlice_addingSamples_error___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  v10 = *(v7 + 24);
  v11 = *(a1[6] + 8);
  obj = *(v11 + 40);
  v12 = _ValidateSample_0(a2, v8, v9, v10, &obj);
  objc_storeStrong((v11 + 40), obj);
  *(*(a1[5] + 8) + 24) = v12;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (id)addingSample:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (_ValidateSample_0(v6, self->_startDate, self->_endDate, self->_finalized, a4))
  {
    v7 = [(NSArray *)self->_uncommittedSamples arrayByAddingObject:v6];
    v8 = [(FIQuantityTimeSlice *)self _commitingSamples:v7 toPreviousCommittedTotal:self->_committedTotal untilDate:self->_lastCommitDate startDate:self->_startDate endDate:self->_endDate];
  }

  else
  {
    v8 = self;
  }

  return v8;
}

- (id)settingEndDate:(id)a3
{
  v4 = a3;
  v5 = [FIQuantityTimeSlice alloc];
  LOBYTE(v9) = self->_finalized;
  v6 = [(FIQuantityTimeSlice *)v5 initWithQuantityType:self->_quantityType startDate:self->_startDate endDate:v4 uncommitedSamples:self->_uncommittedSamples lastCommitDate:self->_lastCommitDate committedTotal:self->_committedTotal finalized:v9];
  v7 = [(FIQuantityTimeSlice *)v6 committingUntilDate:v4];

  return v7;
}

- (id)_totalByCommittingSample:(id)a3 toPreviousTotal:(id)a4 startDate:(id)a5 endDate:(id)a6
{
  v9 = MEMORY[0x277CCA970];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[v9 alloc] initWithStartDate:v11 endDate:v10];

  v18 = 0;
  v15 = FISampleQuantityInsideDateInterval(v13, v14, &v18);

  v16 = [v12 _quantityByAddingQuantity:v15];

  return v16;
}

- (id)_commitingSamples:(id)a3 toPreviousCommittedTotal:(id)a4 untilDate:(id)a5 startDate:(id)a6 endDate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__5;
  v48 = __Block_byref_object_dispose__5;
  v17 = v13;
  v49 = v17;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __112__FIQuantityTimeSlice_SampleProcessing___commitingSamples_toPreviousCommittedTotal_untilDate_startDate_endDate___block_invoke;
  v32 = &unk_2790050A8;
  v18 = v14;
  v33 = v18;
  v19 = v15;
  v34 = v19;
  v20 = v16;
  v35 = v20;
  v36 = self;
  v37 = &v44;
  v38 = &v50;
  v39 = &v40;
  [v12 enumerateObjectsUsingBlock:&v29];
  v21 = v51[3];
  v22 = [v12 count];
  v23 = [v12 subarrayWithRange:{v21, v22 - v51[3]}];
  v24 = [FIQuantityTimeSlice alloc];
  v25 = [(FIQuantityTimeSlice *)self quantityType];
  LOBYTE(v28) = *(v41 + 24);
  v26 = [(FIQuantityTimeSlice *)v24 initWithQuantityType:v25 startDate:v19 endDate:v20 uncommitedSamples:v23 lastCommitDate:v18 committedTotal:v45[5] finalized:v28, v29, v30, v31, v32];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);

  return v26;
}

void __112__FIQuantityTimeSlice_SampleProcessing___commitingSamples_toPreviousCommittedTotal_untilDate_startDate_endDate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v17 = v6;
  v9 = v7;
  v10 = v8;
  if ([v17 fi_isAfterDate:v10])
  {

LABEL_3:
    ++*(*(*(a1 + 72) + 8) + 24);
    goto LABEL_6;
  }

  if (([v17 fi_isAfterDate:v9] & 1) == 0)
  {
    if ([v17 fi_spansDate:v10 useStrictDateLimits:0])
    {

      v11 = [*(a1 + 56) _totalByCommittingSample:v17 toPreviousTotal:*(*(*(a1 + 64) + 8) + 40) startDate:*(a1 + 40) endDate:*(a1 + 48)];
      v12 = *(*(a1 + 64) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      *(*(*(a1 + 80) + 8) + 24) = 1;
      goto LABEL_3;
    }

    if (([v17 fi_spansDate:v9 useStrictDateLimits:1] & 1) == 0)
    {

      v14 = [*(a1 + 56) _totalByCommittingSample:v17 toPreviousTotal:*(*(*(a1 + 64) + 8) + 40) startDate:*(a1 + 40) endDate:*(a1 + 48)];
      v15 = *(*(a1 + 64) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      goto LABEL_3;
    }
  }

  *a4 = 1;
LABEL_6:
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if ([(FIQuantityTimeSlice *)self finalized])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(FIQuantityTimeSlice *)self quantityType];
  v7 = [(FIQuantityTimeSlice *)self startDate];
  v8 = [(FIQuantityTimeSlice *)self endDate];
  v9 = [(NSArray *)self->_uncommittedSamples count];
  lastCommitDate = self->_lastCommitDate;
  v11 = [v3 stringWithFormat:@"<%@:%p, finalized:%@, quantityType:%@, startDate:%@, endDate:%@, numUncommitedSamples:%lu, lastCommitDate:%@, commitedTotal:%@>", v4, self, v5, v6, v7, v8, v9, lastCommitDate, self->_committedTotal];

  return v11;
}

@end