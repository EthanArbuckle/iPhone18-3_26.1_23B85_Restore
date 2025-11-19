@interface MNLocationMatchInfo
- (CLLocationCoordinate2D)matchCoordinate;
- (MNLocationMatchInfo)initWithMatchQuality:(int64_t)a3 matchCoordinate:(CLLocationCoordinate2D)a4 matchCourse:(double)a5 matchFormOfWay:(int)a6 matchRoadClass:(int)a7 matchShifted:(BOOL)a8;
@end

@implementation MNLocationMatchInfo

- (CLLocationCoordinate2D)matchCoordinate
{
  latitude = self->_matchCoordinate.latitude;
  longitude = self->_matchCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (MNLocationMatchInfo)initWithMatchQuality:(int64_t)a3 matchCoordinate:(CLLocationCoordinate2D)a4 matchCourse:(double)a5 matchFormOfWay:(int)a6 matchRoadClass:(int)a7 matchShifted:(BOOL)a8
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v19.receiver = self;
  v19.super_class = MNLocationMatchInfo;
  v15 = [(MNLocationMatchInfo *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_matchQuality = a3;
    v15->_matchCoordinate.latitude = latitude;
    v15->_matchCoordinate.longitude = longitude;
    v15->_matchCourse = a5;
    v15->_matchFormOfWay = a6;
    v15->_matchRoadClass = a7;
    v15->_matchShifted = a8;
    v17 = v15;
  }

  return v16;
}

@end