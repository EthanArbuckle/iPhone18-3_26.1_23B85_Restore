@interface FedStatsInvalidDataType
+ (id)createFromDict:(id)dict possibleError:(id *)error;
- (FedStatsInvalidDataType)init;
- (id)decodeFromHistogramVector:(id)vector possibleError:(id *)error;
- (id)decodeFromIndex:(id)index possibleError:(id *)error;
- (id)decodeFromOneHotVector:(id)vector possibleError:(id *)error;
- (id)encodeToHistogramVector:(id)vector possibleError:(id *)error;
- (id)encodeToIndex:(id)index possibleError:(id *)error;
- (id)encodeToOneHotVector:(id)vector possibleError:(id *)error;
@end

@implementation FedStatsInvalidDataType

- (FedStatsInvalidDataType)init
{
  v3.receiver = self;
  v3.super_class = FedStatsInvalidDataType;
  return [(FedStatsInvalidDataType *)&v3 init];
}

+ (id)createFromDict:(id)dict possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"This is only a placeholder class for invalid types."];
  }

  v6 = objc_alloc_init(self);

  return v6;
}

- (id)encodeToIndex:(id)index possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"This is only a placeholder class for invalid types."];
  }

  return 0;
}

- (id)decodeFromIndex:(id)index possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"This is only a placeholder class for invalid types."];
  }

  return 0;
}

- (id)encodeToOneHotVector:(id)vector possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"This is only a placeholder class for invalid types."];
  }

  return 0;
}

- (id)decodeFromOneHotVector:(id)vector possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"This is only a placeholder class for invalid types."];
  }

  return 0;
}

- (id)encodeToHistogramVector:(id)vector possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"This is only a placeholder class for invalid types."];
  }

  return 0;
}

- (id)decodeFromHistogramVector:(id)vector possibleError:(id *)error
{
  if (error)
  {
    *error = [FedStatsError errorWithCode:900 description:@"This is only a placeholder class for invalid types."];
  }

  return 0;
}

@end