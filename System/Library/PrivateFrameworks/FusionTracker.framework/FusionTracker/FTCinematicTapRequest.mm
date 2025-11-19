@interface FTCinematicTapRequest
- (CGPoint)tapPoint;
- (FTCinematicTapRequest)init;
@end

@implementation FTCinematicTapRequest

- (FTCinematicTapRequest)init
{
  v6.receiver = self;
  v6.super_class = FTCinematicTapRequest;
  v2 = [(FTCinematicTapRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(FTCinematicTapRequest *)v2 setTapPoint:-1.0, -1.0];
    [(FTCinematicTapRequest *)v3 setTrackId:-1];
    v4 = v3;
  }

  return v3;
}

- (CGPoint)tapPoint
{
  x = self->_tapPoint.x;
  y = self->_tapPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end