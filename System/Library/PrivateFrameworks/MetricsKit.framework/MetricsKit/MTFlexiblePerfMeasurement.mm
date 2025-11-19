@interface MTFlexiblePerfMeasurement
- (MTFlexiblePerfMeasurement)initWithMeasurementTransformer:(id)a3 eventType:(id)a4 eventData:(id)a5;
- (void)mark:(id)a3;
- (void)mark:(id)a3 date:(id)a4;
- (void)mark:(id)a3 time:(int64_t)a4;
- (void)setXpSamplingPercentage:(double)a3;
@end

@implementation MTFlexiblePerfMeasurement

- (MTFlexiblePerfMeasurement)initWithMeasurementTransformer:(id)a3 eventType:(id)a4 eventData:(id)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MTFlexiblePerfMeasurement;
  v9 = [(MTPerfBaseMeasurement *)&v13 initWithMeasurementTransformer:a3 eventData:a5];
  if (v9)
  {
    v10 = [v8 copy];
    eventType = v9->_eventType;
    v9->_eventType = v10;
  }

  return v9;
}

- (void)mark:(id)a3 time:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v9 = [v6 numberWithLongLong:a4];
  v8 = [(MTPerfBaseMeasurement *)self timestamps];
  [v8 setObject:v9 forKeyedSubscript:v7];
}

- (void)setXpSamplingPercentage:(double)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v4 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [v4 setObject:v5 forKeyedSubscript:@"xpSamplingPercentage"];
}

- (void)mark:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  -[MTFlexiblePerfMeasurement mark:time:](self, "mark:time:", v5, [v4 mt_longMillisecondsSince1970]);
}

- (void)mark:(id)a3 date:(id)a4
{
  v6 = a3;
  -[MTFlexiblePerfMeasurement mark:time:](self, "mark:time:", v6, [a4 mt_longMillisecondsSince1970]);
}

@end