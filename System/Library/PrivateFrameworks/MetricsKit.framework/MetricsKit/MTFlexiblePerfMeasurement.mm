@interface MTFlexiblePerfMeasurement
- (MTFlexiblePerfMeasurement)initWithMeasurementTransformer:(id)transformer eventType:(id)type eventData:(id)data;
- (void)mark:(id)mark;
- (void)mark:(id)mark date:(id)date;
- (void)mark:(id)mark time:(int64_t)time;
- (void)setXpSamplingPercentage:(double)percentage;
@end

@implementation MTFlexiblePerfMeasurement

- (MTFlexiblePerfMeasurement)initWithMeasurementTransformer:(id)transformer eventType:(id)type eventData:(id)data
{
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = MTFlexiblePerfMeasurement;
  v9 = [(MTPerfBaseMeasurement *)&v13 initWithMeasurementTransformer:transformer eventData:data];
  if (v9)
  {
    v10 = [typeCopy copy];
    eventType = v9->_eventType;
    v9->_eventType = v10;
  }

  return v9;
}

- (void)mark:(id)mark time:(int64_t)time
{
  v6 = MEMORY[0x277CCABB0];
  markCopy = mark;
  v9 = [v6 numberWithLongLong:time];
  timestamps = [(MTPerfBaseMeasurement *)self timestamps];
  [timestamps setObject:v9 forKeyedSubscript:markCopy];
}

- (void)setXpSamplingPercentage:(double)percentage
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:percentage];
  measurementSpecificData = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [measurementSpecificData setObject:v5 forKeyedSubscript:@"xpSamplingPercentage"];
}

- (void)mark:(id)mark
{
  v4 = MEMORY[0x277CBEAA8];
  markCopy = mark;
  -[MTFlexiblePerfMeasurement mark:time:](self, "mark:time:", markCopy, [v4 mt_longMillisecondsSince1970]);
}

- (void)mark:(id)mark date:(id)date
{
  markCopy = mark;
  -[MTFlexiblePerfMeasurement mark:time:](self, "mark:time:", markCopy, [date mt_longMillisecondsSince1970]);
}

@end