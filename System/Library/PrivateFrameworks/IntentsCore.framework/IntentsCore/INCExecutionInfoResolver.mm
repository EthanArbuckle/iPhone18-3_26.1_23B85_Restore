@interface INCExecutionInfoResolver
- (id)resolveIntentExecutionInfo:(id)info;
- (id)resolveUserActivityExecutionInfo:(id)info;
@end

@implementation INCExecutionInfoResolver

- (id)resolveUserActivityExecutionInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = INCExecutionInfoResolver;
  v3 = [(INExecutionInfoResolver *)&v5 resolveUserActivityExecutionInfo:info];

  return v3;
}

- (id)resolveIntentExecutionInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = INCExecutionInfoResolver;
  v3 = [(INExecutionInfoResolver *)&v5 resolveIntentExecutionInfo:info];

  return v3;
}

@end