@interface FedStatsDataTypeFactory
+ (id)createFedStatsDataType:(id)type dataTypeParams:(id)params possibleError:(id *)error;
+ (id)stringFromDataType:(int64_t)type;
+ (int64_t)dataTypeFromString:(id)string;
@end

@implementation FedStatsDataTypeFactory

+ (int64_t)dataTypeFromString:(id)string
{
  v3 = [&unk_285E12E70 objectForKey:string];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = -2;
  }

  return integerValue;
}

+ (id)stringFromDataType:(int64_t)type
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v4 = [&unk_285E12E98 allKeysForObject:v3];

  if (v4 && [v4 count] == 1)
  {
    firstObject = [v4 firstObject];
  }

  else
  {
    firstObject = @"InvalidType";
  }

  return firstObject;
}

+ (id)createFedStatsDataType:(id)type dataTypeParams:(id)params possibleError:(id *)error
{
  typeCopy = type;
  paramsCopy = params;
  v9 = [FedStatsDataTypeFactory dataTypeFromString:typeCopy];
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
      if (!error)
      {
        goto LABEL_20;
      }

      typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not defined", typeCopy];
      v12 = 200;
      goto LABEL_25;
    }

    if (!v9)
    {
      v10 = FedStatsBooleanType;
LABEL_19:
      error = [(__objc2_class *)v10 createFromDict:paramsCopy possibleError:error];
      goto LABEL_20;
    }
  }

  if (!error)
  {
    goto LABEL_20;
  }

  typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not supported", typeCopy];
  v12 = 900;
LABEL_25:
  *error = [FedStatsError errorWithCode:v12 description:typeCopy];

  error = 0;
LABEL_20:

  return error;
}

@end