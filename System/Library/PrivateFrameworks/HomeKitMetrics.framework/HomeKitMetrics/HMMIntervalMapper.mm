@interface HMMIntervalMapper
+ (id)unsignedClosedOpenFixedIntervalMapper:(id)mapper;
+ (id)unsignedOpenClosedFixedIntervalMapper:(id)mapper;
@end

@implementation HMMIntervalMapper

+ (id)unsignedClosedOpenFixedIntervalMapper:(id)mapper
{
  mapperCopy = mapper;
  v4 = [[UnsignedFixedIntervalMapper alloc] initWithBins:mapperCopy intervalCreationBlock:&__block_literal_global_99 valueComparisonBlock:&__block_literal_global_101];

  return v4;
}

+ (id)unsignedOpenClosedFixedIntervalMapper:(id)mapper
{
  mapperCopy = mapper;
  v4 = [[UnsignedFixedIntervalMapper alloc] initWithBins:mapperCopy intervalCreationBlock:&__block_literal_global valueComparisonBlock:&__block_literal_global_96];

  return v4;
}

id __59__HMMIntervalMapper_unsignedOpenClosedFixedIntervalMapper___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[HMMInterval positiveInfinityEnd];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    [HMMInterval openOpenIntervalFromStart:v5 toEnd:v4];
  }

  else
  {
    [HMMInterval openClosedIntervalFromStart:v5 toEnd:v4];
  }
  v8 = ;

  return v8;
}

@end