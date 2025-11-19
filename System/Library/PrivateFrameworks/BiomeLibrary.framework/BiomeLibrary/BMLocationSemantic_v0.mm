@interface BMLocationSemantic_v0
- (int)placeType;
@end

@implementation BMLocationSemantic_v0

- (int)placeType
{
  v4.receiver = self;
  v4.super_class = BMLocationSemantic_v0;
  v2 = [(BMLocationSemantic *)&v4 placeType];
  if (v2 > 3)
  {
    return 0;
  }

  else
  {
    return dword_185544BE0[v2];
  }
}

@end