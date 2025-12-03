@interface CSPosterSwitcherPresentationStatus
- (CSPosterSwitcherPresentationStatus)initWithState:(unint64_t)state notReadyReason:(unint64_t)reason;
@end

@implementation CSPosterSwitcherPresentationStatus

- (CSPosterSwitcherPresentationStatus)initWithState:(unint64_t)state notReadyReason:(unint64_t)reason
{
  v7.receiver = self;
  v7.super_class = CSPosterSwitcherPresentationStatus;
  result = [(CSPosterSwitcherPresentationStatus *)&v7 init];
  if (result)
  {
    result->_state = state;
    result->_notReadyReason = reason;
  }

  return result;
}

@end