@interface CARButtonInfo
- (CARButtonInfo)initWithButtonType:(unint64_t)type buttonLocation:(unint64_t)location buttonPressDuration:(unint64_t)duration;
@end

@implementation CARButtonInfo

- (CARButtonInfo)initWithButtonType:(unint64_t)type buttonLocation:(unint64_t)location buttonPressDuration:(unint64_t)duration
{
  v9.receiver = self;
  v9.super_class = CARButtonInfo;
  result = [(CARButtonInfo *)&v9 init];
  if (result)
  {
    result->_buttonType = type;
    result->_buttonLocation = location;
    result->_buttonPressDuration = duration;
  }

  return result;
}

@end