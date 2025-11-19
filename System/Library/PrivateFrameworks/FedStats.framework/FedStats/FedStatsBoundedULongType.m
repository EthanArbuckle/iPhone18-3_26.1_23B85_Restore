@interface FedStatsBoundedULongType
+ (id)createFromDict:(id)a3 possibleError:(id *)a4;
- (FedStatsBoundedULongType)initWithBound:(unint64_t)a3;
- (id)decodeFromHistogramVector:(id)a3 possibleError:(id *)a4;
- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4;
- (id)decodeFromOneHotVector:(id)a3 possibleError:(id *)a4;
- (id)encodeToHistogramVector:(id)a3 possibleError:(id *)a4;
- (id)encodeToIndex:(id)a3 possibleError:(id *)a4;
- (id)encodeToOneHotVector:(id)a3 possibleError:(id *)a4;
- (id)sampleForIndex:(unint64_t)a3;
@end

@implementation FedStatsBoundedULongType

- (FedStatsBoundedULongType)initWithBound:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = FedStatsBoundedULongType;
  result = [(FedStatsBoundedULongType *)&v5 init];
  if (result)
  {
    result->_bound = a3;
  }

  return result;
}

+ (id)createFromDict:(id)a3 possibleError:(id *)a4
{
  v6 = [a3 objectForKey:@"bound"];
  v7 = v6;
  if (!v6)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"The key %@ is missing", @"bound"];
    v10 = 300;
    goto LABEL_7;
  }

  v8 = [v6 unsignedLongValue];
  if (a4 && v8 >= 0x20000001)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"The value for %@ must be less than %lu", @"bound", 0x20000000];
    v10 = 302;
LABEL_7:
    *a4 = [FedStatsError errorWithCode:v10 description:v9];

    a4 = 0;
    goto LABEL_9;
  }

  a4 = [[a1 alloc] initWithBound:{objc_msgSend(v7, "unsignedLongValue")}];
LABEL_9:

  return a4;
}

- (id)encodeToIndex:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB68] null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = &unk_285E12CB0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10 = [v6 longValue], v10 == objc_msgSend(v6, "unsignedLongValue")))
    {
      v11 = [v6 unsignedLongValue];
      if (v11 + 1 <= [(FedStatsBoundedULongType *)self bound])
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = 0;
      }

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
    }

    else if (a4)
    {
      [FedStatsError errorWithCode:401 description:@"The encoder can only work with a positive integer"];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedLongValue];
    if (v7)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v7 - 1];
    }

    else
    {
      v8 = &unk_285E12C98;
    }
  }

  else if (a4)
  {
    [FedStatsError errorWithCode:500 description:@"The decoder can only work with a number type"];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)encodeToOneHotVector:(id)a3 possibleError:(id *)a4
{
  v5 = [(FedStatsBoundedULongType *)self encodeToIndex:a3 possibleError:a4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedLongValue];
    v8 = [(FedStatsBoundedULongType *)self classCount];
    v9 = [MEMORY[0x277CBEB28] dataWithLength:v8];
    v12 = 1;
    [v9 replaceBytesInRange:v7 withBytes:{1, &v12}];
    v10 = [MEMORY[0x277CBEA90] dataWithData:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)decodeFromOneHotVector:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v11 = 0;
  if ([v6 length])
  {
    v7 = 0;
    while (1)
    {
      [v6 getBytes:&v11 range:{v7, 1}];
      if (v11)
      {
        break;
      }

      if (++v7 >= [v6 length])
      {
        goto LABEL_5;
      }
    }

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v7];
    v8 = [(FedStatsBoundedULongType *)self decodeFromIndex:v9 possibleError:a4];
  }

  else
  {
LABEL_5:
    if (a4)
    {
      [FedStatsError errorWithCode:900 description:@"Only one factor in the input vector must be non-zero."];
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)encodeToHistogramVector:(id)a3 possibleError:(id *)a4
{
  if (a4)
  {
    *a4 = [FedStatsError errorWithCode:900 description:@"Histogram vector is not implemented for this type."];
  }

  return 0;
}

- (id)decodeFromHistogramVector:(id)a3 possibleError:(id *)a4
{
  if (a4)
  {
    *a4 = [FedStatsError errorWithCode:900 description:@"Histogram vector is not implemented for this type."];
  }

  return 0;
}

- (id)sampleForIndex:(unint64_t)a3
{
  v3 = MEMORY[0x277CCABB0];
  if (a3)
  {
    v4 = a3 - 1;
  }

  else
  {
    v4 = [(FedStatsBoundedULongType *)self bound];
  }

  return [v3 numberWithUnsignedLong:v4];
}

@end