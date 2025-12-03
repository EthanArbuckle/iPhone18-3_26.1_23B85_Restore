@interface MTPageRenderMeasurement
- (MTPageRenderMeasurement)initWithMeasurementTransformer:(id)transformer pageId:(id)id pageType:(id)type pageContext:(id)context eventData:(id)data;
- (void)mark:(id)mark;
- (void)mark:(id)mark date:(id)date;
- (void)mark:(id)mark time:(int64_t)time;
- (void)setLaunchCorrelationKey:(id)key;
- (void)setPreloadStatus:(id)status;
- (void)setXpSamplingPercentageUsers:(double)users;
- (void)setXpSessionDuration:(unint64_t)duration;
@end

@implementation MTPageRenderMeasurement

- (void)mark:(id)mark
{
  v4 = MEMORY[0x277CBEAA8];
  markCopy = mark;
  -[MTPageRenderMeasurement mark:time:](self, "mark:time:", markCopy, [v4 mt_longMillisecondsSince1970]);
}

- (void)mark:(id)mark date:(id)date
{
  markCopy = mark;
  -[MTPageRenderMeasurement mark:time:](self, "mark:time:", markCopy, [date mt_longMillisecondsSince1970]);
}

- (MTPageRenderMeasurement)initWithMeasurementTransformer:(id)transformer pageId:(id)id pageType:(id)type pageContext:(id)context eventData:(id)data
{
  idCopy = id;
  typeCopy = type;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = MTPageRenderMeasurement;
  v15 = [(MTPerfBaseMeasurement *)&v23 initWithMeasurementTransformer:transformer eventData:data];
  if (v15)
  {
    v16 = [idCopy copy];
    pageId = v15->_pageId;
    v15->_pageId = v16;

    v18 = [typeCopy copy];
    pageType = v15->_pageType;
    v15->_pageType = v18;

    v20 = [contextCopy copy];
    pageContext = v15->_pageContext;
    v15->_pageContext = v20;
  }

  return v15;
}

- (void)mark:(id)mark time:(int64_t)time
{
  v6 = MEMORY[0x277CCABB0];
  markCopy = mark;
  v9 = [v6 numberWithLongLong:time];
  timestamps = [(MTPerfBaseMeasurement *)self timestamps];
  [timestamps setObject:v9 forKeyedSubscript:markCopy];
}

- (void)setLaunchCorrelationKey:(id)key
{
  keyCopy = key;
  measurementSpecificData = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [measurementSpecificData setObject:keyCopy forKeyedSubscript:@"launchCorrelationKey"];
}

- (void)setPreloadStatus:(id)status
{
  statusCopy = status;
  measurementSpecificData = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [measurementSpecificData setObject:statusCopy forKeyedSubscript:@"preloadStatus"];
}

- (void)setXpSessionDuration:(unint64_t)duration
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:duration];
  measurementSpecificData = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [measurementSpecificData setObject:v5 forKeyedSubscript:@"xpSessionDuration"];
}

- (void)setXpSamplingPercentageUsers:(double)users
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:users];
  measurementSpecificData = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [measurementSpecificData setObject:v5 forKeyedSubscript:@"xpSamplingPercentageUsers"];
}

@end