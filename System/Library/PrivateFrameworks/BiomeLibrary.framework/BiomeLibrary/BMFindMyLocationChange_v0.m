@interface BMFindMyLocationChange_v0
- (int)stateChange;
@end

@implementation BMFindMyLocationChange_v0

- (int)stateChange
{
  v4.receiver = self;
  v4.super_class = BMFindMyLocationChange_v0;
  v2 = [(BMFindMyLocationChange *)&v4 stateChange];
  if (v2 < 3)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

@end