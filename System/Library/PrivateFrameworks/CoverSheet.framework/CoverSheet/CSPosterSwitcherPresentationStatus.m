@interface CSPosterSwitcherPresentationStatus
- (CSPosterSwitcherPresentationStatus)initWithState:(unint64_t)a3 notReadyReason:(unint64_t)a4;
@end

@implementation CSPosterSwitcherPresentationStatus

- (CSPosterSwitcherPresentationStatus)initWithState:(unint64_t)a3 notReadyReason:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = CSPosterSwitcherPresentationStatus;
  result = [(CSPosterSwitcherPresentationStatus *)&v7 init];
  if (result)
  {
    result->_state = a3;
    result->_notReadyReason = a4;
  }

  return result;
}

@end