@interface CHXSeriesAxis
+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXSeriesAxis

+ (id)chdAxisFromXmlAxisElement:(_xmlNode *)a3 state:(id)a4
{
  v4 = a4;
  v5 = [CHDSeriesAxis alloc];
  v6 = [v4 resources];
  v7 = [(CHDSeriesAxis *)v5 initWithResources:v6];

  return v7;
}

@end