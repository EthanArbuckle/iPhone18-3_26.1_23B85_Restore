@interface NPTSpeedMetric
- (NPTSpeedMetric)initWithCoder:(id)coder;
- (NPTSpeedMetric)initWithPointInTime:(id)time timeSinceStart:(double)start bytesTransferred:(int64_t)transferred totalBytesExpected:(int64_t)expected;
- (NPTSpeedMetric)initWithPointInTime:(id)time timeSinceStart:(double)start bytesTransferred:(int64_t)transferred totalBytesExpected:(int64_t)expected speed:(double)speed responsiveness:(int64_t)responsiveness;
- (double)speed;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPTSpeedMetric

- (NPTSpeedMetric)initWithPointInTime:(id)time timeSinceStart:(double)start bytesTransferred:(int64_t)transferred totalBytesExpected:(int64_t)expected
{
  timeCopy = time;
  v15.receiver = self;
  v15.super_class = NPTSpeedMetric;
  v12 = [(NPTSpeedMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pointInTime, time);
    v13->_timeSinceStart = start;
    v13->_bytesTransferred = transferred;
    v13->_totalBytesExpected = expected;
    v13->_responsiveness = 0;
  }

  return v13;
}

- (NPTSpeedMetric)initWithPointInTime:(id)time timeSinceStart:(double)start bytesTransferred:(int64_t)transferred totalBytesExpected:(int64_t)expected speed:(double)speed responsiveness:(int64_t)responsiveness
{
  timeCopy = time;
  v19.receiver = self;
  v19.super_class = NPTSpeedMetric;
  v16 = [(NPTSpeedMetric *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_pointInTime, time);
    v17->_timeSinceStart = start;
    v17->_bytesTransferred = transferred;
    v17->_totalBytesExpected = expected;
    v17->_responsiveness = responsiveness;
    v17->privateSpeed = speed;
  }

  return v17;
}

- (double)speed
{
  result = self->privateSpeed;
  if (result <= 0.0)
  {
    v4 = [(NPTSpeedMetric *)self bytesTransferred]* 8.0;
    [(NPTSpeedMetric *)self timeSinceStart];
    return v4 / v5 / 1000000.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NPTSpeedMetric allocWithZone:?]];
  pointInTime = [(NPTSpeedMetric *)self pointInTime];
  [(NPTSpeedMetric *)v4 setPointInTime:pointInTime];

  [(NPTSpeedMetric *)self timeSinceStart];
  [(NPTSpeedMetric *)v4 setTimeSinceStart:?];
  [(NPTSpeedMetric *)v4 setBytesTransferred:[(NPTSpeedMetric *)self bytesTransferred]];
  [(NPTSpeedMetric *)v4 setTotalBytesExpected:[(NPTSpeedMetric *)self totalBytesExpected]];
  [(NPTSpeedMetric *)v4 setResponsiveness:[(NPTSpeedMetric *)self responsiveness]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[NPTSpeedMetric bytesTransferred](self forKey:{"bytesTransferred"), @"bytesTransferred"}];
  [coderCopy encodeInteger:-[NPTSpeedMetric totalBytesExpected](self forKey:{"totalBytesExpected"), @"totalBytesExpected"}];
  [(NPTSpeedMetric *)self timeSinceStart];
  [coderCopy encodeDouble:@"timeSinceStart" forKey:?];
  pointInTime = [(NPTSpeedMetric *)self pointInTime];
  [coderCopy encodeObject:pointInTime forKey:@"pointInTime"];

  [coderCopy encodeInteger:-[NPTSpeedMetric responsiveness](self forKey:{"responsiveness"), @"responsiveness"}];
}

- (NPTSpeedMetric)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NPTSpeedMetric;
  coderCopy = coder;
  v4 = [(NPTSpeedMetric *)&v7 init];
  -[NPTSpeedMetric setBytesTransferred:](v4, "setBytesTransferred:", [coderCopy decodeIntegerForKey:{@"bytesTransferred", v7.receiver, v7.super_class}]);
  -[NPTSpeedMetric setTotalBytesExpected:](v4, "setTotalBytesExpected:", [coderCopy decodeIntegerForKey:@"totalBytesExpected"]);
  [coderCopy decodeDoubleForKey:@"timeSinceStart"];
  [(NPTSpeedMetric *)v4 setTimeSinceStart:?];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pointInTime"];
  [(NPTSpeedMetric *)v4 setPointInTime:v5];

  LODWORD(v5) = [coderCopy decodeIntegerForKey:@"responsiveness"];
  [(NPTSpeedMetric *)v4 setResponsiveness:v5];
  return v4;
}

@end