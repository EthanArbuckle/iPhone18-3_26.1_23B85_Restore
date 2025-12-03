@interface CHXSeriesAxis
+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)element state:(id)state;
@end

@implementation CHXSeriesAxis

+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  v5 = [CHDSeriesAxis alloc];
  resources = [stateCopy resources];
  v7 = [(CHDSeriesAxis *)v5 initWithResources:resources];

  return v7;
}

@end