@interface RTLearnedRouteLocation
- (BOOL)isEqual:(id)a3;
- (RTLearnedRouteLocation)initWithCoder:(id)a3;
- (RTLearnedRouteLocation)initWithLatitude:(double)a3 longitude:(double)a4 course:(double)a5 followedByUTurn:(BOOL)a6 locationReferenceFrame:(int)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTLearnedRouteLocation

- (RTLearnedRouteLocation)initWithLatitude:(double)a3 longitude:(double)a4 course:(double)a5 followedByUTurn:(BOOL)a6 locationReferenceFrame:(int)a7
{
  v13.receiver = self;
  v13.super_class = RTLearnedRouteLocation;
  result = [(RTLearnedRouteLocation *)&v13 init];
  if (result)
  {
    result->_latitude = a3;
    result->_longitude = a4;
    result->_course = a5;
    result->_followedByUTurn = a6;
    result->_locationReferenceFrame = a7;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(RTLearnedRouteLocation *)self latitude];
  [v4 encodeDouble:@"latitude" forKey:?];
  [(RTLearnedRouteLocation *)self longitude];
  [v4 encodeDouble:@"longitude" forKey:?];
  [(RTLearnedRouteLocation *)self course];
  [v4 encodeDouble:@"course" forKey:?];
  [v4 encodeInt32:-[RTLearnedRouteLocation locationReferenceFrame](self forKey:{"locationReferenceFrame"), @"locationReference"}];
  [v4 encodeBool:-[RTLearnedRouteLocation followedByUTurn](self forKey:{"followedByUTurn"), @"followedByUTurn"}];
}

- (RTLearnedRouteLocation)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"latitude"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"longitude"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"course"];
  v10 = v9;
  v11 = [v4 decodeInt32ForKey:@"locationReference"];
  v12 = [v4 decodeBoolForKey:@"followedByUTurn"];

  return [(RTLearnedRouteLocation *)self initWithLatitude:v12 longitude:v11 course:v6 followedByUTurn:v8 locationReferenceFrame:v10];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self | v4)
  {
    v6 = 0;
    if (self && v4)
    {
      v8 = [v4 isMemberOfClass:objc_opt_class()];
      [(RTLearnedRouteLocation *)self latitude];
      v10 = v9;
      [v5 latitude];
      v12 = v11;
      [(RTLearnedRouteLocation *)self longitude];
      v14 = v13;
      [v5 longitude];
      v16 = v15;
      [(RTLearnedRouteLocation *)self course];
      v18 = v17;
      [v5 course];
      v20 = v19;
      v21 = [(RTLearnedRouteLocation *)self locationReferenceFrame];
      v22 = [v5 locationReferenceFrame];
      v23 = [(RTLearnedRouteLocation *)self followedByUTurn];
      v24 = [v5 followedByUTurn];
      if (v8)
      {
        v25 = vabdd_f64(v18, v20);
        v26 = vabdd_f64(v10, v12) < 2.22044605e-16;
        if (vabdd_f64(v14, v16) >= 2.22044605e-16)
        {
          v26 = 0;
        }

        if (v25 >= 2.22044605e-16)
        {
          v26 = 0;
        }

        if (v21 != v22)
        {
          v26 = 0;
        }

        v6 = v26 & (v23 ^ v24 ^ 1);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(RTLearnedRouteLocation *)self latitude];
  v5 = v4;
  [(RTLearnedRouteLocation *)self longitude];
  v7 = v6;
  [(RTLearnedRouteLocation *)self course];
  return [v3 stringWithFormat:@"lat, %.7f, lon, %.7f, course, %.3f, locationReferenceFrame, %d, followedByUTurn, %d", v5, v7, v8, -[RTLearnedRouteLocation locationReferenceFrame](self, "locationReferenceFrame"), -[RTLearnedRouteLocation followedByUTurn](self, "followedByUTurn")];
}

@end