@interface HDQuantitySampleOverlapProcessor
- ($7E97422C0B66563CE51BF44A8D77708E)exportCurrentState;
- (BOOL)fetchFinalOverlapSamplesWithErrorOut:(id *)a3 handler:(id)a4;
- (BOOL)fetchOverlapProcessSamplesFrom:(id *)a3 setAnchorTime:(BOOL)a4 errorOut:(id *)a5 handler:(id)a6;
- (HDQuantitySampleOverlapProcessor)initWithOverlapFunction:(unint64_t)a3;
- (HDQuantitySampleOverlapProcessor)initWithState:(id *)a3;
- (double)_overlapSampleToEdge:(double)result;
- (int64_t)addSample:(id *)a3 outputSamples:(id)a4[8] error:(id *)a5;
- (int64_t)finishWithRemainingSamples:(id)a3[8] error:(id *)a4;
@end

@implementation HDQuantitySampleOverlapProcessor

- (HDQuantitySampleOverlapProcessor)initWithOverlapFunction:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HDQuantitySampleOverlapProcessor;
  result = [(HDQuantitySampleOverlapProcessor *)&v5 init];
  if (result)
  {
    result->_anchorTime = 0.0;
    result->_workingSetCount = 0;
    result->_overlapFunction = a3;
    result->_loggedDuplicatedSample = 0;
  }

  return result;
}

- (HDQuantitySampleOverlapProcessor)initWithState:(id *)a3
{
  v11.receiver = self;
  v11.super_class = HDQuantitySampleOverlapProcessor;
  result = [(HDQuantitySampleOverlapProcessor *)&v11 init];
  if (result)
  {
    result->_overlapFunction = a3->var1;
    result->_anchorTime = a3->var0;
    var2 = a3->var2;
    result->_workingSetCount = var2;
    result->_loggedDuplicatedSample = a3->var3;
    if (var2 >= 1)
    {
      v6 = 0;
      workingSet = result->_workingSet;
      var4 = a3->var4;
      do
      {
        v9 = *&var4->var0;
        v10 = *&var4->var2;
        workingSet->sourceID = var4->var4;
        *&workingSet->startTime = v9;
        *&workingSet->sampleValue = v10;
        ++v6;
        ++var4;
        ++workingSet;
      }

      while (v6 < a3->var2);
    }
  }

  return result;
}

- ($7E97422C0B66563CE51BF44A8D77708E)exportCurrentState
{
  bzero(&retstr->var3, 0x1408uLL);
  retstr->var0 = self->_anchorTime;
  workingSetCount = self->_workingSetCount;
  retstr->var1 = self->_overlapFunction;
  retstr->var2 = workingSetCount;
  retstr->var3 = self->_loggedDuplicatedSample;
  if (workingSetCount >= 1)
  {

    return memcpy(retstr->var4, self->_workingSet, 40 * workingSetCount);
  }

  return result;
}

- (int64_t)addSample:(id *)a3 outputSamples:(id)a4[8] error:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  workingSetCount = self->_workingSetCount;
  if (workingSetCount < 1)
  {
    goto LABEL_24;
  }

  v10 = (self + 40 * workingSetCount);
  var0 = a3->var0;
  var1 = a3->var1;
  v14 = *v10 == a3->var0 && *(&self->_overlapFunction + 5 * workingSetCount) == var1 && v10[2] == a3->var2;
  if (v14 && *(v10 + 24) == a3->var3)
  {
    if (self->_loggedDuplicatedSample)
    {
      unitTesting_DuplicateSampleError = self->_unitTesting_DuplicateSampleError;
      self->_unitTesting_DuplicateSampleError = 0;
    }

    else
    {
      v29 = [MEMORY[0x277CCA9B8] hk_error:115 description:@"Received duplicate quantity sample"];
      objc_storeStrong(&self->_unitTesting_DuplicateSampleError, v29);
      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v34) = 138543362;
        *(&v34 + 4) = v29;
        _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "Failed to process overlapping samples: %{public}@", &v34, 0xCu);
      }

      self->_loggedDuplicatedSample = 1;
    }

    goto LABEL_36;
  }

  if (workingSetCount == 1)
  {
    endTime = self->_workingSet[0].endTime;
    if (endTime > var0)
    {
      if (vabdd_f64(endTime, var0) > 0.000001 || var1 - var0 <= 0.000001)
      {
        goto LABEL_24;
      }

LABEL_23:
      a4->var0 = self->_anchorTime;
      a4->var1 = endTime;
      a4->var2 = self->_workingSet[0].sampleValue;
      a4->var3 = self->_workingSet[0].shouldContributeToCount;
      a4->var4 = self->_workingSet[0].sourceID;
      self->_anchorTime = a3->var0;
      v19 = *&a3->var0;
      v20 = *&a3->var2;
      self->_workingSet[0].sourceID = a3->var4;
      *&self->_workingSet[0].startTime = v19;
      *&self->_workingSet[0].sampleValue = v20;
      v21 = 1;
      goto LABEL_41;
    }

    if (var1 - var0 > 0.000001)
    {
      goto LABEL_23;
    }
  }

  else if (workingSetCount >= 0x80)
  {
    v17 = [MEMORY[0x277CCA9B8] hk_error:130 description:@"Overlap processing exceeded working set size."];
    if (v17)
    {
      if (a5)
      {
        v18 = v17;
        *a5 = v17;
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
      LODWORD(v34) = 138543362;
      *(&v34 + 4) = v17;
      _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "Failed to process overlapping samples: %{public}@", &v34, 0xCu);
    }

    v21 = -1;
    goto LABEL_41;
  }

LABEL_24:
  v22 = self + 40 * workingSetCount;
  self->_workingSetCount = workingSetCount + 1;
  v23 = *&a3->var0;
  v24 = *&a3->var2;
  *(v22 + 9) = a3->var4;
  *(v22 + 56) = v24;
  *(v22 + 40) = v23;
  v25 = a3->var0;
  if (self->_anchorTime >= a3->var0)
  {
LABEL_36:
    v21 = 0;
    goto LABEL_41;
  }

  v21 = 0;
  do
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    [(HDQuantitySampleOverlapProcessor *)&v34 _overlapSampleToEdge:v25];
    if (*(&v34 + 1) - *&v34 > 0.000001)
    {
      v26 = &a4[v21++];
      v27 = v35;
      *&v26->var0 = v34;
      *&v26->var2 = v27;
      v26->var4 = v36;
    }

    v25 = a3->var0;
  }

  while (self->_anchorTime < a3->var0 && v21 < 8);
LABEL_41:
  v32 = *MEMORY[0x277D85DE8];
  return v21;
}

- (double)_overlapSampleToEdge:(double)result
{
  if (a2)
  {
    v3 = *(a2 + 24);
    if (v3 < 1)
    {
      goto LABEL_36;
    }

    v4 = *(a2 + 16);
    v5 = (a2 + 48);
    v6 = *(a2 + 24);
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      if (v7 < result && v7 > v4)
      {
        result = *(v5 - 1);
      }

      if (v8 < result && v8 > v4)
      {
        result = *v5;
      }

      v5 += 5;
      --*&v6;
    }

    while (v6 != 0.0);
    v11 = 0.0;
    v12 = (a2 + 72);
    v13 = 1;
    v14 = -1.79769313e308;
    v15 = 1.79769313e308;
    v16 = *(a2 + 24);
    v17 = 1;
    do
    {
      if (*(v12 - 4) <= v4 && *(v12 - 3) >= result)
      {
        v18 = *(v12 - 2);
        if (v15 >= v18)
        {
          v15 = *(v12 - 2);
        }

        if (v14 < v18)
        {
          v14 = *(v12 - 2);
        }

        if (v15 == v18)
        {
          v6 = *v12;
          v13 = *(v12 - 8);
        }

        if (v14 == v18)
        {
          v11 = *v12;
          v17 = *(v12 - 8);
        }
      }

      v12 += 5;
      --v16;
    }

    while (v16);
    if (v15 >= 1.79769313e308)
    {
LABEL_36:
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    else
    {
      v19 = *(a2 + 8);
      if (v19 != 1)
      {
        v14 = 0.0;
        if (v19)
        {
          v11 = 0.0;
        }

        else
        {
          v14 = v15;
          v11 = v6;
        }

        if (v19)
        {
          v17 = 1;
        }

        else
        {
          v17 = v13;
        }
      }

      *a1 = v4;
      *(a1 + 8) = result;
      *(a1 + 16) = v14;
      *(a1 + 24) = 0;
      *(a1 + 32) = v11;
      *(a1 + 24) = v17 & 1;
    }

    if (v3 >= 1)
    {
      v20 = 0;
      v21 = a2 + 40;
      do
      {
        v22 = v21 + 40 * v20;
        if (*(v22 + 8) <= result)
        {
          v23 = v21 + 40 * v3;
          v24 = *(v23 - 40);
          v25 = *(v23 - 24);
          *(v22 + 32) = *(v23 - 8);
          *v22 = v24;
          *(v22 + 16) = v25;
          v3 = *(a2 + 24) - 1;
          *(a2 + 24) = v3;
        }

        else
        {
          ++v20;
        }
      }

      while (v20 < v3);
    }

    *(a2 + 16) = result;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

- (int64_t)finishWithRemainingSamples:(id)a3[8] error:(id *)a4
{
  if (self->_workingSetCount < 1)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    [(HDQuantitySampleOverlapProcessor *)&v11 _overlapSampleToEdge:1.79769313e308];
    if (*(&v11 + 1) - *&v11 > 0.000001)
    {
      v7 = &a3[v6++];
      v8 = v12;
      *&v7->var0 = v11;
      *&v7->var2 = v8;
      v7->var4 = v13;
    }
  }

  while (self->_workingSetCount >= 1 && v6 < 8);
  return v6;
}

- (BOOL)fetchOverlapProcessSamplesFrom:(id *)a3 setAnchorTime:(BOOL)a4 errorOut:(id *)a5 handler:(id)a6
{
  v7 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v10 = a6;
  if (v7)
  {
    [(HDQuantitySampleOverlapProcessor *)self resetAnchorTime:a3->var0];
  }

  v24 = 0;
  v11 = *&a3->var2;
  v22[0] = *&a3->var0;
  v22[1] = v11;
  var4 = a3->var4;
  v12 = [(HDQuantitySampleOverlapProcessor *)self addSample:v22 outputSamples:v25 error:&v24];
  v13 = v24;
  v14 = v13;
  if (v12 == -1)
  {
    v16 = v13;
    if (!v16)
    {
LABEL_12:

      v17 = 0;
      goto LABEL_13;
    }

    if (!a5)
    {
LABEL_11:
      _HKLogDroppedError();
      goto LABEL_12;
    }

LABEL_8:
    v18 = v16;
    *a5 = v16;
    goto LABEL_12;
  }

  v21 = v13;
  v15 = v10[2](v10, v12, v25, &v21);
  v16 = v21;

  if ((v15 & 1) == 0)
  {
    v16 = v16;
    if (!v16)
    {
      goto LABEL_12;
    }

    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v17 = 1;
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)fetchFinalOverlapSamplesWithErrorOut:(id *)a3 handler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = 0;
  while (1)
  {
    v16 = v7;
    v8 = [(HDQuantitySampleOverlapProcessor *)self finishWithRemainingSamples:v17 error:&v16];
    v9 = v16;

    if (!v8)
    {
      break;
    }

    if (v8 == -1)
    {
      v9 = v9;
      if (v9)
      {
        if (a3)
        {
          goto LABEL_10;
        }

LABEL_7:
        _HKLogDroppedError();
      }

LABEL_11:

      v12 = 0;
      goto LABEL_13;
    }

    v15 = v9;
    v10 = v6[2](v6, v8, v17, &v15);
    v7 = v15;

    if ((v10 & 1) == 0)
    {
      v9 = v7;
      if (v9)
      {
        if (!a3)
        {
          goto LABEL_7;
        }

LABEL_10:
        v11 = v9;
        *a3 = v9;
      }

      goto LABEL_11;
    }
  }

  v12 = 1;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end