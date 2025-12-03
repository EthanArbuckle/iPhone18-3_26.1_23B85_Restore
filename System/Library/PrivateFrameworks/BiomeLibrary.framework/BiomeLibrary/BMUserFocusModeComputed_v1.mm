@interface BMUserFocusModeComputed_v1
- (int)semanticType;
@end

@implementation BMUserFocusModeComputed_v1

- (int)semanticType
{
  v4.receiver = self;
  v4.super_class = BMUserFocusModeComputed_v1;
  semanticType = [(BMUserFocusModeComputed *)&v4 semanticType];
  if (semanticType < 0xA)
  {
    return semanticType + 1;
  }

  else
  {
    return 0;
  }
}

@end