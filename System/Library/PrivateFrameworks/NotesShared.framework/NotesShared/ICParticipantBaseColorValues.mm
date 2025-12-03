@interface ICParticipantBaseColorValues
- (ICParticipantBaseColorValues)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
@end

@implementation ICParticipantBaseColorValues

- (ICParticipantBaseColorValues)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v11.receiver = self;
  v11.super_class = ICParticipantBaseColorValues;
  result = [(ICParticipantBaseColorValues *)&v11 init];
  if (result)
  {
    result->_redValue = red;
    result->_greenValue = green;
    result->_blueValue = blue;
    result->_alphaValue = alpha;
  }

  return result;
}

@end