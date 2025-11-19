@interface MTPageRenderMeasurement
- (MTPageRenderMeasurement)initWithMeasurementTransformer:(id)a3 pageId:(id)a4 pageType:(id)a5 pageContext:(id)a6 eventData:(id)a7;
- (void)mark:(id)a3;
- (void)mark:(id)a3 date:(id)a4;
- (void)mark:(id)a3 time:(int64_t)a4;
- (void)setLaunchCorrelationKey:(id)a3;
- (void)setPreloadStatus:(id)a3;
- (void)setXpSamplingPercentageUsers:(double)a3;
- (void)setXpSessionDuration:(unint64_t)a3;
@end

@implementation MTPageRenderMeasurement

- (void)mark:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  -[MTPageRenderMeasurement mark:time:](self, "mark:time:", v5, [v4 mt_longMillisecondsSince1970]);
}

- (void)mark:(id)a3 date:(id)a4
{
  v6 = a3;
  -[MTPageRenderMeasurement mark:time:](self, "mark:time:", v6, [a4 mt_longMillisecondsSince1970]);
}

- (MTPageRenderMeasurement)initWithMeasurementTransformer:(id)a3 pageId:(id)a4 pageType:(id)a5 pageContext:(id)a6 eventData:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = MTPageRenderMeasurement;
  v15 = [(MTPerfBaseMeasurement *)&v23 initWithMeasurementTransformer:a3 eventData:a7];
  if (v15)
  {
    v16 = [v12 copy];
    pageId = v15->_pageId;
    v15->_pageId = v16;

    v18 = [v13 copy];
    pageType = v15->_pageType;
    v15->_pageType = v18;

    v20 = [v14 copy];
    pageContext = v15->_pageContext;
    v15->_pageContext = v20;
  }

  return v15;
}

- (void)mark:(id)a3 time:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v9 = [v6 numberWithLongLong:a4];
  v8 = [(MTPerfBaseMeasurement *)self timestamps];
  [v8 setObject:v9 forKeyedSubscript:v7];
}

- (void)setLaunchCorrelationKey:(id)a3
{
  v4 = a3;
  v5 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [v5 setObject:v4 forKeyedSubscript:@"launchCorrelationKey"];
}

- (void)setPreloadStatus:(id)a3
{
  v4 = a3;
  v5 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [v5 setObject:v4 forKeyedSubscript:@"preloadStatus"];
}

- (void)setXpSessionDuration:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v4 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [v4 setObject:v5 forKeyedSubscript:@"xpSessionDuration"];
}

- (void)setXpSamplingPercentageUsers:(double)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v4 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [v4 setObject:v5 forKeyedSubscript:@"xpSamplingPercentageUsers"];
}

@end