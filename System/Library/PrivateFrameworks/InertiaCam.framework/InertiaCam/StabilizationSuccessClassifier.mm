@interface StabilizationSuccessClassifier
- (BOOL)testForHomographies:(const void *)homographies movieSize:(Int32Size)size firstIndex:(int)index lastIndex:(int)lastIndex scoreThreshold:(float)threshold errorOut:(id *)out verbose:(BOOL)verbose;
- (StabilizationSuccessClassifier)init;
- (float)calcLogisticForStats:(id)stats paramsForStats:(id)forStats error:(id *)error;
- (id)applyClassifierToOverlappedSegments:(void *)segments withCoefficientsDict:(id)dict movieSize:(Int32Size)size firstIndex:(int)index lastIndex:(int)lastIndex stride:(int)stride length:(int)length result:(float *)self0 verbose:(BOOL)self1 minThreshold:(float)self2;
- (id)calcStatsDictForArray:(id)array withKey:(id)key firstIndex:(int)index lastIndex:(int)lastIndex usingTempStorage:(void *)storage outErr:(id *)err;
- (id)classifySequentialAnalysisSuccess:(void *)success movieSize:(Int32Size)size precalcedFeatures:(id)features result:(float *)result;
- (id)getDefaultParamDict;
- (id)statsDictFromFrameArray:(id)array firstIndex:(int)index lastIndex:(int)lastIndex errorOut:(id *)out;
- (void)AddStats:(StabStatsRecord *)stats toDict:(id)dict withBaseName:(id)name;
@end

@implementation StabilizationSuccessClassifier

- (StabilizationSuccessClassifier)init
{
  self->classifierMode = 444;
  *&self->subsegmentLength = xmmword_254B8B920;
  self->lastClassifierScore = 0.0;
  return self;
}

- (float)calcLogisticForStats:(id)stats paramsForStats:(id)forStats error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  forStatsCopy = forStats;
  v9 = [forStatsCopy countByEnumeratingWithState:&v30 objects:v34 count:16];
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
        objc_enumerationMutation(forStatsCopy);
      }

      v13 = *(*(&v30 + 1) + 8 * v12);
      v14 = [forStatsCopy objectForKeyedSubscript:{v13, v30}];
      v15 = [statsCopy objectForKeyedSubscript:v13];
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
        v9 = [forStatsCopy countByEnumeratingWithState:&v30 objects:v34 count:16];
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
    if (!error)
    {
      goto LABEL_17;
    }

LABEL_16:
    v28 = v25;
    *error = v25;
    goto LABEL_17;
  }

  v11 = 0.0;
LABEL_14:

LABEL_15:
  v27 = exp(v11);
  v25 = 0;
  v26 = v27 / (v27 + 1.0);
  if (error)
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
    getSequentialParamDict = [(StabilizationSuccessClassifier *)self getSequentialParamDict];
  }

  else if (classifierMode == 444)
  {
    getSequentialParamDict = [(StabilizationSuccessClassifier *)self getTripodCorrectionParamDict];
  }

  else
  {
    getSequentialParamDict = 0;
  }

  return getSequentialParamDict;
}

- (void)AddStats:(StabStatsRecord *)stats toDict:(id)dict withBaseName:(id)name
{
  dictCopy = dict;
  nameCopy = name;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:stats->var1];
  v9 = [nameCopy stringByAppendingString:@"_min"];
  [dictCopy setObject:v8 forKeyedSubscript:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:stats->var2];
  v11 = [nameCopy stringByAppendingString:@"_max"];
  [dictCopy setObject:v10 forKeyedSubscript:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:stats->var0];
  v13 = [nameCopy stringByAppendingString:@"_mean"];
  [dictCopy setObject:v12 forKeyedSubscript:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:stats->var3];
  v15 = [nameCopy stringByAppendingString:@"_std"];
  [dictCopy setObject:v14 forKeyedSubscript:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:stats->var4];
  v17 = [nameCopy stringByAppendingString:@"_absmax"];
  [dictCopy setObject:v16 forKeyedSubscript:v17];

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:stats->var2 - stats->var1];
  v19 = [nameCopy stringByAppendingString:@"_range"];
  [dictCopy setObject:v18 forKeyedSubscript:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithDouble:stats->var5];
  v21 = [nameCopy stringByAppendingString:@"_rms"];
  [dictCopy setObject:v20 forKeyedSubscript:v21];
}

- (id)calcStatsDictForArray:(id)array withKey:(id)key firstIndex:(int)index lastIndex:(int)lastIndex usingTempStorage:(void *)storage outErr:(id *)err
{
  LODWORD(v11) = index;
  arrayCopy = array;
  keyCopy = key;
  if ((v11 & 0x80000000) != 0 || [arrayCopy count] <= v11 || (v15 = lastIndex - v11, lastIndex < v11) || objc_msgSend(arrayCopy, "count") <= lastIndex)
  {
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:qword_27F7518B8 code:555201 userInfo:0];
    v16 = 0;
  }

  else
  {
    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    v17 = (v15 + 1);
    sub_254B39D6C(storage, v17);
    v18 = 0;
    v11 = v11;
    while (1)
    {
      v19 = [arrayCopy objectAtIndexedSubscript:v11];
      v20 = [v19 objectForKeyedSubscript:keyCopy];
      v21 = v20;
      if (!v20)
      {
        break;
      }

      [v20 floatValue];
      *(*storage + v18) = v22;

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
    [(StabilizationSuccessClassifier *)self AddStats:v35 toDict:v16 withBaseName:keyCopy, sub_254B62DD0(storage, v35)];
    v32 = 0;
    v33 = 0;
    v34 = 0;
    sub_254B62E90(storage, &v32);
    v26 = [keyCopy stringByAppendingString:{@"_delta", sub_254B62DD0(&v32, v35)}];
    [(StabilizationSuccessClassifier *)self AddStats:v35 toDict:v16 withBaseName:v26];

    __p = 0;
    v30 = 0;
    v31 = 0;
    sub_254B62E90(&v32, &__p);
    v27 = [keyCopy stringByAppendingString:{@"_2ndderiv", sub_254B62DD0(&__p, v35)}];
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

    if (err)
    {
      v24 = v23;
      v16 = 0;
      *err = v23;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)statsDictFromFrameArray:(id)array firstIndex:(int)index lastIndex:(int)lastIndex errorOut:(id *)out
{
  v6 = *&lastIndex;
  v7 = *&index;
  v32 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  if ((v7 & 0x80000000) != 0 || [arrayCopy count] <= v7 || v7 > v6 || objc_msgSend(arrayCopy, "count") <= v6)
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:qword_27F7518B8 code:555201 userInfo:0];
  }

  else
  {
    v20 = [arrayCopy objectAtIndexedSubscript:v7];
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
          v15 = [(StabilizationSuccessClassifier *)self calcStatsDictForArray:arrayCopy withKey:v14 firstIndex:v7 lastIndex:v6 usingTempStorage:&__p outErr:&v23];
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

    if (out)
    {
      v18 = v17;
      v10 = 0;
      *out = v17;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)testForHomographies:(const void *)homographies movieSize:(Int32Size)size firstIndex:(int)index lastIndex:(int)lastIndex scoreThreshold:(float)threshold errorOut:(id *)out verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  self->lastClassifierScore = 0.0;
  v11 = sub_254B278CC(homographies, *&size, index, lastIndex);
  getDefaultParamDict = [(StabilizationSuccessClassifier *)self getDefaultParamDict];
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
    [(StabilizationSuccessClassifier *)self calcLogisticForStats:v20 paramsForStats:getDefaultParamDict error:&v30];
    v23 = v22;
    v21 = v30;
    if (verboseCopy)
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
    v13 &= v23 >= threshold;
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
  if (out)
  {
    v25 = v21;
    *out = v21;
  }

  return v13 & 1;
}

- (id)applyClassifierToOverlappedSegments:(void *)segments withCoefficientsDict:(id)dict movieSize:(Int32Size)size firstIndex:(int)index lastIndex:(int)lastIndex stride:(int)stride length:(int)length result:(float *)self0 verbose:(BOOL)self1 minThreshold:(float)self2
{
  lengthCopy = length;
  dictCopy = dict;
  if (lastIndex <= index || (lastIndex - index + 1 >= length ? (v19 = length <= 2) : (v19 = 1), v19))
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:qword_27F7518B8 code:555201 userInfo:0];
  }

  else
  {
    self->lastClassifierScore = 0.0;
    v37 = sub_254B278CC(segments, *&size, index, lastIndex);
    v21 = 0;
    v34 = 1;
    while (1)
    {
      v22 = [v37 count];
      v23 = v21 + lengthCopy;
      v24 = v21 + lengthCopy;
      if (v22 <= v21 + lengthCopy)
      {
        v25 = [v37 count];
        v21 = (v25 - lengthCopy) & ~((v25 - lengthCopy) >> 31);
        if (v25 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v25;
        }
      }

      v26 = lengthCopy;
      v39 = 0;
      v27 = [(StabilizationSuccessClassifier *)self statsDictFromFrameArray:v37 firstIndex:v21 lastIndex:(v24 - 1) errorOut:&v39];
      v28 = v39;
      if (v28)
      {
        break;
      }

      v38 = 0;
      [(StabilizationSuccessClassifier *)self calcLogisticForStats:v27 paramsForStats:dictCopy error:&v38];
      v30 = v29;
      v31 = v38;
      if (verbose)
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
        if (v30 < threshold)
        {
          break;
        }

        v34 = 0;
      }

      if (v22 <= v23 || (lengthCopy = v26, [v37 count] == v24))
      {
        v28 = v31;
        break;
      }

      v21 = (v21 + stride);

      if (v31)
      {
        goto LABEL_27;
      }
    }

    v31 = v28;
LABEL_27:
    *result = self->lastClassifierScore;
    v20 = v31;
  }

  return v20;
}

- (id)classifySequentialAnalysisSuccess:(void *)success movieSize:(Int32Size)size precalcedFeatures:(id)features result:(float *)result
{
  v10 = [(StabilizationSuccessClassifier *)self getSequentialAnalysisCoeffsDict:success];
  if ((678152731 * ((*(success + 1) - *success) >> 4) - 1) >= 95)
  {
    v11 = 95;
  }

  else
  {
    v11 = 678152731 * ((*(success + 1) - *success) >> 4) - 1;
  }

  LOBYTE(v15) = 1;
  LODWORD(v14) = v11;
  v12 = [StabilizationSuccessClassifier applyClassifierToOverlappedSegments:"applyClassifierToOverlappedSegments:withCoefficientsDict:movieSize:firstIndex:lastIndex:stride:length:result:verbose:minThreshold:" withCoefficientsDict:success movieSize:v10 firstIndex:size lastIndex:1 stride:0.0 length:v14 result:result verbose:v15 minThreshold:?];

  return v12;
}

@end