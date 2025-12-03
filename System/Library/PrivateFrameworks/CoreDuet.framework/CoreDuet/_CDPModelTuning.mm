@interface _CDPModelTuning
+ (id)fScoreWithBeta:(float)beta;
+ (unsigned)_newSetDifference:(unsigned int *)difference setLength:(unint64_t)length subset:(unsigned int *)subset subsetLength:(unint64_t)subsetLength;
+ (void)_cumulativeSumOfArray:(float *)array size:(unint64_t)size reverse:(BOOL)reverse;
+ (void)_enumerateSubsetsOfSet:(unsigned int *)set setLength:(unint64_t)length index:(unint64_t)index subset:(unsigned int *)subset subsetLength:(unint64_t)subsetLength index:(unint64_t)a8 callback:(id)callback;
+ (void)_enumerateSubsetsOfSet:(unsigned int *)set setLength:(unint64_t)length withSize:(unint64_t)size callback:(id)callback;
- (float)_testModelWithThreshold:(float *)threshold;
- (void)resumeTuningWithState:(id)state;
@end

@implementation _CDPModelTuning

+ (id)fScoreWithBeta:(float)beta
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34___CDPModelTuning_fScoreWithBeta___block_invoke;
  v5[3] = &__block_descriptor_36_e11_f16__0f8f12l;
  betaCopy = beta;
  v3 = MEMORY[0x193B00C50](v5, a2);

  return v3;
}

- (void)resumeTuningWithState:(id)state
{
  *&v32[5] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (!stateCopy)
  {
    stateCopy = +[_CDPModelTuningState initialTuningState];
  }

  v5 = [stateCopy copy];
  currentState = self->_currentState;
  self->_currentState = v5;

  [(_CDPModelTuningState *)self->_currentState setI:0];
  if ([(_CDPModelTuningState *)self->_currentState i]<= 8)
  {
    v7 = MEMORY[0x1E69E9C10];
    while (1)
    {
      v8 = [(_CDPModelTuningState *)self->_currentState i];
      [(_CDPModelTuningState *)self->_currentState setJ:0];
      if ([(_CDPModelTuningState *)self->_currentState j]<= 8)
      {
        break;
      }

LABEL_6:
      [(_CDPModelTuningState *)self->_currentState setI:[(_CDPModelTuningState *)self->_currentState i]+ 1];
      if ([(_CDPModelTuningState *)self->_currentState i]>= 9)
      {
        goto LABEL_20;
      }
    }

    v9 = (v8 * 0.46111) + 0.0;
    v10 = exp(v9);
    while (1)
    {
      [(_CDPModelTuningState *)self->_currentState progress];
      v12 = v11;
      [stateCopy progress];
      if (v12 > v13)
      {
        v14 = ([(_CDPModelTuningState *)self->_currentState j]* 2.4375) + 0.5;
        *&v15 = v10;
        *&v16 = v14;
        [(_CDPSimpleModel *)self->_model setLambda:v15 w0:v16];
        v30 = 0.0;
        [(_CDPModelTuning *)self _testModelWithThreshold:&v30];
        v18 = v17;
        [(_CDPModelTuningState *)self->_currentState bestScore];
        if (v18 > v19)
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            [(_CDPModelTuning *)buf resumeTuningWithState:v32, v18];
          }

          *&v20 = v9;
          [(_CDPModelTuningState *)self->_currentState setBestLogLambda:v20];
          *&v21 = v14;
          [(_CDPModelTuningState *)self->_currentState setBestW0:v21];
          *&v22 = v30;
          [(_CDPModelTuningState *)self->_currentState setBestThreshold:v22];
          *&v23 = v18;
          [(_CDPModelTuningState *)self->_currentState setBestScore:v23];
        }

        heartBeat = [(_CDPModelTuning *)self heartBeat];

        if (heartBeat)
        {
          v29 = 0;
          heartBeat2 = [(_CDPModelTuning *)self heartBeat];
          v26 = v30;
          [(_CDPModelTuningState *)self->_currentState progress];
          (heartBeat2)[2](heartBeat2, self, &v29, v10, v14, v26, v18, v27);

          if (v29 == 1)
          {
            break;
          }
        }
      }

      [(_CDPModelTuningState *)self->_currentState setJ:[(_CDPModelTuningState *)self->_currentState j]+ 1];
      if ([(_CDPModelTuningState *)self->_currentState j]>= 9)
      {
        goto LABEL_6;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [_CDPModelTuning resumeTuningWithState:];
    }
  }

LABEL_20:

  v28 = *MEMORY[0x1E69E9840];
}

+ (void)_enumerateSubsetsOfSet:(unsigned int *)set setLength:(unint64_t)length index:(unint64_t)index subset:(unsigned int *)subset subsetLength:(unint64_t)subsetLength index:(unint64_t)a8 callback:(id)callback
{
  callbackCopy = callback;
  v17 = callbackCopy;
  if (a8 == subsetLength)
  {
    (*(callbackCopy + 2))(callbackCopy, subset, a8);
  }

  else
  {
    subset[a8] = set[index];
    [self _enumerateSubsetsOfSet:set setLength:length index:index + 1 subset:subset subsetLength:subsetLength index:a8 + 1 callback:callbackCopy];
    if (subsetLength - a8 < length - index)
    {
      [self _enumerateSubsetsOfSet:set setLength:length index:index + 1 subset:subset subsetLength:subsetLength index:a8 callback:v17];
    }
  }
}

+ (void)_enumerateSubsetsOfSet:(unsigned int *)set setLength:(unint64_t)length withSize:(unint64_t)size callback:(id)callback
{
  callbackCopy = callback;
  v11 = malloc_type_calloc(size, 4uLL, 0x100004052888210uLL);
  [self _enumerateSubsetsOfSet:set setLength:length index:0 subset:v11 subsetLength:size index:0 callback:callbackCopy];

  free(v11);
}

+ (unsigned)_newSetDifference:(unsigned int *)difference setLength:(unint64_t)length subset:(unsigned int *)subset subsetLength:(unint64_t)subsetLength
{
  lengthCopy = length;
  result = malloc_type_calloc(length - subsetLength, 4uLL, 0x100004052888210uLL);
  if (lengthCopy)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v14 = *difference++;
      v13 = v14;
      if (v12 < subsetLength && v13 == subset[v12])
      {
        ++v12;
      }

      else
      {
        result[v11++] = v13;
      }

      --lengthCopy;
    }

    while (lengthCopy);
  }

  return result;
}

+ (void)_cumulativeSumOfArray:(float *)array size:(unint64_t)size reverse:(BOOL)reverse
{
  v5 = ((size << 32) - 0x100000000) >> 30;
  if (reverse)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (!reverse)
  {
    v5 = 0;
  }

  v7 = (array + v5);
  v8 = *(array + v5);
  *(&array[v6] + v5) = v8 + *(&array[v6] + v5);
  __S = 1.0;
  vDSP_vrsum(v7, v6, &__S, v7, v6, size);
  *v7 = v8;
}

- (float)_testModelWithThreshold:(float *)threshold
{
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __43___CDPModelTuning__testModelWithThreshold___block_invoke;
  v37[3] = &__block_descriptor_40_e8_f12__0i8l;
  v37[4] = 0x3F00106400000000;
  v5 = MEMORY[0x193B00C50](v37, a2);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __43___CDPModelTuning__testModelWithThreshold___block_invoke_2;
  v36[3] = &__block_descriptor_48_e8_q12__0f8l;
  v36[4] = 2000;
  v36[5] = 0x3F00106400000000;
  v6 = MEMORY[0x193B00C50](v36);
  nPeople = [(_CDPSimpleModel *)self->_model nPeople];
  v8 = malloc_type_calloc(0x7D0uLL, 4uLL, 0x100004052888210uLL);
  v9 = malloc_type_calloc(0x7D0uLL, 4uLL, 0x100004052888210uLL);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  testIndices = [(_CDPModelTuning *)self testIndices];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __43___CDPModelTuning__testModelWithThreshold___block_invoke_3;
  v23 = &unk_1E73685C8;
  selfCopy = self;
  v27 = 2000;
  v11 = v6;
  v28 = v8;
  v29 = nPeople;
  v31 = 1056968804;
  v30 = v9;
  v25 = v11;
  v26 = &v32;
  [testIndices enumerateIndexesUsingBlock:&v20];

  v12 = 0.0;
  for (i = 1; i != 2000; ++i)
  {
    v14 = v8[i];
    v15 = v9[i];
    v16 = *(v33 + 6);
    v17 = [(_CDPModelTuning *)self scorer:v20];
    v18 = v17[2](v14 / v15, v14 / v16);

    if (v18 > v12)
    {
      *threshold = v5[2](v5, i);
      v12 = v18;
    }
  }

  free(v8);
  free(v9);

  _Block_object_dispose(&v32, 8);
  return v12;
}

- (void)resumeTuningWithState:(float)a3 .cold.1(uint8_t *buf, double *a2, float a3)
{
  *buf = 134217984;
  *a2 = a3;
  _os_log_debug_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[TUNING] new best score %g", buf, 0xCu);
}

@end