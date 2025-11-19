@interface FedStatsDataTypeFactory
+ (id)createFedStatsDataType:(id)a3 dataTypeParams:(id)a4 possibleError:(id *)a5;
+ (id)stringFromDataType:(int64_t)a3;
+ (int64_t)dataTypeFromString:(id)a3;
@end

@implementation FedStatsDataTypeFactory

+ (int64_t)dataTypeFromString:(id)a3
{
  v3 = [&unk_285E12E70 objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = -2;
  }

  return v5;
}

+ (id)stringFromDataType:(int64_t)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v4 = [&unk_285E12E98 allKeysForObject:v3];

  if (v4 && [v4 count] == 1)
  {
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = @"InvalidType";
  }

  return v5;
}

+ (id)createFedStatsDataType:(id)a3 dataTypeParams:(id)a4 possibleError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [FedStatsDataTypeFactory dataTypeFromString:v7];
  if (v9 > 2)
  {
    if (v9 <= 4)
    {
      if (v9 == 3)
      {
        v10 = FedStatsCategoricalType;
      }

      else
      {
        v10 = FedStatsGeoHashType;
      }

      goto LABEL_19;
    }

    if (v9 == 5)
    {
      v10 = FedStatsHistogramType;
      goto LABEL_19;
    }

    if (v9 == 99)
    {
      v10 = FedStatsCombinationType;
      goto LABEL_19;
    }
  }

  else
  {
    if (v9 > 0)
    {
      if (v9 == 1)
      {
        v10 = FedStatsBoundedULongType;
      }

      else
      {
        v10 = FedStatsBucketedType;
      }

      goto LABEL_19;
    }

    if (v9 == -2)
    {
      if (!a5)
      {
        goto LABEL_20;
      }

      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not defined", v7];
      v12 = 200;
      goto LABEL_25;
    }

    if (!v9)
    {
      v10 = FedStatsBooleanType;
LABEL_19:
      a5 = [(__objc2_class *)v10 createFromDict:v8 possibleError:a5];
      goto LABEL_20;
    }
  }

  if (!a5)
  {
    goto LABEL_20;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not supported", v7];
  v12 = 900;
LABEL_25:
  *a5 = [FedStatsError errorWithCode:v12 description:v11];

  a5 = 0;
LABEL_20:

  return a5;
}

@end