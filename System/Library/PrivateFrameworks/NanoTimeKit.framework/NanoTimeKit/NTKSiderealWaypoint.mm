@interface NTKSiderealWaypoint
+ (id)waypointFromSolarEvent:(id)a3;
+ (id)waypointWithType:(int64_t)a3 degree:(double)a4;
+ (int64_t)_waypointTypeFromSolarEventType:(int64_t)a3;
- (NTKSiderealWaypoint)initWithCoder:(id)a3;
- (NTKSiderealWaypoint)initWithType:(int64_t)a3 degree:(double)a4;
- (id)localizedName;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKSiderealWaypoint

+ (id)waypointFromSolarEvent:(id)a3
{
  v3 = a3;
  v4 = +[NTKSiderealWaypoint _waypointTypeFromSolarEventType:](NTKSiderealWaypoint, "_waypointTypeFromSolarEventType:", [v3 type]);
  [v3 degree];
  v6 = v5;

  return [NTKSiderealWaypoint waypointWithType:v4 degree:v6];
}

+ (id)waypointWithType:(int64_t)a3 degree:(double)a4
{
  v4 = [[NTKSiderealWaypoint alloc] initWithType:a3 degree:a4];

  return v4;
}

- (NTKSiderealWaypoint)initWithType:(int64_t)a3 degree:(double)a4
{
  v7.receiver = self;
  v7.super_class = NTKSiderealWaypoint;
  result = [(NTKSiderealWaypoint *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_degree = a4;
  }

  return result;
}

- (NTKSiderealWaypoint)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NTKSiderealWaypoint;
  v5 = [(NTKSiderealWaypoint *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 integerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"degree"];
    [v7 doubleValue];
    v5->_degree = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  type = self->_type;
  v6 = a3;
  v7 = [v4 numberWithInteger:type];
  [v6 encodeObject:v7 forKey:@"type"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_degree];
  [v6 encodeObject:v8 forKey:@"degree"];
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

+ (int64_t)_waypointTypeFromSolarEventType:(int64_t)a3
{
  if (a3 > 9)
  {
    return 0;
  }

  else
  {
    return qword_22DCE8BC8[a3];
  }
}

@end