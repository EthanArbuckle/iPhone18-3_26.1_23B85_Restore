@interface CVNLPActivationMatrix
- ($FD4688982923A924290ECB669CAF1EC2)_espressoBuffer;
- ($FD4688982923A924290ECB669CAF1EC2)_indexBuffer;
- (CVNLPActivationMatrix)initWithBuffer:(id *)buffer domainType:(int64_t)type characterObservations:(id)observations blankIndex:(int64_t)index pruningPolicy:(CVNLPTextDecodingPruningPolicy *)policy;
- (CVNLPActivationMatrix)initWithBuffer:(id *)buffer indexBuffer:(id *)indexBuffer domainType:(int64_t)type characterObservations:(id)observations blankIndex:(int64_t)index pruningPolicy:(CVNLPTextDecodingPruningPolicy *)policy;
- (CVNLPActivationMatrix)initWithMultiArray:(id)array domainType:(int64_t)type characterObservations:(id)observations blankIndex:(int64_t)index pruningPolicy:(CVNLPTextDecodingPruningPolicy *)policy;
- (CVNLPActivationMatrix)initWithMultiArray:(id)array indexArray:(id)indexArray domainType:(int64_t)type characterObservations:(id)observations blankIndex:(int64_t)index pruningPolicy:(CVNLPTextDecodingPruningPolicy *)policy;
- (double)_valueForObservationIndex:(int64_t)index timestep:(int64_t)timestep;
- (double)logProbabilityForBlankAtTimestep:(int64_t)timestep;
- (double)logProbabilityForObservationIndex:(int64_t)index timestep:(int64_t)timestep;
- (double)probabilityForBlankAtTimestep:(int64_t)timestep;
- (double)probabilityForObservationIndex:(int64_t)index timestep:(int64_t)timestep;
- (id)_candidateSymbolAtIndex:(int64_t)index forTimestep:(int64_t)timestep outputScore:(double *)score;
- (id)debugDescription;
- (id)topCandidateForTimestep:(int64_t)timestep outputLogProbability:(double *)probability outputIndex:(int64_t *)index;
- (id)topCandidateForTimestep:(int64_t)timestep outputProbability:(double *)probability outputIndex:(int64_t *)index;
- (int64_t)blankIndexForTimestep:(int64_t)timestep;
- (int64_t)characterIndexForObservationIndex:(int64_t)index timestep:(int64_t)timestep;
- (void)_enumerateNonBlankCandidatesInTimestep:(int64_t)timestep block:(id)block;
- (void)_sortNonBlankCandidatesForTimestep:(int64_t)timestep;
- (void)dealloc;
- (void)enumerateNonBlankCandidatesInTimestep:(int64_t)timestep block:(id)block;
- (void)set_espressoBuffer:(id *)buffer;
- (void)set_indexBuffer:(id *)buffer;
- (void)set_pruningPolicy:(CVNLPTextDecodingPruningPolicy *)policy;
@end

@implementation CVNLPActivationMatrix

- (CVNLPActivationMatrix)initWithBuffer:(id *)buffer domainType:(int64_t)type characterObservations:(id)observations blankIndex:(int64_t)index pruningPolicy:(CVNLPTextDecodingPruningPolicy *)policy
{
  observationsCopy = observations;
  var6 = buffer->var6;
  var8 = buffer->var8;
  v30.receiver = self;
  v30.super_class = CVNLPActivationMatrix;
  v16 = [(CVNLPActivationMatrix *)&v30 init];
  v17 = v16;
  if (v16)
  {
    v18 = *&buffer->var0;
    v19 = *&buffer->var2[2];
    *v16->$70B10377DC9035999D77C63B14D421A0::dim = *buffer->var2;
    *&v16->$70B10377DC9035999D77C63B14D421A0::dim[2] = v19;
    *&v16->$70B10377DC9035999D77C63B14D421A0::data = v18;
    v20 = *buffer->var3;
    v21 = *&buffer->var3[2];
    v22 = *&buffer->var6;
    *&v16->$70B10377DC9035999D77C63B14D421A0::width = *&buffer->var4;
    *&v16->$70B10377DC9035999D77C63B14D421A0::channels = v22;
    *v16->$70B10377DC9035999D77C63B14D421A0::stride = v20;
    *&v16->$70B10377DC9035999D77C63B14D421A0::stride[2] = v21;
    v23 = *&buffer->var8;
    v24 = *&buffer->var10;
    v25 = *&buffer->var12;
    *&v16->$70B10377DC9035999D77C63B14D421A0::storage_type = *&buffer->var14;
    *&v16->$70B10377DC9035999D77C63B14D421A0::stride_height = v24;
    *&v16->$70B10377DC9035999D77C63B14D421A0::stride_batch_number = v25;
    *&v16->$70B10377DC9035999D77C63B14D421A0::sequence_length = v23;
    v16->__doubleScoreMatrix = 0;
    v16->__timestepCount = var8;
    objc_storeStrong(&v16->_characterObservations, observations);
    v17->__observationCount = var6;
    v17->__timeStride = buffer->var13;
    var11 = buffer->var11;
    v17->_blankIndex = index;
    v17->__observationStride = var11;
    v17->__type = 1;
    v27 = *&policy->strategy;
    *&v17->__pruningPolicy.maxNumberOfCandidates = *&policy->maxNumberOfCandidates;
    *&v17->__pruningPolicy.strategy = v27;
    v17->__cachedPriorityQueueTimestep = -1;
    v17->_domainType = type;
    v17->__isDoubleDataType = 0;
    indexArray = v17->__indexArray;
    v17->__indexArray = 0;

    v17->__usingIndexes = 0;
    v17->__cachedBlankIndexTimestep = -1;
  }

  return v17;
}

- (CVNLPActivationMatrix)initWithBuffer:(id *)buffer indexBuffer:(id *)indexBuffer domainType:(int64_t)type characterObservations:(id)observations blankIndex:(int64_t)index pruningPolicy:(CVNLPTextDecodingPruningPolicy *)policy
{
  v9 = *&buffer->var12;
  v24[8] = *&buffer->var10;
  v24[9] = v9;
  v25 = *&buffer->var14;
  v10 = *&buffer->var4;
  v24[4] = *&buffer->var3[2];
  v24[5] = v10;
  v11 = *&buffer->var8;
  v24[6] = *&buffer->var6;
  v24[7] = v11;
  v12 = *buffer->var2;
  v24[0] = *&buffer->var0;
  v24[1] = v12;
  v13 = *buffer->var3;
  v24[2] = *&buffer->var2[2];
  v24[3] = v13;
  v23 = *policy;
  result = objc_msgSend_initWithBuffer_domainType_characterObservations_blankIndex_pruningPolicy_(self, a2, v24, type, observations, index, &v23);
  if (result)
  {
    v15 = *&indexBuffer->var0;
    v16 = *&indexBuffer->var2[2];
    *result->$70B10377DC9035999D77C63B14D421A0::dim = *indexBuffer->var2;
    *&result->$70B10377DC9035999D77C63B14D421A0::dim[2] = v16;
    *&result->$70B10377DC9035999D77C63B14D421A0::data = v15;
    v17 = *indexBuffer->var3;
    v18 = *&indexBuffer->var3[2];
    v19 = *&indexBuffer->var6;
    *&result->$70B10377DC9035999D77C63B14D421A0::width = *&indexBuffer->var4;
    *&result->$70B10377DC9035999D77C63B14D421A0::channels = v19;
    *result->$70B10377DC9035999D77C63B14D421A0::stride = v17;
    *&result->$70B10377DC9035999D77C63B14D421A0::stride[2] = v18;
    v20 = *&indexBuffer->var8;
    v21 = *&indexBuffer->var10;
    v22 = *&indexBuffer->var12;
    *&result->$70B10377DC9035999D77C63B14D421A0::storage_type = *&indexBuffer->var14;
    *&result->$70B10377DC9035999D77C63B14D421A0::stride_height = v21;
    *&result->$70B10377DC9035999D77C63B14D421A0::stride_batch_number = v22;
    *&result->$70B10377DC9035999D77C63B14D421A0::sequence_length = v20;
    result->__usingIndexes = indexBuffer->var0 != 0;
  }

  return result;
}

- (CVNLPActivationMatrix)initWithMultiArray:(id)array domainType:(int64_t)type characterObservations:(id)observations blankIndex:(int64_t)index pruningPolicy:(CVNLPTextDecodingPruningPolicy *)policy
{
  arrayCopy = array;
  observationsCopy = observations;
  v17 = objc_msgSend_shape(arrayCopy, v14, v15, v16);
  typeCopy = type;
  objc_msgSend_count(v17, v18, v19, v20);

  v24 = objc_msgSend_shape(arrayCopy, v21, v22, v23);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 1, v26);
  v31 = objc_msgSend_integerValue(v27, v28, v29, v30);

  v35 = objc_msgSend_shape(arrayCopy, v32, v33, v34);
  v38 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, 0, v37);
  v42 = objc_msgSend_integerValue(v38, v39, v40, v41);

  v73.receiver = self;
  v73.super_class = CVNLPActivationMatrix;
  v43 = [(CVNLPActivationMatrix *)&v73 init];
  v44 = v43;
  if (v43)
  {
    objc_storeStrong(&v43->__multiArray, array);
    v44->__timestepCount = v42;
    v44->__observationCount = v31;
    v48 = objc_msgSend_strides(arrayCopy, v45, v46, v47);
    v51 = objc_msgSend_objectAtIndexedSubscript_(v48, v49, 0, v50);
    v44->__timeStride = objc_msgSend_integerValue(v51, v52, v53, v54);

    v58 = objc_msgSend_strides(arrayCopy, v55, v56, v57);
    v61 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, 1, v60);
    v44->__observationStride = objc_msgSend_integerValue(v61, v62, v63, v64);

    objc_storeStrong(&v44->_characterObservations, observations);
    v44->_blankIndex = index;
    v44->__type = 0;
    v65 = *&policy->strategy;
    *&v44->__pruningPolicy.maxNumberOfCandidates = *&policy->maxNumberOfCandidates;
    *&v44->__pruningPolicy.strategy = v65;
    v44->__cachedPriorityQueueTimestep = -1;
    v44->_domainType = typeCopy;
    v44->__isDoubleDataType = objc_msgSend_dataType(v44->__multiArray, v66, v67, v68) == 65600;
    v44->__usingIndexes = 0;
    indexArray = v44->__indexArray;
    v44->__indexArray = 0;

    v44->__cachedBlankIndexTimestep = -1;
  }

  return v44;
}

- (CVNLPActivationMatrix)initWithMultiArray:(id)array indexArray:(id)indexArray domainType:(int64_t)type characterObservations:(id)observations blankIndex:(int64_t)index pruningPolicy:(CVNLPTextDecodingPruningPolicy *)policy
{
  indexArrayCopy = indexArray;
  v20 = *policy;
  v17 = objc_msgSend_initWithMultiArray_domainType_characterObservations_blankIndex_pruningPolicy_(self, v16, array, type, observations, index, &v20);
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 56), indexArray);
    v18->__usingIndexes = indexArrayCopy != 0;
  }

  return v18;
}

- (void)dealloc
{
  if (objc_msgSend__cachedTimesample(self, a2, v2, v3))
  {
    v8 = objc_msgSend__cachedTimesample(self, v5, v6, v7);
    v11 = v8;
    if (v8)
    {
      v12 = *(v8 + 40);
      if (v12)
      {
        *(v11 + 48) = v12;
        operator delete(v12);
      }

      v13 = *v11;
      if (*v11)
      {
        *(v11 + 8) = v13;
        operator delete(v13);
      }

      MEMORY[0x1DA741280](v11, 0x1020C40A634FBC0);
    }

    objc_msgSend_set_cachedTimesample_(self, v9, 0, v10);
  }

  v14.receiver = self;
  v14.super_class = CVNLPActivationMatrix;
  [(CVNLPActivationMatrix *)&v14 dealloc];
}

- (double)probabilityForObservationIndex:(int64_t)index timestep:(int64_t)timestep
{
  objc_msgSend__valueForObservationIndex_timestep_(self, a2, index, timestep);
  domainType = self->_domainType;
  if (domainType == 1)
  {
    return exp(result);
  }

  if (domainType)
  {
    return 0.0;
  }

  return result;
}

- (double)logProbabilityForObservationIndex:(int64_t)index timestep:(int64_t)timestep
{
  objc_msgSend__valueForObservationIndex_timestep_(self, a2, index, timestep);
  domainType = self->_domainType;
  if (domainType == 1)
  {
    return v5;
  }

  v7 = 0.0;
  if (!domainType)
  {
    return log(v5);
  }

  return v7;
}

- (double)_valueForObservationIndex:(int64_t)index timestep:(int64_t)timestep
{
  v4 = self->__observationStride * index + self->__timeStride * timestep;
  type = self->__type;
  if (type == 1)
  {
    return *(self->$70B10377DC9035999D77C63B14D421A0::data + v4);
  }

  result = 0.0;
  if (!type)
  {
    isDoubleDataType = self->__isDoubleDataType;
    v8 = objc_msgSend_dataPointer(self->__multiArray, a2, index, timestep, 0.0);
    if (isDoubleDataType)
    {
      return *(v8 + 8 * v4);
    }

    else
    {
      return *(v8 + 4 * v4);
    }
  }

  return result;
}

- (int64_t)blankIndexForTimestep:(int64_t)timestep
{
  if (!self->__usingIndexes)
  {
    return self->_blankIndex;
  }

  if (self->__cachedBlankIndexTimestep != timestep)
  {
    self->__cachedBlankIndex = -1;
    if (self->__observationCount >= 1)
    {
      v5 = 0;
      while (objc_msgSend_characterIndexForObservationIndex_timestep_(self, a2, v5, timestep) != self->_blankIndex)
      {
        if (++v5 >= self->__observationCount)
        {
          goto LABEL_10;
        }
      }

      self->__cachedBlankIndex = v5;
    }

LABEL_10:
    self->__cachedBlankIndexTimestep = timestep;
  }

  return self->__cachedBlankIndex;
}

- (double)probabilityForBlankAtTimestep:(int64_t)timestep
{
  v6 = objc_msgSend_blankIndexForTimestep_(self, a2, timestep, v3);
  if (v6 == -1)
  {
    return 0.01;
  }

  objc_msgSend_probabilityForObservationIndex_timestep_(self, v7, v6, timestep);
  return result;
}

- (double)logProbabilityForBlankAtTimestep:(int64_t)timestep
{
  v6 = objc_msgSend_blankIndexForTimestep_(self, a2, timestep, v3);
  if (v6 == -1)
  {
    return -4.60517019;
  }

  objc_msgSend_logProbabilityForObservationIndex_timestep_(self, v7, v6, timestep);
  return result;
}

- (int64_t)characterIndexForObservationIndex:(int64_t)index timestep:(int64_t)timestep
{
  if (self->__usingIndexes)
  {
    v4 = self->__observationStride * index + self->__timeStride * timestep;
    type = self->__type;
    if (type == 1)
    {
      return *(self->$70B10377DC9035999D77C63B14D421A0::data + v4);
    }

    if (!type)
    {
      isDoubleDataType = self->__isDoubleDataType;
      v7 = objc_msgSend_dataPointer(self->__indexArray, a2, index, timestep);
      if (isDoubleDataType)
      {
        return *(v7 + 8 * v4);
      }

      return *(v7 + 4 * v4);
    }
  }

  return index;
}

- (void)enumerateNonBlankCandidatesInTimestep:(int64_t)timestep block:(id)block
{
  blockCopy = block;
  if (self->__pruningPolicy.shouldSort && self->__cachedPriorityQueueTimestep != timestep && !self->__usingIndexes)
  {
    objc_msgSend__sortNonBlankCandidatesForTimestep_(self, v6, timestep, v7);
  }

  objc_msgSend__enumerateNonBlankCandidatesInTimestep_block_(self, v6, timestep, blockCopy);
}

- (id)_candidateSymbolAtIndex:(int64_t)index forTimestep:(int64_t)timestep outputScore:(double *)score
{
  if (self->__pruningPolicy.shouldSort && !self->__usingIndexes)
  {
    v17 = sub_1D9D9294C(self->__cachedTimesample);
    if (index >= ((v17[1] - *v17) >> 3))
    {
      sub_1D9D939A0();
    }

    v18 = (*v17 + 8 * index);
    *score = v18[1];
    v9 = *v18;
  }

  else
  {
    v9 = objc_msgSend_characterIndexForObservationIndex_timestep_(self, a2, index, timestep);
    objc_msgSend__valueForObservationIndex_timestep_(self, v10, index, timestep);
    *score = v13;
    if (v9 == -1)
    {
      v14 = 0;

      return v14;
    }
  }

  v14 = objc_msgSend_objectAtIndexedSubscript_(self->_characterObservations, v11, v9, v12);

  return v14;
}

- (void)_enumerateNonBlankCandidatesInTimestep:(int64_t)timestep block:(id)block
{
  blockCopy = block;
  v34 = 0;
  v10 = objc_msgSend_blankIndexForTimestep_(self, v7, timestep, v8);
  if (v10 != -1)
  {
    objc_msgSend__valueForObservationIndex_timestep_(self, v9, v10, timestep);
    v12 = v11;
    observationCount = self->__observationCount;
    if (!self->__pruningPolicy.shouldSort)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  domainType = self->_domainType;
  v15 = -4.60517019;
  if (domainType != 1)
  {
    v15 = 0.0;
  }

  if (domainType)
  {
    v12 = v15;
  }

  else
  {
    v12 = 0.01;
  }

  observationCount = self->__observationCount;
  if (self->__pruningPolicy.shouldSort)
  {
LABEL_10:
    if (!self->__usingIndexes)
    {
      v16 = sub_1D9D9294C(self->__cachedTimesample);
      observationCount = (v16[1] - *v16) >> 3;
    }
  }

LABEL_12:
  if (observationCount >= 1)
  {
    v17 = 0;
    v18 = 0;
    strategy = self->__pruningPolicy.strategy;
    while (1)
    {
      if (v18 >= self->__pruningPolicy.maxNumberOfCandidates || !strategy && v12 > self->__pruningPolicy.threshold)
      {
        goto LABEL_45;
      }

      if (v10 != v17 || self->__pruningPolicy.shouldSort && !self->__usingIndexes)
      {
        break;
      }

LABEL_16:
      if (observationCount == ++v17)
      {
        goto LABEL_45;
      }
    }

    v33 = 0.0;
    v21 = objc_msgSend__candidateSymbolAtIndex_forTimestep_outputScore_(self, v9, v17, timestep, &v33);
    if (!v21)
    {
      v20 = v12;
LABEL_15:

      v12 = v20;
      goto LABEL_16;
    }

    v23 = self->_domainType;
    v22.n128_f64[0] = v33;
    if (v23 == 1)
    {
      v20 = fmax(v12, v33);
      v25 = fmin(v12, v33);
      if (v25 >= -1021.0)
      {
        v26 = v33;
        v27 = exp(v25 - v20);
        v28 = log1p(v27);
        v22.n128_f64[0] = v26;
        v20 = v28 + v20;
      }
    }

    else if (v23)
    {
      v20 = v12;
    }

    else
    {
      v20 = v33 + v12;
    }

    if (strategy != 1 || v22.n128_f64[0] > self->__pruningPolicy.threshold)
    {
      blockCopy[2](blockCopy, v21, &v34, v22);
      ++v18;
      if (strategy != 1)
      {
        goto LABEL_36;
      }

      v23 = self->_domainType;
    }

    if (v23 == 1)
    {
      threshold = self->__pruningPolicy.threshold;
      v30 = fmax(v20, threshold);
      v31 = fmin(v20, threshold);
      if (v31 >= -1021.0)
      {
        v32 = exp(v31 - v30);
        v30 = log1p(v32) + v30;
      }

      v24 = v30 > 0.0;
      if (v34)
      {
LABEL_44:

        goto LABEL_45;
      }

      goto LABEL_43;
    }

    if (!v23)
    {
      v24 = v20 + self->__pruningPolicy.threshold > 1.0;
      if (v34)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

LABEL_36:
    v24 = 0;
    if (v34)
    {
      goto LABEL_44;
    }

LABEL_43:
    if (v24)
    {
      goto LABEL_44;
    }

    goto LABEL_15;
  }

LABEL_45:
}

- (void)_sortNonBlankCandidatesForTimestep:(int64_t)timestep
{
  cachedTimesample = self->__cachedTimesample;
  if (cachedTimesample)
  {
    v5 = cachedTimesample[5];
    if (v5)
    {
      cachedTimesample[6] = v5;
      operator delete(v5);
    }

    v6 = *cachedTimesample;
    if (*cachedTimesample)
    {
      cachedTimesample[1] = v6;
      operator delete(v6);
    }

    MEMORY[0x1DA741280](cachedTimesample, 0x1020C40A634FBC0, timestep);
    self->__cachedPriorityQueueTimestep = -1;
    self->__cachedTimesample = 0;
  }

  operator new();
}

- (id)topCandidateForTimestep:(int64_t)timestep outputLogProbability:(double *)probability outputIndex:(int64_t *)index
{
  if (self->__usingIndexes)
  {
    if (probability)
    {
      objc_msgSend_logProbabilityForObservationIndex_timestep_(self, a2, 0, timestep);
      *probability = v9;
    }

    blankIndex = objc_msgSend_characterIndexForObservationIndex_timestep_(self, a2, 0, timestep);
    if (index)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (self->__cachedPriorityQueueTimestep == timestep)
  {
    cachedTimesample = self->__cachedTimesample;
    if (cachedTimesample)
    {
      if (*(self->__cachedTimesample + 1) != *cachedTimesample)
      {
        objc_msgSend_logProbabilityForBlankAtTimestep_(self, a2, timestep, probability);
        v17 = *self->__cachedTimesample;
        blankIndex = *v17;
        v18 = v17[1];
        domainType = self->_domainType;
        if (domainType != 1)
        {
          if (domainType)
          {
            goto LABEL_39;
          }

          v20 = v16;
          v18 = logf(v18);
          v16 = v20;
        }

        v21 = 0.0;
        if (v16 != 0.0)
        {
          v21 = 1.0;
        }

        if (v18 > v21)
        {
          if (!probability)
          {
            goto LABEL_37;
          }

          v22 = v18;
          goto LABEL_36;
        }

LABEL_39:
        if (probability)
        {
          if (v16 != 0.0)
          {
            v16 = 1.0;
          }

          *probability = v16;
        }

        blankIndex = self->_blankIndex;
        if (index)
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      }
    }
  }

  v26 = objc_msgSend_blankIndexForTimestep_(self, a2, timestep, probability);
  if (v26 == -1)
  {
    v28 = 0.01;
    if (objc_msgSend_observationCount(self, v23, v24, v25) < 1)
    {
      goto LABEL_33;
    }
  }

  else
  {
    objc_msgSend_probabilityForObservationIndex_timestep_(self, v23, v26, timestep);
    v28 = v27;
    if (objc_msgSend_observationCount(self, v29, v30, v31) < 1)
    {
      goto LABEL_33;
    }
  }

  if (v28 < 1.0 - v28)
  {
    v33 = 0;
    blankIndex = v26;
    v34 = v28;
    do
    {
      if (v26 != v33)
      {
        objc_msgSend_probabilityForObservationIndex_timestep_(self, v10, v33, timestep);
        v36 = v35 <= v34;
        v34 = fmax(v35, v34);
        if (!v36)
        {
          blankIndex = v33;
        }

        v28 = v35 + v28;
      }

      ++v33;
    }

    while (v33 < objc_msgSend_observationCount(self, v10, v32, v11) && v34 < 1.0 - v28);
    goto LABEL_34;
  }

LABEL_33:
  v34 = v28;
  blankIndex = v26;
LABEL_34:
  if (!probability)
  {
    goto LABEL_37;
  }

  v22 = log(v34);
LABEL_36:
  *probability = v22;
LABEL_37:
  if (index)
  {
LABEL_5:
    *index = blankIndex;
  }

LABEL_6:
  v13 = objc_msgSend_objectAtIndexedSubscript_(self->_characterObservations, v10, blankIndex, v11);

  return v13;
}

- (id)topCandidateForTimestep:(int64_t)timestep outputProbability:(double *)probability outputIndex:(int64_t *)index
{
  __x = 0.0;
  v6 = objc_msgSend_topCandidateForTimestep_outputLogProbability_outputIndex_(self, a2, timestep, &__x, index);
  if (probability)
  {
    v7 = v6;
    v8 = exp(__x);
    v6 = v7;
    *probability = v8;
  }

  return v6;
}

- (id)debugDescription
{
  v5 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3);
  objc_msgSend_appendFormat_(v5, v6, @"Activation Matrix with %ld timesteps, %ld observations \n", v7, self->__timestepCount, self->__observationCount);
  if (self->__timestepCount >= 1)
  {
    objc_msgSend_logProbabilityForBlankAtTimestep_(self, v8, 0, v9);
    v11 = v10;
    v38 = -1;
    v39 = 0;
    v13 = objc_msgSend_topCandidateForTimestep_outputLogProbability_outputIndex_(self, v12, 0, &v39, &v38);
    v16 = v13;
    if (v38 == self->_blankIndex)
    {
      v17 = @"<B>";
      objc_msgSend_appendFormat_(v5, v14, @"\t t%ld, <B>:%.2f [%ld], sym=%@:%.2f [%ld]\n", v15, 0, v11, v38, @"<B>", v39, v38);
    }

    else
    {
      v17 = sub_1D9D9FF48(v13);
      objc_msgSend_appendFormat_(v5, v18, @"\t t%ld, <B>:%.2f [%ld], sym=%@:%.2f [%ld]\n", v19, 0, v11, self->_blankIndex, v17, v39, v38);
    }

    if (self->__timestepCount >= 2)
    {
      v22 = 1;
      objc_msgSend_logProbabilityForBlankAtTimestep_(self, v20, 1, v21);
      while (1)
      {
        v28 = v24;
        v38 = -1;
        v39 = 0;
        v29 = objc_msgSend_topCandidateForTimestep_outputLogProbability_outputIndex_(self, v23, v22, &v39, &v38);
        v32 = v29;
        blankIndex = self->_blankIndex;
        if (v22 == self->__timestepCount - 1 || v38 != blankIndex)
        {
          if (v38 == blankIndex)
          {
            v25 = @"<B>";
            objc_msgSend_appendFormat_(v5, v30, @"\t t%ld, <B>:%.2f [%ld], sym=%@:%.2f [%ld]\n", v31, v22, v28, v38, @"<B>", v39, v38);
          }

          else
          {
            v25 = sub_1D9D9FF48(v29);
            objc_msgSend_appendFormat_(v5, v35, @"\t t%ld, <B>:%.2f [%ld], sym=%@:%.2f [%ld]\n", v36, v22, v28, self->_blankIndex, v25, v39, v38);
          }
        }

        if (++v22 >= self->__timestepCount)
        {
          break;
        }

        objc_msgSend_logProbabilityForBlankAtTimestep_(self, v26, v22, v27);
      }
    }
  }

  return v5;
}

- ($FD4688982923A924290ECB669CAF1EC2)_espressoBuffer
{
  v3 = *&self[1].var11;
  *&retstr->var10 = *&self[1].var9;
  *&retstr->var12 = v3;
  *&retstr->var14 = self[1].var13;
  v4 = *&self[1].var3[3];
  *&retstr->var3[2] = *&self[1].var3[1];
  *&retstr->var4 = v4;
  v5 = *&self[1].var7;
  *&retstr->var6 = *&self[1].var5;
  *&retstr->var8 = v5;
  v6 = *&self[1].var1;
  *&retstr->var0 = *&self->var14;
  *retstr->var2 = v6;
  v7 = *&self[1].var2[3];
  *&retstr->var2[2] = *&self[1].var2[1];
  *retstr->var3 = v7;
  return self;
}

- (void)set_espressoBuffer:(id *)buffer
{
  v3 = *&buffer->var0;
  v4 = *&buffer->var2[2];
  *self->$70B10377DC9035999D77C63B14D421A0::dim = *buffer->var2;
  *&self->$70B10377DC9035999D77C63B14D421A0::dim[2] = v4;
  *&self->$70B10377DC9035999D77C63B14D421A0::data = v3;
  v5 = *buffer->var3;
  v6 = *&buffer->var3[2];
  v7 = *&buffer->var6;
  *&self->$70B10377DC9035999D77C63B14D421A0::width = *&buffer->var4;
  *&self->$70B10377DC9035999D77C63B14D421A0::channels = v7;
  *self->$70B10377DC9035999D77C63B14D421A0::stride = v5;
  *&self->$70B10377DC9035999D77C63B14D421A0::stride[2] = v6;
  v8 = *&buffer->var8;
  v9 = *&buffer->var10;
  v10 = *&buffer->var12;
  *&self->$70B10377DC9035999D77C63B14D421A0::storage_type = *&buffer->var14;
  *&self->$70B10377DC9035999D77C63B14D421A0::stride_height = v9;
  *&self->$70B10377DC9035999D77C63B14D421A0::stride_batch_number = v10;
  *&self->$70B10377DC9035999D77C63B14D421A0::sequence_length = v8;
}

- ($FD4688982923A924290ECB669CAF1EC2)_indexBuffer
{
  *&retstr->var14 = self[2].var13;
  v3 = *&self[2].var11;
  *&retstr->var10 = *&self[2].var9;
  *&retstr->var12 = v3;
  v4 = *&self[2].var3[3];
  *&retstr->var3[2] = *&self[2].var3[1];
  *&retstr->var4 = v4;
  v5 = *&self[2].var7;
  *&retstr->var6 = *&self[2].var5;
  *&retstr->var8 = v5;
  v6 = *&self[2].var1;
  *&retstr->var0 = *&self[1].var14;
  *retstr->var2 = v6;
  v7 = *&self[2].var2[3];
  *&retstr->var2[2] = *&self[2].var2[1];
  *retstr->var3 = v7;
  return self;
}

- (void)set_indexBuffer:(id *)buffer
{
  v3 = *&buffer->var0;
  v4 = *&buffer->var2[2];
  *self->$70B10377DC9035999D77C63B14D421A0::dim = *buffer->var2;
  *&self->$70B10377DC9035999D77C63B14D421A0::dim[2] = v4;
  *&self->$70B10377DC9035999D77C63B14D421A0::data = v3;
  v5 = *buffer->var3;
  v6 = *&buffer->var3[2];
  v7 = *&buffer->var6;
  *&self->$70B10377DC9035999D77C63B14D421A0::width = *&buffer->var4;
  *&self->$70B10377DC9035999D77C63B14D421A0::channels = v7;
  *self->$70B10377DC9035999D77C63B14D421A0::stride = v5;
  *&self->$70B10377DC9035999D77C63B14D421A0::stride[2] = v6;
  v8 = *&buffer->var8;
  v9 = *&buffer->var10;
  v10 = *&buffer->var12;
  *&self->$70B10377DC9035999D77C63B14D421A0::storage_type = *&buffer->var14;
  *&self->$70B10377DC9035999D77C63B14D421A0::stride_height = v9;
  *&self->$70B10377DC9035999D77C63B14D421A0::stride_batch_number = v10;
  *&self->$70B10377DC9035999D77C63B14D421A0::sequence_length = v8;
}

- (void)set_pruningPolicy:(CVNLPTextDecodingPruningPolicy *)policy
{
  v3 = *&policy->strategy;
  *&self->__pruningPolicy.maxNumberOfCandidates = *&policy->maxNumberOfCandidates;
  *&self->__pruningPolicy.strategy = v3;
}

@end