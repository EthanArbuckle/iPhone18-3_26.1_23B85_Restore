@interface BMFindMyLocationChange_v0
- (int)stateChange;
@end

@implementation BMFindMyLocationChange_v0

- (int)stateChange
{
  v4.receiver = self;
  v4.super_class = BMFindMyLocationChange_v0;
  stateChange = [(BMFindMyLocationChange *)&v4 stateChange];
  if (stateChange < 3)
  {
    return stateChange + 1;
  }

  else
  {
    return 0;
  }
}

@end