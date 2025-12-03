@interface BMLocationSemantic_v0
- (int)placeType;
@end

@implementation BMLocationSemantic_v0

- (int)placeType
{
  v4.receiver = self;
  v4.super_class = BMLocationSemantic_v0;
  placeType = [(BMLocationSemantic *)&v4 placeType];
  if (placeType > 3)
  {
    return 0;
  }

  else
  {
    return dword_185544BE0[placeType];
  }
}

@end