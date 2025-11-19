@interface StabilizationSuccessClassifier
- (BOOL)testForHomographies:(const void *)a3 movieSize:(Int32Size)a4 firstIndex:(int)a5 lastIndex:(int)a6 scoreThreshold:(float)a7 errorOut:(id *)a8 verbose:(BOOL)a9;
- (StabilizationSuccessClassifier)init;
- (float)calcLogisticForStats:(id)a3 paramsForStats:(id)a4 error:(id *)a5;
- (id)applyClassifierToOverlappedSegments:(void *)a3 withCoefficientsDict:(id)a4 movieSize:(Int32Size)a5 firstIndex:(int)a6 lastIndex:(int)a7 stride:(int)a8 length:(int)a9 result:(float *)a10 verbose:(BOOL)a11 minThreshold:(float)a12;
- (id)calcStatsDictForArray:(id)a3 withKey:(id)a4 firstIndex:(int)a5 lastIndex:(int)a6 usingTempStorage:(void *)a7 outErr:(id *)a8;
- (id)classifySequentialAnalysisSuccess:(void *)a3 movieSize:(Int32Size)a4 precalcedFeatures:(id)a5 result:(float *)a6;
- (id)getDefaultParamDict;
- (id)statsDictFromFrameArray:(id)a3 firstIndex:(int)a4 lastIndex:(int)a5 errorOut:(id *)a6;
- (void)AddStats:(StabStatsRecord *)a3 toDict:(id)a4 withBaseName:(id)a5;
@end

@implementation StabilizationSuccessClassifier

- (StabilizationSuccessClassifier)init
{
  self->classifierMode = 444;
  *&self->subsegmentLength = xmmword_254B8B920;
  self->lastClassifierScore = 0.0;
  return self;
}

- (float)calcLogisticForStats:(id)a3 paramsForStats:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = a4;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = *v31;
    v11 = 0.0;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v31 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v30 + 1) + 8 * v12);
      v14 = [v8 objectForKeyedSubscript:{v13, v30}];
      v15 = [v7 objectForKeyedSubscript:v13];
      v16 = v15;
      if (!v15)
      {
        break;
      }

      [v15 doubleValue];
      v18 = v17;
      v19 = [v14 objectAtIndexedSubscript:0];
      [v19 doubleValue];
      v21 = v20;

      v22 = [v14 objectAtIndexedSubscript:1];
      [v22 doubleValue];
      v24 = v23;

      v11 = v11 + (v18 - v21) * v24;
      if (v9 == ++v12)
      {
        v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:qword_27F7518B8 code:555200 userInfo:0];

    if (!v25)
    {
      goto LABEL_15;
    }

    v26 = NAN;
    if (!a5)
    {
      goto LABEL_17;
    }

LABEL_16:
    v28 = v25;
    *a5 = v25;
    goto LABEL_17;
  }

  v11 = 0.0;
LABEL_14:

LABEL_15:
  v27 = exp(v11);
  v25 = 0;
  v26 = v27 / (v27 + 1.0);
  if (a5)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v26;
}

- (id)getDefaultParamDict
{
  classifierMode = self->classifierMode;
  if (classifierMode == 445)
  {
    v3 = [(StabilizationSuccessClassifier *)self getSequentialParamDict];
  }

  else if (classifierMode == 444)
  {
    v3 = [(StabilizationSuccessClassifier *)self getTripodCorrectionParamDict];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)AddStats:(StabStatsRecord *)a3 toDict:(id)a4 withBaseName:(id)a5
{
  v22 = a4;
  v7 = a5;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3->var1];
  v9 = [v7 stringByAppendingString:@"_min"];
  [v22 setObject:v8 forKeyedSubscript:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3->var2];
  v11 = [v7 stringByAppendingString:@"_max"];
  [v22 setObject:v10 forKeyedSubscript:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:a3->var0];
  v13 = [v7 stringByAppendingString:@"_mean"];
  [v22 setObject:v12 forKeyedSubscript:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:a3->var3];
  v15 = [v7 stringByAppendingString:@"_std"];
  [v22 setObject:v14 forKeyedSubscript:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:a3->var4];
  v17 = [v7 stringByAppendingString:@"_absmax"];
  [v22 setObject:v16 forKeyedSubscript:v17];

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:a3->var2 - a3->var1];
  v19 = [v7 stringByAppendingString:@"_range"];
  [v22 setObject:v18 forKeyedSubscript:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithDouble:a3->var5];
  v21 = [v7 stringByAppendingString:@"_rms"];
  [v22 setObject:v20 forKeyedSubscript:v21];
}

- (id)calcStatsDictForArray:(id)a3 withKey:(id)a4 firstIndex:(int)a5 lastIndex:(int)a6 usingTempStorage:(void *)a7 outErr:(id *)a8
{
  LODWORD(v11) = a5;
  v13 = a3;
  v14 = a4;
  if ((v11 & 0x80000000) != 0 || [v13 count] <= v11 || (v15 = a6 - v11, a6 < v11) || objc_msgSend(v13, "count") <= a6)
  {
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:qword_27F7518B8 code:555201 userInfo:0];
    v16 = 0;
  }

  else
  {
    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    v17 = (v15 + 1);
    sub_254B39D6C(a7, v17);
    v18 = 0;
    v11 = v11;
    while (1)
    {
      v19 = [v13 objectAtIndexedSubscript:v11];
      v20 = [v19 objectForKeyedSubscript:v14];
      v21 = v20;
      if (!v20)
      {
        break;
      }

      [v20 floatValue];
      *(*a7 + v18) = v22;

      ++v11;
      v18 += 8;
      if (!--v17)
      {
        v23 = 0;
        goto LABEL_18;
      }
    }

    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:qword_27F7518B8 code:555202 userInfo:0];

LABEL_18:
    [(StabilizationSuccessClassifier *)self AddStats:v35 toDict:v16 withBaseName:v14, sub_254B62DD0(a7, v35)];
    v32 = 0;
    v33 = 0;
    v34 = 0;
    sub_254B62E90(a7, &v32);
    v26 = [v14 stringByAppendingString:{@"_delta", sub_254B62DD0(&v32, v35)}];
    [(StabilizationSuccessClassifier *)self AddStats:v35 toDict:v16 withBaseName:v26];

    __p = 0;
    v30 = 0;
    v31 = 0;
    sub_254B62E90(&v32, &__p);
    v27 = [v14 stringByAppendingString:{@"_2ndderiv", sub_254B62DD0(&__p, v35)}];
    [(StabilizationSuccessClassifier *)self AddStats:v35 toDict:v16 withBaseName:v27];

    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }
  }

  if (v23)
  {

    if (a8)
    {
      v24 = v23;
      v16 = 0;
      *a8 = v23;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)statsDictFromFrameArray:(id)a3 firstIndex:(int)a4 lastIndex:(int)a5 errorOut:(id *)a6
{
  v6 = *&a5;
  v7 = *&a4;
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  if ((v7 & 0x80000000) != 0 || [v9 count] <= v7 || v7 > v6 || objc_msgSend(v9, "count") <= v6)
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:qword_27F7518B8 code:555201 userInfo:0];
  }

  else
  {
    v20 = [v9 objectAtIndexedSubscript:v7];
    [v20 allKeys];
    __p = 0;
    v29 = 0;
    v30 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v27 = 0u;
    v11 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v11)
    {
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v23 = 0;
          v15 = [(StabilizationSuccessClassifier *)self calcStatsDictForArray:v9 withKey:v14 firstIndex:v7 lastIndex:v6 usingTempStorage:&__p outErr:&v23];
          v16 = v23;
          if (v16)
          {
            v17 = v16;

            goto LABEL_23;
          }

          [v10 addEntriesFromDictionary:v15];
        }

        v11 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_23:

    [v10 setObject:&unk_2867084A8 forKeyedSubscript:@"_intercept"];
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }
  }

  if (v17)
  {

    if (a6)
    {
      v18 = v17;
      v10 = 0;
      *a6 = v17;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)testForHomographies:(const void *)a3 movieSize:(Int32Size)a4 firstIndex:(int)a5 lastIndex:(int)a6 scoreThreshold:(float)a7 errorOut:(id *)a8 verbose:(BOOL)a9
{
  v28 = a9;
  self->lastClassifierScore = 0.0;
  v11 = sub_254B278CC(a3, *&a4, a5, a6);
  v29 = [(StabilizationSuccessClassifier *)self getDefaultParamDict];
  v12 = 0;
  v13 = 1;
  v14 = 1;
  while (1)
  {
    subsegmentLength = self->subsegmentLength;
    v16 = v12 + subsegmentLength - 1;
    v17 = [v11 count] - 1;
    v18 = v16;
    if (v17 <= v16)
    {
      v19 = [v11 count];
      v12 = (v19 - subsegmentLength) & ~((v19 - subsegmentLength) >> 31);
      v18 = (v19 - 1) & ~((v19 - 1) >> 31);
    }

    v31 = 0;
    v20 = [(StabilizationSuccessClassifier *)self statsDictFromFrameArray:v11 firstIndex:v12 lastIndex:v18 errorOut:&v31];
    v21 = v31;
    if (v21)
    {
      break;
    }

    v30 = 0;
    [(StabilizationSuccessClassifier *)self calcLogisticForStats:v20 paramsForStats:v29 error:&v30];
    v23 = v22;
    v21 = v30;
    if (v28)
    {
      NSLog(&cfstr_SubsegmentClas.isa, v12, v18, v23);
    }

    lastClassifierScore = v23;
    if ((v14 & 1) == 0)
    {
      lastClassifierScore = self->lastClassifierScore;
      if (v23 < lastClassifierScore)
      {
        lastClassifierScore = v23;
      }
    }

    self->lastClassifierScore = lastClassifierScore;
    v13 &= v23 >= a7;
    if (v17 <= v16 || [v11 count] - 1 == v18)
    {
      break;
    }

    v12 = (v12 + LODWORD(self->subsegmentStep));

    v14 = 0;
    if (v21)
    {
      goto LABEL_15;
    }
  }

LABEL_15:
  if (a8)
  {
    v25 = v21;
    *a8 = v21;
  }

  return v13 & 1;
}

- (id)applyClassifierToOverlappedSegments:(void *)a3 withCoefficientsDict:(id)a4 movieSize:(Int32Size)a5 firstIndex:(int)a6 lastIndex:(int)a7 stride:(int)a8 length:(int)a9 result:(float *)a10 verbose:(BOOL)a11 minThreshold:(float)a12
{
  v18 = a9;
  v36 = a4;
  if (a7 <= a6 || (a7 - a6 + 1 >= a9 ? (v19 = a9 <= 2) : (v19 = 1), v19))
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:qword_27F7518B8 code:555201 userInfo:0];
  }

  else
  {
    self->lastClassifierScore = 0.0;
    v37 = sub_254B278CC(a3, *&a5, a6, a7);
    v21 = 0;
    v34 = 1;
    while (1)
    {
      v22 = [v37 count];
      v23 = v21 + v18;
      v24 = v21 + v18;
      if (v22 <= v21 + v18)
      {
        v25 = [v37 count];
        v21 = (v25 - v18) & ~((v25 - v18) >> 31);
        if (v25 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v25;
        }
      }

      v26 = v18;
      v39 = 0;
      v27 = [(StabilizationSuccessClassifier *)self statsDictFromFrameArray:v37 firstIndex:v21 lastIndex:(v24 - 1) errorOut:&v39];
      v28 = v39;
      if (v28)
      {
        break;
      }

      v38 = 0;
      [(StabilizationSuccessClassifier *)self calcLogisticForStats:v27 paramsForStats:v36 error:&v38];
      v30 = v29;
      v31 = v38;
      if (a11)
      {
        NSLog(&cfstr_SubsegmentClas.isa, v21, (v24 - 1), v30);
      }

      if (!v31)
      {
        lastClassifierScore = v30;
        if ((v34 & 1) == 0)
        {
          lastClassifierScore = self->lastClassifierScore;
          if (v30 < lastClassifierScore)
          {
            lastClassifierScore = v30;
          }
        }

        self->lastClassifierScore = lastClassifierScore;
        if (v30 < a12)
        {
          break;
        }

        v34 = 0;
      }

      if (v22 <= v23 || (v18 = v26, [v37 count] == v24))
      {
        v28 = v31;
        break;
      }

      v21 = (v21 + a8);

      if (v31)
      {
        goto LABEL_27;
      }
    }

    v31 = v28;
LABEL_27:
    *a10 = self->lastClassifierScore;
    v20 = v31;
  }

  return v20;
}

- (id)classifySequentialAnalysisSuccess:(void *)a3 movieSize:(Int32Size)a4 precalcedFeatures:(id)a5 result:(float *)a6
{
  v10 = [(StabilizationSuccessClassifier *)self getSequentialAnalysisCoeffsDict:a3];
  if ((678152731 * ((*(a3 + 1) - *a3) >> 4) - 1) >= 95)
  {
    v11 = 95;
  }

  else
  {
    v11 = 678152731 * ((*(a3 + 1) - *a3) >> 4) - 1;
  }

  LOBYTE(v15) = 1;
  LODWORD(v14) = v11;
  v12 = [StabilizationSuccessClassifier applyClassifierToOverlappedSegments:"applyClassifierToOverlappedSegments:withCoefficientsDict:movieSize:firstIndex:lastIndex:stride:length:result:verbose:minThreshold:" withCoefficientsDict:a3 movieSize:v10 firstIndex:a4 lastIndex:1 stride:0.0 length:v14 result:a6 verbose:v15 minThreshold:?];

  return v12;
}

@end