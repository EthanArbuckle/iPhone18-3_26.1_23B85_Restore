@interface NTKSiderealWaypoint
+ (id)waypointFromSolarEvent:(id)event;
+ (id)waypointWithType:(int64_t)type degree:(double)degree;
+ (int64_t)_waypointTypeFromSolarEventType:(int64_t)type;
- (NTKSiderealWaypoint)initWithCoder:(id)coder;
- (NTKSiderealWaypoint)initWithType:(int64_t)type degree:(double)degree;
- (id)localizedName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKSiderealWaypoint

+ (id)waypointFromSolarEvent:(id)event
{
  eventCopy = event;
  v4 = +[NTKSiderealWaypoint _waypointTypeFromSolarEventType:](NTKSiderealWaypoint, "_waypointTypeFromSolarEventType:", [eventCopy type]);
  [eventCopy degree];
  v6 = v5;

  return [NTKSiderealWaypoint waypointWithType:v4 degree:v6];
}

+ (id)waypointWithType:(int64_t)type degree:(double)degree
{
  v4 = [[NTKSiderealWaypoint alloc] initWithType:type degree:degree];

  return v4;
}

- (NTKSiderealWaypoint)initWithType:(int64_t)type degree:(double)degree
{
  v7.receiver = self;
  v7.super_class = NTKSiderealWaypoint;
  result = [(NTKSiderealWaypoint *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_degree = degree;
  }

  return result;
}

- (NTKSiderealWaypoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = NTKSiderealWaypoint;
  v5 = [(NTKSiderealWaypoint *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 integerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"degree"];
    [v7 doubleValue];
    v5->_degree = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  type = self->_type;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:type];
  [coderCopy encodeObject:v7 forKey:@"type"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_degree];
  [coderCopy encodeObject:v8 forKey:@"degree"];
}

- (id)localizedName
{
  type = self->_type;
  if (type > 9)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_278783990[type];
    v4 = NTKBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_284110E98 table:@"Sidereal"];
  }

  return v5;
}

+ (int64_t)_waypointTypeFromSolarEventType:(int64_t)type
{
  if (type > 9)
  {
    return 0;
  }

  else
  {
    return qword_22DCE8BC8[type];
  }
}

@end