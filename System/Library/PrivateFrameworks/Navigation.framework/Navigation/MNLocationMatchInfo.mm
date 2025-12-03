@interface MNLocationMatchInfo
- (CLLocationCoordinate2D)matchCoordinate;
- (MNLocationMatchInfo)initWithMatchQuality:(int64_t)quality matchCoordinate:(CLLocationCoordinate2D)coordinate matchCourse:(double)course matchFormOfWay:(int)way matchRoadClass:(int)class matchShifted:(BOOL)shifted;
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

- (MNLocationMatchInfo)initWithMatchQuality:(int64_t)quality matchCoordinate:(CLLocationCoordinate2D)coordinate matchCourse:(double)course matchFormOfWay:(int)way matchRoadClass:(int)class matchShifted:(BOOL)shifted
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v19.receiver = self;
  v19.super_class = MNLocationMatchInfo;
  v15 = [(MNLocationMatchInfo *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_matchQuality = quality;
    v15->_matchCoordinate.latitude = latitude;
    v15->_matchCoordinate.longitude = longitude;
    v15->_matchCourse = course;
    v15->_matchFormOfWay = way;
    v15->_matchRoadClass = class;
    v15->_matchShifted = shifted;
    v17 = v15;
  }

  return v16;
}

@end