@interface INCExecutionInfoResolver
- (id)resolveIntentExecutionInfo:(id)a3;
- (id)resolveUserActivityExecutionInfo:(id)a3;
@end

@implementation INCExecutionInfoResolver

- (id)resolveUserActivityExecutionInfo:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCExecutionInfoResolver;
  v3 = [(INExecutionInfoResolver *)&v5 resolveUserActivityExecutionInfo:a3];

  return v3;
}

- (id)resolveIntentExecutionInfo:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCExecutionInfoResolver;
  v3 = [(INExecutionInfoResolver *)&v5 resolveIntentExecutionInfo:a3];

  return v3;
}

@end