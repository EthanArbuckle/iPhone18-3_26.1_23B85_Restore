@interface RTLearnedRouteLocation
- (BOOL)isEqual:(id)equal;
- (RTLearnedRouteLocation)initWithCoder:(id)coder;
- (RTLearnedRouteLocation)initWithLatitude:(double)latitude longitude:(double)longitude course:(double)course followedByUTurn:(BOOL)turn locationReferenceFrame:(int)frame;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTLearnedRouteLocation

- (RTLearnedRouteLocation)initWithLatitude:(double)latitude longitude:(double)longitude course:(double)course followedByUTurn:(BOOL)turn locationReferenceFrame:(int)frame
{
  v13.receiver = self;
  v13.super_class = RTLearnedRouteLocation;
  result = [(RTLearnedRouteLocation *)&v13 init];
  if (result)
  {
    result->_latitude = latitude;
    result->_longitude = longitude;
    result->_course = course;
    result->_followedByUTurn = turn;
    result->_locationReferenceFrame = frame;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(RTLearnedRouteLocation *)self latitude];
  [coderCopy encodeDouble:@"latitude" forKey:?];
  [(RTLearnedRouteLocation *)self longitude];
  [coderCopy encodeDouble:@"longitude" forKey:?];
  [(RTLearnedRouteLocation *)self course];
  [coderCopy encodeDouble:@"course" forKey:?];
  [coderCopy encodeInt32:-[RTLearnedRouteLocation locationReferenceFrame](self forKey:{"locationReferenceFrame"), @"locationReference"}];
  [coderCopy encodeBool:-[RTLearnedRouteLocation followedByUTurn](self forKey:{"followedByUTurn"), @"followedByUTurn"}];
}

- (RTLearnedRouteLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"latitude"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"longitude"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"course"];
  v10 = v9;
  v11 = [coderCopy decodeInt32ForKey:@"locationReference"];
  v12 = [coderCopy decodeBoolForKey:@"followedByUTurn"];

  return [(RTLearnedRouteLocation *)self initWithLatitude:v12 longitude:v11 course:v6 followedByUTurn:v8 locationReferenceFrame:v10];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self | equalCopy)
  {
    v6 = 0;
    if (self && equalCopy)
    {
      v8 = [equalCopy isMemberOfClass:objc_opt_class()];
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
      locationReferenceFrame = [(RTLearnedRouteLocation *)self locationReferenceFrame];
      locationReferenceFrame2 = [v5 locationReferenceFrame];
      followedByUTurn = [(RTLearnedRouteLocation *)self followedByUTurn];
      followedByUTurn2 = [v5 followedByUTurn];
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

        if (locationReferenceFrame != locationReferenceFrame2)
        {
          v26 = 0;
        }

        v6 = v26 & (followedByUTurn ^ followedByUTurn2 ^ 1);
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