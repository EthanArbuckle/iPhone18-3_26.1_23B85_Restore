@interface HDQuantitySampleAttenuationProvider
- (HDQuantitySampleAttenuationProvider)initWithQuantityType:(id)a3 profile:(id)a4;
- (int64_t)loadAttenuationSamples:(id *)a3 anchorTime:(double)a4 errorOut:(id *)a5;
@end

@implementation HDQuantitySampleAttenuationProvider

- (HDQuantitySampleAttenuationProvider)initWithQuantityType:(id)a3 profile:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HDQuantitySampleAttenuationProvider;
  v9 = [(HDQuantitySampleAttenuationProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_quantityType, a3);
    objc_storeWeak(&v10->_profile, v8);
    v11 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:0];
    overlapProcessor = v10->_overlapProcessor;
    v10->_overlapProcessor = v11;
  }

  return v10;
}

- (int64_t)loadAttenuationSamples:(id *)a3 anchorTime:(double)a4 errorOut:(id *)a5
{
  v50[3] = *MEMORY[0x277D85DE8];
  [(HDQuantitySampleOverlapProcessor *)self->_overlapProcessor resetAnchorTime:?];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a4];
  v37 = HDSampleEntityPredicateForDataType(self->_quantityType);
  v36 = HDSampleEntityPredicateForEndDate(5);
  v38 = [(HKQuantityType *)self->_quantityType _earliestAllowedStartDateForSampleOverlappingDate:v8];
  v9 = HDSampleEntityPredicateForStartDate(5);
  v10 = MEMORY[0x277D10B20];
  v50[0] = v37;
  v50[1] = v36;
  v50[2] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];
  v12 = [v10 predicateMatchingAllPredicates:v11];

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v40[7] = a3;
  v41 = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __82__HDQuantitySampleAttenuationProvider_loadAttenuationSamples_anchorTime_errorOut___block_invoke;
  v40[3] = &unk_27861AA80;
  *&v40[6] = a4;
  v40[4] = self;
  v40[5] = &v42;
  LOBYTE(v11) = [HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:v12 profile:WeakRetained options:4 error:&v41 handler:v40];
  v14 = v41;

  if ((v11 & 1) == 0)
  {
    v25 = v14;
    v26 = v25;
    if (v25)
    {
      if (a5)
      {
        v27 = v25;
        *a5 = v26;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v31 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v49 = v26;
      _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "Unable to fetch hearing protection samples: %{public}@", buf, 0xCu);
    }

LABEL_26:
    v15 = -1;
    goto LABEL_27;
  }

  v15 = v43[3];
  if (v15 <= 1023)
  {
    v16 = 0;
    while (1)
    {
      overlapProcessor = self->_overlapProcessor;
      v39 = v16;
      v18 = [(HDQuantitySampleOverlapProcessor *)overlapProcessor finishWithRemainingSamples:buf error:&v39];
      v19 = v39;

      if (v18 == -1)
      {
        break;
      }

      if (!v18)
      {

        v15 = v43[3];
        goto LABEL_27;
      }

      v16 = v19;
      if (v18 >= 1)
      {
        v20 = v43;
        v21 = v43[3];
        v22 = buf;
        do
        {
          if (v21 <= 1023)
          {
            v23 = &a3[v21];
            v24 = *(v22 + 1);
            *&v23->var0 = *v22;
            *&v23->var2 = v24;
            v23->var4 = *(v22 + 4);
            v21 = v20[3] + 1;
            v20[3] = v21;
          }

          v22 += 40;
          --v18;
        }

        while (v18);
        v16 = v19;
      }
    }

    v28 = v19;
    v29 = v28;
    if (v28)
    {
      if (a5)
      {
        v30 = v28;
        *a5 = v29;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      *v46 = 138543362;
      v47 = v29;
      _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "Unable to fetch hearing protection samples: %{public}@", v46, 0xCu);
    }

    goto LABEL_26;
  }

LABEL_27:
  _Block_object_dispose(&v42, 8);

  v33 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL __82__HDQuantitySampleAttenuationProvider_loadAttenuationSamples_anchorTime_errorOut___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) <= a6)
  {
    v16 = *(*(a1 + 32) + 24);
    v29[4] = 0;
    v30 = 0;
    *v29 = a5;
    *&v29[1] = a6;
    *&v29[2] = a4;
    v29[3] = 0;
    v17 = [v16 addSample:v29 outputSamples:v31 error:&v30];
    v18 = v30;
    v19 = v18;
    if (v17 == -1)
    {
      v25 = v18;
      if (v25)
      {
        if (a13)
        {
          v26 = v25;
          *a13 = v25;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v13 = 0;
    }

    else if (v17 < 1)
    {
      v13 = 1;
    }

    else
    {
      v20 = v31;
      do
      {
        v21 = *(*(*(a1 + 40) + 8) + 24);
        v13 = v21 < 1024;
        if (v21 > 1023)
        {
          break;
        }

        v22 = *(a1 + 56) + 40 * v21;
        v23 = *v20;
        v24 = *(v20 + 1);
        *(v22 + 32) = *(v20 + 4);
        *v22 = v23;
        *(v22 + 16) = v24;
        ++*(*(*(a1 + 40) + 8) + 24);
        v20 += 40;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v13 = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v13;
}

@end