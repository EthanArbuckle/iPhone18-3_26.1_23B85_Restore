@interface BDSDistributedPriceTrackingConfigUpdateScheduleStep
- (BDSDistributedPriceTrackingConfigUpdateScheduleStep)initWithCoder:(id)a3;
- (BDSDistributedPriceTrackingConfigUpdateScheduleStep)initWithDuration:(int64_t)a3 minUpdateInterval:(int64_t)a4 schedulerConfigIdealInterval:(int64_t)a5 schedulerConfigMinInterval:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStep:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSDistributedPriceTrackingConfigUpdateScheduleStep

- (BDSDistributedPriceTrackingConfigUpdateScheduleStep)initWithDuration:(int64_t)a3 minUpdateInterval:(int64_t)a4 schedulerConfigIdealInterval:(int64_t)a5 schedulerConfigMinInterval:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = BDSDistributedPriceTrackingConfigUpdateScheduleStep;
  result = [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)&v11 init];
  if (result)
  {
    result->_duration = a3;
    result->_minUpdateInterval = a4;
    result->_schedulerConfigIdealInterval = a5;
    result->_schedulerConfigMinInterval = a6;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)self duration];
  v4 = [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)self minUpdateInterval]^ v3;
  v5 = [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)self schedulerConfigIdealInterval];
  return v4 ^ v5 ^ [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)self schedulerConfigIdealInterval];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  LOBYTE(self) = [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)self isEqualToStep:v5];
  return self;
}

- (BOOL)isEqualToStep:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = [v4 duration], v6 == -[BDSDistributedPriceTrackingConfigUpdateScheduleStep duration](self, "duration")) && (v7 = objc_msgSend(v5, "minUpdateInterval"), v7 == -[BDSDistributedPriceTrackingConfigUpdateScheduleStep minUpdateInterval](self, "minUpdateInterval")) && (v8 = objc_msgSend(v5, "schedulerConfigIdealInterval"), v8 == -[BDSDistributedPriceTrackingConfigUpdateScheduleStep schedulerConfigIdealInterval](self, "schedulerConfigIdealInterval")))
  {
    v9 = [v5 schedulerConfigMinInterval];
    v10 = v9 == [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)self schedulerConfigMinInterval];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[BDSDistributedPriceTrackingConfigUpdateScheduleStep duration](self forKey:{"duration"), @"duration"}];
  [v4 encodeInteger:-[BDSDistributedPriceTrackingConfigUpdateScheduleStep minUpdateInterval](self forKey:{"minUpdateInterval"), @"minUpdateInterval"}];
  [v4 encodeInteger:-[BDSDistributedPriceTrackingConfigUpdateScheduleStep schedulerConfigIdealInterval](self forKey:{"schedulerConfigIdealInterval"), @"schedulerConfigIdealInterval"}];
  [v4 encodeInteger:-[BDSDistributedPriceTrackingConfigUpdateScheduleStep schedulerConfigMinInterval](self forKey:{"schedulerConfigMinInterval"), @"schedulerConfigMinInterval"}];
}

- (BDSDistributedPriceTrackingConfigUpdateScheduleStep)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"duration"];
  v6 = [v4 decodeIntegerForKey:@"minUpdateInterval"];
  v7 = [v4 decodeIntegerForKey:@"schedulerConfigIdealInterval"];
  v8 = [v4 decodeIntegerForKey:@"schedulerConfigMinInterval"];

  return [(BDSDistributedPriceTrackingConfigUpdateScheduleStep *)self initWithDuration:v5 minUpdateInterval:v6 schedulerConfigIdealInterval:v7 schedulerConfigMinInterval:v8];
}

@end