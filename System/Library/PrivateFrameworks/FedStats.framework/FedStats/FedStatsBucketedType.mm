@interface FedStatsBucketedType
+ (id)createFromDict:(id)dict possibleError:(id *)error;
- (FedStatsBucketedType)initWithBucketBoundaries:(id)boundaries;
- (FedStatsBucketedType)initWithMinValue:(id)value maxValue:(id)maxValue bucketCount:(id)count;
- (id)decodeFromIndex:(id)index possibleError:(id *)error;
- (id)encodeToIndex:(id)index possibleError:(id *)error;
- (id)indexToInterval:(id)interval;
- (id)sampleForIndex:(unint64_t)index;
- (unint64_t)classCount;
@end

@implementation FedStatsBucketedType

- (FedStatsBucketedType)initWithBucketBoundaries:(id)boundaries
{
  boundariesCopy = boundaries;
  v13.receiver = self;
  v13.super_class = FedStatsBucketedType;
  v5 = -[FedStatsBoundedULongType initWithBound:](&v13, sel_initWithBound_, [boundariesCopy count]);
  v6 = v5;
  if (v5)
  {
    minValue = v5->_minValue;
    v5->_minValue = 0;

    maxValue = v6->_maxValue;
    v6->_maxValue = 0;

    bucketCount = v6->_bucketCount;
    v6->_bucketCount = 0;

    v10 = [MEMORY[0x277CBEA60] arrayWithArray:boundariesCopy];
    bucketBoundaries = v6->_bucketBoundaries;
    v6->_bucketBoundaries = v10;

    v6->_version = 1;
  }

  return v6;
}

- (FedStatsBucketedType)initWithMinValue:(id)value maxValue:(id)maxValue bucketCount:(id)count
{
  valueCopy = value;
  maxValueCopy = maxValue;
  countCopy = count;
  v25.receiver = self;
  v25.super_class = FedStatsBucketedType;
  v12 = -[FedStatsBoundedULongType initWithBound:](&v25, sel_initWithBound_, [countCopy unsignedLongValue] + 1);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_minValue, value);
    objc_storeStrong(&v13->_maxValue, maxValue);
    objc_storeStrong(&v13->_bucketCount, count);
    v14 = MEMORY[0x277CCABB0];
    [maxValueCopy floatValue];
    v16 = v15;
    [valueCopy floatValue];
    v18 = v16 - v17;
    [countCopy floatValue];
    *&v20 = v18 / v19;
    v21 = [v14 numberWithFloat:v20];
    stepSize = v13->_stepSize;
    v13->_stepSize = v21;

    bucketBoundaries = v13->_bucketBoundaries;
    v13->_bucketBoundaries = 0;

    v13->_version = 2;
  }

  return v13;
}

+ (id)createFromDict:(id)dict possibleError:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v7 = [dictCopy objectForKey:@"bucketBoundaries"];
  v8 = [dictCopy objectForKey:@"minValue"];
  v9 = [dictCopy objectForKey:@"maxValue"];
  v10 = [dictCopy objectForKey:@"bucketCount"];
  v11 = v10;
  if (v8)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  v14 = v12 || v10 == 0;
  if ((v7 != 0) != v14)
  {
    if (!error)
    {
      goto LABEL_37;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"You can either have %@ or the triple (%@, %@, %@) as keys, not all", @"bucketBoundaries", @"minValue", @"maxValue", @"bucketCount"];
    v16 = 301;
LABEL_35:
    *error = [FedStatsError errorWithCode:v16 description:v15];

LABEL_36:
    error = 0;
    goto LABEL_37;
  }

  if (!v7)
  {
    [v10 floatValue];
    if (v24 != [v11 intValue] || (v43 = self, v25 = objc_msgSend(v11, "unsignedIntValue"), v25 != objc_msgSend(v11, "intValue")) || !objc_msgSend(v11, "unsignedIntValue"))
    {
      if (!error)
      {
        goto LABEL_37;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"The value of %@ must be a positive integer", @"bucketCount"];
      v16 = 302;
      goto LABEL_35;
    }

    [v8 floatValue];
    v27 = v26;
    [v9 floatValue];
    if (v27 >= v28)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"The value of %@ must be less than the value of %@", @"minValue", @"maxValue"];
      goto LABEL_49;
    }

    v29 = [[v43 alloc] initWithMinValue:v8 maxValue:v9 bucketCount:v11];
    goto LABEL_45;
  }

  selfCopy = self;
  errorCopy = error;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v46;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v45 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy)
          {
            v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"The item %@ in the list for %@ is not a number", v22, @"bucketBoundaries"];
            *errorCopy = [FedStatsError errorWithCode:302 description:v23];
          }

          error = 0;
          goto LABEL_37;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  if ([v17 count] < 2)
  {
    error = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_37;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"You must have at least 2 elements for %@", @"bucketBoundaries", v41];
    goto LABEL_49;
  }

  error = errorCopy;
  if ([v17 count] < 2)
  {
LABEL_44:
    v29 = [[selfCopy alloc] initWithBucketBoundaries:v17];
LABEL_45:
    error = v29;
    goto LABEL_37;
  }

  v32 = 1;
  while (1)
  {
    v33 = [v17 objectAtIndexedSubscript:v32];
    [v33 floatValue];
    v35 = v34;
    v36 = v32 - 1;
    v37 = [v17 objectAtIndexedSubscript:v36];
    [v37 floatValue];
    v39 = v38;

    if (v35 <= v39)
    {
      break;
    }

    v32 = v36 + 2;
    if ([v17 count] <= v32)
    {
      goto LABEL_44;
    }
  }

  if (errorCopy)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"The entries for %@ must be monotonically increasing", @"bucketBoundaries", v41];
    v40 = LABEL_49:;
    *error = [FedStatsError errorWithCode:302 description:v40];

    goto LABEL_36;
  }

LABEL_37:

  v30 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)encodeToIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  null = [MEMORY[0x277CBEB68] null];
  v8 = [indexCopy isEqual:null];

  if (v8)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v18 = @"The encoder can only work with a number type";
      v19 = 401;
LABEL_11:
      [FedStatsError errorWithCode:v19 description:v18];
      *error = v9 = 0;
      goto LABEL_32;
    }

LABEL_19:
    v9 = 0;
    goto LABEL_32;
  }

  [indexCopy floatValue];
  v11 = v10;
  if ([(FedStatsBucketedType *)self version]== 1)
  {
    bucketBoundaries = [(FedStatsBucketedType *)self bucketBoundaries];
    firstObject = [bucketBoundaries firstObject];
    [firstObject floatValue];
    if (v11 < v14)
    {
LABEL_8:

LABEL_2:
      v9 = &unk_285E12CC8;
      goto LABEL_32;
    }

    bucketBoundaries2 = [(FedStatsBucketedType *)self bucketBoundaries];
    lastObject = [bucketBoundaries2 lastObject];
    [lastObject floatValue];
    if (v11 > v17)
    {

      goto LABEL_8;
    }

    bucketBoundaries3 = [(FedStatsBucketedType *)self bucketBoundaries];
    lastObject2 = [bucketBoundaries3 lastObject];
    [lastObject2 floatValue];
    v30 = v29;

    if (v11 == v30)
    {
      v31 = MEMORY[0x277CCABB0];
      bucketBoundaries4 = [(FedStatsBucketedType *)self bucketBoundaries];
      v9 = [v31 numberWithUnsignedInteger:{objc_msgSend(bucketBoundaries4, "count") - 1}];

      goto LABEL_32;
    }

    bucketBoundaries5 = [(FedStatsBucketedType *)self bucketBoundaries];
    v39 = [bucketBoundaries5 count] - 1;

    if (v39 >= 2)
    {
      v40 = 0;
      do
      {
        bucketBoundaries6 = [(FedStatsBucketedType *)self bucketBoundaries];
        v42 = [bucketBoundaries6 objectAtIndex:(v39 + v40) >> 1];
        [v42 floatValue];
        v44 = v43;

        if (v11 < v44)
        {
          v39 = (v39 + v40) >> 1;
        }

        else
        {
          v40 = (v39 + v40) >> 1;
        }
      }

      while (v39 - v40 > 1);
    }

    v36 = MEMORY[0x277CCABB0];
    v37 = v39;
    goto LABEL_30;
  }

  if ([(FedStatsBucketedType *)self version]!= 2)
  {
    if (error)
    {
      v18 = @"The encoder is malformed";
      v19 = 900;
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  minValue = [(FedStatsBucketedType *)self minValue];
  [minValue floatValue];
  v22 = v21;

  maxValue = [(FedStatsBucketedType *)self maxValue];
  [maxValue floatValue];
  v25 = v24;

  v9 = &unk_285E12CC8;
  if (v11 >= v22 && v11 <= v25)
  {
    if (v11 == v25)
    {
      bucketCount = [(FedStatsBucketedType *)self bucketCount];
LABEL_31:
      v9 = bucketCount;
      goto LABEL_32;
    }

    stepSize = [(FedStatsBucketedType *)self stepSize];
    [stepSize floatValue];
    v35 = ((v11 - v22) / v34);

    v36 = MEMORY[0x277CCABB0];
    v37 = v35 + 1;
LABEL_30:
    bucketCount = [v36 numberWithUnsignedLong:v37];
    goto LABEL_31;
  }

LABEL_32:

  return v9;
}

- (id)decodeFromIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  v7 = indexCopy;
  if (indexCopy)
  {
    unsignedLongValue = [indexCopy unsignedLongValue];
    if (unsignedLongValue < [(FedStatsBucketedType *)self classCount])
    {
      unsignedLongValue2 = [v7 unsignedLongValue];
      if (unsignedLongValue2)
      {
        [(FedStatsBucketedType *)self sampleForIndex:unsignedLongValue2];
      }

      else
      {
        +[FedStatsBoundedULongType gFedStatsOutOfBoundsNumber];
      }
      v11 = ;
      goto LABEL_13;
    }

    if (error)
    {
      v10 = @"The decoder requires a number less than the class count";
      goto LABEL_9;
    }
  }

  else if (error)
  {
    v10 = @"The decoder can only work with a number type";
LABEL_9:
    [FedStatsError errorWithCode:500 description:v10];
    *error = v11 = 0;
    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)indexToInterval:(id)interval
{
  v24[2] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  if (intervalCopy)
  {
    if ([(FedStatsBucketedType *)self version]== 1)
    {
      bucketBoundaries = [(FedStatsBucketedType *)self bucketBoundaries];
      stepSize2 = [bucketBoundaries objectAtIndex:{objc_msgSend(intervalCopy, "unsignedLongValue") - 1}];
      v24[0] = stepSize2;
      bucketBoundaries2 = [(FedStatsBucketedType *)self bucketBoundaries];
      v8 = [bucketBoundaries2 objectAtIndex:{objc_msgSend(intervalCopy, "unsignedLongValue")}];
      v24[1] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];

LABEL_6:
      goto LABEL_8;
    }

    if ([(FedStatsBucketedType *)self version]== 2)
    {
      minValue = [(FedStatsBucketedType *)self minValue];
      [minValue floatValue];
      v12 = v11;
      v13 = ([intervalCopy unsignedLongValue] - 1);
      stepSize = [(FedStatsBucketedType *)self stepSize];
      [stepSize floatValue];
      v16 = v12 + (v13 * v15);

      *&v17 = v16;
      bucketBoundaries = [MEMORY[0x277CCABB0] numberWithFloat:v17];
      v23[0] = bucketBoundaries;
      v18 = MEMORY[0x277CCABB0];
      stepSize2 = [(FedStatsBucketedType *)self stepSize];
      [stepSize2 floatValue];
      *&v20 = v16 + v19;
      bucketBoundaries2 = [v18 numberWithFloat:v20];
      v23[1] = bucketBoundaries2;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_8:

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

- (unint64_t)classCount
{
  version = [(FedStatsBucketedType *)self version];
  if (version == 2)
  {
    bucketCount = [(FedStatsBucketedType *)self bucketCount];
    v5 = [bucketCount unsignedIntValue] + 1;
  }

  else
  {
    if (version != 1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    bucketCount = [(FedStatsBucketedType *)self bucketBoundaries];
    v5 = [bucketCount count];
  }

  return v5;
}

- (id)sampleForIndex:(unint64_t)index
{
  version = [(FedStatsBucketedType *)self version];
  if (version == 1)
  {
    v6 = MEMORY[0x277CCABB0];
    bucketBoundaries = [(FedStatsBucketedType *)self bucketBoundaries];
    minValue = bucketBoundaries;
    if (!index)
    {
      lastObject = [bucketBoundaries lastObject];
      [lastObject floatValue];
      *&v12 = *&v12 + 1.0;
      goto LABEL_10;
    }

    v14 = [bucketBoundaries objectAtIndex:index - 1];
    [v14 floatValue];
    v16 = v15;
    bucketBoundaries2 = [(FedStatsBucketedType *)self bucketBoundaries];
    v18 = [bucketBoundaries2 objectAtIndex:index];
    [v18 floatValue];
    *&v20 = (v16 + v19) * 0.5;
    v21 = [v6 numberWithFloat:v20];
  }

  else
  {
    if (version != 2)
    {
      v21 = 0;
      goto LABEL_12;
    }

    v6 = MEMORY[0x277CCABB0];
    if (index)
    {
      minValue = [(FedStatsBucketedType *)self minValue];
      [minValue floatValue];
      v9 = v8;
      lastObject = [(FedStatsBucketedType *)self stepSize];
      [lastObject floatValue];
      v12 = v9 + (index + -0.5) * v11;
      *&v12 = v12;
LABEL_10:
      v21 = [v6 numberWithFloat:v12];

      goto LABEL_11;
    }

    minValue = [(FedStatsBucketedType *)self maxValue];
    [minValue floatValue];
    *&v23 = v22 + 1.0;
    v21 = [v6 numberWithFloat:v23];
  }

LABEL_11:

LABEL_12:

  return v21;
}

@end