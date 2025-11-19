@interface ICParticipantBaseColorValues
- (ICParticipantBaseColorValues)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
@end

@implementation ICParticipantBaseColorValues

- (ICParticipantBaseColorValues)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v11.receiver = self;
  v11.super_class = ICParticipantBaseColorValues;
  result = [(ICParticipantBaseColorValues *)&v11 init];
  if (result)
  {
    result->_redValue = a3;
    result->_greenValue = a4;
    result->_blueValue = a5;
    result->_alphaValue = a6;
  }

  return result;
}

@end