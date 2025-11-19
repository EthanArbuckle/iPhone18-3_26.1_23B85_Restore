@interface NPTSpeedMetric
- (NPTSpeedMetric)initWithCoder:(id)a3;
- (NPTSpeedMetric)initWithPointInTime:(id)a3 timeSinceStart:(double)a4 bytesTransferred:(int64_t)a5 totalBytesExpected:(int64_t)a6;
- (NPTSpeedMetric)initWithPointInTime:(id)a3 timeSinceStart:(double)a4 bytesTransferred:(int64_t)a5 totalBytesExpected:(int64_t)a6 speed:(double)a7 responsiveness:(int64_t)a8;
- (double)speed;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPTSpeedMetric

- (NPTSpeedMetric)initWithPointInTime:(id)a3 timeSinceStart:(double)a4 bytesTransferred:(int64_t)a5 totalBytesExpected:(int64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = NPTSpeedMetric;
  v12 = [(NPTSpeedMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pointInTime, a3);
    v13->_timeSinceStart = a4;
    v13->_bytesTransferred = a5;
    v13->_totalBytesExpected = a6;
    v13->_responsiveness = 0;
  }

  return v13;
}

- (NPTSpeedMetric)initWithPointInTime:(id)a3 timeSinceStart:(double)a4 bytesTransferred:(int64_t)a5 totalBytesExpected:(int64_t)a6 speed:(double)a7 responsiveness:(int64_t)a8
{
  v15 = a3;
  v19.receiver = self;
  v19.super_class = NPTSpeedMetric;
  v16 = [(NPTSpeedMetric *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_pointInTime, a3);
    v17->_timeSinceStart = a4;
    v17->_bytesTransferred = a5;
    v17->_totalBytesExpected = a6;
    v17->_responsiveness = a8;
    v17->privateSpeed = a7;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NPTSpeedMetric allocWithZone:?]];
  v5 = [(NPTSpeedMetric *)self pointInTime];
  [(NPTSpeedMetric *)v4 setPointInTime:v5];

  [(NPTSpeedMetric *)self timeSinceStart];
  [(NPTSpeedMetric *)v4 setTimeSinceStart:?];
  [(NPTSpeedMetric *)v4 setBytesTransferred:[(NPTSpeedMetric *)self bytesTransferred]];
  [(NPTSpeedMetric *)v4 setTotalBytesExpected:[(NPTSpeedMetric *)self totalBytesExpected]];
  [(NPTSpeedMetric *)v4 setResponsiveness:[(NPTSpeedMetric *)self responsiveness]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[NPTSpeedMetric bytesTransferred](self forKey:{"bytesTransferred"), @"bytesTransferred"}];
  [v5 encodeInteger:-[NPTSpeedMetric totalBytesExpected](self forKey:{"totalBytesExpected"), @"totalBytesExpected"}];
  [(NPTSpeedMetric *)self timeSinceStart];
  [v5 encodeDouble:@"timeSinceStart" forKey:?];
  v4 = [(NPTSpeedMetric *)self pointInTime];
  [v5 encodeObject:v4 forKey:@"pointInTime"];

  [v5 encodeInteger:-[NPTSpeedMetric responsiveness](self forKey:{"responsiveness"), @"responsiveness"}];
}

- (NPTSpeedMetric)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = NPTSpeedMetric;
  v3 = a3;
  v4 = [(NPTSpeedMetric *)&v7 init];
  -[NPTSpeedMetric setBytesTransferred:](v4, "setBytesTransferred:", [v3 decodeIntegerForKey:{@"bytesTransferred", v7.receiver, v7.super_class}]);
  -[NPTSpeedMetric setTotalBytesExpected:](v4, "setTotalBytesExpected:", [v3 decodeIntegerForKey:@"totalBytesExpected"]);
  [v3 decodeDoubleForKey:@"timeSinceStart"];
  [(NPTSpeedMetric *)v4 setTimeSinceStart:?];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"pointInTime"];
  [(NPTSpeedMetric *)v4 setPointInTime:v5];

  LODWORD(v5) = [v3 decodeIntegerForKey:@"responsiveness"];
  [(NPTSpeedMetric *)v4 setResponsiveness:v5];
  return v4;
}

@end