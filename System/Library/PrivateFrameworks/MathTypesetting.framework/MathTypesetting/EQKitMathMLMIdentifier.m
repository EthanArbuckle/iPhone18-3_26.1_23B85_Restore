@interface EQKitMathMLMIdentifier
- (int)scriptVariant;
@end

@implementation EQKitMathMLMIdentifier

- (int)scriptVariant
{
  if ((*&self->super.mFlags & 3) != 0)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end