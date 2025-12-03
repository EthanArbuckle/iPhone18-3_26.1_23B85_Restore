@interface NTKSiderealSolarEvent
+ (id)eventWithType:(int64_t)type degree:(double)degree;
+ (id)eventWithType:(int64_t)type time:(id)time degree:(double)degree;
- (BOOL)isEqual:(id)equal;
- (NTKSiderealSolarEvent)initWithCoder:(id)coder;
- (double)angle;
- (id)debugNameForType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKSiderealSolarEvent

+ (id)eventWithType:(int64_t)type time:(id)time degree:(double)degree
{
  timeCopy = time;
  v8 = objc_alloc_init(NTKSiderealSolarEvent);
  time = v8->_time;
  v8->_time = timeCopy;
  v8->_type = type;

  v8->_degree = degree;

  return v8;
}

+ (id)eventWithType:(int64_t)type degree:(double)degree
{
  v6 = objc_alloc_init(NTKSiderealSolarEvent);
  v6->_type = type;
  v6->_degree = degree;

  return v6;
}

- (NTKSiderealSolarEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NTKSiderealSolarEvent;
  v5 = [(NTKSiderealSolarEvent *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"time"];
    time = v5->_time;
    v5->_time = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v8 integerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"degree"];
    [v9 doubleValue];
    v5->_degree = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  time = self->_time;
  coderCopy = coder;
  [coderCopy encodeObject:time forKey:@"time"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  [coderCopy encodeObject:v6 forKey:@"type"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_degree];
  [coderCopy encodeObject:v7 forKey:@"degree"];
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

- (id)debugNameForType:(int64_t)type
{
  if (type > 9)
  {
    return @"Day";
  }

  else
  {
    return off_278787108[type];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = self->_type;
    if (type == [v5 type] && self->_time && (objc_msgSend(v5, "time"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      time = self->_time;
      time = [v5 time];
      v11 = [currentCalendar isDate:time equalToDate:time toUnitGranularity:64];
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