@interface BDSDistributedPriceTrackingConfigUpdateScheduleStep
- (BDSDistributedPriceTrackingConfigUpdateScheduleStep)initWithCoder:(id)coder;
- (BDSDistributedPriceTrackingConfigUpdateScheduleStep)initWithDuration:(int64_t)duration minUpdateInterval:(int64_t)interval schedulerConfigIdealInterval:(int64_t)idealInterval schedulerConfigMinInterval:(int64_t)minInterval;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStep:(id)step;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSDistributedPriceTrackingConfigUpdateScheduleStep

- (BDSDistributedPriceTrackingConfigUpdateScheduleStep)initWithDuration:(int64_t)duration minUpdateInterval:(int64_t)interval schedulerConfigIdealInterval:(int64_t)idealInterval schedulerConfigMinInterval:(int64_t)minInterval
{
  v11.receiver = self;
  v11.super_class = BDSDistributedPriceTrackingConfigUpdateScheduleStep;
  result = [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)&v11 init];
  if (result)
  {
    result->_duration = duration;
    result->_minUpdateInterval = interval;
    result->_schedulerConfigIdealInterval = idealInterval;
    result->_schedulerConfigMinInterval = minInterval;
  }

  return result;
}

- (unint64_t)hash
{
  duration = [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)self duration];
  v4 = [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)self minUpdateInterval]^ duration;
  schedulerConfigIdealInterval = [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)self schedulerConfigIdealInterval];
  return v4 ^ schedulerConfigIdealInterval ^ [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)self schedulerConfigIdealInterval];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = BUDynamicCast();

  LOBYTE(self) = [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)self isEqualToStep:v5];
  return self;
}

- (BOOL)isEqualToStep:(id)step
{
  stepCopy = step;
  v5 = stepCopy;
  if (stepCopy && (v6 = [stepCopy duration], v6 == -[BDSDistributedPriceTrackingConfigUpdateScheduleStep duration](self, "duration")) && (v7 = objc_msgSend(v5, "minUpdateInterval"), v7 == -[BDSDistributedPriceTrackingConfigUpdateScheduleStep minUpdateInterval](self, "minUpdateInterval")) && (v8 = objc_msgSend(v5, "schedulerConfigIdealInterval"), v8 == -[BDSDistributedPriceTrackingConfigUpdateScheduleStep schedulerConfigIdealInterval](self, "schedulerConfigIdealInterval")))
  {
    schedulerConfigMinInterval = [v5 schedulerConfigMinInterval];
    v10 = schedulerConfigMinInterval == [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)self schedulerConfigMinInterval];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[BDSDistributedPriceTrackingConfigUpdateScheduleStep duration](self forKey:{"duration"), @"duration"}];
  [coderCopy encodeInteger:-[BDSDistributedPriceTrackingConfigUpdateScheduleStep minUpdateInterval](self forKey:{"minUpdateInterval"), @"minUpdateInterval"}];
  [coderCopy encodeInteger:-[BDSDistributedPriceTrackingConfigUpdateScheduleStep schedulerConfigIdealInterval](self forKey:{"schedulerConfigIdealInterval"), @"schedulerConfigIdealInterval"}];
  [coderCopy encodeInteger:-[BDSDistributedPriceTrackingConfigUpdateScheduleStep schedulerConfigMinInterval](self forKey:{"schedulerConfigMinInterval"), @"schedulerConfigMinInterval"}];
}

- (BDSDistributedPriceTrackingConfigUpdateScheduleStep)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"duration"];
  v6 = [coderCopy decodeIntegerForKey:@"minUpdateInterval"];
  v7 = [coderCopy decodeIntegerForKey:@"schedulerConfigIdealInterval"];
  v8 = [coderCopy decodeIntegerForKey:@"schedulerConfigMinInterval"];

  return [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)self initWithDuration:v5 minUpdateInterval:v6 schedulerConfigIdealInterval:v7 schedulerConfigMinInterval:v8];
}

@end