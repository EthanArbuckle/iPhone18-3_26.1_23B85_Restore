@interface NTKSiderealSolarEvent
+ (id)eventWithType:(int64_t)a3 degree:(double)a4;
+ (id)eventWithType:(int64_t)a3 time:(id)a4 degree:(double)a5;
- (BOOL)isEqual:(id)a3;
- (NTKSiderealSolarEvent)initWithCoder:(id)a3;
- (double)angle;
- (id)debugNameForType:(int64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKSiderealSolarEvent

+ (id)eventWithType:(int64_t)a3 time:(id)a4 degree:(double)a5
{
  v7 = a4;
  v8 = objc_alloc_init(NTKSiderealSolarEvent);
  time = v8->_time;
  v8->_time = v7;
  v8->_type = a3;

  v8->_degree = a5;

  return v8;
}

+ (id)eventWithType:(int64_t)a3 degree:(double)a4
{
  v6 = objc_alloc_init(NTKSiderealSolarEvent);
  v6->_type = a3;
  v6->_degree = a4;

  return v6;
}

- (NTKSiderealSolarEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NTKSiderealSolarEvent;
  v5 = [(NTKSiderealSolarEvent *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"time"];
    time = v5->_time;
    v5->_time = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v8 integerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"degree"];
    [v9 doubleValue];
    v5->_degree = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  time = self->_time;
  v5 = a3;
  [v5 encodeObject:time forKey:@"time"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  [v5 encodeObject:v6 forKey:@"type"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_degree];
  [v5 encodeObject:v7 forKey:@"degree"];
}

- (double)angle
{
  [(NTKSiderealSolarEvent *)self degree];

  CLKDegreesToRadians();
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NTKSiderealSolarEvent *)self debugNameForType:self->_type];
  time = self->_time;
  [(NTKSiderealSolarEvent *)self angle];
  v7 = [v3 stringWithFormat:@"type: %@, time: %@, angle: %f", v4, time, v6];

  return v7;
}

- (id)debugNameForType:(int64_t)a3
{
  if (a3 > 9)
  {
    return @"Day";
  }

  else
  {
    return off_278787108[a3];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    type = self->_type;
    if (type == [v5 type] && self->_time && (objc_msgSend(v5, "time"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = [MEMORY[0x277CBEA80] currentCalendar];
      time = self->_time;
      v10 = [v5 time];
      v11 = [v8 isDate:time equalToDate:v10 toUnitGranularity:64];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end